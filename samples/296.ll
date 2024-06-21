; ModuleID = 'samples/296.bc'
source_filename = "../scipy/spatial/qhull_src/src/userprintf_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.qhT = type { i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, double, i32, i32, i32, i32, double, double, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [29 x i32], i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, ptr, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, [256 x i8], i32, [256 x i8], [512 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, double, double, double, double, double, double, double, double, double, double, double, double, double, double, ptr, double, double, double, double, i32, [6 x i8], [1 x %struct.__jmp_buf_tag], [40 x i8], [1 x %struct.__jmp_buf_tag], [40 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, double, i32, double, double, double, i32, i32, i32, i32, i32, double, double, i32, i32, i32, i32, i32, i32, double, double, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, i32, ptr, double, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [1 x %struct.__jmp_buf_tag], [40 x i8], i32, double, ptr, %struct.qhmemT, %struct.qhstatT }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.qhmemT = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qhstatT = type { [249 x %union.intrealT], [259 x i8], [249 x ptr], [249 x i16], [249 x i8], [249 x i8], [9 x %union.intrealT], i32, i32, i32, i32, double }
%union.intrealT = type { double }

@.str = private unnamed_addr constant [82 x i8] c"qhull internal error (userprintf_r.c): fp and qh not defined for qh_fprintf '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"qhull internal error (userprintf_r.c): fp is 0.  Wrong qh_fprintf was called.\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"[QH%.4d]\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"QH%.4d \00", align 1

; Function Attrs: nounwind uwtable
define hidden void @qh_fprintf(ptr noundef %qh, ptr noundef %fp, i32 noundef %msgcode, ptr noundef %fmt, ...) #0 {
entry:
  %qh.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %msgcode.addr = alloca i32, align 4
  %fmt.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %neighbor = alloca ptr, align 8
  %neighborp = alloca ptr, align 8
  store ptr %qh, ptr %qh.addr, align 8, !tbaa !4
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !4
  store i32 %msgcode, ptr %msgcode.addr, align 4, !tbaa !8
  store ptr %fmt, ptr %fmt.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %neighbor) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %neighborp) #4
  %0 = load ptr, ptr %fp.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %qh.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %2 = load ptr, ptr %fmt.addr, align 8, !tbaa !4
  call void (i32, ptr, ...) @qh_fprintf_stderr(i32 noundef 6241, ptr noundef @.str, ptr noundef %2)
  %3 = load ptr, ptr %qh.addr, align 8, !tbaa !4
  %last_errcode = getelementptr inbounds %struct.qhT, ptr %3, i32 0, i32 191
  store i32 6241, ptr %last_errcode, align 8, !tbaa !10
  call void @qh_exit(i32 noundef 5)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  call void (i32, ptr, ...) @qh_fprintf_stderr(i32 noundef 6028, ptr noundef @.str.1)
  %4 = load ptr, ptr %qh.addr, align 8, !tbaa !4
  %last_errcode3 = getelementptr inbounds %struct.qhT, ptr %4, i32 0, i32 191
  store i32 6028, ptr %last_errcode3, align 8, !tbaa !10
  %5 = load ptr, ptr %qh.addr, align 8, !tbaa !4
  call void @qh_errexit(ptr noundef %5, i32 noundef 5, ptr noundef null, ptr noundef null)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %6 = load ptr, ptr %qh.addr, align 8, !tbaa !4
  %tobool5 = icmp ne ptr %6, null
  br i1 %tobool5, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end4
  %7 = load ptr, ptr %qh.addr, align 8, !tbaa !4
  %ANNOTATEoutput = getelementptr inbounds %struct.qhT, ptr %7, i32 0, i32 7
  %8 = load i32, ptr %ANNOTATEoutput, align 8, !tbaa !16
  %tobool6 = icmp ne i32 %8, 0
  br i1 %tobool6, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end4
  %9 = load i32, ptr %msgcode.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %9, 4000
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load ptr, ptr %fp.addr, align 8, !tbaa !4
  %11 = load i32, ptr %msgcode.addr, align 4, !tbaa !8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.2, i32 noundef %11)
  br label %if.end14

if.else:                                          ; preds = %lor.lhs.false
  %12 = load i32, ptr %msgcode.addr, align 4, !tbaa !8
  %cmp8 = icmp sge i32 %12, 6000
  br i1 %cmp8, label %land.lhs.true9, label %if.end13

land.lhs.true9:                                   ; preds = %if.else
  %13 = load i32, ptr %msgcode.addr, align 4, !tbaa !8
  %cmp10 = icmp slt i32 %13, 8000
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %land.lhs.true9
  %14 = load ptr, ptr %fp.addr, align 8, !tbaa !4
  %15 = load i32, ptr %msgcode.addr, align 4, !tbaa !8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.3, i32 noundef %15)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true9, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then7
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %16 = load ptr, ptr %fp.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %fmt.addr, align 8, !tbaa !4
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  %call16 = call i32 @vfprintf(ptr noundef %16, ptr noundef %17, ptr noundef %arraydecay15)
  %arraydecay17 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay17)
  %18 = load ptr, ptr %qh.addr, align 8, !tbaa !4
  %tobool18 = icmp ne ptr %18, null
  br i1 %tobool18, label %if.then19, label %if.end30

if.then19:                                        ; preds = %if.end14
  %19 = load i32, ptr %msgcode.addr, align 4, !tbaa !8
  %cmp20 = icmp sge i32 %19, 6000
  br i1 %cmp20, label %land.lhs.true21, label %if.end25

land.lhs.true21:                                  ; preds = %if.then19
  %20 = load i32, ptr %msgcode.addr, align 4, !tbaa !8
  %cmp22 = icmp slt i32 %20, 7000
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %land.lhs.true21
  %21 = load i32, ptr %msgcode.addr, align 4, !tbaa !8
  %22 = load ptr, ptr %qh.addr, align 8, !tbaa !4
  %last_errcode24 = getelementptr inbounds %struct.qhT, ptr %22, i32 0, i32 191
  store i32 %21, ptr %last_errcode24, align 8, !tbaa !10
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true21, %if.then19
  %23 = load ptr, ptr %qh.addr, align 8, !tbaa !4
  %FLUSHprint = getelementptr inbounds %struct.qhT, ptr %23, i32 0, i32 20
  %24 = load i32, ptr %FLUSHprint, align 4, !tbaa !17
  %tobool26 = icmp ne i32 %24, 0
  br i1 %tobool26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end25
  %25 = load ptr, ptr %fp.addr, align 8, !tbaa !4
  %call28 = call i32 @fflush(ptr noundef %25)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end25
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end14
  call void @llvm.lifetime.end.p0(i64 8, ptr %neighborp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %neighbor) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @qh_fprintf_stderr(i32 noundef, ptr noundef, ...) #2

declare void @qh_exit(i32 noundef) #2

declare void @qh_errexit(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

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
!10 = !{!11, !9, i64 2624}
!11 = !{!"qhT", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !12, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !12, i64 64, !12, i64 72, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !5, i64 104, !9, i64 112, !9, i64 116, !5, i64 120, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !12, i64 160, !12, i64 168, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !12, i64 192, !12, i64 200, !9, i64 208, !9, i64 212, !12, i64 216, !9, i64 224, !9, i64 228, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !9, i64 296, !6, i64 300, !9, i64 416, !9, i64 420, !9, i64 424, !9, i64 428, !9, i64 432, !9, i64 436, !9, i64 440, !9, i64 444, !12, i64 448, !12, i64 456, !12, i64 464, !9, i64 472, !9, i64 476, !9, i64 480, !9, i64 484, !9, i64 488, !9, i64 492, !9, i64 496, !9, i64 500, !9, i64 504, !9, i64 508, !9, i64 512, !9, i64 516, !9, i64 520, !9, i64 524, !9, i64 528, !9, i64 532, !9, i64 536, !9, i64 540, !9, i64 544, !12, i64 552, !9, i64 560, !9, i64 564, !9, i64 568, !9, i64 572, !9, i64 576, !9, i64 580, !9, i64 584, !9, i64 588, !12, i64 592, !9, i64 600, !5, i64 608, !5, i64 616, !9, i64 624, !9, i64 628, !9, i64 632, !9, i64 636, !9, i64 640, !5, i64 648, !9, i64 656, !5, i64 664, !9, i64 672, !6, i64 676, !9, i64 932, !6, i64 936, !6, i64 1192, !9, i64 1704, !9, i64 1708, !9, i64 1712, !9, i64 1716, !9, i64 1720, !9, i64 1724, !5, i64 1728, !5, i64 1736, !5, i64 1744, !5, i64 1752, !12, i64 1760, !12, i64 1768, !12, i64 1776, !12, i64 1784, !12, i64 1792, !12, i64 1800, !12, i64 1808, !12, i64 1816, !12, i64 1824, !12, i64 1832, !12, i64 1840, !12, i64 1848, !12, i64 1856, !12, i64 1864, !5, i64 1872, !12, i64 1880, !12, i64 1888, !12, i64 1896, !12, i64 1904, !9, i64 1912, !6, i64 1916, !6, i64 1928, !6, i64 2128, !6, i64 2168, !6, i64 2368, !5, i64 2408, !5, i64 2416, !5, i64 2424, !5, i64 2432, !9, i64 2440, !9, i64 2444, !9, i64 2448, !5, i64 2456, !5, i64 2464, !5, i64 2472, !5, i64 2480, !5, i64 2488, !9, i64 2496, !9, i64 2500, !5, i64 2504, !9, i64 2512, !5, i64 2520, !9, i64 2528, !5, i64 2536, !5, i64 2544, !5, i64 2552, !5, i64 2560, !9, i64 2568, !9, i64 2572, !9, i64 2576, !9, i64 2580, !9, i64 2584, !9, i64 2588, !9, i64 2592, !9, i64 2596, !13, i64 2600, !9, i64 2608, !9, i64 2612, !6, i64 2616, !9, i64 2620, !9, i64 2624, !5, i64 2632, !5, i64 2640, !9, i64 2648, !9, i64 2652, !9, i64 2656, !12, i64 2664, !9, i64 2672, !12, i64 2680, !12, i64 2688, !12, i64 2696, !9, i64 2704, !9, i64 2708, !9, i64 2712, !9, i64 2716, !9, i64 2720, !12, i64 2728, !12, i64 2736, !9, i64 2744, !9, i64 2748, !9, i64 2752, !9, i64 2756, !9, i64 2760, !9, i64 2764, !12, i64 2768, !12, i64 2776, !9, i64 2784, !9, i64 2788, !9, i64 2792, !9, i64 2796, !5, i64 2800, !5, i64 2808, !5, i64 2816, !5, i64 2824, !5, i64 2832, !5, i64 2840, !5, i64 2848, !5, i64 2856, !5, i64 2864, !9, i64 2872, !5, i64 2880, !5, i64 2888, !9, i64 2896, !9, i64 2900, !9, i64 2904, !5, i64 2912, !12, i64 2920, !12, i64 2928, !12, i64 2936, !12, i64 2944, !9, i64 2952, !9, i64 2956, !9, i64 2960, !9, i64 2964, !9, i64 2968, !9, i64 2972, !5, i64 2976, !9, i64 2984, !9, i64 2988, !6, i64 2992, !6, i64 3192, !9, i64 3232, !12, i64 3240, !5, i64 3248, !14, i64 3256, !15, i64 3408}
!12 = !{!"double", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"qhmemT", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !9, i64 64, !5, i64 72, !5, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144}
!15 = !{!"qhstatT", !6, i64 0, !6, i64 1992, !6, i64 2256, !6, i64 4248, !6, i64 4746, !6, i64 4995, !6, i64 5248, !9, i64 5320, !9, i64 5324, !9, i64 5328, !9, i64 5332, !12, i64 5336}
!16 = !{!11, !9, i64 32}
!17 = !{!11, !9, i64 92}
