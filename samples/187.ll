; ModuleID = 'samples/187.bc'
source_filename = "/local-ssd/itk-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv-build/aidengro/spack-stage-itk-5.2.1-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv/spack-src/Modules/ThirdParty/GDCM/src/gdcm/Utilities/gdcmjpeg/jerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdcmjpeg12_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.gdcmjpeg12_common_struct = type { ptr, ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Bogus message code %d\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Sorry, there are legal restrictions on arithmetic coding\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ALIGN_TYPE is wrong, please fix\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"MAX_ALLOC_CHUNK is wrong, please fix\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Bogus buffer control mode\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Invalid component ID %d in SOS\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"DCT coefficient out of range\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"IDCT output block size %d not supported\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"spatial difference out of range\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Bogus Huffman table definition\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Bogus input colorspace\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Bogus JPEG colorspace\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Bogus marker length\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"Wrong JPEG library version: library is %d, caller expects %d\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"Invalid lossless parameters Ss=%d Se=%d Ah=%d Al=%d\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"Invalid lossless parameters at scan script entry %d\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"Sampling factors too large for interleaved scan\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Invalid memory pool code %d\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"Unsupported JPEG data precision %d\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"Invalid progressive parameters Ss=%d Se=%d Ah=%d Al=%d\00", align 1
@.str.20 = private unnamed_addr constant [55 x i8] c"Invalid progressive parameters at scan script entry %d\00", align 1
@.str.21 = private unnamed_addr constant [99 x i8] c"Invalid restart interval: %d, must be an integer multiple of the number of MCUs in an MCU_row (%d)\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Bogus sampling factors\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Invalid scan script at entry %d\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"Improper call to JPEG library in state %d\00", align 1
@.str.25 = private unnamed_addr constant [77 x i8] c"JPEG parameter struct mismatch: library thinks size is %u, caller expects %u\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Bogus virtual array access\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"Buffer passed to JPEG library is too small\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"Suspension not allowed here\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"Cannot transcode to/from lossless JPEG datastreams\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"CCIR601 sampling not implemented yet\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"Too many color components: %d, max %d\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"Unsupported color conversion request\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"Bogus DAC index %d\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"Bogus DAC value 0x%x\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"Bogus DHT index %d\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"Bogus DQT index %d\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"Empty JPEG image (DNL not supported)\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"Read from EMS failed\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"Write to EMS failed\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"Didn't expect more than one scan\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"Input file read error\00", align 1
@.str.42 = private unnamed_addr constant [47 x i8] c"Output file write error --- out of disk space?\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"Fractional sampling not implemented yet\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"Huffman code size table overflow\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"Missing Huffman code table entry\00", align 1
@.str.46 = private unnamed_addr constant [47 x i8] c"Maximum supported image dimension is %u pixels\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"Empty input file\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"Premature end of input file\00", align 1
@.str.49 = private unnamed_addr constant [62 x i8] c"Cannot transcode due to multiple use of quantization table %d\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"Scan script does not transmit all data\00", align 1
@.str.51 = private unnamed_addr constant [39 x i8] c"Invalid color quantization mode change\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"Not implemented yet\00", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c"Requested feature was omitted at compile time\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"Backing store not supported\00", align 1
@.str.55 = private unnamed_addr constant [37 x i8] c"Huffman table 0x%02x was not defined\00", align 1
@.str.56 = private unnamed_addr constant [34 x i8] c"JPEG datastream contains no image\00", align 1
@.str.57 = private unnamed_addr constant [64 x i8] c"Lossless encoding was requested but no scan script was supplied\00", align 1
@.str.58 = private unnamed_addr constant [42 x i8] c"Quantization table 0x%02x was not defined\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"Not a JPEG file: starts with 0x%02x 0x%02x\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"Insufficient memory (case %d)\00", align 1
@.str.61 = private unnamed_addr constant [46 x i8] c"Cannot quantize more than %d color components\00", align 1
@.str.62 = private unnamed_addr constant [40 x i8] c"Cannot quantize to fewer than %d colors\00", align 1
@.str.63 = private unnamed_addr constant [39 x i8] c"Cannot quantize to more than %d colors\00", align 1
@.str.64 = private unnamed_addr constant [45 x i8] c"Invalid JPEG file structure: two SOF markers\00", align 1
@.str.65 = private unnamed_addr constant [48 x i8] c"Invalid JPEG file structure: missing SOS marker\00", align 1
@.str.66 = private unnamed_addr constant [42 x i8] c"Unsupported JPEG process: SOF type 0x%02x\00", align 1
@.str.67 = private unnamed_addr constant [45 x i8] c"Invalid JPEG file structure: two SOI markers\00", align 1
@.str.68 = private unnamed_addr constant [44 x i8] c"Invalid JPEG file structure: SOS before SOF\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"Failed to create temporary file %s\00", align 1
@.str.70 = private unnamed_addr constant [30 x i8] c"Read failed on temporary file\00", align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"Seek failed on temporary file\00", align 1
@.str.72 = private unnamed_addr constant [54 x i8] c"Write failed on temporary file --- out of disk space?\00", align 1
@.str.73 = private unnamed_addr constant [42 x i8] c"Application transferred too few scanlines\00", align 1
@.str.74 = private unnamed_addr constant [31 x i8] c"Unsupported marker type 0x%02x\00", align 1
@.str.75 = private unnamed_addr constant [35 x i8] c"Virtual array controller messed up\00", align 1
@.str.76 = private unnamed_addr constant [39 x i8] c"Image too wide for this implementation\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"Read from XMS failed\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"Write to XMS failed\00", align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1998, Thomas G. Lane\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"6b  27-Mar-1998\00", align 1
@.str.81 = private unnamed_addr constant [62 x i8] c"CAUTION: quantization tables are too coarse for baseline JPEG\00", align 1
@.str.82 = private unnamed_addr constant [66 x i8] c"Adobe APP14 marker: version %d, flags 0x%04x 0x%04x, transform %d\00", align 1
@.str.83 = private unnamed_addr constant [42 x i8] c"Unknown APP0 marker (not JFIF), length %u\00", align 1
@.str.84 = private unnamed_addr constant [44 x i8] c"Unknown APP14 marker (not Adobe), length %u\00", align 1
@.str.85 = private unnamed_addr constant [39 x i8] c"Define Arithmetic Table 0x%02x: 0x%02x\00", align 1
@.str.86 = private unnamed_addr constant [28 x i8] c"Define Huffman Table 0x%02x\00", align 1
@.str.87 = private unnamed_addr constant [43 x i8] c"Define Quantization Table %d  precision %d\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"Define Restart Interval %u\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"Freed EMS handle %u\00", align 1
@.str.90 = private unnamed_addr constant [23 x i8] c"Obtained EMS handle %u\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"End Of Image\00", align 1
@.str.92 = private unnamed_addr constant [40 x i8] c"        %3d %3d %3d %3d %3d %3d %3d %3d\00", align 1
@.str.93 = private unnamed_addr constant [53 x i8] c"JFIF APP0 marker: version %d.%02d, density %dx%d  %d\00", align 1
@.str.94 = private unnamed_addr constant [60 x i8] c"Warning: thumbnail image size does not match data length %u\00", align 1
@.str.95 = private unnamed_addr constant [46 x i8] c"JFIF extension marker: type 0x%02x, length %u\00", align 1
@.str.96 = private unnamed_addr constant [33 x i8] c"    with %d x %d thumbnail image\00", align 1
@.str.97 = private unnamed_addr constant [39 x i8] c"Miscellaneous marker 0x%02x, length %u\00", align 1
@.str.98 = private unnamed_addr constant [25 x i8] c"Unexpected marker 0x%02x\00", align 1
@.str.99 = private unnamed_addr constant [40 x i8] c"        %4u %4u %4u %4u %4u %4u %4u %4u\00", align 1
@.str.100 = private unnamed_addr constant [35 x i8] c"Quantizing to %d = %d*%d*%d colors\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"Quantizing to %d colors\00", align 1
@.str.102 = private unnamed_addr constant [36 x i8] c"Selected %d colors for quantization\00", align 1
@.str.103 = private unnamed_addr constant [37 x i8] c"At marker 0x%02x, recovery action %d\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"RST%d\00", align 1
@.str.105 = private unnamed_addr constant [57 x i8] c"Smoothing not supported with nonstandard sampling ratios\00", align 1
@.str.106 = private unnamed_addr constant [58 x i8] c"Start Of Frame 0x%02x: width=%u, height=%u, components=%d\00", align 1
@.str.107 = private unnamed_addr constant [31 x i8] c"    Component %d: %dhx%dv q=%d\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"Start of Image\00", align 1
@.str.109 = private unnamed_addr constant [29 x i8] c"Start Of Scan: %d components\00", align 1
@.str.110 = private unnamed_addr constant [30 x i8] c"    Component %d: dc=%d ac=%d\00", align 1
@.str.111 = private unnamed_addr constant [29 x i8] c"  Ss=%d, Se=%d, Ah=%d, Al=%d\00", align 1
@.str.112 = private unnamed_addr constant [25 x i8] c"Closed temporary file %s\00", align 1
@.str.113 = private unnamed_addr constant [25 x i8] c"Opened temporary file %s\00", align 1
@.str.114 = private unnamed_addr constant [66 x i8] c"JFIF extension marker: JPEG-compressed thumbnail image, length %u\00", align 1
@.str.115 = private unnamed_addr constant [58 x i8] c"JFIF extension marker: palette thumbnail image, length %u\00", align 1
@.str.116 = private unnamed_addr constant [54 x i8] c"JFIF extension marker: RGB thumbnail image, length %u\00", align 1
@.str.117 = private unnamed_addr constant [50 x i8] c"Unrecognized component IDs %d %d %d, assuming RGB\00", align 1
@.str.118 = private unnamed_addr constant [52 x i8] c"Unrecognized component IDs %d %d %d, assuming YCbCr\00", align 1
@.str.119 = private unnamed_addr constant [20 x i8] c"Freed XMS handle %u\00", align 1
@.str.120 = private unnamed_addr constant [23 x i8] c"Obtained XMS handle %u\00", align 1
@.str.121 = private unnamed_addr constant [38 x i8] c"Unknown Adobe color transform code %d\00", align 1
@.str.122 = private unnamed_addr constant [66 x i8] c"Inconsistent progression sequence for component %d coefficient %d\00", align 1
@.str.123 = private unnamed_addr constant [60 x i8] c"Corrupt JPEG data: %u extraneous bytes before marker 0x%02x\00", align 1
@.str.124 = private unnamed_addr constant [49 x i8] c"Corrupt JPEG data: premature end of data segment\00", align 1
@.str.125 = private unnamed_addr constant [36 x i8] c"Corrupt JPEG data: bad Huffman code\00", align 1
@.str.126 = private unnamed_addr constant [46 x i8] c"Warning: unknown JFIF revision number %d.%02d\00", align 1
@.str.127 = private unnamed_addr constant [27 x i8] c"Premature end of JPEG file\00", align 1
@.str.128 = private unnamed_addr constant [39 x i8] c"Must downscale data from %d bits to %d\00", align 1
@.str.129 = private unnamed_addr constant [56 x i8] c"Corrupt JPEG data: found marker 0x%02x instead of RST%d\00", align 1
@.str.130 = private unnamed_addr constant [43 x i8] c"Invalid SOS parameters for sequential JPEG\00", align 1
@.str.131 = private unnamed_addr constant [43 x i8] c"Application transferred too many scanlines\00", align 1
@.str.132 = private unnamed_addr constant [43 x i8] c"Corrupt JPEG data: using signed arithmetic\00", align 1
@gdcmjpeg12_jpeg_std_message_table = constant [134 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr null], align 16
@stderr = external global ptr, align 8
@.str.133 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define ptr @gdcmjpeg12_jpeg_std_error(ptr noundef %err) #0 {
entry:
  %err.addr = alloca ptr, align 8
  store ptr %err, ptr %err.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %error_exit = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %0, i32 0, i32 0
  store ptr @error_exit, ptr %error_exit, align 8, !tbaa !8
  %1 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %emit_message = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %1, i32 0, i32 1
  store ptr @emit_message, ptr %emit_message, align 8, !tbaa !12
  %2 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %output_message = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %2, i32 0, i32 2
  store ptr @output_message, ptr %output_message, align 8, !tbaa !13
  %3 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %format_message = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %3, i32 0, i32 3
  store ptr @format_message, ptr %format_message, align 8, !tbaa !14
  %4 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %reset_error_mgr = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %4, i32 0, i32 4
  store ptr @reset_error_mgr, ptr %reset_error_mgr, align 8, !tbaa !15
  %5 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %trace_level = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %5, i32 0, i32 7
  store i32 0, ptr %trace_level, align 4, !tbaa !16
  %6 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %num_warnings = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %6, i32 0, i32 8
  store i64 0, ptr %num_warnings, align 8, !tbaa !17
  %7 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %msg_code = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %7, i32 0, i32 5
  store i32 0, ptr %msg_code, align 8, !tbaa !18
  %8 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %jpeg_message_table = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %8, i32 0, i32 9
  store ptr @gdcmjpeg12_jpeg_std_message_table, ptr %jpeg_message_table, align 8, !tbaa !19
  %9 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %last_jpeg_message = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %9, i32 0, i32 10
  store i32 132, ptr %last_jpeg_message, align 8, !tbaa !20
  %10 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %addon_message_table = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %10, i32 0, i32 11
  store ptr null, ptr %addon_message_table, align 8, !tbaa !21
  %11 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %first_addon_message = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %11, i32 0, i32 12
  store i32 0, ptr %first_addon_message, align 8, !tbaa !22
  %12 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %last_addon_message = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %12, i32 0, i32 13
  store i32 0, ptr %last_addon_message, align 4, !tbaa !23
  %13 = load ptr, ptr %err.addr, align 8, !tbaa !4
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal void @error_exit(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg12_common_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %err, align 8, !tbaa !24
  %output_message = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %output_message, align 8, !tbaa !13
  %3 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %2(ptr noundef %3)
  %4 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void @gdcmjpeg12_jpeg_destroy(ptr noundef %4)
  call void @exit(i32 noundef 1) #5
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @emit_message(ptr noundef %cinfo, i32 noundef %msg_level) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %msg_level.addr = alloca i32, align 4
  %err = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store i32 %msg_level, ptr %msg_level.addr, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #6
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err1 = getelementptr inbounds %struct.gdcmjpeg12_common_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %err1, align 8, !tbaa !24
  store ptr %1, ptr %err, align 8, !tbaa !4
  %2 = load i32, ptr %msg_level.addr, align 4, !tbaa !26
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %err, align 8, !tbaa !4
  %num_warnings = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %3, i32 0, i32 8
  %4 = load i64, ptr %num_warnings, align 8, !tbaa !17
  %cmp2 = icmp eq i64 %4, 0
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load ptr, ptr %err, align 8, !tbaa !4
  %trace_level = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %5, i32 0, i32 7
  %6 = load i32, ptr %trace_level, align 4, !tbaa !16
  %cmp3 = icmp sge i32 %6, 3
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  %7 = load ptr, ptr %err, align 8, !tbaa !4
  %output_message = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %output_message, align 8, !tbaa !13
  %9 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %8(ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then4, %lor.lhs.false
  %10 = load ptr, ptr %err, align 8, !tbaa !4
  %num_warnings5 = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %10, i32 0, i32 8
  %11 = load i64, ptr %num_warnings5, align 8, !tbaa !17
  %inc = add nsw i64 %11, 1
  store i64 %inc, ptr %num_warnings5, align 8, !tbaa !17
  br label %if.end11

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %err, align 8, !tbaa !4
  %trace_level6 = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %12, i32 0, i32 7
  %13 = load i32, ptr %trace_level6, align 4, !tbaa !16
  %14 = load i32, ptr %msg_level.addr, align 4, !tbaa !26
  %cmp7 = icmp sge i32 %13, %14
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.else
  %15 = load ptr, ptr %err, align 8, !tbaa !4
  %output_message9 = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %output_message9, align 8, !tbaa !13
  %17 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  call void %16(ptr noundef %17)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_message(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %buffer = alloca [200 x i8], align 16
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 200, ptr %buffer) #6
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg12_common_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %err, align 8, !tbaa !24
  %format_message = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %format_message, align 8, !tbaa !14
  %3 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [200 x i8], ptr %buffer, i64 0, i64 0
  call void %2(ptr noundef %3, ptr noundef %arraydecay)
  %4 = load ptr, ptr @stderr, align 8, !tbaa !4
  %arraydecay1 = getelementptr inbounds [200 x i8], ptr %buffer, i64 0, i64 0
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.133, ptr noundef %arraydecay1)
  call void @llvm.lifetime.end.p0(i64 200, ptr %buffer) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @format_message(ptr noundef %cinfo, ptr noundef %buffer) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %err = alloca ptr, align 8
  %msg_code = alloca i32, align 4
  %msgtext = alloca ptr, align 8
  %msgptr = alloca ptr, align 8
  %ch = alloca i8, align 1
  %isstring = alloca i32, align 4
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #6
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err1 = getelementptr inbounds %struct.gdcmjpeg12_common_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %err1, align 8, !tbaa !24
  store ptr %1, ptr %err, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %msg_code) #6
  %2 = load ptr, ptr %err, align 8, !tbaa !4
  %msg_code2 = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %msg_code2, align 8, !tbaa !18
  store i32 %3, ptr %msg_code, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr %msgtext) #6
  store ptr null, ptr %msgtext, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %msgptr) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr %ch) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %isstring) #6
  %4 = load i32, ptr %msg_code, align 4, !tbaa !26
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, ptr %msg_code, align 4, !tbaa !26
  %6 = load ptr, ptr %err, align 8, !tbaa !4
  %last_jpeg_message = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %6, i32 0, i32 10
  %7 = load i32, ptr %last_jpeg_message, align 8, !tbaa !20
  %cmp3 = icmp sle i32 %5, %7
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %err, align 8, !tbaa !4
  %jpeg_message_table = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %8, i32 0, i32 9
  %9 = load ptr, ptr %jpeg_message_table, align 8, !tbaa !19
  %10 = load i32, ptr %msg_code, align 4, !tbaa !26
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %11, ptr %msgtext, align 8, !tbaa !4
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true, %entry
  %12 = load ptr, ptr %err, align 8, !tbaa !4
  %addon_message_table = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %12, i32 0, i32 11
  %13 = load ptr, ptr %addon_message_table, align 8, !tbaa !21
  %cmp4 = icmp ne ptr %13, null
  br i1 %cmp4, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %if.else
  %14 = load i32, ptr %msg_code, align 4, !tbaa !26
  %15 = load ptr, ptr %err, align 8, !tbaa !4
  %first_addon_message = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %15, i32 0, i32 12
  %16 = load i32, ptr %first_addon_message, align 8, !tbaa !22
  %cmp6 = icmp sge i32 %14, %16
  br i1 %cmp6, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %17 = load i32, ptr %msg_code, align 4, !tbaa !26
  %18 = load ptr, ptr %err, align 8, !tbaa !4
  %last_addon_message = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %18, i32 0, i32 13
  %19 = load i32, ptr %last_addon_message, align 4, !tbaa !23
  %cmp8 = icmp sle i32 %17, %19
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %land.lhs.true7
  %20 = load ptr, ptr %err, align 8, !tbaa !4
  %addon_message_table10 = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %20, i32 0, i32 11
  %21 = load ptr, ptr %addon_message_table10, align 8, !tbaa !21
  %22 = load i32, ptr %msg_code, align 4, !tbaa !26
  %23 = load ptr, ptr %err, align 8, !tbaa !4
  %first_addon_message11 = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %23, i32 0, i32 12
  %24 = load i32, ptr %first_addon_message11, align 8, !tbaa !22
  %sub = sub nsw i32 %22, %24
  %idxprom12 = sext i32 %sub to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %21, i64 %idxprom12
  %25 = load ptr, ptr %arrayidx13, align 8, !tbaa !4
  store ptr %25, ptr %msgtext, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then9, %land.lhs.true7, %land.lhs.true5, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %26 = load ptr, ptr %msgtext, align 8, !tbaa !4
  %cmp15 = icmp eq ptr %26, null
  br i1 %cmp15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end14
  %27 = load i32, ptr %msg_code, align 4, !tbaa !26
  %28 = load ptr, ptr %err, align 8, !tbaa !4
  %msg_parm = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %28, i32 0, i32 6
  %arrayidx17 = getelementptr inbounds [8 x i32], ptr %msg_parm, i64 0, i64 0
  store i32 %27, ptr %arrayidx17, align 4, !tbaa !27
  %29 = load ptr, ptr %err, align 8, !tbaa !4
  %jpeg_message_table18 = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %29, i32 0, i32 9
  %30 = load ptr, ptr %jpeg_message_table18, align 8, !tbaa !19
  %arrayidx19 = getelementptr inbounds ptr, ptr %30, i64 0
  %31 = load ptr, ptr %arrayidx19, align 8, !tbaa !4
  store ptr %31, ptr %msgtext, align 8, !tbaa !4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end14
  store i32 0, ptr %isstring, align 4, !tbaa !26
  %32 = load ptr, ptr %msgtext, align 8, !tbaa !4
  store ptr %32, ptr %msgptr, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %if.end32, %if.end20
  %33 = load ptr, ptr %msgptr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr, ptr %msgptr, align 8, !tbaa !4
  %34 = load i8, ptr %33, align 1, !tbaa !27
  store i8 %34, ptr %ch, align 1, !tbaa !27
  %conv = sext i8 %34 to i32
  %cmp21 = icmp ne i32 %conv, 0
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load i8, ptr %ch, align 1, !tbaa !27
  %conv23 = sext i8 %35 to i32
  %cmp24 = icmp eq i32 %conv23, 37
  br i1 %cmp24, label %if.then26, label %if.end32

if.then26:                                        ; preds = %while.body
  %36 = load ptr, ptr %msgptr, align 8, !tbaa !4
  %37 = load i8, ptr %36, align 1, !tbaa !27
  %conv27 = sext i8 %37 to i32
  %cmp28 = icmp eq i32 %conv27, 115
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then26
  store i32 1, ptr %isstring, align 4, !tbaa !26
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then26
  br label %while.end

if.end32:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !28

while.end:                                        ; preds = %if.end31, %while.cond
  %38 = load i32, ptr %isstring, align 4, !tbaa !26
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %if.then33, label %if.else35

if.then33:                                        ; preds = %while.end
  %39 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %40 = load ptr, ptr %msgtext, align 8, !tbaa !4
  %41 = load ptr, ptr %err, align 8, !tbaa !4
  %msg_parm34 = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %41, i32 0, i32 6
  %arraydecay = getelementptr inbounds [80 x i8], ptr %msg_parm34, i64 0, i64 0
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %39, ptr noundef %40, ptr noundef %arraydecay) #6
  br label %if.end53

if.else35:                                        ; preds = %while.end
  %42 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %43 = load ptr, ptr %msgtext, align 8, !tbaa !4
  %44 = load ptr, ptr %err, align 8, !tbaa !4
  %msg_parm36 = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %44, i32 0, i32 6
  %arrayidx37 = getelementptr inbounds [8 x i32], ptr %msg_parm36, i64 0, i64 0
  %45 = load i32, ptr %arrayidx37, align 4, !tbaa !27
  %46 = load ptr, ptr %err, align 8, !tbaa !4
  %msg_parm38 = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %46, i32 0, i32 6
  %arrayidx39 = getelementptr inbounds [8 x i32], ptr %msg_parm38, i64 0, i64 1
  %47 = load i32, ptr %arrayidx39, align 4, !tbaa !27
  %48 = load ptr, ptr %err, align 8, !tbaa !4
  %msg_parm40 = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %48, i32 0, i32 6
  %arrayidx41 = getelementptr inbounds [8 x i32], ptr %msg_parm40, i64 0, i64 2
  %49 = load i32, ptr %arrayidx41, align 4, !tbaa !27
  %50 = load ptr, ptr %err, align 8, !tbaa !4
  %msg_parm42 = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %50, i32 0, i32 6
  %arrayidx43 = getelementptr inbounds [8 x i32], ptr %msg_parm42, i64 0, i64 3
  %51 = load i32, ptr %arrayidx43, align 4, !tbaa !27
  %52 = load ptr, ptr %err, align 8, !tbaa !4
  %msg_parm44 = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %52, i32 0, i32 6
  %arrayidx45 = getelementptr inbounds [8 x i32], ptr %msg_parm44, i64 0, i64 4
  %53 = load i32, ptr %arrayidx45, align 4, !tbaa !27
  %54 = load ptr, ptr %err, align 8, !tbaa !4
  %msg_parm46 = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %54, i32 0, i32 6
  %arrayidx47 = getelementptr inbounds [8 x i32], ptr %msg_parm46, i64 0, i64 5
  %55 = load i32, ptr %arrayidx47, align 4, !tbaa !27
  %56 = load ptr, ptr %err, align 8, !tbaa !4
  %msg_parm48 = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %56, i32 0, i32 6
  %arrayidx49 = getelementptr inbounds [8 x i32], ptr %msg_parm48, i64 0, i64 6
  %57 = load i32, ptr %arrayidx49, align 4, !tbaa !27
  %58 = load ptr, ptr %err, align 8, !tbaa !4
  %msg_parm50 = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %58, i32 0, i32 6
  %arrayidx51 = getelementptr inbounds [8 x i32], ptr %msg_parm50, i64 0, i64 7
  %59 = load i32, ptr %arrayidx51, align 4, !tbaa !27
  %call52 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %42, ptr noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59) #6
  br label %if.end53

if.end53:                                         ; preds = %if.else35, %if.then33
  call void @llvm.lifetime.end.p0(i64 4, ptr %isstring) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %ch) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %msgptr) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %msgtext) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %msg_code) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reset_error_mgr(ptr noundef %cinfo) #0 {
entry:
  %cinfo.addr = alloca ptr, align 8
  store ptr %cinfo, ptr %cinfo.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err = getelementptr inbounds %struct.gdcmjpeg12_common_struct, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %err, align 8, !tbaa !24
  %num_warnings = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %1, i32 0, i32 8
  store i64 0, ptr %num_warnings, align 8, !tbaa !17
  %2 = load ptr, ptr %cinfo.addr, align 8, !tbaa !4
  %err1 = getelementptr inbounds %struct.gdcmjpeg12_common_struct, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %err1, align 8, !tbaa !24
  %msg_code = getelementptr inbounds %struct.gdcmjpeg12_error_mgr, ptr %3, i32 0, i32 5
  store i32 0, ptr %msg_code, align 8, !tbaa !18
  ret void
}

declare void @gdcmjpeg12_jpeg_destroy(ptr noundef) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"gdcmjpeg12_error_mgr", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40, !6, i64 44, !10, i64 124, !11, i64 128, !5, i64 136, !10, i64 144, !5, i64 152, !10, i64 160, !10, i64 164}
!10 = !{!"int", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !5, i64 8}
!13 = !{!9, !5, i64 16}
!14 = !{!9, !5, i64 24}
!15 = !{!9, !5, i64 32}
!16 = !{!9, !10, i64 124}
!17 = !{!9, !11, i64 128}
!18 = !{!9, !10, i64 40}
!19 = !{!9, !5, i64 136}
!20 = !{!9, !10, i64 144}
!21 = !{!9, !5, i64 152}
!22 = !{!9, !10, i64 160}
!23 = !{!9, !10, i64 164}
!24 = !{!25, !5, i64 0}
!25 = !{!"gdcmjpeg12_common_struct", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !10, i64 32, !10, i64 36}
!26 = !{!10, !10, i64 0}
!27 = !{!6, !6, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
