; ModuleID = 'samples/51.bc'
source_filename = "/local-ssd/itk-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv-build/aidengro/spack-stage-itk-5.2.1-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv/spack-src/Modules/ThirdParty/GDCM/src/gdcm/Utilities/gdcmjpeg/jcinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdcmjpeg16_compress_struct = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gdcmjpeg16_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64 }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define void @gdcmjpeg16_jinit_compress_master(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @gdcmjpeg16_jinit_c_master_control(ptr noundef %0, i32 noundef 0)
  %1 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @gdcmjpeg16_jinit_c_codec(ptr noundef %1)
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %raw_data_in = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %2, i32 0, i32 25
  %3 = load i32, ptr %raw_data_in, align 8, !tbaa !8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @gdcmjpeg16_jinit_color_converter(ptr noundef %4)
  %5 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @gdcmjpeg16_jinit_downsampler(ptr noundef %5)
  %6 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @gdcmjpeg16_jinit_c_prep_controller(ptr noundef %6, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @gdcmjpeg16_jinit_c_main_controller(ptr noundef %7, i32 noundef 0)
  %8 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @gdcmjpeg16_jinit_marker_writer(ptr noundef %8)
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %mem = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %mem, align 8, !tbaa !13
  %realize_virt_arrays = getelementptr inbounds %struct.gdcmjpeg16_memory_mgr, ptr %10, i32 0, i32 7
  %11 = load ptr, ptr %realize_virt_arrays, align 8, !tbaa !14
  %12 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %11(ptr noundef %12)
  %13 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %marker = getelementptr inbounds %struct.gdcmjpeg16_compress_struct, ptr %13, i32 0, i32 60
  %14 = load ptr, ptr %marker, align 8, !tbaa !17
  %write_file_header = getelementptr inbounds %struct.jpeg_marker_writer, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %write_file_header, align 8, !tbaa !18
  %16 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %15(ptr noundef %16)
  ret void
}

declare void @gdcmjpeg16_jinit_c_master_control(ptr noundef, i32 noundef) #1

declare void @gdcmjpeg16_jinit_c_codec(ptr noundef) #1

declare void @gdcmjpeg16_jinit_color_converter(ptr noundef) #1

declare void @gdcmjpeg16_jinit_downsampler(ptr noundef) #1

declare void @gdcmjpeg16_jinit_c_prep_controller(ptr noundef, i32 noundef) #1

declare void @gdcmjpeg16_jinit_c_main_controller(ptr noundef, i32 noundef) #1

declare void @gdcmjpeg16_jinit_marker_writer(ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

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
!8 = !{!9, !10, i64 256}
!9 = !{!"gdcmjpeg16_compress_struct", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !10, i64 32, !10, i64 36, !5, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !6, i64 60, !11, i64 64, !10, i64 72, !10, i64 76, !10, i64 80, !6, i64 84, !5, i64 88, !6, i64 96, !6, i64 128, !6, i64 160, !6, i64 192, !6, i64 208, !6, i64 224, !10, i64 240, !5, i64 248, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !6, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !6, i64 292, !6, i64 293, !6, i64 294, !12, i64 296, !12, i64 298, !10, i64 300, !10, i64 304, !10, i64 308, !6, i64 312, !10, i64 316, !10, i64 320, !10, i64 324, !10, i64 328, !6, i64 336, !10, i64 368, !10, i64 372, !10, i64 376, !6, i64 380, !10, i64 420, !10, i64 424, !10, i64 428, !10, i64 432, !5, i64 440, !5, i64 448, !5, i64 456, !5, i64 464, !5, i64 472, !5, i64 480, !5, i64 488, !5, i64 496, !10, i64 504}
!10 = !{!"int", !6, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!9, !5, i64 8}
!14 = !{!15, !5, i64 56}
!15 = !{!"gdcmjpeg16_memory_mgr", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !16, i64 96, !16, i64 104}
!16 = !{!"long", !6, i64 0}
!17 = !{!9, !5, i64 472}
!18 = !{!19, !5, i64 0}
!19 = !{!"jpeg_marker_writer", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48}
