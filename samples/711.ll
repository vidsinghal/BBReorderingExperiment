; ModuleID = 'samples/711.bc'
source_filename = "nghttp2_hd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nghttp2_hd_static_entry = type { %struct.nghttp2_rcbuf, %struct.nghttp2_rcbuf, %struct.nghttp2_nv, i32, i32 }
%struct.nghttp2_rcbuf = type { ptr, ptr, ptr, i64, i32 }
%struct.nghttp2_nv = type { ptr, ptr, i64, i64, i8 }
%struct.search_result = type { i64, i32 }
%struct.nghttp2_hd_entry = type { %struct.nghttp2_hd_nv, %struct.nghttp2_nv, ptr, i32, i32 }
%struct.nghttp2_hd_nv = type { ptr, ptr, i32, i8 }
%struct.nghttp2_hd_deflater = type { %struct.nghttp2_hd_context, %struct.nghttp2_hd_map, i64, i64, i8 }
%struct.nghttp2_hd_context = type { %struct.nghttp2_hd_ringbuf, ptr, i64, i64, i32, i8 }
%struct.nghttp2_hd_ringbuf = type { ptr, i64, i64, i64 }
%struct.nghttp2_hd_map = type { [128 x ptr] }
%struct.nghttp2_hd_inflater = type { %struct.nghttp2_hd_context, %struct.nghttp2_hd_huff_decode_context, %struct.nghttp2_buf, %struct.nghttp2_buf, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i32, i32, i8, i8, i8 }
%struct.nghttp2_hd_huff_decode_context = type { i16 }
%struct.nghttp2_buf = type { ptr, ptr, ptr, ptr, ptr }
%struct.nghttp2_bufs = type { ptr, ptr, ptr, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"INDEX_RANGE_VALID(context, idx)\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"nghttp2_hd.c\00", align 1, !dbg !7
@__PRETTY_FUNCTION__.nghttp2_hd_table_get = private unnamed_addr constant [65 x i8] c"nghttp2_hd_nv nghttp2_hd_table_get(nghttp2_hd_context *, size_t)\00", align 1, !dbg !12
@static_table = internal constant [61 x %struct.nghttp2_hd_static_entry] [%struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.5, i64 10, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.5, ptr @.str.6, i64 10, i64 0, i8 0 }, i32 0, i32 -1141242146 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.7, i64 7, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.8, i64 3, i32 -1 }, %struct.nghttp2_nv { ptr @.str.7, ptr @.str.8, i64 7, i64 3, i8 0 }, i32 1, i32 695666056 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.7, i64 7, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.9, i64 4, i32 -1 }, %struct.nghttp2_nv { ptr @.str.7, ptr @.str.9, i64 7, i64 4, i8 0 }, i32 1, i32 695666056 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.10, i64 5, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.11, i64 1, i32 -1 }, %struct.nghttp2_nv { ptr @.str.10, ptr @.str.11, i64 5, i64 1, i8 0 }, i32 3, i32 -1002118610 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.10, i64 5, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.12, i64 11, i32 -1 }, %struct.nghttp2_nv { ptr @.str.10, ptr @.str.12, i64 5, i64 11, i8 0 }, i32 3, i32 -1002118610 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.13, i64 7, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.14, i64 4, i32 -1 }, %struct.nghttp2_nv { ptr @.str.13, ptr @.str.14, i64 7, i64 4, i8 0 }, i32 5, i32 -1784489622 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.13, i64 7, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.15, i64 5, i32 -1 }, %struct.nghttp2_nv { ptr @.str.13, ptr @.str.15, i64 7, i64 5, i8 0 }, i32 5, i32 -1784489622 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.16, i64 7, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.17, i64 3, i32 -1 }, %struct.nghttp2_nv { ptr @.str.16, ptr @.str.17, i64 7, i64 3, i8 0 }, i32 7, i32 -294678313 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.16, i64 7, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.18, i64 3, i32 -1 }, %struct.nghttp2_nv { ptr @.str.16, ptr @.str.18, i64 7, i64 3, i8 0 }, i32 7, i32 -294678313 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.16, i64 7, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.19, i64 3, i32 -1 }, %struct.nghttp2_nv { ptr @.str.16, ptr @.str.19, i64 7, i64 3, i8 0 }, i32 7, i32 -294678313 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.16, i64 7, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.20, i64 3, i32 -1 }, %struct.nghttp2_nv { ptr @.str.16, ptr @.str.20, i64 7, i64 3, i8 0 }, i32 7, i32 -294678313 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.16, i64 7, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.21, i64 3, i32 -1 }, %struct.nghttp2_nv { ptr @.str.16, ptr @.str.21, i64 7, i64 3, i8 0 }, i32 7, i32 -294678313 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.16, i64 7, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.22, i64 3, i32 -1 }, %struct.nghttp2_nv { ptr @.str.16, ptr @.str.22, i64 7, i64 3, i8 0 }, i32 7, i32 -294678313 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.16, i64 7, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.23, i64 3, i32 -1 }, %struct.nghttp2_nv { ptr @.str.16, ptr @.str.23, i64 7, i64 3, i8 0 }, i32 7, i32 -294678313 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.24, i64 14, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.24, ptr @.str.6, i64 14, i64 0, i8 0 }, i32 14, i32 -630956952 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.25, i64 15, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.26, i64 13, i32 -1 }, %struct.nghttp2_nv { ptr @.str.25, ptr @.str.26, i64 15, i64 13, i8 0 }, i32 15, i32 -915318119 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.27, i64 15, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.27, ptr @.str.6, i64 15, i64 0, i8 0 }, i32 16, i32 1979086614 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.28, i64 13, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.28, ptr @.str.6, i64 13, i64 0, i8 0 }, i32 17, i32 1713753958 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.29, i64 6, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.29, ptr @.str.6, i64 6, i64 0, i8 0 }, i32 18, i32 136609321 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.30, i64 27, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.30, ptr @.str.6, i64 27, i64 0, i8 0 }, i32 19, i32 -1584170004 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.31, i64 3, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.31, ptr @.str.6, i64 3, i64 0, i8 0 }, i32 20, i32 742476188 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.32, i64 5, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.32, ptr @.str.6, i64 5, i64 0, i8 0 }, i32 21, i32 -1364088782 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.33, i64 13, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.33, ptr @.str.6, i64 13, i64 0, i8 0 }, i32 22, i32 -1858709570 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.34, i64 13, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.34, ptr @.str.6, i64 13, i64 0, i8 0 }, i32 23, i32 1355326669 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.35, i64 19, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.35, ptr @.str.6, i64 19, i64 0, i8 0 }, i32 24, i32 -405782948 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.36, i64 16, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.36, ptr @.str.6, i64 16, i64 0, i8 0 }, i32 25, i32 65203592 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.37, i64 16, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.37, ptr @.str.6, i64 16, i64 0, i8 0 }, i32 26, i32 24973587 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.38, i64 14, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.38, ptr @.str.6, i64 14, i64 0, i8 0 }, i32 27, i32 1308181789 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.39, i64 16, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.39, ptr @.str.6, i64 16, i64 0, i8 0 }, i32 28, i32 -1992602578 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.40, i64 13, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.40, ptr @.str.6, i64 13, i64 0, i8 0 }, i32 29, i32 -739444150 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.41, i64 12, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.41, ptr @.str.6, i64 12, i64 0, i8 0 }, i32 30, i32 -50919019 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.42, i64 6, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.42, ptr @.str.6, i64 6, i64 0, i8 0 }, i32 31, i32 2007449791 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.43, i64 4, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.43, ptr @.str.6, i64 4, i64 0, i8 0 }, i32 32, i32 -730669991 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.44, i64 4, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.44, ptr @.str.6, i64 4, i64 0, i8 0 }, i32 33, i32 113792960 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.45, i64 6, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.45, ptr @.str.6, i64 6, i64 0, i8 0 }, i32 34, i32 -1764070568 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.46, i64 7, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.46, ptr @.str.6, i64 7, i64 0, i8 0 }, i32 35, i32 1049544579 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.47, i64 4, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.47, ptr @.str.6, i64 4, i64 0, i8 0 }, i32 36, i32 -1781694347 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.48, i64 4, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.48, ptr @.str.6, i64 4, i64 0, i8 0 }, i32 37, i32 -1342266001 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.49, i64 8, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.49, ptr @.str.6, i64 8, i64 0, i8 0 }, i32 38, i32 -697272598 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.50, i64 17, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.50, ptr @.str.6, i64 17, i64 0, i8 0 }, i32 39, i32 -2081916503 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.51, i64 13, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.51, ptr @.str.6, i64 13, i64 0, i8 0 }, i32 40, i32 -1758764681 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.52, i64 8, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.52, ptr @.str.6, i64 8, i64 0, i8 0 }, i32 41, i32 -1953989058 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.53, i64 19, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.53, ptr @.str.6, i64 19, i64 0, i8 0 }, i32 42, i32 -500152438 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.54, i64 13, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.54, ptr @.str.6, i64 13, i64 0, i8 0 }, i32 43, i32 -1068017045 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.55, i64 4, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.55, ptr @.str.6, i64 4, i64 0, i8 0 }, i32 44, i32 232457833 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.56, i64 8, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.56, ptr @.str.6, i64 8, i64 0, i8 0 }, i32 45, i32 200649126 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.57, i64 12, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.57, ptr @.str.6, i64 12, i64 0, i8 0 }, i32 46, i32 1826162134 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.58, i64 18, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.58, ptr @.str.6, i64 18, i64 0, i8 0 }, i32 47, i32 -1585521937 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.59, i64 19, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.59, ptr @.str.6, i64 19, i64 0, i8 0 }, i32 48, i32 -1608574789 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.60, i64 5, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.60, ptr @.str.6, i64 5, i64 0, i8 0 }, i32 49, i32 -86242094 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.61, i64 7, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.61, ptr @.str.6, i64 7, i64 0, i8 0 }, i32 50, i32 -325387930 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.62, i64 7, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.62, ptr @.str.6, i64 7, i64 0, i8 0 }, i32 51, i32 -722311628 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.63, i64 11, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.63, ptr @.str.6, i64 11, i64 0, i8 0 }, i32 52, i32 -958786698 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.64, i64 6, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.64, ptr @.str.6, i64 6, i64 0, i8 0 }, i32 53, i32 1085029842 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.65, i64 10, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.65, ptr @.str.6, i64 10, i64 0, i8 0 }, i32 54, i32 1848371000 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.66, i64 25, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.66, ptr @.str.6, i64 25, i64 0, i8 0 }, i32 55, i32 -156819935 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.67, i64 17, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.67, ptr @.str.6, i64 17, i64 0, i8 0 }, i32 56, i32 -575376308 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.68, i64 10, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.68, ptr @.str.6, i64 10, i64 0, i8 0 }, i32 57, i32 606444526 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.69, i64 4, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.69, ptr @.str.6, i64 4, i64 0, i8 0 }, i32 58, i32 1085005381 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.70, i64 3, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.70, ptr @.str.6, i64 3, i64 0, i8 0 }, i32 59, i32 1762798611 }, %struct.nghttp2_hd_static_entry { %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.71, i64 16, i32 -1 }, %struct.nghttp2_rcbuf { ptr null, ptr null, ptr @.str.6, i64 0, i32 -1 }, %struct.nghttp2_nv { ptr @.str.71, ptr @.str.6, i64 16, i64 0, i8 0 }, i32 60, i32 779865858 }], align 16, !dbg !18
@.str.2 = private unnamed_addr constant [11 x i8] c"in == last\00", align 1, !dbg !202
@__PRETTY_FUNCTION__.nghttp2_hd_inflate_hd_nv = private unnamed_addr constant [110 x i8] c"ssize_t nghttp2_hd_inflate_hd_nv(nghttp2_hd_inflater *, nghttp2_hd_nv *, int *, const uint8_t *, size_t, int)\00", align 1, !dbg !207
@.str.3 = private unnamed_addr constant [17 x i8] c"ringbuf->len > 0\00", align 1, !dbg !212
@__PRETTY_FUNCTION__.hd_ringbuf_pop_back = private unnamed_addr constant [47 x i8] c"void hd_ringbuf_pop_back(nghttp2_hd_ringbuf *)\00", align 1, !dbg !217
@.str.4 = private unnamed_addr constant [19 x i8] c"idx < ringbuf->len\00", align 1, !dbg !222
@__PRETTY_FUNCTION__.hd_ringbuf_get = private unnamed_addr constant [63 x i8] c"nghttp2_hd_entry *hd_ringbuf_get(nghttp2_hd_ringbuf *, size_t)\00", align 1, !dbg !227
@.str.5 = private unnamed_addr constant [11 x i8] c":authority\00", align 1, !dbg !232
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !234
@.str.7 = private unnamed_addr constant [8 x i8] c":method\00", align 1, !dbg !239
@.str.8 = private unnamed_addr constant [4 x i8] c"GET\00", align 1, !dbg !244
@.str.9 = private unnamed_addr constant [5 x i8] c"POST\00", align 1, !dbg !249
@.str.10 = private unnamed_addr constant [6 x i8] c":path\00", align 1, !dbg !254
@.str.11 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !259
@.str.12 = private unnamed_addr constant [12 x i8] c"/index.html\00", align 1, !dbg !264
@.str.13 = private unnamed_addr constant [8 x i8] c":scheme\00", align 1, !dbg !269
@.str.14 = private unnamed_addr constant [5 x i8] c"http\00", align 1, !dbg !271
@.str.15 = private unnamed_addr constant [6 x i8] c"https\00", align 1, !dbg !273
@.str.16 = private unnamed_addr constant [8 x i8] c":status\00", align 1, !dbg !275
@.str.17 = private unnamed_addr constant [4 x i8] c"200\00", align 1, !dbg !277
@.str.18 = private unnamed_addr constant [4 x i8] c"204\00", align 1, !dbg !279
@.str.19 = private unnamed_addr constant [4 x i8] c"206\00", align 1, !dbg !281
@.str.20 = private unnamed_addr constant [4 x i8] c"304\00", align 1, !dbg !283
@.str.21 = private unnamed_addr constant [4 x i8] c"400\00", align 1, !dbg !285
@.str.22 = private unnamed_addr constant [4 x i8] c"404\00", align 1, !dbg !287
@.str.23 = private unnamed_addr constant [4 x i8] c"500\00", align 1, !dbg !289
@.str.24 = private unnamed_addr constant [15 x i8] c"accept-charset\00", align 1, !dbg !291
@.str.25 = private unnamed_addr constant [16 x i8] c"accept-encoding\00", align 1, !dbg !296
@.str.26 = private unnamed_addr constant [14 x i8] c"gzip, deflate\00", align 1, !dbg !301
@.str.27 = private unnamed_addr constant [16 x i8] c"accept-language\00", align 1, !dbg !306
@.str.28 = private unnamed_addr constant [14 x i8] c"accept-ranges\00", align 1, !dbg !308
@.str.29 = private unnamed_addr constant [7 x i8] c"accept\00", align 1, !dbg !310
@.str.30 = private unnamed_addr constant [28 x i8] c"access-control-allow-origin\00", align 1, !dbg !315
@.str.31 = private unnamed_addr constant [4 x i8] c"age\00", align 1, !dbg !320
@.str.32 = private unnamed_addr constant [6 x i8] c"allow\00", align 1, !dbg !322
@.str.33 = private unnamed_addr constant [14 x i8] c"authorization\00", align 1, !dbg !324
@.str.34 = private unnamed_addr constant [14 x i8] c"cache-control\00", align 1, !dbg !326
@.str.35 = private unnamed_addr constant [20 x i8] c"content-disposition\00", align 1, !dbg !328
@.str.36 = private unnamed_addr constant [17 x i8] c"content-encoding\00", align 1, !dbg !333
@.str.37 = private unnamed_addr constant [17 x i8] c"content-language\00", align 1, !dbg !335
@.str.38 = private unnamed_addr constant [15 x i8] c"content-length\00", align 1, !dbg !337
@.str.39 = private unnamed_addr constant [17 x i8] c"content-location\00", align 1, !dbg !339
@.str.40 = private unnamed_addr constant [14 x i8] c"content-range\00", align 1, !dbg !341
@.str.41 = private unnamed_addr constant [13 x i8] c"content-type\00", align 1, !dbg !343
@.str.42 = private unnamed_addr constant [7 x i8] c"cookie\00", align 1, !dbg !345
@.str.43 = private unnamed_addr constant [5 x i8] c"date\00", align 1, !dbg !347
@.str.44 = private unnamed_addr constant [5 x i8] c"etag\00", align 1, !dbg !349
@.str.45 = private unnamed_addr constant [7 x i8] c"expect\00", align 1, !dbg !351
@.str.46 = private unnamed_addr constant [8 x i8] c"expires\00", align 1, !dbg !353
@.str.47 = private unnamed_addr constant [5 x i8] c"from\00", align 1, !dbg !355
@.str.48 = private unnamed_addr constant [5 x i8] c"host\00", align 1, !dbg !357
@.str.49 = private unnamed_addr constant [9 x i8] c"if-match\00", align 1, !dbg !359
@.str.50 = private unnamed_addr constant [18 x i8] c"if-modified-since\00", align 1, !dbg !364
@.str.51 = private unnamed_addr constant [14 x i8] c"if-none-match\00", align 1, !dbg !369
@.str.52 = private unnamed_addr constant [9 x i8] c"if-range\00", align 1, !dbg !371
@.str.53 = private unnamed_addr constant [20 x i8] c"if-unmodified-since\00", align 1, !dbg !373
@.str.54 = private unnamed_addr constant [14 x i8] c"last-modified\00", align 1, !dbg !375
@.str.55 = private unnamed_addr constant [5 x i8] c"link\00", align 1, !dbg !377
@.str.56 = private unnamed_addr constant [9 x i8] c"location\00", align 1, !dbg !379
@.str.57 = private unnamed_addr constant [13 x i8] c"max-forwards\00", align 1, !dbg !381
@.str.58 = private unnamed_addr constant [19 x i8] c"proxy-authenticate\00", align 1, !dbg !383
@.str.59 = private unnamed_addr constant [20 x i8] c"proxy-authorization\00", align 1, !dbg !385
@.str.60 = private unnamed_addr constant [6 x i8] c"range\00", align 1, !dbg !387
@.str.61 = private unnamed_addr constant [8 x i8] c"referer\00", align 1, !dbg !389
@.str.62 = private unnamed_addr constant [8 x i8] c"refresh\00", align 1, !dbg !391
@.str.63 = private unnamed_addr constant [12 x i8] c"retry-after\00", align 1, !dbg !393
@.str.64 = private unnamed_addr constant [7 x i8] c"server\00", align 1, !dbg !395
@.str.65 = private unnamed_addr constant [11 x i8] c"set-cookie\00", align 1, !dbg !397
@.str.66 = private unnamed_addr constant [26 x i8] c"strict-transport-security\00", align 1, !dbg !399
@.str.67 = private unnamed_addr constant [18 x i8] c"transfer-encoding\00", align 1, !dbg !404
@.str.68 = private unnamed_addr constant [11 x i8] c"user-agent\00", align 1, !dbg !406
@.str.69 = private unnamed_addr constant [5 x i8] c"vary\00", align 1, !dbg !408
@.str.70 = private unnamed_addr constant [4 x i8] c"via\00", align 1, !dbg !410
@.str.71 = private unnamed_addr constant [17 x i8] c"www-authenticate\00", align 1, !dbg !412
@.str.72 = private unnamed_addr constant [2 x i8] c"t\00", align 1, !dbg !414
@.str.73 = private unnamed_addr constant [3 x i8] c"vi\00", align 1, !dbg !416
@.str.74 = private unnamed_addr constant [3 x i8] c"ag\00", align 1, !dbg !421
@.str.75 = private unnamed_addr constant [4 x i8] c"dat\00", align 1, !dbg !423
@.str.76 = private unnamed_addr constant [4 x i8] c"eta\00", align 1, !dbg !425
@.str.77 = private unnamed_addr constant [4 x i8] c"lin\00", align 1, !dbg !427
@.str.78 = private unnamed_addr constant [4 x i8] c"fro\00", align 1, !dbg !429
@.str.79 = private unnamed_addr constant [4 x i8] c"hos\00", align 1, !dbg !431
@.str.80 = private unnamed_addr constant [4 x i8] c"var\00", align 1, !dbg !433
@.str.81 = private unnamed_addr constant [5 x i8] c"rang\00", align 1, !dbg !435
@.str.82 = private unnamed_addr constant [5 x i8] c":pat\00", align 1, !dbg !437
@.str.83 = private unnamed_addr constant [5 x i8] c"allo\00", align 1, !dbg !439
@.str.84 = private unnamed_addr constant [6 x i8] c"cooki\00", align 1, !dbg !441
@.str.85 = private unnamed_addr constant [6 x i8] c"serve\00", align 1, !dbg !443
@.str.86 = private unnamed_addr constant [6 x i8] c"accep\00", align 1, !dbg !445
@.str.87 = private unnamed_addr constant [6 x i8] c"expec\00", align 1, !dbg !447
@.str.88 = private unnamed_addr constant [7 x i8] c":metho\00", align 1, !dbg !449
@.str.89 = private unnamed_addr constant [7 x i8] c":schem\00", align 1, !dbg !451
@.str.90 = private unnamed_addr constant [7 x i8] c"upgrad\00", align 1, !dbg !453
@.str.91 = private unnamed_addr constant [7 x i8] c"refres\00", align 1, !dbg !455
@.str.92 = private unnamed_addr constant [7 x i8] c"refere\00", align 1, !dbg !457
@.str.93 = private unnamed_addr constant [7 x i8] c":statu\00", align 1, !dbg !459
@.str.94 = private unnamed_addr constant [7 x i8] c"expire\00", align 1, !dbg !461
@.str.95 = private unnamed_addr constant [8 x i8] c"if-rang\00", align 1, !dbg !463
@.str.96 = private unnamed_addr constant [8 x i8] c"if-matc\00", align 1, !dbg !465
@.str.97 = private unnamed_addr constant [8 x i8] c"locatio\00", align 1, !dbg !467
@.str.98 = private unnamed_addr constant [8 x i8] c"priorit\00", align 1, !dbg !469
@.str.99 = private unnamed_addr constant [9 x i8] c":protoco\00", align 1, !dbg !471
@.str.100 = private unnamed_addr constant [10 x i8] c"keep-aliv\00", align 1, !dbg !473
@.str.101 = private unnamed_addr constant [10 x i8] c"set-cooki\00", align 1, !dbg !478
@.str.102 = private unnamed_addr constant [10 x i8] c"connectio\00", align 1, !dbg !480
@.str.103 = private unnamed_addr constant [10 x i8] c"user-agen\00", align 1, !dbg !482
@.str.104 = private unnamed_addr constant [10 x i8] c":authorit\00", align 1, !dbg !484
@.str.105 = private unnamed_addr constant [11 x i8] c"retry-afte\00", align 1, !dbg !486
@.str.106 = private unnamed_addr constant [12 x i8] c"content-typ\00", align 1, !dbg !488
@.str.107 = private unnamed_addr constant [12 x i8] c"max-forward\00", align 1, !dbg !490
@.str.108 = private unnamed_addr constant [13 x i8] c"last-modifie\00", align 1, !dbg !492
@.str.109 = private unnamed_addr constant [13 x i8] c"content-rang\00", align 1, !dbg !494
@.str.110 = private unnamed_addr constant [13 x i8] c"if-none-matc\00", align 1, !dbg !496
@.str.111 = private unnamed_addr constant [13 x i8] c"cache-contro\00", align 1, !dbg !498
@.str.112 = private unnamed_addr constant [13 x i8] c"authorizatio\00", align 1, !dbg !500
@.str.113 = private unnamed_addr constant [13 x i8] c"accept-range\00", align 1, !dbg !502
@.str.114 = private unnamed_addr constant [14 x i8] c"content-lengt\00", align 1, !dbg !504
@.str.115 = private unnamed_addr constant [14 x i8] c"accept-charse\00", align 1, !dbg !506
@.str.116 = private unnamed_addr constant [15 x i8] c"accept-languag\00", align 1, !dbg !508
@.str.117 = private unnamed_addr constant [15 x i8] c"accept-encodin\00", align 1, !dbg !510
@.str.118 = private unnamed_addr constant [16 x i8] c"content-languag\00", align 1, !dbg !512
@.str.119 = private unnamed_addr constant [16 x i8] c"www-authenticat\00", align 1, !dbg !514
@.str.120 = private unnamed_addr constant [16 x i8] c"content-encodin\00", align 1, !dbg !516
@.str.121 = private unnamed_addr constant [16 x i8] c"content-locatio\00", align 1, !dbg !518
@.str.122 = private unnamed_addr constant [16 x i8] c"proxy-connectio\00", align 1, !dbg !520
@.str.123 = private unnamed_addr constant [17 x i8] c"if-modified-sinc\00", align 1, !dbg !522
@.str.124 = private unnamed_addr constant [17 x i8] c"transfer-encodin\00", align 1, !dbg !524
@.str.125 = private unnamed_addr constant [18 x i8] c"proxy-authenticat\00", align 1, !dbg !526
@.str.126 = private unnamed_addr constant [19 x i8] c"if-unmodified-sinc\00", align 1, !dbg !528
@.str.127 = private unnamed_addr constant [19 x i8] c"content-dispositio\00", align 1, !dbg !530
@.str.128 = private unnamed_addr constant [19 x i8] c"proxy-authorizatio\00", align 1, !dbg !532
@.str.129 = private unnamed_addr constant [25 x i8] c"strict-transport-securit\00", align 1, !dbg !534
@.str.130 = private unnamed_addr constant [27 x i8] c"access-control-allow-origi\00", align 1, !dbg !539
@__const.search_hd_table.res = private unnamed_addr constant %struct.search_result { i64 -1, i32 0 }, align 8
@.str.131 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !544
@__PRETTY_FUNCTION__.pack_first_byte = private unnamed_addr constant [29 x i8] c"uint8_t pack_first_byte(int)\00", align 1, !dbg !546
@.str.132 = private unnamed_addr constant [14 x i8] c"enclen == len\00", align 1, !dbg !551
@__PRETTY_FUNCTION__.emit_string = private unnamed_addr constant [57 x i8] c"int emit_string(nghttp2_bufs *, const uint8_t *, size_t)\00", align 1, !dbg !553
@__PRETTY_FUNCTION__.nghttp2_hd_table_get2 = private unnamed_addr constant [70 x i8] c"const nghttp2_nv *nghttp2_hd_table_get2(nghttp2_hd_context *, size_t)\00", align 1, !dbg !558

; Function Attrs: nounwind uwtable
define hidden void @nghttp2_hd_entry_init(ptr noundef %ent, ptr noundef %nv) #0 !dbg !589 {
entry:
  %ent.addr = alloca ptr, align 8
  %nv.addr = alloca ptr, align 8
  store ptr %ent, ptr %ent.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %ent.addr, metadata !610, metadata !DIExpression()), !dbg !616
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv.addr, metadata !611, metadata !DIExpression()), !dbg !617
  %0 = load ptr, ptr %ent.addr, align 8, !dbg !618, !tbaa !612
  %nv1 = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %0, i32 0, i32 0, !dbg !619
  %1 = load ptr, ptr %nv.addr, align 8, !dbg !620, !tbaa !612
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %nv1, ptr align 8 %1, i64 24, i1 false), !dbg !621, !tbaa.struct !622
  %2 = load ptr, ptr %nv.addr, align 8, !dbg !626, !tbaa !612
  %name = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %2, i32 0, i32 0, !dbg !627
  %3 = load ptr, ptr %name, align 8, !dbg !627, !tbaa !628
  %base = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %3, i32 0, i32 2, !dbg !630
  %4 = load ptr, ptr %base, align 8, !dbg !630, !tbaa !631
  %5 = load ptr, ptr %ent.addr, align 8, !dbg !634, !tbaa !612
  %cnv = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %5, i32 0, i32 1, !dbg !635
  %name2 = getelementptr inbounds %struct.nghttp2_nv, ptr %cnv, i32 0, i32 0, !dbg !636
  store ptr %4, ptr %name2, align 8, !dbg !637, !tbaa !638
  %6 = load ptr, ptr %nv.addr, align 8, !dbg !641, !tbaa !612
  %name3 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %6, i32 0, i32 0, !dbg !642
  %7 = load ptr, ptr %name3, align 8, !dbg !642, !tbaa !628
  %len = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %7, i32 0, i32 3, !dbg !643
  %8 = load i64, ptr %len, align 8, !dbg !643, !tbaa !644
  %9 = load ptr, ptr %ent.addr, align 8, !dbg !645, !tbaa !612
  %cnv4 = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %9, i32 0, i32 1, !dbg !646
  %namelen = getelementptr inbounds %struct.nghttp2_nv, ptr %cnv4, i32 0, i32 2, !dbg !647
  store i64 %8, ptr %namelen, align 8, !dbg !648, !tbaa !649
  %10 = load ptr, ptr %nv.addr, align 8, !dbg !650, !tbaa !612
  %value = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %10, i32 0, i32 1, !dbg !651
  %11 = load ptr, ptr %value, align 8, !dbg !651, !tbaa !652
  %base5 = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %11, i32 0, i32 2, !dbg !653
  %12 = load ptr, ptr %base5, align 8, !dbg !653, !tbaa !631
  %13 = load ptr, ptr %ent.addr, align 8, !dbg !654, !tbaa !612
  %cnv6 = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %13, i32 0, i32 1, !dbg !655
  %value7 = getelementptr inbounds %struct.nghttp2_nv, ptr %cnv6, i32 0, i32 1, !dbg !656
  store ptr %12, ptr %value7, align 8, !dbg !657, !tbaa !658
  %14 = load ptr, ptr %nv.addr, align 8, !dbg !659, !tbaa !612
  %value8 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %14, i32 0, i32 1, !dbg !660
  %15 = load ptr, ptr %value8, align 8, !dbg !660, !tbaa !652
  %len9 = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %15, i32 0, i32 3, !dbg !661
  %16 = load i64, ptr %len9, align 8, !dbg !661, !tbaa !644
  %17 = load ptr, ptr %ent.addr, align 8, !dbg !662, !tbaa !612
  %cnv10 = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %17, i32 0, i32 1, !dbg !663
  %valuelen = getelementptr inbounds %struct.nghttp2_nv, ptr %cnv10, i32 0, i32 3, !dbg !664
  store i64 %16, ptr %valuelen, align 8, !dbg !665, !tbaa !666
  %18 = load ptr, ptr %nv.addr, align 8, !dbg !667, !tbaa !612
  %flags = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %18, i32 0, i32 3, !dbg !668
  %19 = load i8, ptr %flags, align 4, !dbg !668, !tbaa !669
  %20 = load ptr, ptr %ent.addr, align 8, !dbg !670, !tbaa !612
  %cnv11 = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %20, i32 0, i32 1, !dbg !671
  %flags12 = getelementptr inbounds %struct.nghttp2_nv, ptr %cnv11, i32 0, i32 4, !dbg !672
  store i8 %19, ptr %flags12, align 8, !dbg !673, !tbaa !674
  %21 = load ptr, ptr %ent.addr, align 8, !dbg !675, !tbaa !612
  %next = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %21, i32 0, i32 2, !dbg !676
  store ptr null, ptr %next, align 8, !dbg !677, !tbaa !678
  %22 = load ptr, ptr %ent.addr, align 8, !dbg !679, !tbaa !612
  %hash = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %22, i32 0, i32 4, !dbg !680
  store i32 0, ptr %hash, align 4, !dbg !681, !tbaa !682
  %23 = load ptr, ptr %ent.addr, align 8, !dbg !683, !tbaa !612
  %nv13 = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %23, i32 0, i32 0, !dbg !684
  %name14 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv13, i32 0, i32 0, !dbg !685
  %24 = load ptr, ptr %name14, align 8, !dbg !685, !tbaa !686
  call void @nghttp2_rcbuf_incref(ptr noundef %24), !dbg !687
  %25 = load ptr, ptr %ent.addr, align 8, !dbg !688, !tbaa !612
  %nv15 = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %25, i32 0, i32 0, !dbg !689
  %value16 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv15, i32 0, i32 1, !dbg !690
  %26 = load ptr, ptr %value16, align 8, !dbg !690, !tbaa !691
  call void @nghttp2_rcbuf_incref(ptr noundef %26), !dbg !692
  ret void, !dbg !693
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare !dbg !694 void @nghttp2_rcbuf_incref(ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden void @nghttp2_hd_entry_free(ptr noundef %ent) #0 !dbg !697 {
entry:
  %ent.addr = alloca ptr, align 8
  store ptr %ent, ptr %ent.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %ent.addr, metadata !701, metadata !DIExpression()), !dbg !702
  %0 = load ptr, ptr %ent.addr, align 8, !dbg !703, !tbaa !612
  %nv = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %0, i32 0, i32 0, !dbg !704
  %value = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv, i32 0, i32 1, !dbg !705
  %1 = load ptr, ptr %value, align 8, !dbg !705, !tbaa !691
  call void @nghttp2_rcbuf_decref(ptr noundef %1), !dbg !706
  %2 = load ptr, ptr %ent.addr, align 8, !dbg !707, !tbaa !612
  %nv1 = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %2, i32 0, i32 0, !dbg !708
  %name = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv1, i32 0, i32 0, !dbg !709
  %3 = load ptr, ptr %name, align 8, !dbg !709, !tbaa !686
  call void @nghttp2_rcbuf_decref(ptr noundef %3), !dbg !710
  ret void, !dbg !711
}

declare !dbg !712 void @nghttp2_rcbuf_decref(ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @nghttp2_hd_deflate_init(ptr noundef %deflater, ptr noundef %mem) #0 !dbg !713 {
entry:
  %deflater.addr = alloca ptr, align 8
  %mem.addr = alloca ptr, align 8
  store ptr %deflater, ptr %deflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %deflater.addr, metadata !771, metadata !DIExpression()), !dbg !773
  store ptr %mem, ptr %mem.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !772, metadata !DIExpression()), !dbg !774
  %0 = load ptr, ptr %deflater.addr, align 8, !dbg !775, !tbaa !612
  %1 = load ptr, ptr %mem.addr, align 8, !dbg !776, !tbaa !612
  %call = call i32 @nghttp2_hd_deflate_init2(ptr noundef %0, i64 noundef 4096, ptr noundef %1), !dbg !777
  ret i32 %call, !dbg !778
}

; Function Attrs: nounwind uwtable
define hidden i32 @nghttp2_hd_deflate_init2(ptr noundef %deflater, i64 noundef %max_deflate_dynamic_table_size, ptr noundef %mem) #0 !dbg !779 {
entry:
  %retval = alloca i32, align 4
  %deflater.addr = alloca ptr, align 8
  %max_deflate_dynamic_table_size.addr = alloca i64, align 8
  %mem.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %deflater, ptr %deflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %deflater.addr, metadata !783, metadata !DIExpression()), !dbg !787
  store i64 %max_deflate_dynamic_table_size, ptr %max_deflate_dynamic_table_size.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %max_deflate_dynamic_table_size.addr, metadata !784, metadata !DIExpression()), !dbg !789
  store ptr %mem, ptr %mem.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !785, metadata !DIExpression()), !dbg !790
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !791
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !786, metadata !DIExpression()), !dbg !792
  %0 = load ptr, ptr %deflater.addr, align 8, !dbg !793, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %0, i32 0, i32 0, !dbg !794
  %1 = load ptr, ptr %mem.addr, align 8, !dbg !795, !tbaa !612
  %call = call i32 @hd_context_init(ptr noundef %ctx, ptr noundef %1), !dbg !796
  store i32 %call, ptr %rv, align 4, !dbg !797, !tbaa !623
  %2 = load i32, ptr %rv, align 4, !dbg !798, !tbaa !623
  %cmp = icmp ne i32 %2, 0, !dbg !800
  br i1 %cmp, label %if.then, label %if.end, !dbg !801

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rv, align 4, !dbg !802, !tbaa !623
  store i32 %3, ptr %retval, align 4, !dbg !804
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !804

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %deflater.addr, align 8, !dbg !805, !tbaa !612
  %map = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %4, i32 0, i32 1, !dbg !806
  call void @hd_map_init(ptr noundef %map), !dbg !807
  %5 = load i64, ptr %max_deflate_dynamic_table_size.addr, align 8, !dbg !808, !tbaa !788
  %cmp1 = icmp ult i64 %5, 4096, !dbg !810
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !811

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %deflater.addr, align 8, !dbg !812, !tbaa !612
  %notify_table_size_change = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %6, i32 0, i32 4, !dbg !814
  store i8 1, ptr %notify_table_size_change, align 8, !dbg !815, !tbaa !816
  %7 = load i64, ptr %max_deflate_dynamic_table_size.addr, align 8, !dbg !821, !tbaa !788
  %8 = load ptr, ptr %deflater.addr, align 8, !dbg !822, !tbaa !612
  %ctx3 = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %8, i32 0, i32 0, !dbg !823
  %hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx3, i32 0, i32 3, !dbg !824
  store i64 %7, ptr %hd_table_bufsize_max, align 8, !dbg !825, !tbaa !826
  br label %if.end5, !dbg !827

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %deflater.addr, align 8, !dbg !828, !tbaa !612
  %notify_table_size_change4 = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %9, i32 0, i32 4, !dbg !830
  store i8 0, ptr %notify_table_size_change4, align 8, !dbg !831, !tbaa !816
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %10 = load i64, ptr %max_deflate_dynamic_table_size.addr, align 8, !dbg !832, !tbaa !788
  %11 = load ptr, ptr %deflater.addr, align 8, !dbg !833, !tbaa !612
  %deflate_hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %11, i32 0, i32 2, !dbg !834
  store i64 %10, ptr %deflate_hd_table_bufsize_max, align 8, !dbg !835, !tbaa !836
  %12 = load ptr, ptr %deflater.addr, align 8, !dbg !837, !tbaa !612
  %min_hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %12, i32 0, i32 3, !dbg !838
  store i64 4294967295, ptr %min_hd_table_bufsize_max, align 8, !dbg !839, !tbaa !840
  store i32 0, ptr %retval, align 4, !dbg !841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !841

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !842
  %13 = load i32, ptr %retval, align 4, !dbg !842
  ret i32 %13, !dbg !842
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal i32 @hd_context_init(ptr noundef %context, ptr noundef %mem) #0 !dbg !843 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %mem.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !848, metadata !DIExpression()), !dbg !851
  store ptr %mem, ptr %mem.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !849, metadata !DIExpression()), !dbg !852
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !853
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !850, metadata !DIExpression()), !dbg !854
  %0 = load ptr, ptr %mem.addr, align 8, !dbg !855, !tbaa !612
  %1 = load ptr, ptr %context.addr, align 8, !dbg !856, !tbaa !612
  %mem1 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %1, i32 0, i32 1, !dbg !857
  store ptr %0, ptr %mem1, align 8, !dbg !858, !tbaa !859
  %2 = load ptr, ptr %context.addr, align 8, !dbg !860, !tbaa !612
  %bad = getelementptr inbounds %struct.nghttp2_hd_context, ptr %2, i32 0, i32 5, !dbg !861
  store i8 0, ptr %bad, align 4, !dbg !862, !tbaa !863
  %3 = load ptr, ptr %context.addr, align 8, !dbg !864, !tbaa !612
  %hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_context, ptr %3, i32 0, i32 3, !dbg !865
  store i64 4096, ptr %hd_table_bufsize_max, align 8, !dbg !866, !tbaa !867
  %4 = load ptr, ptr %context.addr, align 8, !dbg !868, !tbaa !612
  %hd_table = getelementptr inbounds %struct.nghttp2_hd_context, ptr %4, i32 0, i32 0, !dbg !869
  %5 = load ptr, ptr %context.addr, align 8, !dbg !870, !tbaa !612
  %hd_table_bufsize_max2 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %5, i32 0, i32 3, !dbg !871
  %6 = load i64, ptr %hd_table_bufsize_max2, align 8, !dbg !871, !tbaa !867
  %div = udiv i64 %6, 32, !dbg !872
  %7 = load ptr, ptr %mem.addr, align 8, !dbg !873, !tbaa !612
  %call = call i32 @hd_ringbuf_init(ptr noundef %hd_table, i64 noundef %div, ptr noundef %7), !dbg !874
  store i32 %call, ptr %rv, align 4, !dbg !875, !tbaa !623
  %8 = load i32, ptr %rv, align 4, !dbg !876, !tbaa !623
  %cmp = icmp ne i32 %8, 0, !dbg !878
  br i1 %cmp, label %if.then, label %if.end, !dbg !879

if.then:                                          ; preds = %entry
  %9 = load i32, ptr %rv, align 4, !dbg !880, !tbaa !623
  store i32 %9, ptr %retval, align 4, !dbg !882
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !882

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %context.addr, align 8, !dbg !883, !tbaa !612
  %hd_table_bufsize = getelementptr inbounds %struct.nghttp2_hd_context, ptr %10, i32 0, i32 2, !dbg !884
  store i64 0, ptr %hd_table_bufsize, align 8, !dbg !885, !tbaa !886
  %11 = load ptr, ptr %context.addr, align 8, !dbg !887, !tbaa !612
  %next_seq = getelementptr inbounds %struct.nghttp2_hd_context, ptr %11, i32 0, i32 4, !dbg !888
  store i32 0, ptr %next_seq, align 8, !dbg !889, !tbaa !890
  store i32 0, ptr %retval, align 4, !dbg !891
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !891

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !892
  %12 = load i32, ptr %retval, align 4, !dbg !892
  ret i32 %12, !dbg !892
}

; Function Attrs: nounwind uwtable
define internal void @hd_map_init(ptr noundef %map) #0 !dbg !893 {
entry:
  %map.addr = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !898, metadata !DIExpression()), !dbg !899
  %0 = load ptr, ptr %map.addr, align 8, !dbg !900, !tbaa !612
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 1024, i1 false), !dbg !901
  ret void, !dbg !902
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define hidden i32 @nghttp2_hd_inflate_init(ptr noundef %inflater, ptr noundef %mem) #0 !dbg !903 {
entry:
  %retval = alloca i32, align 4
  %inflater.addr = alloca ptr, align 8
  %mem.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !948, metadata !DIExpression()), !dbg !952
  store ptr %mem, ptr %mem.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !949, metadata !DIExpression()), !dbg !953
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !954
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !950, metadata !DIExpression()), !dbg !955
  %0 = load ptr, ptr %inflater.addr, align 8, !dbg !956, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %0, i32 0, i32 0, !dbg !957
  %1 = load ptr, ptr %mem.addr, align 8, !dbg !958, !tbaa !612
  %call = call i32 @hd_context_init(ptr noundef %ctx, ptr noundef %1), !dbg !959
  store i32 %call, ptr %rv, align 4, !dbg !960, !tbaa !623
  %2 = load i32, ptr %rv, align 4, !dbg !961, !tbaa !623
  %cmp = icmp ne i32 %2, 0, !dbg !963
  br i1 %cmp, label %if.then, label %if.end, !dbg !964

if.then:                                          ; preds = %entry
  br label %fail, !dbg !965

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %inflater.addr, align 8, !dbg !967, !tbaa !612
  %settings_hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %3, i32 0, i32 10, !dbg !968
  store i64 4096, ptr %settings_hd_table_bufsize_max, align 8, !dbg !969, !tbaa !970
  %4 = load ptr, ptr %inflater.addr, align 8, !dbg !975, !tbaa !612
  %min_hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %4, i32 0, i32 11, !dbg !976
  store i64 4294967295, ptr %min_hd_table_bufsize_max, align 8, !dbg !977, !tbaa !978
  %5 = load ptr, ptr %inflater.addr, align 8, !dbg !979, !tbaa !612
  %nv_name_keep = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %5, i32 0, i32 6, !dbg !980
  store ptr null, ptr %nv_name_keep, align 8, !dbg !981, !tbaa !982
  %6 = load ptr, ptr %inflater.addr, align 8, !dbg !983, !tbaa !612
  %nv_value_keep = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %6, i32 0, i32 7, !dbg !984
  store ptr null, ptr %nv_value_keep, align 8, !dbg !985, !tbaa !986
  %7 = load ptr, ptr %inflater.addr, align 8, !dbg !987, !tbaa !612
  %opcode = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %7, i32 0, i32 13, !dbg !988
  store i32 0, ptr %opcode, align 8, !dbg !989, !tbaa !990
  %8 = load ptr, ptr %inflater.addr, align 8, !dbg !991, !tbaa !612
  %state = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %8, i32 0, i32 14, !dbg !992
  store i32 1, ptr %state, align 4, !dbg !993, !tbaa !994
  %9 = load ptr, ptr %inflater.addr, align 8, !dbg !995, !tbaa !612
  %namebuf = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %9, i32 0, i32 2, !dbg !996
  call void @nghttp2_buf_init(ptr noundef %namebuf), !dbg !997
  %10 = load ptr, ptr %inflater.addr, align 8, !dbg !998, !tbaa !612
  %valuebuf = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %10, i32 0, i32 3, !dbg !999
  call void @nghttp2_buf_init(ptr noundef %valuebuf), !dbg !1000
  %11 = load ptr, ptr %inflater.addr, align 8, !dbg !1001, !tbaa !612
  %namercbuf = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %11, i32 0, i32 4, !dbg !1002
  store ptr null, ptr %namercbuf, align 8, !dbg !1003, !tbaa !1004
  %12 = load ptr, ptr %inflater.addr, align 8, !dbg !1005, !tbaa !612
  %valuercbuf = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %12, i32 0, i32 5, !dbg !1006
  store ptr null, ptr %valuercbuf, align 8, !dbg !1007, !tbaa !1008
  %13 = load ptr, ptr %inflater.addr, align 8, !dbg !1009, !tbaa !612
  %huffman_encoded = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %13, i32 0, i32 15, !dbg !1010
  store i8 0, ptr %huffman_encoded, align 8, !dbg !1011, !tbaa !1012
  %14 = load ptr, ptr %inflater.addr, align 8, !dbg !1013, !tbaa !612
  %index = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %14, i32 0, i32 9, !dbg !1014
  store i64 0, ptr %index, align 8, !dbg !1015, !tbaa !1016
  %15 = load ptr, ptr %inflater.addr, align 8, !dbg !1017, !tbaa !612
  %left = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %15, i32 0, i32 8, !dbg !1018
  store i64 0, ptr %left, align 8, !dbg !1019, !tbaa !1020
  %16 = load ptr, ptr %inflater.addr, align 8, !dbg !1021, !tbaa !612
  %shift = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %16, i32 0, i32 12, !dbg !1022
  store i64 0, ptr %shift, align 8, !dbg !1023, !tbaa !1024
  %17 = load ptr, ptr %inflater.addr, align 8, !dbg !1025, !tbaa !612
  %index_required = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %17, i32 0, i32 16, !dbg !1026
  store i8 0, ptr %index_required, align 1, !dbg !1027, !tbaa !1028
  %18 = load ptr, ptr %inflater.addr, align 8, !dbg !1029, !tbaa !612
  %no_index = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %18, i32 0, i32 17, !dbg !1030
  store i8 0, ptr %no_index, align 2, !dbg !1031, !tbaa !1032
  store i32 0, ptr %retval, align 4, !dbg !1033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1033

fail:                                             ; preds = %if.then
  tail call void @llvm.dbg.label(metadata !951), !dbg !1034
  %19 = load i32, ptr %rv, align 4, !dbg !1035, !tbaa !623
  store i32 %19, ptr %retval, align 4, !dbg !1036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1036

cleanup:                                          ; preds = %fail, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !1037
  %20 = load i32, ptr %retval, align 4, !dbg !1037
  ret i32 %20, !dbg !1037
}

declare !dbg !1038 void @nghttp2_buf_init(ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden void @nghttp2_hd_deflate_free(ptr noundef %deflater) #0 !dbg !1042 {
entry:
  %deflater.addr = alloca ptr, align 8
  store ptr %deflater, ptr %deflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %deflater.addr, metadata !1046, metadata !DIExpression()), !dbg !1047
  %0 = load ptr, ptr %deflater.addr, align 8, !dbg !1048, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %0, i32 0, i32 0, !dbg !1049
  call void @hd_context_free(ptr noundef %ctx), !dbg !1050
  ret void, !dbg !1051
}

; Function Attrs: nounwind uwtable
define internal void @hd_context_free(ptr noundef %context) #0 !dbg !1052 {
entry:
  %context.addr = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1056, metadata !DIExpression()), !dbg !1057
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1058, !tbaa !612
  %hd_table = getelementptr inbounds %struct.nghttp2_hd_context, ptr %0, i32 0, i32 0, !dbg !1059
  %1 = load ptr, ptr %context.addr, align 8, !dbg !1060, !tbaa !612
  %mem = getelementptr inbounds %struct.nghttp2_hd_context, ptr %1, i32 0, i32 1, !dbg !1061
  %2 = load ptr, ptr %mem, align 8, !dbg !1061, !tbaa !859
  call void @hd_ringbuf_free(ptr noundef %hd_table, ptr noundef %2), !dbg !1062
  ret void, !dbg !1063
}

; Function Attrs: nounwind uwtable
define hidden void @nghttp2_hd_inflate_free(ptr noundef %inflater) #0 !dbg !1064 {
entry:
  %inflater.addr = alloca ptr, align 8
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !1068, metadata !DIExpression()), !dbg !1069
  %0 = load ptr, ptr %inflater.addr, align 8, !dbg !1070, !tbaa !612
  call void @hd_inflate_keep_free(ptr noundef %0), !dbg !1071
  %1 = load ptr, ptr %inflater.addr, align 8, !dbg !1072, !tbaa !612
  %valuercbuf = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %1, i32 0, i32 5, !dbg !1073
  %2 = load ptr, ptr %valuercbuf, align 8, !dbg !1073, !tbaa !1008
  call void @nghttp2_rcbuf_decref(ptr noundef %2), !dbg !1074
  %3 = load ptr, ptr %inflater.addr, align 8, !dbg !1075, !tbaa !612
  %namercbuf = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %3, i32 0, i32 4, !dbg !1076
  %4 = load ptr, ptr %namercbuf, align 8, !dbg !1076, !tbaa !1004
  call void @nghttp2_rcbuf_decref(ptr noundef %4), !dbg !1077
  %5 = load ptr, ptr %inflater.addr, align 8, !dbg !1078, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %5, i32 0, i32 0, !dbg !1079
  call void @hd_context_free(ptr noundef %ctx), !dbg !1080
  ret void, !dbg !1081
}

; Function Attrs: nounwind uwtable
define internal void @hd_inflate_keep_free(ptr noundef %inflater) #0 !dbg !1082 {
entry:
  %inflater.addr = alloca ptr, align 8
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !1084, metadata !DIExpression()), !dbg !1085
  %0 = load ptr, ptr %inflater.addr, align 8, !dbg !1086, !tbaa !612
  %nv_value_keep = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %0, i32 0, i32 7, !dbg !1087
  %1 = load ptr, ptr %nv_value_keep, align 8, !dbg !1087, !tbaa !986
  call void @nghttp2_rcbuf_decref(ptr noundef %1), !dbg !1088
  %2 = load ptr, ptr %inflater.addr, align 8, !dbg !1089, !tbaa !612
  %nv_name_keep = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %2, i32 0, i32 6, !dbg !1090
  %3 = load ptr, ptr %nv_name_keep, align 8, !dbg !1090, !tbaa !982
  call void @nghttp2_rcbuf_decref(ptr noundef %3), !dbg !1091
  %4 = load ptr, ptr %inflater.addr, align 8, !dbg !1092, !tbaa !612
  %nv_value_keep1 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %4, i32 0, i32 7, !dbg !1093
  store ptr null, ptr %nv_value_keep1, align 8, !dbg !1094, !tbaa !986
  %5 = load ptr, ptr %inflater.addr, align 8, !dbg !1095, !tbaa !612
  %nv_name_keep2 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %5, i32 0, i32 6, !dbg !1096
  store ptr null, ptr %nv_name_keep2, align 8, !dbg !1097, !tbaa !982
  ret void, !dbg !1098
}

; Function Attrs: nounwind uwtable
define i32 @nghttp2_hd_deflate_change_table_size(ptr noundef %deflater, i64 noundef %settings_max_dynamic_table_size) #0 !dbg !1099 {
entry:
  %deflater.addr = alloca ptr, align 8
  %settings_max_dynamic_table_size.addr = alloca i64, align 8
  %next_bufsize = alloca i64, align 8
  store ptr %deflater, ptr %deflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %deflater.addr, metadata !1103, metadata !DIExpression()), !dbg !1106
  store i64 %settings_max_dynamic_table_size, ptr %settings_max_dynamic_table_size.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %settings_max_dynamic_table_size.addr, metadata !1104, metadata !DIExpression()), !dbg !1107
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_bufsize) #8, !dbg !1108
  tail call void @llvm.dbg.declare(metadata ptr %next_bufsize, metadata !1105, metadata !DIExpression()), !dbg !1109
  %0 = load i64, ptr %settings_max_dynamic_table_size.addr, align 8, !dbg !1110, !tbaa !788
  %1 = load ptr, ptr %deflater.addr, align 8, !dbg !1110, !tbaa !612
  %deflate_hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %1, i32 0, i32 2, !dbg !1110
  %2 = load i64, ptr %deflate_hd_table_bufsize_max, align 8, !dbg !1110, !tbaa !836
  %cmp = icmp ult i64 %0, %2, !dbg !1110
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1110

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %settings_max_dynamic_table_size.addr, align 8, !dbg !1110, !tbaa !788
  br label %cond.end, !dbg !1110

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %deflater.addr, align 8, !dbg !1110, !tbaa !612
  %deflate_hd_table_bufsize_max1 = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %4, i32 0, i32 2, !dbg !1110
  %5 = load i64, ptr %deflate_hd_table_bufsize_max1, align 8, !dbg !1110, !tbaa !836
  br label %cond.end, !dbg !1110

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %5, %cond.false ], !dbg !1110
  store i64 %cond, ptr %next_bufsize, align 8, !dbg !1109, !tbaa !788
  %6 = load i64, ptr %next_bufsize, align 8, !dbg !1111, !tbaa !788
  %7 = load ptr, ptr %deflater.addr, align 8, !dbg !1112, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %7, i32 0, i32 0, !dbg !1113
  %hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx, i32 0, i32 3, !dbg !1114
  store i64 %6, ptr %hd_table_bufsize_max, align 8, !dbg !1115, !tbaa !826
  %8 = load ptr, ptr %deflater.addr, align 8, !dbg !1116, !tbaa !612
  %min_hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %8, i32 0, i32 3, !dbg !1116
  %9 = load i64, ptr %min_hd_table_bufsize_max, align 8, !dbg !1116, !tbaa !840
  %10 = load i64, ptr %next_bufsize, align 8, !dbg !1116, !tbaa !788
  %cmp2 = icmp ult i64 %9, %10, !dbg !1116
  br i1 %cmp2, label %cond.true3, label %cond.false5, !dbg !1116

cond.true3:                                       ; preds = %cond.end
  %11 = load ptr, ptr %deflater.addr, align 8, !dbg !1116, !tbaa !612
  %min_hd_table_bufsize_max4 = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %11, i32 0, i32 3, !dbg !1116
  %12 = load i64, ptr %min_hd_table_bufsize_max4, align 8, !dbg !1116, !tbaa !840
  br label %cond.end6, !dbg !1116

cond.false5:                                      ; preds = %cond.end
  %13 = load i64, ptr %next_bufsize, align 8, !dbg !1116, !tbaa !788
  br label %cond.end6, !dbg !1116

cond.end6:                                        ; preds = %cond.false5, %cond.true3
  %cond7 = phi i64 [ %12, %cond.true3 ], [ %13, %cond.false5 ], !dbg !1116
  %14 = load ptr, ptr %deflater.addr, align 8, !dbg !1117, !tbaa !612
  %min_hd_table_bufsize_max8 = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %14, i32 0, i32 3, !dbg !1118
  store i64 %cond7, ptr %min_hd_table_bufsize_max8, align 8, !dbg !1119, !tbaa !840
  %15 = load ptr, ptr %deflater.addr, align 8, !dbg !1120, !tbaa !612
  %notify_table_size_change = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %15, i32 0, i32 4, !dbg !1121
  store i8 1, ptr %notify_table_size_change, align 8, !dbg !1122, !tbaa !816
  %16 = load ptr, ptr %deflater.addr, align 8, !dbg !1123, !tbaa !612
  %ctx9 = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %16, i32 0, i32 0, !dbg !1124
  %17 = load ptr, ptr %deflater.addr, align 8, !dbg !1125, !tbaa !612
  %map = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %17, i32 0, i32 1, !dbg !1126
  call void @hd_context_shrink_table_size(ptr noundef %ctx9, ptr noundef %map), !dbg !1127
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_bufsize) #8, !dbg !1128
  ret i32 0, !dbg !1129
}

; Function Attrs: nounwind uwtable
define internal void @hd_context_shrink_table_size(ptr noundef %context, ptr noundef %map) #0 !dbg !1130 {
entry:
  %context.addr = alloca ptr, align 8
  %map.addr = alloca ptr, align 8
  %mem = alloca ptr, align 8
  %idx = alloca i64, align 8
  %ent = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1134, metadata !DIExpression()), !dbg !1140
  store ptr %map, ptr %map.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !1135, metadata !DIExpression()), !dbg !1141
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #8, !dbg !1142
  tail call void @llvm.dbg.declare(metadata ptr %mem, metadata !1136, metadata !DIExpression()), !dbg !1143
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1144, !tbaa !612
  %mem1 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %0, i32 0, i32 1, !dbg !1145
  %1 = load ptr, ptr %mem1, align 8, !dbg !1145, !tbaa !859
  store ptr %1, ptr %mem, align 8, !dbg !1146, !tbaa !612
  br label %while.cond, !dbg !1147

while.cond:                                       ; preds = %if.end, %entry
  %2 = load ptr, ptr %context.addr, align 8, !dbg !1148, !tbaa !612
  %hd_table_bufsize = getelementptr inbounds %struct.nghttp2_hd_context, ptr %2, i32 0, i32 2, !dbg !1149
  %3 = load i64, ptr %hd_table_bufsize, align 8, !dbg !1149, !tbaa !886
  %4 = load ptr, ptr %context.addr, align 8, !dbg !1150, !tbaa !612
  %hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_context, ptr %4, i32 0, i32 3, !dbg !1151
  %5 = load i64, ptr %hd_table_bufsize_max, align 8, !dbg !1151, !tbaa !867
  %cmp = icmp ugt i64 %3, %5, !dbg !1152
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1153

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %context.addr, align 8, !dbg !1154, !tbaa !612
  %hd_table = getelementptr inbounds %struct.nghttp2_hd_context, ptr %6, i32 0, i32 0, !dbg !1155
  %len = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %hd_table, i32 0, i32 3, !dbg !1156
  %7 = load i64, ptr %len, align 8, !dbg !1156, !tbaa !1157
  %cmp2 = icmp ugt i64 %7, 0, !dbg !1158
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ], !dbg !1159
  br i1 %8, label %while.body, label %while.end, !dbg !1147

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #8, !dbg !1160
  tail call void @llvm.dbg.declare(metadata ptr %idx, metadata !1137, metadata !DIExpression()), !dbg !1161
  %9 = load ptr, ptr %context.addr, align 8, !dbg !1162, !tbaa !612
  %hd_table3 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %9, i32 0, i32 0, !dbg !1163
  %len4 = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %hd_table3, i32 0, i32 3, !dbg !1164
  %10 = load i64, ptr %len4, align 8, !dbg !1164, !tbaa !1157
  %sub = sub i64 %10, 1, !dbg !1165
  store i64 %sub, ptr %idx, align 8, !dbg !1161, !tbaa !788
  call void @llvm.lifetime.start.p0(i64 8, ptr %ent) #8, !dbg !1166
  tail call void @llvm.dbg.declare(metadata ptr %ent, metadata !1139, metadata !DIExpression()), !dbg !1167
  %11 = load ptr, ptr %context.addr, align 8, !dbg !1168, !tbaa !612
  %hd_table5 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %11, i32 0, i32 0, !dbg !1169
  %12 = load i64, ptr %idx, align 8, !dbg !1170, !tbaa !788
  %call = call ptr @hd_ringbuf_get(ptr noundef %hd_table5, i64 noundef %12), !dbg !1171
  store ptr %call, ptr %ent, align 8, !dbg !1167, !tbaa !612
  %13 = load ptr, ptr %ent, align 8, !dbg !1172, !tbaa !612
  %nv = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %13, i32 0, i32 0, !dbg !1173
  %name = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv, i32 0, i32 0, !dbg !1174
  %14 = load ptr, ptr %name, align 8, !dbg !1174, !tbaa !686
  %len6 = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %14, i32 0, i32 3, !dbg !1175
  %15 = load i64, ptr %len6, align 8, !dbg !1175, !tbaa !644
  %16 = load ptr, ptr %ent, align 8, !dbg !1176, !tbaa !612
  %nv7 = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %16, i32 0, i32 0, !dbg !1177
  %value = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv7, i32 0, i32 1, !dbg !1178
  %17 = load ptr, ptr %value, align 8, !dbg !1178, !tbaa !691
  %len8 = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %17, i32 0, i32 3, !dbg !1179
  %18 = load i64, ptr %len8, align 8, !dbg !1179, !tbaa !644
  %call9 = call i64 @entry_room(i64 noundef %15, i64 noundef %18), !dbg !1180
  %19 = load ptr, ptr %context.addr, align 8, !dbg !1181, !tbaa !612
  %hd_table_bufsize10 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %19, i32 0, i32 2, !dbg !1182
  %20 = load i64, ptr %hd_table_bufsize10, align 8, !dbg !1183, !tbaa !886
  %sub11 = sub i64 %20, %call9, !dbg !1183
  store i64 %sub11, ptr %hd_table_bufsize10, align 8, !dbg !1183, !tbaa !886
  %21 = load ptr, ptr %context.addr, align 8, !dbg !1184, !tbaa !612
  %hd_table12 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %21, i32 0, i32 0, !dbg !1185
  call void @hd_ringbuf_pop_back(ptr noundef %hd_table12), !dbg !1186
  %22 = load ptr, ptr %map.addr, align 8, !dbg !1187, !tbaa !612
  %tobool = icmp ne ptr %22, null, !dbg !1187
  br i1 %tobool, label %if.then, label %if.end, !dbg !1189

if.then:                                          ; preds = %while.body
  %23 = load ptr, ptr %map.addr, align 8, !dbg !1190, !tbaa !612
  %24 = load ptr, ptr %ent, align 8, !dbg !1192, !tbaa !612
  call void @hd_map_remove(ptr noundef %23, ptr noundef %24), !dbg !1193
  br label %if.end, !dbg !1194

if.end:                                           ; preds = %if.then, %while.body
  %25 = load ptr, ptr %ent, align 8, !dbg !1195, !tbaa !612
  call void @nghttp2_hd_entry_free(ptr noundef %25), !dbg !1196
  %26 = load ptr, ptr %mem, align 8, !dbg !1197, !tbaa !612
  %27 = load ptr, ptr %ent, align 8, !dbg !1198, !tbaa !612
  call void @nghttp2_mem_free(ptr noundef %26, ptr noundef %27), !dbg !1199
  call void @llvm.lifetime.end.p0(i64 8, ptr %ent) #8, !dbg !1200
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #8, !dbg !1200
  br label %while.cond, !dbg !1147, !llvm.loop !1201

while.end:                                        ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #8, !dbg !1203
  ret void, !dbg !1203
}

; Function Attrs: nounwind uwtable
define i32 @nghttp2_hd_inflate_change_table_size(ptr noundef %inflater, i64 noundef %settings_max_dynamic_table_size) #0 !dbg !1204 {
entry:
  %retval = alloca i32, align 4
  %inflater.addr = alloca ptr, align 8
  %settings_max_dynamic_table_size.addr = alloca i64, align 8
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !1208, metadata !DIExpression()), !dbg !1210
  store i64 %settings_max_dynamic_table_size, ptr %settings_max_dynamic_table_size.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %settings_max_dynamic_table_size.addr, metadata !1209, metadata !DIExpression()), !dbg !1211
  %0 = load ptr, ptr %inflater.addr, align 8, !dbg !1212, !tbaa !612
  %state = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %0, i32 0, i32 14, !dbg !1213
  %1 = load i32, ptr %state, align 4, !dbg !1213, !tbaa !994
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
  ], !dbg !1214

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog, !dbg !1215

sw.default:                                       ; preds = %entry
  store i32 -519, ptr %retval, align 4, !dbg !1217
  br label %return, !dbg !1217

sw.epilog:                                        ; preds = %sw.bb
  %2 = load i64, ptr %settings_max_dynamic_table_size.addr, align 8, !dbg !1218, !tbaa !788
  %3 = load ptr, ptr %inflater.addr, align 8, !dbg !1219, !tbaa !612
  %settings_hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %3, i32 0, i32 10, !dbg !1220
  store i64 %2, ptr %settings_hd_table_bufsize_max, align 8, !dbg !1221, !tbaa !970
  %4 = load ptr, ptr %inflater.addr, align 8, !dbg !1222, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %4, i32 0, i32 0, !dbg !1224
  %hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx, i32 0, i32 3, !dbg !1225
  %5 = load i64, ptr %hd_table_bufsize_max, align 8, !dbg !1225, !tbaa !1226
  %6 = load i64, ptr %settings_max_dynamic_table_size.addr, align 8, !dbg !1227, !tbaa !788
  %cmp = icmp ugt i64 %5, %6, !dbg !1228
  br i1 %cmp, label %if.then, label %if.end, !dbg !1229

if.then:                                          ; preds = %sw.epilog
  %7 = load ptr, ptr %inflater.addr, align 8, !dbg !1230, !tbaa !612
  %state1 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %7, i32 0, i32 14, !dbg !1232
  store i32 0, ptr %state1, align 4, !dbg !1233, !tbaa !994
  %8 = load i64, ptr %settings_max_dynamic_table_size.addr, align 8, !dbg !1234, !tbaa !788
  %9 = load ptr, ptr %inflater.addr, align 8, !dbg !1235, !tbaa !612
  %min_hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %9, i32 0, i32 11, !dbg !1236
  store i64 %8, ptr %min_hd_table_bufsize_max, align 8, !dbg !1237, !tbaa !978
  %10 = load i64, ptr %settings_max_dynamic_table_size.addr, align 8, !dbg !1238, !tbaa !788
  %11 = load ptr, ptr %inflater.addr, align 8, !dbg !1239, !tbaa !612
  %ctx2 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %11, i32 0, i32 0, !dbg !1240
  %hd_table_bufsize_max3 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx2, i32 0, i32 3, !dbg !1241
  store i64 %10, ptr %hd_table_bufsize_max3, align 8, !dbg !1242, !tbaa !1226
  %12 = load ptr, ptr %inflater.addr, align 8, !dbg !1243, !tbaa !612
  %ctx4 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %12, i32 0, i32 0, !dbg !1244
  call void @hd_context_shrink_table_size(ptr noundef %ctx4, ptr noundef null), !dbg !1245
  br label %if.end, !dbg !1246

if.end:                                           ; preds = %if.then, %sw.epilog
  store i32 0, ptr %retval, align 4, !dbg !1247
  br label %return, !dbg !1247

return:                                           ; preds = %if.end, %sw.default
  %13 = load i32, ptr %retval, align 4, !dbg !1248
  ret i32 %13, !dbg !1248
}

; Function Attrs: nounwind uwtable
define hidden void @nghttp2_hd_table_get(ptr noalias sret(%struct.nghttp2_hd_nv) align 8 %agg.result, ptr noundef %context, i64 noundef %idx) #0 !dbg !1249 {
entry:
  %context.addr = alloca ptr, align 8
  %idx.addr = alloca i64, align 8
  %ent = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1253, metadata !DIExpression()), !dbg !1260
  store i64 %idx, ptr %idx.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !1254, metadata !DIExpression()), !dbg !1261
  %0 = load i64, ptr %idx.addr, align 8, !dbg !1262, !tbaa !788
  %1 = load ptr, ptr %context.addr, align 8, !dbg !1262, !tbaa !612
  %hd_table = getelementptr inbounds %struct.nghttp2_hd_context, ptr %1, i32 0, i32 0, !dbg !1262
  %len = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %hd_table, i32 0, i32 3, !dbg !1262
  %2 = load i64, ptr %len, align 8, !dbg !1262, !tbaa !1157
  %add = add i64 %2, 61, !dbg !1262
  %cmp = icmp ult i64 %0, %add, !dbg !1262
  br i1 %cmp, label %if.then, label %if.else, !dbg !1265

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !1265

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 1302, ptr noundef @__PRETTY_FUNCTION__.nghttp2_hd_table_get) #9, !dbg !1262
  unreachable, !dbg !1262

if.end:                                           ; preds = %if.then
  %3 = load i64, ptr %idx.addr, align 8, !dbg !1266, !tbaa !788
  %cmp1 = icmp uge i64 %3, 61, !dbg !1267
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !1268

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %context.addr, align 8, !dbg !1269, !tbaa !612
  %hd_table3 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %4, i32 0, i32 0, !dbg !1271
  %5 = load i64, ptr %idx.addr, align 8, !dbg !1272, !tbaa !788
  %sub = sub i64 %5, 61, !dbg !1273
  %call = call ptr @hd_ringbuf_get(ptr noundef %hd_table3, i64 noundef %sub), !dbg !1274
  %nv = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %call, i32 0, i32 0, !dbg !1275
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.result, ptr align 8 %nv, i64 24, i1 false), !dbg !1275, !tbaa.struct !622
  br label %return, !dbg !1276

if.else4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %ent) #8, !dbg !1277
  tail call void @llvm.dbg.declare(metadata ptr %ent, metadata !1255, metadata !DIExpression()), !dbg !1278
  %6 = load i64, ptr %idx.addr, align 8, !dbg !1279, !tbaa !788
  %arrayidx = getelementptr inbounds [61 x %struct.nghttp2_hd_static_entry], ptr @static_table, i64 0, i64 %6, !dbg !1280
  store ptr %arrayidx, ptr %ent, align 8, !dbg !1278, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %agg.result, metadata !1259, metadata !DIExpression()), !dbg !1281
  %name = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %agg.result, i32 0, i32 0, !dbg !1282
  %7 = load ptr, ptr %ent, align 8, !dbg !1283, !tbaa !612
  %name5 = getelementptr inbounds %struct.nghttp2_hd_static_entry, ptr %7, i32 0, i32 0, !dbg !1284
  store ptr %name5, ptr %name, align 8, !dbg !1282, !tbaa !628
  %value = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %agg.result, i32 0, i32 1, !dbg !1282
  %8 = load ptr, ptr %ent, align 8, !dbg !1285, !tbaa !612
  %value6 = getelementptr inbounds %struct.nghttp2_hd_static_entry, ptr %8, i32 0, i32 1, !dbg !1286
  store ptr %value6, ptr %value, align 8, !dbg !1282, !tbaa !652
  %token = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %agg.result, i32 0, i32 2, !dbg !1282
  %9 = load ptr, ptr %ent, align 8, !dbg !1287, !tbaa !612
  %token7 = getelementptr inbounds %struct.nghttp2_hd_static_entry, ptr %9, i32 0, i32 3, !dbg !1288
  %10 = load i32, ptr %token7, align 8, !dbg !1288, !tbaa !1289
  store i32 %10, ptr %token, align 8, !dbg !1282, !tbaa !1291
  %flags = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %agg.result, i32 0, i32 3, !dbg !1282
  store i8 0, ptr %flags, align 4, !dbg !1282, !tbaa !669
  call void @llvm.lifetime.end.p0(i64 8, ptr %ent) #8, !dbg !1292
  br label %return

return:                                           ; preds = %if.else4, %if.then2
  ret void, !dbg !1293
}

; Function Attrs: noreturn nounwind
declare !dbg !1294 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal ptr @hd_ringbuf_get(ptr noundef %ringbuf, i64 noundef %idx) #0 !dbg !1299 {
entry:
  %ringbuf.addr = alloca ptr, align 8
  %idx.addr = alloca i64, align 8
  store ptr %ringbuf, ptr %ringbuf.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %ringbuf.addr, metadata !1304, metadata !DIExpression()), !dbg !1306
  store i64 %idx, ptr %idx.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !1305, metadata !DIExpression()), !dbg !1307
  %0 = load i64, ptr %idx.addr, align 8, !dbg !1308, !tbaa !788
  %1 = load ptr, ptr %ringbuf.addr, align 8, !dbg !1308, !tbaa !612
  %len = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %1, i32 0, i32 3, !dbg !1308
  %2 = load i64, ptr %len, align 8, !dbg !1308, !tbaa !1311
  %cmp = icmp ult i64 %0, %2, !dbg !1308
  br i1 %cmp, label %if.then, label %if.else, !dbg !1312

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !1312

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 610, ptr noundef @__PRETTY_FUNCTION__.hd_ringbuf_get) #9, !dbg !1308
  unreachable, !dbg !1308

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %ringbuf.addr, align 8, !dbg !1313, !tbaa !612
  %buffer = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %3, i32 0, i32 0, !dbg !1314
  %4 = load ptr, ptr %buffer, align 8, !dbg !1314, !tbaa !1315
  %5 = load ptr, ptr %ringbuf.addr, align 8, !dbg !1316, !tbaa !612
  %first = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %5, i32 0, i32 2, !dbg !1317
  %6 = load i64, ptr %first, align 8, !dbg !1317, !tbaa !1318
  %7 = load i64, ptr %idx.addr, align 8, !dbg !1319, !tbaa !788
  %add = add i64 %6, %7, !dbg !1320
  %8 = load ptr, ptr %ringbuf.addr, align 8, !dbg !1321, !tbaa !612
  %mask = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %8, i32 0, i32 1, !dbg !1322
  %9 = load i64, ptr %mask, align 8, !dbg !1322, !tbaa !1323
  %and = and i64 %add, %9, !dbg !1324
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %and, !dbg !1313
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !1313, !tbaa !612
  ret ptr %10, !dbg !1325
}

; Function Attrs: nounwind uwtable
define hidden i32 @nghttp2_hd_deflate_hd_bufs(ptr noundef %deflater, ptr noundef %bufs, ptr noundef %nv, i64 noundef %nvlen) #0 !dbg !1326 {
entry:
  %retval = alloca i32, align 4
  %deflater.addr = alloca ptr, align 8
  %bufs.addr = alloca ptr, align 8
  %nv.addr = alloca ptr, align 8
  %nvlen.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %min_hd_table_bufsize_max = alloca i64, align 8
  store ptr %deflater, ptr %deflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %deflater.addr, metadata !1350, metadata !DIExpression()), !dbg !1360
  store ptr %bufs, ptr %bufs.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %bufs.addr, metadata !1351, metadata !DIExpression()), !dbg !1361
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv.addr, metadata !1352, metadata !DIExpression()), !dbg !1362
  store i64 %nvlen, ptr %nvlen.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %nvlen.addr, metadata !1353, metadata !DIExpression()), !dbg !1363
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8, !dbg !1364
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1354, metadata !DIExpression()), !dbg !1365
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !1366
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !1355, metadata !DIExpression()), !dbg !1367
  store i32 0, ptr %rv, align 4, !dbg !1367, !tbaa !623
  %0 = load ptr, ptr %deflater.addr, align 8, !dbg !1368, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %0, i32 0, i32 0, !dbg !1370
  %bad = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx, i32 0, i32 5, !dbg !1371
  %1 = load i8, ptr %bad, align 4, !dbg !1371, !tbaa !1372
  %tobool = icmp ne i8 %1, 0, !dbg !1368
  br i1 %tobool, label %if.then, label %if.end, !dbg !1373

if.then:                                          ; preds = %entry
  store i32 -523, ptr %retval, align 4, !dbg !1374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29, !dbg !1374

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %deflater.addr, align 8, !dbg !1376, !tbaa !612
  %notify_table_size_change = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %2, i32 0, i32 4, !dbg !1377
  %3 = load i8, ptr %notify_table_size_change, align 8, !dbg !1377, !tbaa !816
  %tobool1 = icmp ne i8 %3, 0, !dbg !1376
  br i1 %tobool1, label %if.then2, label %if.end18, !dbg !1378

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %min_hd_table_bufsize_max) #8, !dbg !1379
  tail call void @llvm.dbg.declare(metadata ptr %min_hd_table_bufsize_max, metadata !1356, metadata !DIExpression()), !dbg !1380
  %4 = load ptr, ptr %deflater.addr, align 8, !dbg !1381, !tbaa !612
  %min_hd_table_bufsize_max3 = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %4, i32 0, i32 3, !dbg !1382
  %5 = load i64, ptr %min_hd_table_bufsize_max3, align 8, !dbg !1382, !tbaa !840
  store i64 %5, ptr %min_hd_table_bufsize_max, align 8, !dbg !1383, !tbaa !788
  %6 = load ptr, ptr %deflater.addr, align 8, !dbg !1384, !tbaa !612
  %notify_table_size_change4 = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %6, i32 0, i32 4, !dbg !1385
  store i8 0, ptr %notify_table_size_change4, align 8, !dbg !1386, !tbaa !816
  %7 = load ptr, ptr %deflater.addr, align 8, !dbg !1387, !tbaa !612
  %min_hd_table_bufsize_max5 = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %7, i32 0, i32 3, !dbg !1388
  store i64 4294967295, ptr %min_hd_table_bufsize_max5, align 8, !dbg !1389, !tbaa !840
  %8 = load ptr, ptr %deflater.addr, align 8, !dbg !1390, !tbaa !612
  %ctx6 = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %8, i32 0, i32 0, !dbg !1392
  %hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx6, i32 0, i32 3, !dbg !1393
  %9 = load i64, ptr %hd_table_bufsize_max, align 8, !dbg !1393, !tbaa !826
  %10 = load i64, ptr %min_hd_table_bufsize_max, align 8, !dbg !1394, !tbaa !788
  %cmp = icmp ugt i64 %9, %10, !dbg !1395
  br i1 %cmp, label %if.then7, label %if.end11, !dbg !1396

if.then7:                                         ; preds = %if.then2
  %11 = load ptr, ptr %bufs.addr, align 8, !dbg !1397, !tbaa !612
  %12 = load i64, ptr %min_hd_table_bufsize_max, align 8, !dbg !1399, !tbaa !788
  %call = call i32 @emit_table_size(ptr noundef %11, i64 noundef %12), !dbg !1400
  store i32 %call, ptr %rv, align 4, !dbg !1401, !tbaa !623
  %13 = load i32, ptr %rv, align 4, !dbg !1402, !tbaa !623
  %cmp8 = icmp ne i32 %13, 0, !dbg !1404
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1405

if.then9:                                         ; preds = %if.then7
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1406

if.end10:                                         ; preds = %if.then7
  br label %if.end11, !dbg !1408

if.end11:                                         ; preds = %if.end10, %if.then2
  %14 = load ptr, ptr %bufs.addr, align 8, !dbg !1409, !tbaa !612
  %15 = load ptr, ptr %deflater.addr, align 8, !dbg !1410, !tbaa !612
  %ctx12 = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %15, i32 0, i32 0, !dbg !1411
  %hd_table_bufsize_max13 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx12, i32 0, i32 3, !dbg !1412
  %16 = load i64, ptr %hd_table_bufsize_max13, align 8, !dbg !1412, !tbaa !826
  %call14 = call i32 @emit_table_size(ptr noundef %14, i64 noundef %16), !dbg !1413
  store i32 %call14, ptr %rv, align 4, !dbg !1414, !tbaa !623
  %17 = load i32, ptr %rv, align 4, !dbg !1415, !tbaa !623
  %cmp15 = icmp ne i32 %17, 0, !dbg !1417
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1418

if.then16:                                        ; preds = %if.end11
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1419

if.end17:                                         ; preds = %if.end11
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1421
  br label %cleanup, !dbg !1421

cleanup:                                          ; preds = %if.then16, %if.then9, %if.end17
  call void @llvm.lifetime.end.p0(i64 8, ptr %min_hd_table_bufsize_max) #8, !dbg !1421
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup29 [
    i32 0, label %cleanup.cont
    i32 2, label %fail
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end18, !dbg !1422

if.end18:                                         ; preds = %cleanup.cont, %if.end
  store i64 0, ptr %i, align 8, !dbg !1423, !tbaa !788
  br label %for.cond, !dbg !1425

for.cond:                                         ; preds = %for.inc, %if.end18
  %18 = load i64, ptr %i, align 8, !dbg !1426, !tbaa !788
  %19 = load i64, ptr %nvlen.addr, align 8, !dbg !1428, !tbaa !788
  %cmp19 = icmp ult i64 %18, %19, !dbg !1429
  br i1 %cmp19, label %for.body, label %for.end, !dbg !1430

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %deflater.addr, align 8, !dbg !1431, !tbaa !612
  %21 = load ptr, ptr %bufs.addr, align 8, !dbg !1433, !tbaa !612
  %22 = load ptr, ptr %nv.addr, align 8, !dbg !1434, !tbaa !612
  %23 = load i64, ptr %i, align 8, !dbg !1435, !tbaa !788
  %arrayidx = getelementptr inbounds %struct.nghttp2_nv, ptr %22, i64 %23, !dbg !1434
  %call20 = call i32 @deflate_nv(ptr noundef %20, ptr noundef %21, ptr noundef %arrayidx), !dbg !1436
  store i32 %call20, ptr %rv, align 4, !dbg !1437, !tbaa !623
  %24 = load i32, ptr %rv, align 4, !dbg !1438, !tbaa !623
  %cmp21 = icmp ne i32 %24, 0, !dbg !1440
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1441

if.then22:                                        ; preds = %for.body
  br label %fail, !dbg !1442

if.end23:                                         ; preds = %for.body
  br label %for.inc, !dbg !1444

for.inc:                                          ; preds = %if.end23
  %25 = load i64, ptr %i, align 8, !dbg !1445, !tbaa !788
  %inc = add i64 %25, 1, !dbg !1445
  store i64 %inc, ptr %i, align 8, !dbg !1445, !tbaa !788
  br label %for.cond, !dbg !1446, !llvm.loop !1447

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !1449

do.body:                                          ; preds = %for.end
  br label %do.cond, !dbg !1450

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1450

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %retval, align 4, !dbg !1452
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29, !dbg !1452

fail:                                             ; preds = %cleanup, %if.then22
  tail call void @llvm.dbg.label(metadata !1359), !dbg !1453
  br label %do.body24, !dbg !1454

do.body24:                                        ; preds = %fail
  br label %do.cond25, !dbg !1455

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !1455

do.end26:                                         ; preds = %do.cond25
  %26 = load ptr, ptr %deflater.addr, align 8, !dbg !1457, !tbaa !612
  %ctx27 = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %26, i32 0, i32 0, !dbg !1458
  %bad28 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx27, i32 0, i32 5, !dbg !1459
  store i8 1, ptr %bad28, align 4, !dbg !1460, !tbaa !1372
  %27 = load i32, ptr %rv, align 4, !dbg !1461, !tbaa !623
  store i32 %27, ptr %retval, align 4, !dbg !1462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29, !dbg !1462

cleanup29:                                        ; preds = %do.end26, %do.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !1463
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8, !dbg !1463
  %28 = load i32, ptr %retval, align 4, !dbg !1463
  ret i32 %28, !dbg !1463
}

; Function Attrs: nounwind uwtable
define internal i32 @emit_table_size(ptr noundef %bufs, i64 noundef %table_size) #0 !dbg !1464 {
entry:
  %retval = alloca i32, align 4
  %bufs.addr = alloca ptr, align 8
  %table_size.addr = alloca i64, align 8
  %rv = alloca i32, align 4
  %bufp = alloca ptr, align 8
  %blocklen = alloca i64, align 8
  %sb = alloca [16 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bufs, ptr %bufs.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %bufs.addr, metadata !1468, metadata !DIExpression()), !dbg !1475
  store i64 %table_size, ptr %table_size.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %table_size.addr, metadata !1469, metadata !DIExpression()), !dbg !1476
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !1477
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !1470, metadata !DIExpression()), !dbg !1478
  call void @llvm.lifetime.start.p0(i64 8, ptr %bufp) #8, !dbg !1479
  tail call void @llvm.dbg.declare(metadata ptr %bufp, metadata !1471, metadata !DIExpression()), !dbg !1480
  call void @llvm.lifetime.start.p0(i64 8, ptr %blocklen) #8, !dbg !1481
  tail call void @llvm.dbg.declare(metadata ptr %blocklen, metadata !1472, metadata !DIExpression()), !dbg !1482
  call void @llvm.lifetime.start.p0(i64 16, ptr %sb) #8, !dbg !1483
  tail call void @llvm.dbg.declare(metadata ptr %sb, metadata !1473, metadata !DIExpression()), !dbg !1484
  br label %do.body, !dbg !1485

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1486

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1486

do.end:                                           ; preds = %do.cond
  %0 = load i64, ptr %table_size.addr, align 8, !dbg !1488, !tbaa !788
  %call = call i64 @count_encoded_length(i64 noundef %0, i64 noundef 5), !dbg !1489
  store i64 %call, ptr %blocklen, align 8, !dbg !1490, !tbaa !788
  %1 = load i64, ptr %blocklen, align 8, !dbg !1491, !tbaa !788
  %cmp = icmp ult i64 16, %1, !dbg !1493
  br i1 %cmp, label %if.then, label %if.end, !dbg !1494

if.then:                                          ; preds = %do.end
  store i32 -523, ptr %retval, align 4, !dbg !1495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1495

if.end:                                           ; preds = %do.end
  %arraydecay = getelementptr inbounds [16 x i8], ptr %sb, i64 0, i64 0, !dbg !1497
  store ptr %arraydecay, ptr %bufp, align 8, !dbg !1498, !tbaa !612
  %2 = load ptr, ptr %bufp, align 8, !dbg !1499, !tbaa !612
  store i8 32, ptr %2, align 1, !dbg !1500, !tbaa !625
  %3 = load ptr, ptr %bufp, align 8, !dbg !1501, !tbaa !612
  %4 = load i64, ptr %table_size.addr, align 8, !dbg !1502, !tbaa !788
  %call1 = call i64 @encode_length(ptr noundef %3, i64 noundef %4, i64 noundef 5), !dbg !1503
  %5 = load ptr, ptr %bufs.addr, align 8, !dbg !1504, !tbaa !612
  %arraydecay2 = getelementptr inbounds [16 x i8], ptr %sb, i64 0, i64 0, !dbg !1505
  %6 = load i64, ptr %blocklen, align 8, !dbg !1506, !tbaa !788
  %call3 = call i32 @nghttp2_bufs_add(ptr noundef %5, ptr noundef %arraydecay2, i64 noundef %6), !dbg !1507
  store i32 %call3, ptr %rv, align 4, !dbg !1508, !tbaa !623
  %7 = load i32, ptr %rv, align 4, !dbg !1509, !tbaa !623
  %cmp4 = icmp ne i32 %7, 0, !dbg !1511
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1512

if.then5:                                         ; preds = %if.end
  %8 = load i32, ptr %rv, align 4, !dbg !1513, !tbaa !623
  store i32 %8, ptr %retval, align 4, !dbg !1515
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1515

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1516

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %sb) #8, !dbg !1517
  call void @llvm.lifetime.end.p0(i64 8, ptr %blocklen) #8, !dbg !1517
  call void @llvm.lifetime.end.p0(i64 8, ptr %bufp) #8, !dbg !1517
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !1517
  %9 = load i32, ptr %retval, align 4, !dbg !1517
  ret i32 %9, !dbg !1517
}

; Function Attrs: nounwind uwtable
define internal i32 @deflate_nv(ptr noundef %deflater, ptr noundef %bufs, ptr noundef %nv) #0 !dbg !1518 {
entry:
  %retval = alloca i32, align 4
  %deflater.addr = alloca ptr, align 8
  %bufs.addr = alloca ptr, align 8
  %nv.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %res = alloca %struct.search_result, align 8
  %idx = alloca i64, align 8
  %indexing_mode = alloca i32, align 4
  %token = alloca i32, align 4
  %mem = alloca ptr, align 8
  %hash = alloca i32, align 4
  %tmp = alloca %struct.search_result, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %hd_nv = alloca %struct.nghttp2_hd_nv, align 8
  %tmp40 = alloca %struct.nghttp2_hd_nv, align 8
  store ptr %deflater, ptr %deflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %deflater.addr, metadata !1522, metadata !DIExpression()), !dbg !1540
  store ptr %bufs, ptr %bufs.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %bufs.addr, metadata !1523, metadata !DIExpression()), !dbg !1541
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv.addr, metadata !1524, metadata !DIExpression()), !dbg !1542
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !1543
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !1525, metadata !DIExpression()), !dbg !1544
  call void @llvm.lifetime.start.p0(i64 16, ptr %res) #8, !dbg !1545
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !1526, metadata !DIExpression()), !dbg !1546
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #8, !dbg !1547
  tail call void @llvm.dbg.declare(metadata ptr %idx, metadata !1532, metadata !DIExpression()), !dbg !1548
  call void @llvm.lifetime.start.p0(i64 4, ptr %indexing_mode) #8, !dbg !1549
  tail call void @llvm.dbg.declare(metadata ptr %indexing_mode, metadata !1533, metadata !DIExpression()), !dbg !1550
  call void @llvm.lifetime.start.p0(i64 4, ptr %token) #8, !dbg !1551
  tail call void @llvm.dbg.declare(metadata ptr %token, metadata !1534, metadata !DIExpression()), !dbg !1552
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #8, !dbg !1553
  tail call void @llvm.dbg.declare(metadata ptr %mem, metadata !1535, metadata !DIExpression()), !dbg !1554
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash) #8, !dbg !1555
  tail call void @llvm.dbg.declare(metadata ptr %hash, metadata !1536, metadata !DIExpression()), !dbg !1556
  store i32 0, ptr %hash, align 4, !dbg !1556, !tbaa !623
  br label %do.body, !dbg !1557

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1558

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1558

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %deflater.addr, align 8, !dbg !1560, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %0, i32 0, i32 0, !dbg !1561
  %mem1 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx, i32 0, i32 1, !dbg !1562
  %1 = load ptr, ptr %mem1, align 8, !dbg !1562, !tbaa !1563
  store ptr %1, ptr %mem, align 8, !dbg !1564, !tbaa !612
  %2 = load ptr, ptr %nv.addr, align 8, !dbg !1565, !tbaa !612
  %name = getelementptr inbounds %struct.nghttp2_nv, ptr %2, i32 0, i32 0, !dbg !1566
  %3 = load ptr, ptr %name, align 8, !dbg !1566, !tbaa !1567
  %4 = load ptr, ptr %nv.addr, align 8, !dbg !1568, !tbaa !612
  %namelen = getelementptr inbounds %struct.nghttp2_nv, ptr %4, i32 0, i32 2, !dbg !1569
  %5 = load i64, ptr %namelen, align 8, !dbg !1569, !tbaa !1570
  %call = call i32 @lookup_token(ptr noundef %3, i64 noundef %5), !dbg !1571
  store i32 %call, ptr %token, align 4, !dbg !1572, !tbaa !623
  %6 = load i32, ptr %token, align 4, !dbg !1573, !tbaa !623
  %cmp = icmp eq i32 %6, -1, !dbg !1575
  br i1 %cmp, label %if.then, label %if.else, !dbg !1576

if.then:                                          ; preds = %do.end
  %7 = load ptr, ptr %nv.addr, align 8, !dbg !1577, !tbaa !612
  %call2 = call i32 @name_hash(ptr noundef %7), !dbg !1579
  store i32 %call2, ptr %hash, align 4, !dbg !1580, !tbaa !623
  br label %if.end6, !dbg !1581

if.else:                                          ; preds = %do.end
  %8 = load i32, ptr %token, align 4, !dbg !1582, !tbaa !623
  %cmp3 = icmp sle i32 %8, 60, !dbg !1584
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !1585

if.then4:                                         ; preds = %if.else
  %9 = load i32, ptr %token, align 4, !dbg !1586, !tbaa !623
  %idxprom = sext i32 %9 to i64, !dbg !1588
  %arrayidx = getelementptr inbounds [61 x %struct.nghttp2_hd_static_entry], ptr @static_table, i64 0, i64 %idxprom, !dbg !1588
  %hash5 = getelementptr inbounds %struct.nghttp2_hd_static_entry, ptr %arrayidx, i32 0, i32 4, !dbg !1589
  %10 = load i32, ptr %hash5, align 4, !dbg !1589, !tbaa !1590
  store i32 %10, ptr %hash, align 4, !dbg !1591, !tbaa !623
  br label %if.end, !dbg !1592

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %11 = load i32, ptr %token, align 4, !dbg !1593, !tbaa !623
  %cmp7 = icmp eq i32 %11, 22, !dbg !1594
  br i1 %cmp7, label %cond.true, label %lor.lhs.false, !dbg !1595

lor.lhs.false:                                    ; preds = %if.end6
  %12 = load i32, ptr %token, align 4, !dbg !1596, !tbaa !623
  %cmp8 = icmp eq i32 %12, 31, !dbg !1597
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false10, !dbg !1598

land.lhs.true:                                    ; preds = %lor.lhs.false
  %13 = load ptr, ptr %nv.addr, align 8, !dbg !1599, !tbaa !612
  %valuelen = getelementptr inbounds %struct.nghttp2_nv, ptr %13, i32 0, i32 3, !dbg !1600
  %14 = load i64, ptr %valuelen, align 8, !dbg !1600, !tbaa !1601
  %cmp9 = icmp ult i64 %14, 20, !dbg !1602
  br i1 %cmp9, label %cond.true, label %lor.lhs.false10, !dbg !1603

lor.lhs.false10:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %15 = load ptr, ptr %nv.addr, align 8, !dbg !1604, !tbaa !612
  %flags = getelementptr inbounds %struct.nghttp2_nv, ptr %15, i32 0, i32 4, !dbg !1605
  %16 = load i8, ptr %flags, align 8, !dbg !1605, !tbaa !1606
  %conv = zext i8 %16 to i32, !dbg !1604
  %and = and i32 %conv, 1, !dbg !1607
  %tobool = icmp ne i32 %and, 0, !dbg !1607
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1593

cond.true:                                        ; preds = %lor.lhs.false10, %land.lhs.true, %if.end6
  br label %cond.end, !dbg !1593

cond.false:                                       ; preds = %lor.lhs.false10
  %17 = load ptr, ptr %deflater.addr, align 8, !dbg !1608, !tbaa !612
  %18 = load ptr, ptr %nv.addr, align 8, !dbg !1609, !tbaa !612
  %19 = load i32, ptr %token, align 4, !dbg !1610, !tbaa !623
  %call11 = call i32 @hd_deflate_decide_indexing(ptr noundef %17, ptr noundef %18, i32 noundef %19), !dbg !1611
  br label %cond.end, !dbg !1593

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %call11, %cond.false ], !dbg !1593
  store i32 %cond, ptr %indexing_mode, align 4, !dbg !1612, !tbaa !623
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #8, !dbg !1613
  %20 = load ptr, ptr %deflater.addr, align 8, !dbg !1614, !tbaa !612
  %ctx12 = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %20, i32 0, i32 0, !dbg !1615
  %21 = load ptr, ptr %nv.addr, align 8, !dbg !1616, !tbaa !612
  %22 = load i32, ptr %token, align 4, !dbg !1617, !tbaa !623
  %23 = load i32, ptr %indexing_mode, align 4, !dbg !1618, !tbaa !623
  %24 = load ptr, ptr %deflater.addr, align 8, !dbg !1619, !tbaa !612
  %map = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %24, i32 0, i32 1, !dbg !1620
  %25 = load i32, ptr %hash, align 4, !dbg !1621, !tbaa !623
  %call13 = call { i64, i32 } @search_hd_table(ptr noundef %ctx12, ptr noundef %21, i32 noundef %22, i32 noundef %23, ptr noundef %map, i32 noundef %25), !dbg !1613
  %26 = getelementptr inbounds { i64, i32 }, ptr %tmp, i32 0, i32 0, !dbg !1613
  %27 = extractvalue { i64, i32 } %call13, 0, !dbg !1613
  store i64 %27, ptr %26, align 8, !dbg !1613
  %28 = getelementptr inbounds { i64, i32 }, ptr %tmp, i32 0, i32 1, !dbg !1613
  %29 = extractvalue { i64, i32 } %call13, 1, !dbg !1613
  store i32 %29, ptr %28, align 8, !dbg !1613
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %res, ptr align 8 %tmp, i64 16, i1 false), !dbg !1613, !tbaa.struct !1622
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #8, !dbg !1613
  %index = getelementptr inbounds %struct.search_result, ptr %res, i32 0, i32 0, !dbg !1623
  %30 = load i64, ptr %index, align 8, !dbg !1623, !tbaa !1624
  store i64 %30, ptr %idx, align 8, !dbg !1626, !tbaa !788
  %name_value_match = getelementptr inbounds %struct.search_result, ptr %res, i32 0, i32 1, !dbg !1627
  %31 = load i32, ptr %name_value_match, align 8, !dbg !1627, !tbaa !1629
  %tobool14 = icmp ne i32 %31, 0, !dbg !1630
  br i1 %tobool14, label %if.then15, label %if.end24, !dbg !1631

if.then15:                                        ; preds = %cond.end
  br label %do.body16, !dbg !1632

do.body16:                                        ; preds = %if.then15
  br label %do.cond17, !dbg !1634

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !1634

do.end18:                                         ; preds = %do.cond17
  %32 = load ptr, ptr %bufs.addr, align 8, !dbg !1636, !tbaa !612
  %33 = load i64, ptr %idx, align 8, !dbg !1637, !tbaa !788
  %call19 = call i32 @emit_indexed_block(ptr noundef %32, i64 noundef %33), !dbg !1638
  store i32 %call19, ptr %rv, align 4, !dbg !1639, !tbaa !623
  %34 = load i32, ptr %rv, align 4, !dbg !1640, !tbaa !623
  %cmp20 = icmp ne i32 %34, 0, !dbg !1642
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !1643

if.then22:                                        ; preds = %do.end18
  %35 = load i32, ptr %rv, align 4, !dbg !1644, !tbaa !623
  store i32 %35, ptr %retval, align 4, !dbg !1646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup85, !dbg !1646

if.end23:                                         ; preds = %do.end18
  store i32 0, ptr %retval, align 4, !dbg !1647
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup85, !dbg !1647

if.end24:                                         ; preds = %cond.end
  %index25 = getelementptr inbounds %struct.search_result, ptr %res, i32 0, i32 0, !dbg !1648
  %36 = load i64, ptr %index25, align 8, !dbg !1648, !tbaa !1624
  %cmp26 = icmp ne i64 %36, -1, !dbg !1650
  br i1 %cmp26, label %if.then28, label %if.end32, !dbg !1651

if.then28:                                        ; preds = %if.end24
  br label %do.body29, !dbg !1652

do.body29:                                        ; preds = %if.then28
  br label %do.cond30, !dbg !1654

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !1654

do.end31:                                         ; preds = %do.cond30
  br label %if.end32, !dbg !1656

if.end32:                                         ; preds = %do.end31, %if.end24
  %37 = load i32, ptr %indexing_mode, align 4, !dbg !1657, !tbaa !623
  %cmp33 = icmp eq i32 %37, 0, !dbg !1658
  br i1 %cmp33, label %if.then35, label %if.end73, !dbg !1659

if.then35:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 24, ptr %hd_nv) #8, !dbg !1660
  tail call void @llvm.dbg.declare(metadata ptr %hd_nv, metadata !1537, metadata !DIExpression()), !dbg !1661
  %38 = load i64, ptr %idx, align 8, !dbg !1662, !tbaa !788
  %cmp36 = icmp ne i64 %38, -1, !dbg !1664
  br i1 %cmp36, label %if.then38, label %if.else44, !dbg !1665

if.then38:                                        ; preds = %if.then35
  %39 = load ptr, ptr %deflater.addr, align 8, !dbg !1666, !tbaa !612
  %ctx39 = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %39, i32 0, i32 0, !dbg !1668
  %40 = load i64, ptr %idx, align 8, !dbg !1669, !tbaa !788
  call void @nghttp2_hd_table_get(ptr sret(%struct.nghttp2_hd_nv) align 8 %tmp40, ptr noundef %ctx39, i64 noundef %40), !dbg !1670
  %name41 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %tmp40, i32 0, i32 0, !dbg !1671
  %41 = load ptr, ptr %name41, align 8, !dbg !1671, !tbaa !628
  %name42 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %hd_nv, i32 0, i32 0, !dbg !1672
  store ptr %41, ptr %name42, align 8, !dbg !1673, !tbaa !628
  %name43 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %hd_nv, i32 0, i32 0, !dbg !1674
  %42 = load ptr, ptr %name43, align 8, !dbg !1674, !tbaa !628
  call void @nghttp2_rcbuf_incref(ptr noundef %42), !dbg !1675
  br label %if.end53, !dbg !1676

if.else44:                                        ; preds = %if.then35
  %name45 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %hd_nv, i32 0, i32 0, !dbg !1677
  %43 = load ptr, ptr %nv.addr, align 8, !dbg !1679, !tbaa !612
  %name46 = getelementptr inbounds %struct.nghttp2_nv, ptr %43, i32 0, i32 0, !dbg !1680
  %44 = load ptr, ptr %name46, align 8, !dbg !1680, !tbaa !1567
  %45 = load ptr, ptr %nv.addr, align 8, !dbg !1681, !tbaa !612
  %namelen47 = getelementptr inbounds %struct.nghttp2_nv, ptr %45, i32 0, i32 2, !dbg !1682
  %46 = load i64, ptr %namelen47, align 8, !dbg !1682, !tbaa !1570
  %47 = load ptr, ptr %mem, align 8, !dbg !1683, !tbaa !612
  %call48 = call i32 @nghttp2_rcbuf_new2(ptr noundef %name45, ptr noundef %44, i64 noundef %46, ptr noundef %47), !dbg !1684
  store i32 %call48, ptr %rv, align 4, !dbg !1685, !tbaa !623
  %48 = load i32, ptr %rv, align 4, !dbg !1686, !tbaa !623
  %cmp49 = icmp ne i32 %48, 0, !dbg !1688
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !1689

if.then51:                                        ; preds = %if.else44
  %49 = load i32, ptr %rv, align 4, !dbg !1690, !tbaa !623
  store i32 %49, ptr %retval, align 4, !dbg !1692
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1692

if.end52:                                         ; preds = %if.else44
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then38
  %value = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %hd_nv, i32 0, i32 1, !dbg !1693
  %50 = load ptr, ptr %nv.addr, align 8, !dbg !1694, !tbaa !612
  %value54 = getelementptr inbounds %struct.nghttp2_nv, ptr %50, i32 0, i32 1, !dbg !1695
  %51 = load ptr, ptr %value54, align 8, !dbg !1695, !tbaa !1696
  %52 = load ptr, ptr %nv.addr, align 8, !dbg !1697, !tbaa !612
  %valuelen55 = getelementptr inbounds %struct.nghttp2_nv, ptr %52, i32 0, i32 3, !dbg !1698
  %53 = load i64, ptr %valuelen55, align 8, !dbg !1698, !tbaa !1601
  %54 = load ptr, ptr %mem, align 8, !dbg !1699, !tbaa !612
  %call56 = call i32 @nghttp2_rcbuf_new2(ptr noundef %value, ptr noundef %51, i64 noundef %53, ptr noundef %54), !dbg !1700
  store i32 %call56, ptr %rv, align 4, !dbg !1701, !tbaa !623
  %55 = load i32, ptr %rv, align 4, !dbg !1702, !tbaa !623
  %cmp57 = icmp ne i32 %55, 0, !dbg !1704
  br i1 %cmp57, label %if.then59, label %if.end61, !dbg !1705

if.then59:                                        ; preds = %if.end53
  %name60 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %hd_nv, i32 0, i32 0, !dbg !1706
  %56 = load ptr, ptr %name60, align 8, !dbg !1706, !tbaa !628
  call void @nghttp2_rcbuf_decref(ptr noundef %56), !dbg !1708
  %57 = load i32, ptr %rv, align 4, !dbg !1709, !tbaa !623
  store i32 %57, ptr %retval, align 4, !dbg !1710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1710

if.end61:                                         ; preds = %if.end53
  %58 = load i32, ptr %token, align 4, !dbg !1711, !tbaa !623
  %token62 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %hd_nv, i32 0, i32 2, !dbg !1712
  store i32 %58, ptr %token62, align 8, !dbg !1713, !tbaa !1291
  %flags63 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %hd_nv, i32 0, i32 3, !dbg !1714
  store i8 0, ptr %flags63, align 4, !dbg !1715, !tbaa !669
  %59 = load ptr, ptr %deflater.addr, align 8, !dbg !1716, !tbaa !612
  %ctx64 = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %59, i32 0, i32 0, !dbg !1717
  %60 = load ptr, ptr %deflater.addr, align 8, !dbg !1718, !tbaa !612
  %map65 = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %60, i32 0, i32 1, !dbg !1719
  %61 = load i32, ptr %hash, align 4, !dbg !1720, !tbaa !623
  %call66 = call i32 @add_hd_table_incremental(ptr noundef %ctx64, ptr noundef %hd_nv, ptr noundef %map65, i32 noundef %61), !dbg !1721
  store i32 %call66, ptr %rv, align 4, !dbg !1722, !tbaa !623
  %value67 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %hd_nv, i32 0, i32 1, !dbg !1723
  %62 = load ptr, ptr %value67, align 8, !dbg !1723, !tbaa !652
  call void @nghttp2_rcbuf_decref(ptr noundef %62), !dbg !1724
  %name68 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %hd_nv, i32 0, i32 0, !dbg !1725
  %63 = load ptr, ptr %name68, align 8, !dbg !1725, !tbaa !628
  call void @nghttp2_rcbuf_decref(ptr noundef %63), !dbg !1726
  %64 = load i32, ptr %rv, align 4, !dbg !1727, !tbaa !623
  %cmp69 = icmp ne i32 %64, 0, !dbg !1729
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !1730

if.then71:                                        ; preds = %if.end61
  store i32 -523, ptr %retval, align 4, !dbg !1731
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1731

if.end72:                                         ; preds = %if.end61
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1733
  br label %cleanup, !dbg !1733

cleanup:                                          ; preds = %if.end72, %if.then71, %if.then59, %if.then51
  call void @llvm.lifetime.end.p0(i64 24, ptr %hd_nv) #8, !dbg !1733
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup85 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end73, !dbg !1734

if.end73:                                         ; preds = %cleanup.cont, %if.end32
  %65 = load i64, ptr %idx, align 8, !dbg !1735, !tbaa !788
  %cmp74 = icmp eq i64 %65, -1, !dbg !1737
  br i1 %cmp74, label %if.then76, label %if.else78, !dbg !1738

if.then76:                                        ; preds = %if.end73
  %66 = load ptr, ptr %bufs.addr, align 8, !dbg !1739, !tbaa !612
  %67 = load ptr, ptr %nv.addr, align 8, !dbg !1741, !tbaa !612
  %68 = load i32, ptr %indexing_mode, align 4, !dbg !1742, !tbaa !623
  %call77 = call i32 @emit_newname_block(ptr noundef %66, ptr noundef %67, i32 noundef %68), !dbg !1743
  store i32 %call77, ptr %rv, align 4, !dbg !1744, !tbaa !623
  br label %if.end80, !dbg !1745

if.else78:                                        ; preds = %if.end73
  %69 = load ptr, ptr %bufs.addr, align 8, !dbg !1746, !tbaa !612
  %70 = load i64, ptr %idx, align 8, !dbg !1748, !tbaa !788
  %71 = load ptr, ptr %nv.addr, align 8, !dbg !1749, !tbaa !612
  %72 = load i32, ptr %indexing_mode, align 4, !dbg !1750, !tbaa !623
  %call79 = call i32 @emit_indname_block(ptr noundef %69, i64 noundef %70, ptr noundef %71, i32 noundef %72), !dbg !1751
  store i32 %call79, ptr %rv, align 4, !dbg !1752, !tbaa !623
  br label %if.end80

if.end80:                                         ; preds = %if.else78, %if.then76
  %73 = load i32, ptr %rv, align 4, !dbg !1753, !tbaa !623
  %cmp81 = icmp ne i32 %73, 0, !dbg !1755
  br i1 %cmp81, label %if.then83, label %if.end84, !dbg !1756

if.then83:                                        ; preds = %if.end80
  %74 = load i32, ptr %rv, align 4, !dbg !1757, !tbaa !623
  store i32 %74, ptr %retval, align 4, !dbg !1759
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup85, !dbg !1759

if.end84:                                         ; preds = %if.end80
  store i32 0, ptr %retval, align 4, !dbg !1760
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup85, !dbg !1760

cleanup85:                                        ; preds = %if.end84, %if.then83, %cleanup, %if.end23, %if.then22
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash) #8, !dbg !1761
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #8, !dbg !1761
  call void @llvm.lifetime.end.p0(i64 4, ptr %token) #8, !dbg !1761
  call void @llvm.lifetime.end.p0(i64 4, ptr %indexing_mode) #8, !dbg !1761
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #8, !dbg !1761
  call void @llvm.lifetime.end.p0(i64 16, ptr %res) #8, !dbg !1761
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !1761
  %75 = load i32, ptr %retval, align 4, !dbg !1761
  ret i32 %75, !dbg !1761
}

; Function Attrs: nounwind uwtable
define i64 @nghttp2_hd_deflate_hd(ptr noundef %deflater, ptr noundef %buf, i64 noundef %buflen, ptr noundef %nv, i64 noundef %nvlen) #0 !dbg !1762 {
entry:
  %retval = alloca i64, align 8
  %deflater.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  %nv.addr = alloca ptr, align 8
  %nvlen.addr = alloca i64, align 8
  %bufs = alloca %struct.nghttp2_bufs, align 8
  %rv = alloca i32, align 4
  %mem = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %deflater, ptr %deflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %deflater.addr, metadata !1766, metadata !DIExpression()), !dbg !1774
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !1767, metadata !DIExpression()), !dbg !1775
  store i64 %buflen, ptr %buflen.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !1768, metadata !DIExpression()), !dbg !1776
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv.addr, metadata !1769, metadata !DIExpression()), !dbg !1777
  store i64 %nvlen, ptr %nvlen.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %nvlen.addr, metadata !1770, metadata !DIExpression()), !dbg !1778
  call void @llvm.lifetime.start.p0(i64 64, ptr %bufs) #8, !dbg !1779
  tail call void @llvm.dbg.declare(metadata ptr %bufs, metadata !1771, metadata !DIExpression()), !dbg !1780
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !1781
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !1772, metadata !DIExpression()), !dbg !1782
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #8, !dbg !1783
  tail call void @llvm.dbg.declare(metadata ptr %mem, metadata !1773, metadata !DIExpression()), !dbg !1784
  %0 = load ptr, ptr %deflater.addr, align 8, !dbg !1785, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %0, i32 0, i32 0, !dbg !1786
  %mem1 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx, i32 0, i32 1, !dbg !1787
  %1 = load ptr, ptr %mem1, align 8, !dbg !1787, !tbaa !1563
  store ptr %1, ptr %mem, align 8, !dbg !1788, !tbaa !612
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !1789, !tbaa !612
  %3 = load i64, ptr %buflen.addr, align 8, !dbg !1790, !tbaa !788
  %4 = load ptr, ptr %mem, align 8, !dbg !1791, !tbaa !612
  %call = call i32 @nghttp2_bufs_wrap_init(ptr noundef %bufs, ptr noundef %2, i64 noundef %3, ptr noundef %4), !dbg !1792
  store i32 %call, ptr %rv, align 4, !dbg !1793, !tbaa !623
  %5 = load i32, ptr %rv, align 4, !dbg !1794, !tbaa !623
  %cmp = icmp ne i32 %5, 0, !dbg !1796
  br i1 %cmp, label %if.then, label %if.end, !dbg !1797

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %rv, align 4, !dbg !1798, !tbaa !623
  %conv = sext i32 %6 to i64, !dbg !1798
  store i64 %conv, ptr %retval, align 8, !dbg !1800
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1800

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %deflater.addr, align 8, !dbg !1801, !tbaa !612
  %8 = load ptr, ptr %nv.addr, align 8, !dbg !1802, !tbaa !612
  %9 = load i64, ptr %nvlen.addr, align 8, !dbg !1803, !tbaa !788
  %call2 = call i32 @nghttp2_hd_deflate_hd_bufs(ptr noundef %7, ptr noundef %bufs, ptr noundef %8, i64 noundef %9), !dbg !1804
  store i32 %call2, ptr %rv, align 4, !dbg !1805, !tbaa !623
  %call3 = call i64 @nghttp2_bufs_len(ptr noundef %bufs), !dbg !1806
  store i64 %call3, ptr %buflen.addr, align 8, !dbg !1807, !tbaa !788
  call void @nghttp2_bufs_wrap_free(ptr noundef %bufs), !dbg !1808
  %10 = load i32, ptr %rv, align 4, !dbg !1809, !tbaa !623
  %cmp4 = icmp eq i32 %10, -502, !dbg !1811
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !1812

if.then6:                                         ; preds = %if.end
  store i64 -525, ptr %retval, align 8, !dbg !1813
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1813

if.end7:                                          ; preds = %if.end
  %11 = load i32, ptr %rv, align 4, !dbg !1815, !tbaa !623
  %cmp8 = icmp ne i32 %11, 0, !dbg !1817
  br i1 %cmp8, label %if.then10, label %if.end12, !dbg !1818

if.then10:                                        ; preds = %if.end7
  %12 = load i32, ptr %rv, align 4, !dbg !1819, !tbaa !623
  %conv11 = sext i32 %12 to i64, !dbg !1819
  store i64 %conv11, ptr %retval, align 8, !dbg !1821
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1821

if.end12:                                         ; preds = %if.end7
  %13 = load i64, ptr %buflen.addr, align 8, !dbg !1822, !tbaa !788
  store i64 %13, ptr %retval, align 8, !dbg !1823
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1823

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #8, !dbg !1824
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !1824
  call void @llvm.lifetime.end.p0(i64 64, ptr %bufs) #8, !dbg !1824
  %14 = load i64, ptr %retval, align 8, !dbg !1824
  ret i64 %14, !dbg !1824
}

declare !dbg !1825 i32 @nghttp2_bufs_wrap_init(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare !dbg !1828 i64 @nghttp2_bufs_len(ptr noundef) #2

declare !dbg !1831 void @nghttp2_bufs_wrap_free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i64 @nghttp2_hd_deflate_hd_vec(ptr noundef %deflater, ptr noundef %vec, i64 noundef %veclen, ptr noundef %nv, i64 noundef %nvlen) #0 !dbg !1834 {
entry:
  %retval = alloca i64, align 8
  %deflater.addr = alloca ptr, align 8
  %vec.addr = alloca ptr, align 8
  %veclen.addr = alloca i64, align 8
  %nv.addr = alloca ptr, align 8
  %nvlen.addr = alloca i64, align 8
  %bufs = alloca %struct.nghttp2_bufs, align 8
  %rv = alloca i32, align 4
  %mem = alloca ptr, align 8
  %buflen = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %deflater, ptr %deflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %deflater.addr, metadata !1845, metadata !DIExpression()), !dbg !1854
  store ptr %vec, ptr %vec.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %vec.addr, metadata !1846, metadata !DIExpression()), !dbg !1855
  store i64 %veclen, ptr %veclen.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %veclen.addr, metadata !1847, metadata !DIExpression()), !dbg !1856
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv.addr, metadata !1848, metadata !DIExpression()), !dbg !1857
  store i64 %nvlen, ptr %nvlen.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %nvlen.addr, metadata !1849, metadata !DIExpression()), !dbg !1858
  call void @llvm.lifetime.start.p0(i64 64, ptr %bufs) #8, !dbg !1859
  tail call void @llvm.dbg.declare(metadata ptr %bufs, metadata !1850, metadata !DIExpression()), !dbg !1860
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !1861
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !1851, metadata !DIExpression()), !dbg !1862
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #8, !dbg !1863
  tail call void @llvm.dbg.declare(metadata ptr %mem, metadata !1852, metadata !DIExpression()), !dbg !1864
  call void @llvm.lifetime.start.p0(i64 8, ptr %buflen) #8, !dbg !1865
  tail call void @llvm.dbg.declare(metadata ptr %buflen, metadata !1853, metadata !DIExpression()), !dbg !1866
  %0 = load ptr, ptr %deflater.addr, align 8, !dbg !1867, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %0, i32 0, i32 0, !dbg !1868
  %mem1 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx, i32 0, i32 1, !dbg !1869
  %1 = load ptr, ptr %mem1, align 8, !dbg !1869, !tbaa !1563
  store ptr %1, ptr %mem, align 8, !dbg !1870, !tbaa !612
  %2 = load ptr, ptr %vec.addr, align 8, !dbg !1871, !tbaa !612
  %3 = load i64, ptr %veclen.addr, align 8, !dbg !1872, !tbaa !788
  %4 = load ptr, ptr %mem, align 8, !dbg !1873, !tbaa !612
  %call = call i32 @nghttp2_bufs_wrap_init2(ptr noundef %bufs, ptr noundef %2, i64 noundef %3, ptr noundef %4), !dbg !1874
  store i32 %call, ptr %rv, align 4, !dbg !1875, !tbaa !623
  %5 = load i32, ptr %rv, align 4, !dbg !1876, !tbaa !623
  %cmp = icmp ne i32 %5, 0, !dbg !1878
  br i1 %cmp, label %if.then, label %if.end, !dbg !1879

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %rv, align 4, !dbg !1880, !tbaa !623
  %conv = sext i32 %6 to i64, !dbg !1880
  store i64 %conv, ptr %retval, align 8, !dbg !1882
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1882

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %deflater.addr, align 8, !dbg !1883, !tbaa !612
  %8 = load ptr, ptr %nv.addr, align 8, !dbg !1884, !tbaa !612
  %9 = load i64, ptr %nvlen.addr, align 8, !dbg !1885, !tbaa !788
  %call2 = call i32 @nghttp2_hd_deflate_hd_bufs(ptr noundef %7, ptr noundef %bufs, ptr noundef %8, i64 noundef %9), !dbg !1886
  store i32 %call2, ptr %rv, align 4, !dbg !1887, !tbaa !623
  %call3 = call i64 @nghttp2_bufs_len(ptr noundef %bufs), !dbg !1888
  store i64 %call3, ptr %buflen, align 8, !dbg !1889, !tbaa !788
  call void @nghttp2_bufs_wrap_free(ptr noundef %bufs), !dbg !1890
  %10 = load i32, ptr %rv, align 4, !dbg !1891, !tbaa !623
  %cmp4 = icmp eq i32 %10, -502, !dbg !1893
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !1894

if.then6:                                         ; preds = %if.end
  store i64 -525, ptr %retval, align 8, !dbg !1895
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1895

if.end7:                                          ; preds = %if.end
  %11 = load i32, ptr %rv, align 4, !dbg !1897, !tbaa !623
  %cmp8 = icmp ne i32 %11, 0, !dbg !1899
  br i1 %cmp8, label %if.then10, label %if.end12, !dbg !1900

if.then10:                                        ; preds = %if.end7
  %12 = load i32, ptr %rv, align 4, !dbg !1901, !tbaa !623
  %conv11 = sext i32 %12 to i64, !dbg !1901
  store i64 %conv11, ptr %retval, align 8, !dbg !1903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1903

if.end12:                                         ; preds = %if.end7
  %13 = load i64, ptr %buflen, align 8, !dbg !1904, !tbaa !788
  store i64 %13, ptr %retval, align 8, !dbg !1905
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1905

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buflen) #8, !dbg !1906
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #8, !dbg !1906
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !1906
  call void @llvm.lifetime.end.p0(i64 64, ptr %bufs) #8, !dbg !1906
  %14 = load i64, ptr %retval, align 8, !dbg !1906
  ret i64 %14, !dbg !1906
}

declare !dbg !1907 i32 @nghttp2_bufs_wrap_init2(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i64 @nghttp2_hd_deflate_bound(ptr noundef %deflater, ptr noundef %nva, i64 noundef %nvlen) #0 !dbg !1910 {
entry:
  %deflater.addr = alloca ptr, align 8
  %nva.addr = alloca ptr, align 8
  %nvlen.addr = alloca i64, align 8
  %n = alloca i64, align 8
  %i = alloca i64, align 8
  store ptr %deflater, ptr %deflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %deflater.addr, metadata !1914, metadata !DIExpression()), !dbg !1919
  store ptr %nva, ptr %nva.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nva.addr, metadata !1915, metadata !DIExpression()), !dbg !1920
  store i64 %nvlen, ptr %nvlen.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %nvlen.addr, metadata !1916, metadata !DIExpression()), !dbg !1921
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8, !dbg !1922
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !1917, metadata !DIExpression()), !dbg !1923
  store i64 0, ptr %n, align 8, !dbg !1923, !tbaa !788
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8, !dbg !1924
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1918, metadata !DIExpression()), !dbg !1925
  %0 = load ptr, ptr %deflater.addr, align 8, !dbg !1926, !tbaa !612
  %1 = load i64, ptr %n, align 8, !dbg !1927, !tbaa !788
  %add = add i64 %1, 12, !dbg !1927
  store i64 %add, ptr %n, align 8, !dbg !1927, !tbaa !788
  %2 = load i64, ptr %nvlen.addr, align 8, !dbg !1928, !tbaa !788
  %mul = mul i64 12, %2, !dbg !1929
  %3 = load i64, ptr %n, align 8, !dbg !1930, !tbaa !788
  %add1 = add i64 %3, %mul, !dbg !1930
  store i64 %add1, ptr %n, align 8, !dbg !1930, !tbaa !788
  store i64 0, ptr %i, align 8, !dbg !1931, !tbaa !788
  br label %for.cond, !dbg !1933

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, ptr %i, align 8, !dbg !1934, !tbaa !788
  %5 = load i64, ptr %nvlen.addr, align 8, !dbg !1936, !tbaa !788
  %cmp = icmp ult i64 %4, %5, !dbg !1937
  br i1 %cmp, label %for.body, label %for.end, !dbg !1938

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %nva.addr, align 8, !dbg !1939, !tbaa !612
  %7 = load i64, ptr %i, align 8, !dbg !1941, !tbaa !788
  %arrayidx = getelementptr inbounds %struct.nghttp2_nv, ptr %6, i64 %7, !dbg !1939
  %namelen = getelementptr inbounds %struct.nghttp2_nv, ptr %arrayidx, i32 0, i32 2, !dbg !1942
  %8 = load i64, ptr %namelen, align 8, !dbg !1942, !tbaa !1570
  %9 = load ptr, ptr %nva.addr, align 8, !dbg !1943, !tbaa !612
  %10 = load i64, ptr %i, align 8, !dbg !1944, !tbaa !788
  %arrayidx2 = getelementptr inbounds %struct.nghttp2_nv, ptr %9, i64 %10, !dbg !1943
  %valuelen = getelementptr inbounds %struct.nghttp2_nv, ptr %arrayidx2, i32 0, i32 3, !dbg !1945
  %11 = load i64, ptr %valuelen, align 8, !dbg !1945, !tbaa !1601
  %add3 = add i64 %8, %11, !dbg !1946
  %12 = load i64, ptr %n, align 8, !dbg !1947, !tbaa !788
  %add4 = add i64 %12, %add3, !dbg !1947
  store i64 %add4, ptr %n, align 8, !dbg !1947, !tbaa !788
  br label %for.inc, !dbg !1948

for.inc:                                          ; preds = %for.body
  %13 = load i64, ptr %i, align 8, !dbg !1949, !tbaa !788
  %inc = add i64 %13, 1, !dbg !1949
  store i64 %inc, ptr %i, align 8, !dbg !1949, !tbaa !788
  br label %for.cond, !dbg !1950, !llvm.loop !1951

for.end:                                          ; preds = %for.cond
  %14 = load i64, ptr %n, align 8, !dbg !1953, !tbaa !788
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8, !dbg !1954
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8, !dbg !1954
  ret i64 %14, !dbg !1955
}

; Function Attrs: nounwind uwtable
define i32 @nghttp2_hd_deflate_new(ptr noundef %deflater_ptr, i64 noundef %deflate_hd_table_bufsize_max) #0 !dbg !1956 {
entry:
  %deflater_ptr.addr = alloca ptr, align 8
  %deflate_hd_table_bufsize_max.addr = alloca i64, align 8
  store ptr %deflater_ptr, ptr %deflater_ptr.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %deflater_ptr.addr, metadata !1961, metadata !DIExpression()), !dbg !1963
  store i64 %deflate_hd_table_bufsize_max, ptr %deflate_hd_table_bufsize_max.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %deflate_hd_table_bufsize_max.addr, metadata !1962, metadata !DIExpression()), !dbg !1964
  %0 = load ptr, ptr %deflater_ptr.addr, align 8, !dbg !1965, !tbaa !612
  %1 = load i64, ptr %deflate_hd_table_bufsize_max.addr, align 8, !dbg !1966, !tbaa !788
  %call = call i32 @nghttp2_hd_deflate_new2(ptr noundef %0, i64 noundef %1, ptr noundef null), !dbg !1967
  ret i32 %call, !dbg !1968
}

; Function Attrs: nounwind uwtable
define i32 @nghttp2_hd_deflate_new2(ptr noundef %deflater_ptr, i64 noundef %deflate_hd_table_bufsize_max, ptr noundef %mem) #0 !dbg !1969 {
entry:
  %retval = alloca i32, align 4
  %deflater_ptr.addr = alloca ptr, align 8
  %deflate_hd_table_bufsize_max.addr = alloca i64, align 8
  %mem.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %deflater = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %deflater_ptr, ptr %deflater_ptr.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %deflater_ptr.addr, metadata !1973, metadata !DIExpression()), !dbg !1978
  store i64 %deflate_hd_table_bufsize_max, ptr %deflate_hd_table_bufsize_max.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %deflate_hd_table_bufsize_max.addr, metadata !1974, metadata !DIExpression()), !dbg !1979
  store ptr %mem, ptr %mem.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !1975, metadata !DIExpression()), !dbg !1980
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !1981
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !1976, metadata !DIExpression()), !dbg !1982
  call void @llvm.lifetime.start.p0(i64 8, ptr %deflater) #8, !dbg !1983
  tail call void @llvm.dbg.declare(metadata ptr %deflater, metadata !1977, metadata !DIExpression()), !dbg !1984
  %0 = load ptr, ptr %mem.addr, align 8, !dbg !1985, !tbaa !612
  %cmp = icmp eq ptr %0, null, !dbg !1987
  br i1 %cmp, label %if.then, label %if.end, !dbg !1988

if.then:                                          ; preds = %entry
  %call = call ptr @nghttp2_mem_default(), !dbg !1989
  store ptr %call, ptr %mem.addr, align 8, !dbg !1991, !tbaa !612
  br label %if.end, !dbg !1992

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %mem.addr, align 8, !dbg !1993, !tbaa !612
  %call1 = call ptr @nghttp2_mem_malloc(ptr noundef %1, i64 noundef 1112), !dbg !1994
  store ptr %call1, ptr %deflater, align 8, !dbg !1995, !tbaa !612
  %2 = load ptr, ptr %deflater, align 8, !dbg !1996, !tbaa !612
  %cmp2 = icmp eq ptr %2, null, !dbg !1998
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1999

if.then3:                                         ; preds = %if.end
  store i32 -901, ptr %retval, align 4, !dbg !2000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2000

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %deflater, align 8, !dbg !2002, !tbaa !612
  %4 = load i64, ptr %deflate_hd_table_bufsize_max.addr, align 8, !dbg !2003, !tbaa !788
  %5 = load ptr, ptr %mem.addr, align 8, !dbg !2004, !tbaa !612
  %call5 = call i32 @nghttp2_hd_deflate_init2(ptr noundef %3, i64 noundef %4, ptr noundef %5), !dbg !2005
  store i32 %call5, ptr %rv, align 4, !dbg !2006, !tbaa !623
  %6 = load i32, ptr %rv, align 4, !dbg !2007, !tbaa !623
  %cmp6 = icmp ne i32 %6, 0, !dbg !2009
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !2010

if.then7:                                         ; preds = %if.end4
  %7 = load ptr, ptr %mem.addr, align 8, !dbg !2011, !tbaa !612
  %8 = load ptr, ptr %deflater, align 8, !dbg !2013, !tbaa !612
  call void @nghttp2_mem_free(ptr noundef %7, ptr noundef %8), !dbg !2014
  %9 = load i32, ptr %rv, align 4, !dbg !2015, !tbaa !623
  store i32 %9, ptr %retval, align 4, !dbg !2016
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2016

if.end8:                                          ; preds = %if.end4
  %10 = load ptr, ptr %deflater, align 8, !dbg !2017, !tbaa !612
  %11 = load ptr, ptr %deflater_ptr.addr, align 8, !dbg !2018, !tbaa !612
  store ptr %10, ptr %11, align 8, !dbg !2019, !tbaa !612
  store i32 0, ptr %retval, align 4, !dbg !2020
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2020

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %deflater) #8, !dbg !2021
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !2021
  %12 = load i32, ptr %retval, align 4, !dbg !2021
  ret i32 %12, !dbg !2021
}

declare !dbg !2022 ptr @nghttp2_mem_default() #2

declare !dbg !2026 ptr @nghttp2_mem_malloc(ptr noundef, i64 noundef) #2

declare !dbg !2029 void @nghttp2_mem_free(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @nghttp2_hd_deflate_del(ptr noundef %deflater) #0 !dbg !2032 {
entry:
  %deflater.addr = alloca ptr, align 8
  %mem = alloca ptr, align 8
  store ptr %deflater, ptr %deflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %deflater.addr, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #8, !dbg !2037
  tail call void @llvm.dbg.declare(metadata ptr %mem, metadata !2035, metadata !DIExpression()), !dbg !2038
  %0 = load ptr, ptr %deflater.addr, align 8, !dbg !2039, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %0, i32 0, i32 0, !dbg !2040
  %mem1 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx, i32 0, i32 1, !dbg !2041
  %1 = load ptr, ptr %mem1, align 8, !dbg !2041, !tbaa !1563
  store ptr %1, ptr %mem, align 8, !dbg !2042, !tbaa !612
  %2 = load ptr, ptr %deflater.addr, align 8, !dbg !2043, !tbaa !612
  call void @nghttp2_hd_deflate_free(ptr noundef %2), !dbg !2044
  %3 = load ptr, ptr %mem, align 8, !dbg !2045, !tbaa !612
  %4 = load ptr, ptr %deflater.addr, align 8, !dbg !2046, !tbaa !612
  call void @nghttp2_mem_free(ptr noundef %3, ptr noundef %4), !dbg !2047
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #8, !dbg !2048
  ret void, !dbg !2048
}

; Function Attrs: nounwind uwtable
define i64 @nghttp2_hd_inflate_hd(ptr noundef %inflater, ptr noundef %nv_out, ptr noundef %inflate_flags, ptr noundef %in, i64 noundef %inlen, i32 noundef %in_final) #0 !dbg !2049 {
entry:
  %inflater.addr = alloca ptr, align 8
  %nv_out.addr = alloca ptr, align 8
  %inflate_flags.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca i64, align 8
  %in_final.addr = alloca i32, align 4
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !2055, metadata !DIExpression()), !dbg !2061
  store ptr %nv_out, ptr %nv_out.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv_out.addr, metadata !2056, metadata !DIExpression()), !dbg !2062
  store ptr %inflate_flags, ptr %inflate_flags.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflate_flags.addr, metadata !2057, metadata !DIExpression()), !dbg !2063
  store ptr %in, ptr %in.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !2058, metadata !DIExpression()), !dbg !2064
  store i64 %inlen, ptr %inlen.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %inlen.addr, metadata !2059, metadata !DIExpression()), !dbg !2065
  store i32 %in_final, ptr %in_final.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %in_final.addr, metadata !2060, metadata !DIExpression()), !dbg !2066
  %0 = load ptr, ptr %inflater.addr, align 8, !dbg !2067, !tbaa !612
  %1 = load ptr, ptr %nv_out.addr, align 8, !dbg !2068, !tbaa !612
  %2 = load ptr, ptr %inflate_flags.addr, align 8, !dbg !2069, !tbaa !612
  %3 = load ptr, ptr %in.addr, align 8, !dbg !2070, !tbaa !612
  %4 = load i64, ptr %inlen.addr, align 8, !dbg !2071, !tbaa !788
  %5 = load i32, ptr %in_final.addr, align 4, !dbg !2072, !tbaa !623
  %call = call i64 @nghttp2_hd_inflate_hd2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5), !dbg !2073
  ret i64 %call, !dbg !2074
}

; Function Attrs: nounwind uwtable
define i64 @nghttp2_hd_inflate_hd2(ptr noundef %inflater, ptr noundef %nv_out, ptr noundef %inflate_flags, ptr noundef %in, i64 noundef %inlen, i32 noundef %in_final) #0 !dbg !2075 {
entry:
  %retval = alloca i64, align 8
  %inflater.addr = alloca ptr, align 8
  %nv_out.addr = alloca ptr, align 8
  %inflate_flags.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca i64, align 8
  %in_final.addr = alloca i32, align 4
  %rv = alloca i64, align 8
  %hd_nv = alloca %struct.nghttp2_hd_nv, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !2081, metadata !DIExpression()), !dbg !2089
  store ptr %nv_out, ptr %nv_out.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv_out.addr, metadata !2082, metadata !DIExpression()), !dbg !2090
  store ptr %inflate_flags, ptr %inflate_flags.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflate_flags.addr, metadata !2083, metadata !DIExpression()), !dbg !2091
  store ptr %in, ptr %in.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !2084, metadata !DIExpression()), !dbg !2092
  store i64 %inlen, ptr %inlen.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %inlen.addr, metadata !2085, metadata !DIExpression()), !dbg !2093
  store i32 %in_final, ptr %in_final.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %in_final.addr, metadata !2086, metadata !DIExpression()), !dbg !2094
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #8, !dbg !2095
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !2087, metadata !DIExpression()), !dbg !2096
  call void @llvm.lifetime.start.p0(i64 24, ptr %hd_nv) #8, !dbg !2097
  tail call void @llvm.dbg.declare(metadata ptr %hd_nv, metadata !2088, metadata !DIExpression()), !dbg !2098
  %0 = load ptr, ptr %inflater.addr, align 8, !dbg !2099, !tbaa !612
  %1 = load ptr, ptr %inflate_flags.addr, align 8, !dbg !2100, !tbaa !612
  %2 = load ptr, ptr %in.addr, align 8, !dbg !2101, !tbaa !612
  %3 = load i64, ptr %inlen.addr, align 8, !dbg !2102, !tbaa !788
  %4 = load i32, ptr %in_final.addr, align 4, !dbg !2103, !tbaa !623
  %call = call i64 @nghttp2_hd_inflate_hd_nv(ptr noundef %0, ptr noundef %hd_nv, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4), !dbg !2104
  store i64 %call, ptr %rv, align 8, !dbg !2105, !tbaa !788
  %5 = load i64, ptr %rv, align 8, !dbg !2106, !tbaa !788
  %cmp = icmp slt i64 %5, 0, !dbg !2108
  br i1 %cmp, label %if.then, label %if.end, !dbg !2109

if.then:                                          ; preds = %entry
  %6 = load i64, ptr %rv, align 8, !dbg !2110, !tbaa !788
  store i64 %6, ptr %retval, align 8, !dbg !2112
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2112

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %inflate_flags.addr, align 8, !dbg !2113, !tbaa !612
  %8 = load i32, ptr %7, align 4, !dbg !2115, !tbaa !623
  %and = and i32 %8, 2, !dbg !2116
  %tobool = icmp ne i32 %and, 0, !dbg !2116
  br i1 %tobool, label %if.then1, label %if.end9, !dbg !2117

if.then1:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %hd_nv, i32 0, i32 0, !dbg !2118
  %9 = load ptr, ptr %name, align 8, !dbg !2118, !tbaa !628
  %base = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %9, i32 0, i32 2, !dbg !2120
  %10 = load ptr, ptr %base, align 8, !dbg !2120, !tbaa !631
  %11 = load ptr, ptr %nv_out.addr, align 8, !dbg !2121, !tbaa !612
  %name2 = getelementptr inbounds %struct.nghttp2_nv, ptr %11, i32 0, i32 0, !dbg !2122
  store ptr %10, ptr %name2, align 8, !dbg !2123, !tbaa !1567
  %name3 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %hd_nv, i32 0, i32 0, !dbg !2124
  %12 = load ptr, ptr %name3, align 8, !dbg !2124, !tbaa !628
  %len = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %12, i32 0, i32 3, !dbg !2125
  %13 = load i64, ptr %len, align 8, !dbg !2125, !tbaa !644
  %14 = load ptr, ptr %nv_out.addr, align 8, !dbg !2126, !tbaa !612
  %namelen = getelementptr inbounds %struct.nghttp2_nv, ptr %14, i32 0, i32 2, !dbg !2127
  store i64 %13, ptr %namelen, align 8, !dbg !2128, !tbaa !1570
  %value = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %hd_nv, i32 0, i32 1, !dbg !2129
  %15 = load ptr, ptr %value, align 8, !dbg !2129, !tbaa !652
  %base4 = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %15, i32 0, i32 2, !dbg !2130
  %16 = load ptr, ptr %base4, align 8, !dbg !2130, !tbaa !631
  %17 = load ptr, ptr %nv_out.addr, align 8, !dbg !2131, !tbaa !612
  %value5 = getelementptr inbounds %struct.nghttp2_nv, ptr %17, i32 0, i32 1, !dbg !2132
  store ptr %16, ptr %value5, align 8, !dbg !2133, !tbaa !1696
  %value6 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %hd_nv, i32 0, i32 1, !dbg !2134
  %18 = load ptr, ptr %value6, align 8, !dbg !2134, !tbaa !652
  %len7 = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %18, i32 0, i32 3, !dbg !2135
  %19 = load i64, ptr %len7, align 8, !dbg !2135, !tbaa !644
  %20 = load ptr, ptr %nv_out.addr, align 8, !dbg !2136, !tbaa !612
  %valuelen = getelementptr inbounds %struct.nghttp2_nv, ptr %20, i32 0, i32 3, !dbg !2137
  store i64 %19, ptr %valuelen, align 8, !dbg !2138, !tbaa !1601
  %flags = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %hd_nv, i32 0, i32 3, !dbg !2139
  %21 = load i8, ptr %flags, align 4, !dbg !2139, !tbaa !669
  %22 = load ptr, ptr %nv_out.addr, align 8, !dbg !2140, !tbaa !612
  %flags8 = getelementptr inbounds %struct.nghttp2_nv, ptr %22, i32 0, i32 4, !dbg !2141
  store i8 %21, ptr %flags8, align 8, !dbg !2142, !tbaa !1606
  br label %if.end9, !dbg !2143

if.end9:                                          ; preds = %if.then1, %if.end
  %23 = load i64, ptr %rv, align 8, !dbg !2144, !tbaa !788
  store i64 %23, ptr %retval, align 8, !dbg !2145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2145

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %hd_nv) #8, !dbg !2146
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #8, !dbg !2146
  %24 = load i64, ptr %retval, align 8, !dbg !2146
  ret i64 %24, !dbg !2146
}

; Function Attrs: nounwind uwtable
define hidden i64 @nghttp2_hd_inflate_hd_nv(ptr noundef %inflater, ptr noundef %nv_out, ptr noundef %inflate_flags, ptr noundef %in, i64 noundef %inlen, i32 noundef %in_final) #0 !dbg !2147 {
entry:
  %retval = alloca i64, align 8
  %inflater.addr = alloca ptr, align 8
  %nv_out.addr = alloca ptr, align 8
  %inflate_flags.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %inlen.addr = alloca i64, align 8
  %in_final.addr = alloca i32, align 4
  %rv = alloca i64, align 8
  %first = alloca ptr, align 8
  %last = alloca ptr, align 8
  %rfin = alloca i32, align 4
  %busy = alloca i32, align 4
  %mem = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %prefixlen = alloca i64, align 8
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !2151, metadata !DIExpression()), !dbg !2171
  store ptr %nv_out, ptr %nv_out.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv_out.addr, metadata !2152, metadata !DIExpression()), !dbg !2172
  store ptr %inflate_flags, ptr %inflate_flags.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflate_flags.addr, metadata !2153, metadata !DIExpression()), !dbg !2173
  store ptr %in, ptr %in.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !2154, metadata !DIExpression()), !dbg !2174
  store i64 %inlen, ptr %inlen.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %inlen.addr, metadata !2155, metadata !DIExpression()), !dbg !2175
  store i32 %in_final, ptr %in_final.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %in_final.addr, metadata !2156, metadata !DIExpression()), !dbg !2176
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #8, !dbg !2177
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !2157, metadata !DIExpression()), !dbg !2178
  store i64 0, ptr %rv, align 8, !dbg !2178, !tbaa !788
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #8, !dbg !2179
  tail call void @llvm.dbg.declare(metadata ptr %first, metadata !2158, metadata !DIExpression()), !dbg !2180
  %0 = load ptr, ptr %in.addr, align 8, !dbg !2181, !tbaa !612
  store ptr %0, ptr %first, align 8, !dbg !2180, !tbaa !612
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #8, !dbg !2182
  tail call void @llvm.dbg.declare(metadata ptr %last, metadata !2159, metadata !DIExpression()), !dbg !2183
  %1 = load ptr, ptr %in.addr, align 8, !dbg !2184, !tbaa !612
  %2 = load i64, ptr %inlen.addr, align 8, !dbg !2185, !tbaa !788
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %2, !dbg !2186
  store ptr %add.ptr, ptr %last, align 8, !dbg !2183, !tbaa !612
  call void @llvm.lifetime.start.p0(i64 4, ptr %rfin) #8, !dbg !2187
  tail call void @llvm.dbg.declare(metadata ptr %rfin, metadata !2160, metadata !DIExpression()), !dbg !2188
  store i32 0, ptr %rfin, align 4, !dbg !2188, !tbaa !623
  call void @llvm.lifetime.start.p0(i64 4, ptr %busy) #8, !dbg !2189
  tail call void @llvm.dbg.declare(metadata ptr %busy, metadata !2161, metadata !DIExpression()), !dbg !2190
  store i32 0, ptr %busy, align 4, !dbg !2190, !tbaa !623
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #8, !dbg !2191
  tail call void @llvm.dbg.declare(metadata ptr %mem, metadata !2162, metadata !DIExpression()), !dbg !2192
  %3 = load ptr, ptr %inflater.addr, align 8, !dbg !2193, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %3, i32 0, i32 0, !dbg !2194
  %mem1 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx, i32 0, i32 1, !dbg !2195
  %4 = load ptr, ptr %mem1, align 8, !dbg !2195, !tbaa !2196
  store ptr %4, ptr %mem, align 8, !dbg !2197, !tbaa !612
  %5 = load ptr, ptr %inflater.addr, align 8, !dbg !2198, !tbaa !612
  %ctx2 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %5, i32 0, i32 0, !dbg !2200
  %bad = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx2, i32 0, i32 5, !dbg !2201
  %6 = load i8, ptr %bad, align 4, !dbg !2201, !tbaa !2202
  %tobool = icmp ne i8 %6, 0, !dbg !2198
  br i1 %tobool, label %if.then, label %if.end, !dbg !2203

if.then:                                          ; preds = %entry
  store i64 -523, ptr %retval, align 8, !dbg !2204
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup435, !dbg !2204

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !2206

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !2207

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2207

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %inflater.addr, align 8, !dbg !2209, !tbaa !612
  call void @hd_inflate_keep_free(ptr noundef %7), !dbg !2210
  %8 = load ptr, ptr %inflate_flags.addr, align 8, !dbg !2211, !tbaa !612
  store i32 0, ptr %8, align 4, !dbg !2212, !tbaa !623
  br label %for.cond, !dbg !2213

for.cond:                                         ; preds = %sw.epilog, %do.end
  %9 = load ptr, ptr %in.addr, align 8, !dbg !2214, !tbaa !612
  %10 = load ptr, ptr %last, align 8, !dbg !2215, !tbaa !612
  %cmp = icmp ne ptr %9, %10, !dbg !2216
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !2217

lor.rhs:                                          ; preds = %for.cond
  %11 = load i32, ptr %busy, align 4, !dbg !2218, !tbaa !623
  %tobool3 = icmp ne i32 %11, 0, !dbg !2217
  br label %lor.end, !dbg !2217

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %12 = phi i1 [ true, %for.cond ], [ %tobool3, %lor.rhs ]
  br i1 %12, label %for.body, label %for.end, !dbg !2219

for.body:                                         ; preds = %lor.end
  store i32 0, ptr %busy, align 4, !dbg !2220, !tbaa !623
  %13 = load ptr, ptr %inflater.addr, align 8, !dbg !2221, !tbaa !612
  %state = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %13, i32 0, i32 14, !dbg !2222
  %14 = load i32, ptr %state, align 4, !dbg !2222, !tbaa !994
  switch i32 %14, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb11
    i32 3, label %sw.bb82
    i32 4, label %sw.bb103
    i32 5, label %sw.bb148
    i32 6, label %sw.bb155
    i32 7, label %sw.bb188
    i32 8, label %sw.bb217
    i32 9, label %sw.bb247
    i32 10, label %sw.bb254
    i32 11, label %sw.bb293
    i32 12, label %sw.bb341
  ], !dbg !2223

sw.bb:                                            ; preds = %for.body
  %15 = load ptr, ptr %in.addr, align 8, !dbg !2224, !tbaa !612
  %16 = load i8, ptr %15, align 1, !dbg !2226, !tbaa !625
  %conv = zext i8 %16 to i32, !dbg !2226
  %and = and i32 %conv, 224, !dbg !2227
  %cmp4 = icmp ne i32 %and, 32, !dbg !2228
  br i1 %cmp4, label %if.then6, label %if.end10, !dbg !2229

if.then6:                                         ; preds = %sw.bb
  br label %do.body7, !dbg !2230

do.body7:                                         ; preds = %if.then6
  br label %do.cond8, !dbg !2232

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !2232

do.end9:                                          ; preds = %do.cond8
  store i64 -523, ptr %rv, align 8, !dbg !2234, !tbaa !788
  br label %fail, !dbg !2235

if.end10:                                         ; preds = %sw.bb
  br label %sw.bb11, !dbg !2236

sw.bb11:                                          ; preds = %for.body, %for.body, %if.end10
  %17 = load ptr, ptr %in.addr, align 8, !dbg !2237, !tbaa !612
  %18 = load i8, ptr %17, align 1, !dbg !2239, !tbaa !625
  %conv12 = zext i8 %18 to i32, !dbg !2239
  %and13 = and i32 %conv12, 224, !dbg !2240
  %cmp14 = icmp eq i32 %and13, 32, !dbg !2241
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !2242

if.then16:                                        ; preds = %sw.bb11
  br label %do.body17, !dbg !2243

do.body17:                                        ; preds = %if.then16
  br label %do.cond18, !dbg !2245

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2245

do.end19:                                         ; preds = %do.cond18
  %19 = load ptr, ptr %inflater.addr, align 8, !dbg !2247, !tbaa !612
  %state20 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %19, i32 0, i32 14, !dbg !2249
  %20 = load i32, ptr %state20, align 4, !dbg !2249, !tbaa !994
  %cmp21 = icmp eq i32 %20, 2, !dbg !2250
  br i1 %cmp21, label %if.then23, label %if.end27, !dbg !2251

if.then23:                                        ; preds = %do.end19
  br label %do.body24, !dbg !2252

do.body24:                                        ; preds = %if.then23
  br label %do.cond25, !dbg !2254

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !2254

do.end26:                                         ; preds = %do.cond25
  store i64 -523, ptr %rv, align 8, !dbg !2256, !tbaa !788
  br label %fail, !dbg !2257

if.end27:                                         ; preds = %do.end19
  %21 = load ptr, ptr %inflater.addr, align 8, !dbg !2258, !tbaa !612
  %opcode = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %21, i32 0, i32 13, !dbg !2259
  store i32 1, ptr %opcode, align 8, !dbg !2260, !tbaa !990
  %22 = load ptr, ptr %inflater.addr, align 8, !dbg !2261, !tbaa !612
  %state28 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %22, i32 0, i32 14, !dbg !2262
  store i32 3, ptr %state28, align 4, !dbg !2263, !tbaa !994
  br label %if.end81, !dbg !2264

if.else:                                          ; preds = %sw.bb11
  %23 = load ptr, ptr %in.addr, align 8, !dbg !2265, !tbaa !612
  %24 = load i8, ptr %23, align 1, !dbg !2267, !tbaa !625
  %conv29 = zext i8 %24 to i32, !dbg !2267
  %and30 = and i32 %conv29, 128, !dbg !2268
  %tobool31 = icmp ne i32 %and30, 0, !dbg !2268
  br i1 %tobool31, label %if.then32, label %if.else38, !dbg !2269

if.then32:                                        ; preds = %if.else
  br label %do.body33, !dbg !2270

do.body33:                                        ; preds = %if.then32
  br label %do.cond34, !dbg !2272

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !2272

do.end35:                                         ; preds = %do.cond34
  %25 = load ptr, ptr %inflater.addr, align 8, !dbg !2274, !tbaa !612
  %opcode36 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %25, i32 0, i32 13, !dbg !2275
  store i32 1, ptr %opcode36, align 8, !dbg !2276, !tbaa !990
  %26 = load ptr, ptr %inflater.addr, align 8, !dbg !2277, !tbaa !612
  %state37 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %26, i32 0, i32 14, !dbg !2278
  store i32 4, ptr %state37, align 4, !dbg !2279, !tbaa !994
  br label %if.end80, !dbg !2280

if.else38:                                        ; preds = %if.else
  %27 = load ptr, ptr %in.addr, align 8, !dbg !2281, !tbaa !612
  %28 = load i8, ptr %27, align 1, !dbg !2284, !tbaa !625
  %conv39 = zext i8 %28 to i32, !dbg !2284
  %cmp40 = icmp eq i32 %conv39, 64, !dbg !2285
  br i1 %cmp40, label %if.then49, label %lor.lhs.false, !dbg !2286

lor.lhs.false:                                    ; preds = %if.else38
  %29 = load ptr, ptr %in.addr, align 8, !dbg !2287, !tbaa !612
  %30 = load i8, ptr %29, align 1, !dbg !2288, !tbaa !625
  %conv42 = zext i8 %30 to i32, !dbg !2288
  %cmp43 = icmp eq i32 %conv42, 0, !dbg !2289
  br i1 %cmp43, label %if.then49, label %lor.lhs.false45, !dbg !2290

lor.lhs.false45:                                  ; preds = %lor.lhs.false
  %31 = load ptr, ptr %in.addr, align 8, !dbg !2291, !tbaa !612
  %32 = load i8, ptr %31, align 1, !dbg !2292, !tbaa !625
  %conv46 = zext i8 %32 to i32, !dbg !2292
  %cmp47 = icmp eq i32 %conv46, 16, !dbg !2293
  br i1 %cmp47, label %if.then49, label %if.else55, !dbg !2294

if.then49:                                        ; preds = %lor.lhs.false45, %lor.lhs.false, %if.else38
  br label %do.body50, !dbg !2295

do.body50:                                        ; preds = %if.then49
  br label %do.cond51, !dbg !2297

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !2297

do.end52:                                         ; preds = %do.cond51
  %33 = load ptr, ptr %inflater.addr, align 8, !dbg !2299, !tbaa !612
  %opcode53 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %33, i32 0, i32 13, !dbg !2300
  store i32 2, ptr %opcode53, align 8, !dbg !2301, !tbaa !990
  %34 = load ptr, ptr %inflater.addr, align 8, !dbg !2302, !tbaa !612
  %state54 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %34, i32 0, i32 14, !dbg !2303
  store i32 5, ptr %state54, align 4, !dbg !2304, !tbaa !994
  br label %if.end61, !dbg !2305

if.else55:                                        ; preds = %lor.lhs.false45
  br label %do.body56, !dbg !2306

do.body56:                                        ; preds = %if.else55
  br label %do.cond57, !dbg !2308

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !2308

do.end58:                                         ; preds = %do.cond57
  %35 = load ptr, ptr %inflater.addr, align 8, !dbg !2310, !tbaa !612
  %opcode59 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %35, i32 0, i32 13, !dbg !2311
  store i32 3, ptr %opcode59, align 8, !dbg !2312, !tbaa !990
  %36 = load ptr, ptr %inflater.addr, align 8, !dbg !2313, !tbaa !612
  %state60 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %36, i32 0, i32 14, !dbg !2314
  store i32 4, ptr %state60, align 4, !dbg !2315, !tbaa !994
  br label %if.end61

if.end61:                                         ; preds = %do.end58, %do.end52
  %37 = load ptr, ptr %in.addr, align 8, !dbg !2316, !tbaa !612
  %38 = load i8, ptr %37, align 1, !dbg !2317, !tbaa !625
  %conv62 = zext i8 %38 to i32, !dbg !2317
  %and63 = and i32 %conv62, 64, !dbg !2318
  %cmp64 = icmp ne i32 %and63, 0, !dbg !2319
  %conv65 = zext i1 %cmp64 to i32, !dbg !2319
  %conv66 = trunc i32 %conv65 to i8, !dbg !2320
  %39 = load ptr, ptr %inflater.addr, align 8, !dbg !2321, !tbaa !612
  %index_required = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %39, i32 0, i32 16, !dbg !2322
  store i8 %conv66, ptr %index_required, align 1, !dbg !2323, !tbaa !1028
  %40 = load ptr, ptr %in.addr, align 8, !dbg !2324, !tbaa !612
  %41 = load i8, ptr %40, align 1, !dbg !2325, !tbaa !625
  %conv67 = zext i8 %41 to i32, !dbg !2325
  %and68 = and i32 %conv67, 240, !dbg !2326
  %cmp69 = icmp eq i32 %and68, 16, !dbg !2327
  %conv70 = zext i1 %cmp69 to i32, !dbg !2327
  %conv71 = trunc i32 %conv70 to i8, !dbg !2328
  %42 = load ptr, ptr %inflater.addr, align 8, !dbg !2329, !tbaa !612
  %no_index = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %42, i32 0, i32 17, !dbg !2330
  store i8 %conv71, ptr %no_index, align 2, !dbg !2331, !tbaa !1032
  br label %do.body72, !dbg !2332

do.body72:                                        ; preds = %if.end61
  br label %do.cond73, !dbg !2333

do.cond73:                                        ; preds = %do.body72
  br label %do.end74, !dbg !2333

do.end74:                                         ; preds = %do.cond73
  %43 = load ptr, ptr %inflater.addr, align 8, !dbg !2335, !tbaa !612
  %opcode75 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %43, i32 0, i32 13, !dbg !2337
  %44 = load i32, ptr %opcode75, align 8, !dbg !2337, !tbaa !990
  %cmp76 = icmp eq i32 %44, 2, !dbg !2338
  br i1 %cmp76, label %if.then78, label %if.end79, !dbg !2339

if.then78:                                        ; preds = %do.end74
  %45 = load ptr, ptr %in.addr, align 8, !dbg !2340, !tbaa !612
  %incdec.ptr = getelementptr inbounds i8, ptr %45, i32 1, !dbg !2340
  store ptr %incdec.ptr, ptr %in.addr, align 8, !dbg !2340, !tbaa !612
  br label %if.end79, !dbg !2342

if.end79:                                         ; preds = %if.then78, %do.end74
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %do.end35
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.end27
  %46 = load ptr, ptr %inflater.addr, align 8, !dbg !2343, !tbaa !612
  %left = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %46, i32 0, i32 8, !dbg !2344
  store i64 0, ptr %left, align 8, !dbg !2345, !tbaa !1020
  %47 = load ptr, ptr %inflater.addr, align 8, !dbg !2346, !tbaa !612
  %shift = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %47, i32 0, i32 12, !dbg !2347
  store i64 0, ptr %shift, align 8, !dbg !2348, !tbaa !1024
  br label %sw.epilog, !dbg !2349

sw.bb82:                                          ; preds = %for.body
  store i32 0, ptr %rfin, align 4, !dbg !2350, !tbaa !623
  %48 = load ptr, ptr %inflater.addr, align 8, !dbg !2351, !tbaa !612
  %49 = load ptr, ptr %in.addr, align 8, !dbg !2352, !tbaa !612
  %50 = load ptr, ptr %last, align 8, !dbg !2353, !tbaa !612
  %51 = load ptr, ptr %inflater.addr, align 8, !dbg !2354, !tbaa !612
  %min_hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %51, i32 0, i32 11, !dbg !2354
  %52 = load i64, ptr %min_hd_table_bufsize_max, align 8, !dbg !2354, !tbaa !978
  %53 = load ptr, ptr %inflater.addr, align 8, !dbg !2354, !tbaa !612
  %settings_hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %53, i32 0, i32 10, !dbg !2354
  %54 = load i64, ptr %settings_hd_table_bufsize_max, align 8, !dbg !2354, !tbaa !970
  %cmp83 = icmp ult i64 %52, %54, !dbg !2354
  br i1 %cmp83, label %cond.true, label %cond.false, !dbg !2354

cond.true:                                        ; preds = %sw.bb82
  %55 = load ptr, ptr %inflater.addr, align 8, !dbg !2354, !tbaa !612
  %min_hd_table_bufsize_max85 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %55, i32 0, i32 11, !dbg !2354
  %56 = load i64, ptr %min_hd_table_bufsize_max85, align 8, !dbg !2354, !tbaa !978
  br label %cond.end, !dbg !2354

cond.false:                                       ; preds = %sw.bb82
  %57 = load ptr, ptr %inflater.addr, align 8, !dbg !2354, !tbaa !612
  %settings_hd_table_bufsize_max86 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %57, i32 0, i32 10, !dbg !2354
  %58 = load i64, ptr %settings_hd_table_bufsize_max86, align 8, !dbg !2354, !tbaa !970
  br label %cond.end, !dbg !2354

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %56, %cond.true ], [ %58, %cond.false ], !dbg !2354
  %call = call i64 @hd_inflate_read_len(ptr noundef %48, ptr noundef %rfin, ptr noundef %49, ptr noundef %50, i64 noundef 5, i64 noundef %cond), !dbg !2355
  store i64 %call, ptr %rv, align 8, !dbg !2356, !tbaa !788
  %59 = load i64, ptr %rv, align 8, !dbg !2357, !tbaa !788
  %cmp87 = icmp slt i64 %59, 0, !dbg !2359
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !2360

if.then89:                                        ; preds = %cond.end
  br label %fail, !dbg !2361

if.end90:                                         ; preds = %cond.end
  %60 = load i64, ptr %rv, align 8, !dbg !2363, !tbaa !788
  %61 = load ptr, ptr %in.addr, align 8, !dbg !2364, !tbaa !612
  %add.ptr91 = getelementptr inbounds i8, ptr %61, i64 %60, !dbg !2364
  store ptr %add.ptr91, ptr %in.addr, align 8, !dbg !2364, !tbaa !612
  %62 = load i32, ptr %rfin, align 4, !dbg !2365, !tbaa !623
  %tobool92 = icmp ne i32 %62, 0, !dbg !2365
  br i1 %tobool92, label %if.end94, label %if.then93, !dbg !2367

if.then93:                                        ; preds = %if.end90
  br label %almost_ok, !dbg !2368

if.end94:                                         ; preds = %if.end90
  br label %do.body95, !dbg !2370

do.body95:                                        ; preds = %if.end94
  br label %do.cond96, !dbg !2371

do.cond96:                                        ; preds = %do.body95
  br label %do.end97, !dbg !2371

do.end97:                                         ; preds = %do.cond96
  %63 = load ptr, ptr %inflater.addr, align 8, !dbg !2373, !tbaa !612
  %min_hd_table_bufsize_max98 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %63, i32 0, i32 11, !dbg !2374
  store i64 4294967295, ptr %min_hd_table_bufsize_max98, align 8, !dbg !2375, !tbaa !978
  %64 = load ptr, ptr %inflater.addr, align 8, !dbg !2376, !tbaa !612
  %left99 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %64, i32 0, i32 8, !dbg !2377
  %65 = load i64, ptr %left99, align 8, !dbg !2377, !tbaa !1020
  %66 = load ptr, ptr %inflater.addr, align 8, !dbg !2378, !tbaa !612
  %ctx100 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %66, i32 0, i32 0, !dbg !2379
  %hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx100, i32 0, i32 3, !dbg !2380
  store i64 %65, ptr %hd_table_bufsize_max, align 8, !dbg !2381, !tbaa !1226
  %67 = load ptr, ptr %inflater.addr, align 8, !dbg !2382, !tbaa !612
  %ctx101 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %67, i32 0, i32 0, !dbg !2383
  call void @hd_context_shrink_table_size(ptr noundef %ctx101, ptr noundef null), !dbg !2384
  %68 = load ptr, ptr %inflater.addr, align 8, !dbg !2385, !tbaa !612
  %state102 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %68, i32 0, i32 14, !dbg !2386
  store i32 1, ptr %state102, align 4, !dbg !2387, !tbaa !994
  br label %sw.epilog, !dbg !2388

sw.bb103:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefixlen) #8, !dbg !2389
  tail call void @llvm.dbg.declare(metadata ptr %prefixlen, metadata !2163, metadata !DIExpression()), !dbg !2390
  %69 = load ptr, ptr %inflater.addr, align 8, !dbg !2391, !tbaa !612
  %opcode104 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %69, i32 0, i32 13, !dbg !2393
  %70 = load i32, ptr %opcode104, align 8, !dbg !2393, !tbaa !990
  %cmp105 = icmp eq i32 %70, 1, !dbg !2394
  br i1 %cmp105, label %if.then107, label %if.else108, !dbg !2395

if.then107:                                       ; preds = %sw.bb103
  store i64 7, ptr %prefixlen, align 8, !dbg !2396, !tbaa !788
  br label %if.end114, !dbg !2398

if.else108:                                       ; preds = %sw.bb103
  %71 = load ptr, ptr %inflater.addr, align 8, !dbg !2399, !tbaa !612
  %index_required109 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %71, i32 0, i32 16, !dbg !2401
  %72 = load i8, ptr %index_required109, align 1, !dbg !2401, !tbaa !1028
  %tobool110 = icmp ne i8 %72, 0, !dbg !2399
  br i1 %tobool110, label %if.then111, label %if.else112, !dbg !2402

if.then111:                                       ; preds = %if.else108
  store i64 6, ptr %prefixlen, align 8, !dbg !2403, !tbaa !788
  br label %if.end113, !dbg !2405

if.else112:                                       ; preds = %if.else108
  store i64 4, ptr %prefixlen, align 8, !dbg !2406, !tbaa !788
  br label %if.end113

if.end113:                                        ; preds = %if.else112, %if.then111
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.then107
  store i32 0, ptr %rfin, align 4, !dbg !2408, !tbaa !623
  %73 = load ptr, ptr %inflater.addr, align 8, !dbg !2409, !tbaa !612
  %74 = load ptr, ptr %in.addr, align 8, !dbg !2410, !tbaa !612
  %75 = load ptr, ptr %last, align 8, !dbg !2411, !tbaa !612
  %76 = load i64, ptr %prefixlen, align 8, !dbg !2412, !tbaa !788
  %77 = load ptr, ptr %inflater.addr, align 8, !dbg !2413, !tbaa !612
  %ctx115 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %77, i32 0, i32 0, !dbg !2414
  %call116 = call i64 @get_max_index(ptr noundef %ctx115), !dbg !2415
  %call117 = call i64 @hd_inflate_read_len(ptr noundef %73, ptr noundef %rfin, ptr noundef %74, ptr noundef %75, i64 noundef %76, i64 noundef %call116), !dbg !2416
  store i64 %call117, ptr %rv, align 8, !dbg !2417, !tbaa !788
  %78 = load i64, ptr %rv, align 8, !dbg !2418, !tbaa !788
  %cmp118 = icmp slt i64 %78, 0, !dbg !2420
  br i1 %cmp118, label %if.then120, label %if.end121, !dbg !2421

if.then120:                                       ; preds = %if.end114
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2422

if.end121:                                        ; preds = %if.end114
  %79 = load i64, ptr %rv, align 8, !dbg !2424, !tbaa !788
  %80 = load ptr, ptr %in.addr, align 8, !dbg !2425, !tbaa !612
  %add.ptr122 = getelementptr inbounds i8, ptr %80, i64 %79, !dbg !2425
  store ptr %add.ptr122, ptr %in.addr, align 8, !dbg !2425, !tbaa !612
  %81 = load i32, ptr %rfin, align 4, !dbg !2426, !tbaa !623
  %tobool123 = icmp ne i32 %81, 0, !dbg !2426
  br i1 %tobool123, label %if.end125, label %if.then124, !dbg !2428

if.then124:                                       ; preds = %if.end121
  store i32 22, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2429

if.end125:                                        ; preds = %if.end121
  %82 = load ptr, ptr %inflater.addr, align 8, !dbg !2431, !tbaa !612
  %left126 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %82, i32 0, i32 8, !dbg !2433
  %83 = load i64, ptr %left126, align 8, !dbg !2433, !tbaa !1020
  %cmp127 = icmp eq i64 %83, 0, !dbg !2434
  br i1 %cmp127, label %if.then129, label %if.end130, !dbg !2435

if.then129:                                       ; preds = %if.end125
  store i64 -523, ptr %rv, align 8, !dbg !2436, !tbaa !788
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2438

if.end130:                                        ; preds = %if.end125
  br label %do.body131, !dbg !2439

do.body131:                                       ; preds = %if.end130
  br label %do.cond132, !dbg !2440

do.cond132:                                       ; preds = %do.body131
  br label %do.end133, !dbg !2440

do.end133:                                        ; preds = %do.cond132
  %84 = load ptr, ptr %inflater.addr, align 8, !dbg !2442, !tbaa !612
  %opcode134 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %84, i32 0, i32 13, !dbg !2444
  %85 = load i32, ptr %opcode134, align 8, !dbg !2444, !tbaa !990
  %cmp135 = icmp eq i32 %85, 1, !dbg !2445
  br i1 %cmp135, label %if.then137, label %if.else141, !dbg !2446

if.then137:                                       ; preds = %do.end133
  %86 = load ptr, ptr %inflater.addr, align 8, !dbg !2447, !tbaa !612
  %left138 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %86, i32 0, i32 8, !dbg !2449
  %87 = load i64, ptr %left138, align 8, !dbg !2449, !tbaa !1020
  %88 = load ptr, ptr %inflater.addr, align 8, !dbg !2450, !tbaa !612
  %index = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %88, i32 0, i32 9, !dbg !2451
  store i64 %87, ptr %index, align 8, !dbg !2452, !tbaa !1016
  %89 = load ptr, ptr %inflater.addr, align 8, !dbg !2453, !tbaa !612
  %index139 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %89, i32 0, i32 9, !dbg !2454
  %90 = load i64, ptr %index139, align 8, !dbg !2455, !tbaa !1016
  %dec = add i64 %90, -1, !dbg !2455
  store i64 %dec, ptr %index139, align 8, !dbg !2455, !tbaa !1016
  %91 = load ptr, ptr %inflater.addr, align 8, !dbg !2456, !tbaa !612
  %92 = load ptr, ptr %nv_out.addr, align 8, !dbg !2457, !tbaa !612
  call void @hd_inflate_commit_indexed(ptr noundef %91, ptr noundef %92), !dbg !2458
  %93 = load ptr, ptr %inflater.addr, align 8, !dbg !2459, !tbaa !612
  %state140 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %93, i32 0, i32 14, !dbg !2460
  store i32 2, ptr %state140, align 4, !dbg !2461, !tbaa !994
  %94 = load ptr, ptr %inflate_flags.addr, align 8, !dbg !2462, !tbaa !612
  %95 = load i32, ptr %94, align 4, !dbg !2463, !tbaa !623
  %or = or i32 %95, 2, !dbg !2463
  store i32 %or, ptr %94, align 4, !dbg !2463, !tbaa !623
  %96 = load ptr, ptr %in.addr, align 8, !dbg !2464, !tbaa !612
  %97 = load ptr, ptr %first, align 8, !dbg !2465, !tbaa !612
  %sub.ptr.lhs.cast = ptrtoint ptr %96 to i64, !dbg !2466
  %sub.ptr.rhs.cast = ptrtoint ptr %97 to i64, !dbg !2466
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2466
  store i64 %sub.ptr.sub, ptr %retval, align 8, !dbg !2467
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2467

if.else141:                                       ; preds = %do.end133
  %98 = load ptr, ptr %inflater.addr, align 8, !dbg !2468, !tbaa !612
  %left142 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %98, i32 0, i32 8, !dbg !2470
  %99 = load i64, ptr %left142, align 8, !dbg !2470, !tbaa !1020
  %100 = load ptr, ptr %inflater.addr, align 8, !dbg !2471, !tbaa !612
  %index143 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %100, i32 0, i32 9, !dbg !2472
  store i64 %99, ptr %index143, align 8, !dbg !2473, !tbaa !1016
  %101 = load ptr, ptr %inflater.addr, align 8, !dbg !2474, !tbaa !612
  %index144 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %101, i32 0, i32 9, !dbg !2475
  %102 = load i64, ptr %index144, align 8, !dbg !2476, !tbaa !1016
  %dec145 = add i64 %102, -1, !dbg !2476
  store i64 %dec145, ptr %index144, align 8, !dbg !2476, !tbaa !1016
  %103 = load ptr, ptr %inflater.addr, align 8, !dbg !2477, !tbaa !612
  %state146 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %103, i32 0, i32 14, !dbg !2478
  store i32 9, ptr %state146, align 4, !dbg !2479, !tbaa !994
  br label %if.end147

if.end147:                                        ; preds = %if.else141
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2480

cleanup:                                          ; preds = %if.then129, %if.then124, %if.then120, %if.end147, %if.then137
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefixlen) #8, !dbg !2481
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup435 [
    i32 6, label %sw.epilog
    i32 22, label %almost_ok
    i32 9, label %fail
  ]

sw.bb148:                                         ; preds = %for.body
  %104 = load ptr, ptr %inflater.addr, align 8, !dbg !2482, !tbaa !612
  %105 = load ptr, ptr %in.addr, align 8, !dbg !2483, !tbaa !612
  call void @hd_inflate_set_huffman_encoded(ptr noundef %104, ptr noundef %105), !dbg !2484
  %106 = load ptr, ptr %inflater.addr, align 8, !dbg !2485, !tbaa !612
  %state149 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %106, i32 0, i32 14, !dbg !2486
  store i32 6, ptr %state149, align 4, !dbg !2487, !tbaa !994
  %107 = load ptr, ptr %inflater.addr, align 8, !dbg !2488, !tbaa !612
  %left150 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %107, i32 0, i32 8, !dbg !2489
  store i64 0, ptr %left150, align 8, !dbg !2490, !tbaa !1020
  %108 = load ptr, ptr %inflater.addr, align 8, !dbg !2491, !tbaa !612
  %shift151 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %108, i32 0, i32 12, !dbg !2492
  store i64 0, ptr %shift151, align 8, !dbg !2493, !tbaa !1024
  br label %do.body152, !dbg !2494

do.body152:                                       ; preds = %sw.bb148
  br label %do.cond153, !dbg !2495

do.cond153:                                       ; preds = %do.body152
  br label %do.end154, !dbg !2495

do.end154:                                        ; preds = %do.cond153
  br label %sw.bb155, !dbg !2495

sw.bb155:                                         ; preds = %for.body, %do.end154
  store i32 0, ptr %rfin, align 4, !dbg !2497, !tbaa !623
  %109 = load ptr, ptr %inflater.addr, align 8, !dbg !2498, !tbaa !612
  %110 = load ptr, ptr %in.addr, align 8, !dbg !2499, !tbaa !612
  %111 = load ptr, ptr %last, align 8, !dbg !2500, !tbaa !612
  %call156 = call i64 @hd_inflate_read_len(ptr noundef %109, ptr noundef %rfin, ptr noundef %110, ptr noundef %111, i64 noundef 7, i64 noundef 65536), !dbg !2501
  store i64 %call156, ptr %rv, align 8, !dbg !2502, !tbaa !788
  %112 = load i64, ptr %rv, align 8, !dbg !2503, !tbaa !788
  %cmp157 = icmp slt i64 %112, 0, !dbg !2505
  br i1 %cmp157, label %if.then159, label %if.end160, !dbg !2506

if.then159:                                       ; preds = %sw.bb155
  br label %fail, !dbg !2507

if.end160:                                        ; preds = %sw.bb155
  %113 = load i64, ptr %rv, align 8, !dbg !2509, !tbaa !788
  %114 = load ptr, ptr %in.addr, align 8, !dbg !2510, !tbaa !612
  %add.ptr161 = getelementptr inbounds i8, ptr %114, i64 %113, !dbg !2510
  store ptr %add.ptr161, ptr %in.addr, align 8, !dbg !2510, !tbaa !612
  %115 = load i32, ptr %rfin, align 4, !dbg !2511, !tbaa !623
  %tobool162 = icmp ne i32 %115, 0, !dbg !2511
  br i1 %tobool162, label %if.end167, label %if.then163, !dbg !2513

if.then163:                                       ; preds = %if.end160
  br label %do.body164, !dbg !2514

do.body164:                                       ; preds = %if.then163
  br label %do.cond165, !dbg !2516

do.cond165:                                       ; preds = %do.body164
  br label %do.end166, !dbg !2516

do.end166:                                        ; preds = %do.cond165
  br label %almost_ok, !dbg !2518

if.end167:                                        ; preds = %if.end160
  %116 = load ptr, ptr %inflater.addr, align 8, !dbg !2519, !tbaa !612
  %huffman_encoded = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %116, i32 0, i32 15, !dbg !2521
  %117 = load i8, ptr %huffman_encoded, align 8, !dbg !2521, !tbaa !1012
  %tobool168 = icmp ne i8 %117, 0, !dbg !2519
  br i1 %tobool168, label %if.then169, label %if.else174, !dbg !2522

if.then169:                                       ; preds = %if.end167
  %118 = load ptr, ptr %inflater.addr, align 8, !dbg !2523, !tbaa !612
  %huff_decode_ctx = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %118, i32 0, i32 1, !dbg !2525
  call void @nghttp2_hd_huff_decode_context_init(ptr noundef %huff_decode_ctx), !dbg !2526
  %119 = load ptr, ptr %inflater.addr, align 8, !dbg !2527, !tbaa !612
  %state170 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %119, i32 0, i32 14, !dbg !2528
  store i32 7, ptr %state170, align 4, !dbg !2529, !tbaa !994
  %120 = load ptr, ptr %inflater.addr, align 8, !dbg !2530, !tbaa !612
  %namercbuf = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %120, i32 0, i32 4, !dbg !2531
  %121 = load ptr, ptr %inflater.addr, align 8, !dbg !2532, !tbaa !612
  %left171 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %121, i32 0, i32 8, !dbg !2533
  %122 = load i64, ptr %left171, align 8, !dbg !2533, !tbaa !1020
  %mul = mul i64 %122, 2, !dbg !2534
  %add = add i64 %mul, 1, !dbg !2535
  %123 = load ptr, ptr %mem, align 8, !dbg !2536, !tbaa !612
  %call172 = call i32 @nghttp2_rcbuf_new(ptr noundef %namercbuf, i64 noundef %add, ptr noundef %123), !dbg !2537
  %conv173 = sext i32 %call172 to i64, !dbg !2537
  store i64 %conv173, ptr %rv, align 8, !dbg !2538, !tbaa !788
  br label %if.end181, !dbg !2539

if.else174:                                       ; preds = %if.end167
  %124 = load ptr, ptr %inflater.addr, align 8, !dbg !2540, !tbaa !612
  %state175 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %124, i32 0, i32 14, !dbg !2542
  store i32 8, ptr %state175, align 4, !dbg !2543, !tbaa !994
  %125 = load ptr, ptr %inflater.addr, align 8, !dbg !2544, !tbaa !612
  %namercbuf176 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %125, i32 0, i32 4, !dbg !2545
  %126 = load ptr, ptr %inflater.addr, align 8, !dbg !2546, !tbaa !612
  %left177 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %126, i32 0, i32 8, !dbg !2547
  %127 = load i64, ptr %left177, align 8, !dbg !2547, !tbaa !1020
  %add178 = add i64 %127, 1, !dbg !2548
  %128 = load ptr, ptr %mem, align 8, !dbg !2549, !tbaa !612
  %call179 = call i32 @nghttp2_rcbuf_new(ptr noundef %namercbuf176, i64 noundef %add178, ptr noundef %128), !dbg !2550
  %conv180 = sext i32 %call179 to i64, !dbg !2550
  store i64 %conv180, ptr %rv, align 8, !dbg !2551, !tbaa !788
  br label %if.end181

if.end181:                                        ; preds = %if.else174, %if.then169
  %129 = load i64, ptr %rv, align 8, !dbg !2552, !tbaa !788
  %cmp182 = icmp ne i64 %129, 0, !dbg !2554
  br i1 %cmp182, label %if.then184, label %if.end185, !dbg !2555

if.then184:                                       ; preds = %if.end181
  br label %fail, !dbg !2556

if.end185:                                        ; preds = %if.end181
  %130 = load ptr, ptr %inflater.addr, align 8, !dbg !2558, !tbaa !612
  %namebuf = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %130, i32 0, i32 2, !dbg !2559
  %131 = load ptr, ptr %inflater.addr, align 8, !dbg !2560, !tbaa !612
  %namercbuf186 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %131, i32 0, i32 4, !dbg !2561
  %132 = load ptr, ptr %namercbuf186, align 8, !dbg !2561, !tbaa !1004
  %base = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %132, i32 0, i32 2, !dbg !2562
  %133 = load ptr, ptr %base, align 8, !dbg !2562, !tbaa !631
  %134 = load ptr, ptr %inflater.addr, align 8, !dbg !2563, !tbaa !612
  %namercbuf187 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %134, i32 0, i32 4, !dbg !2564
  %135 = load ptr, ptr %namercbuf187, align 8, !dbg !2564, !tbaa !1004
  %len = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %135, i32 0, i32 3, !dbg !2565
  %136 = load i64, ptr %len, align 8, !dbg !2565, !tbaa !644
  call void @nghttp2_buf_wrap_init(ptr noundef %namebuf, ptr noundef %133, i64 noundef %136), !dbg !2566
  br label %sw.epilog, !dbg !2567

sw.bb188:                                         ; preds = %for.body
  %137 = load ptr, ptr %inflater.addr, align 8, !dbg !2568, !tbaa !612
  %138 = load ptr, ptr %inflater.addr, align 8, !dbg !2569, !tbaa !612
  %namebuf189 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %138, i32 0, i32 2, !dbg !2570
  %139 = load ptr, ptr %in.addr, align 8, !dbg !2571, !tbaa !612
  %140 = load ptr, ptr %last, align 8, !dbg !2572, !tbaa !612
  %call190 = call i64 @hd_inflate_read_huff(ptr noundef %137, ptr noundef %namebuf189, ptr noundef %139, ptr noundef %140), !dbg !2573
  store i64 %call190, ptr %rv, align 8, !dbg !2574, !tbaa !788
  %141 = load i64, ptr %rv, align 8, !dbg !2575, !tbaa !788
  %cmp191 = icmp slt i64 %141, 0, !dbg !2577
  br i1 %cmp191, label %if.then193, label %if.end194, !dbg !2578

if.then193:                                       ; preds = %sw.bb188
  br label %fail, !dbg !2579

if.end194:                                        ; preds = %sw.bb188
  %142 = load i64, ptr %rv, align 8, !dbg !2581, !tbaa !788
  %143 = load ptr, ptr %in.addr, align 8, !dbg !2582, !tbaa !612
  %add.ptr195 = getelementptr inbounds i8, ptr %143, i64 %142, !dbg !2582
  store ptr %add.ptr195, ptr %in.addr, align 8, !dbg !2582, !tbaa !612
  br label %do.body196, !dbg !2583

do.body196:                                       ; preds = %if.end194
  br label %do.cond197, !dbg !2584

do.cond197:                                       ; preds = %do.body196
  br label %do.end198, !dbg !2584

do.end198:                                        ; preds = %do.cond197
  %144 = load ptr, ptr %inflater.addr, align 8, !dbg !2586, !tbaa !612
  %left199 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %144, i32 0, i32 8, !dbg !2588
  %145 = load i64, ptr %left199, align 8, !dbg !2588, !tbaa !1020
  %tobool200 = icmp ne i64 %145, 0, !dbg !2586
  br i1 %tobool200, label %if.then201, label %if.end205, !dbg !2589

if.then201:                                       ; preds = %do.end198
  br label %do.body202, !dbg !2590

do.body202:                                       ; preds = %if.then201
  br label %do.cond203, !dbg !2592

do.cond203:                                       ; preds = %do.body202
  br label %do.end204, !dbg !2592

do.end204:                                        ; preds = %do.cond203
  br label %almost_ok, !dbg !2594

if.end205:                                        ; preds = %do.end198
  %146 = load ptr, ptr %inflater.addr, align 8, !dbg !2595, !tbaa !612
  %namebuf206 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %146, i32 0, i32 2, !dbg !2596
  %last207 = getelementptr inbounds %struct.nghttp2_buf, ptr %namebuf206, i32 0, i32 3, !dbg !2597
  %147 = load ptr, ptr %last207, align 8, !dbg !2597, !tbaa !2598
  store i8 0, ptr %147, align 1, !dbg !2599, !tbaa !625
  %148 = load ptr, ptr %inflater.addr, align 8, !dbg !2600, !tbaa !612
  %namebuf208 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %148, i32 0, i32 2, !dbg !2600
  %last209 = getelementptr inbounds %struct.nghttp2_buf, ptr %namebuf208, i32 0, i32 3, !dbg !2600
  %149 = load ptr, ptr %last209, align 8, !dbg !2600, !tbaa !2598
  %150 = load ptr, ptr %inflater.addr, align 8, !dbg !2600, !tbaa !612
  %namebuf210 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %150, i32 0, i32 2, !dbg !2600
  %pos = getelementptr inbounds %struct.nghttp2_buf, ptr %namebuf210, i32 0, i32 2, !dbg !2600
  %151 = load ptr, ptr %pos, align 8, !dbg !2600, !tbaa !2601
  %sub.ptr.lhs.cast211 = ptrtoint ptr %149 to i64, !dbg !2600
  %sub.ptr.rhs.cast212 = ptrtoint ptr %151 to i64, !dbg !2600
  %sub.ptr.sub213 = sub i64 %sub.ptr.lhs.cast211, %sub.ptr.rhs.cast212, !dbg !2600
  %152 = load ptr, ptr %inflater.addr, align 8, !dbg !2602, !tbaa !612
  %namercbuf214 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %152, i32 0, i32 4, !dbg !2603
  %153 = load ptr, ptr %namercbuf214, align 8, !dbg !2603, !tbaa !1004
  %len215 = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %153, i32 0, i32 3, !dbg !2604
  store i64 %sub.ptr.sub213, ptr %len215, align 8, !dbg !2605, !tbaa !644
  %154 = load ptr, ptr %inflater.addr, align 8, !dbg !2606, !tbaa !612
  %state216 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %154, i32 0, i32 14, !dbg !2607
  store i32 9, ptr %state216, align 4, !dbg !2608, !tbaa !994
  br label %sw.epilog, !dbg !2609

sw.bb217:                                         ; preds = %for.body
  %155 = load ptr, ptr %inflater.addr, align 8, !dbg !2610, !tbaa !612
  %156 = load ptr, ptr %inflater.addr, align 8, !dbg !2611, !tbaa !612
  %namebuf218 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %156, i32 0, i32 2, !dbg !2612
  %157 = load ptr, ptr %in.addr, align 8, !dbg !2613, !tbaa !612
  %158 = load ptr, ptr %last, align 8, !dbg !2614, !tbaa !612
  %call219 = call i64 @hd_inflate_read(ptr noundef %155, ptr noundef %namebuf218, ptr noundef %157, ptr noundef %158), !dbg !2615
  store i64 %call219, ptr %rv, align 8, !dbg !2616, !tbaa !788
  %159 = load i64, ptr %rv, align 8, !dbg !2617, !tbaa !788
  %cmp220 = icmp slt i64 %159, 0, !dbg !2619
  br i1 %cmp220, label %if.then222, label %if.end223, !dbg !2620

if.then222:                                       ; preds = %sw.bb217
  br label %fail, !dbg !2621

if.end223:                                        ; preds = %sw.bb217
  %160 = load i64, ptr %rv, align 8, !dbg !2623, !tbaa !788
  %161 = load ptr, ptr %in.addr, align 8, !dbg !2624, !tbaa !612
  %add.ptr224 = getelementptr inbounds i8, ptr %161, i64 %160, !dbg !2624
  store ptr %add.ptr224, ptr %in.addr, align 8, !dbg !2624, !tbaa !612
  br label %do.body225, !dbg !2625

do.body225:                                       ; preds = %if.end223
  br label %do.cond226, !dbg !2626

do.cond226:                                       ; preds = %do.body225
  br label %do.end227, !dbg !2626

do.end227:                                        ; preds = %do.cond226
  %162 = load ptr, ptr %inflater.addr, align 8, !dbg !2628, !tbaa !612
  %left228 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %162, i32 0, i32 8, !dbg !2630
  %163 = load i64, ptr %left228, align 8, !dbg !2630, !tbaa !1020
  %tobool229 = icmp ne i64 %163, 0, !dbg !2628
  br i1 %tobool229, label %if.then230, label %if.end234, !dbg !2631

if.then230:                                       ; preds = %do.end227
  br label %do.body231, !dbg !2632

do.body231:                                       ; preds = %if.then230
  br label %do.cond232, !dbg !2634

do.cond232:                                       ; preds = %do.body231
  br label %do.end233, !dbg !2634

do.end233:                                        ; preds = %do.cond232
  br label %almost_ok, !dbg !2636

if.end234:                                        ; preds = %do.end227
  %164 = load ptr, ptr %inflater.addr, align 8, !dbg !2637, !tbaa !612
  %namebuf235 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %164, i32 0, i32 2, !dbg !2638
  %last236 = getelementptr inbounds %struct.nghttp2_buf, ptr %namebuf235, i32 0, i32 3, !dbg !2639
  %165 = load ptr, ptr %last236, align 8, !dbg !2639, !tbaa !2598
  store i8 0, ptr %165, align 1, !dbg !2640, !tbaa !625
  %166 = load ptr, ptr %inflater.addr, align 8, !dbg !2641, !tbaa !612
  %namebuf237 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %166, i32 0, i32 2, !dbg !2641
  %last238 = getelementptr inbounds %struct.nghttp2_buf, ptr %namebuf237, i32 0, i32 3, !dbg !2641
  %167 = load ptr, ptr %last238, align 8, !dbg !2641, !tbaa !2598
  %168 = load ptr, ptr %inflater.addr, align 8, !dbg !2641, !tbaa !612
  %namebuf239 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %168, i32 0, i32 2, !dbg !2641
  %pos240 = getelementptr inbounds %struct.nghttp2_buf, ptr %namebuf239, i32 0, i32 2, !dbg !2641
  %169 = load ptr, ptr %pos240, align 8, !dbg !2641, !tbaa !2601
  %sub.ptr.lhs.cast241 = ptrtoint ptr %167 to i64, !dbg !2641
  %sub.ptr.rhs.cast242 = ptrtoint ptr %169 to i64, !dbg !2641
  %sub.ptr.sub243 = sub i64 %sub.ptr.lhs.cast241, %sub.ptr.rhs.cast242, !dbg !2641
  %170 = load ptr, ptr %inflater.addr, align 8, !dbg !2642, !tbaa !612
  %namercbuf244 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %170, i32 0, i32 4, !dbg !2643
  %171 = load ptr, ptr %namercbuf244, align 8, !dbg !2643, !tbaa !1004
  %len245 = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %171, i32 0, i32 3, !dbg !2644
  store i64 %sub.ptr.sub243, ptr %len245, align 8, !dbg !2645, !tbaa !644
  %172 = load ptr, ptr %inflater.addr, align 8, !dbg !2646, !tbaa !612
  %state246 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %172, i32 0, i32 14, !dbg !2647
  store i32 9, ptr %state246, align 4, !dbg !2648, !tbaa !994
  br label %sw.epilog, !dbg !2649

sw.bb247:                                         ; preds = %for.body
  %173 = load ptr, ptr %inflater.addr, align 8, !dbg !2650, !tbaa !612
  %174 = load ptr, ptr %in.addr, align 8, !dbg !2651, !tbaa !612
  call void @hd_inflate_set_huffman_encoded(ptr noundef %173, ptr noundef %174), !dbg !2652
  %175 = load ptr, ptr %inflater.addr, align 8, !dbg !2653, !tbaa !612
  %state248 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %175, i32 0, i32 14, !dbg !2654
  store i32 10, ptr %state248, align 4, !dbg !2655, !tbaa !994
  %176 = load ptr, ptr %inflater.addr, align 8, !dbg !2656, !tbaa !612
  %left249 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %176, i32 0, i32 8, !dbg !2657
  store i64 0, ptr %left249, align 8, !dbg !2658, !tbaa !1020
  %177 = load ptr, ptr %inflater.addr, align 8, !dbg !2659, !tbaa !612
  %shift250 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %177, i32 0, i32 12, !dbg !2660
  store i64 0, ptr %shift250, align 8, !dbg !2661, !tbaa !1024
  br label %do.body251, !dbg !2662

do.body251:                                       ; preds = %sw.bb247
  br label %do.cond252, !dbg !2663

do.cond252:                                       ; preds = %do.body251
  br label %do.end253, !dbg !2663

do.end253:                                        ; preds = %do.cond252
  br label %sw.bb254, !dbg !2663

sw.bb254:                                         ; preds = %for.body, %do.end253
  store i32 0, ptr %rfin, align 4, !dbg !2665, !tbaa !623
  %178 = load ptr, ptr %inflater.addr, align 8, !dbg !2666, !tbaa !612
  %179 = load ptr, ptr %in.addr, align 8, !dbg !2667, !tbaa !612
  %180 = load ptr, ptr %last, align 8, !dbg !2668, !tbaa !612
  %call255 = call i64 @hd_inflate_read_len(ptr noundef %178, ptr noundef %rfin, ptr noundef %179, ptr noundef %180, i64 noundef 7, i64 noundef 65536), !dbg !2669
  store i64 %call255, ptr %rv, align 8, !dbg !2670, !tbaa !788
  %181 = load i64, ptr %rv, align 8, !dbg !2671, !tbaa !788
  %cmp256 = icmp slt i64 %181, 0, !dbg !2673
  br i1 %cmp256, label %if.then258, label %if.end259, !dbg !2674

if.then258:                                       ; preds = %sw.bb254
  br label %fail, !dbg !2675

if.end259:                                        ; preds = %sw.bb254
  %182 = load i64, ptr %rv, align 8, !dbg !2677, !tbaa !788
  %183 = load ptr, ptr %in.addr, align 8, !dbg !2678, !tbaa !612
  %add.ptr260 = getelementptr inbounds i8, ptr %183, i64 %182, !dbg !2678
  store ptr %add.ptr260, ptr %in.addr, align 8, !dbg !2678, !tbaa !612
  %184 = load i32, ptr %rfin, align 4, !dbg !2679, !tbaa !623
  %tobool261 = icmp ne i32 %184, 0, !dbg !2679
  br i1 %tobool261, label %if.end263, label %if.then262, !dbg !2681

if.then262:                                       ; preds = %if.end259
  br label %almost_ok, !dbg !2682

if.end263:                                        ; preds = %if.end259
  br label %do.body264, !dbg !2684

do.body264:                                       ; preds = %if.end263
  br label %do.cond265, !dbg !2685

do.cond265:                                       ; preds = %do.body264
  br label %do.end266, !dbg !2685

do.end266:                                        ; preds = %do.cond265
  %185 = load ptr, ptr %inflater.addr, align 8, !dbg !2687, !tbaa !612
  %huffman_encoded267 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %185, i32 0, i32 15, !dbg !2689
  %186 = load i8, ptr %huffman_encoded267, align 8, !dbg !2689, !tbaa !1012
  %tobool268 = icmp ne i8 %186, 0, !dbg !2687
  br i1 %tobool268, label %if.then269, label %if.else277, !dbg !2690

if.then269:                                       ; preds = %do.end266
  %187 = load ptr, ptr %inflater.addr, align 8, !dbg !2691, !tbaa !612
  %huff_decode_ctx270 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %187, i32 0, i32 1, !dbg !2693
  call void @nghttp2_hd_huff_decode_context_init(ptr noundef %huff_decode_ctx270), !dbg !2694
  %188 = load ptr, ptr %inflater.addr, align 8, !dbg !2695, !tbaa !612
  %state271 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %188, i32 0, i32 14, !dbg !2696
  store i32 11, ptr %state271, align 4, !dbg !2697, !tbaa !994
  %189 = load ptr, ptr %inflater.addr, align 8, !dbg !2698, !tbaa !612
  %valuercbuf = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %189, i32 0, i32 5, !dbg !2699
  %190 = load ptr, ptr %inflater.addr, align 8, !dbg !2700, !tbaa !612
  %left272 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %190, i32 0, i32 8, !dbg !2701
  %191 = load i64, ptr %left272, align 8, !dbg !2701, !tbaa !1020
  %mul273 = mul i64 %191, 2, !dbg !2702
  %add274 = add i64 %mul273, 1, !dbg !2703
  %192 = load ptr, ptr %mem, align 8, !dbg !2704, !tbaa !612
  %call275 = call i32 @nghttp2_rcbuf_new(ptr noundef %valuercbuf, i64 noundef %add274, ptr noundef %192), !dbg !2705
  %conv276 = sext i32 %call275 to i64, !dbg !2705
  store i64 %conv276, ptr %rv, align 8, !dbg !2706, !tbaa !788
  br label %if.end284, !dbg !2707

if.else277:                                       ; preds = %do.end266
  %193 = load ptr, ptr %inflater.addr, align 8, !dbg !2708, !tbaa !612
  %state278 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %193, i32 0, i32 14, !dbg !2710
  store i32 12, ptr %state278, align 4, !dbg !2711, !tbaa !994
  %194 = load ptr, ptr %inflater.addr, align 8, !dbg !2712, !tbaa !612
  %valuercbuf279 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %194, i32 0, i32 5, !dbg !2713
  %195 = load ptr, ptr %inflater.addr, align 8, !dbg !2714, !tbaa !612
  %left280 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %195, i32 0, i32 8, !dbg !2715
  %196 = load i64, ptr %left280, align 8, !dbg !2715, !tbaa !1020
  %add281 = add i64 %196, 1, !dbg !2716
  %197 = load ptr, ptr %mem, align 8, !dbg !2717, !tbaa !612
  %call282 = call i32 @nghttp2_rcbuf_new(ptr noundef %valuercbuf279, i64 noundef %add281, ptr noundef %197), !dbg !2718
  %conv283 = sext i32 %call282 to i64, !dbg !2718
  store i64 %conv283, ptr %rv, align 8, !dbg !2719, !tbaa !788
  br label %if.end284

if.end284:                                        ; preds = %if.else277, %if.then269
  %198 = load i64, ptr %rv, align 8, !dbg !2720, !tbaa !788
  %cmp285 = icmp ne i64 %198, 0, !dbg !2722
  br i1 %cmp285, label %if.then287, label %if.end288, !dbg !2723

if.then287:                                       ; preds = %if.end284
  br label %fail, !dbg !2724

if.end288:                                        ; preds = %if.end284
  %199 = load ptr, ptr %inflater.addr, align 8, !dbg !2726, !tbaa !612
  %valuebuf = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %199, i32 0, i32 3, !dbg !2727
  %200 = load ptr, ptr %inflater.addr, align 8, !dbg !2728, !tbaa !612
  %valuercbuf289 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %200, i32 0, i32 5, !dbg !2729
  %201 = load ptr, ptr %valuercbuf289, align 8, !dbg !2729, !tbaa !1008
  %base290 = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %201, i32 0, i32 2, !dbg !2730
  %202 = load ptr, ptr %base290, align 8, !dbg !2730, !tbaa !631
  %203 = load ptr, ptr %inflater.addr, align 8, !dbg !2731, !tbaa !612
  %valuercbuf291 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %203, i32 0, i32 5, !dbg !2732
  %204 = load ptr, ptr %valuercbuf291, align 8, !dbg !2732, !tbaa !1008
  %len292 = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %204, i32 0, i32 3, !dbg !2733
  %205 = load i64, ptr %len292, align 8, !dbg !2733, !tbaa !644
  call void @nghttp2_buf_wrap_init(ptr noundef %valuebuf, ptr noundef %202, i64 noundef %205), !dbg !2734
  store i32 1, ptr %busy, align 4, !dbg !2735, !tbaa !623
  br label %sw.epilog, !dbg !2736

sw.bb293:                                         ; preds = %for.body
  %206 = load ptr, ptr %inflater.addr, align 8, !dbg !2737, !tbaa !612
  %207 = load ptr, ptr %inflater.addr, align 8, !dbg !2738, !tbaa !612
  %valuebuf294 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %207, i32 0, i32 3, !dbg !2739
  %208 = load ptr, ptr %in.addr, align 8, !dbg !2740, !tbaa !612
  %209 = load ptr, ptr %last, align 8, !dbg !2741, !tbaa !612
  %call295 = call i64 @hd_inflate_read_huff(ptr noundef %206, ptr noundef %valuebuf294, ptr noundef %208, ptr noundef %209), !dbg !2742
  store i64 %call295, ptr %rv, align 8, !dbg !2743, !tbaa !788
  %210 = load i64, ptr %rv, align 8, !dbg !2744, !tbaa !788
  %cmp296 = icmp slt i64 %210, 0, !dbg !2746
  br i1 %cmp296, label %if.then298, label %if.end299, !dbg !2747

if.then298:                                       ; preds = %sw.bb293
  br label %fail, !dbg !2748

if.end299:                                        ; preds = %sw.bb293
  %211 = load i64, ptr %rv, align 8, !dbg !2750, !tbaa !788
  %212 = load ptr, ptr %in.addr, align 8, !dbg !2751, !tbaa !612
  %add.ptr300 = getelementptr inbounds i8, ptr %212, i64 %211, !dbg !2751
  store ptr %add.ptr300, ptr %in.addr, align 8, !dbg !2751, !tbaa !612
  br label %do.body301, !dbg !2752

do.body301:                                       ; preds = %if.end299
  br label %do.cond302, !dbg !2753

do.cond302:                                       ; preds = %do.body301
  br label %do.end303, !dbg !2753

do.end303:                                        ; preds = %do.cond302
  %213 = load ptr, ptr %inflater.addr, align 8, !dbg !2755, !tbaa !612
  %left304 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %213, i32 0, i32 8, !dbg !2757
  %214 = load i64, ptr %left304, align 8, !dbg !2757, !tbaa !1020
  %tobool305 = icmp ne i64 %214, 0, !dbg !2755
  br i1 %tobool305, label %if.then306, label %if.end310, !dbg !2758

if.then306:                                       ; preds = %do.end303
  br label %do.body307, !dbg !2759

do.body307:                                       ; preds = %if.then306
  br label %do.cond308, !dbg !2761

do.cond308:                                       ; preds = %do.body307
  br label %do.end309, !dbg !2761

do.end309:                                        ; preds = %do.cond308
  br label %almost_ok, !dbg !2763

if.end310:                                        ; preds = %do.end303
  %215 = load ptr, ptr %inflater.addr, align 8, !dbg !2764, !tbaa !612
  %valuebuf311 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %215, i32 0, i32 3, !dbg !2765
  %last312 = getelementptr inbounds %struct.nghttp2_buf, ptr %valuebuf311, i32 0, i32 3, !dbg !2766
  %216 = load ptr, ptr %last312, align 8, !dbg !2766, !tbaa !2767
  store i8 0, ptr %216, align 1, !dbg !2768, !tbaa !625
  %217 = load ptr, ptr %inflater.addr, align 8, !dbg !2769, !tbaa !612
  %valuebuf313 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %217, i32 0, i32 3, !dbg !2769
  %last314 = getelementptr inbounds %struct.nghttp2_buf, ptr %valuebuf313, i32 0, i32 3, !dbg !2769
  %218 = load ptr, ptr %last314, align 8, !dbg !2769, !tbaa !2767
  %219 = load ptr, ptr %inflater.addr, align 8, !dbg !2769, !tbaa !612
  %valuebuf315 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %219, i32 0, i32 3, !dbg !2769
  %pos316 = getelementptr inbounds %struct.nghttp2_buf, ptr %valuebuf315, i32 0, i32 2, !dbg !2769
  %220 = load ptr, ptr %pos316, align 8, !dbg !2769, !tbaa !2770
  %sub.ptr.lhs.cast317 = ptrtoint ptr %218 to i64, !dbg !2769
  %sub.ptr.rhs.cast318 = ptrtoint ptr %220 to i64, !dbg !2769
  %sub.ptr.sub319 = sub i64 %sub.ptr.lhs.cast317, %sub.ptr.rhs.cast318, !dbg !2769
  %221 = load ptr, ptr %inflater.addr, align 8, !dbg !2771, !tbaa !612
  %valuercbuf320 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %221, i32 0, i32 5, !dbg !2772
  %222 = load ptr, ptr %valuercbuf320, align 8, !dbg !2772, !tbaa !1008
  %len321 = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %222, i32 0, i32 3, !dbg !2773
  store i64 %sub.ptr.sub319, ptr %len321, align 8, !dbg !2774, !tbaa !644
  %223 = load ptr, ptr %inflater.addr, align 8, !dbg !2775, !tbaa !612
  %opcode322 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %223, i32 0, i32 13, !dbg !2777
  %224 = load i32, ptr %opcode322, align 8, !dbg !2777, !tbaa !990
  %cmp323 = icmp eq i32 %224, 2, !dbg !2778
  br i1 %cmp323, label %if.then325, label %if.else328, !dbg !2779

if.then325:                                       ; preds = %if.end310
  %225 = load ptr, ptr %inflater.addr, align 8, !dbg !2780, !tbaa !612
  %226 = load ptr, ptr %nv_out.addr, align 8, !dbg !2782, !tbaa !612
  %call326 = call i32 @hd_inflate_commit_newname(ptr noundef %225, ptr noundef %226), !dbg !2783
  %conv327 = sext i32 %call326 to i64, !dbg !2783
  store i64 %conv327, ptr %rv, align 8, !dbg !2784, !tbaa !788
  br label %if.end331, !dbg !2785

if.else328:                                       ; preds = %if.end310
  %227 = load ptr, ptr %inflater.addr, align 8, !dbg !2786, !tbaa !612
  %228 = load ptr, ptr %nv_out.addr, align 8, !dbg !2788, !tbaa !612
  %call329 = call i32 @hd_inflate_commit_indname(ptr noundef %227, ptr noundef %228), !dbg !2789
  %conv330 = sext i32 %call329 to i64, !dbg !2789
  store i64 %conv330, ptr %rv, align 8, !dbg !2790, !tbaa !788
  br label %if.end331

if.end331:                                        ; preds = %if.else328, %if.then325
  %229 = load i64, ptr %rv, align 8, !dbg !2791, !tbaa !788
  %cmp332 = icmp ne i64 %229, 0, !dbg !2793
  br i1 %cmp332, label %if.then334, label %if.end335, !dbg !2794

if.then334:                                       ; preds = %if.end331
  br label %fail, !dbg !2795

if.end335:                                        ; preds = %if.end331
  %230 = load ptr, ptr %inflater.addr, align 8, !dbg !2797, !tbaa !612
  %state336 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %230, i32 0, i32 14, !dbg !2798
  store i32 2, ptr %state336, align 4, !dbg !2799, !tbaa !994
  %231 = load ptr, ptr %inflate_flags.addr, align 8, !dbg !2800, !tbaa !612
  %232 = load i32, ptr %231, align 4, !dbg !2801, !tbaa !623
  %or337 = or i32 %232, 2, !dbg !2801
  store i32 %or337, ptr %231, align 4, !dbg !2801, !tbaa !623
  %233 = load ptr, ptr %in.addr, align 8, !dbg !2802, !tbaa !612
  %234 = load ptr, ptr %first, align 8, !dbg !2803, !tbaa !612
  %sub.ptr.lhs.cast338 = ptrtoint ptr %233 to i64, !dbg !2804
  %sub.ptr.rhs.cast339 = ptrtoint ptr %234 to i64, !dbg !2804
  %sub.ptr.sub340 = sub i64 %sub.ptr.lhs.cast338, %sub.ptr.rhs.cast339, !dbg !2804
  store i64 %sub.ptr.sub340, ptr %retval, align 8, !dbg !2805
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup435, !dbg !2805

sw.bb341:                                         ; preds = %for.body
  %235 = load ptr, ptr %inflater.addr, align 8, !dbg !2806, !tbaa !612
  %236 = load ptr, ptr %inflater.addr, align 8, !dbg !2807, !tbaa !612
  %valuebuf342 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %236, i32 0, i32 3, !dbg !2808
  %237 = load ptr, ptr %in.addr, align 8, !dbg !2809, !tbaa !612
  %238 = load ptr, ptr %last, align 8, !dbg !2810, !tbaa !612
  %call343 = call i64 @hd_inflate_read(ptr noundef %235, ptr noundef %valuebuf342, ptr noundef %237, ptr noundef %238), !dbg !2811
  store i64 %call343, ptr %rv, align 8, !dbg !2812, !tbaa !788
  %239 = load i64, ptr %rv, align 8, !dbg !2813, !tbaa !788
  %cmp344 = icmp slt i64 %239, 0, !dbg !2815
  br i1 %cmp344, label %if.then346, label %if.end350, !dbg !2816

if.then346:                                       ; preds = %sw.bb341
  br label %do.body347, !dbg !2817

do.body347:                                       ; preds = %if.then346
  br label %do.cond348, !dbg !2819

do.cond348:                                       ; preds = %do.body347
  br label %do.end349, !dbg !2819

do.end349:                                        ; preds = %do.cond348
  br label %fail, !dbg !2821

if.end350:                                        ; preds = %sw.bb341
  %240 = load i64, ptr %rv, align 8, !dbg !2822, !tbaa !788
  %241 = load ptr, ptr %in.addr, align 8, !dbg !2823, !tbaa !612
  %add.ptr351 = getelementptr inbounds i8, ptr %241, i64 %240, !dbg !2823
  store ptr %add.ptr351, ptr %in.addr, align 8, !dbg !2823, !tbaa !612
  br label %do.body352, !dbg !2824

do.body352:                                       ; preds = %if.end350
  br label %do.cond353, !dbg !2825

do.cond353:                                       ; preds = %do.body352
  br label %do.end354, !dbg !2825

do.end354:                                        ; preds = %do.cond353
  %242 = load ptr, ptr %inflater.addr, align 8, !dbg !2827, !tbaa !612
  %left355 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %242, i32 0, i32 8, !dbg !2829
  %243 = load i64, ptr %left355, align 8, !dbg !2829, !tbaa !1020
  %tobool356 = icmp ne i64 %243, 0, !dbg !2827
  br i1 %tobool356, label %if.then357, label %if.end361, !dbg !2830

if.then357:                                       ; preds = %do.end354
  br label %do.body358, !dbg !2831

do.body358:                                       ; preds = %if.then357
  br label %do.cond359, !dbg !2833

do.cond359:                                       ; preds = %do.body358
  br label %do.end360, !dbg !2833

do.end360:                                        ; preds = %do.cond359
  br label %almost_ok, !dbg !2835

if.end361:                                        ; preds = %do.end354
  %244 = load ptr, ptr %inflater.addr, align 8, !dbg !2836, !tbaa !612
  %valuebuf362 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %244, i32 0, i32 3, !dbg !2837
  %last363 = getelementptr inbounds %struct.nghttp2_buf, ptr %valuebuf362, i32 0, i32 3, !dbg !2838
  %245 = load ptr, ptr %last363, align 8, !dbg !2838, !tbaa !2767
  store i8 0, ptr %245, align 1, !dbg !2839, !tbaa !625
  %246 = load ptr, ptr %inflater.addr, align 8, !dbg !2840, !tbaa !612
  %valuebuf364 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %246, i32 0, i32 3, !dbg !2840
  %last365 = getelementptr inbounds %struct.nghttp2_buf, ptr %valuebuf364, i32 0, i32 3, !dbg !2840
  %247 = load ptr, ptr %last365, align 8, !dbg !2840, !tbaa !2767
  %248 = load ptr, ptr %inflater.addr, align 8, !dbg !2840, !tbaa !612
  %valuebuf366 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %248, i32 0, i32 3, !dbg !2840
  %pos367 = getelementptr inbounds %struct.nghttp2_buf, ptr %valuebuf366, i32 0, i32 2, !dbg !2840
  %249 = load ptr, ptr %pos367, align 8, !dbg !2840, !tbaa !2770
  %sub.ptr.lhs.cast368 = ptrtoint ptr %247 to i64, !dbg !2840
  %sub.ptr.rhs.cast369 = ptrtoint ptr %249 to i64, !dbg !2840
  %sub.ptr.sub370 = sub i64 %sub.ptr.lhs.cast368, %sub.ptr.rhs.cast369, !dbg !2840
  %250 = load ptr, ptr %inflater.addr, align 8, !dbg !2841, !tbaa !612
  %valuercbuf371 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %250, i32 0, i32 5, !dbg !2842
  %251 = load ptr, ptr %valuercbuf371, align 8, !dbg !2842, !tbaa !1008
  %len372 = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %251, i32 0, i32 3, !dbg !2843
  store i64 %sub.ptr.sub370, ptr %len372, align 8, !dbg !2844, !tbaa !644
  %252 = load ptr, ptr %inflater.addr, align 8, !dbg !2845, !tbaa !612
  %opcode373 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %252, i32 0, i32 13, !dbg !2847
  %253 = load i32, ptr %opcode373, align 8, !dbg !2847, !tbaa !990
  %cmp374 = icmp eq i32 %253, 2, !dbg !2848
  br i1 %cmp374, label %if.then376, label %if.else379, !dbg !2849

if.then376:                                       ; preds = %if.end361
  %254 = load ptr, ptr %inflater.addr, align 8, !dbg !2850, !tbaa !612
  %255 = load ptr, ptr %nv_out.addr, align 8, !dbg !2852, !tbaa !612
  %call377 = call i32 @hd_inflate_commit_newname(ptr noundef %254, ptr noundef %255), !dbg !2853
  %conv378 = sext i32 %call377 to i64, !dbg !2853
  store i64 %conv378, ptr %rv, align 8, !dbg !2854, !tbaa !788
  br label %if.end382, !dbg !2855

if.else379:                                       ; preds = %if.end361
  %256 = load ptr, ptr %inflater.addr, align 8, !dbg !2856, !tbaa !612
  %257 = load ptr, ptr %nv_out.addr, align 8, !dbg !2858, !tbaa !612
  %call380 = call i32 @hd_inflate_commit_indname(ptr noundef %256, ptr noundef %257), !dbg !2859
  %conv381 = sext i32 %call380 to i64, !dbg !2859
  store i64 %conv381, ptr %rv, align 8, !dbg !2860, !tbaa !788
  br label %if.end382

if.end382:                                        ; preds = %if.else379, %if.then376
  %258 = load i64, ptr %rv, align 8, !dbg !2861, !tbaa !788
  %cmp383 = icmp ne i64 %258, 0, !dbg !2863
  br i1 %cmp383, label %if.then385, label %if.end386, !dbg !2864

if.then385:                                       ; preds = %if.end382
  br label %fail, !dbg !2865

if.end386:                                        ; preds = %if.end382
  %259 = load ptr, ptr %inflater.addr, align 8, !dbg !2867, !tbaa !612
  %state387 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %259, i32 0, i32 14, !dbg !2868
  store i32 2, ptr %state387, align 4, !dbg !2869, !tbaa !994
  %260 = load ptr, ptr %inflate_flags.addr, align 8, !dbg !2870, !tbaa !612
  %261 = load i32, ptr %260, align 4, !dbg !2871, !tbaa !623
  %or388 = or i32 %261, 2, !dbg !2871
  store i32 %or388, ptr %260, align 4, !dbg !2871, !tbaa !623
  %262 = load ptr, ptr %in.addr, align 8, !dbg !2872, !tbaa !612
  %263 = load ptr, ptr %first, align 8, !dbg !2873, !tbaa !612
  %sub.ptr.lhs.cast389 = ptrtoint ptr %262 to i64, !dbg !2874
  %sub.ptr.rhs.cast390 = ptrtoint ptr %263 to i64, !dbg !2874
  %sub.ptr.sub391 = sub i64 %sub.ptr.lhs.cast389, %sub.ptr.rhs.cast390, !dbg !2874
  store i64 %sub.ptr.sub391, ptr %retval, align 8, !dbg !2875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup435, !dbg !2875

sw.epilog:                                        ; preds = %for.body, %if.end288, %if.end234, %if.end205, %if.end185, %cleanup, %do.end97, %if.end81
  br label %for.cond, !dbg !2876, !llvm.loop !2877

for.end:                                          ; preds = %lor.end
  %264 = load ptr, ptr %in.addr, align 8, !dbg !2879, !tbaa !612
  %265 = load ptr, ptr %last, align 8, !dbg !2879, !tbaa !612
  %cmp392 = icmp eq ptr %264, %265, !dbg !2879
  br i1 %cmp392, label %if.then394, label %if.else395, !dbg !2882

if.then394:                                       ; preds = %for.end
  br label %if.end396, !dbg !2882

if.else395:                                       ; preds = %for.end
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 2203, ptr noundef @__PRETTY_FUNCTION__.nghttp2_hd_inflate_hd_nv) #9, !dbg !2879
  unreachable, !dbg !2879

if.end396:                                        ; preds = %if.then394
  br label %do.body397, !dbg !2883

do.body397:                                       ; preds = %if.end396
  br label %do.cond398, !dbg !2884

do.cond398:                                       ; preds = %do.body397
  br label %do.end399, !dbg !2884

do.end399:                                        ; preds = %do.cond398
  %266 = load i32, ptr %in_final.addr, align 4, !dbg !2886, !tbaa !623
  %tobool400 = icmp ne i32 %266, 0, !dbg !2886
  br i1 %tobool400, label %if.then401, label %if.end417, !dbg !2888

if.then401:                                       ; preds = %do.end399
  br label %do.body402, !dbg !2889

do.body402:                                       ; preds = %if.then401
  br label %do.cond403, !dbg !2891

do.cond403:                                       ; preds = %do.body402
  br label %do.end404, !dbg !2891

do.end404:                                        ; preds = %do.cond403
  %267 = load ptr, ptr %inflater.addr, align 8, !dbg !2893, !tbaa !612
  %state405 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %267, i32 0, i32 14, !dbg !2895
  %268 = load i32, ptr %state405, align 4, !dbg !2895, !tbaa !994
  %cmp406 = icmp ne i32 %268, 2, !dbg !2896
  br i1 %cmp406, label %land.lhs.true, label %if.end415, !dbg !2897

land.lhs.true:                                    ; preds = %do.end404
  %269 = load ptr, ptr %inflater.addr, align 8, !dbg !2898, !tbaa !612
  %state408 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %269, i32 0, i32 14, !dbg !2899
  %270 = load i32, ptr %state408, align 4, !dbg !2899, !tbaa !994
  %cmp409 = icmp ne i32 %270, 1, !dbg !2900
  br i1 %cmp409, label %if.then411, label %if.end415, !dbg !2901

if.then411:                                       ; preds = %land.lhs.true
  br label %do.body412, !dbg !2902

do.body412:                                       ; preds = %if.then411
  br label %do.cond413, !dbg !2904

do.cond413:                                       ; preds = %do.body412
  br label %do.end414, !dbg !2904

do.end414:                                        ; preds = %do.cond413
  store i64 -523, ptr %rv, align 8, !dbg !2906, !tbaa !788
  br label %fail, !dbg !2907

if.end415:                                        ; preds = %land.lhs.true, %do.end404
  %271 = load ptr, ptr %inflate_flags.addr, align 8, !dbg !2908, !tbaa !612
  %272 = load i32, ptr %271, align 4, !dbg !2909, !tbaa !623
  %or416 = or i32 %272, 1, !dbg !2909
  store i32 %or416, ptr %271, align 4, !dbg !2909, !tbaa !623
  br label %if.end417, !dbg !2910

if.end417:                                        ; preds = %if.end415, %do.end399
  %273 = load ptr, ptr %in.addr, align 8, !dbg !2911, !tbaa !612
  %274 = load ptr, ptr %first, align 8, !dbg !2912, !tbaa !612
  %sub.ptr.lhs.cast418 = ptrtoint ptr %273 to i64, !dbg !2913
  %sub.ptr.rhs.cast419 = ptrtoint ptr %274 to i64, !dbg !2913
  %sub.ptr.sub420 = sub i64 %sub.ptr.lhs.cast418, %sub.ptr.rhs.cast419, !dbg !2913
  store i64 %sub.ptr.sub420, ptr %retval, align 8, !dbg !2914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup435, !dbg !2914

almost_ok:                                        ; preds = %cleanup, %do.end360, %do.end309, %if.then262, %do.end233, %do.end204, %do.end166, %if.then93
  tail call void @llvm.dbg.label(metadata !2169), !dbg !2915
  %275 = load i32, ptr %in_final.addr, align 4, !dbg !2916, !tbaa !623
  %tobool421 = icmp ne i32 %275, 0, !dbg !2916
  br i1 %tobool421, label %if.then422, label %if.end426, !dbg !2918

if.then422:                                       ; preds = %almost_ok
  br label %do.body423, !dbg !2919

do.body423:                                       ; preds = %if.then422
  br label %do.cond424, !dbg !2921

do.cond424:                                       ; preds = %do.body423
  br label %do.end425, !dbg !2921

do.end425:                                        ; preds = %do.cond424
  store i64 -523, ptr %rv, align 8, !dbg !2923, !tbaa !788
  br label %fail, !dbg !2924

if.end426:                                        ; preds = %almost_ok
  %276 = load ptr, ptr %in.addr, align 8, !dbg !2925, !tbaa !612
  %277 = load ptr, ptr %first, align 8, !dbg !2926, !tbaa !612
  %sub.ptr.lhs.cast427 = ptrtoint ptr %276 to i64, !dbg !2927
  %sub.ptr.rhs.cast428 = ptrtoint ptr %277 to i64, !dbg !2927
  %sub.ptr.sub429 = sub i64 %sub.ptr.lhs.cast427, %sub.ptr.rhs.cast428, !dbg !2927
  store i64 %sub.ptr.sub429, ptr %retval, align 8, !dbg !2928
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup435, !dbg !2928

fail:                                             ; preds = %cleanup, %do.end425, %do.end414, %if.then385, %do.end349, %if.then334, %if.then298, %if.then287, %if.then258, %if.then222, %if.then193, %if.then184, %if.then159, %if.then89, %do.end26, %do.end9
  tail call void @llvm.dbg.label(metadata !2170), !dbg !2929
  br label %do.body430, !dbg !2930

do.body430:                                       ; preds = %fail
  br label %do.cond431, !dbg !2931

do.cond431:                                       ; preds = %do.body430
  br label %do.end432, !dbg !2931

do.end432:                                        ; preds = %do.cond431
  %278 = load ptr, ptr %inflater.addr, align 8, !dbg !2933, !tbaa !612
  %ctx433 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %278, i32 0, i32 0, !dbg !2934
  %bad434 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx433, i32 0, i32 5, !dbg !2935
  store i8 1, ptr %bad434, align 4, !dbg !2936, !tbaa !2202
  %279 = load i64, ptr %rv, align 8, !dbg !2937, !tbaa !788
  store i64 %279, ptr %retval, align 8, !dbg !2938
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup435, !dbg !2938

cleanup435:                                       ; preds = %do.end432, %if.end426, %if.end417, %if.end386, %if.end335, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #8, !dbg !2939
  call void @llvm.lifetime.end.p0(i64 4, ptr %busy) #8, !dbg !2939
  call void @llvm.lifetime.end.p0(i64 4, ptr %rfin) #8, !dbg !2939
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #8, !dbg !2939
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #8, !dbg !2939
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #8, !dbg !2939
  %280 = load i64, ptr %retval, align 8, !dbg !2939
  ret i64 %280, !dbg !2939
}

; Function Attrs: nounwind uwtable
define internal i64 @hd_inflate_read_len(ptr noundef %inflater, ptr noundef %rfin, ptr noundef %in, ptr noundef %last, i64 noundef %prefix, i64 noundef %maxlen) #0 !dbg !2940 {
entry:
  %retval = alloca i64, align 8
  %inflater.addr = alloca ptr, align 8
  %rfin.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %last.addr = alloca ptr, align 8
  %prefix.addr = alloca i64, align 8
  %maxlen.addr = alloca i64, align 8
  %rv = alloca i64, align 8
  %out = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !2944, metadata !DIExpression()), !dbg !2952
  store ptr %rfin, ptr %rfin.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %rfin.addr, metadata !2945, metadata !DIExpression()), !dbg !2953
  store ptr %in, ptr %in.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !2946, metadata !DIExpression()), !dbg !2954
  store ptr %last, ptr %last.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !2947, metadata !DIExpression()), !dbg !2955
  store i64 %prefix, ptr %prefix.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !2948, metadata !DIExpression()), !dbg !2956
  store i64 %maxlen, ptr %maxlen.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %maxlen.addr, metadata !2949, metadata !DIExpression()), !dbg !2957
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #8, !dbg !2958
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !2950, metadata !DIExpression()), !dbg !2959
  call void @llvm.lifetime.start.p0(i64 4, ptr %out) #8, !dbg !2960
  tail call void @llvm.dbg.declare(metadata ptr %out, metadata !2951, metadata !DIExpression()), !dbg !2961
  %0 = load ptr, ptr %rfin.addr, align 8, !dbg !2962, !tbaa !612
  store i32 0, ptr %0, align 4, !dbg !2963, !tbaa !623
  %1 = load ptr, ptr %inflater.addr, align 8, !dbg !2964, !tbaa !612
  %shift = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %1, i32 0, i32 12, !dbg !2965
  %2 = load ptr, ptr %rfin.addr, align 8, !dbg !2966, !tbaa !612
  %3 = load ptr, ptr %inflater.addr, align 8, !dbg !2967, !tbaa !612
  %left = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %3, i32 0, i32 8, !dbg !2968
  %4 = load i64, ptr %left, align 8, !dbg !2968, !tbaa !1020
  %conv = trunc i64 %4 to i32, !dbg !2969
  %5 = load ptr, ptr %inflater.addr, align 8, !dbg !2970, !tbaa !612
  %shift1 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %5, i32 0, i32 12, !dbg !2971
  %6 = load i64, ptr %shift1, align 8, !dbg !2971, !tbaa !1024
  %7 = load ptr, ptr %in.addr, align 8, !dbg !2972, !tbaa !612
  %8 = load ptr, ptr %last.addr, align 8, !dbg !2973, !tbaa !612
  %9 = load i64, ptr %prefix.addr, align 8, !dbg !2974, !tbaa !788
  %call = call i64 @decode_length(ptr noundef %out, ptr noundef %shift, ptr noundef %2, i32 noundef %conv, i64 noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9), !dbg !2975
  store i64 %call, ptr %rv, align 8, !dbg !2976, !tbaa !788
  %10 = load i64, ptr %rv, align 8, !dbg !2977, !tbaa !788
  %cmp = icmp eq i64 %10, -1, !dbg !2979
  br i1 %cmp, label %if.then, label %if.end, !dbg !2980

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2981

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2983

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2983

do.end:                                           ; preds = %do.cond
  store i64 -523, ptr %retval, align 8, !dbg !2985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2985

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %out, align 4, !dbg !2986, !tbaa !623
  %conv3 = zext i32 %11 to i64, !dbg !2986
  %12 = load i64, ptr %maxlen.addr, align 8, !dbg !2988, !tbaa !788
  %cmp4 = icmp ugt i64 %conv3, %12, !dbg !2989
  br i1 %cmp4, label %if.then6, label %if.end10, !dbg !2990

if.then6:                                         ; preds = %if.end
  br label %do.body7, !dbg !2991

do.body7:                                         ; preds = %if.then6
  br label %do.cond8, !dbg !2993

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !2993

do.end9:                                          ; preds = %do.cond8
  store i64 -523, ptr %retval, align 8, !dbg !2995
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2995

if.end10:                                         ; preds = %if.end
  %13 = load i32, ptr %out, align 4, !dbg !2996, !tbaa !623
  %conv11 = zext i32 %13 to i64, !dbg !2996
  %14 = load ptr, ptr %inflater.addr, align 8, !dbg !2997, !tbaa !612
  %left12 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %14, i32 0, i32 8, !dbg !2998
  store i64 %conv11, ptr %left12, align 8, !dbg !2999, !tbaa !1020
  br label %do.body13, !dbg !3000

do.body13:                                        ; preds = %if.end10
  br label %do.cond14, !dbg !3001

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !3001

do.end15:                                         ; preds = %do.cond14
  %15 = load i64, ptr %rv, align 8, !dbg !3003, !tbaa !788
  store i64 %15, ptr %retval, align 8, !dbg !3004
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3004

cleanup:                                          ; preds = %do.end15, %do.end9, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %out) #8, !dbg !3005
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #8, !dbg !3005
  %16 = load i64, ptr %retval, align 8, !dbg !3005
  ret i64 %16, !dbg !3005
}

; Function Attrs: nounwind uwtable
define internal i64 @get_max_index(ptr noundef %context) #0 !dbg !3006 {
entry:
  %context.addr = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !3010, metadata !DIExpression()), !dbg !3011
  %0 = load ptr, ptr %context.addr, align 8, !dbg !3012, !tbaa !612
  %hd_table = getelementptr inbounds %struct.nghttp2_hd_context, ptr %0, i32 0, i32 0, !dbg !3013
  %len = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %hd_table, i32 0, i32 3, !dbg !3014
  %1 = load i64, ptr %len, align 8, !dbg !3014, !tbaa !1157
  %add = add i64 %1, 61, !dbg !3015
  ret i64 %add, !dbg !3016
}

; Function Attrs: nounwind uwtable
define internal void @hd_inflate_commit_indexed(ptr noundef %inflater, ptr noundef %nv_out) #0 !dbg !3017 {
entry:
  %inflater.addr = alloca ptr, align 8
  %nv_out.addr = alloca ptr, align 8
  %nv = alloca %struct.nghttp2_hd_nv, align 8
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !3021, metadata !DIExpression()), !dbg !3024
  store ptr %nv_out, ptr %nv_out.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv_out.addr, metadata !3022, metadata !DIExpression()), !dbg !3025
  call void @llvm.lifetime.start.p0(i64 24, ptr %nv) #8, !dbg !3026
  tail call void @llvm.dbg.declare(metadata ptr %nv, metadata !3023, metadata !DIExpression()), !dbg !3027
  %0 = load ptr, ptr %inflater.addr, align 8, !dbg !3028, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %0, i32 0, i32 0, !dbg !3029
  %1 = load ptr, ptr %inflater.addr, align 8, !dbg !3030, !tbaa !612
  %index = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %1, i32 0, i32 9, !dbg !3031
  %2 = load i64, ptr %index, align 8, !dbg !3031, !tbaa !1016
  call void @nghttp2_hd_table_get(ptr sret(%struct.nghttp2_hd_nv) align 8 %nv, ptr noundef %ctx, i64 noundef %2), !dbg !3032
  %3 = load ptr, ptr %nv_out.addr, align 8, !dbg !3033, !tbaa !612
  call void @emit_header(ptr noundef %3, ptr noundef %nv), !dbg !3034
  call void @llvm.lifetime.end.p0(i64 24, ptr %nv) #8, !dbg !3035
  ret void, !dbg !3035
}

; Function Attrs: nounwind uwtable
define internal void @hd_inflate_set_huffman_encoded(ptr noundef %inflater, ptr noundef %in) #0 !dbg !3036 {
entry:
  %inflater.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !3040, metadata !DIExpression()), !dbg !3042
  store ptr %in, ptr %in.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !3041, metadata !DIExpression()), !dbg !3043
  %0 = load ptr, ptr %in.addr, align 8, !dbg !3044, !tbaa !612
  %1 = load i8, ptr %0, align 1, !dbg !3045, !tbaa !625
  %conv = zext i8 %1 to i32, !dbg !3045
  %and = and i32 %conv, 128, !dbg !3046
  %cmp = icmp ne i32 %and, 0, !dbg !3047
  %conv1 = zext i1 %cmp to i32, !dbg !3047
  %conv2 = trunc i32 %conv1 to i8, !dbg !3048
  %2 = load ptr, ptr %inflater.addr, align 8, !dbg !3049, !tbaa !612
  %huffman_encoded = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %2, i32 0, i32 15, !dbg !3050
  store i8 %conv2, ptr %huffman_encoded, align 8, !dbg !3051, !tbaa !1012
  ret void, !dbg !3052
}

declare !dbg !3053 void @nghttp2_hd_huff_decode_context_init(ptr noundef) #2

declare !dbg !3057 i32 @nghttp2_rcbuf_new(ptr noundef, i64 noundef, ptr noundef) #2

declare !dbg !3061 void @nghttp2_buf_wrap_init(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @hd_inflate_read_huff(ptr noundef %inflater, ptr noundef %buf, ptr noundef %in, ptr noundef %last) #0 !dbg !3064 {
entry:
  %retval = alloca i64, align 8
  %inflater.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %last.addr = alloca ptr, align 8
  %readlen = alloca i64, align 8
  %fin = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !3068, metadata !DIExpression()), !dbg !3074
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3069, metadata !DIExpression()), !dbg !3075
  store ptr %in, ptr %in.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !3070, metadata !DIExpression()), !dbg !3076
  store ptr %last, ptr %last.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !3071, metadata !DIExpression()), !dbg !3077
  call void @llvm.lifetime.start.p0(i64 8, ptr %readlen) #8, !dbg !3078
  tail call void @llvm.dbg.declare(metadata ptr %readlen, metadata !3072, metadata !DIExpression()), !dbg !3079
  call void @llvm.lifetime.start.p0(i64 4, ptr %fin) #8, !dbg !3080
  tail call void @llvm.dbg.declare(metadata ptr %fin, metadata !3073, metadata !DIExpression()), !dbg !3081
  store i32 0, ptr %fin, align 4, !dbg !3081, !tbaa !623
  %0 = load ptr, ptr %last.addr, align 8, !dbg !3082, !tbaa !612
  %1 = load ptr, ptr %in.addr, align 8, !dbg !3084, !tbaa !612
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !3085
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64, !dbg !3085
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3085
  %2 = load ptr, ptr %inflater.addr, align 8, !dbg !3086, !tbaa !612
  %left = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %2, i32 0, i32 8, !dbg !3087
  %3 = load i64, ptr %left, align 8, !dbg !3087, !tbaa !1020
  %cmp = icmp uge i64 %sub.ptr.sub, %3, !dbg !3088
  br i1 %cmp, label %if.then, label %if.end, !dbg !3089

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %in.addr, align 8, !dbg !3090, !tbaa !612
  %5 = load ptr, ptr %inflater.addr, align 8, !dbg !3092, !tbaa !612
  %left1 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %5, i32 0, i32 8, !dbg !3093
  %6 = load i64, ptr %left1, align 8, !dbg !3093, !tbaa !1020
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %6, !dbg !3094
  store ptr %add.ptr, ptr %last.addr, align 8, !dbg !3095, !tbaa !612
  store i32 1, ptr %fin, align 4, !dbg !3096, !tbaa !623
  br label %if.end, !dbg !3097

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %inflater.addr, align 8, !dbg !3098, !tbaa !612
  %huff_decode_ctx = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %7, i32 0, i32 1, !dbg !3099
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !3100, !tbaa !612
  %9 = load ptr, ptr %in.addr, align 8, !dbg !3101, !tbaa !612
  %10 = load ptr, ptr %last.addr, align 8, !dbg !3102, !tbaa !612
  %11 = load ptr, ptr %in.addr, align 8, !dbg !3103, !tbaa !612
  %sub.ptr.lhs.cast2 = ptrtoint ptr %10 to i64, !dbg !3104
  %sub.ptr.rhs.cast3 = ptrtoint ptr %11 to i64, !dbg !3104
  %sub.ptr.sub4 = sub i64 %sub.ptr.lhs.cast2, %sub.ptr.rhs.cast3, !dbg !3104
  %12 = load i32, ptr %fin, align 4, !dbg !3105, !tbaa !623
  %call = call i64 @nghttp2_hd_huff_decode(ptr noundef %huff_decode_ctx, ptr noundef %8, ptr noundef %9, i64 noundef %sub.ptr.sub4, i32 noundef %12), !dbg !3106
  store i64 %call, ptr %readlen, align 8, !dbg !3107, !tbaa !788
  %13 = load i64, ptr %readlen, align 8, !dbg !3108, !tbaa !788
  %cmp5 = icmp slt i64 %13, 0, !dbg !3110
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !3111

if.then6:                                         ; preds = %if.end
  br label %do.body, !dbg !3112

do.body:                                          ; preds = %if.then6
  br label %do.cond, !dbg !3114

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3114

do.end:                                           ; preds = %do.cond
  %14 = load i64, ptr %readlen, align 8, !dbg !3116, !tbaa !788
  store i64 %14, ptr %retval, align 8, !dbg !3117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3117

if.end7:                                          ; preds = %if.end
  %15 = load ptr, ptr %inflater.addr, align 8, !dbg !3118, !tbaa !612
  %huff_decode_ctx8 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %15, i32 0, i32 1, !dbg !3120
  %call9 = call i32 @nghttp2_hd_huff_decode_failure_state(ptr noundef %huff_decode_ctx8), !dbg !3121
  %tobool = icmp ne i32 %call9, 0, !dbg !3121
  br i1 %tobool, label %if.then10, label %if.end14, !dbg !3122

if.then10:                                        ; preds = %if.end7
  br label %do.body11, !dbg !3123

do.body11:                                        ; preds = %if.then10
  br label %do.cond12, !dbg !3125

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !3125

do.end13:                                         ; preds = %do.cond12
  store i64 -523, ptr %retval, align 8, !dbg !3127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3127

if.end14:                                         ; preds = %if.end7
  %16 = load i64, ptr %readlen, align 8, !dbg !3128, !tbaa !788
  %17 = load ptr, ptr %inflater.addr, align 8, !dbg !3129, !tbaa !612
  %left15 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %17, i32 0, i32 8, !dbg !3130
  %18 = load i64, ptr %left15, align 8, !dbg !3131, !tbaa !1020
  %sub = sub i64 %18, %16, !dbg !3131
  store i64 %sub, ptr %left15, align 8, !dbg !3131, !tbaa !1020
  %19 = load i64, ptr %readlen, align 8, !dbg !3132, !tbaa !788
  store i64 %19, ptr %retval, align 8, !dbg !3133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3133

cleanup:                                          ; preds = %if.end14, %do.end13, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %fin) #8, !dbg !3134
  call void @llvm.lifetime.end.p0(i64 8, ptr %readlen) #8, !dbg !3134
  %20 = load i64, ptr %retval, align 8, !dbg !3134
  ret i64 %20, !dbg !3134
}

; Function Attrs: nounwind uwtable
define internal i64 @hd_inflate_read(ptr noundef %inflater, ptr noundef %buf, ptr noundef %in, ptr noundef %last) #0 !dbg !3135 {
entry:
  %inflater.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %last.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !3137, metadata !DIExpression()), !dbg !3142
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3138, metadata !DIExpression()), !dbg !3143
  store ptr %in, ptr %in.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !3139, metadata !DIExpression()), !dbg !3144
  store ptr %last, ptr %last.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !3140, metadata !DIExpression()), !dbg !3145
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8, !dbg !3146
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !3141, metadata !DIExpression()), !dbg !3147
  %0 = load ptr, ptr %last.addr, align 8, !dbg !3148, !tbaa !612
  %1 = load ptr, ptr %in.addr, align 8, !dbg !3148, !tbaa !612
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !3148
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64, !dbg !3148
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3148
  %2 = load ptr, ptr %inflater.addr, align 8, !dbg !3148, !tbaa !612
  %left = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %2, i32 0, i32 8, !dbg !3148
  %3 = load i64, ptr %left, align 8, !dbg !3148, !tbaa !1020
  %cmp = icmp ult i64 %sub.ptr.sub, %3, !dbg !3148
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3148

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %last.addr, align 8, !dbg !3148, !tbaa !612
  %5 = load ptr, ptr %in.addr, align 8, !dbg !3148, !tbaa !612
  %sub.ptr.lhs.cast1 = ptrtoint ptr %4 to i64, !dbg !3148
  %sub.ptr.rhs.cast2 = ptrtoint ptr %5 to i64, !dbg !3148
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2, !dbg !3148
  br label %cond.end, !dbg !3148

cond.false:                                       ; preds = %entry
  %6 = load ptr, ptr %inflater.addr, align 8, !dbg !3148, !tbaa !612
  %left4 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %6, i32 0, i32 8, !dbg !3148
  %7 = load i64, ptr %left4, align 8, !dbg !3148, !tbaa !1020
  br label %cond.end, !dbg !3148

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub3, %cond.true ], [ %7, %cond.false ], !dbg !3148
  store i64 %cond, ptr %len, align 8, !dbg !3147, !tbaa !788
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !3149, !tbaa !612
  %last5 = getelementptr inbounds %struct.nghttp2_buf, ptr %8, i32 0, i32 3, !dbg !3150
  %9 = load ptr, ptr %last5, align 8, !dbg !3150, !tbaa !3151
  %10 = load ptr, ptr %in.addr, align 8, !dbg !3152, !tbaa !612
  %11 = load i64, ptr %len, align 8, !dbg !3153, !tbaa !788
  %call = call ptr @nghttp2_cpymem(ptr noundef %9, ptr noundef %10, i64 noundef %11), !dbg !3154
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !3155, !tbaa !612
  %last6 = getelementptr inbounds %struct.nghttp2_buf, ptr %12, i32 0, i32 3, !dbg !3156
  store ptr %call, ptr %last6, align 8, !dbg !3157, !tbaa !3151
  %13 = load i64, ptr %len, align 8, !dbg !3158, !tbaa !788
  %14 = load ptr, ptr %inflater.addr, align 8, !dbg !3159, !tbaa !612
  %left7 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %14, i32 0, i32 8, !dbg !3160
  %15 = load i64, ptr %left7, align 8, !dbg !3161, !tbaa !1020
  %sub = sub i64 %15, %13, !dbg !3161
  store i64 %sub, ptr %left7, align 8, !dbg !3161, !tbaa !1020
  %16 = load i64, ptr %len, align 8, !dbg !3162, !tbaa !788
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8, !dbg !3163
  ret i64 %16, !dbg !3164
}

; Function Attrs: nounwind uwtable
define internal i32 @hd_inflate_commit_newname(ptr noundef %inflater, ptr noundef %nv_out) #0 !dbg !3165 {
entry:
  %retval = alloca i32, align 4
  %inflater.addr = alloca ptr, align 8
  %nv_out.addr = alloca ptr, align 8
  %nv = alloca %struct.nghttp2_hd_nv, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !3169, metadata !DIExpression()), !dbg !3173
  store ptr %nv_out, ptr %nv_out.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv_out.addr, metadata !3170, metadata !DIExpression()), !dbg !3174
  call void @llvm.lifetime.start.p0(i64 24, ptr %nv) #8, !dbg !3175
  tail call void @llvm.dbg.declare(metadata ptr %nv, metadata !3171, metadata !DIExpression()), !dbg !3176
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !3177
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !3172, metadata !DIExpression()), !dbg !3178
  %0 = load ptr, ptr %inflater.addr, align 8, !dbg !3179, !tbaa !612
  %no_index = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %0, i32 0, i32 17, !dbg !3181
  %1 = load i8, ptr %no_index, align 2, !dbg !3181, !tbaa !1032
  %tobool = icmp ne i8 %1, 0, !dbg !3179
  br i1 %tobool, label %if.then, label %if.else, !dbg !3182

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv, i32 0, i32 3, !dbg !3183
  store i8 1, ptr %flags, align 4, !dbg !3185, !tbaa !669
  br label %if.end, !dbg !3186

if.else:                                          ; preds = %entry
  %flags1 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv, i32 0, i32 3, !dbg !3187
  store i8 0, ptr %flags1, align 4, !dbg !3189, !tbaa !669
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load ptr, ptr %inflater.addr, align 8, !dbg !3190, !tbaa !612
  %namercbuf = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %2, i32 0, i32 4, !dbg !3191
  %3 = load ptr, ptr %namercbuf, align 8, !dbg !3191, !tbaa !1004
  %name = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv, i32 0, i32 0, !dbg !3192
  store ptr %3, ptr %name, align 8, !dbg !3193, !tbaa !628
  %4 = load ptr, ptr %inflater.addr, align 8, !dbg !3194, !tbaa !612
  %valuercbuf = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %4, i32 0, i32 5, !dbg !3195
  %5 = load ptr, ptr %valuercbuf, align 8, !dbg !3195, !tbaa !1008
  %value = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv, i32 0, i32 1, !dbg !3196
  store ptr %5, ptr %value, align 8, !dbg !3197, !tbaa !652
  %6 = load ptr, ptr %inflater.addr, align 8, !dbg !3198, !tbaa !612
  %namercbuf2 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %6, i32 0, i32 4, !dbg !3199
  %7 = load ptr, ptr %namercbuf2, align 8, !dbg !3199, !tbaa !1004
  %base = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %7, i32 0, i32 2, !dbg !3200
  %8 = load ptr, ptr %base, align 8, !dbg !3200, !tbaa !631
  %9 = load ptr, ptr %inflater.addr, align 8, !dbg !3201, !tbaa !612
  %namercbuf3 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %9, i32 0, i32 4, !dbg !3202
  %10 = load ptr, ptr %namercbuf3, align 8, !dbg !3202, !tbaa !1004
  %len = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %10, i32 0, i32 3, !dbg !3203
  %11 = load i64, ptr %len, align 8, !dbg !3203, !tbaa !644
  %call = call i32 @lookup_token(ptr noundef %8, i64 noundef %11), !dbg !3204
  %token = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv, i32 0, i32 2, !dbg !3205
  store i32 %call, ptr %token, align 8, !dbg !3206, !tbaa !1291
  %12 = load ptr, ptr %inflater.addr, align 8, !dbg !3207, !tbaa !612
  %index_required = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %12, i32 0, i32 16, !dbg !3209
  %13 = load i8, ptr %index_required, align 1, !dbg !3209, !tbaa !1028
  %tobool4 = icmp ne i8 %13, 0, !dbg !3207
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !3210

if.then5:                                         ; preds = %if.end
  %14 = load ptr, ptr %inflater.addr, align 8, !dbg !3211, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %14, i32 0, i32 0, !dbg !3213
  %call6 = call i32 @add_hd_table_incremental(ptr noundef %ctx, ptr noundef %nv, ptr noundef null, i32 noundef 0), !dbg !3214
  store i32 %call6, ptr %rv, align 4, !dbg !3215, !tbaa !623
  %15 = load i32, ptr %rv, align 4, !dbg !3216, !tbaa !623
  %cmp = icmp ne i32 %15, 0, !dbg !3218
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !3219

if.then7:                                         ; preds = %if.then5
  %16 = load i32, ptr %rv, align 4, !dbg !3220, !tbaa !623
  store i32 %16, ptr %retval, align 4, !dbg !3222
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3222

if.end8:                                          ; preds = %if.then5
  br label %if.end9, !dbg !3223

if.end9:                                          ; preds = %if.end8, %if.end
  %17 = load ptr, ptr %nv_out.addr, align 8, !dbg !3224, !tbaa !612
  call void @emit_header(ptr noundef %17, ptr noundef %nv), !dbg !3225
  %name10 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv, i32 0, i32 0, !dbg !3226
  %18 = load ptr, ptr %name10, align 8, !dbg !3226, !tbaa !628
  %19 = load ptr, ptr %inflater.addr, align 8, !dbg !3227, !tbaa !612
  %nv_name_keep = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %19, i32 0, i32 6, !dbg !3228
  store ptr %18, ptr %nv_name_keep, align 8, !dbg !3229, !tbaa !982
  %value11 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv, i32 0, i32 1, !dbg !3230
  %20 = load ptr, ptr %value11, align 8, !dbg !3230, !tbaa !652
  %21 = load ptr, ptr %inflater.addr, align 8, !dbg !3231, !tbaa !612
  %nv_value_keep = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %21, i32 0, i32 7, !dbg !3232
  store ptr %20, ptr %nv_value_keep, align 8, !dbg !3233, !tbaa !986
  %22 = load ptr, ptr %inflater.addr, align 8, !dbg !3234, !tbaa !612
  %namercbuf12 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %22, i32 0, i32 4, !dbg !3235
  store ptr null, ptr %namercbuf12, align 8, !dbg !3236, !tbaa !1004
  %23 = load ptr, ptr %inflater.addr, align 8, !dbg !3237, !tbaa !612
  %valuercbuf13 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %23, i32 0, i32 5, !dbg !3238
  store ptr null, ptr %valuercbuf13, align 8, !dbg !3239, !tbaa !1008
  store i32 0, ptr %retval, align 4, !dbg !3240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3240

cleanup:                                          ; preds = %if.end9, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !3241
  call void @llvm.lifetime.end.p0(i64 24, ptr %nv) #8, !dbg !3241
  %24 = load i32, ptr %retval, align 4, !dbg !3241
  ret i32 %24, !dbg !3241
}

; Function Attrs: nounwind uwtable
define internal i32 @hd_inflate_commit_indname(ptr noundef %inflater, ptr noundef %nv_out) #0 !dbg !3242 {
entry:
  %retval = alloca i32, align 4
  %inflater.addr = alloca ptr, align 8
  %nv_out.addr = alloca ptr, align 8
  %nv = alloca %struct.nghttp2_hd_nv, align 8
  %rv = alloca i32, align 4
  %tmp = alloca %struct.nghttp2_hd_nv, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !3244, metadata !DIExpression()), !dbg !3248
  store ptr %nv_out, ptr %nv_out.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv_out.addr, metadata !3245, metadata !DIExpression()), !dbg !3249
  call void @llvm.lifetime.start.p0(i64 24, ptr %nv) #8, !dbg !3250
  tail call void @llvm.dbg.declare(metadata ptr %nv, metadata !3246, metadata !DIExpression()), !dbg !3251
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !3252
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !3247, metadata !DIExpression()), !dbg !3253
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp) #8, !dbg !3254
  %0 = load ptr, ptr %inflater.addr, align 8, !dbg !3255, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %0, i32 0, i32 0, !dbg !3256
  %1 = load ptr, ptr %inflater.addr, align 8, !dbg !3257, !tbaa !612
  %index = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %1, i32 0, i32 9, !dbg !3258
  %2 = load i64, ptr %index, align 8, !dbg !3258, !tbaa !1016
  call void @nghttp2_hd_table_get(ptr sret(%struct.nghttp2_hd_nv) align 8 %tmp, ptr noundef %ctx, i64 noundef %2), !dbg !3254
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %nv, ptr align 8 %tmp, i64 24, i1 false), !dbg !3254, !tbaa.struct !622
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp) #8, !dbg !3254
  %3 = load ptr, ptr %inflater.addr, align 8, !dbg !3259, !tbaa !612
  %no_index = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %3, i32 0, i32 17, !dbg !3261
  %4 = load i8, ptr %no_index, align 2, !dbg !3261, !tbaa !1032
  %tobool = icmp ne i8 %4, 0, !dbg !3259
  br i1 %tobool, label %if.then, label %if.else, !dbg !3262

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv, i32 0, i32 3, !dbg !3263
  store i8 1, ptr %flags, align 4, !dbg !3265, !tbaa !669
  br label %if.end, !dbg !3266

if.else:                                          ; preds = %entry
  %flags1 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv, i32 0, i32 3, !dbg !3267
  store i8 0, ptr %flags1, align 4, !dbg !3269, !tbaa !669
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %name = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv, i32 0, i32 0, !dbg !3270
  %5 = load ptr, ptr %name, align 8, !dbg !3270, !tbaa !628
  call void @nghttp2_rcbuf_incref(ptr noundef %5), !dbg !3271
  %6 = load ptr, ptr %inflater.addr, align 8, !dbg !3272, !tbaa !612
  %valuercbuf = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %6, i32 0, i32 5, !dbg !3273
  %7 = load ptr, ptr %valuercbuf, align 8, !dbg !3273, !tbaa !1008
  %value = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv, i32 0, i32 1, !dbg !3274
  store ptr %7, ptr %value, align 8, !dbg !3275, !tbaa !652
  %8 = load ptr, ptr %inflater.addr, align 8, !dbg !3276, !tbaa !612
  %index_required = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %8, i32 0, i32 16, !dbg !3278
  %9 = load i8, ptr %index_required, align 1, !dbg !3278, !tbaa !1028
  %tobool2 = icmp ne i8 %9, 0, !dbg !3276
  br i1 %tobool2, label %if.then3, label %if.end8, !dbg !3279

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %inflater.addr, align 8, !dbg !3280, !tbaa !612
  %ctx4 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %10, i32 0, i32 0, !dbg !3282
  %call = call i32 @add_hd_table_incremental(ptr noundef %ctx4, ptr noundef %nv, ptr noundef null, i32 noundef 0), !dbg !3283
  store i32 %call, ptr %rv, align 4, !dbg !3284, !tbaa !623
  %11 = load i32, ptr %rv, align 4, !dbg !3285, !tbaa !623
  %cmp = icmp ne i32 %11, 0, !dbg !3287
  br i1 %cmp, label %if.then5, label %if.end7, !dbg !3288

if.then5:                                         ; preds = %if.then3
  %name6 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv, i32 0, i32 0, !dbg !3289
  %12 = load ptr, ptr %name6, align 8, !dbg !3289, !tbaa !628
  call void @nghttp2_rcbuf_decref(ptr noundef %12), !dbg !3291
  store i32 -901, ptr %retval, align 4, !dbg !3292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3292

if.end7:                                          ; preds = %if.then3
  br label %if.end8, !dbg !3293

if.end8:                                          ; preds = %if.end7, %if.end
  %13 = load ptr, ptr %nv_out.addr, align 8, !dbg !3294, !tbaa !612
  call void @emit_header(ptr noundef %13, ptr noundef %nv), !dbg !3295
  %name9 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv, i32 0, i32 0, !dbg !3296
  %14 = load ptr, ptr %name9, align 8, !dbg !3296, !tbaa !628
  %15 = load ptr, ptr %inflater.addr, align 8, !dbg !3297, !tbaa !612
  %nv_name_keep = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %15, i32 0, i32 6, !dbg !3298
  store ptr %14, ptr %nv_name_keep, align 8, !dbg !3299, !tbaa !982
  %value10 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv, i32 0, i32 1, !dbg !3300
  %16 = load ptr, ptr %value10, align 8, !dbg !3300, !tbaa !652
  %17 = load ptr, ptr %inflater.addr, align 8, !dbg !3301, !tbaa !612
  %nv_value_keep = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %17, i32 0, i32 7, !dbg !3302
  store ptr %16, ptr %nv_value_keep, align 8, !dbg !3303, !tbaa !986
  %18 = load ptr, ptr %inflater.addr, align 8, !dbg !3304, !tbaa !612
  %valuercbuf11 = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %18, i32 0, i32 5, !dbg !3305
  store ptr null, ptr %valuercbuf11, align 8, !dbg !3306, !tbaa !1008
  store i32 0, ptr %retval, align 4, !dbg !3307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3307

cleanup:                                          ; preds = %if.end8, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !3308
  call void @llvm.lifetime.end.p0(i64 24, ptr %nv) #8, !dbg !3308
  %19 = load i32, ptr %retval, align 4, !dbg !3308
  ret i32 %19, !dbg !3308
}

; Function Attrs: nounwind uwtable
define i32 @nghttp2_hd_inflate_end_headers(ptr noundef %inflater) #0 !dbg !3309 {
entry:
  %inflater.addr = alloca ptr, align 8
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !3313, metadata !DIExpression()), !dbg !3314
  %0 = load ptr, ptr %inflater.addr, align 8, !dbg !3315, !tbaa !612
  call void @hd_inflate_keep_free(ptr noundef %0), !dbg !3316
  %1 = load ptr, ptr %inflater.addr, align 8, !dbg !3317, !tbaa !612
  %state = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %1, i32 0, i32 14, !dbg !3318
  store i32 1, ptr %state, align 4, !dbg !3319, !tbaa !994
  ret i32 0, !dbg !3320
}

; Function Attrs: nounwind uwtable
define i32 @nghttp2_hd_inflate_new(ptr noundef %inflater_ptr) #0 !dbg !3321 {
entry:
  %inflater_ptr.addr = alloca ptr, align 8
  store ptr %inflater_ptr, ptr %inflater_ptr.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater_ptr.addr, metadata !3326, metadata !DIExpression()), !dbg !3327
  %0 = load ptr, ptr %inflater_ptr.addr, align 8, !dbg !3328, !tbaa !612
  %call = call i32 @nghttp2_hd_inflate_new2(ptr noundef %0, ptr noundef null), !dbg !3329
  ret i32 %call, !dbg !3330
}

; Function Attrs: nounwind uwtable
define i32 @nghttp2_hd_inflate_new2(ptr noundef %inflater_ptr, ptr noundef %mem) #0 !dbg !3331 {
entry:
  %retval = alloca i32, align 4
  %inflater_ptr.addr = alloca ptr, align 8
  %mem.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %inflater = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inflater_ptr, ptr %inflater_ptr.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater_ptr.addr, metadata !3335, metadata !DIExpression()), !dbg !3339
  store ptr %mem, ptr %mem.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !3336, metadata !DIExpression()), !dbg !3340
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !3341
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !3337, metadata !DIExpression()), !dbg !3342
  call void @llvm.lifetime.start.p0(i64 8, ptr %inflater) #8, !dbg !3343
  tail call void @llvm.dbg.declare(metadata ptr %inflater, metadata !3338, metadata !DIExpression()), !dbg !3344
  %0 = load ptr, ptr %mem.addr, align 8, !dbg !3345, !tbaa !612
  %cmp = icmp eq ptr %0, null, !dbg !3347
  br i1 %cmp, label %if.then, label %if.end, !dbg !3348

if.then:                                          ; preds = %entry
  %call = call ptr @nghttp2_mem_default(), !dbg !3349
  store ptr %call, ptr %mem.addr, align 8, !dbg !3351, !tbaa !612
  br label %if.end, !dbg !3352

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %mem.addr, align 8, !dbg !3353, !tbaa !612
  %call1 = call ptr @nghttp2_mem_malloc(ptr noundef %1, i64 noundef 240), !dbg !3354
  store ptr %call1, ptr %inflater, align 8, !dbg !3355, !tbaa !612
  %2 = load ptr, ptr %inflater, align 8, !dbg !3356, !tbaa !612
  %cmp2 = icmp eq ptr %2, null, !dbg !3358
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !3359

if.then3:                                         ; preds = %if.end
  store i32 -901, ptr %retval, align 4, !dbg !3360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3360

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %inflater, align 8, !dbg !3362, !tbaa !612
  %4 = load ptr, ptr %mem.addr, align 8, !dbg !3363, !tbaa !612
  %call5 = call i32 @nghttp2_hd_inflate_init(ptr noundef %3, ptr noundef %4), !dbg !3364
  store i32 %call5, ptr %rv, align 4, !dbg !3365, !tbaa !623
  %5 = load i32, ptr %rv, align 4, !dbg !3366, !tbaa !623
  %cmp6 = icmp ne i32 %5, 0, !dbg !3368
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !3369

if.then7:                                         ; preds = %if.end4
  %6 = load ptr, ptr %mem.addr, align 8, !dbg !3370, !tbaa !612
  %7 = load ptr, ptr %inflater, align 8, !dbg !3372, !tbaa !612
  call void @nghttp2_mem_free(ptr noundef %6, ptr noundef %7), !dbg !3373
  %8 = load i32, ptr %rv, align 4, !dbg !3374, !tbaa !623
  store i32 %8, ptr %retval, align 4, !dbg !3375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3375

if.end8:                                          ; preds = %if.end4
  %9 = load ptr, ptr %inflater, align 8, !dbg !3376, !tbaa !612
  %10 = load ptr, ptr %inflater_ptr.addr, align 8, !dbg !3377, !tbaa !612
  store ptr %9, ptr %10, align 8, !dbg !3378, !tbaa !612
  store i32 0, ptr %retval, align 4, !dbg !3379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3379

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %inflater) #8, !dbg !3380
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !3380
  %11 = load i32, ptr %retval, align 4, !dbg !3380
  ret i32 %11, !dbg !3380
}

; Function Attrs: nounwind uwtable
define void @nghttp2_hd_inflate_del(ptr noundef %inflater) #0 !dbg !3381 {
entry:
  %inflater.addr = alloca ptr, align 8
  %mem = alloca ptr, align 8
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !3383, metadata !DIExpression()), !dbg !3385
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #8, !dbg !3386
  tail call void @llvm.dbg.declare(metadata ptr %mem, metadata !3384, metadata !DIExpression()), !dbg !3387
  %0 = load ptr, ptr %inflater.addr, align 8, !dbg !3388, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %0, i32 0, i32 0, !dbg !3389
  %mem1 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx, i32 0, i32 1, !dbg !3390
  %1 = load ptr, ptr %mem1, align 8, !dbg !3390, !tbaa !2196
  store ptr %1, ptr %mem, align 8, !dbg !3391, !tbaa !612
  %2 = load ptr, ptr %inflater.addr, align 8, !dbg !3392, !tbaa !612
  call void @nghttp2_hd_inflate_free(ptr noundef %2), !dbg !3393
  %3 = load ptr, ptr %mem, align 8, !dbg !3394, !tbaa !612
  %4 = load ptr, ptr %inflater.addr, align 8, !dbg !3395, !tbaa !612
  call void @nghttp2_mem_free(ptr noundef %3, ptr noundef %4), !dbg !3396
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #8, !dbg !3397
  ret void, !dbg !3397
}

; Function Attrs: nounwind uwtable
define hidden i32 @nghttp2_hd_emit_indname_block(ptr noundef %bufs, i64 noundef %idx, ptr noundef %nv, i32 noundef %indexing_mode) #0 !dbg !3398 {
entry:
  %bufs.addr = alloca ptr, align 8
  %idx.addr = alloca i64, align 8
  %nv.addr = alloca ptr, align 8
  %indexing_mode.addr = alloca i32, align 4
  store ptr %bufs, ptr %bufs.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %bufs.addr, metadata !3402, metadata !DIExpression()), !dbg !3406
  store i64 %idx, ptr %idx.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !3403, metadata !DIExpression()), !dbg !3407
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv.addr, metadata !3404, metadata !DIExpression()), !dbg !3408
  store i32 %indexing_mode, ptr %indexing_mode.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %indexing_mode.addr, metadata !3405, metadata !DIExpression()), !dbg !3409
  %0 = load ptr, ptr %bufs.addr, align 8, !dbg !3410, !tbaa !612
  %1 = load i64, ptr %idx.addr, align 8, !dbg !3411, !tbaa !788
  %2 = load ptr, ptr %nv.addr, align 8, !dbg !3412, !tbaa !612
  %3 = load i32, ptr %indexing_mode.addr, align 4, !dbg !3413, !tbaa !623
  %call = call i32 @emit_indname_block(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3), !dbg !3414
  ret i32 %call, !dbg !3415
}

; Function Attrs: nounwind uwtable
define internal i32 @emit_indname_block(ptr noundef %bufs, i64 noundef %idx, ptr noundef %nv, i32 noundef %indexing_mode) #0 !dbg !3416 {
entry:
  %retval = alloca i32, align 4
  %bufs.addr = alloca ptr, align 8
  %idx.addr = alloca i64, align 8
  %nv.addr = alloca ptr, align 8
  %indexing_mode.addr = alloca i32, align 4
  %rv = alloca i32, align 4
  %bufp = alloca ptr, align 8
  %blocklen = alloca i64, align 8
  %sb = alloca [16 x i8], align 16
  %prefixlen = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bufs, ptr %bufs.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %bufs.addr, metadata !3420, metadata !DIExpression()), !dbg !3429
  store i64 %idx, ptr %idx.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !3421, metadata !DIExpression()), !dbg !3430
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv.addr, metadata !3422, metadata !DIExpression()), !dbg !3431
  store i32 %indexing_mode, ptr %indexing_mode.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %indexing_mode.addr, metadata !3423, metadata !DIExpression()), !dbg !3432
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !3433
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !3424, metadata !DIExpression()), !dbg !3434
  call void @llvm.lifetime.start.p0(i64 8, ptr %bufp) #8, !dbg !3435
  tail call void @llvm.dbg.declare(metadata ptr %bufp, metadata !3425, metadata !DIExpression()), !dbg !3436
  call void @llvm.lifetime.start.p0(i64 8, ptr %blocklen) #8, !dbg !3437
  tail call void @llvm.dbg.declare(metadata ptr %blocklen, metadata !3426, metadata !DIExpression()), !dbg !3438
  call void @llvm.lifetime.start.p0(i64 16, ptr %sb) #8, !dbg !3439
  tail call void @llvm.dbg.declare(metadata ptr %sb, metadata !3427, metadata !DIExpression()), !dbg !3440
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefixlen) #8, !dbg !3441
  tail call void @llvm.dbg.declare(metadata ptr %prefixlen, metadata !3428, metadata !DIExpression()), !dbg !3442
  %0 = load i32, ptr %indexing_mode.addr, align 4, !dbg !3443, !tbaa !623
  %cmp = icmp eq i32 %0, 0, !dbg !3445
  br i1 %cmp, label %if.then, label %if.else, !dbg !3446

if.then:                                          ; preds = %entry
  store i64 6, ptr %prefixlen, align 8, !dbg !3447, !tbaa !788
  br label %if.end, !dbg !3449

if.else:                                          ; preds = %entry
  store i64 4, ptr %prefixlen, align 8, !dbg !3450, !tbaa !788
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body, !dbg !3452

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !3453

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3453

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %idx.addr, align 8, !dbg !3455, !tbaa !788
  %add = add i64 %1, 1, !dbg !3456
  %2 = load i64, ptr %prefixlen, align 8, !dbg !3457, !tbaa !788
  %call = call i64 @count_encoded_length(i64 noundef %add, i64 noundef %2), !dbg !3458
  store i64 %call, ptr %blocklen, align 8, !dbg !3459, !tbaa !788
  %3 = load i64, ptr %blocklen, align 8, !dbg !3460, !tbaa !788
  %cmp1 = icmp ult i64 16, %3, !dbg !3462
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3463

if.then2:                                         ; preds = %do.end
  store i32 -523, ptr %retval, align 4, !dbg !3464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3464

if.end3:                                          ; preds = %do.end
  %arraydecay = getelementptr inbounds [16 x i8], ptr %sb, i64 0, i64 0, !dbg !3466
  store ptr %arraydecay, ptr %bufp, align 8, !dbg !3467, !tbaa !612
  %4 = load i32, ptr %indexing_mode.addr, align 4, !dbg !3468, !tbaa !623
  %call4 = call zeroext i8 @pack_first_byte(i32 noundef %4), !dbg !3469
  %5 = load ptr, ptr %bufp, align 8, !dbg !3470, !tbaa !612
  store i8 %call4, ptr %5, align 1, !dbg !3471, !tbaa !625
  %6 = load ptr, ptr %bufp, align 8, !dbg !3472, !tbaa !612
  %7 = load i64, ptr %idx.addr, align 8, !dbg !3473, !tbaa !788
  %add5 = add i64 %7, 1, !dbg !3474
  %8 = load i64, ptr %prefixlen, align 8, !dbg !3475, !tbaa !788
  %call6 = call i64 @encode_length(ptr noundef %6, i64 noundef %add5, i64 noundef %8), !dbg !3476
  %9 = load ptr, ptr %bufs.addr, align 8, !dbg !3477, !tbaa !612
  %arraydecay7 = getelementptr inbounds [16 x i8], ptr %sb, i64 0, i64 0, !dbg !3478
  %10 = load i64, ptr %blocklen, align 8, !dbg !3479, !tbaa !788
  %call8 = call i32 @nghttp2_bufs_add(ptr noundef %9, ptr noundef %arraydecay7, i64 noundef %10), !dbg !3480
  store i32 %call8, ptr %rv, align 4, !dbg !3481, !tbaa !623
  %11 = load i32, ptr %rv, align 4, !dbg !3482, !tbaa !623
  %cmp9 = icmp ne i32 %11, 0, !dbg !3484
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3485

if.then10:                                        ; preds = %if.end3
  %12 = load i32, ptr %rv, align 4, !dbg !3486, !tbaa !623
  store i32 %12, ptr %retval, align 4, !dbg !3488
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3488

if.end11:                                         ; preds = %if.end3
  %13 = load ptr, ptr %bufs.addr, align 8, !dbg !3489, !tbaa !612
  %14 = load ptr, ptr %nv.addr, align 8, !dbg !3490, !tbaa !612
  %value = getelementptr inbounds %struct.nghttp2_nv, ptr %14, i32 0, i32 1, !dbg !3491
  %15 = load ptr, ptr %value, align 8, !dbg !3491, !tbaa !1696
  %16 = load ptr, ptr %nv.addr, align 8, !dbg !3492, !tbaa !612
  %valuelen = getelementptr inbounds %struct.nghttp2_nv, ptr %16, i32 0, i32 3, !dbg !3493
  %17 = load i64, ptr %valuelen, align 8, !dbg !3493, !tbaa !1601
  %call12 = call i32 @emit_string(ptr noundef %13, ptr noundef %15, i64 noundef %17), !dbg !3494
  store i32 %call12, ptr %rv, align 4, !dbg !3495, !tbaa !623
  %18 = load i32, ptr %rv, align 4, !dbg !3496, !tbaa !623
  %cmp13 = icmp ne i32 %18, 0, !dbg !3498
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !3499

if.then14:                                        ; preds = %if.end11
  %19 = load i32, ptr %rv, align 4, !dbg !3500, !tbaa !623
  store i32 %19, ptr %retval, align 4, !dbg !3502
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3502

if.end15:                                         ; preds = %if.end11
  store i32 0, ptr %retval, align 4, !dbg !3503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3503

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then10, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefixlen) #8, !dbg !3504
  call void @llvm.lifetime.end.p0(i64 16, ptr %sb) #8, !dbg !3504
  call void @llvm.lifetime.end.p0(i64 8, ptr %blocklen) #8, !dbg !3504
  call void @llvm.lifetime.end.p0(i64 8, ptr %bufp) #8, !dbg !3504
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !3504
  %20 = load i32, ptr %retval, align 4, !dbg !3504
  ret i32 %20, !dbg !3504
}

; Function Attrs: nounwind uwtable
define hidden i32 @nghttp2_hd_emit_newname_block(ptr noundef %bufs, ptr noundef %nv, i32 noundef %indexing_mode) #0 !dbg !3505 {
entry:
  %bufs.addr = alloca ptr, align 8
  %nv.addr = alloca ptr, align 8
  %indexing_mode.addr = alloca i32, align 4
  store ptr %bufs, ptr %bufs.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %bufs.addr, metadata !3509, metadata !DIExpression()), !dbg !3512
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv.addr, metadata !3510, metadata !DIExpression()), !dbg !3513
  store i32 %indexing_mode, ptr %indexing_mode.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %indexing_mode.addr, metadata !3511, metadata !DIExpression()), !dbg !3514
  %0 = load ptr, ptr %bufs.addr, align 8, !dbg !3515, !tbaa !612
  %1 = load ptr, ptr %nv.addr, align 8, !dbg !3516, !tbaa !612
  %2 = load i32, ptr %indexing_mode.addr, align 4, !dbg !3517, !tbaa !623
  %call = call i32 @emit_newname_block(ptr noundef %0, ptr noundef %1, i32 noundef %2), !dbg !3518
  ret i32 %call, !dbg !3519
}

; Function Attrs: nounwind uwtable
define internal i32 @emit_newname_block(ptr noundef %bufs, ptr noundef %nv, i32 noundef %indexing_mode) #0 !dbg !3520 {
entry:
  %retval = alloca i32, align 4
  %bufs.addr = alloca ptr, align 8
  %nv.addr = alloca ptr, align 8
  %indexing_mode.addr = alloca i32, align 4
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bufs, ptr %bufs.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %bufs.addr, metadata !3524, metadata !DIExpression()), !dbg !3528
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv.addr, metadata !3525, metadata !DIExpression()), !dbg !3529
  store i32 %indexing_mode, ptr %indexing_mode.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %indexing_mode.addr, metadata !3526, metadata !DIExpression()), !dbg !3530
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !3531
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !3527, metadata !DIExpression()), !dbg !3532
  br label %do.body, !dbg !3533

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3534

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3534

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %bufs.addr, align 8, !dbg !3536, !tbaa !612
  %1 = load i32, ptr %indexing_mode.addr, align 4, !dbg !3537, !tbaa !623
  %call = call zeroext i8 @pack_first_byte(i32 noundef %1), !dbg !3538
  %call1 = call i32 @nghttp2_bufs_addb(ptr noundef %0, i8 noundef zeroext %call), !dbg !3539
  store i32 %call1, ptr %rv, align 4, !dbg !3540, !tbaa !623
  %2 = load i32, ptr %rv, align 4, !dbg !3541, !tbaa !623
  %cmp = icmp ne i32 %2, 0, !dbg !3543
  br i1 %cmp, label %if.then, label %if.end, !dbg !3544

if.then:                                          ; preds = %do.end
  %3 = load i32, ptr %rv, align 4, !dbg !3545, !tbaa !623
  store i32 %3, ptr %retval, align 4, !dbg !3547
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3547

if.end:                                           ; preds = %do.end
  %4 = load ptr, ptr %bufs.addr, align 8, !dbg !3548, !tbaa !612
  %5 = load ptr, ptr %nv.addr, align 8, !dbg !3549, !tbaa !612
  %name = getelementptr inbounds %struct.nghttp2_nv, ptr %5, i32 0, i32 0, !dbg !3550
  %6 = load ptr, ptr %name, align 8, !dbg !3550, !tbaa !1567
  %7 = load ptr, ptr %nv.addr, align 8, !dbg !3551, !tbaa !612
  %namelen = getelementptr inbounds %struct.nghttp2_nv, ptr %7, i32 0, i32 2, !dbg !3552
  %8 = load i64, ptr %namelen, align 8, !dbg !3552, !tbaa !1570
  %call2 = call i32 @emit_string(ptr noundef %4, ptr noundef %6, i64 noundef %8), !dbg !3553
  store i32 %call2, ptr %rv, align 4, !dbg !3554, !tbaa !623
  %9 = load i32, ptr %rv, align 4, !dbg !3555, !tbaa !623
  %cmp3 = icmp ne i32 %9, 0, !dbg !3557
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !3558

if.then4:                                         ; preds = %if.end
  %10 = load i32, ptr %rv, align 4, !dbg !3559, !tbaa !623
  store i32 %10, ptr %retval, align 4, !dbg !3561
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3561

if.end5:                                          ; preds = %if.end
  %11 = load ptr, ptr %bufs.addr, align 8, !dbg !3562, !tbaa !612
  %12 = load ptr, ptr %nv.addr, align 8, !dbg !3563, !tbaa !612
  %value = getelementptr inbounds %struct.nghttp2_nv, ptr %12, i32 0, i32 1, !dbg !3564
  %13 = load ptr, ptr %value, align 8, !dbg !3564, !tbaa !1696
  %14 = load ptr, ptr %nv.addr, align 8, !dbg !3565, !tbaa !612
  %valuelen = getelementptr inbounds %struct.nghttp2_nv, ptr %14, i32 0, i32 3, !dbg !3566
  %15 = load i64, ptr %valuelen, align 8, !dbg !3566, !tbaa !1601
  %call6 = call i32 @emit_string(ptr noundef %11, ptr noundef %13, i64 noundef %15), !dbg !3567
  store i32 %call6, ptr %rv, align 4, !dbg !3568, !tbaa !623
  %16 = load i32, ptr %rv, align 4, !dbg !3569, !tbaa !623
  %cmp7 = icmp ne i32 %16, 0, !dbg !3571
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !3572

if.then8:                                         ; preds = %if.end5
  %17 = load i32, ptr %rv, align 4, !dbg !3573, !tbaa !623
  store i32 %17, ptr %retval, align 4, !dbg !3575
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3575

if.end9:                                          ; preds = %if.end5
  store i32 0, ptr %retval, align 4, !dbg !3576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3576

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !3577
  %18 = load i32, ptr %retval, align 4, !dbg !3577
  ret i32 %18, !dbg !3577
}

; Function Attrs: nounwind uwtable
define hidden i32 @nghttp2_hd_emit_table_size(ptr noundef %bufs, i64 noundef %table_size) #0 !dbg !3578 {
entry:
  %bufs.addr = alloca ptr, align 8
  %table_size.addr = alloca i64, align 8
  store ptr %bufs, ptr %bufs.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %bufs.addr, metadata !3580, metadata !DIExpression()), !dbg !3582
  store i64 %table_size, ptr %table_size.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %table_size.addr, metadata !3581, metadata !DIExpression()), !dbg !3583
  %0 = load ptr, ptr %bufs.addr, align 8, !dbg !3584, !tbaa !612
  %1 = load i64, ptr %table_size.addr, align 8, !dbg !3585, !tbaa !788
  %call = call i32 @emit_table_size(ptr noundef %0, i64 noundef %1), !dbg !3586
  ret i32 %call, !dbg !3587
}

; Function Attrs: nounwind uwtable
define hidden i64 @nghttp2_hd_decode_length(ptr noundef %res, ptr noundef %shift_ptr, ptr noundef %fin, i32 noundef %initial, i64 noundef %shift, ptr noundef %in, ptr noundef %last, i64 noundef %prefix) #0 !dbg !3588 {
entry:
  %res.addr = alloca ptr, align 8
  %shift_ptr.addr = alloca ptr, align 8
  %fin.addr = alloca ptr, align 8
  %initial.addr = alloca i32, align 4
  %shift.addr = alloca i64, align 8
  %in.addr = alloca ptr, align 8
  %last.addr = alloca ptr, align 8
  %prefix.addr = alloca i64, align 8
  store ptr %res, ptr %res.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3594, metadata !DIExpression()), !dbg !3602
  store ptr %shift_ptr, ptr %shift_ptr.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %shift_ptr.addr, metadata !3595, metadata !DIExpression()), !dbg !3603
  store ptr %fin, ptr %fin.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %fin.addr, metadata !3596, metadata !DIExpression()), !dbg !3604
  store i32 %initial, ptr %initial.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %initial.addr, metadata !3597, metadata !DIExpression()), !dbg !3605
  store i64 %shift, ptr %shift.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !3598, metadata !DIExpression()), !dbg !3606
  store ptr %in, ptr %in.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !3599, metadata !DIExpression()), !dbg !3607
  store ptr %last, ptr %last.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !3600, metadata !DIExpression()), !dbg !3608
  store i64 %prefix, ptr %prefix.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !3601, metadata !DIExpression()), !dbg !3609
  %0 = load ptr, ptr %res.addr, align 8, !dbg !3610, !tbaa !612
  %1 = load ptr, ptr %shift_ptr.addr, align 8, !dbg !3611, !tbaa !612
  %2 = load ptr, ptr %fin.addr, align 8, !dbg !3612, !tbaa !612
  %3 = load i32, ptr %initial.addr, align 4, !dbg !3613, !tbaa !623
  %4 = load i64, ptr %shift.addr, align 8, !dbg !3614, !tbaa !788
  %5 = load ptr, ptr %in.addr, align 8, !dbg !3615, !tbaa !612
  %6 = load ptr, ptr %last.addr, align 8, !dbg !3616, !tbaa !612
  %7 = load i64, ptr %prefix.addr, align 8, !dbg !3617, !tbaa !788
  %call = call i64 @decode_length(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7), !dbg !3618
  ret i64 %call, !dbg !3619
}

; Function Attrs: nounwind uwtable
define internal i64 @decode_length(ptr noundef %res, ptr noundef %shift_ptr, ptr noundef %fin, i32 noundef %initial, i64 noundef %shift, ptr noundef %in, ptr noundef %last, i64 noundef %prefix) #0 !dbg !3620 {
entry:
  %retval = alloca i64, align 8
  %res.addr = alloca ptr, align 8
  %shift_ptr.addr = alloca ptr, align 8
  %fin.addr = alloca ptr, align 8
  %initial.addr = alloca i32, align 4
  %shift.addr = alloca i64, align 8
  %in.addr = alloca ptr, align 8
  %last.addr = alloca ptr, align 8
  %prefix.addr = alloca i64, align 8
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %start = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %add = alloca i32, align 4
  store ptr %res, ptr %res.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3624, metadata !DIExpression()), !dbg !3639
  store ptr %shift_ptr, ptr %shift_ptr.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %shift_ptr.addr, metadata !3625, metadata !DIExpression()), !dbg !3640
  store ptr %fin, ptr %fin.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %fin.addr, metadata !3626, metadata !DIExpression()), !dbg !3641
  store i32 %initial, ptr %initial.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %initial.addr, metadata !3627, metadata !DIExpression()), !dbg !3642
  store i64 %shift, ptr %shift.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !3628, metadata !DIExpression()), !dbg !3643
  store ptr %in, ptr %in.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !3629, metadata !DIExpression()), !dbg !3644
  store ptr %last, ptr %last.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !3630, metadata !DIExpression()), !dbg !3645
  store i64 %prefix, ptr %prefix.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !3631, metadata !DIExpression()), !dbg !3646
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8, !dbg !3647
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !3632, metadata !DIExpression()), !dbg !3648
  %0 = load i64, ptr %prefix.addr, align 8, !dbg !3649, !tbaa !788
  %sh_prom = trunc i64 %0 to i32, !dbg !3650
  %shl = shl i32 1, %sh_prom, !dbg !3650
  %sub = sub nsw i32 %shl, 1, !dbg !3651
  %conv = trunc i32 %sub to i8, !dbg !3652
  %conv1 = zext i8 %conv to i32, !dbg !3652
  store i32 %conv1, ptr %k, align 4, !dbg !3648, !tbaa !623
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8, !dbg !3653
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !3633, metadata !DIExpression()), !dbg !3654
  %1 = load i32, ptr %initial.addr, align 4, !dbg !3655, !tbaa !623
  store i32 %1, ptr %n, align 4, !dbg !3654, !tbaa !623
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #8, !dbg !3656
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !3634, metadata !DIExpression()), !dbg !3657
  %2 = load ptr, ptr %in.addr, align 8, !dbg !3658, !tbaa !612
  store ptr %2, ptr %start, align 8, !dbg !3657, !tbaa !612
  %3 = load ptr, ptr %shift_ptr.addr, align 8, !dbg !3659, !tbaa !612
  store i64 0, ptr %3, align 8, !dbg !3660, !tbaa !788
  %4 = load ptr, ptr %fin.addr, align 8, !dbg !3661, !tbaa !612
  store i32 0, ptr %4, align 4, !dbg !3662, !tbaa !623
  %5 = load i32, ptr %n, align 4, !dbg !3663, !tbaa !623
  %cmp = icmp eq i32 %5, 0, !dbg !3665
  br i1 %cmp, label %if.then, label %if.end13, !dbg !3666

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %in.addr, align 8, !dbg !3667, !tbaa !612
  %7 = load i8, ptr %6, align 1, !dbg !3670, !tbaa !625
  %conv3 = zext i8 %7 to i32, !dbg !3670
  %8 = load i32, ptr %k, align 4, !dbg !3671, !tbaa !623
  %and = and i32 %conv3, %8, !dbg !3672
  %9 = load i32, ptr %k, align 4, !dbg !3673, !tbaa !623
  %cmp4 = icmp ne i32 %and, %9, !dbg !3674
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !3675

if.then6:                                         ; preds = %if.then
  %10 = load ptr, ptr %in.addr, align 8, !dbg !3676, !tbaa !612
  %11 = load i8, ptr %10, align 1, !dbg !3678, !tbaa !625
  %conv7 = zext i8 %11 to i32, !dbg !3679
  %12 = load i32, ptr %k, align 4, !dbg !3680, !tbaa !623
  %and8 = and i32 %conv7, %12, !dbg !3681
  %13 = load ptr, ptr %res.addr, align 8, !dbg !3682, !tbaa !612
  store i32 %and8, ptr %13, align 4, !dbg !3683, !tbaa !623
  %14 = load ptr, ptr %fin.addr, align 8, !dbg !3684, !tbaa !612
  store i32 1, ptr %14, align 4, !dbg !3685, !tbaa !623
  store i64 1, ptr %retval, align 8, !dbg !3686
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup59, !dbg !3686

if.end:                                           ; preds = %if.then
  %15 = load i32, ptr %k, align 4, !dbg !3687, !tbaa !623
  store i32 %15, ptr %n, align 4, !dbg !3688, !tbaa !623
  %16 = load ptr, ptr %in.addr, align 8, !dbg !3689, !tbaa !612
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i32 1, !dbg !3689
  store ptr %incdec.ptr, ptr %in.addr, align 8, !dbg !3689, !tbaa !612
  %17 = load ptr, ptr %last.addr, align 8, !dbg !3691, !tbaa !612
  %cmp9 = icmp eq ptr %incdec.ptr, %17, !dbg !3692
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !3693

if.then11:                                        ; preds = %if.end
  %18 = load i32, ptr %n, align 4, !dbg !3694, !tbaa !623
  %19 = load ptr, ptr %res.addr, align 8, !dbg !3696, !tbaa !612
  store i32 %18, ptr %19, align 4, !dbg !3697, !tbaa !623
  %20 = load ptr, ptr %in.addr, align 8, !dbg !3698, !tbaa !612
  %21 = load ptr, ptr %start, align 8, !dbg !3699, !tbaa !612
  %sub.ptr.lhs.cast = ptrtoint ptr %20 to i64, !dbg !3700
  %sub.ptr.rhs.cast = ptrtoint ptr %21 to i64, !dbg !3700
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3700
  store i64 %sub.ptr.sub, ptr %retval, align 8, !dbg !3701
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup59, !dbg !3701

if.end12:                                         ; preds = %if.end
  br label %if.end13, !dbg !3702

if.end13:                                         ; preds = %if.end12, %entry
  br label %for.cond, !dbg !3703

for.cond:                                         ; preds = %for.inc, %if.end13
  %22 = load ptr, ptr %in.addr, align 8, !dbg !3704, !tbaa !612
  %23 = load ptr, ptr %last.addr, align 8, !dbg !3705, !tbaa !612
  %cmp14 = icmp ne ptr %22, %23, !dbg !3706
  br i1 %cmp14, label %for.body, label %for.end, !dbg !3707

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %add) #8, !dbg !3708
  tail call void @llvm.dbg.declare(metadata ptr %add, metadata !3635, metadata !DIExpression()), !dbg !3709
  %24 = load ptr, ptr %in.addr, align 8, !dbg !3710, !tbaa !612
  %25 = load i8, ptr %24, align 1, !dbg !3711, !tbaa !625
  %conv16 = zext i8 %25 to i32, !dbg !3711
  %and17 = and i32 %conv16, 127, !dbg !3712
  store i32 %and17, ptr %add, align 4, !dbg !3709, !tbaa !623
  %26 = load i64, ptr %shift.addr, align 8, !dbg !3713, !tbaa !788
  %cmp18 = icmp uge i64 %26, 32, !dbg !3715
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !3716

if.then20:                                        ; preds = %for.body
  br label %do.body, !dbg !3717

do.body:                                          ; preds = %if.then20
  br label %do.cond, !dbg !3719

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3719

do.end:                                           ; preds = %do.cond
  store i64 -1, ptr %retval, align 8, !dbg !3721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3721

if.end21:                                         ; preds = %for.body
  %27 = load i64, ptr %shift.addr, align 8, !dbg !3722, !tbaa !788
  %sh_prom22 = trunc i64 %27 to i32, !dbg !3724
  %shr = lshr i32 -1, %sh_prom22, !dbg !3724
  %28 = load i32, ptr %add, align 4, !dbg !3725, !tbaa !623
  %cmp23 = icmp ult i32 %shr, %28, !dbg !3726
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !3727

if.then25:                                        ; preds = %if.end21
  br label %do.body26, !dbg !3728

do.body26:                                        ; preds = %if.then25
  br label %do.cond27, !dbg !3730

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !3730

do.end28:                                         ; preds = %do.cond27
  store i64 -1, ptr %retval, align 8, !dbg !3732
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3732

if.end29:                                         ; preds = %if.end21
  %29 = load i64, ptr %shift.addr, align 8, !dbg !3733, !tbaa !788
  %30 = load i32, ptr %add, align 4, !dbg !3734, !tbaa !623
  %sh_prom30 = trunc i64 %29 to i32, !dbg !3734
  %shl31 = shl i32 %30, %sh_prom30, !dbg !3734
  store i32 %shl31, ptr %add, align 4, !dbg !3734, !tbaa !623
  %31 = load i32, ptr %add, align 4, !dbg !3735, !tbaa !623
  %sub32 = sub i32 -1, %31, !dbg !3737
  %32 = load i32, ptr %n, align 4, !dbg !3738, !tbaa !623
  %cmp33 = icmp ult i32 %sub32, %32, !dbg !3739
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !3740

if.then35:                                        ; preds = %if.end29
  br label %do.body36, !dbg !3741

do.body36:                                        ; preds = %if.then35
  br label %do.cond37, !dbg !3743

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !3743

do.end38:                                         ; preds = %do.cond37
  store i64 -1, ptr %retval, align 8, !dbg !3745
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3745

if.end39:                                         ; preds = %if.end29
  %33 = load i32, ptr %add, align 4, !dbg !3746, !tbaa !623
  %34 = load i32, ptr %n, align 4, !dbg !3747, !tbaa !623
  %add40 = add i32 %34, %33, !dbg !3747
  store i32 %add40, ptr %n, align 4, !dbg !3747, !tbaa !623
  %35 = load ptr, ptr %in.addr, align 8, !dbg !3748, !tbaa !612
  %36 = load i8, ptr %35, align 1, !dbg !3750, !tbaa !625
  %conv41 = zext i8 %36 to i32, !dbg !3750
  %and42 = and i32 %conv41, 128, !dbg !3751
  %cmp43 = icmp eq i32 %and42, 0, !dbg !3752
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !3753

if.then45:                                        ; preds = %if.end39
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3754

if.end46:                                         ; preds = %if.end39
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3756
  br label %cleanup, !dbg !3756

cleanup:                                          ; preds = %if.end46, %if.then45, %do.end38, %do.end28, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %add) #8, !dbg !3756
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup59 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3757

for.inc:                                          ; preds = %cleanup.cont
  %37 = load ptr, ptr %in.addr, align 8, !dbg !3758, !tbaa !612
  %incdec.ptr47 = getelementptr inbounds i8, ptr %37, i32 1, !dbg !3758
  store ptr %incdec.ptr47, ptr %in.addr, align 8, !dbg !3758, !tbaa !612
  %38 = load i64, ptr %shift.addr, align 8, !dbg !3759, !tbaa !788
  %add48 = add i64 %38, 7, !dbg !3759
  store i64 %add48, ptr %shift.addr, align 8, !dbg !3759, !tbaa !788
  br label %for.cond, !dbg !3760, !llvm.loop !3761

for.end:                                          ; preds = %cleanup, %for.cond
  %39 = load i64, ptr %shift.addr, align 8, !dbg !3763, !tbaa !788
  %40 = load ptr, ptr %shift_ptr.addr, align 8, !dbg !3764, !tbaa !612
  store i64 %39, ptr %40, align 8, !dbg !3765, !tbaa !788
  %41 = load ptr, ptr %in.addr, align 8, !dbg !3766, !tbaa !612
  %42 = load ptr, ptr %last.addr, align 8, !dbg !3768, !tbaa !612
  %cmp49 = icmp eq ptr %41, %42, !dbg !3769
  br i1 %cmp49, label %if.then51, label %if.end55, !dbg !3770

if.then51:                                        ; preds = %for.end
  %43 = load i32, ptr %n, align 4, !dbg !3771, !tbaa !623
  %44 = load ptr, ptr %res.addr, align 8, !dbg !3773, !tbaa !612
  store i32 %43, ptr %44, align 4, !dbg !3774, !tbaa !623
  %45 = load ptr, ptr %in.addr, align 8, !dbg !3775, !tbaa !612
  %46 = load ptr, ptr %start, align 8, !dbg !3776, !tbaa !612
  %sub.ptr.lhs.cast52 = ptrtoint ptr %45 to i64, !dbg !3777
  %sub.ptr.rhs.cast53 = ptrtoint ptr %46 to i64, !dbg !3777
  %sub.ptr.sub54 = sub i64 %sub.ptr.lhs.cast52, %sub.ptr.rhs.cast53, !dbg !3777
  store i64 %sub.ptr.sub54, ptr %retval, align 8, !dbg !3778
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup59, !dbg !3778

if.end55:                                         ; preds = %for.end
  %47 = load i32, ptr %n, align 4, !dbg !3779, !tbaa !623
  %48 = load ptr, ptr %res.addr, align 8, !dbg !3780, !tbaa !612
  store i32 %47, ptr %48, align 4, !dbg !3781, !tbaa !623
  %49 = load ptr, ptr %fin.addr, align 8, !dbg !3782, !tbaa !612
  store i32 1, ptr %49, align 4, !dbg !3783, !tbaa !623
  %50 = load ptr, ptr %in.addr, align 8, !dbg !3784, !tbaa !612
  %add.ptr = getelementptr inbounds i8, ptr %50, i64 1, !dbg !3785
  %51 = load ptr, ptr %start, align 8, !dbg !3786, !tbaa !612
  %sub.ptr.lhs.cast56 = ptrtoint ptr %add.ptr to i64, !dbg !3787
  %sub.ptr.rhs.cast57 = ptrtoint ptr %51 to i64, !dbg !3787
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57, !dbg !3787
  store i64 %sub.ptr.sub58, ptr %retval, align 8, !dbg !3788
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup59, !dbg !3788

cleanup59:                                        ; preds = %if.end55, %if.then51, %cleanup, %if.then11, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #8, !dbg !3789
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8, !dbg !3789
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8, !dbg !3789
  %52 = load i64, ptr %retval, align 8, !dbg !3789
  ret i64 %52, !dbg !3789
}

; Function Attrs: nounwind uwtable
define i64 @nghttp2_hd_deflate_get_num_table_entries(ptr noundef %deflater) #0 !dbg !3790 {
entry:
  %deflater.addr = alloca ptr, align 8
  store ptr %deflater, ptr %deflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %deflater.addr, metadata !3794, metadata !DIExpression()), !dbg !3795
  %0 = load ptr, ptr %deflater.addr, align 8, !dbg !3796, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %0, i32 0, i32 0, !dbg !3797
  %call = call i64 @get_max_index(ptr noundef %ctx), !dbg !3798
  ret i64 %call, !dbg !3799
}

; Function Attrs: nounwind uwtable
define ptr @nghttp2_hd_deflate_get_table_entry(ptr noundef %deflater, i64 noundef %idx) #0 !dbg !3800 {
entry:
  %deflater.addr = alloca ptr, align 8
  %idx.addr = alloca i64, align 8
  store ptr %deflater, ptr %deflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %deflater.addr, metadata !3804, metadata !DIExpression()), !dbg !3806
  store i64 %idx, ptr %idx.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !3805, metadata !DIExpression()), !dbg !3807
  %0 = load ptr, ptr %deflater.addr, align 8, !dbg !3808, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %0, i32 0, i32 0, !dbg !3809
  %1 = load i64, ptr %idx.addr, align 8, !dbg !3810, !tbaa !788
  %call = call ptr @hd_get_table_entry(ptr noundef %ctx, i64 noundef %1), !dbg !3811
  ret ptr %call, !dbg !3812
}

; Function Attrs: nounwind uwtable
define internal ptr @hd_get_table_entry(ptr noundef %context, i64 noundef %idx) #0 !dbg !3813 {
entry:
  %retval = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %idx.addr = alloca i64, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !3817, metadata !DIExpression()), !dbg !3819
  store i64 %idx, ptr %idx.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !3818, metadata !DIExpression()), !dbg !3820
  %0 = load i64, ptr %idx.addr, align 8, !dbg !3821, !tbaa !788
  %cmp = icmp eq i64 %0, 0, !dbg !3823
  br i1 %cmp, label %if.then, label %if.end, !dbg !3824

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3825
  br label %return, !dbg !3825

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %idx.addr, align 8, !dbg !3827, !tbaa !788
  %dec = add i64 %1, -1, !dbg !3827
  store i64 %dec, ptr %idx.addr, align 8, !dbg !3827, !tbaa !788
  %2 = load i64, ptr %idx.addr, align 8, !dbg !3828, !tbaa !788
  %3 = load ptr, ptr %context.addr, align 8, !dbg !3828, !tbaa !612
  %hd_table = getelementptr inbounds %struct.nghttp2_hd_context, ptr %3, i32 0, i32 0, !dbg !3828
  %len = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %hd_table, i32 0, i32 3, !dbg !3828
  %4 = load i64, ptr %len, align 8, !dbg !3828, !tbaa !1157
  %add = add i64 %4, 61, !dbg !3828
  %cmp1 = icmp ult i64 %2, %add, !dbg !3828
  br i1 %cmp1, label %if.end3, label %if.then2, !dbg !3830

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !3831
  br label %return, !dbg !3831

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %context.addr, align 8, !dbg !3833, !tbaa !612
  %6 = load i64, ptr %idx.addr, align 8, !dbg !3834, !tbaa !788
  %call = call ptr @nghttp2_hd_table_get2(ptr noundef %5, i64 noundef %6), !dbg !3835
  store ptr %call, ptr %retval, align 8, !dbg !3836
  br label %return, !dbg !3836

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %7 = load ptr, ptr %retval, align 8, !dbg !3837
  ret ptr %7, !dbg !3837
}

; Function Attrs: nounwind uwtable
define i64 @nghttp2_hd_deflate_get_dynamic_table_size(ptr noundef %deflater) #0 !dbg !3838 {
entry:
  %deflater.addr = alloca ptr, align 8
  store ptr %deflater, ptr %deflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %deflater.addr, metadata !3840, metadata !DIExpression()), !dbg !3841
  %0 = load ptr, ptr %deflater.addr, align 8, !dbg !3842, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %0, i32 0, i32 0, !dbg !3843
  %hd_table_bufsize = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx, i32 0, i32 2, !dbg !3844
  %1 = load i64, ptr %hd_table_bufsize, align 8, !dbg !3844, !tbaa !3845
  ret i64 %1, !dbg !3846
}

; Function Attrs: nounwind uwtable
define i64 @nghttp2_hd_deflate_get_max_dynamic_table_size(ptr noundef %deflater) #0 !dbg !3847 {
entry:
  %deflater.addr = alloca ptr, align 8
  store ptr %deflater, ptr %deflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %deflater.addr, metadata !3849, metadata !DIExpression()), !dbg !3850
  %0 = load ptr, ptr %deflater.addr, align 8, !dbg !3851, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %0, i32 0, i32 0, !dbg !3852
  %hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx, i32 0, i32 3, !dbg !3853
  %1 = load i64, ptr %hd_table_bufsize_max, align 8, !dbg !3853, !tbaa !826
  ret i64 %1, !dbg !3854
}

; Function Attrs: nounwind uwtable
define i64 @nghttp2_hd_inflate_get_num_table_entries(ptr noundef %inflater) #0 !dbg !3855 {
entry:
  %inflater.addr = alloca ptr, align 8
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !3859, metadata !DIExpression()), !dbg !3860
  %0 = load ptr, ptr %inflater.addr, align 8, !dbg !3861, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %0, i32 0, i32 0, !dbg !3862
  %call = call i64 @get_max_index(ptr noundef %ctx), !dbg !3863
  ret i64 %call, !dbg !3864
}

; Function Attrs: nounwind uwtable
define ptr @nghttp2_hd_inflate_get_table_entry(ptr noundef %inflater, i64 noundef %idx) #0 !dbg !3865 {
entry:
  %inflater.addr = alloca ptr, align 8
  %idx.addr = alloca i64, align 8
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !3869, metadata !DIExpression()), !dbg !3871
  store i64 %idx, ptr %idx.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !3870, metadata !DIExpression()), !dbg !3872
  %0 = load ptr, ptr %inflater.addr, align 8, !dbg !3873, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %0, i32 0, i32 0, !dbg !3874
  %1 = load i64, ptr %idx.addr, align 8, !dbg !3875, !tbaa !788
  %call = call ptr @hd_get_table_entry(ptr noundef %ctx, i64 noundef %1), !dbg !3876
  ret ptr %call, !dbg !3877
}

; Function Attrs: nounwind uwtable
define i64 @nghttp2_hd_inflate_get_dynamic_table_size(ptr noundef %inflater) #0 !dbg !3878 {
entry:
  %inflater.addr = alloca ptr, align 8
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !3880, metadata !DIExpression()), !dbg !3881
  %0 = load ptr, ptr %inflater.addr, align 8, !dbg !3882, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %0, i32 0, i32 0, !dbg !3883
  %hd_table_bufsize = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx, i32 0, i32 2, !dbg !3884
  %1 = load i64, ptr %hd_table_bufsize, align 8, !dbg !3884, !tbaa !3885
  ret i64 %1, !dbg !3886
}

; Function Attrs: nounwind uwtable
define i64 @nghttp2_hd_inflate_get_max_dynamic_table_size(ptr noundef %inflater) #0 !dbg !3887 {
entry:
  %inflater.addr = alloca ptr, align 8
  store ptr %inflater, ptr %inflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %inflater.addr, metadata !3889, metadata !DIExpression()), !dbg !3890
  %0 = load ptr, ptr %inflater.addr, align 8, !dbg !3891, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_inflater, ptr %0, i32 0, i32 0, !dbg !3892
  %hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx, i32 0, i32 3, !dbg !3893
  %1 = load i64, ptr %hd_table_bufsize_max, align 8, !dbg !3893, !tbaa !1226
  ret i64 %1, !dbg !3894
}

; Function Attrs: nounwind uwtable
define internal i32 @hd_ringbuf_init(ptr noundef %ringbuf, i64 noundef %bufsize, ptr noundef %mem) #0 !dbg !3895 {
entry:
  %retval = alloca i32, align 4
  %ringbuf.addr = alloca ptr, align 8
  %bufsize.addr = alloca i64, align 8
  %mem.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ringbuf, ptr %ringbuf.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %ringbuf.addr, metadata !3899, metadata !DIExpression()), !dbg !3903
  store i64 %bufsize, ptr %bufsize.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %bufsize.addr, metadata !3900, metadata !DIExpression()), !dbg !3904
  store ptr %mem, ptr %mem.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !3901, metadata !DIExpression()), !dbg !3905
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #8, !dbg !3906
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !3902, metadata !DIExpression()), !dbg !3907
  store i64 1, ptr %size, align 8, !dbg !3908, !tbaa !788
  br label %for.cond, !dbg !3910

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %size, align 8, !dbg !3911, !tbaa !788
  %1 = load i64, ptr %bufsize.addr, align 8, !dbg !3913, !tbaa !788
  %cmp = icmp ult i64 %0, %1, !dbg !3914
  br i1 %cmp, label %for.body, label %for.end, !dbg !3915

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !3915

for.inc:                                          ; preds = %for.body
  %2 = load i64, ptr %size, align 8, !dbg !3916, !tbaa !788
  %shl = shl i64 %2, 1, !dbg !3916
  store i64 %shl, ptr %size, align 8, !dbg !3916, !tbaa !788
  br label %for.cond, !dbg !3917, !llvm.loop !3918

for.end:                                          ; preds = %for.cond
  %3 = load ptr, ptr %mem.addr, align 8, !dbg !3920, !tbaa !612
  %4 = load i64, ptr %size, align 8, !dbg !3921, !tbaa !788
  %mul = mul i64 8, %4, !dbg !3922
  %call = call ptr @nghttp2_mem_malloc(ptr noundef %3, i64 noundef %mul), !dbg !3923
  %5 = load ptr, ptr %ringbuf.addr, align 8, !dbg !3924, !tbaa !612
  %buffer = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %5, i32 0, i32 0, !dbg !3925
  store ptr %call, ptr %buffer, align 8, !dbg !3926, !tbaa !1315
  %6 = load ptr, ptr %ringbuf.addr, align 8, !dbg !3927, !tbaa !612
  %buffer1 = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %6, i32 0, i32 0, !dbg !3929
  %7 = load ptr, ptr %buffer1, align 8, !dbg !3929, !tbaa !1315
  %cmp2 = icmp eq ptr %7, null, !dbg !3930
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3931

if.then:                                          ; preds = %for.end
  store i32 -901, ptr %retval, align 4, !dbg !3932
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3932

if.end:                                           ; preds = %for.end
  %8 = load i64, ptr %size, align 8, !dbg !3934, !tbaa !788
  %sub = sub i64 %8, 1, !dbg !3935
  %9 = load ptr, ptr %ringbuf.addr, align 8, !dbg !3936, !tbaa !612
  %mask = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %9, i32 0, i32 1, !dbg !3937
  store i64 %sub, ptr %mask, align 8, !dbg !3938, !tbaa !1323
  %10 = load ptr, ptr %ringbuf.addr, align 8, !dbg !3939, !tbaa !612
  %first = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %10, i32 0, i32 2, !dbg !3940
  store i64 0, ptr %first, align 8, !dbg !3941, !tbaa !1318
  %11 = load ptr, ptr %ringbuf.addr, align 8, !dbg !3942, !tbaa !612
  %len = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %11, i32 0, i32 3, !dbg !3943
  store i64 0, ptr %len, align 8, !dbg !3944, !tbaa !1311
  store i32 0, ptr %retval, align 4, !dbg !3945
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3945

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #8, !dbg !3946
  %12 = load i32, ptr %retval, align 4, !dbg !3946
  ret i32 %12, !dbg !3946
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal void @hd_ringbuf_free(ptr noundef %ringbuf, ptr noundef %mem) #0 !dbg !3947 {
entry:
  %ringbuf.addr = alloca ptr, align 8
  %mem.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ent = alloca ptr, align 8
  store ptr %ringbuf, ptr %ringbuf.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %ringbuf.addr, metadata !3951, metadata !DIExpression()), !dbg !3958
  store ptr %mem, ptr %mem.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !3952, metadata !DIExpression()), !dbg !3959
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8, !dbg !3960
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3953, metadata !DIExpression()), !dbg !3961
  %0 = load ptr, ptr %ringbuf.addr, align 8, !dbg !3962, !tbaa !612
  %cmp = icmp eq ptr %0, null, !dbg !3964
  br i1 %cmp, label %if.then, label %if.end, !dbg !3965

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3966

if.end:                                           ; preds = %entry
  store i64 0, ptr %i, align 8, !dbg !3968, !tbaa !788
  br label %for.cond, !dbg !3969

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i64, ptr %i, align 8, !dbg !3970, !tbaa !788
  %2 = load ptr, ptr %ringbuf.addr, align 8, !dbg !3971, !tbaa !612
  %len = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %2, i32 0, i32 3, !dbg !3972
  %3 = load i64, ptr %len, align 8, !dbg !3972, !tbaa !1311
  %cmp1 = icmp ult i64 %1, %3, !dbg !3973
  br i1 %cmp1, label %for.body, label %for.end, !dbg !3974

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ent) #8, !dbg !3975
  tail call void @llvm.dbg.declare(metadata ptr %ent, metadata !3954, metadata !DIExpression()), !dbg !3976
  %4 = load ptr, ptr %ringbuf.addr, align 8, !dbg !3977, !tbaa !612
  %5 = load i64, ptr %i, align 8, !dbg !3978, !tbaa !788
  %call = call ptr @hd_ringbuf_get(ptr noundef %4, i64 noundef %5), !dbg !3979
  store ptr %call, ptr %ent, align 8, !dbg !3976, !tbaa !612
  %6 = load ptr, ptr %ent, align 8, !dbg !3980, !tbaa !612
  call void @nghttp2_hd_entry_free(ptr noundef %6), !dbg !3981
  %7 = load ptr, ptr %mem.addr, align 8, !dbg !3982, !tbaa !612
  %8 = load ptr, ptr %ent, align 8, !dbg !3983, !tbaa !612
  call void @nghttp2_mem_free(ptr noundef %7, ptr noundef %8), !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr %ent) #8, !dbg !3985
  br label %for.inc, !dbg !3986

for.inc:                                          ; preds = %for.body
  %9 = load i64, ptr %i, align 8, !dbg !3987, !tbaa !788
  %inc = add i64 %9, 1, !dbg !3987
  store i64 %inc, ptr %i, align 8, !dbg !3987, !tbaa !788
  br label %for.cond, !dbg !3988, !llvm.loop !3989

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %mem.addr, align 8, !dbg !3991, !tbaa !612
  %11 = load ptr, ptr %ringbuf.addr, align 8, !dbg !3992, !tbaa !612
  %buffer = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %11, i32 0, i32 0, !dbg !3993
  %12 = load ptr, ptr %buffer, align 8, !dbg !3993, !tbaa !1315
  call void @nghttp2_mem_free(ptr noundef %10, ptr noundef %12), !dbg !3994
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3995
  br label %cleanup, !dbg !3995

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8, !dbg !3995
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3995

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i64 @entry_room(i64 noundef %namelen, i64 noundef %valuelen) #0 !dbg !3996 {
entry:
  %namelen.addr = alloca i64, align 8
  %valuelen.addr = alloca i64, align 8
  store i64 %namelen, ptr %namelen.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %namelen.addr, metadata !4000, metadata !DIExpression()), !dbg !4002
  store i64 %valuelen, ptr %valuelen.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %valuelen.addr, metadata !4001, metadata !DIExpression()), !dbg !4003
  %0 = load i64, ptr %namelen.addr, align 8, !dbg !4004, !tbaa !788
  %add = add i64 32, %0, !dbg !4005
  %1 = load i64, ptr %valuelen.addr, align 8, !dbg !4006, !tbaa !788
  %add1 = add i64 %add, %1, !dbg !4007
  ret i64 %add1, !dbg !4008
}

; Function Attrs: nounwind uwtable
define internal void @hd_ringbuf_pop_back(ptr noundef %ringbuf) #0 !dbg !4009 {
entry:
  %ringbuf.addr = alloca ptr, align 8
  store ptr %ringbuf, ptr %ringbuf.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %ringbuf.addr, metadata !4013, metadata !DIExpression()), !dbg !4014
  %0 = load ptr, ptr %ringbuf.addr, align 8, !dbg !4015, !tbaa !612
  %len = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %0, i32 0, i32 3, !dbg !4015
  %1 = load i64, ptr %len, align 8, !dbg !4015, !tbaa !1311
  %cmp = icmp ugt i64 %1, 0, !dbg !4015
  br i1 %cmp, label %if.then, label %if.else, !dbg !4018

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !4018

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 670, ptr noundef @__PRETTY_FUNCTION__.hd_ringbuf_pop_back) #9, !dbg !4015
  unreachable, !dbg !4015

if.end:                                           ; preds = %if.then
  %2 = load ptr, ptr %ringbuf.addr, align 8, !dbg !4019, !tbaa !612
  %len1 = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %2, i32 0, i32 3, !dbg !4020
  %3 = load i64, ptr %len1, align 8, !dbg !4021, !tbaa !1311
  %dec = add i64 %3, -1, !dbg !4021
  store i64 %dec, ptr %len1, align 8, !dbg !4021, !tbaa !1311
  ret void, !dbg !4022
}

; Function Attrs: nounwind uwtable
define internal void @hd_map_remove(ptr noundef %map, ptr noundef %ent) #0 !dbg !4023 {
entry:
  %map.addr = alloca ptr, align 8
  %ent.addr = alloca ptr, align 8
  %dst = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !4027, metadata !DIExpression()), !dbg !4030
  store ptr %ent, ptr %ent.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %ent.addr, metadata !4028, metadata !DIExpression()), !dbg !4031
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #8, !dbg !4032
  tail call void @llvm.dbg.declare(metadata ptr %dst, metadata !4029, metadata !DIExpression()), !dbg !4033
  %0 = load ptr, ptr %map.addr, align 8, !dbg !4034, !tbaa !612
  %table = getelementptr inbounds %struct.nghttp2_hd_map, ptr %0, i32 0, i32 0, !dbg !4035
  %1 = load ptr, ptr %ent.addr, align 8, !dbg !4036, !tbaa !612
  %hash = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %1, i32 0, i32 4, !dbg !4037
  %2 = load i32, ptr %hash, align 4, !dbg !4037, !tbaa !682
  %and = and i32 %2, 127, !dbg !4038
  %idxprom = zext i32 %and to i64, !dbg !4034
  %arrayidx = getelementptr inbounds [128 x ptr], ptr %table, i64 0, i64 %idxprom, !dbg !4034
  store ptr %arrayidx, ptr %dst, align 8, !dbg !4039, !tbaa !612
  br label %for.cond, !dbg !4040

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %dst, align 8, !dbg !4041, !tbaa !612
  %4 = load ptr, ptr %3, align 8, !dbg !4044, !tbaa !612
  %tobool = icmp ne ptr %4, null, !dbg !4045
  br i1 %tobool, label %for.body, label %for.end, !dbg !4045

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %dst, align 8, !dbg !4046, !tbaa !612
  %6 = load ptr, ptr %5, align 8, !dbg !4049, !tbaa !612
  %7 = load ptr, ptr %ent.addr, align 8, !dbg !4050, !tbaa !612
  %cmp = icmp ne ptr %6, %7, !dbg !4051
  br i1 %cmp, label %if.then, label %if.end, !dbg !4052

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4053

if.end:                                           ; preds = %for.body
  %8 = load ptr, ptr %ent.addr, align 8, !dbg !4055, !tbaa !612
  %next = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %8, i32 0, i32 2, !dbg !4056
  %9 = load ptr, ptr %next, align 8, !dbg !4056, !tbaa !678
  %10 = load ptr, ptr %dst, align 8, !dbg !4057, !tbaa !612
  store ptr %9, ptr %10, align 8, !dbg !4058, !tbaa !612
  %11 = load ptr, ptr %ent.addr, align 8, !dbg !4059, !tbaa !612
  %next1 = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %11, i32 0, i32 2, !dbg !4060
  store ptr null, ptr %next1, align 8, !dbg !4061, !tbaa !678
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4062

for.inc:                                          ; preds = %if.then
  %12 = load ptr, ptr %dst, align 8, !dbg !4063, !tbaa !612
  %13 = load ptr, ptr %12, align 8, !dbg !4064, !tbaa !612
  %next2 = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %13, i32 0, i32 2, !dbg !4065
  store ptr %next2, ptr %dst, align 8, !dbg !4066, !tbaa !612
  br label %for.cond, !dbg !4067, !llvm.loop !4068

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4070
  br label %cleanup, !dbg !4070

cleanup:                                          ; preds = %for.end, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #8, !dbg !4070
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4070

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i64 @count_encoded_length(i64 noundef %n, i64 noundef %prefix) #0 !dbg !4071 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %prefix.addr = alloca i64, align 8
  %k = alloca i64, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4073, metadata !DIExpression()), !dbg !4077
  store i64 %prefix, ptr %prefix.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !4074, metadata !DIExpression()), !dbg !4078
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #8, !dbg !4079
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !4075, metadata !DIExpression()), !dbg !4080
  %0 = load i64, ptr %prefix.addr, align 8, !dbg !4081, !tbaa !788
  %sh_prom = trunc i64 %0 to i32, !dbg !4082
  %shl = shl i32 1, %sh_prom, !dbg !4082
  %sub = sub nsw i32 %shl, 1, !dbg !4083
  %conv = sext i32 %sub to i64, !dbg !4084
  store i64 %conv, ptr %k, align 8, !dbg !4080, !tbaa !788
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8, !dbg !4085
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !4076, metadata !DIExpression()), !dbg !4086
  store i64 0, ptr %len, align 8, !dbg !4086, !tbaa !788
  %1 = load i64, ptr %n.addr, align 8, !dbg !4087, !tbaa !788
  %2 = load i64, ptr %k, align 8, !dbg !4089, !tbaa !788
  %cmp = icmp ult i64 %1, %2, !dbg !4090
  br i1 %cmp, label %if.then, label %if.end, !dbg !4091

if.then:                                          ; preds = %entry
  store i64 1, ptr %retval, align 8, !dbg !4092
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4092

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %k, align 8, !dbg !4094, !tbaa !788
  %4 = load i64, ptr %n.addr, align 8, !dbg !4095, !tbaa !788
  %sub2 = sub i64 %4, %3, !dbg !4095
  store i64 %sub2, ptr %n.addr, align 8, !dbg !4095, !tbaa !788
  %5 = load i64, ptr %len, align 8, !dbg !4096, !tbaa !788
  %inc = add i64 %5, 1, !dbg !4096
  store i64 %inc, ptr %len, align 8, !dbg !4096, !tbaa !788
  br label %for.cond, !dbg !4097

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i64, ptr %n.addr, align 8, !dbg !4098, !tbaa !788
  %cmp3 = icmp uge i64 %6, 128, !dbg !4101
  br i1 %cmp3, label %for.body, label %for.end, !dbg !4102

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !4102

for.inc:                                          ; preds = %for.body
  %7 = load i64, ptr %n.addr, align 8, !dbg !4103, !tbaa !788
  %shr = lshr i64 %7, 7, !dbg !4103
  store i64 %shr, ptr %n.addr, align 8, !dbg !4103, !tbaa !788
  %8 = load i64, ptr %len, align 8, !dbg !4104, !tbaa !788
  %inc5 = add i64 %8, 1, !dbg !4104
  store i64 %inc5, ptr %len, align 8, !dbg !4104, !tbaa !788
  br label %for.cond, !dbg !4105, !llvm.loop !4106

for.end:                                          ; preds = %for.cond
  %9 = load i64, ptr %len, align 8, !dbg !4108, !tbaa !788
  %add = add i64 %9, 1, !dbg !4109
  store i64 %add, ptr %retval, align 8, !dbg !4110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4110

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8, !dbg !4111
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #8, !dbg !4111
  %10 = load i64, ptr %retval, align 8, !dbg !4111
  ret i64 %10, !dbg !4111
}

; Function Attrs: nounwind uwtable
define internal i64 @encode_length(ptr noundef %buf, i64 noundef %n, i64 noundef %prefix) #0 !dbg !4112 {
entry:
  %retval = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %prefix.addr = alloca i64, align 8
  %k = alloca i64, align 8
  %begin = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4116, metadata !DIExpression()), !dbg !4121
  store i64 %n, ptr %n.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4117, metadata !DIExpression()), !dbg !4122
  store i64 %prefix, ptr %prefix.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !4118, metadata !DIExpression()), !dbg !4123
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #8, !dbg !4124
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !4119, metadata !DIExpression()), !dbg !4125
  %0 = load i64, ptr %prefix.addr, align 8, !dbg !4126, !tbaa !788
  %sh_prom = trunc i64 %0 to i32, !dbg !4127
  %shl = shl i32 1, %sh_prom, !dbg !4127
  %sub = sub nsw i32 %shl, 1, !dbg !4128
  %conv = sext i32 %sub to i64, !dbg !4129
  store i64 %conv, ptr %k, align 8, !dbg !4125, !tbaa !788
  call void @llvm.lifetime.start.p0(i64 8, ptr %begin) #8, !dbg !4130
  tail call void @llvm.dbg.declare(metadata ptr %begin, metadata !4120, metadata !DIExpression()), !dbg !4131
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4132, !tbaa !612
  store ptr %1, ptr %begin, align 8, !dbg !4131, !tbaa !612
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !4133, !tbaa !612
  %3 = load i8, ptr %2, align 1, !dbg !4134, !tbaa !625
  %conv1 = zext i8 %3 to i64, !dbg !4134
  %4 = load i64, ptr %k, align 8, !dbg !4135, !tbaa !788
  %not = xor i64 %4, -1, !dbg !4136
  %and = and i64 %conv1, %not, !dbg !4137
  %conv2 = trunc i64 %and to i8, !dbg !4138
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !4139, !tbaa !612
  store i8 %conv2, ptr %5, align 1, !dbg !4140, !tbaa !625
  %6 = load i64, ptr %n.addr, align 8, !dbg !4141, !tbaa !788
  %7 = load i64, ptr %k, align 8, !dbg !4143, !tbaa !788
  %cmp = icmp ult i64 %6, %7, !dbg !4144
  br i1 %cmp, label %if.then, label %if.end, !dbg !4145

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !4146, !tbaa !612
  %9 = load i8, ptr %8, align 1, !dbg !4148, !tbaa !625
  %conv4 = zext i8 %9 to i64, !dbg !4148
  %10 = load i64, ptr %n.addr, align 8, !dbg !4149, !tbaa !788
  %or = or i64 %conv4, %10, !dbg !4150
  %conv5 = trunc i64 %or to i8, !dbg !4151
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !4152, !tbaa !612
  store i8 %conv5, ptr %11, align 1, !dbg !4153, !tbaa !625
  store i64 1, ptr %retval, align 8, !dbg !4154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4154

if.end:                                           ; preds = %entry
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !4155, !tbaa !612
  %13 = load i8, ptr %12, align 1, !dbg !4156, !tbaa !625
  %conv6 = zext i8 %13 to i64, !dbg !4156
  %14 = load i64, ptr %k, align 8, !dbg !4157, !tbaa !788
  %or7 = or i64 %conv6, %14, !dbg !4158
  %conv8 = trunc i64 %or7 to i8, !dbg !4159
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !4160, !tbaa !612
  store i8 %conv8, ptr %15, align 1, !dbg !4161, !tbaa !625
  %16 = load ptr, ptr %buf.addr, align 8, !dbg !4162, !tbaa !612
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i32 1, !dbg !4162
  store ptr %incdec.ptr, ptr %buf.addr, align 8, !dbg !4162, !tbaa !612
  %17 = load i64, ptr %k, align 8, !dbg !4163, !tbaa !788
  %18 = load i64, ptr %n.addr, align 8, !dbg !4164, !tbaa !788
  %sub9 = sub i64 %18, %17, !dbg !4164
  store i64 %sub9, ptr %n.addr, align 8, !dbg !4164, !tbaa !788
  br label %for.cond, !dbg !4165

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i64, ptr %n.addr, align 8, !dbg !4166, !tbaa !788
  %cmp10 = icmp uge i64 %19, 128, !dbg !4169
  br i1 %cmp10, label %for.body, label %for.end, !dbg !4170

for.body:                                         ; preds = %for.cond
  %20 = load i64, ptr %n.addr, align 8, !dbg !4171, !tbaa !788
  %and12 = and i64 %20, 127, !dbg !4173
  %or13 = or i64 128, %and12, !dbg !4174
  %conv14 = trunc i64 %or13 to i8, !dbg !4175
  %21 = load ptr, ptr %buf.addr, align 8, !dbg !4176, !tbaa !612
  %incdec.ptr15 = getelementptr inbounds i8, ptr %21, i32 1, !dbg !4176
  store ptr %incdec.ptr15, ptr %buf.addr, align 8, !dbg !4176, !tbaa !612
  store i8 %conv14, ptr %21, align 1, !dbg !4177, !tbaa !625
  br label %for.inc, !dbg !4178

for.inc:                                          ; preds = %for.body
  %22 = load i64, ptr %n.addr, align 8, !dbg !4179, !tbaa !788
  %shr = lshr i64 %22, 7, !dbg !4179
  store i64 %shr, ptr %n.addr, align 8, !dbg !4179, !tbaa !788
  br label %for.cond, !dbg !4180, !llvm.loop !4181

for.end:                                          ; preds = %for.cond
  %23 = load i64, ptr %n.addr, align 8, !dbg !4183, !tbaa !788
  %conv16 = trunc i64 %23 to i8, !dbg !4184
  %24 = load ptr, ptr %buf.addr, align 8, !dbg !4185, !tbaa !612
  %incdec.ptr17 = getelementptr inbounds i8, ptr %24, i32 1, !dbg !4185
  store ptr %incdec.ptr17, ptr %buf.addr, align 8, !dbg !4185, !tbaa !612
  store i8 %conv16, ptr %24, align 1, !dbg !4186, !tbaa !625
  %25 = load ptr, ptr %buf.addr, align 8, !dbg !4187, !tbaa !612
  %26 = load ptr, ptr %begin, align 8, !dbg !4188, !tbaa !612
  %sub.ptr.lhs.cast = ptrtoint ptr %25 to i64, !dbg !4189
  %sub.ptr.rhs.cast = ptrtoint ptr %26 to i64, !dbg !4189
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4189
  store i64 %sub.ptr.sub, ptr %retval, align 8, !dbg !4190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4190

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %begin) #8, !dbg !4191
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #8, !dbg !4191
  %27 = load i64, ptr %retval, align 8, !dbg !4191
  ret i64 %27, !dbg !4191
}

declare !dbg !4192 i32 @nghttp2_bufs_add(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @lookup_token(ptr noundef %name, i64 noundef %namelen) #0 !dbg !4197 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %namelen.addr = alloca i64, align 8
  store ptr %name, ptr %name.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4201, metadata !DIExpression()), !dbg !4203
  store i64 %namelen, ptr %namelen.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %namelen.addr, metadata !4202, metadata !DIExpression()), !dbg !4204
  %0 = load i64, ptr %namelen.addr, align 8, !dbg !4205, !tbaa !788
  switch i64 %0, label %sw.epilog361 [
    i64 2, label %sw.bb
    i64 3, label %sw.bb2
    i64 4, label %sw.bb16
    i64 5, label %sw.bb50
    i64 6, label %sw.bb69
    i64 7, label %sw.bb92
    i64 8, label %sw.bb129
    i64 9, label %sw.bb153
    i64 10, label %sw.bb162
    i64 11, label %sw.bb190
    i64 12, label %sw.bb199
    i64 13, label %sw.bb213
    i64 14, label %sw.bb247
    i64 15, label %sw.bb261
    i64 16, label %sw.bb275
    i64 17, label %sw.bb302
    i64 18, label %sw.bb316
    i64 19, label %sw.bb325
    i64 25, label %sw.bb343
    i64 27, label %sw.bb352
  ], !dbg !4206

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8, !dbg !4207, !tbaa !612
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 1, !dbg !4207
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4207, !tbaa !625
  %conv = zext i8 %2 to i32, !dbg !4207
  switch i32 %conv, label %sw.epilog [
    i32 101, label %sw.bb1
  ], !dbg !4209

sw.bb1:                                           ; preds = %sw.bb
  %3 = load ptr, ptr %name.addr, align 8, !dbg !4210, !tbaa !612
  %call = call i32 @memeq(ptr noundef @.str.72, ptr noundef %3, i64 noundef 1), !dbg !4213
  %tobool = icmp ne i32 %call, 0, !dbg !4213
  br i1 %tobool, label %if.then, label %if.end, !dbg !4214

if.then:                                          ; preds = %sw.bb1
  store i32 61, ptr %retval, align 4, !dbg !4215
  br label %return, !dbg !4215

if.end:                                           ; preds = %sw.bb1
  br label %sw.epilog, !dbg !4217

sw.epilog:                                        ; preds = %sw.bb, %if.end
  br label %sw.epilog361, !dbg !4218

sw.bb2:                                           ; preds = %entry
  %4 = load ptr, ptr %name.addr, align 8, !dbg !4219, !tbaa !612
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 2, !dbg !4219
  %5 = load i8, ptr %arrayidx3, align 1, !dbg !4219, !tbaa !625
  %conv4 = zext i8 %5 to i32, !dbg !4219
  switch i32 %conv4, label %sw.epilog15 [
    i32 97, label %sw.bb5
    i32 101, label %sw.bb10
  ], !dbg !4220

sw.bb5:                                           ; preds = %sw.bb2
  %6 = load ptr, ptr %name.addr, align 8, !dbg !4221, !tbaa !612
  %call6 = call i32 @memeq(ptr noundef @.str.73, ptr noundef %6, i64 noundef 2), !dbg !4224
  %tobool7 = icmp ne i32 %call6, 0, !dbg !4224
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4225

if.then8:                                         ; preds = %sw.bb5
  store i32 59, ptr %retval, align 4, !dbg !4226
  br label %return, !dbg !4226

if.end9:                                          ; preds = %sw.bb5
  br label %sw.epilog15, !dbg !4228

sw.bb10:                                          ; preds = %sw.bb2
  %7 = load ptr, ptr %name.addr, align 8, !dbg !4229, !tbaa !612
  %call11 = call i32 @memeq(ptr noundef @.str.74, ptr noundef %7, i64 noundef 2), !dbg !4231
  %tobool12 = icmp ne i32 %call11, 0, !dbg !4231
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4232

if.then13:                                        ; preds = %sw.bb10
  store i32 20, ptr %retval, align 4, !dbg !4233
  br label %return, !dbg !4233

if.end14:                                         ; preds = %sw.bb10
  br label %sw.epilog15, !dbg !4235

sw.epilog15:                                      ; preds = %sw.bb2, %if.end14, %if.end9
  br label %sw.epilog361, !dbg !4236

sw.bb16:                                          ; preds = %entry
  %8 = load ptr, ptr %name.addr, align 8, !dbg !4237, !tbaa !612
  %arrayidx17 = getelementptr inbounds i8, ptr %8, i64 3, !dbg !4237
  %9 = load i8, ptr %arrayidx17, align 1, !dbg !4237, !tbaa !625
  %conv18 = zext i8 %9 to i32, !dbg !4237
  switch i32 %conv18, label %sw.epilog49 [
    i32 101, label %sw.bb19
    i32 103, label %sw.bb24
    i32 107, label %sw.bb29
    i32 109, label %sw.bb34
    i32 116, label %sw.bb39
    i32 121, label %sw.bb44
  ], !dbg !4238

sw.bb19:                                          ; preds = %sw.bb16
  %10 = load ptr, ptr %name.addr, align 8, !dbg !4239, !tbaa !612
  %call20 = call i32 @memeq(ptr noundef @.str.75, ptr noundef %10, i64 noundef 3), !dbg !4242
  %tobool21 = icmp ne i32 %call20, 0, !dbg !4242
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4243

if.then22:                                        ; preds = %sw.bb19
  store i32 32, ptr %retval, align 4, !dbg !4244
  br label %return, !dbg !4244

if.end23:                                         ; preds = %sw.bb19
  br label %sw.epilog49, !dbg !4246

sw.bb24:                                          ; preds = %sw.bb16
  %11 = load ptr, ptr %name.addr, align 8, !dbg !4247, !tbaa !612
  %call25 = call i32 @memeq(ptr noundef @.str.76, ptr noundef %11, i64 noundef 3), !dbg !4249
  %tobool26 = icmp ne i32 %call25, 0, !dbg !4249
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !4250

if.then27:                                        ; preds = %sw.bb24
  store i32 33, ptr %retval, align 4, !dbg !4251
  br label %return, !dbg !4251

if.end28:                                         ; preds = %sw.bb24
  br label %sw.epilog49, !dbg !4253

sw.bb29:                                          ; preds = %sw.bb16
  %12 = load ptr, ptr %name.addr, align 8, !dbg !4254, !tbaa !612
  %call30 = call i32 @memeq(ptr noundef @.str.77, ptr noundef %12, i64 noundef 3), !dbg !4256
  %tobool31 = icmp ne i32 %call30, 0, !dbg !4256
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !4257

if.then32:                                        ; preds = %sw.bb29
  store i32 44, ptr %retval, align 4, !dbg !4258
  br label %return, !dbg !4258

if.end33:                                         ; preds = %sw.bb29
  br label %sw.epilog49, !dbg !4260

sw.bb34:                                          ; preds = %sw.bb16
  %13 = load ptr, ptr %name.addr, align 8, !dbg !4261, !tbaa !612
  %call35 = call i32 @memeq(ptr noundef @.str.78, ptr noundef %13, i64 noundef 3), !dbg !4263
  %tobool36 = icmp ne i32 %call35, 0, !dbg !4263
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !4264

if.then37:                                        ; preds = %sw.bb34
  store i32 36, ptr %retval, align 4, !dbg !4265
  br label %return, !dbg !4265

if.end38:                                         ; preds = %sw.bb34
  br label %sw.epilog49, !dbg !4267

sw.bb39:                                          ; preds = %sw.bb16
  %14 = load ptr, ptr %name.addr, align 8, !dbg !4268, !tbaa !612
  %call40 = call i32 @memeq(ptr noundef @.str.79, ptr noundef %14, i64 noundef 3), !dbg !4270
  %tobool41 = icmp ne i32 %call40, 0, !dbg !4270
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !4271

if.then42:                                        ; preds = %sw.bb39
  store i32 37, ptr %retval, align 4, !dbg !4272
  br label %return, !dbg !4272

if.end43:                                         ; preds = %sw.bb39
  br label %sw.epilog49, !dbg !4274

sw.bb44:                                          ; preds = %sw.bb16
  %15 = load ptr, ptr %name.addr, align 8, !dbg !4275, !tbaa !612
  %call45 = call i32 @memeq(ptr noundef @.str.80, ptr noundef %15, i64 noundef 3), !dbg !4277
  %tobool46 = icmp ne i32 %call45, 0, !dbg !4277
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !4278

if.then47:                                        ; preds = %sw.bb44
  store i32 58, ptr %retval, align 4, !dbg !4279
  br label %return, !dbg !4279

if.end48:                                         ; preds = %sw.bb44
  br label %sw.epilog49, !dbg !4281

sw.epilog49:                                      ; preds = %sw.bb16, %if.end48, %if.end43, %if.end38, %if.end33, %if.end28, %if.end23
  br label %sw.epilog361, !dbg !4282

sw.bb50:                                          ; preds = %entry
  %16 = load ptr, ptr %name.addr, align 8, !dbg !4283, !tbaa !612
  %arrayidx51 = getelementptr inbounds i8, ptr %16, i64 4, !dbg !4283
  %17 = load i8, ptr %arrayidx51, align 1, !dbg !4283, !tbaa !625
  %conv52 = zext i8 %17 to i32, !dbg !4283
  switch i32 %conv52, label %sw.epilog68 [
    i32 101, label %sw.bb53
    i32 104, label %sw.bb58
    i32 119, label %sw.bb63
  ], !dbg !4284

sw.bb53:                                          ; preds = %sw.bb50
  %18 = load ptr, ptr %name.addr, align 8, !dbg !4285, !tbaa !612
  %call54 = call i32 @memeq(ptr noundef @.str.81, ptr noundef %18, i64 noundef 4), !dbg !4288
  %tobool55 = icmp ne i32 %call54, 0, !dbg !4288
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !4289

if.then56:                                        ; preds = %sw.bb53
  store i32 49, ptr %retval, align 4, !dbg !4290
  br label %return, !dbg !4290

if.end57:                                         ; preds = %sw.bb53
  br label %sw.epilog68, !dbg !4292

sw.bb58:                                          ; preds = %sw.bb50
  %19 = load ptr, ptr %name.addr, align 8, !dbg !4293, !tbaa !612
  %call59 = call i32 @memeq(ptr noundef @.str.82, ptr noundef %19, i64 noundef 4), !dbg !4295
  %tobool60 = icmp ne i32 %call59, 0, !dbg !4295
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !4296

if.then61:                                        ; preds = %sw.bb58
  store i32 3, ptr %retval, align 4, !dbg !4297
  br label %return, !dbg !4297

if.end62:                                         ; preds = %sw.bb58
  br label %sw.epilog68, !dbg !4299

sw.bb63:                                          ; preds = %sw.bb50
  %20 = load ptr, ptr %name.addr, align 8, !dbg !4300, !tbaa !612
  %call64 = call i32 @memeq(ptr noundef @.str.83, ptr noundef %20, i64 noundef 4), !dbg !4302
  %tobool65 = icmp ne i32 %call64, 0, !dbg !4302
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !4303

if.then66:                                        ; preds = %sw.bb63
  store i32 21, ptr %retval, align 4, !dbg !4304
  br label %return, !dbg !4304

if.end67:                                         ; preds = %sw.bb63
  br label %sw.epilog68, !dbg !4306

sw.epilog68:                                      ; preds = %sw.bb50, %if.end67, %if.end62, %if.end57
  br label %sw.epilog361, !dbg !4307

sw.bb69:                                          ; preds = %entry
  %21 = load ptr, ptr %name.addr, align 8, !dbg !4308, !tbaa !612
  %arrayidx70 = getelementptr inbounds i8, ptr %21, i64 5, !dbg !4308
  %22 = load i8, ptr %arrayidx70, align 1, !dbg !4308, !tbaa !625
  %conv71 = zext i8 %22 to i32, !dbg !4308
  switch i32 %conv71, label %sw.epilog91 [
    i32 101, label %sw.bb72
    i32 114, label %sw.bb77
    i32 116, label %sw.bb82
  ], !dbg !4309

sw.bb72:                                          ; preds = %sw.bb69
  %23 = load ptr, ptr %name.addr, align 8, !dbg !4310, !tbaa !612
  %call73 = call i32 @memeq(ptr noundef @.str.84, ptr noundef %23, i64 noundef 5), !dbg !4313
  %tobool74 = icmp ne i32 %call73, 0, !dbg !4313
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !4314

if.then75:                                        ; preds = %sw.bb72
  store i32 31, ptr %retval, align 4, !dbg !4315
  br label %return, !dbg !4315

if.end76:                                         ; preds = %sw.bb72
  br label %sw.epilog91, !dbg !4317

sw.bb77:                                          ; preds = %sw.bb69
  %24 = load ptr, ptr %name.addr, align 8, !dbg !4318, !tbaa !612
  %call78 = call i32 @memeq(ptr noundef @.str.85, ptr noundef %24, i64 noundef 5), !dbg !4320
  %tobool79 = icmp ne i32 %call78, 0, !dbg !4320
  br i1 %tobool79, label %if.then80, label %if.end81, !dbg !4321

if.then80:                                        ; preds = %sw.bb77
  store i32 53, ptr %retval, align 4, !dbg !4322
  br label %return, !dbg !4322

if.end81:                                         ; preds = %sw.bb77
  br label %sw.epilog91, !dbg !4324

sw.bb82:                                          ; preds = %sw.bb69
  %25 = load ptr, ptr %name.addr, align 8, !dbg !4325, !tbaa !612
  %call83 = call i32 @memeq(ptr noundef @.str.86, ptr noundef %25, i64 noundef 5), !dbg !4327
  %tobool84 = icmp ne i32 %call83, 0, !dbg !4327
  br i1 %tobool84, label %if.then85, label %if.end86, !dbg !4328

if.then85:                                        ; preds = %sw.bb82
  store i32 18, ptr %retval, align 4, !dbg !4329
  br label %return, !dbg !4329

if.end86:                                         ; preds = %sw.bb82
  %26 = load ptr, ptr %name.addr, align 8, !dbg !4331, !tbaa !612
  %call87 = call i32 @memeq(ptr noundef @.str.87, ptr noundef %26, i64 noundef 5), !dbg !4333
  %tobool88 = icmp ne i32 %call87, 0, !dbg !4333
  br i1 %tobool88, label %if.then89, label %if.end90, !dbg !4334

if.then89:                                        ; preds = %if.end86
  store i32 34, ptr %retval, align 4, !dbg !4335
  br label %return, !dbg !4335

if.end90:                                         ; preds = %if.end86
  br label %sw.epilog91, !dbg !4337

sw.epilog91:                                      ; preds = %sw.bb69, %if.end90, %if.end81, %if.end76
  br label %sw.epilog361, !dbg !4338

sw.bb92:                                          ; preds = %entry
  %27 = load ptr, ptr %name.addr, align 8, !dbg !4339, !tbaa !612
  %arrayidx93 = getelementptr inbounds i8, ptr %27, i64 6, !dbg !4339
  %28 = load i8, ptr %arrayidx93, align 1, !dbg !4339, !tbaa !625
  %conv94 = zext i8 %28 to i32, !dbg !4339
  switch i32 %conv94, label %sw.epilog128 [
    i32 100, label %sw.bb95
    i32 101, label %sw.bb100
    i32 104, label %sw.bb109
    i32 114, label %sw.bb114
    i32 115, label %sw.bb119
  ], !dbg !4340

sw.bb95:                                          ; preds = %sw.bb92
  %29 = load ptr, ptr %name.addr, align 8, !dbg !4341, !tbaa !612
  %call96 = call i32 @memeq(ptr noundef @.str.88, ptr noundef %29, i64 noundef 6), !dbg !4344
  %tobool97 = icmp ne i32 %call96, 0, !dbg !4344
  br i1 %tobool97, label %if.then98, label %if.end99, !dbg !4345

if.then98:                                        ; preds = %sw.bb95
  store i32 1, ptr %retval, align 4, !dbg !4346
  br label %return, !dbg !4346

if.end99:                                         ; preds = %sw.bb95
  br label %sw.epilog128, !dbg !4348

sw.bb100:                                         ; preds = %sw.bb92
  %30 = load ptr, ptr %name.addr, align 8, !dbg !4349, !tbaa !612
  %call101 = call i32 @memeq(ptr noundef @.str.89, ptr noundef %30, i64 noundef 6), !dbg !4351
  %tobool102 = icmp ne i32 %call101, 0, !dbg !4351
  br i1 %tobool102, label %if.then103, label %if.end104, !dbg !4352

if.then103:                                       ; preds = %sw.bb100
  store i32 5, ptr %retval, align 4, !dbg !4353
  br label %return, !dbg !4353

if.end104:                                        ; preds = %sw.bb100
  %31 = load ptr, ptr %name.addr, align 8, !dbg !4355, !tbaa !612
  %call105 = call i32 @memeq(ptr noundef @.str.90, ptr noundef %31, i64 noundef 6), !dbg !4357
  %tobool106 = icmp ne i32 %call105, 0, !dbg !4357
  br i1 %tobool106, label %if.then107, label %if.end108, !dbg !4358

if.then107:                                       ; preds = %if.end104
  store i32 65, ptr %retval, align 4, !dbg !4359
  br label %return, !dbg !4359

if.end108:                                        ; preds = %if.end104
  br label %sw.epilog128, !dbg !4361

sw.bb109:                                         ; preds = %sw.bb92
  %32 = load ptr, ptr %name.addr, align 8, !dbg !4362, !tbaa !612
  %call110 = call i32 @memeq(ptr noundef @.str.91, ptr noundef %32, i64 noundef 6), !dbg !4364
  %tobool111 = icmp ne i32 %call110, 0, !dbg !4364
  br i1 %tobool111, label %if.then112, label %if.end113, !dbg !4365

if.then112:                                       ; preds = %sw.bb109
  store i32 51, ptr %retval, align 4, !dbg !4366
  br label %return, !dbg !4366

if.end113:                                        ; preds = %sw.bb109
  br label %sw.epilog128, !dbg !4368

sw.bb114:                                         ; preds = %sw.bb92
  %33 = load ptr, ptr %name.addr, align 8, !dbg !4369, !tbaa !612
  %call115 = call i32 @memeq(ptr noundef @.str.92, ptr noundef %33, i64 noundef 6), !dbg !4371
  %tobool116 = icmp ne i32 %call115, 0, !dbg !4371
  br i1 %tobool116, label %if.then117, label %if.end118, !dbg !4372

if.then117:                                       ; preds = %sw.bb114
  store i32 50, ptr %retval, align 4, !dbg !4373
  br label %return, !dbg !4373

if.end118:                                        ; preds = %sw.bb114
  br label %sw.epilog128, !dbg !4375

sw.bb119:                                         ; preds = %sw.bb92
  %34 = load ptr, ptr %name.addr, align 8, !dbg !4376, !tbaa !612
  %call120 = call i32 @memeq(ptr noundef @.str.93, ptr noundef %34, i64 noundef 6), !dbg !4378
  %tobool121 = icmp ne i32 %call120, 0, !dbg !4378
  br i1 %tobool121, label %if.then122, label %if.end123, !dbg !4379

if.then122:                                       ; preds = %sw.bb119
  store i32 7, ptr %retval, align 4, !dbg !4380
  br label %return, !dbg !4380

if.end123:                                        ; preds = %sw.bb119
  %35 = load ptr, ptr %name.addr, align 8, !dbg !4382, !tbaa !612
  %call124 = call i32 @memeq(ptr noundef @.str.94, ptr noundef %35, i64 noundef 6), !dbg !4384
  %tobool125 = icmp ne i32 %call124, 0, !dbg !4384
  br i1 %tobool125, label %if.then126, label %if.end127, !dbg !4385

if.then126:                                       ; preds = %if.end123
  store i32 35, ptr %retval, align 4, !dbg !4386
  br label %return, !dbg !4386

if.end127:                                        ; preds = %if.end123
  br label %sw.epilog128, !dbg !4388

sw.epilog128:                                     ; preds = %sw.bb92, %if.end127, %if.end118, %if.end113, %if.end108, %if.end99
  br label %sw.epilog361, !dbg !4389

sw.bb129:                                         ; preds = %entry
  %36 = load ptr, ptr %name.addr, align 8, !dbg !4390, !tbaa !612
  %arrayidx130 = getelementptr inbounds i8, ptr %36, i64 7, !dbg !4390
  %37 = load i8, ptr %arrayidx130, align 1, !dbg !4390, !tbaa !625
  %conv131 = zext i8 %37 to i32, !dbg !4390
  switch i32 %conv131, label %sw.epilog152 [
    i32 101, label %sw.bb132
    i32 104, label %sw.bb137
    i32 110, label %sw.bb142
    i32 121, label %sw.bb147
  ], !dbg !4391

sw.bb132:                                         ; preds = %sw.bb129
  %38 = load ptr, ptr %name.addr, align 8, !dbg !4392, !tbaa !612
  %call133 = call i32 @memeq(ptr noundef @.str.95, ptr noundef %38, i64 noundef 7), !dbg !4395
  %tobool134 = icmp ne i32 %call133, 0, !dbg !4395
  br i1 %tobool134, label %if.then135, label %if.end136, !dbg !4396

if.then135:                                       ; preds = %sw.bb132
  store i32 41, ptr %retval, align 4, !dbg !4397
  br label %return, !dbg !4397

if.end136:                                        ; preds = %sw.bb132
  br label %sw.epilog152, !dbg !4399

sw.bb137:                                         ; preds = %sw.bb129
  %39 = load ptr, ptr %name.addr, align 8, !dbg !4400, !tbaa !612
  %call138 = call i32 @memeq(ptr noundef @.str.96, ptr noundef %39, i64 noundef 7), !dbg !4402
  %tobool139 = icmp ne i32 %call138, 0, !dbg !4402
  br i1 %tobool139, label %if.then140, label %if.end141, !dbg !4403

if.then140:                                       ; preds = %sw.bb137
  store i32 38, ptr %retval, align 4, !dbg !4404
  br label %return, !dbg !4404

if.end141:                                        ; preds = %sw.bb137
  br label %sw.epilog152, !dbg !4406

sw.bb142:                                         ; preds = %sw.bb129
  %40 = load ptr, ptr %name.addr, align 8, !dbg !4407, !tbaa !612
  %call143 = call i32 @memeq(ptr noundef @.str.97, ptr noundef %40, i64 noundef 7), !dbg !4409
  %tobool144 = icmp ne i32 %call143, 0, !dbg !4409
  br i1 %tobool144, label %if.then145, label %if.end146, !dbg !4410

if.then145:                                       ; preds = %sw.bb142
  store i32 45, ptr %retval, align 4, !dbg !4411
  br label %return, !dbg !4411

if.end146:                                        ; preds = %sw.bb142
  br label %sw.epilog152, !dbg !4413

sw.bb147:                                         ; preds = %sw.bb129
  %41 = load ptr, ptr %name.addr, align 8, !dbg !4414, !tbaa !612
  %call148 = call i32 @memeq(ptr noundef @.str.98, ptr noundef %41, i64 noundef 7), !dbg !4416
  %tobool149 = icmp ne i32 %call148, 0, !dbg !4416
  br i1 %tobool149, label %if.then150, label %if.end151, !dbg !4417

if.then150:                                       ; preds = %sw.bb147
  store i32 67, ptr %retval, align 4, !dbg !4418
  br label %return, !dbg !4418

if.end151:                                        ; preds = %sw.bb147
  br label %sw.epilog152, !dbg !4420

sw.epilog152:                                     ; preds = %sw.bb129, %if.end151, %if.end146, %if.end141, %if.end136
  br label %sw.epilog361, !dbg !4421

sw.bb153:                                         ; preds = %entry
  %42 = load ptr, ptr %name.addr, align 8, !dbg !4422, !tbaa !612
  %arrayidx154 = getelementptr inbounds i8, ptr %42, i64 8, !dbg !4422
  %43 = load i8, ptr %arrayidx154, align 1, !dbg !4422, !tbaa !625
  %conv155 = zext i8 %43 to i32, !dbg !4422
  switch i32 %conv155, label %sw.epilog161 [
    i32 108, label %sw.bb156
  ], !dbg !4423

sw.bb156:                                         ; preds = %sw.bb153
  %44 = load ptr, ptr %name.addr, align 8, !dbg !4424, !tbaa !612
  %call157 = call i32 @memeq(ptr noundef @.str.99, ptr noundef %44, i64 noundef 8), !dbg !4427
  %tobool158 = icmp ne i32 %call157, 0, !dbg !4427
  br i1 %tobool158, label %if.then159, label %if.end160, !dbg !4428

if.then159:                                       ; preds = %sw.bb156
  store i32 66, ptr %retval, align 4, !dbg !4429
  br label %return, !dbg !4429

if.end160:                                        ; preds = %sw.bb156
  br label %sw.epilog161, !dbg !4431

sw.epilog161:                                     ; preds = %sw.bb153, %if.end160
  br label %sw.epilog361, !dbg !4432

sw.bb162:                                         ; preds = %entry
  %45 = load ptr, ptr %name.addr, align 8, !dbg !4433, !tbaa !612
  %arrayidx163 = getelementptr inbounds i8, ptr %45, i64 9, !dbg !4433
  %46 = load i8, ptr %arrayidx163, align 1, !dbg !4433, !tbaa !625
  %conv164 = zext i8 %46 to i32, !dbg !4433
  switch i32 %conv164, label %sw.epilog189 [
    i32 101, label %sw.bb165
    i32 110, label %sw.bb174
    i32 116, label %sw.bb179
    i32 121, label %sw.bb184
  ], !dbg !4434

sw.bb165:                                         ; preds = %sw.bb162
  %47 = load ptr, ptr %name.addr, align 8, !dbg !4435, !tbaa !612
  %call166 = call i32 @memeq(ptr noundef @.str.100, ptr noundef %47, i64 noundef 9), !dbg !4438
  %tobool167 = icmp ne i32 %call166, 0, !dbg !4438
  br i1 %tobool167, label %if.then168, label %if.end169, !dbg !4439

if.then168:                                       ; preds = %sw.bb165
  store i32 63, ptr %retval, align 4, !dbg !4440
  br label %return, !dbg !4440

if.end169:                                        ; preds = %sw.bb165
  %48 = load ptr, ptr %name.addr, align 8, !dbg !4442, !tbaa !612
  %call170 = call i32 @memeq(ptr noundef @.str.101, ptr noundef %48, i64 noundef 9), !dbg !4444
  %tobool171 = icmp ne i32 %call170, 0, !dbg !4444
  br i1 %tobool171, label %if.then172, label %if.end173, !dbg !4445

if.then172:                                       ; preds = %if.end169
  store i32 54, ptr %retval, align 4, !dbg !4446
  br label %return, !dbg !4446

if.end173:                                        ; preds = %if.end169
  br label %sw.epilog189, !dbg !4448

sw.bb174:                                         ; preds = %sw.bb162
  %49 = load ptr, ptr %name.addr, align 8, !dbg !4449, !tbaa !612
  %call175 = call i32 @memeq(ptr noundef @.str.102, ptr noundef %49, i64 noundef 9), !dbg !4451
  %tobool176 = icmp ne i32 %call175, 0, !dbg !4451
  br i1 %tobool176, label %if.then177, label %if.end178, !dbg !4452

if.then177:                                       ; preds = %sw.bb174
  store i32 62, ptr %retval, align 4, !dbg !4453
  br label %return, !dbg !4453

if.end178:                                        ; preds = %sw.bb174
  br label %sw.epilog189, !dbg !4455

sw.bb179:                                         ; preds = %sw.bb162
  %50 = load ptr, ptr %name.addr, align 8, !dbg !4456, !tbaa !612
  %call180 = call i32 @memeq(ptr noundef @.str.103, ptr noundef %50, i64 noundef 9), !dbg !4458
  %tobool181 = icmp ne i32 %call180, 0, !dbg !4458
  br i1 %tobool181, label %if.then182, label %if.end183, !dbg !4459

if.then182:                                       ; preds = %sw.bb179
  store i32 57, ptr %retval, align 4, !dbg !4460
  br label %return, !dbg !4460

if.end183:                                        ; preds = %sw.bb179
  br label %sw.epilog189, !dbg !4462

sw.bb184:                                         ; preds = %sw.bb162
  %51 = load ptr, ptr %name.addr, align 8, !dbg !4463, !tbaa !612
  %call185 = call i32 @memeq(ptr noundef @.str.104, ptr noundef %51, i64 noundef 9), !dbg !4465
  %tobool186 = icmp ne i32 %call185, 0, !dbg !4465
  br i1 %tobool186, label %if.then187, label %if.end188, !dbg !4466

if.then187:                                       ; preds = %sw.bb184
  store i32 0, ptr %retval, align 4, !dbg !4467
  br label %return, !dbg !4467

if.end188:                                        ; preds = %sw.bb184
  br label %sw.epilog189, !dbg !4469

sw.epilog189:                                     ; preds = %sw.bb162, %if.end188, %if.end183, %if.end178, %if.end173
  br label %sw.epilog361, !dbg !4470

sw.bb190:                                         ; preds = %entry
  %52 = load ptr, ptr %name.addr, align 8, !dbg !4471, !tbaa !612
  %arrayidx191 = getelementptr inbounds i8, ptr %52, i64 10, !dbg !4471
  %53 = load i8, ptr %arrayidx191, align 1, !dbg !4471, !tbaa !625
  %conv192 = zext i8 %53 to i32, !dbg !4471
  switch i32 %conv192, label %sw.epilog198 [
    i32 114, label %sw.bb193
  ], !dbg !4472

sw.bb193:                                         ; preds = %sw.bb190
  %54 = load ptr, ptr %name.addr, align 8, !dbg !4473, !tbaa !612
  %call194 = call i32 @memeq(ptr noundef @.str.105, ptr noundef %54, i64 noundef 10), !dbg !4476
  %tobool195 = icmp ne i32 %call194, 0, !dbg !4476
  br i1 %tobool195, label %if.then196, label %if.end197, !dbg !4477

if.then196:                                       ; preds = %sw.bb193
  store i32 52, ptr %retval, align 4, !dbg !4478
  br label %return, !dbg !4478

if.end197:                                        ; preds = %sw.bb193
  br label %sw.epilog198, !dbg !4480

sw.epilog198:                                     ; preds = %sw.bb190, %if.end197
  br label %sw.epilog361, !dbg !4481

sw.bb199:                                         ; preds = %entry
  %55 = load ptr, ptr %name.addr, align 8, !dbg !4482, !tbaa !612
  %arrayidx200 = getelementptr inbounds i8, ptr %55, i64 11, !dbg !4482
  %56 = load i8, ptr %arrayidx200, align 1, !dbg !4482, !tbaa !625
  %conv201 = zext i8 %56 to i32, !dbg !4482
  switch i32 %conv201, label %sw.epilog212 [
    i32 101, label %sw.bb202
    i32 115, label %sw.bb207
  ], !dbg !4483

sw.bb202:                                         ; preds = %sw.bb199
  %57 = load ptr, ptr %name.addr, align 8, !dbg !4484, !tbaa !612
  %call203 = call i32 @memeq(ptr noundef @.str.106, ptr noundef %57, i64 noundef 11), !dbg !4487
  %tobool204 = icmp ne i32 %call203, 0, !dbg !4487
  br i1 %tobool204, label %if.then205, label %if.end206, !dbg !4488

if.then205:                                       ; preds = %sw.bb202
  store i32 30, ptr %retval, align 4, !dbg !4489
  br label %return, !dbg !4489

if.end206:                                        ; preds = %sw.bb202
  br label %sw.epilog212, !dbg !4491

sw.bb207:                                         ; preds = %sw.bb199
  %58 = load ptr, ptr %name.addr, align 8, !dbg !4492, !tbaa !612
  %call208 = call i32 @memeq(ptr noundef @.str.107, ptr noundef %58, i64 noundef 11), !dbg !4494
  %tobool209 = icmp ne i32 %call208, 0, !dbg !4494
  br i1 %tobool209, label %if.then210, label %if.end211, !dbg !4495

if.then210:                                       ; preds = %sw.bb207
  store i32 46, ptr %retval, align 4, !dbg !4496
  br label %return, !dbg !4496

if.end211:                                        ; preds = %sw.bb207
  br label %sw.epilog212, !dbg !4498

sw.epilog212:                                     ; preds = %sw.bb199, %if.end211, %if.end206
  br label %sw.epilog361, !dbg !4499

sw.bb213:                                         ; preds = %entry
  %59 = load ptr, ptr %name.addr, align 8, !dbg !4500, !tbaa !612
  %arrayidx214 = getelementptr inbounds i8, ptr %59, i64 12, !dbg !4500
  %60 = load i8, ptr %arrayidx214, align 1, !dbg !4500, !tbaa !625
  %conv215 = zext i8 %60 to i32, !dbg !4500
  switch i32 %conv215, label %sw.epilog246 [
    i32 100, label %sw.bb216
    i32 101, label %sw.bb221
    i32 104, label %sw.bb226
    i32 108, label %sw.bb231
    i32 110, label %sw.bb236
    i32 115, label %sw.bb241
  ], !dbg !4501

sw.bb216:                                         ; preds = %sw.bb213
  %61 = load ptr, ptr %name.addr, align 8, !dbg !4502, !tbaa !612
  %call217 = call i32 @memeq(ptr noundef @.str.108, ptr noundef %61, i64 noundef 12), !dbg !4505
  %tobool218 = icmp ne i32 %call217, 0, !dbg !4505
  br i1 %tobool218, label %if.then219, label %if.end220, !dbg !4506

if.then219:                                       ; preds = %sw.bb216
  store i32 43, ptr %retval, align 4, !dbg !4507
  br label %return, !dbg !4507

if.end220:                                        ; preds = %sw.bb216
  br label %sw.epilog246, !dbg !4509

sw.bb221:                                         ; preds = %sw.bb213
  %62 = load ptr, ptr %name.addr, align 8, !dbg !4510, !tbaa !612
  %call222 = call i32 @memeq(ptr noundef @.str.109, ptr noundef %62, i64 noundef 12), !dbg !4512
  %tobool223 = icmp ne i32 %call222, 0, !dbg !4512
  br i1 %tobool223, label %if.then224, label %if.end225, !dbg !4513

if.then224:                                       ; preds = %sw.bb221
  store i32 29, ptr %retval, align 4, !dbg !4514
  br label %return, !dbg !4514

if.end225:                                        ; preds = %sw.bb221
  br label %sw.epilog246, !dbg !4516

sw.bb226:                                         ; preds = %sw.bb213
  %63 = load ptr, ptr %name.addr, align 8, !dbg !4517, !tbaa !612
  %call227 = call i32 @memeq(ptr noundef @.str.110, ptr noundef %63, i64 noundef 12), !dbg !4519
  %tobool228 = icmp ne i32 %call227, 0, !dbg !4519
  br i1 %tobool228, label %if.then229, label %if.end230, !dbg !4520

if.then229:                                       ; preds = %sw.bb226
  store i32 40, ptr %retval, align 4, !dbg !4521
  br label %return, !dbg !4521

if.end230:                                        ; preds = %sw.bb226
  br label %sw.epilog246, !dbg !4523

sw.bb231:                                         ; preds = %sw.bb213
  %64 = load ptr, ptr %name.addr, align 8, !dbg !4524, !tbaa !612
  %call232 = call i32 @memeq(ptr noundef @.str.111, ptr noundef %64, i64 noundef 12), !dbg !4526
  %tobool233 = icmp ne i32 %call232, 0, !dbg !4526
  br i1 %tobool233, label %if.then234, label %if.end235, !dbg !4527

if.then234:                                       ; preds = %sw.bb231
  store i32 23, ptr %retval, align 4, !dbg !4528
  br label %return, !dbg !4528

if.end235:                                        ; preds = %sw.bb231
  br label %sw.epilog246, !dbg !4530

sw.bb236:                                         ; preds = %sw.bb213
  %65 = load ptr, ptr %name.addr, align 8, !dbg !4531, !tbaa !612
  %call237 = call i32 @memeq(ptr noundef @.str.112, ptr noundef %65, i64 noundef 12), !dbg !4533
  %tobool238 = icmp ne i32 %call237, 0, !dbg !4533
  br i1 %tobool238, label %if.then239, label %if.end240, !dbg !4534

if.then239:                                       ; preds = %sw.bb236
  store i32 22, ptr %retval, align 4, !dbg !4535
  br label %return, !dbg !4535

if.end240:                                        ; preds = %sw.bb236
  br label %sw.epilog246, !dbg !4537

sw.bb241:                                         ; preds = %sw.bb213
  %66 = load ptr, ptr %name.addr, align 8, !dbg !4538, !tbaa !612
  %call242 = call i32 @memeq(ptr noundef @.str.113, ptr noundef %66, i64 noundef 12), !dbg !4540
  %tobool243 = icmp ne i32 %call242, 0, !dbg !4540
  br i1 %tobool243, label %if.then244, label %if.end245, !dbg !4541

if.then244:                                       ; preds = %sw.bb241
  store i32 17, ptr %retval, align 4, !dbg !4542
  br label %return, !dbg !4542

if.end245:                                        ; preds = %sw.bb241
  br label %sw.epilog246, !dbg !4544

sw.epilog246:                                     ; preds = %sw.bb213, %if.end245, %if.end240, %if.end235, %if.end230, %if.end225, %if.end220
  br label %sw.epilog361, !dbg !4545

sw.bb247:                                         ; preds = %entry
  %67 = load ptr, ptr %name.addr, align 8, !dbg !4546, !tbaa !612
  %arrayidx248 = getelementptr inbounds i8, ptr %67, i64 13, !dbg !4546
  %68 = load i8, ptr %arrayidx248, align 1, !dbg !4546, !tbaa !625
  %conv249 = zext i8 %68 to i32, !dbg !4546
  switch i32 %conv249, label %sw.epilog260 [
    i32 104, label %sw.bb250
    i32 116, label %sw.bb255
  ], !dbg !4547

sw.bb250:                                         ; preds = %sw.bb247
  %69 = load ptr, ptr %name.addr, align 8, !dbg !4548, !tbaa !612
  %call251 = call i32 @memeq(ptr noundef @.str.114, ptr noundef %69, i64 noundef 13), !dbg !4551
  %tobool252 = icmp ne i32 %call251, 0, !dbg !4551
  br i1 %tobool252, label %if.then253, label %if.end254, !dbg !4552

if.then253:                                       ; preds = %sw.bb250
  store i32 27, ptr %retval, align 4, !dbg !4553
  br label %return, !dbg !4553

if.end254:                                        ; preds = %sw.bb250
  br label %sw.epilog260, !dbg !4555

sw.bb255:                                         ; preds = %sw.bb247
  %70 = load ptr, ptr %name.addr, align 8, !dbg !4556, !tbaa !612
  %call256 = call i32 @memeq(ptr noundef @.str.115, ptr noundef %70, i64 noundef 13), !dbg !4558
  %tobool257 = icmp ne i32 %call256, 0, !dbg !4558
  br i1 %tobool257, label %if.then258, label %if.end259, !dbg !4559

if.then258:                                       ; preds = %sw.bb255
  store i32 14, ptr %retval, align 4, !dbg !4560
  br label %return, !dbg !4560

if.end259:                                        ; preds = %sw.bb255
  br label %sw.epilog260, !dbg !4562

sw.epilog260:                                     ; preds = %sw.bb247, %if.end259, %if.end254
  br label %sw.epilog361, !dbg !4563

sw.bb261:                                         ; preds = %entry
  %71 = load ptr, ptr %name.addr, align 8, !dbg !4564, !tbaa !612
  %arrayidx262 = getelementptr inbounds i8, ptr %71, i64 14, !dbg !4564
  %72 = load i8, ptr %arrayidx262, align 1, !dbg !4564, !tbaa !625
  %conv263 = zext i8 %72 to i32, !dbg !4564
  switch i32 %conv263, label %sw.epilog274 [
    i32 101, label %sw.bb264
    i32 103, label %sw.bb269
  ], !dbg !4565

sw.bb264:                                         ; preds = %sw.bb261
  %73 = load ptr, ptr %name.addr, align 8, !dbg !4566, !tbaa !612
  %call265 = call i32 @memeq(ptr noundef @.str.116, ptr noundef %73, i64 noundef 14), !dbg !4569
  %tobool266 = icmp ne i32 %call265, 0, !dbg !4569
  br i1 %tobool266, label %if.then267, label %if.end268, !dbg !4570

if.then267:                                       ; preds = %sw.bb264
  store i32 16, ptr %retval, align 4, !dbg !4571
  br label %return, !dbg !4571

if.end268:                                        ; preds = %sw.bb264
  br label %sw.epilog274, !dbg !4573

sw.bb269:                                         ; preds = %sw.bb261
  %74 = load ptr, ptr %name.addr, align 8, !dbg !4574, !tbaa !612
  %call270 = call i32 @memeq(ptr noundef @.str.117, ptr noundef %74, i64 noundef 14), !dbg !4576
  %tobool271 = icmp ne i32 %call270, 0, !dbg !4576
  br i1 %tobool271, label %if.then272, label %if.end273, !dbg !4577

if.then272:                                       ; preds = %sw.bb269
  store i32 15, ptr %retval, align 4, !dbg !4578
  br label %return, !dbg !4578

if.end273:                                        ; preds = %sw.bb269
  br label %sw.epilog274, !dbg !4580

sw.epilog274:                                     ; preds = %sw.bb261, %if.end273, %if.end268
  br label %sw.epilog361, !dbg !4581

sw.bb275:                                         ; preds = %entry
  %75 = load ptr, ptr %name.addr, align 8, !dbg !4582, !tbaa !612
  %arrayidx276 = getelementptr inbounds i8, ptr %75, i64 15, !dbg !4582
  %76 = load i8, ptr %arrayidx276, align 1, !dbg !4582, !tbaa !625
  %conv277 = zext i8 %76 to i32, !dbg !4582
  switch i32 %conv277, label %sw.epilog301 [
    i32 101, label %sw.bb278
    i32 103, label %sw.bb287
    i32 110, label %sw.bb292
  ], !dbg !4583

sw.bb278:                                         ; preds = %sw.bb275
  %77 = load ptr, ptr %name.addr, align 8, !dbg !4584, !tbaa !612
  %call279 = call i32 @memeq(ptr noundef @.str.118, ptr noundef %77, i64 noundef 15), !dbg !4587
  %tobool280 = icmp ne i32 %call279, 0, !dbg !4587
  br i1 %tobool280, label %if.then281, label %if.end282, !dbg !4588

if.then281:                                       ; preds = %sw.bb278
  store i32 26, ptr %retval, align 4, !dbg !4589
  br label %return, !dbg !4589

if.end282:                                        ; preds = %sw.bb278
  %78 = load ptr, ptr %name.addr, align 8, !dbg !4591, !tbaa !612
  %call283 = call i32 @memeq(ptr noundef @.str.119, ptr noundef %78, i64 noundef 15), !dbg !4593
  %tobool284 = icmp ne i32 %call283, 0, !dbg !4593
  br i1 %tobool284, label %if.then285, label %if.end286, !dbg !4594

if.then285:                                       ; preds = %if.end282
  store i32 60, ptr %retval, align 4, !dbg !4595
  br label %return, !dbg !4595

if.end286:                                        ; preds = %if.end282
  br label %sw.epilog301, !dbg !4597

sw.bb287:                                         ; preds = %sw.bb275
  %79 = load ptr, ptr %name.addr, align 8, !dbg !4598, !tbaa !612
  %call288 = call i32 @memeq(ptr noundef @.str.120, ptr noundef %79, i64 noundef 15), !dbg !4600
  %tobool289 = icmp ne i32 %call288, 0, !dbg !4600
  br i1 %tobool289, label %if.then290, label %if.end291, !dbg !4601

if.then290:                                       ; preds = %sw.bb287
  store i32 25, ptr %retval, align 4, !dbg !4602
  br label %return, !dbg !4602

if.end291:                                        ; preds = %sw.bb287
  br label %sw.epilog301, !dbg !4604

sw.bb292:                                         ; preds = %sw.bb275
  %80 = load ptr, ptr %name.addr, align 8, !dbg !4605, !tbaa !612
  %call293 = call i32 @memeq(ptr noundef @.str.121, ptr noundef %80, i64 noundef 15), !dbg !4607
  %tobool294 = icmp ne i32 %call293, 0, !dbg !4607
  br i1 %tobool294, label %if.then295, label %if.end296, !dbg !4608

if.then295:                                       ; preds = %sw.bb292
  store i32 28, ptr %retval, align 4, !dbg !4609
  br label %return, !dbg !4609

if.end296:                                        ; preds = %sw.bb292
  %81 = load ptr, ptr %name.addr, align 8, !dbg !4611, !tbaa !612
  %call297 = call i32 @memeq(ptr noundef @.str.122, ptr noundef %81, i64 noundef 15), !dbg !4613
  %tobool298 = icmp ne i32 %call297, 0, !dbg !4613
  br i1 %tobool298, label %if.then299, label %if.end300, !dbg !4614

if.then299:                                       ; preds = %if.end296
  store i32 64, ptr %retval, align 4, !dbg !4615
  br label %return, !dbg !4615

if.end300:                                        ; preds = %if.end296
  br label %sw.epilog301, !dbg !4617

sw.epilog301:                                     ; preds = %sw.bb275, %if.end300, %if.end291, %if.end286
  br label %sw.epilog361, !dbg !4618

sw.bb302:                                         ; preds = %entry
  %82 = load ptr, ptr %name.addr, align 8, !dbg !4619, !tbaa !612
  %arrayidx303 = getelementptr inbounds i8, ptr %82, i64 16, !dbg !4619
  %83 = load i8, ptr %arrayidx303, align 1, !dbg !4619, !tbaa !625
  %conv304 = zext i8 %83 to i32, !dbg !4619
  switch i32 %conv304, label %sw.epilog315 [
    i32 101, label %sw.bb305
    i32 103, label %sw.bb310
  ], !dbg !4620

sw.bb305:                                         ; preds = %sw.bb302
  %84 = load ptr, ptr %name.addr, align 8, !dbg !4621, !tbaa !612
  %call306 = call i32 @memeq(ptr noundef @.str.123, ptr noundef %84, i64 noundef 16), !dbg !4624
  %tobool307 = icmp ne i32 %call306, 0, !dbg !4624
  br i1 %tobool307, label %if.then308, label %if.end309, !dbg !4625

if.then308:                                       ; preds = %sw.bb305
  store i32 39, ptr %retval, align 4, !dbg !4626
  br label %return, !dbg !4626

if.end309:                                        ; preds = %sw.bb305
  br label %sw.epilog315, !dbg !4628

sw.bb310:                                         ; preds = %sw.bb302
  %85 = load ptr, ptr %name.addr, align 8, !dbg !4629, !tbaa !612
  %call311 = call i32 @memeq(ptr noundef @.str.124, ptr noundef %85, i64 noundef 16), !dbg !4631
  %tobool312 = icmp ne i32 %call311, 0, !dbg !4631
  br i1 %tobool312, label %if.then313, label %if.end314, !dbg !4632

if.then313:                                       ; preds = %sw.bb310
  store i32 56, ptr %retval, align 4, !dbg !4633
  br label %return, !dbg !4633

if.end314:                                        ; preds = %sw.bb310
  br label %sw.epilog315, !dbg !4635

sw.epilog315:                                     ; preds = %sw.bb302, %if.end314, %if.end309
  br label %sw.epilog361, !dbg !4636

sw.bb316:                                         ; preds = %entry
  %86 = load ptr, ptr %name.addr, align 8, !dbg !4637, !tbaa !612
  %arrayidx317 = getelementptr inbounds i8, ptr %86, i64 17, !dbg !4637
  %87 = load i8, ptr %arrayidx317, align 1, !dbg !4637, !tbaa !625
  %conv318 = zext i8 %87 to i32, !dbg !4637
  switch i32 %conv318, label %sw.epilog324 [
    i32 101, label %sw.bb319
  ], !dbg !4638

sw.bb319:                                         ; preds = %sw.bb316
  %88 = load ptr, ptr %name.addr, align 8, !dbg !4639, !tbaa !612
  %call320 = call i32 @memeq(ptr noundef @.str.125, ptr noundef %88, i64 noundef 17), !dbg !4642
  %tobool321 = icmp ne i32 %call320, 0, !dbg !4642
  br i1 %tobool321, label %if.then322, label %if.end323, !dbg !4643

if.then322:                                       ; preds = %sw.bb319
  store i32 47, ptr %retval, align 4, !dbg !4644
  br label %return, !dbg !4644

if.end323:                                        ; preds = %sw.bb319
  br label %sw.epilog324, !dbg !4646

sw.epilog324:                                     ; preds = %sw.bb316, %if.end323
  br label %sw.epilog361, !dbg !4647

sw.bb325:                                         ; preds = %entry
  %89 = load ptr, ptr %name.addr, align 8, !dbg !4648, !tbaa !612
  %arrayidx326 = getelementptr inbounds i8, ptr %89, i64 18, !dbg !4648
  %90 = load i8, ptr %arrayidx326, align 1, !dbg !4648, !tbaa !625
  %conv327 = zext i8 %90 to i32, !dbg !4648
  switch i32 %conv327, label %sw.epilog342 [
    i32 101, label %sw.bb328
    i32 110, label %sw.bb333
  ], !dbg !4649

sw.bb328:                                         ; preds = %sw.bb325
  %91 = load ptr, ptr %name.addr, align 8, !dbg !4650, !tbaa !612
  %call329 = call i32 @memeq(ptr noundef @.str.126, ptr noundef %91, i64 noundef 18), !dbg !4653
  %tobool330 = icmp ne i32 %call329, 0, !dbg !4653
  br i1 %tobool330, label %if.then331, label %if.end332, !dbg !4654

if.then331:                                       ; preds = %sw.bb328
  store i32 42, ptr %retval, align 4, !dbg !4655
  br label %return, !dbg !4655

if.end332:                                        ; preds = %sw.bb328
  br label %sw.epilog342, !dbg !4657

sw.bb333:                                         ; preds = %sw.bb325
  %92 = load ptr, ptr %name.addr, align 8, !dbg !4658, !tbaa !612
  %call334 = call i32 @memeq(ptr noundef @.str.127, ptr noundef %92, i64 noundef 18), !dbg !4660
  %tobool335 = icmp ne i32 %call334, 0, !dbg !4660
  br i1 %tobool335, label %if.then336, label %if.end337, !dbg !4661

if.then336:                                       ; preds = %sw.bb333
  store i32 24, ptr %retval, align 4, !dbg !4662
  br label %return, !dbg !4662

if.end337:                                        ; preds = %sw.bb333
  %93 = load ptr, ptr %name.addr, align 8, !dbg !4664, !tbaa !612
  %call338 = call i32 @memeq(ptr noundef @.str.128, ptr noundef %93, i64 noundef 18), !dbg !4666
  %tobool339 = icmp ne i32 %call338, 0, !dbg !4666
  br i1 %tobool339, label %if.then340, label %if.end341, !dbg !4667

if.then340:                                       ; preds = %if.end337
  store i32 48, ptr %retval, align 4, !dbg !4668
  br label %return, !dbg !4668

if.end341:                                        ; preds = %if.end337
  br label %sw.epilog342, !dbg !4670

sw.epilog342:                                     ; preds = %sw.bb325, %if.end341, %if.end332
  br label %sw.epilog361, !dbg !4671

sw.bb343:                                         ; preds = %entry
  %94 = load ptr, ptr %name.addr, align 8, !dbg !4672, !tbaa !612
  %arrayidx344 = getelementptr inbounds i8, ptr %94, i64 24, !dbg !4672
  %95 = load i8, ptr %arrayidx344, align 1, !dbg !4672, !tbaa !625
  %conv345 = zext i8 %95 to i32, !dbg !4672
  switch i32 %conv345, label %sw.epilog351 [
    i32 121, label %sw.bb346
  ], !dbg !4673

sw.bb346:                                         ; preds = %sw.bb343
  %96 = load ptr, ptr %name.addr, align 8, !dbg !4674, !tbaa !612
  %call347 = call i32 @memeq(ptr noundef @.str.129, ptr noundef %96, i64 noundef 24), !dbg !4677
  %tobool348 = icmp ne i32 %call347, 0, !dbg !4677
  br i1 %tobool348, label %if.then349, label %if.end350, !dbg !4678

if.then349:                                       ; preds = %sw.bb346
  store i32 55, ptr %retval, align 4, !dbg !4679
  br label %return, !dbg !4679

if.end350:                                        ; preds = %sw.bb346
  br label %sw.epilog351, !dbg !4681

sw.epilog351:                                     ; preds = %sw.bb343, %if.end350
  br label %sw.epilog361, !dbg !4682

sw.bb352:                                         ; preds = %entry
  %97 = load ptr, ptr %name.addr, align 8, !dbg !4683, !tbaa !612
  %arrayidx353 = getelementptr inbounds i8, ptr %97, i64 26, !dbg !4683
  %98 = load i8, ptr %arrayidx353, align 1, !dbg !4683, !tbaa !625
  %conv354 = zext i8 %98 to i32, !dbg !4683
  switch i32 %conv354, label %sw.epilog360 [
    i32 110, label %sw.bb355
  ], !dbg !4684

sw.bb355:                                         ; preds = %sw.bb352
  %99 = load ptr, ptr %name.addr, align 8, !dbg !4685, !tbaa !612
  %call356 = call i32 @memeq(ptr noundef @.str.130, ptr noundef %99, i64 noundef 26), !dbg !4688
  %tobool357 = icmp ne i32 %call356, 0, !dbg !4688
  br i1 %tobool357, label %if.then358, label %if.end359, !dbg !4689

if.then358:                                       ; preds = %sw.bb355
  store i32 19, ptr %retval, align 4, !dbg !4690
  br label %return, !dbg !4690

if.end359:                                        ; preds = %sw.bb355
  br label %sw.epilog360, !dbg !4692

sw.epilog360:                                     ; preds = %sw.bb352, %if.end359
  br label %sw.epilog361, !dbg !4693

sw.epilog361:                                     ; preds = %entry, %sw.epilog360, %sw.epilog351, %sw.epilog342, %sw.epilog324, %sw.epilog315, %sw.epilog301, %sw.epilog274, %sw.epilog260, %sw.epilog246, %sw.epilog212, %sw.epilog198, %sw.epilog189, %sw.epilog161, %sw.epilog152, %sw.epilog128, %sw.epilog91, %sw.epilog68, %sw.epilog49, %sw.epilog15, %sw.epilog
  store i32 -1, ptr %retval, align 4, !dbg !4694
  br label %return, !dbg !4694

return:                                           ; preds = %sw.epilog361, %if.then358, %if.then349, %if.then340, %if.then336, %if.then331, %if.then322, %if.then313, %if.then308, %if.then299, %if.then295, %if.then290, %if.then285, %if.then281, %if.then272, %if.then267, %if.then258, %if.then253, %if.then244, %if.then239, %if.then234, %if.then229, %if.then224, %if.then219, %if.then210, %if.then205, %if.then196, %if.then187, %if.then182, %if.then177, %if.then172, %if.then168, %if.then159, %if.then150, %if.then145, %if.then140, %if.then135, %if.then126, %if.then122, %if.then117, %if.then112, %if.then107, %if.then103, %if.then98, %if.then89, %if.then85, %if.then80, %if.then75, %if.then66, %if.then61, %if.then56, %if.then47, %if.then42, %if.then37, %if.then32, %if.then27, %if.then22, %if.then13, %if.then8, %if.then
  %100 = load i32, ptr %retval, align 4, !dbg !4695
  ret i32 %100, !dbg !4695
}

; Function Attrs: nounwind uwtable
define internal i32 @name_hash(ptr noundef %nv) #0 !dbg !4696 {
entry:
  %nv.addr = alloca ptr, align 8
  %h = alloca i32, align 4
  %i = alloca i64, align 8
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv.addr, metadata !4700, metadata !DIExpression()), !dbg !4703
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #8, !dbg !4704
  tail call void @llvm.dbg.declare(metadata ptr %h, metadata !4701, metadata !DIExpression()), !dbg !4705
  store i32 -2128831035, ptr %h, align 4, !dbg !4705, !tbaa !623
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8, !dbg !4706
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !4702, metadata !DIExpression()), !dbg !4707
  store i64 0, ptr %i, align 8, !dbg !4708, !tbaa !788
  br label %for.cond, !dbg !4710

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !4711, !tbaa !788
  %1 = load ptr, ptr %nv.addr, align 8, !dbg !4713, !tbaa !612
  %namelen = getelementptr inbounds %struct.nghttp2_nv, ptr %1, i32 0, i32 2, !dbg !4714
  %2 = load i64, ptr %namelen, align 8, !dbg !4714, !tbaa !1570
  %cmp = icmp ult i64 %0, %2, !dbg !4715
  br i1 %cmp, label %for.body, label %for.end, !dbg !4716

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %nv.addr, align 8, !dbg !4717, !tbaa !612
  %name = getelementptr inbounds %struct.nghttp2_nv, ptr %3, i32 0, i32 0, !dbg !4719
  %4 = load ptr, ptr %name, align 8, !dbg !4719, !tbaa !1567
  %5 = load i64, ptr %i, align 8, !dbg !4720, !tbaa !788
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %5, !dbg !4717
  %6 = load i8, ptr %arrayidx, align 1, !dbg !4717, !tbaa !625
  %conv = zext i8 %6 to i32, !dbg !4717
  %7 = load i32, ptr %h, align 4, !dbg !4721, !tbaa !623
  %xor = xor i32 %7, %conv, !dbg !4721
  store i32 %xor, ptr %h, align 4, !dbg !4721, !tbaa !623
  %8 = load i32, ptr %h, align 4, !dbg !4722, !tbaa !623
  %shl = shl i32 %8, 1, !dbg !4723
  %9 = load i32, ptr %h, align 4, !dbg !4724, !tbaa !623
  %shl1 = shl i32 %9, 4, !dbg !4725
  %add = add i32 %shl, %shl1, !dbg !4726
  %10 = load i32, ptr %h, align 4, !dbg !4727, !tbaa !623
  %shl2 = shl i32 %10, 7, !dbg !4728
  %add3 = add i32 %add, %shl2, !dbg !4729
  %11 = load i32, ptr %h, align 4, !dbg !4730, !tbaa !623
  %shl4 = shl i32 %11, 8, !dbg !4731
  %add5 = add i32 %add3, %shl4, !dbg !4732
  %12 = load i32, ptr %h, align 4, !dbg !4733, !tbaa !623
  %shl6 = shl i32 %12, 24, !dbg !4734
  %add7 = add i32 %add5, %shl6, !dbg !4735
  %13 = load i32, ptr %h, align 4, !dbg !4736, !tbaa !623
  %add8 = add i32 %13, %add7, !dbg !4736
  store i32 %add8, ptr %h, align 4, !dbg !4736, !tbaa !623
  br label %for.inc, !dbg !4737

for.inc:                                          ; preds = %for.body
  %14 = load i64, ptr %i, align 8, !dbg !4738, !tbaa !788
  %inc = add i64 %14, 1, !dbg !4738
  store i64 %inc, ptr %i, align 8, !dbg !4738, !tbaa !788
  br label %for.cond, !dbg !4739, !llvm.loop !4740

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr %h, align 4, !dbg !4742, !tbaa !623
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8, !dbg !4743
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #8, !dbg !4743
  ret i32 %15, !dbg !4744
}

; Function Attrs: nounwind uwtable
define internal i32 @hd_deflate_decide_indexing(ptr noundef %deflater, ptr noundef %nv, i32 noundef %token) #0 !dbg !4745 {
entry:
  %retval = alloca i32, align 4
  %deflater.addr = alloca ptr, align 8
  %nv.addr = alloca ptr, align 8
  %token.addr = alloca i32, align 4
  store ptr %deflater, ptr %deflater.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %deflater.addr, metadata !4749, metadata !DIExpression()), !dbg !4752
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv.addr, metadata !4750, metadata !DIExpression()), !dbg !4753
  store i32 %token, ptr %token.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %token.addr, metadata !4751, metadata !DIExpression()), !dbg !4754
  %0 = load i32, ptr %token.addr, align 4, !dbg !4755, !tbaa !623
  %cmp = icmp eq i32 %0, 3, !dbg !4757
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4758

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %token.addr, align 4, !dbg !4759, !tbaa !623
  %cmp1 = icmp eq i32 %1, 20, !dbg !4760
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !4761

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %token.addr, align 4, !dbg !4762, !tbaa !623
  %cmp3 = icmp eq i32 %2, 27, !dbg !4763
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !4764

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, ptr %token.addr, align 4, !dbg !4765, !tbaa !623
  %cmp5 = icmp eq i32 %3, 33, !dbg !4766
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !4767

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %4 = load i32, ptr %token.addr, align 4, !dbg !4768, !tbaa !623
  %cmp7 = icmp eq i32 %4, 39, !dbg !4769
  br i1 %cmp7, label %if.then, label %lor.lhs.false8, !dbg !4770

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %5 = load i32, ptr %token.addr, align 4, !dbg !4771, !tbaa !623
  %cmp9 = icmp eq i32 %5, 40, !dbg !4772
  br i1 %cmp9, label %if.then, label %lor.lhs.false10, !dbg !4773

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %6 = load i32, ptr %token.addr, align 4, !dbg !4774, !tbaa !623
  %cmp11 = icmp eq i32 %6, 45, !dbg !4775
  br i1 %cmp11, label %if.then, label %lor.lhs.false12, !dbg !4776

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %7 = load i32, ptr %token.addr, align 4, !dbg !4777, !tbaa !623
  %cmp13 = icmp eq i32 %7, 54, !dbg !4778
  br i1 %cmp13, label %if.then, label %lor.lhs.false14, !dbg !4779

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %8 = load ptr, ptr %nv.addr, align 8, !dbg !4780, !tbaa !612
  %namelen = getelementptr inbounds %struct.nghttp2_nv, ptr %8, i32 0, i32 2, !dbg !4781
  %9 = load i64, ptr %namelen, align 8, !dbg !4781, !tbaa !1570
  %10 = load ptr, ptr %nv.addr, align 8, !dbg !4782, !tbaa !612
  %valuelen = getelementptr inbounds %struct.nghttp2_nv, ptr %10, i32 0, i32 3, !dbg !4783
  %11 = load i64, ptr %valuelen, align 8, !dbg !4783, !tbaa !1601
  %call = call i64 @entry_room(i64 noundef %9, i64 noundef %11), !dbg !4784
  %12 = load ptr, ptr %deflater.addr, align 8, !dbg !4785, !tbaa !612
  %ctx = getelementptr inbounds %struct.nghttp2_hd_deflater, ptr %12, i32 0, i32 0, !dbg !4786
  %hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_context, ptr %ctx, i32 0, i32 3, !dbg !4787
  %13 = load i64, ptr %hd_table_bufsize_max, align 8, !dbg !4787, !tbaa !826
  %mul = mul i64 %13, 3, !dbg !4788
  %div = udiv i64 %mul, 4, !dbg !4789
  %cmp15 = icmp ugt i64 %call, %div, !dbg !4790
  br i1 %cmp15, label %if.then, label %if.end, !dbg !4791

if.then:                                          ; preds = %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4, !dbg !4792
  br label %return, !dbg !4792

if.end:                                           ; preds = %lor.lhs.false14
  store i32 0, ptr %retval, align 4, !dbg !4794
  br label %return, !dbg !4794

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, ptr %retval, align 4, !dbg !4795
  ret i32 %14, !dbg !4795
}

; Function Attrs: nounwind uwtable
define internal { i64, i32 } @search_hd_table(ptr noundef %context, ptr noundef %nv, i32 noundef %token, i32 noundef %indexing_mode, ptr noundef %map, i32 noundef %hash) #0 !dbg !4796 {
entry:
  %retval = alloca %struct.search_result, align 8
  %context.addr = alloca ptr, align 8
  %nv.addr = alloca ptr, align 8
  %token.addr = alloca i32, align 4
  %indexing_mode.addr = alloca i32, align 4
  %map.addr = alloca ptr, align 8
  %hash.addr = alloca i32, align 4
  %res = alloca %struct.search_result, align 8
  %ent = alloca ptr, align 8
  %exact_match = alloca i32, align 4
  %name_only = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !4800, metadata !DIExpression()), !dbg !4812
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv.addr, metadata !4801, metadata !DIExpression()), !dbg !4813
  store i32 %token, ptr %token.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %token.addr, metadata !4802, metadata !DIExpression()), !dbg !4814
  store i32 %indexing_mode, ptr %indexing_mode.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %indexing_mode.addr, metadata !4803, metadata !DIExpression()), !dbg !4815
  store ptr %map, ptr %map.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !4804, metadata !DIExpression()), !dbg !4816
  store i32 %hash, ptr %hash.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !4805, metadata !DIExpression()), !dbg !4817
  call void @llvm.lifetime.start.p0(i64 16, ptr %res) #8, !dbg !4818
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !4806, metadata !DIExpression()), !dbg !4819
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %res, ptr align 8 @__const.search_hd_table.res, i64 16, i1 false), !dbg !4819
  call void @llvm.lifetime.start.p0(i64 8, ptr %ent) #8, !dbg !4820
  tail call void @llvm.dbg.declare(metadata ptr %ent, metadata !4807, metadata !DIExpression()), !dbg !4821
  call void @llvm.lifetime.start.p0(i64 4, ptr %exact_match) #8, !dbg !4822
  tail call void @llvm.dbg.declare(metadata ptr %exact_match, metadata !4810, metadata !DIExpression()), !dbg !4823
  call void @llvm.lifetime.start.p0(i64 4, ptr %name_only) #8, !dbg !4824
  tail call void @llvm.dbg.declare(metadata ptr %name_only, metadata !4811, metadata !DIExpression()), !dbg !4825
  %0 = load i32, ptr %indexing_mode.addr, align 4, !dbg !4826, !tbaa !623
  %cmp = icmp eq i32 %0, 2, !dbg !4827
  %conv = zext i1 %cmp to i32, !dbg !4827
  store i32 %conv, ptr %name_only, align 4, !dbg !4825, !tbaa !623
  store i32 0, ptr %exact_match, align 4, !dbg !4828, !tbaa !623
  %1 = load ptr, ptr %map.addr, align 8, !dbg !4829, !tbaa !612
  %2 = load ptr, ptr %nv.addr, align 8, !dbg !4830, !tbaa !612
  %3 = load i32, ptr %token.addr, align 4, !dbg !4831, !tbaa !623
  %4 = load i32, ptr %hash.addr, align 4, !dbg !4832, !tbaa !623
  %5 = load i32, ptr %name_only, align 4, !dbg !4833, !tbaa !623
  %call = call ptr @hd_map_find(ptr noundef %1, ptr noundef %exact_match, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5), !dbg !4834
  store ptr %call, ptr %ent, align 8, !dbg !4835, !tbaa !612
  %6 = load i32, ptr %exact_match, align 4, !dbg !4836, !tbaa !623
  %tobool = icmp ne i32 %6, 0, !dbg !4836
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4838

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, ptr %token.addr, align 4, !dbg !4839, !tbaa !623
  %cmp1 = icmp sge i32 %7, 0, !dbg !4840
  br i1 %cmp1, label %land.lhs.true3, label %if.end, !dbg !4841

land.lhs.true3:                                   ; preds = %land.lhs.true
  %8 = load i32, ptr %token.addr, align 4, !dbg !4842, !tbaa !623
  %cmp4 = icmp sle i32 %8, 60, !dbg !4843
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4844

if.then:                                          ; preds = %land.lhs.true3
  %9 = load ptr, ptr %nv.addr, align 8, !dbg !4845, !tbaa !612
  %10 = load i32, ptr %token.addr, align 4, !dbg !4847, !tbaa !623
  %11 = load i32, ptr %name_only, align 4, !dbg !4848, !tbaa !623
  %call6 = call { i64, i32 } @search_static_table(ptr noundef %9, i32 noundef %10, i32 noundef %11), !dbg !4849
  %12 = getelementptr inbounds { i64, i32 }, ptr %retval, i32 0, i32 0, !dbg !4849
  %13 = extractvalue { i64, i32 } %call6, 0, !dbg !4849
  store i64 %13, ptr %12, align 8, !dbg !4849
  %14 = getelementptr inbounds { i64, i32 }, ptr %retval, i32 0, i32 1, !dbg !4849
  %15 = extractvalue { i64, i32 } %call6, 1, !dbg !4849
  store i32 %15, ptr %14, align 8, !dbg !4849
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4850

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  %16 = load ptr, ptr %ent, align 8, !dbg !4851, !tbaa !612
  %cmp7 = icmp eq ptr %16, null, !dbg !4853
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !4854

if.then9:                                         ; preds = %if.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %res, i64 16, i1 false), !dbg !4855, !tbaa.struct !1622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4857

if.end10:                                         ; preds = %if.end
  %17 = load ptr, ptr %context.addr, align 8, !dbg !4858, !tbaa !612
  %next_seq = getelementptr inbounds %struct.nghttp2_hd_context, ptr %17, i32 0, i32 4, !dbg !4859
  %18 = load i32, ptr %next_seq, align 8, !dbg !4859, !tbaa !890
  %sub = sub i32 %18, 1, !dbg !4860
  %19 = load ptr, ptr %ent, align 8, !dbg !4861, !tbaa !612
  %seq = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %19, i32 0, i32 3, !dbg !4862
  %20 = load i32, ptr %seq, align 8, !dbg !4862, !tbaa !4863
  %sub11 = sub i32 %sub, %20, !dbg !4864
  %add = add i32 %sub11, 61, !dbg !4865
  %conv12 = zext i32 %add to i64, !dbg !4866
  %index = getelementptr inbounds %struct.search_result, ptr %res, i32 0, i32 0, !dbg !4867
  store i64 %conv12, ptr %index, align 8, !dbg !4868, !tbaa !1624
  %21 = load i32, ptr %exact_match, align 4, !dbg !4869, !tbaa !623
  %name_value_match = getelementptr inbounds %struct.search_result, ptr %res, i32 0, i32 1, !dbg !4870
  store i32 %21, ptr %name_value_match, align 8, !dbg !4871, !tbaa !1629
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %res, i64 16, i1 false), !dbg !4872, !tbaa.struct !1622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4873

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %name_only) #8, !dbg !4874
  call void @llvm.lifetime.end.p0(i64 4, ptr %exact_match) #8, !dbg !4874
  call void @llvm.lifetime.end.p0(i64 8, ptr %ent) #8, !dbg !4874
  call void @llvm.lifetime.end.p0(i64 16, ptr %res) #8, !dbg !4874
  %22 = load { i64, i32 }, ptr %retval, align 8, !dbg !4874
  ret { i64, i32 } %22, !dbg !4874
}

; Function Attrs: nounwind uwtable
define internal i32 @emit_indexed_block(ptr noundef %bufs, i64 noundef %idx) #0 !dbg !4875 {
entry:
  %retval = alloca i32, align 4
  %bufs.addr = alloca ptr, align 8
  %idx.addr = alloca i64, align 8
  %rv = alloca i32, align 4
  %blocklen = alloca i64, align 8
  %sb = alloca [16 x i8], align 16
  %bufp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bufs, ptr %bufs.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %bufs.addr, metadata !4877, metadata !DIExpression()), !dbg !4883
  store i64 %idx, ptr %idx.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !4878, metadata !DIExpression()), !dbg !4884
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !4885
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !4879, metadata !DIExpression()), !dbg !4886
  call void @llvm.lifetime.start.p0(i64 8, ptr %blocklen) #8, !dbg !4887
  tail call void @llvm.dbg.declare(metadata ptr %blocklen, metadata !4880, metadata !DIExpression()), !dbg !4888
  call void @llvm.lifetime.start.p0(i64 16, ptr %sb) #8, !dbg !4889
  tail call void @llvm.dbg.declare(metadata ptr %sb, metadata !4881, metadata !DIExpression()), !dbg !4890
  call void @llvm.lifetime.start.p0(i64 8, ptr %bufp) #8, !dbg !4891
  tail call void @llvm.dbg.declare(metadata ptr %bufp, metadata !4882, metadata !DIExpression()), !dbg !4892
  %0 = load i64, ptr %idx.addr, align 8, !dbg !4893, !tbaa !788
  %add = add i64 %0, 1, !dbg !4894
  %call = call i64 @count_encoded_length(i64 noundef %add, i64 noundef 7), !dbg !4895
  store i64 %call, ptr %blocklen, align 8, !dbg !4896, !tbaa !788
  br label %do.body, !dbg !4897

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4898

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4898

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %blocklen, align 8, !dbg !4900, !tbaa !788
  %cmp = icmp ult i64 16, %1, !dbg !4902
  br i1 %cmp, label %if.then, label %if.end, !dbg !4903

if.then:                                          ; preds = %do.end
  store i32 -523, ptr %retval, align 4, !dbg !4904
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4904

if.end:                                           ; preds = %do.end
  %arraydecay = getelementptr inbounds [16 x i8], ptr %sb, i64 0, i64 0, !dbg !4906
  store ptr %arraydecay, ptr %bufp, align 8, !dbg !4907, !tbaa !612
  %2 = load ptr, ptr %bufp, align 8, !dbg !4908, !tbaa !612
  store i8 -128, ptr %2, align 1, !dbg !4909, !tbaa !625
  %3 = load ptr, ptr %bufp, align 8, !dbg !4910, !tbaa !612
  %4 = load i64, ptr %idx.addr, align 8, !dbg !4911, !tbaa !788
  %add1 = add i64 %4, 1, !dbg !4912
  %call2 = call i64 @encode_length(ptr noundef %3, i64 noundef %add1, i64 noundef 7), !dbg !4913
  %5 = load ptr, ptr %bufs.addr, align 8, !dbg !4914, !tbaa !612
  %arraydecay3 = getelementptr inbounds [16 x i8], ptr %sb, i64 0, i64 0, !dbg !4915
  %6 = load i64, ptr %blocklen, align 8, !dbg !4916, !tbaa !788
  %call4 = call i32 @nghttp2_bufs_add(ptr noundef %5, ptr noundef %arraydecay3, i64 noundef %6), !dbg !4917
  store i32 %call4, ptr %rv, align 4, !dbg !4918, !tbaa !623
  %7 = load i32, ptr %rv, align 4, !dbg !4919, !tbaa !623
  %cmp5 = icmp ne i32 %7, 0, !dbg !4921
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !4922

if.then6:                                         ; preds = %if.end
  %8 = load i32, ptr %rv, align 4, !dbg !4923, !tbaa !623
  store i32 %8, ptr %retval, align 4, !dbg !4925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4925

if.end7:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !4926
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4926

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bufp) #8, !dbg !4927
  call void @llvm.lifetime.end.p0(i64 16, ptr %sb) #8, !dbg !4927
  call void @llvm.lifetime.end.p0(i64 8, ptr %blocklen) #8, !dbg !4927
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !4927
  %9 = load i32, ptr %retval, align 4, !dbg !4927
  ret i32 %9, !dbg !4927
}

declare !dbg !4928 i32 @nghttp2_rcbuf_new2(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @add_hd_table_incremental(ptr noundef %context, ptr noundef %nv, ptr noundef %map, i32 noundef %hash) #0 !dbg !4931 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %nv.addr = alloca ptr, align 8
  %map.addr = alloca ptr, align 8
  %hash.addr = alloca i32, align 4
  %rv = alloca i32, align 4
  %new_ent = alloca ptr, align 8
  %room = alloca i64, align 8
  %mem = alloca ptr, align 8
  %idx = alloca i64, align 8
  %ent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !4935, metadata !DIExpression()), !dbg !4946
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv.addr, metadata !4936, metadata !DIExpression()), !dbg !4947
  store ptr %map, ptr %map.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !4937, metadata !DIExpression()), !dbg !4948
  store i32 %hash, ptr %hash.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !4938, metadata !DIExpression()), !dbg !4949
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !4950
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !4939, metadata !DIExpression()), !dbg !4951
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_ent) #8, !dbg !4952
  tail call void @llvm.dbg.declare(metadata ptr %new_ent, metadata !4940, metadata !DIExpression()), !dbg !4953
  call void @llvm.lifetime.start.p0(i64 8, ptr %room) #8, !dbg !4954
  tail call void @llvm.dbg.declare(metadata ptr %room, metadata !4941, metadata !DIExpression()), !dbg !4955
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #8, !dbg !4956
  tail call void @llvm.dbg.declare(metadata ptr %mem, metadata !4942, metadata !DIExpression()), !dbg !4957
  %0 = load ptr, ptr %context.addr, align 8, !dbg !4958, !tbaa !612
  %mem1 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %0, i32 0, i32 1, !dbg !4959
  %1 = load ptr, ptr %mem1, align 8, !dbg !4959, !tbaa !859
  store ptr %1, ptr %mem, align 8, !dbg !4960, !tbaa !612
  %2 = load ptr, ptr %nv.addr, align 8, !dbg !4961, !tbaa !612
  %name = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %2, i32 0, i32 0, !dbg !4962
  %3 = load ptr, ptr %name, align 8, !dbg !4962, !tbaa !628
  %len = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %3, i32 0, i32 3, !dbg !4963
  %4 = load i64, ptr %len, align 8, !dbg !4963, !tbaa !644
  %5 = load ptr, ptr %nv.addr, align 8, !dbg !4964, !tbaa !612
  %value = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %5, i32 0, i32 1, !dbg !4965
  %6 = load ptr, ptr %value, align 8, !dbg !4965, !tbaa !652
  %len2 = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %6, i32 0, i32 3, !dbg !4966
  %7 = load i64, ptr %len2, align 8, !dbg !4966, !tbaa !644
  %call = call i64 @entry_room(i64 noundef %4, i64 noundef %7), !dbg !4967
  store i64 %call, ptr %room, align 8, !dbg !4968, !tbaa !788
  br label %while.cond, !dbg !4969

while.cond:                                       ; preds = %if.end, %entry
  %8 = load ptr, ptr %context.addr, align 8, !dbg !4970, !tbaa !612
  %hd_table_bufsize = getelementptr inbounds %struct.nghttp2_hd_context, ptr %8, i32 0, i32 2, !dbg !4971
  %9 = load i64, ptr %hd_table_bufsize, align 8, !dbg !4971, !tbaa !886
  %10 = load i64, ptr %room, align 8, !dbg !4972, !tbaa !788
  %add = add i64 %9, %10, !dbg !4973
  %11 = load ptr, ptr %context.addr, align 8, !dbg !4974, !tbaa !612
  %hd_table_bufsize_max = getelementptr inbounds %struct.nghttp2_hd_context, ptr %11, i32 0, i32 3, !dbg !4975
  %12 = load i64, ptr %hd_table_bufsize_max, align 8, !dbg !4975, !tbaa !867
  %cmp = icmp ugt i64 %add, %12, !dbg !4976
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4977

land.rhs:                                         ; preds = %while.cond
  %13 = load ptr, ptr %context.addr, align 8, !dbg !4978, !tbaa !612
  %hd_table = getelementptr inbounds %struct.nghttp2_hd_context, ptr %13, i32 0, i32 0, !dbg !4979
  %len3 = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %hd_table, i32 0, i32 3, !dbg !4980
  %14 = load i64, ptr %len3, align 8, !dbg !4980, !tbaa !1157
  %cmp4 = icmp ugt i64 %14, 0, !dbg !4981
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ], !dbg !4982
  br i1 %15, label %while.body, label %while.end, !dbg !4969

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #8, !dbg !4983
  tail call void @llvm.dbg.declare(metadata ptr %idx, metadata !4943, metadata !DIExpression()), !dbg !4984
  %16 = load ptr, ptr %context.addr, align 8, !dbg !4985, !tbaa !612
  %hd_table5 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %16, i32 0, i32 0, !dbg !4986
  %len6 = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %hd_table5, i32 0, i32 3, !dbg !4987
  %17 = load i64, ptr %len6, align 8, !dbg !4987, !tbaa !1157
  %sub = sub i64 %17, 1, !dbg !4988
  store i64 %sub, ptr %idx, align 8, !dbg !4984, !tbaa !788
  call void @llvm.lifetime.start.p0(i64 8, ptr %ent) #8, !dbg !4989
  tail call void @llvm.dbg.declare(metadata ptr %ent, metadata !4945, metadata !DIExpression()), !dbg !4990
  %18 = load ptr, ptr %context.addr, align 8, !dbg !4991, !tbaa !612
  %hd_table7 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %18, i32 0, i32 0, !dbg !4992
  %19 = load i64, ptr %idx, align 8, !dbg !4993, !tbaa !788
  %call8 = call ptr @hd_ringbuf_get(ptr noundef %hd_table7, i64 noundef %19), !dbg !4994
  store ptr %call8, ptr %ent, align 8, !dbg !4990, !tbaa !612
  %20 = load ptr, ptr %ent, align 8, !dbg !4995, !tbaa !612
  %nv9 = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %20, i32 0, i32 0, !dbg !4996
  %name10 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv9, i32 0, i32 0, !dbg !4997
  %21 = load ptr, ptr %name10, align 8, !dbg !4997, !tbaa !686
  %len11 = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %21, i32 0, i32 3, !dbg !4998
  %22 = load i64, ptr %len11, align 8, !dbg !4998, !tbaa !644
  %23 = load ptr, ptr %ent, align 8, !dbg !4999, !tbaa !612
  %nv12 = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %23, i32 0, i32 0, !dbg !5000
  %value13 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv12, i32 0, i32 1, !dbg !5001
  %24 = load ptr, ptr %value13, align 8, !dbg !5001, !tbaa !691
  %len14 = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %24, i32 0, i32 3, !dbg !5002
  %25 = load i64, ptr %len14, align 8, !dbg !5002, !tbaa !644
  %call15 = call i64 @entry_room(i64 noundef %22, i64 noundef %25), !dbg !5003
  %26 = load ptr, ptr %context.addr, align 8, !dbg !5004, !tbaa !612
  %hd_table_bufsize16 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %26, i32 0, i32 2, !dbg !5005
  %27 = load i64, ptr %hd_table_bufsize16, align 8, !dbg !5006, !tbaa !886
  %sub17 = sub i64 %27, %call15, !dbg !5006
  store i64 %sub17, ptr %hd_table_bufsize16, align 8, !dbg !5006, !tbaa !886
  br label %do.body, !dbg !5007

do.body:                                          ; preds = %while.body
  br label %do.cond, !dbg !5008

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5008

do.end:                                           ; preds = %do.cond
  %28 = load ptr, ptr %context.addr, align 8, !dbg !5010, !tbaa !612
  %hd_table18 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %28, i32 0, i32 0, !dbg !5011
  call void @hd_ringbuf_pop_back(ptr noundef %hd_table18), !dbg !5012
  %29 = load ptr, ptr %map.addr, align 8, !dbg !5013, !tbaa !612
  %tobool = icmp ne ptr %29, null, !dbg !5013
  br i1 %tobool, label %if.then, label %if.end, !dbg !5015

if.then:                                          ; preds = %do.end
  %30 = load ptr, ptr %map.addr, align 8, !dbg !5016, !tbaa !612
  %31 = load ptr, ptr %ent, align 8, !dbg !5018, !tbaa !612
  call void @hd_map_remove(ptr noundef %30, ptr noundef %31), !dbg !5019
  br label %if.end, !dbg !5020

if.end:                                           ; preds = %if.then, %do.end
  %32 = load ptr, ptr %ent, align 8, !dbg !5021, !tbaa !612
  call void @nghttp2_hd_entry_free(ptr noundef %32), !dbg !5022
  %33 = load ptr, ptr %mem, align 8, !dbg !5023, !tbaa !612
  %34 = load ptr, ptr %ent, align 8, !dbg !5024, !tbaa !612
  call void @nghttp2_mem_free(ptr noundef %33, ptr noundef %34), !dbg !5025
  call void @llvm.lifetime.end.p0(i64 8, ptr %ent) #8, !dbg !5026
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #8, !dbg !5026
  br label %while.cond, !dbg !4969, !llvm.loop !5027

while.end:                                        ; preds = %land.end
  %35 = load i64, ptr %room, align 8, !dbg !5028, !tbaa !788
  %36 = load ptr, ptr %context.addr, align 8, !dbg !5030, !tbaa !612
  %hd_table_bufsize_max19 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %36, i32 0, i32 3, !dbg !5031
  %37 = load i64, ptr %hd_table_bufsize_max19, align 8, !dbg !5031, !tbaa !867
  %cmp20 = icmp ugt i64 %35, %37, !dbg !5032
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !5033

if.then21:                                        ; preds = %while.end
  store i32 0, ptr %retval, align 4, !dbg !5034
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5034

if.end22:                                         ; preds = %while.end
  %38 = load ptr, ptr %mem, align 8, !dbg !5036, !tbaa !612
  %call23 = call ptr @nghttp2_mem_malloc(ptr noundef %38, i64 noundef 80), !dbg !5037
  store ptr %call23, ptr %new_ent, align 8, !dbg !5038, !tbaa !612
  %39 = load ptr, ptr %new_ent, align 8, !dbg !5039, !tbaa !612
  %cmp24 = icmp eq ptr %39, null, !dbg !5041
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5042

if.then25:                                        ; preds = %if.end22
  store i32 -901, ptr %retval, align 4, !dbg !5043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5043

if.end26:                                         ; preds = %if.end22
  %40 = load ptr, ptr %new_ent, align 8, !dbg !5045, !tbaa !612
  %41 = load ptr, ptr %nv.addr, align 8, !dbg !5046, !tbaa !612
  call void @nghttp2_hd_entry_init(ptr noundef %40, ptr noundef %41), !dbg !5047
  %42 = load ptr, ptr %context.addr, align 8, !dbg !5048, !tbaa !612
  %hd_table27 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %42, i32 0, i32 0, !dbg !5049
  %43 = load ptr, ptr %new_ent, align 8, !dbg !5050, !tbaa !612
  %44 = load ptr, ptr %mem, align 8, !dbg !5051, !tbaa !612
  %call28 = call i32 @hd_ringbuf_push_front(ptr noundef %hd_table27, ptr noundef %43, ptr noundef %44), !dbg !5052
  store i32 %call28, ptr %rv, align 4, !dbg !5053, !tbaa !623
  %45 = load i32, ptr %rv, align 4, !dbg !5054, !tbaa !623
  %cmp29 = icmp ne i32 %45, 0, !dbg !5056
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !5057

if.then30:                                        ; preds = %if.end26
  %46 = load ptr, ptr %new_ent, align 8, !dbg !5058, !tbaa !612
  call void @nghttp2_hd_entry_free(ptr noundef %46), !dbg !5060
  %47 = load ptr, ptr %mem, align 8, !dbg !5061, !tbaa !612
  %48 = load ptr, ptr %new_ent, align 8, !dbg !5062, !tbaa !612
  call void @nghttp2_mem_free(ptr noundef %47, ptr noundef %48), !dbg !5063
  %49 = load i32, ptr %rv, align 4, !dbg !5064, !tbaa !623
  store i32 %49, ptr %retval, align 4, !dbg !5065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5065

if.end31:                                         ; preds = %if.end26
  %50 = load ptr, ptr %context.addr, align 8, !dbg !5066, !tbaa !612
  %next_seq = getelementptr inbounds %struct.nghttp2_hd_context, ptr %50, i32 0, i32 4, !dbg !5067
  %51 = load i32, ptr %next_seq, align 8, !dbg !5068, !tbaa !890
  %inc = add i32 %51, 1, !dbg !5068
  store i32 %inc, ptr %next_seq, align 8, !dbg !5068, !tbaa !890
  %52 = load ptr, ptr %new_ent, align 8, !dbg !5069, !tbaa !612
  %seq = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %52, i32 0, i32 3, !dbg !5070
  store i32 %51, ptr %seq, align 8, !dbg !5071, !tbaa !4863
  %53 = load i32, ptr %hash.addr, align 4, !dbg !5072, !tbaa !623
  %54 = load ptr, ptr %new_ent, align 8, !dbg !5073, !tbaa !612
  %hash32 = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %54, i32 0, i32 4, !dbg !5074
  store i32 %53, ptr %hash32, align 4, !dbg !5075, !tbaa !682
  %55 = load ptr, ptr %map.addr, align 8, !dbg !5076, !tbaa !612
  %tobool33 = icmp ne ptr %55, null, !dbg !5076
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !5078

if.then34:                                        ; preds = %if.end31
  %56 = load ptr, ptr %map.addr, align 8, !dbg !5079, !tbaa !612
  %57 = load ptr, ptr %new_ent, align 8, !dbg !5081, !tbaa !612
  call void @hd_map_insert(ptr noundef %56, ptr noundef %57), !dbg !5082
  br label %if.end35, !dbg !5083

if.end35:                                         ; preds = %if.then34, %if.end31
  %58 = load i64, ptr %room, align 8, !dbg !5084, !tbaa !788
  %59 = load ptr, ptr %context.addr, align 8, !dbg !5085, !tbaa !612
  %hd_table_bufsize36 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %59, i32 0, i32 2, !dbg !5086
  %60 = load i64, ptr %hd_table_bufsize36, align 8, !dbg !5087, !tbaa !886
  %add37 = add i64 %60, %58, !dbg !5087
  store i64 %add37, ptr %hd_table_bufsize36, align 8, !dbg !5087, !tbaa !886
  store i32 0, ptr %retval, align 4, !dbg !5088
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5088

cleanup:                                          ; preds = %if.end35, %if.then30, %if.then25, %if.then21
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #8, !dbg !5089
  call void @llvm.lifetime.end.p0(i64 8, ptr %room) #8, !dbg !5089
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_ent) #8, !dbg !5089
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !5089
  %61 = load i32, ptr %retval, align 4, !dbg !5089
  ret i32 %61, !dbg !5089
}

; Function Attrs: nounwind uwtable
define internal i32 @memeq(ptr noundef %s1, ptr noundef %s2, i64 noundef %n) #0 !dbg !5090 {
entry:
  %s1.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %s1, ptr %s1.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %s1.addr, metadata !5094, metadata !DIExpression()), !dbg !5097
  store ptr %s2, ptr %s2.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %s2.addr, metadata !5095, metadata !DIExpression()), !dbg !5098
  store i64 %n, ptr %n.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5096, metadata !DIExpression()), !dbg !5099
  %0 = load ptr, ptr %s1.addr, align 8, !dbg !5100, !tbaa !612
  %1 = load ptr, ptr %s2.addr, align 8, !dbg !5101, !tbaa !612
  %2 = load i64, ptr %n.addr, align 8, !dbg !5102, !tbaa !788
  %call = call i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef %2) #10, !dbg !5103
  %cmp = icmp eq i32 %call, 0, !dbg !5104
  %conv = zext i1 %cmp to i32, !dbg !5104
  ret i32 %conv, !dbg !5105
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !5106 i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: nounwind uwtable
define internal ptr @hd_map_find(ptr noundef %map, ptr noundef %exact_match, ptr noundef %nv, i32 noundef %token, i32 noundef %hash, i32 noundef %name_only) #0 !dbg !5108 {
entry:
  %map.addr = alloca ptr, align 8
  %exact_match.addr = alloca ptr, align 8
  %nv.addr = alloca ptr, align 8
  %token.addr = alloca i32, align 4
  %hash.addr = alloca i32, align 4
  %name_only.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %res = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !5112, metadata !DIExpression()), !dbg !5120
  store ptr %exact_match, ptr %exact_match.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %exact_match.addr, metadata !5113, metadata !DIExpression()), !dbg !5121
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv.addr, metadata !5114, metadata !DIExpression()), !dbg !5122
  store i32 %token, ptr %token.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %token.addr, metadata !5115, metadata !DIExpression()), !dbg !5123
  store i32 %hash, ptr %hash.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !5116, metadata !DIExpression()), !dbg !5124
  store i32 %name_only, ptr %name_only.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %name_only.addr, metadata !5117, metadata !DIExpression()), !dbg !5125
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !5126
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !5118, metadata !DIExpression()), !dbg !5127
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #8, !dbg !5128
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !5119, metadata !DIExpression()), !dbg !5129
  store ptr null, ptr %res, align 8, !dbg !5129, !tbaa !612
  %0 = load ptr, ptr %exact_match.addr, align 8, !dbg !5130, !tbaa !612
  store i32 0, ptr %0, align 4, !dbg !5131, !tbaa !623
  %1 = load ptr, ptr %map.addr, align 8, !dbg !5132, !tbaa !612
  %table = getelementptr inbounds %struct.nghttp2_hd_map, ptr %1, i32 0, i32 0, !dbg !5134
  %2 = load i32, ptr %hash.addr, align 4, !dbg !5135, !tbaa !623
  %and = and i32 %2, 127, !dbg !5136
  %idxprom = zext i32 %and to i64, !dbg !5132
  %arrayidx = getelementptr inbounds [128 x ptr], ptr %table, i64 0, i64 %idxprom, !dbg !5132
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !5132, !tbaa !612
  store ptr %3, ptr %p, align 8, !dbg !5137, !tbaa !612
  br label %for.cond, !dbg !5138

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %p, align 8, !dbg !5139, !tbaa !612
  %tobool = icmp ne ptr %4, null, !dbg !5141
  br i1 %tobool, label %for.body, label %for.end, !dbg !5141

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %token.addr, align 4, !dbg !5142, !tbaa !623
  %6 = load ptr, ptr %p, align 8, !dbg !5145, !tbaa !612
  %nv1 = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %6, i32 0, i32 0, !dbg !5146
  %token2 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %nv1, i32 0, i32 2, !dbg !5147
  %7 = load i32, ptr %token2, align 8, !dbg !5147, !tbaa !5148
  %cmp = icmp ne i32 %5, %7, !dbg !5149
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5150

lor.lhs.false:                                    ; preds = %for.body
  %8 = load i32, ptr %token.addr, align 4, !dbg !5151, !tbaa !623
  %cmp3 = icmp eq i32 %8, -1, !dbg !5152
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !5153

land.lhs.true:                                    ; preds = %lor.lhs.false
  %9 = load i32, ptr %hash.addr, align 4, !dbg !5154, !tbaa !623
  %10 = load ptr, ptr %p, align 8, !dbg !5155, !tbaa !612
  %hash4 = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %10, i32 0, i32 4, !dbg !5156
  %11 = load i32, ptr %hash4, align 4, !dbg !5156, !tbaa !682
  %cmp5 = icmp ne i32 %9, %11, !dbg !5157
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !5158

lor.lhs.false6:                                   ; preds = %land.lhs.true
  %12 = load ptr, ptr %p, align 8, !dbg !5159, !tbaa !612
  %nv7 = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %12, i32 0, i32 0, !dbg !5160
  %13 = load ptr, ptr %nv.addr, align 8, !dbg !5161, !tbaa !612
  %call = call i32 @name_eq(ptr noundef %nv7, ptr noundef %13), !dbg !5162
  %tobool8 = icmp ne i32 %call, 0, !dbg !5162
  br i1 %tobool8, label %if.end, label %if.then, !dbg !5163

if.then:                                          ; preds = %lor.lhs.false6, %land.lhs.true, %for.body
  br label %for.inc, !dbg !5164

if.end:                                           ; preds = %lor.lhs.false6, %lor.lhs.false
  %14 = load ptr, ptr %res, align 8, !dbg !5166, !tbaa !612
  %tobool9 = icmp ne ptr %14, null, !dbg !5166
  br i1 %tobool9, label %if.end14, label %if.then10, !dbg !5168

if.then10:                                        ; preds = %if.end
  %15 = load ptr, ptr %p, align 8, !dbg !5169, !tbaa !612
  store ptr %15, ptr %res, align 8, !dbg !5171, !tbaa !612
  %16 = load i32, ptr %name_only.addr, align 4, !dbg !5172, !tbaa !623
  %tobool11 = icmp ne i32 %16, 0, !dbg !5172
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !5174

if.then12:                                        ; preds = %if.then10
  br label %for.end, !dbg !5175

if.end13:                                         ; preds = %if.then10
  br label %if.end14, !dbg !5177

if.end14:                                         ; preds = %if.end13, %if.end
  %17 = load ptr, ptr %p, align 8, !dbg !5178, !tbaa !612
  %nv15 = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %17, i32 0, i32 0, !dbg !5180
  %18 = load ptr, ptr %nv.addr, align 8, !dbg !5181, !tbaa !612
  %call16 = call i32 @value_eq(ptr noundef %nv15, ptr noundef %18), !dbg !5182
  %tobool17 = icmp ne i32 %call16, 0, !dbg !5182
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5183

if.then18:                                        ; preds = %if.end14
  %19 = load ptr, ptr %p, align 8, !dbg !5184, !tbaa !612
  store ptr %19, ptr %res, align 8, !dbg !5186, !tbaa !612
  %20 = load ptr, ptr %exact_match.addr, align 8, !dbg !5187, !tbaa !612
  store i32 1, ptr %20, align 4, !dbg !5188, !tbaa !623
  br label %for.end, !dbg !5189

if.end19:                                         ; preds = %if.end14
  br label %for.inc, !dbg !5190

for.inc:                                          ; preds = %if.end19, %if.then
  %21 = load ptr, ptr %p, align 8, !dbg !5191, !tbaa !612
  %next = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %21, i32 0, i32 2, !dbg !5192
  %22 = load ptr, ptr %next, align 8, !dbg !5192, !tbaa !678
  store ptr %22, ptr %p, align 8, !dbg !5193, !tbaa !612
  br label %for.cond, !dbg !5194, !llvm.loop !5195

for.end:                                          ; preds = %if.then18, %if.then12, %for.cond
  %23 = load ptr, ptr %res, align 8, !dbg !5197, !tbaa !612
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #8, !dbg !5198
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !5198
  ret ptr %23, !dbg !5199
}

; Function Attrs: nounwind uwtable
define internal { i64, i32 } @search_static_table(ptr noundef %nv, i32 noundef %token, i32 noundef %name_only) #0 !dbg !5200 {
entry:
  %retval = alloca %struct.search_result, align 8
  %nv.addr = alloca ptr, align 8
  %token.addr = alloca i32, align 4
  %name_only.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv.addr, metadata !5204, metadata !DIExpression()), !dbg !5210
  store i32 %token, ptr %token.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %token.addr, metadata !5205, metadata !DIExpression()), !dbg !5211
  store i32 %name_only, ptr %name_only.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %name_only.addr, metadata !5206, metadata !DIExpression()), !dbg !5212
  tail call void @llvm.dbg.declare(metadata ptr %retval, metadata !5207, metadata !DIExpression()), !dbg !5213
  %index = getelementptr inbounds %struct.search_result, ptr %retval, i32 0, i32 0, !dbg !5214
  %0 = load i32, ptr %token.addr, align 4, !dbg !5215, !tbaa !623
  %conv = sext i32 %0 to i64, !dbg !5215
  store i64 %conv, ptr %index, align 8, !dbg !5214, !tbaa !1624
  %name_value_match = getelementptr inbounds %struct.search_result, ptr %retval, i32 0, i32 1, !dbg !5214
  store i32 0, ptr %name_value_match, align 8, !dbg !5214, !tbaa !1629
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !5216
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !5208, metadata !DIExpression()), !dbg !5217
  call void @llvm.lifetime.start.p0(i64 8, ptr %ent) #8, !dbg !5218
  tail call void @llvm.dbg.declare(metadata ptr %ent, metadata !5209, metadata !DIExpression()), !dbg !5219
  %1 = load i32, ptr %name_only.addr, align 4, !dbg !5220, !tbaa !623
  %tobool = icmp ne i32 %1, 0, !dbg !5220
  br i1 %tobool, label %if.then, label %if.end, !dbg !5222

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5223

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %token.addr, align 4, !dbg !5225, !tbaa !623
  store i32 %2, ptr %i, align 4, !dbg !5227, !tbaa !623
  br label %for.cond, !dbg !5228

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !5229, !tbaa !623
  %cmp = icmp sle i32 %3, 60, !dbg !5231
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5232

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !dbg !5233, !tbaa !623
  %idxprom = sext i32 %4 to i64, !dbg !5234
  %arrayidx = getelementptr inbounds [61 x %struct.nghttp2_hd_static_entry], ptr @static_table, i64 0, i64 %idxprom, !dbg !5234
  %token2 = getelementptr inbounds %struct.nghttp2_hd_static_entry, ptr %arrayidx, i32 0, i32 3, !dbg !5235
  %5 = load i32, ptr %token2, align 8, !dbg !5235, !tbaa !1289
  %6 = load i32, ptr %token.addr, align 4, !dbg !5236, !tbaa !623
  %cmp3 = icmp eq i32 %5, %6, !dbg !5237
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ], !dbg !5238
  br i1 %7, label %for.body, label %for.end, !dbg !5239

for.body:                                         ; preds = %land.end
  %8 = load i32, ptr %i, align 4, !dbg !5240, !tbaa !623
  %idxprom5 = sext i32 %8 to i64, !dbg !5242
  %arrayidx6 = getelementptr inbounds [61 x %struct.nghttp2_hd_static_entry], ptr @static_table, i64 0, i64 %idxprom5, !dbg !5242
  store ptr %arrayidx6, ptr %ent, align 8, !dbg !5243, !tbaa !612
  %9 = load ptr, ptr %ent, align 8, !dbg !5244, !tbaa !612
  %value = getelementptr inbounds %struct.nghttp2_hd_static_entry, ptr %9, i32 0, i32 1, !dbg !5246
  %len = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %value, i32 0, i32 3, !dbg !5247
  %10 = load i64, ptr %len, align 8, !dbg !5247, !tbaa !5248
  %11 = load ptr, ptr %nv.addr, align 8, !dbg !5249, !tbaa !612
  %valuelen = getelementptr inbounds %struct.nghttp2_nv, ptr %11, i32 0, i32 3, !dbg !5250
  %12 = load i64, ptr %valuelen, align 8, !dbg !5250, !tbaa !1601
  %cmp7 = icmp eq i64 %10, %12, !dbg !5251
  br i1 %cmp7, label %land.lhs.true, label %if.end18, !dbg !5252

land.lhs.true:                                    ; preds = %for.body
  %13 = load ptr, ptr %ent, align 8, !dbg !5253, !tbaa !612
  %value9 = getelementptr inbounds %struct.nghttp2_hd_static_entry, ptr %13, i32 0, i32 1, !dbg !5254
  %base = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %value9, i32 0, i32 2, !dbg !5255
  %14 = load ptr, ptr %base, align 8, !dbg !5255, !tbaa !5256
  %15 = load ptr, ptr %nv.addr, align 8, !dbg !5257, !tbaa !612
  %value10 = getelementptr inbounds %struct.nghttp2_nv, ptr %15, i32 0, i32 1, !dbg !5258
  %16 = load ptr, ptr %value10, align 8, !dbg !5258, !tbaa !1696
  %17 = load ptr, ptr %nv.addr, align 8, !dbg !5259, !tbaa !612
  %valuelen11 = getelementptr inbounds %struct.nghttp2_nv, ptr %17, i32 0, i32 3, !dbg !5260
  %18 = load i64, ptr %valuelen11, align 8, !dbg !5260, !tbaa !1601
  %call = call i32 @memcmp(ptr noundef %14, ptr noundef %16, i64 noundef %18) #10, !dbg !5261
  %cmp12 = icmp eq i32 %call, 0, !dbg !5262
  br i1 %cmp12, label %if.then14, label %if.end18, !dbg !5263

if.then14:                                        ; preds = %land.lhs.true
  %19 = load i32, ptr %i, align 4, !dbg !5264, !tbaa !623
  %conv15 = sext i32 %19 to i64, !dbg !5264
  %index16 = getelementptr inbounds %struct.search_result, ptr %retval, i32 0, i32 0, !dbg !5266
  store i64 %conv15, ptr %index16, align 8, !dbg !5267, !tbaa !1624
  %name_value_match17 = getelementptr inbounds %struct.search_result, ptr %retval, i32 0, i32 1, !dbg !5268
  store i32 1, ptr %name_value_match17, align 8, !dbg !5269, !tbaa !1629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5270

if.end18:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !5271

for.inc:                                          ; preds = %if.end18
  %20 = load i32, ptr %i, align 4, !dbg !5272, !tbaa !623
  %inc = add nsw i32 %20, 1, !dbg !5272
  store i32 %inc, ptr %i, align 4, !dbg !5272, !tbaa !623
  br label %for.cond, !dbg !5273, !llvm.loop !5274

for.end:                                          ; preds = %land.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5276

cleanup:                                          ; preds = %for.end, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ent) #8, !dbg !5277
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !5277
  %21 = load { i64, i32 }, ptr %retval, align 8, !dbg !5277
  ret { i64, i32 } %21, !dbg !5277
}

; Function Attrs: nounwind uwtable
define internal i32 @name_eq(ptr noundef %a, ptr noundef %b) #0 !dbg !5278 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !5284, metadata !DIExpression()), !dbg !5286
  store ptr %b, ptr %b.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !5285, metadata !DIExpression()), !dbg !5287
  %0 = load ptr, ptr %a.addr, align 8, !dbg !5288, !tbaa !612
  %name = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %0, i32 0, i32 0, !dbg !5289
  %1 = load ptr, ptr %name, align 8, !dbg !5289, !tbaa !628
  %len = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %1, i32 0, i32 3, !dbg !5290
  %2 = load i64, ptr %len, align 8, !dbg !5290, !tbaa !644
  %3 = load ptr, ptr %b.addr, align 8, !dbg !5291, !tbaa !612
  %namelen = getelementptr inbounds %struct.nghttp2_nv, ptr %3, i32 0, i32 2, !dbg !5292
  %4 = load i64, ptr %namelen, align 8, !dbg !5292, !tbaa !1570
  %cmp = icmp eq i64 %2, %4, !dbg !5293
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5294

land.rhs:                                         ; preds = %entry
  %5 = load ptr, ptr %a.addr, align 8, !dbg !5295, !tbaa !612
  %name1 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %5, i32 0, i32 0, !dbg !5296
  %6 = load ptr, ptr %name1, align 8, !dbg !5296, !tbaa !628
  %base = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %6, i32 0, i32 2, !dbg !5297
  %7 = load ptr, ptr %base, align 8, !dbg !5297, !tbaa !631
  %8 = load ptr, ptr %b.addr, align 8, !dbg !5298, !tbaa !612
  %name2 = getelementptr inbounds %struct.nghttp2_nv, ptr %8, i32 0, i32 0, !dbg !5299
  %9 = load ptr, ptr %name2, align 8, !dbg !5299, !tbaa !1567
  %10 = load ptr, ptr %b.addr, align 8, !dbg !5300, !tbaa !612
  %namelen3 = getelementptr inbounds %struct.nghttp2_nv, ptr %10, i32 0, i32 2, !dbg !5301
  %11 = load i64, ptr %namelen3, align 8, !dbg !5301, !tbaa !1570
  %call = call i32 @memeq(ptr noundef %7, ptr noundef %9, i64 noundef %11), !dbg !5302
  %tobool = icmp ne i32 %call, 0, !dbg !5294
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %12 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ], !dbg !5303
  %land.ext = zext i1 %12 to i32, !dbg !5294
  ret i32 %land.ext, !dbg !5304
}

; Function Attrs: nounwind uwtable
define internal i32 @value_eq(ptr noundef %a, ptr noundef %b) #0 !dbg !5305 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !5307, metadata !DIExpression()), !dbg !5309
  store ptr %b, ptr %b.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !5308, metadata !DIExpression()), !dbg !5310
  %0 = load ptr, ptr %a.addr, align 8, !dbg !5311, !tbaa !612
  %value = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %0, i32 0, i32 1, !dbg !5312
  %1 = load ptr, ptr %value, align 8, !dbg !5312, !tbaa !652
  %len = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %1, i32 0, i32 3, !dbg !5313
  %2 = load i64, ptr %len, align 8, !dbg !5313, !tbaa !644
  %3 = load ptr, ptr %b.addr, align 8, !dbg !5314, !tbaa !612
  %valuelen = getelementptr inbounds %struct.nghttp2_nv, ptr %3, i32 0, i32 3, !dbg !5315
  %4 = load i64, ptr %valuelen, align 8, !dbg !5315, !tbaa !1601
  %cmp = icmp eq i64 %2, %4, !dbg !5316
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5317

land.rhs:                                         ; preds = %entry
  %5 = load ptr, ptr %a.addr, align 8, !dbg !5318, !tbaa !612
  %value1 = getelementptr inbounds %struct.nghttp2_hd_nv, ptr %5, i32 0, i32 1, !dbg !5319
  %6 = load ptr, ptr %value1, align 8, !dbg !5319, !tbaa !652
  %base = getelementptr inbounds %struct.nghttp2_rcbuf, ptr %6, i32 0, i32 2, !dbg !5320
  %7 = load ptr, ptr %base, align 8, !dbg !5320, !tbaa !631
  %8 = load ptr, ptr %b.addr, align 8, !dbg !5321, !tbaa !612
  %value2 = getelementptr inbounds %struct.nghttp2_nv, ptr %8, i32 0, i32 1, !dbg !5322
  %9 = load ptr, ptr %value2, align 8, !dbg !5322, !tbaa !1696
  %10 = load ptr, ptr %b.addr, align 8, !dbg !5323, !tbaa !612
  %valuelen3 = getelementptr inbounds %struct.nghttp2_nv, ptr %10, i32 0, i32 3, !dbg !5324
  %11 = load i64, ptr %valuelen3, align 8, !dbg !5324, !tbaa !1601
  %call = call i32 @memeq(ptr noundef %7, ptr noundef %9, i64 noundef %11), !dbg !5325
  %tobool = icmp ne i32 %call, 0, !dbg !5317
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %12 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ], !dbg !5326
  %land.ext = zext i1 %12 to i32, !dbg !5317
  ret i32 %land.ext, !dbg !5327
}

; Function Attrs: nounwind uwtable
define internal i32 @hd_ringbuf_push_front(ptr noundef %ringbuf, ptr noundef %ent, ptr noundef %mem) #0 !dbg !5328 {
entry:
  %retval = alloca i32, align 4
  %ringbuf.addr = alloca ptr, align 8
  %ent.addr = alloca ptr, align 8
  %mem.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ringbuf, ptr %ringbuf.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %ringbuf.addr, metadata !5332, metadata !DIExpression()), !dbg !5336
  store ptr %ent, ptr %ent.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %ent.addr, metadata !5333, metadata !DIExpression()), !dbg !5337
  store ptr %mem, ptr %mem.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !5334, metadata !DIExpression()), !dbg !5338
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !5339
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !5335, metadata !DIExpression()), !dbg !5340
  %0 = load ptr, ptr %ringbuf.addr, align 8, !dbg !5341, !tbaa !612
  %1 = load ptr, ptr %ringbuf.addr, align 8, !dbg !5342, !tbaa !612
  %len = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %1, i32 0, i32 3, !dbg !5343
  %2 = load i64, ptr %len, align 8, !dbg !5343, !tbaa !1311
  %add = add i64 %2, 1, !dbg !5344
  %3 = load ptr, ptr %mem.addr, align 8, !dbg !5345, !tbaa !612
  %call = call i32 @hd_ringbuf_reserve(ptr noundef %0, i64 noundef %add, ptr noundef %3), !dbg !5346
  store i32 %call, ptr %rv, align 4, !dbg !5347, !tbaa !623
  %4 = load i32, ptr %rv, align 4, !dbg !5348, !tbaa !623
  %cmp = icmp ne i32 %4, 0, !dbg !5350
  br i1 %cmp, label %if.then, label %if.end, !dbg !5351

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %rv, align 4, !dbg !5352, !tbaa !623
  store i32 %5, ptr %retval, align 4, !dbg !5354
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5354

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %ent.addr, align 8, !dbg !5355, !tbaa !612
  %7 = load ptr, ptr %ringbuf.addr, align 8, !dbg !5356, !tbaa !612
  %buffer = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %7, i32 0, i32 0, !dbg !5357
  %8 = load ptr, ptr %buffer, align 8, !dbg !5357, !tbaa !1315
  %9 = load ptr, ptr %ringbuf.addr, align 8, !dbg !5358, !tbaa !612
  %first = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %9, i32 0, i32 2, !dbg !5359
  %10 = load i64, ptr %first, align 8, !dbg !5360, !tbaa !1318
  %dec = add i64 %10, -1, !dbg !5360
  store i64 %dec, ptr %first, align 8, !dbg !5360, !tbaa !1318
  %11 = load ptr, ptr %ringbuf.addr, align 8, !dbg !5361, !tbaa !612
  %mask = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %11, i32 0, i32 1, !dbg !5362
  %12 = load i64, ptr %mask, align 8, !dbg !5362, !tbaa !1323
  %and = and i64 %dec, %12, !dbg !5363
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %and, !dbg !5356
  store ptr %6, ptr %arrayidx, align 8, !dbg !5364, !tbaa !612
  %13 = load ptr, ptr %ringbuf.addr, align 8, !dbg !5365, !tbaa !612
  %len1 = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %13, i32 0, i32 3, !dbg !5366
  %14 = load i64, ptr %len1, align 8, !dbg !5367, !tbaa !1311
  %inc = add i64 %14, 1, !dbg !5367
  store i64 %inc, ptr %len1, align 8, !dbg !5367, !tbaa !1311
  store i32 0, ptr %retval, align 4, !dbg !5368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5368

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !5369
  %15 = load i32, ptr %retval, align 4, !dbg !5369
  ret i32 %15, !dbg !5369
}

; Function Attrs: nounwind uwtable
define internal void @hd_map_insert(ptr noundef %map, ptr noundef %ent) #0 !dbg !5370 {
entry:
  %map.addr = alloca ptr, align 8
  %ent.addr = alloca ptr, align 8
  %bucket = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !5372, metadata !DIExpression()), !dbg !5375
  store ptr %ent, ptr %ent.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %ent.addr, metadata !5373, metadata !DIExpression()), !dbg !5376
  call void @llvm.lifetime.start.p0(i64 8, ptr %bucket) #8, !dbg !5377
  tail call void @llvm.dbg.declare(metadata ptr %bucket, metadata !5374, metadata !DIExpression()), !dbg !5378
  %0 = load ptr, ptr %map.addr, align 8, !dbg !5379, !tbaa !612
  %table = getelementptr inbounds %struct.nghttp2_hd_map, ptr %0, i32 0, i32 0, !dbg !5380
  %1 = load ptr, ptr %ent.addr, align 8, !dbg !5381, !tbaa !612
  %hash = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %1, i32 0, i32 4, !dbg !5382
  %2 = load i32, ptr %hash, align 4, !dbg !5382, !tbaa !682
  %and = and i32 %2, 127, !dbg !5383
  %idxprom = zext i32 %and to i64, !dbg !5379
  %arrayidx = getelementptr inbounds [128 x ptr], ptr %table, i64 0, i64 %idxprom, !dbg !5379
  store ptr %arrayidx, ptr %bucket, align 8, !dbg !5384, !tbaa !612
  %3 = load ptr, ptr %bucket, align 8, !dbg !5385, !tbaa !612
  %4 = load ptr, ptr %3, align 8, !dbg !5387, !tbaa !612
  %cmp = icmp eq ptr %4, null, !dbg !5388
  br i1 %cmp, label %if.then, label %if.end, !dbg !5389

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ent.addr, align 8, !dbg !5390, !tbaa !612
  %6 = load ptr, ptr %bucket, align 8, !dbg !5392, !tbaa !612
  store ptr %5, ptr %6, align 8, !dbg !5393, !tbaa !612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5394

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %bucket, align 8, !dbg !5395, !tbaa !612
  %8 = load ptr, ptr %7, align 8, !dbg !5396, !tbaa !612
  %9 = load ptr, ptr %ent.addr, align 8, !dbg !5397, !tbaa !612
  %next = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %9, i32 0, i32 2, !dbg !5398
  store ptr %8, ptr %next, align 8, !dbg !5399, !tbaa !678
  %10 = load ptr, ptr %ent.addr, align 8, !dbg !5400, !tbaa !612
  %11 = load ptr, ptr %bucket, align 8, !dbg !5401, !tbaa !612
  store ptr %10, ptr %11, align 8, !dbg !5402, !tbaa !612
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5403
  br label %cleanup, !dbg !5403

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bucket) #8, !dbg !5403
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5403

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @hd_ringbuf_reserve(ptr noundef %ringbuf, i64 noundef %bufsize, ptr noundef %mem) #0 !dbg !5404 {
entry:
  %retval = alloca i32, align 4
  %ringbuf.addr = alloca ptr, align 8
  %bufsize.addr = alloca i64, align 8
  %mem.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  %buffer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ringbuf, ptr %ringbuf.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %ringbuf.addr, metadata !5406, metadata !DIExpression()), !dbg !5412
  store i64 %bufsize, ptr %bufsize.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %bufsize.addr, metadata !5407, metadata !DIExpression()), !dbg !5413
  store ptr %mem, ptr %mem.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !5408, metadata !DIExpression()), !dbg !5414
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8, !dbg !5415
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !5409, metadata !DIExpression()), !dbg !5416
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #8, !dbg !5417
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !5410, metadata !DIExpression()), !dbg !5418
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #8, !dbg !5419
  tail call void @llvm.dbg.declare(metadata ptr %buffer, metadata !5411, metadata !DIExpression()), !dbg !5420
  %0 = load ptr, ptr %ringbuf.addr, align 8, !dbg !5421, !tbaa !612
  %mask = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %0, i32 0, i32 1, !dbg !5423
  %1 = load i64, ptr %mask, align 8, !dbg !5423, !tbaa !1323
  %add = add i64 %1, 1, !dbg !5424
  %2 = load i64, ptr %bufsize.addr, align 8, !dbg !5425, !tbaa !788
  %cmp = icmp uge i64 %add, %2, !dbg !5426
  br i1 %cmp, label %if.then, label %if.end, !dbg !5427

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5428

if.end:                                           ; preds = %entry
  store i64 1, ptr %size, align 8, !dbg !5430, !tbaa !788
  br label %for.cond, !dbg !5432

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, ptr %size, align 8, !dbg !5433, !tbaa !788
  %4 = load i64, ptr %bufsize.addr, align 8, !dbg !5435, !tbaa !788
  %cmp1 = icmp ult i64 %3, %4, !dbg !5436
  br i1 %cmp1, label %for.body, label %for.end, !dbg !5437

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !5437

for.inc:                                          ; preds = %for.body
  %5 = load i64, ptr %size, align 8, !dbg !5438, !tbaa !788
  %shl = shl i64 %5, 1, !dbg !5438
  store i64 %shl, ptr %size, align 8, !dbg !5438, !tbaa !788
  br label %for.cond, !dbg !5439, !llvm.loop !5440

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %mem.addr, align 8, !dbg !5442, !tbaa !612
  %7 = load i64, ptr %size, align 8, !dbg !5443, !tbaa !788
  %mul = mul i64 8, %7, !dbg !5444
  %call = call ptr @nghttp2_mem_malloc(ptr noundef %6, i64 noundef %mul), !dbg !5445
  store ptr %call, ptr %buffer, align 8, !dbg !5446, !tbaa !612
  %8 = load ptr, ptr %buffer, align 8, !dbg !5447, !tbaa !612
  %cmp2 = icmp eq ptr %8, null, !dbg !5449
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5450

if.then3:                                         ; preds = %for.end
  store i32 -901, ptr %retval, align 4, !dbg !5451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5451

if.end4:                                          ; preds = %for.end
  store i64 0, ptr %i, align 8, !dbg !5453, !tbaa !788
  br label %for.cond5, !dbg !5455

for.cond5:                                        ; preds = %for.inc9, %if.end4
  %9 = load i64, ptr %i, align 8, !dbg !5456, !tbaa !788
  %10 = load ptr, ptr %ringbuf.addr, align 8, !dbg !5458, !tbaa !612
  %len = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %10, i32 0, i32 3, !dbg !5459
  %11 = load i64, ptr %len, align 8, !dbg !5459, !tbaa !1311
  %cmp6 = icmp ult i64 %9, %11, !dbg !5460
  br i1 %cmp6, label %for.body7, label %for.end10, !dbg !5461

for.body7:                                        ; preds = %for.cond5
  %12 = load ptr, ptr %ringbuf.addr, align 8, !dbg !5462, !tbaa !612
  %13 = load i64, ptr %i, align 8, !dbg !5464, !tbaa !788
  %call8 = call ptr @hd_ringbuf_get(ptr noundef %12, i64 noundef %13), !dbg !5465
  %14 = load ptr, ptr %buffer, align 8, !dbg !5466, !tbaa !612
  %15 = load i64, ptr %i, align 8, !dbg !5467, !tbaa !788
  %arrayidx = getelementptr inbounds ptr, ptr %14, i64 %15, !dbg !5466
  store ptr %call8, ptr %arrayidx, align 8, !dbg !5468, !tbaa !612
  br label %for.inc9, !dbg !5469

for.inc9:                                         ; preds = %for.body7
  %16 = load i64, ptr %i, align 8, !dbg !5470, !tbaa !788
  %inc = add i64 %16, 1, !dbg !5470
  store i64 %inc, ptr %i, align 8, !dbg !5470, !tbaa !788
  br label %for.cond5, !dbg !5471, !llvm.loop !5472

for.end10:                                        ; preds = %for.cond5
  %17 = load ptr, ptr %mem.addr, align 8, !dbg !5474, !tbaa !612
  %18 = load ptr, ptr %ringbuf.addr, align 8, !dbg !5475, !tbaa !612
  %buffer11 = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %18, i32 0, i32 0, !dbg !5476
  %19 = load ptr, ptr %buffer11, align 8, !dbg !5476, !tbaa !1315
  call void @nghttp2_mem_free(ptr noundef %17, ptr noundef %19), !dbg !5477
  %20 = load ptr, ptr %buffer, align 8, !dbg !5478, !tbaa !612
  %21 = load ptr, ptr %ringbuf.addr, align 8, !dbg !5479, !tbaa !612
  %buffer12 = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %21, i32 0, i32 0, !dbg !5480
  store ptr %20, ptr %buffer12, align 8, !dbg !5481, !tbaa !1315
  %22 = load i64, ptr %size, align 8, !dbg !5482, !tbaa !788
  %sub = sub i64 %22, 1, !dbg !5483
  %23 = load ptr, ptr %ringbuf.addr, align 8, !dbg !5484, !tbaa !612
  %mask13 = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %23, i32 0, i32 1, !dbg !5485
  store i64 %sub, ptr %mask13, align 8, !dbg !5486, !tbaa !1323
  %24 = load ptr, ptr %ringbuf.addr, align 8, !dbg !5487, !tbaa !612
  %first = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %24, i32 0, i32 2, !dbg !5488
  store i64 0, ptr %first, align 8, !dbg !5489, !tbaa !1318
  store i32 0, ptr %retval, align 4, !dbg !5490
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5490

cleanup:                                          ; preds = %for.end10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #8, !dbg !5491
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #8, !dbg !5491
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8, !dbg !5491
  %25 = load i32, ptr %retval, align 4, !dbg !5491
  ret i32 %25, !dbg !5491
}

; Function Attrs: nounwind uwtable
define internal void @emit_header(ptr noundef %nv_out, ptr noundef %nv) #0 !dbg !5492 {
entry:
  %nv_out.addr = alloca ptr, align 8
  %nv.addr = alloca ptr, align 8
  store ptr %nv_out, ptr %nv_out.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv_out.addr, metadata !5496, metadata !DIExpression()), !dbg !5498
  store ptr %nv, ptr %nv.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %nv.addr, metadata !5497, metadata !DIExpression()), !dbg !5499
  br label %do.body, !dbg !5500

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5501

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %nv_out.addr, align 8, !dbg !5503, !tbaa !612
  %1 = load ptr, ptr %nv.addr, align 8, !dbg !5504, !tbaa !612
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 24, i1 false), !dbg !5505, !tbaa.struct !622
  ret void, !dbg !5506
}

declare !dbg !5507 i64 @nghttp2_hd_huff_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

declare !dbg !5510 i32 @nghttp2_hd_huff_decode_failure_state(ptr noundef) #2

declare !dbg !5513 ptr @nghttp2_cpymem(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @pack_first_byte(i32 noundef %indexing_mode) #0 !dbg !5517 {
entry:
  %retval = alloca i8, align 1
  %indexing_mode.addr = alloca i32, align 4
  store i32 %indexing_mode, ptr %indexing_mode.addr, align 4, !tbaa !623
  tail call void @llvm.dbg.declare(metadata ptr %indexing_mode.addr, metadata !5521, metadata !DIExpression()), !dbg !5522
  %0 = load i32, ptr %indexing_mode.addr, align 4, !dbg !5523, !tbaa !623
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ], !dbg !5524

sw.bb:                                            ; preds = %entry
  store i8 64, ptr %retval, align 1, !dbg !5525
  br label %return, !dbg !5525

sw.bb1:                                           ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !5527
  br label %return, !dbg !5527

sw.bb2:                                           ; preds = %entry
  store i8 16, ptr %retval, align 1, !dbg !5528
  br label %return, !dbg !5528

sw.default:                                       ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.131, ptr noundef @.str.1, i32 noundef 1025, ptr noundef @__PRETTY_FUNCTION__.pack_first_byte) #9, !dbg !5529
  unreachable, !dbg !5529

return:                                           ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8, ptr %retval, align 1, !dbg !5532
  ret i8 %1, !dbg !5532
}

; Function Attrs: nounwind uwtable
define internal i32 @emit_string(ptr noundef %bufs, ptr noundef %str, i64 noundef %len) #0 !dbg !5533 {
entry:
  %retval = alloca i32, align 4
  %bufs.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %rv = alloca i32, align 4
  %sb = alloca [16 x i8], align 16
  %bufp = alloca ptr, align 8
  %blocklen = alloca i64, align 8
  %enclen = alloca i64, align 8
  %huffman = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bufs, ptr %bufs.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %bufs.addr, metadata !5537, metadata !DIExpression()), !dbg !5546
  store ptr %str, ptr %str.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5538, metadata !DIExpression()), !dbg !5547
  store i64 %len, ptr %len.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5539, metadata !DIExpression()), !dbg !5548
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !5549
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !5540, metadata !DIExpression()), !dbg !5550
  call void @llvm.lifetime.start.p0(i64 16, ptr %sb) #8, !dbg !5551
  tail call void @llvm.dbg.declare(metadata ptr %sb, metadata !5541, metadata !DIExpression()), !dbg !5552
  call void @llvm.lifetime.start.p0(i64 8, ptr %bufp) #8, !dbg !5553
  tail call void @llvm.dbg.declare(metadata ptr %bufp, metadata !5542, metadata !DIExpression()), !dbg !5554
  call void @llvm.lifetime.start.p0(i64 8, ptr %blocklen) #8, !dbg !5555
  tail call void @llvm.dbg.declare(metadata ptr %blocklen, metadata !5543, metadata !DIExpression()), !dbg !5556
  call void @llvm.lifetime.start.p0(i64 8, ptr %enclen) #8, !dbg !5557
  tail call void @llvm.dbg.declare(metadata ptr %enclen, metadata !5544, metadata !DIExpression()), !dbg !5558
  call void @llvm.lifetime.start.p0(i64 4, ptr %huffman) #8, !dbg !5559
  tail call void @llvm.dbg.declare(metadata ptr %huffman, metadata !5545, metadata !DIExpression()), !dbg !5560
  store i32 0, ptr %huffman, align 4, !dbg !5560, !tbaa !623
  %0 = load ptr, ptr %str.addr, align 8, !dbg !5561, !tbaa !612
  %1 = load i64, ptr %len.addr, align 8, !dbg !5562, !tbaa !788
  %call = call i64 @nghttp2_hd_huff_encode_count(ptr noundef %0, i64 noundef %1), !dbg !5563
  store i64 %call, ptr %enclen, align 8, !dbg !5564, !tbaa !788
  %2 = load i64, ptr %enclen, align 8, !dbg !5565, !tbaa !788
  %3 = load i64, ptr %len.addr, align 8, !dbg !5567, !tbaa !788
  %cmp = icmp ult i64 %2, %3, !dbg !5568
  br i1 %cmp, label %if.then, label %if.else, !dbg !5569

if.then:                                          ; preds = %entry
  store i32 1, ptr %huffman, align 4, !dbg !5570, !tbaa !623
  br label %if.end, !dbg !5572

if.else:                                          ; preds = %entry
  %4 = load i64, ptr %len.addr, align 8, !dbg !5573, !tbaa !788
  store i64 %4, ptr %enclen, align 8, !dbg !5575, !tbaa !788
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i64, ptr %enclen, align 8, !dbg !5576, !tbaa !788
  %call1 = call i64 @count_encoded_length(i64 noundef %5, i64 noundef 7), !dbg !5577
  store i64 %call1, ptr %blocklen, align 8, !dbg !5578, !tbaa !788
  br label %do.body, !dbg !5579

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !5580

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5580

do.end:                                           ; preds = %do.cond
  %6 = load i64, ptr %blocklen, align 8, !dbg !5582, !tbaa !788
  %cmp2 = icmp ult i64 16, %6, !dbg !5584
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5585

if.then3:                                         ; preds = %do.end
  store i32 -523, ptr %retval, align 4, !dbg !5586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5586

if.end4:                                          ; preds = %do.end
  %arraydecay = getelementptr inbounds [16 x i8], ptr %sb, i64 0, i64 0, !dbg !5588
  store ptr %arraydecay, ptr %bufp, align 8, !dbg !5589, !tbaa !612
  %7 = load i32, ptr %huffman, align 4, !dbg !5590, !tbaa !623
  %tobool = icmp ne i32 %7, 0, !dbg !5590
  %8 = zext i1 %tobool to i64, !dbg !5590
  %cond = select i1 %tobool, i32 128, i32 0, !dbg !5590
  %conv = trunc i32 %cond to i8, !dbg !5590
  %9 = load ptr, ptr %bufp, align 8, !dbg !5591, !tbaa !612
  store i8 %conv, ptr %9, align 1, !dbg !5592, !tbaa !625
  %10 = load ptr, ptr %bufp, align 8, !dbg !5593, !tbaa !612
  %11 = load i64, ptr %enclen, align 8, !dbg !5594, !tbaa !788
  %call5 = call i64 @encode_length(ptr noundef %10, i64 noundef %11, i64 noundef 7), !dbg !5595
  %12 = load ptr, ptr %bufs.addr, align 8, !dbg !5596, !tbaa !612
  %arraydecay6 = getelementptr inbounds [16 x i8], ptr %sb, i64 0, i64 0, !dbg !5597
  %13 = load i64, ptr %blocklen, align 8, !dbg !5598, !tbaa !788
  %call7 = call i32 @nghttp2_bufs_add(ptr noundef %12, ptr noundef %arraydecay6, i64 noundef %13), !dbg !5599
  store i32 %call7, ptr %rv, align 4, !dbg !5600, !tbaa !623
  %14 = load i32, ptr %rv, align 4, !dbg !5601, !tbaa !623
  %cmp8 = icmp ne i32 %14, 0, !dbg !5603
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !5604

if.then10:                                        ; preds = %if.end4
  %15 = load i32, ptr %rv, align 4, !dbg !5605, !tbaa !623
  store i32 %15, ptr %retval, align 4, !dbg !5607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5607

if.end11:                                         ; preds = %if.end4
  %16 = load i32, ptr %huffman, align 4, !dbg !5608, !tbaa !623
  %tobool12 = icmp ne i32 %16, 0, !dbg !5608
  br i1 %tobool12, label %if.then13, label %if.else15, !dbg !5610

if.then13:                                        ; preds = %if.end11
  %17 = load ptr, ptr %bufs.addr, align 8, !dbg !5611, !tbaa !612
  %18 = load ptr, ptr %str.addr, align 8, !dbg !5613, !tbaa !612
  %19 = load i64, ptr %len.addr, align 8, !dbg !5614, !tbaa !788
  %call14 = call i32 @nghttp2_hd_huff_encode(ptr noundef %17, ptr noundef %18, i64 noundef %19), !dbg !5615
  store i32 %call14, ptr %rv, align 4, !dbg !5616, !tbaa !623
  br label %if.end22, !dbg !5617

if.else15:                                        ; preds = %if.end11
  %20 = load i64, ptr %enclen, align 8, !dbg !5618, !tbaa !788
  %21 = load i64, ptr %len.addr, align 8, !dbg !5618, !tbaa !788
  %cmp16 = icmp eq i64 %20, %21, !dbg !5618
  br i1 %cmp16, label %if.then18, label %if.else19, !dbg !5622

if.then18:                                        ; preds = %if.else15
  br label %if.end20, !dbg !5622

if.else19:                                        ; preds = %if.else15
  call void @__assert_fail(ptr noundef @.str.132, ptr noundef @.str.1, i32 noundef 1009, ptr noundef @__PRETTY_FUNCTION__.emit_string) #9, !dbg !5618
  unreachable, !dbg !5618

if.end20:                                         ; preds = %if.then18
  %22 = load ptr, ptr %bufs.addr, align 8, !dbg !5623, !tbaa !612
  %23 = load ptr, ptr %str.addr, align 8, !dbg !5624, !tbaa !612
  %24 = load i64, ptr %len.addr, align 8, !dbg !5625, !tbaa !788
  %call21 = call i32 @nghttp2_bufs_add(ptr noundef %22, ptr noundef %23, i64 noundef %24), !dbg !5626
  store i32 %call21, ptr %rv, align 4, !dbg !5627, !tbaa !623
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %if.then13
  %25 = load i32, ptr %rv, align 4, !dbg !5628, !tbaa !623
  store i32 %25, ptr %retval, align 4, !dbg !5629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5629

cleanup:                                          ; preds = %if.end22, %if.then10, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %huffman) #8, !dbg !5630
  call void @llvm.lifetime.end.p0(i64 8, ptr %enclen) #8, !dbg !5630
  call void @llvm.lifetime.end.p0(i64 8, ptr %blocklen) #8, !dbg !5630
  call void @llvm.lifetime.end.p0(i64 8, ptr %bufp) #8, !dbg !5630
  call void @llvm.lifetime.end.p0(i64 16, ptr %sb) #8, !dbg !5630
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !5630
  %26 = load i32, ptr %retval, align 4, !dbg !5630
  ret i32 %26, !dbg !5630
}

declare !dbg !5631 i64 @nghttp2_hd_huff_encode_count(ptr noundef, i64 noundef) #2

declare !dbg !5634 i32 @nghttp2_hd_huff_encode(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !5635 i32 @nghttp2_bufs_addb(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: nounwind uwtable
define internal ptr @nghttp2_hd_table_get2(ptr noundef %context, i64 noundef %idx) #0 !dbg !5638 {
entry:
  %retval = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %idx.addr = alloca i64, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !612
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !5640, metadata !DIExpression()), !dbg !5642
  store i64 %idx, ptr %idx.addr, align 8, !tbaa !788
  tail call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5641, metadata !DIExpression()), !dbg !5643
  %0 = load i64, ptr %idx.addr, align 8, !dbg !5644, !tbaa !788
  %1 = load ptr, ptr %context.addr, align 8, !dbg !5644, !tbaa !612
  %hd_table = getelementptr inbounds %struct.nghttp2_hd_context, ptr %1, i32 0, i32 0, !dbg !5644
  %len = getelementptr inbounds %struct.nghttp2_hd_ringbuf, ptr %hd_table, i32 0, i32 3, !dbg !5644
  %2 = load i64, ptr %len, align 8, !dbg !5644, !tbaa !1157
  %add = add i64 %2, 61, !dbg !5644
  %cmp = icmp ult i64 %0, %add, !dbg !5644
  br i1 %cmp, label %if.then, label %if.else, !dbg !5647

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !5647

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 1317, ptr noundef @__PRETTY_FUNCTION__.nghttp2_hd_table_get2) #9, !dbg !5644
  unreachable, !dbg !5644

if.end:                                           ; preds = %if.then
  %3 = load i64, ptr %idx.addr, align 8, !dbg !5648, !tbaa !788
  %cmp1 = icmp uge i64 %3, 61, !dbg !5650
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !5651

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %context.addr, align 8, !dbg !5652, !tbaa !612
  %hd_table3 = getelementptr inbounds %struct.nghttp2_hd_context, ptr %4, i32 0, i32 0, !dbg !5654
  %5 = load i64, ptr %idx.addr, align 8, !dbg !5655, !tbaa !788
  %sub = sub i64 %5, 61, !dbg !5656
  %call = call ptr @hd_ringbuf_get(ptr noundef %hd_table3, i64 noundef %sub), !dbg !5657
  %cnv = getelementptr inbounds %struct.nghttp2_hd_entry, ptr %call, i32 0, i32 1, !dbg !5658
  store ptr %cnv, ptr %retval, align 8, !dbg !5659
  br label %return, !dbg !5659

if.end4:                                          ; preds = %if.end
  %6 = load i64, ptr %idx.addr, align 8, !dbg !5660, !tbaa !788
  %arrayidx = getelementptr inbounds [61 x %struct.nghttp2_hd_static_entry], ptr @static_table, i64 0, i64 %6, !dbg !5661
  %cnv5 = getelementptr inbounds %struct.nghttp2_hd_static_entry, ptr %arrayidx, i32 0, i32 2, !dbg !5662
  store ptr %cnv5, ptr %retval, align 8, !dbg !5663
  br label %return, !dbg !5663

return:                                           ; preds = %if.end4, %if.then2
  %7 = load ptr, ptr %retval, align 8, !dbg !5664
  ret ptr %7, !dbg !5664
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!20}
!llvm.module.flags = !{!583, !584, !585, !586, !587}
!llvm.ident = !{!588}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1302, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "nghttp2_hd.c", directory: "/local-ssd/nghttp2-ygk7gapsiutjtu4stb5i6ycvvkuh4eel-build/aidengro/spack-stage-nghttp2-1.57.0-ygk7gapsiutjtu4stb5i6ycvvkuh4eel/spack-src/lib", checksumkind: CSK_MD5, checksum: "3deb159816327f2b7f1b8ac5f52bdc06")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 32)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1302, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 13)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1302, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 520, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 65)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "static_table", scope: !20, file: !2, line: 48, type: !563, isLocal: true, isDefinition: true)
!20 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !167, globals: !201, splitDebugInlining: false, nameTableKind: None)
!21 = !{!22, !30, !45, !90, !96, !101, !162}
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 166, baseType: !24, size: 32, elements: !25)
!23 = !DIFile(filename: "./nghttp2_hd.h", directory: "/local-ssd/nghttp2-ygk7gapsiutjtu4stb5i6ycvvkuh4eel-build/aidengro/spack-stage-nghttp2-1.57.0-ygk7gapsiutjtu4stb5i6ycvvkuh4eel/spack-src/lib", checksumkind: CSK_MD5, checksum: "d1dcd93fd9f0b73c222d8f75e91880a8")
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "NGHTTP2_HD_OPCODE_NONE", value: 0)
!27 = !DIEnumerator(name: "NGHTTP2_HD_OPCODE_INDEXED", value: 1)
!28 = !DIEnumerator(name: "NGHTTP2_HD_OPCODE_NEWNAME", value: 2)
!29 = !DIEnumerator(name: "NGHTTP2_HD_OPCODE_INDNAME", value: 3)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 173, baseType: !24, size: 32, elements: !31)
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!32 = !DIEnumerator(name: "NGHTTP2_HD_STATE_EXPECT_TABLE_SIZE", value: 0)
!33 = !DIEnumerator(name: "NGHTTP2_HD_STATE_INFLATE_START", value: 1)
!34 = !DIEnumerator(name: "NGHTTP2_HD_STATE_OPCODE", value: 2)
!35 = !DIEnumerator(name: "NGHTTP2_HD_STATE_READ_TABLE_SIZE", value: 3)
!36 = !DIEnumerator(name: "NGHTTP2_HD_STATE_READ_INDEX", value: 4)
!37 = !DIEnumerator(name: "NGHTTP2_HD_STATE_NEWNAME_CHECK_NAMELEN", value: 5)
!38 = !DIEnumerator(name: "NGHTTP2_HD_STATE_NEWNAME_READ_NAMELEN", value: 6)
!39 = !DIEnumerator(name: "NGHTTP2_HD_STATE_NEWNAME_READ_NAMEHUFF", value: 7)
!40 = !DIEnumerator(name: "NGHTTP2_HD_STATE_NEWNAME_READ_NAME", value: 8)
!41 = !DIEnumerator(name: "NGHTTP2_HD_STATE_CHECK_VALUELEN", value: 9)
!42 = !DIEnumerator(name: "NGHTTP2_HD_STATE_READ_VALUELEN", value: 10)
!43 = !DIEnumerator(name: "NGHTTP2_HD_STATE_READ_VALUEHUFF", value: 11)
!44 = !DIEnumerator(name: "NGHTTP2_HD_STATE_READ_VALUE", value: 12)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 244, baseType: !47, size: 32, elements: !48)
!46 = !DIFile(filename: "./includes/nghttp2/nghttp2.h", directory: "/local-ssd/nghttp2-ygk7gapsiutjtu4stb5i6ycvvkuh4eel-build/aidengro/spack-stage-nghttp2-1.57.0-ygk7gapsiutjtu4stb5i6ycvvkuh4eel/spack-src/lib", checksumkind: CSK_MD5, checksum: "ff30c19b6a143e1c6ae9a6e152d43b8c")
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!49 = !DIEnumerator(name: "NGHTTP2_ERR_INVALID_ARGUMENT", value: -501)
!50 = !DIEnumerator(name: "NGHTTP2_ERR_BUFFER_ERROR", value: -502)
!51 = !DIEnumerator(name: "NGHTTP2_ERR_UNSUPPORTED_VERSION", value: -503)
!52 = !DIEnumerator(name: "NGHTTP2_ERR_WOULDBLOCK", value: -504)
!53 = !DIEnumerator(name: "NGHTTP2_ERR_PROTO", value: -505)
!54 = !DIEnumerator(name: "NGHTTP2_ERR_INVALID_FRAME", value: -506)
!55 = !DIEnumerator(name: "NGHTTP2_ERR_EOF", value: -507)
!56 = !DIEnumerator(name: "NGHTTP2_ERR_DEFERRED", value: -508)
!57 = !DIEnumerator(name: "NGHTTP2_ERR_STREAM_ID_NOT_AVAILABLE", value: -509)
!58 = !DIEnumerator(name: "NGHTTP2_ERR_STREAM_CLOSED", value: -510)
!59 = !DIEnumerator(name: "NGHTTP2_ERR_STREAM_CLOSING", value: -511)
!60 = !DIEnumerator(name: "NGHTTP2_ERR_STREAM_SHUT_WR", value: -512)
!61 = !DIEnumerator(name: "NGHTTP2_ERR_INVALID_STREAM_ID", value: -513)
!62 = !DIEnumerator(name: "NGHTTP2_ERR_INVALID_STREAM_STATE", value: -514)
!63 = !DIEnumerator(name: "NGHTTP2_ERR_DEFERRED_DATA_EXIST", value: -515)
!64 = !DIEnumerator(name: "NGHTTP2_ERR_START_STREAM_NOT_ALLOWED", value: -516)
!65 = !DIEnumerator(name: "NGHTTP2_ERR_GOAWAY_ALREADY_SENT", value: -517)
!66 = !DIEnumerator(name: "NGHTTP2_ERR_INVALID_HEADER_BLOCK", value: -518)
!67 = !DIEnumerator(name: "NGHTTP2_ERR_INVALID_STATE", value: -519)
!68 = !DIEnumerator(name: "NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE", value: -521)
!69 = !DIEnumerator(name: "NGHTTP2_ERR_FRAME_SIZE_ERROR", value: -522)
!70 = !DIEnumerator(name: "NGHTTP2_ERR_HEADER_COMP", value: -523)
!71 = !DIEnumerator(name: "NGHTTP2_ERR_FLOW_CONTROL", value: -524)
!72 = !DIEnumerator(name: "NGHTTP2_ERR_INSUFF_BUFSIZE", value: -525)
!73 = !DIEnumerator(name: "NGHTTP2_ERR_PAUSE", value: -526)
!74 = !DIEnumerator(name: "NGHTTP2_ERR_TOO_MANY_INFLIGHT_SETTINGS", value: -527)
!75 = !DIEnumerator(name: "NGHTTP2_ERR_PUSH_DISABLED", value: -528)
!76 = !DIEnumerator(name: "NGHTTP2_ERR_DATA_EXIST", value: -529)
!77 = !DIEnumerator(name: "NGHTTP2_ERR_SESSION_CLOSING", value: -530)
!78 = !DIEnumerator(name: "NGHTTP2_ERR_HTTP_HEADER", value: -531)
!79 = !DIEnumerator(name: "NGHTTP2_ERR_HTTP_MESSAGING", value: -532)
!80 = !DIEnumerator(name: "NGHTTP2_ERR_REFUSED_STREAM", value: -533)
!81 = !DIEnumerator(name: "NGHTTP2_ERR_INTERNAL", value: -534)
!82 = !DIEnumerator(name: "NGHTTP2_ERR_CANCEL", value: -535)
!83 = !DIEnumerator(name: "NGHTTP2_ERR_SETTINGS_EXPECTED", value: -536)
!84 = !DIEnumerator(name: "NGHTTP2_ERR_TOO_MANY_SETTINGS", value: -537)
!85 = !DIEnumerator(name: "NGHTTP2_ERR_FATAL", value: -900)
!86 = !DIEnumerator(name: "NGHTTP2_ERR_NOMEM", value: -901)
!87 = !DIEnumerator(name: "NGHTTP2_ERR_CALLBACK_FAILURE", value: -902)
!88 = !DIEnumerator(name: "NGHTTP2_ERR_BAD_CLIENT_MAGIC", value: -903)
!89 = !DIEnumerator(name: "NGHTTP2_ERR_FLOODED", value: -904)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 509, baseType: !24, size: 32, elements: !91)
!91 = !{!92, !93, !94, !95}
!92 = !DIEnumerator(name: "NGHTTP2_NV_FLAG_NONE", value: 0)
!93 = !DIEnumerator(name: "NGHTTP2_NV_FLAG_NO_INDEX", value: 1)
!94 = !DIEnumerator(name: "NGHTTP2_NV_FLAG_NO_COPY_NAME", value: 2)
!95 = !DIEnumerator(name: "NGHTTP2_NV_FLAG_NO_COPY_VALUE", value: 4)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 5413, baseType: !24, size: 32, elements: !97)
!97 = !{!98, !99, !100}
!98 = !DIEnumerator(name: "NGHTTP2_HD_INFLATE_NONE", value: 0)
!99 = !DIEnumerator(name: "NGHTTP2_HD_INFLATE_FINAL", value: 1)
!100 = !DIEnumerator(name: "NGHTTP2_HD_INFLATE_EMIT", value: 2)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 56, baseType: !24, size: 32, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!103 = !DIEnumerator(name: "NGHTTP2_TOKEN__AUTHORITY", value: 0)
!104 = !DIEnumerator(name: "NGHTTP2_TOKEN__METHOD", value: 1)
!105 = !DIEnumerator(name: "NGHTTP2_TOKEN__PATH", value: 3)
!106 = !DIEnumerator(name: "NGHTTP2_TOKEN__SCHEME", value: 5)
!107 = !DIEnumerator(name: "NGHTTP2_TOKEN__STATUS", value: 7)
!108 = !DIEnumerator(name: "NGHTTP2_TOKEN_ACCEPT_CHARSET", value: 14)
!109 = !DIEnumerator(name: "NGHTTP2_TOKEN_ACCEPT_ENCODING", value: 15)
!110 = !DIEnumerator(name: "NGHTTP2_TOKEN_ACCEPT_LANGUAGE", value: 16)
!111 = !DIEnumerator(name: "NGHTTP2_TOKEN_ACCEPT_RANGES", value: 17)
!112 = !DIEnumerator(name: "NGHTTP2_TOKEN_ACCEPT", value: 18)
!113 = !DIEnumerator(name: "NGHTTP2_TOKEN_ACCESS_CONTROL_ALLOW_ORIGIN", value: 19)
!114 = !DIEnumerator(name: "NGHTTP2_TOKEN_AGE", value: 20)
!115 = !DIEnumerator(name: "NGHTTP2_TOKEN_ALLOW", value: 21)
!116 = !DIEnumerator(name: "NGHTTP2_TOKEN_AUTHORIZATION", value: 22)
!117 = !DIEnumerator(name: "NGHTTP2_TOKEN_CACHE_CONTROL", value: 23)
!118 = !DIEnumerator(name: "NGHTTP2_TOKEN_CONTENT_DISPOSITION", value: 24)
!119 = !DIEnumerator(name: "NGHTTP2_TOKEN_CONTENT_ENCODING", value: 25)
!120 = !DIEnumerator(name: "NGHTTP2_TOKEN_CONTENT_LANGUAGE", value: 26)
!121 = !DIEnumerator(name: "NGHTTP2_TOKEN_CONTENT_LENGTH", value: 27)
!122 = !DIEnumerator(name: "NGHTTP2_TOKEN_CONTENT_LOCATION", value: 28)
!123 = !DIEnumerator(name: "NGHTTP2_TOKEN_CONTENT_RANGE", value: 29)
!124 = !DIEnumerator(name: "NGHTTP2_TOKEN_CONTENT_TYPE", value: 30)
!125 = !DIEnumerator(name: "NGHTTP2_TOKEN_COOKIE", value: 31)
!126 = !DIEnumerator(name: "NGHTTP2_TOKEN_DATE", value: 32)
!127 = !DIEnumerator(name: "NGHTTP2_TOKEN_ETAG", value: 33)
!128 = !DIEnumerator(name: "NGHTTP2_TOKEN_EXPECT", value: 34)
!129 = !DIEnumerator(name: "NGHTTP2_TOKEN_EXPIRES", value: 35)
!130 = !DIEnumerator(name: "NGHTTP2_TOKEN_FROM", value: 36)
!131 = !DIEnumerator(name: "NGHTTP2_TOKEN_HOST", value: 37)
!132 = !DIEnumerator(name: "NGHTTP2_TOKEN_IF_MATCH", value: 38)
!133 = !DIEnumerator(name: "NGHTTP2_TOKEN_IF_MODIFIED_SINCE", value: 39)
!134 = !DIEnumerator(name: "NGHTTP2_TOKEN_IF_NONE_MATCH", value: 40)
!135 = !DIEnumerator(name: "NGHTTP2_TOKEN_IF_RANGE", value: 41)
!136 = !DIEnumerator(name: "NGHTTP2_TOKEN_IF_UNMODIFIED_SINCE", value: 42)
!137 = !DIEnumerator(name: "NGHTTP2_TOKEN_LAST_MODIFIED", value: 43)
!138 = !DIEnumerator(name: "NGHTTP2_TOKEN_LINK", value: 44)
!139 = !DIEnumerator(name: "NGHTTP2_TOKEN_LOCATION", value: 45)
!140 = !DIEnumerator(name: "NGHTTP2_TOKEN_MAX_FORWARDS", value: 46)
!141 = !DIEnumerator(name: "NGHTTP2_TOKEN_PROXY_AUTHENTICATE", value: 47)
!142 = !DIEnumerator(name: "NGHTTP2_TOKEN_PROXY_AUTHORIZATION", value: 48)
!143 = !DIEnumerator(name: "NGHTTP2_TOKEN_RANGE", value: 49)
!144 = !DIEnumerator(name: "NGHTTP2_TOKEN_REFERER", value: 50)
!145 = !DIEnumerator(name: "NGHTTP2_TOKEN_REFRESH", value: 51)
!146 = !DIEnumerator(name: "NGHTTP2_TOKEN_RETRY_AFTER", value: 52)
!147 = !DIEnumerator(name: "NGHTTP2_TOKEN_SERVER", value: 53)
!148 = !DIEnumerator(name: "NGHTTP2_TOKEN_SET_COOKIE", value: 54)
!149 = !DIEnumerator(name: "NGHTTP2_TOKEN_STRICT_TRANSPORT_SECURITY", value: 55)
!150 = !DIEnumerator(name: "NGHTTP2_TOKEN_TRANSFER_ENCODING", value: 56)
!151 = !DIEnumerator(name: "NGHTTP2_TOKEN_USER_AGENT", value: 57)
!152 = !DIEnumerator(name: "NGHTTP2_TOKEN_VARY", value: 58)
!153 = !DIEnumerator(name: "NGHTTP2_TOKEN_VIA", value: 59)
!154 = !DIEnumerator(name: "NGHTTP2_TOKEN_WWW_AUTHENTICATE", value: 60)
!155 = !DIEnumerator(name: "NGHTTP2_TOKEN_TE", value: 61)
!156 = !DIEnumerator(name: "NGHTTP2_TOKEN_CONNECTION", value: 62)
!157 = !DIEnumerator(name: "NGHTTP2_TOKEN_KEEP_ALIVE", value: 63)
!158 = !DIEnumerator(name: "NGHTTP2_TOKEN_PROXY_CONNECTION", value: 64)
!159 = !DIEnumerator(name: "NGHTTP2_TOKEN_UPGRADE", value: 65)
!160 = !DIEnumerator(name: "NGHTTP2_TOKEN__PROTOCOL", value: 66)
!161 = !DIEnumerator(name: "NGHTTP2_TOKEN_PRIORITY", value: 67)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 189, baseType: !24, size: 32, elements: !163)
!163 = !{!164, !165, !166}
!164 = !DIEnumerator(name: "NGHTTP2_HD_WITH_INDEXING", value: 0)
!165 = !DIEnumerator(name: "NGHTTP2_HD_WITHOUT_INDEXING", value: 1)
!166 = !DIEnumerator(name: "NGHTTP2_HD_NEVER_INDEXING", value: 2)
!167 = !{!168, !195, !174, !188, !181, !182, !199}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_rcbuf", file: !46, line: 470, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nghttp2_rcbuf", file: !171, line: 34, size: 320, elements: !172)
!171 = !DIFile(filename: "./nghttp2_rcbuf.h", directory: "/local-ssd/nghttp2-ygk7gapsiutjtu4stb5i6ycvvkuh4eel-build/aidengro/spack-stage-nghttp2-1.57.0-ygk7gapsiutjtu4stb5i6ycvvkuh4eel/spack-src/lib", checksumkind: CSK_MD5, checksum: "65e743d7fd93ee3d255830c77d57e0cd")
!172 = !{!173, !175, !180, !187, !191}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "mem_user_data", scope: !170, file: !171, line: 37, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !170, file: !171, line: 38, baseType: !176, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_free", file: !46, line: 2409, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !174, !174}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !170, file: !171, line: 40, baseType: !181, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !183, line: 24, baseType: !184)
!183 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !185, line: 38, baseType: !186)
!185 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!186 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !170, file: !171, line: 42, baseType: !188, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 70, baseType: !190)
!189 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!190 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !170, file: !171, line: 44, baseType: !192, size: 32, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !193, line: 26, baseType: !194)
!193 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !185, line: 41, baseType: !47)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !196, line: 108, baseType: !197)
!196 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !185, line: 194, baseType: !198)
!198 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !183, line: 26, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !185, line: 42, baseType: !24)
!201 = !{!0, !7, !12, !202, !207, !212, !217, !222, !227, !232, !234, !239, !244, !249, !254, !259, !264, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !296, !301, !306, !308, !310, !315, !320, !322, !324, !326, !328, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !364, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !404, !406, !408, !410, !412, !18, !414, !416, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !539, !544, !546, !551, !553, !558}
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2203, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 11)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2203, type: !209, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 880, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 110)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !2, line: 670, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 17)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !2, line: 670, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 376, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 47)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !2, line: 610, type: !224, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 19)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !2, line: 610, type: !229, isLocal: true, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 504, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 63)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !204, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 1)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 8)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !246, isLocal: true, isDefinition: true)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 4)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !251, isLocal: true, isDefinition: true)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 5)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !256, isLocal: true, isDefinition: true)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 6)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !261, isLocal: true, isDefinition: true)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 2)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !266, isLocal: true, isDefinition: true)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 12)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !241, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !251, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !256, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !241, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !246, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !246, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !246, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !246, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !246, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !246, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !246, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !293, isLocal: true, isDefinition: true)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 15)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !298, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 16)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !303, isLocal: true, isDefinition: true)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 14)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !298, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !303, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !312, isLocal: true, isDefinition: true)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 7)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 28)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !246, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !256, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !303, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !303, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !330, isLocal: true, isDefinition: true)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 20)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !214, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !214, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !293, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !214, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !303, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !9, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !312, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !251, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !251, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !312, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !241, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !251, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !251, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !361, isLocal: true, isDefinition: true)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 9)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !366, isLocal: true, isDefinition: true)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 18)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !303, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !361, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !330, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !303, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !251, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !361, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !9, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !224, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !330, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !256, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !241, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !241, isLocal: true, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !266, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !312, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !204, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !401, isLocal: true, isDefinition: true)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 26)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !366, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !204, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !251, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !246, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !214, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !261, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !418, isLocal: true, isDefinition: true)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 3)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !2, line: 139, type: !418, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !246, isLocal: true, isDefinition: true)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !246, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !246, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !246, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !246, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !246, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !251, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !2, line: 187, type: !251, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !2, line: 192, type: !251, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !256, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !2, line: 206, type: !256, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !2, line: 211, type: !256, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !2, line: 214, type: !256, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !312, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !2, line: 228, type: !312, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !2, line: 231, type: !312, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !312, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !2, line: 241, type: !312, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !2, line: 246, type: !312, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !312, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !2, line: 258, type: !241, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !2, line: 263, type: !241, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !2, line: 268, type: !241, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !2, line: 273, type: !241, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !2, line: 282, type: !361, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !475, isLocal: true, isDefinition: true)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 10)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !475, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !2, line: 299, type: !475, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !2, line: 304, type: !475, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !2, line: 309, type: !475, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !2, line: 318, type: !204, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !2, line: 327, type: !266, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !2, line: 332, type: !266, isLocal: true, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(scope: null, file: !2, line: 341, type: !9, isLocal: true, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !2, line: 346, type: !9, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !2, line: 351, type: !9, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !2, line: 356, type: !9, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !2, line: 361, type: !9, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !2, line: 366, type: !9, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !2, line: 375, type: !303, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !2, line: 380, type: !303, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !2, line: 389, type: !293, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !2, line: 394, type: !293, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !2, line: 403, type: !298, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !2, line: 406, type: !298, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !2, line: 411, type: !298, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !2, line: 416, type: !298, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !2, line: 419, type: !298, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !2, line: 428, type: !214, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !2, line: 433, type: !214, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !2, line: 442, type: !366, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !2, line: 451, type: !224, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !2, line: 456, type: !224, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !2, line: 459, type: !224, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !2, line: 468, type: !536, isLocal: true, isDefinition: true)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 25)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !2, line: 477, type: !541, isLocal: true, isDefinition: true)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 27)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1025, type: !261, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1025, type: !548, isLocal: true, isDefinition: true)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 232, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 29)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1009, type: !303, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1009, type: !555, isLocal: true, isDefinition: true)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 456, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 57)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1317, type: !560, isLocal: true, isDefinition: true)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 560, elements: !561)
!561 = !{!562}
!562 = !DISubrange(count: 70)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 62464, elements: !581)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_hd_static_entry", file: !23, line: 157, baseType: !566)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 151, size: 1024, elements: !567)
!567 = !{!568, !569, !570, !579, !580}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !566, file: !23, line: 152, baseType: !169, size: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !566, file: !23, line: 153, baseType: !169, size: 320, offset: 320)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "cnv", scope: !566, file: !23, line: 154, baseType: !571, size: 320, offset: 640)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_nv", file: !46, line: 578, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 539, size: 320, elements: !573)
!573 = !{!574, !575, !576, !577, !578}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !572, file: !46, line: 552, baseType: !181, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !572, file: !46, line: 565, baseType: !181, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "namelen", scope: !572, file: !46, line: 569, baseType: !188, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "valuelen", scope: !572, file: !46, line: 573, baseType: !188, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !572, file: !46, line: 577, baseType: !182, size: 8, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !566, file: !23, line: 155, baseType: !192, size: 32, offset: 960)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !566, file: !23, line: 156, baseType: !199, size: 32, offset: 992)
!581 = !{!582}
!582 = !DISubrange(count: 61)
!583 = !{i32 7, !"Dwarf Version", i32 5}
!584 = !{i32 2, !"Debug Info Version", i32 3}
!585 = !{i32 1, !"wchar_size", i32 4}
!586 = !{i32 8, !"PIC Level", i32 2}
!587 = !{i32 7, !"uwtable", i32 2}
!588 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!589 = distinct !DISubprogram(name: "nghttp2_hd_entry_init", scope: !2, file: !2, line: 487, type: !590, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !609)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !592, !608}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_hd_entry", file: !23, line: 119, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nghttp2_hd_entry", file: !23, line: 135, size: 640, elements: !595)
!595 = !{!596, !604, !605, !606, !607}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "nv", scope: !594, file: !23, line: 137, baseType: !597, size: 192)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_hd_nv", file: !23, line: 133, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 121, size: 192, elements: !599)
!599 = !{!600, !601, !602, !603}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !598, file: !23, line: 124, baseType: !168, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !598, file: !23, line: 127, baseType: !168, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !598, file: !23, line: 130, baseType: !192, size: 32, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !23, line: 132, baseType: !182, size: 8, offset: 160)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "cnv", scope: !594, file: !23, line: 140, baseType: !571, size: 320, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !594, file: !23, line: 142, baseType: !592, size: 64, offset: 512)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !594, file: !23, line: 145, baseType: !199, size: 32, offset: 576)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !594, file: !23, line: 147, baseType: !199, size: 32, offset: 608)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!609 = !{!610, !611}
!610 = !DILocalVariable(name: "ent", arg: 1, scope: !589, file: !2, line: 487, type: !592)
!611 = !DILocalVariable(name: "nv", arg: 2, scope: !589, file: !2, line: 487, type: !608)
!612 = !{!613, !613, i64 0}
!613 = !{!"any pointer", !614, i64 0}
!614 = !{!"omnipotent char", !615, i64 0}
!615 = !{!"Simple C/C++ TBAA"}
!616 = !DILocation(line: 487, column: 46, scope: !589)
!617 = !DILocation(line: 487, column: 66, scope: !589)
!618 = !DILocation(line: 488, column: 3, scope: !589)
!619 = !DILocation(line: 488, column: 8, scope: !589)
!620 = !DILocation(line: 488, column: 14, scope: !589)
!621 = !DILocation(line: 488, column: 13, scope: !589)
!622 = !{i64 0, i64 8, !612, i64 8, i64 8, !612, i64 16, i64 4, !623, i64 20, i64 1, !625}
!623 = !{!624, !624, i64 0}
!624 = !{!"int", !614, i64 0}
!625 = !{!614, !614, i64 0}
!626 = !DILocation(line: 489, column: 19, scope: !589)
!627 = !DILocation(line: 489, column: 23, scope: !589)
!628 = !{!629, !613, i64 0}
!629 = !{!"", !613, i64 0, !613, i64 8, !624, i64 16, !614, i64 20}
!630 = !DILocation(line: 489, column: 29, scope: !589)
!631 = !{!632, !613, i64 16}
!632 = !{!"nghttp2_rcbuf", !613, i64 0, !613, i64 8, !613, i64 16, !633, i64 24, !624, i64 32}
!633 = !{!"long", !614, i64 0}
!634 = !DILocation(line: 489, column: 3, scope: !589)
!635 = !DILocation(line: 489, column: 8, scope: !589)
!636 = !DILocation(line: 489, column: 12, scope: !589)
!637 = !DILocation(line: 489, column: 17, scope: !589)
!638 = !{!639, !613, i64 24}
!639 = !{!"nghttp2_hd_entry", !629, i64 0, !640, i64 24, !613, i64 64, !624, i64 72, !624, i64 76}
!640 = !{!"", !613, i64 0, !613, i64 8, !633, i64 16, !633, i64 24, !614, i64 32}
!641 = !DILocation(line: 490, column: 22, scope: !589)
!642 = !DILocation(line: 490, column: 26, scope: !589)
!643 = !DILocation(line: 490, column: 32, scope: !589)
!644 = !{!632, !633, i64 24}
!645 = !DILocation(line: 490, column: 3, scope: !589)
!646 = !DILocation(line: 490, column: 8, scope: !589)
!647 = !DILocation(line: 490, column: 12, scope: !589)
!648 = !DILocation(line: 490, column: 20, scope: !589)
!649 = !{!639, !633, i64 40}
!650 = !DILocation(line: 491, column: 20, scope: !589)
!651 = !DILocation(line: 491, column: 24, scope: !589)
!652 = !{!629, !613, i64 8}
!653 = !DILocation(line: 491, column: 31, scope: !589)
!654 = !DILocation(line: 491, column: 3, scope: !589)
!655 = !DILocation(line: 491, column: 8, scope: !589)
!656 = !DILocation(line: 491, column: 12, scope: !589)
!657 = !DILocation(line: 491, column: 18, scope: !589)
!658 = !{!639, !613, i64 32}
!659 = !DILocation(line: 492, column: 23, scope: !589)
!660 = !DILocation(line: 492, column: 27, scope: !589)
!661 = !DILocation(line: 492, column: 34, scope: !589)
!662 = !DILocation(line: 492, column: 3, scope: !589)
!663 = !DILocation(line: 492, column: 8, scope: !589)
!664 = !DILocation(line: 492, column: 12, scope: !589)
!665 = !DILocation(line: 492, column: 21, scope: !589)
!666 = !{!639, !633, i64 48}
!667 = !DILocation(line: 493, column: 20, scope: !589)
!668 = !DILocation(line: 493, column: 24, scope: !589)
!669 = !{!629, !614, i64 20}
!670 = !DILocation(line: 493, column: 3, scope: !589)
!671 = !DILocation(line: 493, column: 8, scope: !589)
!672 = !DILocation(line: 493, column: 12, scope: !589)
!673 = !DILocation(line: 493, column: 18, scope: !589)
!674 = !{!639, !614, i64 56}
!675 = !DILocation(line: 494, column: 3, scope: !589)
!676 = !DILocation(line: 494, column: 8, scope: !589)
!677 = !DILocation(line: 494, column: 13, scope: !589)
!678 = !{!639, !613, i64 64}
!679 = !DILocation(line: 495, column: 3, scope: !589)
!680 = !DILocation(line: 495, column: 8, scope: !589)
!681 = !DILocation(line: 495, column: 13, scope: !589)
!682 = !{!639, !624, i64 76}
!683 = !DILocation(line: 497, column: 24, scope: !589)
!684 = !DILocation(line: 497, column: 29, scope: !589)
!685 = !DILocation(line: 497, column: 32, scope: !589)
!686 = !{!639, !613, i64 0}
!687 = !DILocation(line: 497, column: 3, scope: !589)
!688 = !DILocation(line: 498, column: 24, scope: !589)
!689 = !DILocation(line: 498, column: 29, scope: !589)
!690 = !DILocation(line: 498, column: 32, scope: !589)
!691 = !{!639, !613, i64 8}
!692 = !DILocation(line: 498, column: 3, scope: !589)
!693 = !DILocation(line: 499, column: 1, scope: !589)
!694 = !DISubprogram(name: "nghttp2_rcbuf_incref", scope: !46, file: !46, line: 477, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !168}
!697 = distinct !DISubprogram(name: "nghttp2_hd_entry_free", scope: !2, file: !2, line: 501, type: !698, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !700)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !592}
!700 = !{!701}
!701 = !DILocalVariable(name: "ent", arg: 1, scope: !697, file: !2, line: 501, type: !592)
!702 = !DILocation(line: 501, column: 46, scope: !697)
!703 = !DILocation(line: 502, column: 24, scope: !697)
!704 = !DILocation(line: 502, column: 29, scope: !697)
!705 = !DILocation(line: 502, column: 32, scope: !697)
!706 = !DILocation(line: 502, column: 3, scope: !697)
!707 = !DILocation(line: 503, column: 24, scope: !697)
!708 = !DILocation(line: 503, column: 29, scope: !697)
!709 = !DILocation(line: 503, column: 32, scope: !697)
!710 = !DILocation(line: 503, column: 3, scope: !697)
!711 = !DILocation(line: 504, column: 1, scope: !697)
!712 = !DISubprogram(name: "nghttp2_rcbuf_decref", scope: !46, file: !46, line: 486, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!713 = distinct !DISubprogram(name: "nghttp2_hd_deflate_init", scope: !2, file: !2, line: 696, type: !714, scopeLine: 696, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !770)
!714 = !DISubroutineType(types: !715)
!715 = !{!47, !716, !734}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_hd_deflater", file: !46, line: 5135, baseType: !718)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nghttp2_hd_deflater", file: !23, line: 220, size: 8896, elements: !719)
!719 = !{!720, !759, !767, !768, !769}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !718, file: !23, line: 221, baseType: !721, size: 512)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_hd_context", file: !23, line: 212, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 195, size: 512, elements: !723)
!723 = !{!724, !733, !755, !756, !757, !758}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "hd_table", scope: !722, file: !23, line: 197, baseType: !725, size: 256)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_hd_ringbuf", file: !23, line: 164, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 159, size: 256, elements: !727)
!727 = !{!728, !730, !731, !732}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !726, file: !23, line: 160, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !726, file: !23, line: 161, baseType: !188, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !726, file: !23, line: 162, baseType: !188, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !726, file: !23, line: 163, baseType: !188, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !722, file: !23, line: 199, baseType: !734, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_mem", file: !46, line: 2488, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 2466, size: 320, elements: !737)
!737 = !{!738, !739, !744, !745, !750}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "mem_user_data", scope: !736, file: !46, line: 2471, baseType: !174, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !736, file: !46, line: 2475, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_malloc", file: !46, line: 2401, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!174, !188, !174}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !736, file: !46, line: 2479, baseType: !176, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !736, file: !46, line: 2483, baseType: !746, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_calloc", file: !46, line: 2417, baseType: !747)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!174, !188, !188, !174}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !736, file: !46, line: 2487, baseType: !751, size: 64, offset: 256)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_realloc", file: !46, line: 2425, baseType: !752)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!174, !174, !188, !174}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "hd_table_bufsize", scope: !722, file: !23, line: 203, baseType: !188, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "hd_table_bufsize_max", scope: !722, file: !23, line: 205, baseType: !188, size: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "next_seq", scope: !722, file: !23, line: 207, baseType: !199, size: 32, offset: 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "bad", scope: !722, file: !23, line: 211, baseType: !182, size: 8, offset: 480)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !718, file: !23, line: 222, baseType: !760, size: 8192, offset: 512)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_hd_map", file: !23, line: 218, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 216, size: 8192, elements: !762)
!762 = !{!763}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !761, file: !23, line: 217, baseType: !764, size: 8192)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 8192, elements: !765)
!765 = !{!766}
!766 = !DISubrange(count: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "deflate_hd_table_bufsize_max", scope: !718, file: !23, line: 224, baseType: !188, size: 64, offset: 8704)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "min_hd_table_bufsize_max", scope: !718, file: !23, line: 226, baseType: !188, size: 64, offset: 8768)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "notify_table_size_change", scope: !718, file: !23, line: 229, baseType: !182, size: 8, offset: 8832)
!770 = !{!771, !772}
!771 = !DILocalVariable(name: "deflater", arg: 1, scope: !713, file: !2, line: 696, type: !716)
!772 = !DILocalVariable(name: "mem", arg: 2, scope: !713, file: !2, line: 696, type: !734)
!773 = !DILocation(line: 696, column: 50, scope: !713)
!774 = !DILocation(line: 696, column: 73, scope: !713)
!775 = !DILocation(line: 698, column: 7, scope: !713)
!776 = !DILocation(line: 698, column: 61, scope: !713)
!777 = !DILocation(line: 697, column: 10, scope: !713)
!778 = !DILocation(line: 697, column: 3, scope: !713)
!779 = distinct !DISubprogram(name: "nghttp2_hd_deflate_init2", scope: !2, file: !2, line: 701, type: !780, scopeLine: 703, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !782)
!780 = !DISubroutineType(types: !781)
!781 = !{!47, !716, !188, !734}
!782 = !{!783, !784, !785, !786}
!783 = !DILocalVariable(name: "deflater", arg: 1, scope: !779, file: !2, line: 701, type: !716)
!784 = !DILocalVariable(name: "max_deflate_dynamic_table_size", arg: 2, scope: !779, file: !2, line: 702, type: !188)
!785 = !DILocalVariable(name: "mem", arg: 3, scope: !779, file: !2, line: 703, type: !734)
!786 = !DILocalVariable(name: "rv", scope: !779, file: !2, line: 704, type: !47)
!787 = !DILocation(line: 701, column: 51, scope: !779)
!788 = !{!633, !633, i64 0}
!789 = !DILocation(line: 702, column: 37, scope: !779)
!790 = !DILocation(line: 703, column: 43, scope: !779)
!791 = !DILocation(line: 704, column: 3, scope: !779)
!792 = !DILocation(line: 704, column: 7, scope: !779)
!793 = !DILocation(line: 705, column: 25, scope: !779)
!794 = !DILocation(line: 705, column: 35, scope: !779)
!795 = !DILocation(line: 705, column: 40, scope: !779)
!796 = !DILocation(line: 705, column: 8, scope: !779)
!797 = !DILocation(line: 705, column: 6, scope: !779)
!798 = !DILocation(line: 706, column: 7, scope: !799)
!799 = distinct !DILexicalBlock(scope: !779, file: !2, line: 706, column: 7)
!800 = !DILocation(line: 706, column: 10, scope: !799)
!801 = !DILocation(line: 706, column: 7, scope: !779)
!802 = !DILocation(line: 707, column: 12, scope: !803)
!803 = distinct !DILexicalBlock(scope: !799, file: !2, line: 706, column: 16)
!804 = !DILocation(line: 707, column: 5, scope: !803)
!805 = !DILocation(line: 710, column: 16, scope: !779)
!806 = !DILocation(line: 710, column: 26, scope: !779)
!807 = !DILocation(line: 710, column: 3, scope: !779)
!808 = !DILocation(line: 712, column: 7, scope: !809)
!809 = distinct !DILexicalBlock(scope: !779, file: !2, line: 712, column: 7)
!810 = !DILocation(line: 712, column: 38, scope: !809)
!811 = !DILocation(line: 712, column: 7, scope: !779)
!812 = !DILocation(line: 713, column: 5, scope: !813)
!813 = distinct !DILexicalBlock(scope: !809, file: !2, line: 712, column: 76)
!814 = !DILocation(line: 713, column: 15, scope: !813)
!815 = !DILocation(line: 713, column: 40, scope: !813)
!816 = !{!817, !614, i64 1104}
!817 = !{!"nghttp2_hd_deflater", !818, i64 0, !820, i64 64, !633, i64 1088, !633, i64 1096, !614, i64 1104}
!818 = !{!"", !819, i64 0, !613, i64 32, !633, i64 40, !633, i64 48, !624, i64 56, !614, i64 60}
!819 = !{!"", !613, i64 0, !633, i64 8, !633, i64 16, !633, i64 24}
!820 = !{!"", !614, i64 0}
!821 = !DILocation(line: 714, column: 42, scope: !813)
!822 = !DILocation(line: 714, column: 5, scope: !813)
!823 = !DILocation(line: 714, column: 15, scope: !813)
!824 = !DILocation(line: 714, column: 19, scope: !813)
!825 = !DILocation(line: 714, column: 40, scope: !813)
!826 = !{!817, !633, i64 48}
!827 = !DILocation(line: 715, column: 3, scope: !813)
!828 = !DILocation(line: 716, column: 5, scope: !829)
!829 = distinct !DILexicalBlock(scope: !809, file: !2, line: 715, column: 10)
!830 = !DILocation(line: 716, column: 15, scope: !829)
!831 = !DILocation(line: 716, column: 40, scope: !829)
!832 = !DILocation(line: 719, column: 44, scope: !779)
!833 = !DILocation(line: 719, column: 3, scope: !779)
!834 = !DILocation(line: 719, column: 13, scope: !779)
!835 = !DILocation(line: 719, column: 42, scope: !779)
!836 = !{!817, !633, i64 1088}
!837 = !DILocation(line: 720, column: 3, scope: !779)
!838 = !DILocation(line: 720, column: 13, scope: !779)
!839 = !DILocation(line: 720, column: 38, scope: !779)
!840 = !{!817, !633, i64 1096}
!841 = !DILocation(line: 722, column: 3, scope: !779)
!842 = !DILocation(line: 723, column: 1, scope: !779)
!843 = distinct !DISubprogram(name: "hd_context_init", scope: !2, file: !2, line: 674, type: !844, scopeLine: 674, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !847)
!844 = !DISubroutineType(types: !845)
!845 = !{!47, !846, !734}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!847 = !{!848, !849, !850}
!848 = !DILocalVariable(name: "context", arg: 1, scope: !843, file: !2, line: 674, type: !846)
!849 = !DILocalVariable(name: "mem", arg: 2, scope: !843, file: !2, line: 674, type: !734)
!850 = !DILocalVariable(name: "rv", scope: !843, file: !2, line: 675, type: !47)
!851 = !DILocation(line: 674, column: 48, scope: !843)
!852 = !DILocation(line: 674, column: 70, scope: !843)
!853 = !DILocation(line: 675, column: 3, scope: !843)
!854 = !DILocation(line: 675, column: 7, scope: !843)
!855 = !DILocation(line: 676, column: 18, scope: !843)
!856 = !DILocation(line: 676, column: 3, scope: !843)
!857 = !DILocation(line: 676, column: 12, scope: !843)
!858 = !DILocation(line: 676, column: 16, scope: !843)
!859 = !{!818, !613, i64 32}
!860 = !DILocation(line: 677, column: 3, scope: !843)
!861 = !DILocation(line: 677, column: 12, scope: !843)
!862 = !DILocation(line: 677, column: 16, scope: !843)
!863 = !{!818, !614, i64 60}
!864 = !DILocation(line: 678, column: 3, scope: !843)
!865 = !DILocation(line: 678, column: 12, scope: !843)
!866 = !DILocation(line: 678, column: 33, scope: !843)
!867 = !{!818, !633, i64 48}
!868 = !DILocation(line: 680, column: 8, scope: !843)
!869 = !DILocation(line: 680, column: 17, scope: !843)
!870 = !DILocation(line: 681, column: 7, scope: !843)
!871 = !DILocation(line: 681, column: 16, scope: !843)
!872 = !DILocation(line: 681, column: 37, scope: !843)
!873 = !DILocation(line: 681, column: 66, scope: !843)
!874 = !DILocation(line: 679, column: 8, scope: !843)
!875 = !DILocation(line: 679, column: 6, scope: !843)
!876 = !DILocation(line: 682, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !843, file: !2, line: 682, column: 7)
!878 = !DILocation(line: 682, column: 10, scope: !877)
!879 = !DILocation(line: 682, column: 7, scope: !843)
!880 = !DILocation(line: 683, column: 12, scope: !881)
!881 = distinct !DILexicalBlock(scope: !877, file: !2, line: 682, column: 16)
!882 = !DILocation(line: 683, column: 5, scope: !881)
!883 = !DILocation(line: 686, column: 3, scope: !843)
!884 = !DILocation(line: 686, column: 12, scope: !843)
!885 = !DILocation(line: 686, column: 29, scope: !843)
!886 = !{!818, !633, i64 40}
!887 = !DILocation(line: 687, column: 3, scope: !843)
!888 = !DILocation(line: 687, column: 12, scope: !843)
!889 = !DILocation(line: 687, column: 21, scope: !843)
!890 = !{!818, !624, i64 56}
!891 = !DILocation(line: 689, column: 3, scope: !843)
!892 = !DILocation(line: 690, column: 1, scope: !843)
!893 = distinct !DISubprogram(name: "hd_map_init", scope: !2, file: !2, line: 529, type: !894, scopeLine: 529, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !897)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !896}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!897 = !{!898}
!898 = !DILocalVariable(name: "map", arg: 1, scope: !893, file: !2, line: 529, type: !896)
!899 = !DILocation(line: 529, column: 41, scope: !893)
!900 = !DILocation(line: 530, column: 10, scope: !893)
!901 = !DILocation(line: 530, column: 3, scope: !893)
!902 = !DILocation(line: 531, column: 1, scope: !893)
!903 = distinct !DISubprogram(name: "nghttp2_hd_inflate_init", scope: !2, file: !2, line: 725, type: !904, scopeLine: 725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !947)
!904 = !DISubroutineType(types: !905)
!905 = !{!47, !906, !734}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_hd_inflater", file: !46, line: 5336, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nghttp2_hd_inflater", file: !23, line: 232, size: 1920, elements: !909)
!909 = !{!910, !911, !920, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !942, !944, !945, !946}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !908, file: !23, line: 233, baseType: !721, size: 512)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "huff_decode_ctx", scope: !908, file: !23, line: 235, baseType: !912, size: 16, offset: 512)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_hd_huff_decode_context", file: !913, line: 60, baseType: !914)
!913 = !DIFile(filename: "./nghttp2_hd_huffman.h", directory: "/local-ssd/nghttp2-ygk7gapsiutjtu4stb5i6ycvvkuh4eel-build/aidengro/spack-stage-nghttp2-1.57.0-ygk7gapsiutjtu4stb5i6ycvvkuh4eel/spack-src/lib", checksumkind: CSK_MD5, checksum: "0841b43fab04a35aee04fd0258f95063")
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !913, line: 57, size: 16, elements: !915)
!915 = !{!916}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "fstate", scope: !914, file: !913, line: 59, baseType: !917, size: 16)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !183, line: 25, baseType: !918)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !185, line: 40, baseType: !919)
!919 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "namebuf", scope: !908, file: !23, line: 237, baseType: !921, size: 320, offset: 576)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_buf", file: !922, line: 52, baseType: !923)
!922 = !DIFile(filename: "./nghttp2_buf.h", directory: "/local-ssd/nghttp2-ygk7gapsiutjtu4stb5i6ycvvkuh4eel-build/aidengro/spack-stage-nghttp2-1.57.0-ygk7gapsiutjtu4stb5i6ycvvkuh4eel/spack-src/lib", checksumkind: CSK_MD5, checksum: "1d063e49d87147f8b75bf2a8a8ab6b57")
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !922, line: 37, size: 320, elements: !924)
!924 = !{!925, !926, !927, !928, !929}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !923, file: !922, line: 40, baseType: !181, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !923, file: !922, line: 43, baseType: !181, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !923, file: !922, line: 46, baseType: !181, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !923, file: !922, line: 49, baseType: !181, size: 64, offset: 192)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !923, file: !922, line: 51, baseType: !181, size: 64, offset: 256)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "valuebuf", scope: !908, file: !23, line: 237, baseType: !921, size: 320, offset: 896)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "namercbuf", scope: !908, file: !23, line: 238, baseType: !168, size: 64, offset: 1216)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "valuercbuf", scope: !908, file: !23, line: 238, baseType: !168, size: 64, offset: 1280)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "nv_name_keep", scope: !908, file: !23, line: 241, baseType: !168, size: 64, offset: 1344)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "nv_value_keep", scope: !908, file: !23, line: 241, baseType: !168, size: 64, offset: 1408)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !908, file: !23, line: 243, baseType: !188, size: 64, offset: 1472)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !908, file: !23, line: 245, baseType: !188, size: 64, offset: 1536)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "settings_hd_table_bufsize_max", scope: !908, file: !23, line: 248, baseType: !188, size: 64, offset: 1600)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "min_hd_table_bufsize_max", scope: !908, file: !23, line: 250, baseType: !188, size: 64, offset: 1664)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !908, file: !23, line: 252, baseType: !188, size: 64, offset: 1728)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !908, file: !23, line: 253, baseType: !941, size: 32, offset: 1792)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_hd_opcode", file: !23, line: 171, baseType: !22)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !908, file: !23, line: 254, baseType: !943, size: 32, offset: 1824)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_hd_inflate_state", file: !23, line: 187, baseType: !30)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "huffman_encoded", scope: !908, file: !23, line: 256, baseType: !182, size: 8, offset: 1856)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "index_required", scope: !908, file: !23, line: 258, baseType: !182, size: 8, offset: 1864)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "no_index", scope: !908, file: !23, line: 261, baseType: !182, size: 8, offset: 1872)
!947 = !{!948, !949, !950, !951}
!948 = !DILocalVariable(name: "inflater", arg: 1, scope: !903, file: !2, line: 725, type: !906)
!949 = !DILocalVariable(name: "mem", arg: 2, scope: !903, file: !2, line: 725, type: !734)
!950 = !DILocalVariable(name: "rv", scope: !903, file: !2, line: 726, type: !47)
!951 = !DILabel(scope: !903, name: "fail", file: !2, line: 757)
!952 = !DILocation(line: 725, column: 50, scope: !903)
!953 = !DILocation(line: 725, column: 73, scope: !903)
!954 = !DILocation(line: 726, column: 3, scope: !903)
!955 = !DILocation(line: 726, column: 7, scope: !903)
!956 = !DILocation(line: 728, column: 25, scope: !903)
!957 = !DILocation(line: 728, column: 35, scope: !903)
!958 = !DILocation(line: 728, column: 40, scope: !903)
!959 = !DILocation(line: 728, column: 8, scope: !903)
!960 = !DILocation(line: 728, column: 6, scope: !903)
!961 = !DILocation(line: 729, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !903, file: !2, line: 729, column: 7)
!963 = !DILocation(line: 729, column: 10, scope: !962)
!964 = !DILocation(line: 729, column: 7, scope: !903)
!965 = !DILocation(line: 730, column: 5, scope: !966)
!966 = distinct !DILexicalBlock(scope: !962, file: !2, line: 729, column: 16)
!967 = !DILocation(line: 733, column: 3, scope: !903)
!968 = !DILocation(line: 733, column: 13, scope: !903)
!969 = !DILocation(line: 733, column: 43, scope: !903)
!970 = !{!971, !633, i64 200}
!971 = !{!"nghttp2_hd_inflater", !818, i64 0, !972, i64 64, !974, i64 72, !974, i64 112, !613, i64 152, !613, i64 160, !613, i64 168, !613, i64 176, !633, i64 184, !633, i64 192, !633, i64 200, !633, i64 208, !633, i64 216, !614, i64 224, !614, i64 228, !614, i64 232, !614, i64 233, !614, i64 234}
!972 = !{!"", !973, i64 0}
!973 = !{!"short", !614, i64 0}
!974 = !{!"", !613, i64 0, !613, i64 8, !613, i64 16, !613, i64 24, !613, i64 32}
!975 = !DILocation(line: 734, column: 3, scope: !903)
!976 = !DILocation(line: 734, column: 13, scope: !903)
!977 = !DILocation(line: 734, column: 38, scope: !903)
!978 = !{!971, !633, i64 208}
!979 = !DILocation(line: 736, column: 3, scope: !903)
!980 = !DILocation(line: 736, column: 13, scope: !903)
!981 = !DILocation(line: 736, column: 26, scope: !903)
!982 = !{!971, !613, i64 168}
!983 = !DILocation(line: 737, column: 3, scope: !903)
!984 = !DILocation(line: 737, column: 13, scope: !903)
!985 = !DILocation(line: 737, column: 27, scope: !903)
!986 = !{!971, !613, i64 176}
!987 = !DILocation(line: 739, column: 3, scope: !903)
!988 = !DILocation(line: 739, column: 13, scope: !903)
!989 = !DILocation(line: 739, column: 20, scope: !903)
!990 = !{!971, !614, i64 224}
!991 = !DILocation(line: 740, column: 3, scope: !903)
!992 = !DILocation(line: 740, column: 13, scope: !903)
!993 = !DILocation(line: 740, column: 19, scope: !903)
!994 = !{!971, !614, i64 228}
!995 = !DILocation(line: 742, column: 21, scope: !903)
!996 = !DILocation(line: 742, column: 31, scope: !903)
!997 = !DILocation(line: 742, column: 3, scope: !903)
!998 = !DILocation(line: 743, column: 21, scope: !903)
!999 = !DILocation(line: 743, column: 31, scope: !903)
!1000 = !DILocation(line: 743, column: 3, scope: !903)
!1001 = !DILocation(line: 745, column: 3, scope: !903)
!1002 = !DILocation(line: 745, column: 13, scope: !903)
!1003 = !DILocation(line: 745, column: 23, scope: !903)
!1004 = !{!971, !613, i64 152}
!1005 = !DILocation(line: 746, column: 3, scope: !903)
!1006 = !DILocation(line: 746, column: 13, scope: !903)
!1007 = !DILocation(line: 746, column: 24, scope: !903)
!1008 = !{!971, !613, i64 160}
!1009 = !DILocation(line: 748, column: 3, scope: !903)
!1010 = !DILocation(line: 748, column: 13, scope: !903)
!1011 = !DILocation(line: 748, column: 29, scope: !903)
!1012 = !{!971, !614, i64 232}
!1013 = !DILocation(line: 749, column: 3, scope: !903)
!1014 = !DILocation(line: 749, column: 13, scope: !903)
!1015 = !DILocation(line: 749, column: 19, scope: !903)
!1016 = !{!971, !633, i64 192}
!1017 = !DILocation(line: 750, column: 3, scope: !903)
!1018 = !DILocation(line: 750, column: 13, scope: !903)
!1019 = !DILocation(line: 750, column: 18, scope: !903)
!1020 = !{!971, !633, i64 184}
!1021 = !DILocation(line: 751, column: 3, scope: !903)
!1022 = !DILocation(line: 751, column: 13, scope: !903)
!1023 = !DILocation(line: 751, column: 19, scope: !903)
!1024 = !{!971, !633, i64 216}
!1025 = !DILocation(line: 752, column: 3, scope: !903)
!1026 = !DILocation(line: 752, column: 13, scope: !903)
!1027 = !DILocation(line: 752, column: 28, scope: !903)
!1028 = !{!971, !614, i64 233}
!1029 = !DILocation(line: 753, column: 3, scope: !903)
!1030 = !DILocation(line: 753, column: 13, scope: !903)
!1031 = !DILocation(line: 753, column: 22, scope: !903)
!1032 = !{!971, !614, i64 234}
!1033 = !DILocation(line: 755, column: 3, scope: !903)
!1034 = !DILocation(line: 757, column: 1, scope: !903)
!1035 = !DILocation(line: 758, column: 10, scope: !903)
!1036 = !DILocation(line: 758, column: 3, scope: !903)
!1037 = !DILocation(line: 759, column: 1, scope: !903)
!1038 = !DISubprogram(name: "nghttp2_buf_init", scope: !922, file: !922, line: 78, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{null, !1041}
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!1042 = distinct !DISubprogram(name: "nghttp2_hd_deflate_free", scope: !2, file: !2, line: 769, type: !1043, scopeLine: 769, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1045)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !716}
!1045 = !{!1046}
!1046 = !DILocalVariable(name: "deflater", arg: 1, scope: !1042, file: !2, line: 769, type: !716)
!1047 = !DILocation(line: 769, column: 51, scope: !1042)
!1048 = !DILocation(line: 770, column: 20, scope: !1042)
!1049 = !DILocation(line: 770, column: 30, scope: !1042)
!1050 = !DILocation(line: 770, column: 3, scope: !1042)
!1051 = !DILocation(line: 771, column: 1, scope: !1042)
!1052 = distinct !DISubprogram(name: "hd_context_free", scope: !2, file: !2, line: 692, type: !1053, scopeLine: 692, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !846}
!1055 = !{!1056}
!1056 = !DILocalVariable(name: "context", arg: 1, scope: !1052, file: !2, line: 692, type: !846)
!1057 = !DILocation(line: 692, column: 49, scope: !1052)
!1058 = !DILocation(line: 693, column: 20, scope: !1052)
!1059 = !DILocation(line: 693, column: 29, scope: !1052)
!1060 = !DILocation(line: 693, column: 39, scope: !1052)
!1061 = !DILocation(line: 693, column: 48, scope: !1052)
!1062 = !DILocation(line: 693, column: 3, scope: !1052)
!1063 = !DILocation(line: 694, column: 1, scope: !1052)
!1064 = distinct !DISubprogram(name: "nghttp2_hd_inflate_free", scope: !2, file: !2, line: 773, type: !1065, scopeLine: 773, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1067)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !906}
!1067 = !{!1068}
!1068 = !DILocalVariable(name: "inflater", arg: 1, scope: !1064, file: !2, line: 773, type: !906)
!1069 = !DILocation(line: 773, column: 51, scope: !1064)
!1070 = !DILocation(line: 774, column: 24, scope: !1064)
!1071 = !DILocation(line: 774, column: 3, scope: !1064)
!1072 = !DILocation(line: 776, column: 24, scope: !1064)
!1073 = !DILocation(line: 776, column: 34, scope: !1064)
!1074 = !DILocation(line: 776, column: 3, scope: !1064)
!1075 = !DILocation(line: 777, column: 24, scope: !1064)
!1076 = !DILocation(line: 777, column: 34, scope: !1064)
!1077 = !DILocation(line: 777, column: 3, scope: !1064)
!1078 = !DILocation(line: 779, column: 20, scope: !1064)
!1079 = !DILocation(line: 779, column: 30, scope: !1064)
!1080 = !DILocation(line: 779, column: 3, scope: !1064)
!1081 = !DILocation(line: 780, column: 1, scope: !1064)
!1082 = distinct !DISubprogram(name: "hd_inflate_keep_free", scope: !2, file: !2, line: 761, type: !1065, scopeLine: 761, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1083)
!1083 = !{!1084}
!1084 = !DILocalVariable(name: "inflater", arg: 1, scope: !1082, file: !2, line: 761, type: !906)
!1085 = !DILocation(line: 761, column: 55, scope: !1082)
!1086 = !DILocation(line: 762, column: 24, scope: !1082)
!1087 = !DILocation(line: 762, column: 34, scope: !1082)
!1088 = !DILocation(line: 762, column: 3, scope: !1082)
!1089 = !DILocation(line: 763, column: 24, scope: !1082)
!1090 = !DILocation(line: 763, column: 34, scope: !1082)
!1091 = !DILocation(line: 763, column: 3, scope: !1082)
!1092 = !DILocation(line: 765, column: 3, scope: !1082)
!1093 = !DILocation(line: 765, column: 13, scope: !1082)
!1094 = !DILocation(line: 765, column: 27, scope: !1082)
!1095 = !DILocation(line: 766, column: 3, scope: !1082)
!1096 = !DILocation(line: 766, column: 13, scope: !1082)
!1097 = !DILocation(line: 766, column: 26, scope: !1082)
!1098 = !DILocation(line: 767, column: 1, scope: !1082)
!1099 = distinct !DISubprogram(name: "nghttp2_hd_deflate_change_table_size", scope: !2, file: !2, line: 1245, type: !1100, scopeLine: 1246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1102)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!47, !716, !188}
!1102 = !{!1103, !1104, !1105}
!1103 = !DILocalVariable(name: "deflater", arg: 1, scope: !1099, file: !2, line: 1246, type: !716)
!1104 = !DILocalVariable(name: "settings_max_dynamic_table_size", arg: 2, scope: !1099, file: !2, line: 1246, type: !188)
!1105 = !DILocalVariable(name: "next_bufsize", scope: !1099, file: !2, line: 1247, type: !188)
!1106 = !DILocation(line: 1246, column: 26, scope: !1099)
!1107 = !DILocation(line: 1246, column: 43, scope: !1099)
!1108 = !DILocation(line: 1247, column: 3, scope: !1099)
!1109 = !DILocation(line: 1247, column: 10, scope: !1099)
!1110 = !DILocation(line: 1247, column: 25, scope: !1099)
!1111 = !DILocation(line: 1250, column: 40, scope: !1099)
!1112 = !DILocation(line: 1250, column: 3, scope: !1099)
!1113 = !DILocation(line: 1250, column: 13, scope: !1099)
!1114 = !DILocation(line: 1250, column: 17, scope: !1099)
!1115 = !DILocation(line: 1250, column: 38, scope: !1099)
!1116 = !DILocation(line: 1253, column: 7, scope: !1099)
!1117 = !DILocation(line: 1252, column: 3, scope: !1099)
!1118 = !DILocation(line: 1252, column: 13, scope: !1099)
!1119 = !DILocation(line: 1252, column: 38, scope: !1099)
!1120 = !DILocation(line: 1255, column: 3, scope: !1099)
!1121 = !DILocation(line: 1255, column: 13, scope: !1099)
!1122 = !DILocation(line: 1255, column: 38, scope: !1099)
!1123 = !DILocation(line: 1257, column: 33, scope: !1099)
!1124 = !DILocation(line: 1257, column: 43, scope: !1099)
!1125 = !DILocation(line: 1257, column: 49, scope: !1099)
!1126 = !DILocation(line: 1257, column: 59, scope: !1099)
!1127 = !DILocation(line: 1257, column: 3, scope: !1099)
!1128 = !DILocation(line: 1259, column: 1, scope: !1099)
!1129 = !DILocation(line: 1258, column: 3, scope: !1099)
!1130 = distinct !DISubprogram(name: "hd_context_shrink_table_size", scope: !2, file: !2, line: 1223, type: !1131, scopeLine: 1224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1133)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !846, !896}
!1133 = !{!1134, !1135, !1136, !1137, !1139}
!1134 = !DILocalVariable(name: "context", arg: 1, scope: !1130, file: !2, line: 1223, type: !846)
!1135 = !DILocalVariable(name: "map", arg: 2, scope: !1130, file: !2, line: 1224, type: !896)
!1136 = !DILocalVariable(name: "mem", scope: !1130, file: !2, line: 1225, type: !734)
!1137 = !DILocalVariable(name: "idx", scope: !1138, file: !2, line: 1231, type: !188)
!1138 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 1230, column: 37)
!1139 = !DILocalVariable(name: "ent", scope: !1138, file: !2, line: 1232, type: !592)
!1140 = !DILocation(line: 1223, column: 62, scope: !1130)
!1141 = !DILocation(line: 1224, column: 58, scope: !1130)
!1142 = !DILocation(line: 1225, column: 3, scope: !1130)
!1143 = !DILocation(line: 1225, column: 16, scope: !1130)
!1144 = !DILocation(line: 1227, column: 9, scope: !1130)
!1145 = !DILocation(line: 1227, column: 18, scope: !1130)
!1146 = !DILocation(line: 1227, column: 7, scope: !1130)
!1147 = !DILocation(line: 1229, column: 3, scope: !1130)
!1148 = !DILocation(line: 1229, column: 10, scope: !1130)
!1149 = !DILocation(line: 1229, column: 19, scope: !1130)
!1150 = !DILocation(line: 1229, column: 38, scope: !1130)
!1151 = !DILocation(line: 1229, column: 47, scope: !1130)
!1152 = !DILocation(line: 1229, column: 36, scope: !1130)
!1153 = !DILocation(line: 1229, column: 68, scope: !1130)
!1154 = !DILocation(line: 1230, column: 10, scope: !1130)
!1155 = !DILocation(line: 1230, column: 19, scope: !1130)
!1156 = !DILocation(line: 1230, column: 28, scope: !1130)
!1157 = !{!818, !633, i64 24}
!1158 = !DILocation(line: 1230, column: 32, scope: !1130)
!1159 = !DILocation(line: 0, scope: !1130)
!1160 = !DILocation(line: 1231, column: 5, scope: !1138)
!1161 = !DILocation(line: 1231, column: 12, scope: !1138)
!1162 = !DILocation(line: 1231, column: 18, scope: !1138)
!1163 = !DILocation(line: 1231, column: 27, scope: !1138)
!1164 = !DILocation(line: 1231, column: 36, scope: !1138)
!1165 = !DILocation(line: 1231, column: 40, scope: !1138)
!1166 = !DILocation(line: 1232, column: 5, scope: !1138)
!1167 = !DILocation(line: 1232, column: 23, scope: !1138)
!1168 = !DILocation(line: 1232, column: 45, scope: !1138)
!1169 = !DILocation(line: 1232, column: 54, scope: !1138)
!1170 = !DILocation(line: 1232, column: 64, scope: !1138)
!1171 = !DILocation(line: 1232, column: 29, scope: !1138)
!1172 = !DILocation(line: 1234, column: 20, scope: !1138)
!1173 = !DILocation(line: 1234, column: 25, scope: !1138)
!1174 = !DILocation(line: 1234, column: 28, scope: !1138)
!1175 = !DILocation(line: 1234, column: 34, scope: !1138)
!1176 = !DILocation(line: 1234, column: 39, scope: !1138)
!1177 = !DILocation(line: 1234, column: 44, scope: !1138)
!1178 = !DILocation(line: 1234, column: 47, scope: !1138)
!1179 = !DILocation(line: 1234, column: 54, scope: !1138)
!1180 = !DILocation(line: 1234, column: 9, scope: !1138)
!1181 = !DILocation(line: 1233, column: 5, scope: !1138)
!1182 = !DILocation(line: 1233, column: 14, scope: !1138)
!1183 = !DILocation(line: 1233, column: 31, scope: !1138)
!1184 = !DILocation(line: 1235, column: 26, scope: !1138)
!1185 = !DILocation(line: 1235, column: 35, scope: !1138)
!1186 = !DILocation(line: 1235, column: 5, scope: !1138)
!1187 = !DILocation(line: 1236, column: 9, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 1236, column: 9)
!1189 = !DILocation(line: 1236, column: 9, scope: !1138)
!1190 = !DILocation(line: 1237, column: 21, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 1236, column: 14)
!1192 = !DILocation(line: 1237, column: 26, scope: !1191)
!1193 = !DILocation(line: 1237, column: 7, scope: !1191)
!1194 = !DILocation(line: 1238, column: 5, scope: !1191)
!1195 = !DILocation(line: 1240, column: 27, scope: !1138)
!1196 = !DILocation(line: 1240, column: 5, scope: !1138)
!1197 = !DILocation(line: 1241, column: 22, scope: !1138)
!1198 = !DILocation(line: 1241, column: 27, scope: !1138)
!1199 = !DILocation(line: 1241, column: 5, scope: !1138)
!1200 = !DILocation(line: 1242, column: 3, scope: !1130)
!1201 = distinct !{!1201, !1147, !1200, !1202}
!1202 = !{!"llvm.loop.mustprogress"}
!1203 = !DILocation(line: 1243, column: 1, scope: !1130)
!1204 = distinct !DISubprogram(name: "nghttp2_hd_inflate_change_table_size", scope: !2, file: !2, line: 1261, type: !1205, scopeLine: 1262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1207)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!47, !906, !188}
!1207 = !{!1208, !1209}
!1208 = !DILocalVariable(name: "inflater", arg: 1, scope: !1204, file: !2, line: 1262, type: !906)
!1209 = !DILocalVariable(name: "settings_max_dynamic_table_size", arg: 2, scope: !1204, file: !2, line: 1262, type: !188)
!1210 = !DILocation(line: 1262, column: 26, scope: !1204)
!1211 = !DILocation(line: 1262, column: 43, scope: !1204)
!1212 = !DILocation(line: 1263, column: 11, scope: !1204)
!1213 = !DILocation(line: 1263, column: 21, scope: !1204)
!1214 = !DILocation(line: 1263, column: 3, scope: !1204)
!1215 = !DILocation(line: 1266, column: 5, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 1263, column: 28)
!1217 = !DILocation(line: 1268, column: 5, scope: !1216)
!1218 = !DILocation(line: 1271, column: 45, scope: !1204)
!1219 = !DILocation(line: 1271, column: 3, scope: !1204)
!1220 = !DILocation(line: 1271, column: 13, scope: !1204)
!1221 = !DILocation(line: 1271, column: 43, scope: !1204)
!1222 = !DILocation(line: 1280, column: 7, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 1280, column: 7)
!1224 = !DILocation(line: 1280, column: 17, scope: !1223)
!1225 = !DILocation(line: 1280, column: 21, scope: !1223)
!1226 = !{!971, !633, i64 48}
!1227 = !DILocation(line: 1280, column: 44, scope: !1223)
!1228 = !DILocation(line: 1280, column: 42, scope: !1223)
!1229 = !DILocation(line: 1280, column: 7, scope: !1204)
!1230 = !DILocation(line: 1281, column: 5, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 1280, column: 77)
!1232 = !DILocation(line: 1281, column: 15, scope: !1231)
!1233 = !DILocation(line: 1281, column: 21, scope: !1231)
!1234 = !DILocation(line: 1284, column: 42, scope: !1231)
!1235 = !DILocation(line: 1284, column: 5, scope: !1231)
!1236 = !DILocation(line: 1284, column: 15, scope: !1231)
!1237 = !DILocation(line: 1284, column: 40, scope: !1231)
!1238 = !DILocation(line: 1286, column: 42, scope: !1231)
!1239 = !DILocation(line: 1286, column: 5, scope: !1231)
!1240 = !DILocation(line: 1286, column: 15, scope: !1231)
!1241 = !DILocation(line: 1286, column: 19, scope: !1231)
!1242 = !DILocation(line: 1286, column: 40, scope: !1231)
!1243 = !DILocation(line: 1288, column: 35, scope: !1231)
!1244 = !DILocation(line: 1288, column: 45, scope: !1231)
!1245 = !DILocation(line: 1288, column: 5, scope: !1231)
!1246 = !DILocation(line: 1289, column: 3, scope: !1231)
!1247 = !DILocation(line: 1291, column: 3, scope: !1204)
!1248 = !DILocation(line: 1292, column: 1, scope: !1204)
!1249 = distinct !DISubprogram(name: "nghttp2_hd_table_get", scope: !2, file: !2, line: 1301, type: !1250, scopeLine: 1301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1252)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!597, !846, !188}
!1252 = !{!1253, !1254, !1255, !1259}
!1253 = !DILocalVariable(name: "context", arg: 1, scope: !1249, file: !2, line: 1301, type: !846)
!1254 = !DILocalVariable(name: "idx", arg: 2, scope: !1249, file: !2, line: 1301, type: !188)
!1255 = !DILocalVariable(name: "ent", scope: !1256, file: !2, line: 1307, type: !1258)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !2, line: 1306, column: 10)
!1257 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 1303, column: 7)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!1259 = !DILocalVariable(name: "nv", scope: !1256, file: !2, line: 1308, type: !597)
!1260 = !DILocation(line: 1301, column: 56, scope: !1249)
!1261 = !DILocation(line: 1301, column: 72, scope: !1249)
!1262 = !DILocation(line: 1302, column: 3, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 1302, column: 3)
!1264 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 1302, column: 3)
!1265 = !DILocation(line: 1302, column: 3, scope: !1264)
!1266 = !DILocation(line: 1303, column: 7, scope: !1257)
!1267 = !DILocation(line: 1303, column: 11, scope: !1257)
!1268 = !DILocation(line: 1303, column: 7, scope: !1249)
!1269 = !DILocation(line: 1304, column: 28, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1257, file: !2, line: 1303, column: 43)
!1271 = !DILocation(line: 1304, column: 37, scope: !1270)
!1272 = !DILocation(line: 1304, column: 47, scope: !1270)
!1273 = !DILocation(line: 1304, column: 51, scope: !1270)
!1274 = !DILocation(line: 1304, column: 12, scope: !1270)
!1275 = !DILocation(line: 1305, column: 11, scope: !1270)
!1276 = !DILocation(line: 1304, column: 5, scope: !1270)
!1277 = !DILocation(line: 1307, column: 5, scope: !1256)
!1278 = !DILocation(line: 1307, column: 36, scope: !1256)
!1279 = !DILocation(line: 1307, column: 56, scope: !1256)
!1280 = !DILocation(line: 1307, column: 43, scope: !1256)
!1281 = !DILocation(line: 1308, column: 19, scope: !1256)
!1282 = !DILocation(line: 1308, column: 24, scope: !1256)
!1283 = !DILocation(line: 1308, column: 43, scope: !1256)
!1284 = !DILocation(line: 1308, column: 48, scope: !1256)
!1285 = !DILocation(line: 1309, column: 43, scope: !1256)
!1286 = !DILocation(line: 1309, column: 48, scope: !1256)
!1287 = !DILocation(line: 1309, column: 55, scope: !1256)
!1288 = !DILocation(line: 1309, column: 60, scope: !1256)
!1289 = !{!1290, !624, i64 120}
!1290 = !{!"", !632, i64 0, !632, i64 40, !640, i64 80, !624, i64 120, !624, i64 124}
!1291 = !{!629, !624, i64 16}
!1292 = !DILocation(line: 1312, column: 3, scope: !1257)
!1293 = !DILocation(line: 1313, column: 1, scope: !1249)
!1294 = !DISubprogram(name: "__assert_fail", scope: !1295, file: !1295, line: 69, type: !1296, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1295 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null, !1298, !1298, !24, !1298}
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!1299 = distinct !DISubprogram(name: "hd_ringbuf_get", scope: !2, file: !2, line: 608, type: !1300, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1303)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!592, !1302, !188}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!1303 = !{!1304, !1305}
!1304 = !DILocalVariable(name: "ringbuf", arg: 1, scope: !1299, file: !2, line: 608, type: !1302)
!1305 = !DILocalVariable(name: "idx", arg: 2, scope: !1299, file: !2, line: 609, type: !188)
!1306 = !DILocation(line: 608, column: 61, scope: !1299)
!1307 = !DILocation(line: 609, column: 48, scope: !1299)
!1308 = !DILocation(line: 610, column: 3, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 610, column: 3)
!1310 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 610, column: 3)
!1311 = !{!819, !633, i64 24}
!1312 = !DILocation(line: 610, column: 3, scope: !1310)
!1313 = !DILocation(line: 611, column: 10, scope: !1299)
!1314 = !DILocation(line: 611, column: 19, scope: !1299)
!1315 = !{!819, !613, i64 0}
!1316 = !DILocation(line: 611, column: 27, scope: !1299)
!1317 = !DILocation(line: 611, column: 36, scope: !1299)
!1318 = !{!819, !633, i64 16}
!1319 = !DILocation(line: 611, column: 44, scope: !1299)
!1320 = !DILocation(line: 611, column: 42, scope: !1299)
!1321 = !DILocation(line: 611, column: 51, scope: !1299)
!1322 = !DILocation(line: 611, column: 60, scope: !1299)
!1323 = !{!819, !633, i64 8}
!1324 = !DILocation(line: 611, column: 49, scope: !1299)
!1325 = !DILocation(line: 611, column: 3, scope: !1299)
!1326 = distinct !DISubprogram(name: "nghttp2_hd_deflate_hd_bufs", scope: !2, file: !2, line: 1440, type: !1327, scopeLine: 1442, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1349)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!47, !716, !1329, !1347, !188}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_bufs", file: !922, line: 155, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !922, line: 134, size: 512, elements: !1332)
!1332 = !{!1333, !1340, !1341, !1342, !1343, !1344, !1345, !1346}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1331, file: !922, line: 136, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_buf_chain", file: !922, line: 124, baseType: !1336)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nghttp2_buf_chain", file: !922, line: 127, size: 384, elements: !1337)
!1337 = !{!1338, !1339}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1336, file: !922, line: 130, baseType: !1334, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1336, file: !922, line: 131, baseType: !921, size: 320, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !1331, file: !922, line: 138, baseType: !1334, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1331, file: !922, line: 140, baseType: !734, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_length", scope: !1331, file: !922, line: 144, baseType: !188, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "max_chunk", scope: !1331, file: !922, line: 146, baseType: !188, size: 64, offset: 256)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_used", scope: !1331, file: !922, line: 148, baseType: !188, size: 64, offset: 320)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_keep", scope: !1331, file: !922, line: 150, baseType: !188, size: 64, offset: 384)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1331, file: !922, line: 154, baseType: !188, size: 64, offset: 448)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!1349 = !{!1350, !1351, !1352, !1353, !1354, !1355, !1356, !1359}
!1350 = !DILocalVariable(name: "deflater", arg: 1, scope: !1326, file: !2, line: 1440, type: !716)
!1351 = !DILocalVariable(name: "bufs", arg: 2, scope: !1326, file: !2, line: 1441, type: !1329)
!1352 = !DILocalVariable(name: "nv", arg: 3, scope: !1326, file: !2, line: 1441, type: !1347)
!1353 = !DILocalVariable(name: "nvlen", arg: 4, scope: !1326, file: !2, line: 1442, type: !188)
!1354 = !DILocalVariable(name: "i", scope: !1326, file: !2, line: 1443, type: !188)
!1355 = !DILocalVariable(name: "rv", scope: !1326, file: !2, line: 1444, type: !47)
!1356 = !DILocalVariable(name: "min_hd_table_bufsize_max", scope: !1357, file: !2, line: 1451, type: !188)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 1450, column: 43)
!1358 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 1450, column: 7)
!1359 = !DILabel(scope: !1326, name: "fail", file: !2, line: 1484)
!1360 = !DILocation(line: 1440, column: 53, scope: !1326)
!1361 = !DILocation(line: 1441, column: 46, scope: !1326)
!1362 = !DILocation(line: 1441, column: 70, scope: !1326)
!1363 = !DILocation(line: 1442, column: 39, scope: !1326)
!1364 = !DILocation(line: 1443, column: 3, scope: !1326)
!1365 = !DILocation(line: 1443, column: 10, scope: !1326)
!1366 = !DILocation(line: 1444, column: 3, scope: !1326)
!1367 = !DILocation(line: 1444, column: 7, scope: !1326)
!1368 = !DILocation(line: 1446, column: 7, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 1446, column: 7)
!1370 = !DILocation(line: 1446, column: 17, scope: !1369)
!1371 = !DILocation(line: 1446, column: 21, scope: !1369)
!1372 = !{!817, !614, i64 60}
!1373 = !DILocation(line: 1446, column: 7, scope: !1326)
!1374 = !DILocation(line: 1447, column: 5, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 1446, column: 26)
!1376 = !DILocation(line: 1450, column: 7, scope: !1358)
!1377 = !DILocation(line: 1450, column: 17, scope: !1358)
!1378 = !DILocation(line: 1450, column: 7, scope: !1326)
!1379 = !DILocation(line: 1451, column: 5, scope: !1357)
!1380 = !DILocation(line: 1451, column: 12, scope: !1357)
!1381 = !DILocation(line: 1453, column: 32, scope: !1357)
!1382 = !DILocation(line: 1453, column: 42, scope: !1357)
!1383 = !DILocation(line: 1453, column: 30, scope: !1357)
!1384 = !DILocation(line: 1455, column: 5, scope: !1357)
!1385 = !DILocation(line: 1455, column: 15, scope: !1357)
!1386 = !DILocation(line: 1455, column: 40, scope: !1357)
!1387 = !DILocation(line: 1456, column: 5, scope: !1357)
!1388 = !DILocation(line: 1456, column: 15, scope: !1357)
!1389 = !DILocation(line: 1456, column: 40, scope: !1357)
!1390 = !DILocation(line: 1458, column: 9, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 1458, column: 9)
!1392 = !DILocation(line: 1458, column: 19, scope: !1391)
!1393 = !DILocation(line: 1458, column: 23, scope: !1391)
!1394 = !DILocation(line: 1458, column: 46, scope: !1391)
!1395 = !DILocation(line: 1458, column: 44, scope: !1391)
!1396 = !DILocation(line: 1458, column: 9, scope: !1357)
!1397 = !DILocation(line: 1460, column: 28, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1391, file: !2, line: 1458, column: 72)
!1399 = !DILocation(line: 1460, column: 34, scope: !1398)
!1400 = !DILocation(line: 1460, column: 12, scope: !1398)
!1401 = !DILocation(line: 1460, column: 10, scope: !1398)
!1402 = !DILocation(line: 1462, column: 11, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 1462, column: 11)
!1404 = !DILocation(line: 1462, column: 14, scope: !1403)
!1405 = !DILocation(line: 1462, column: 11, scope: !1398)
!1406 = !DILocation(line: 1463, column: 9, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1403, file: !2, line: 1462, column: 20)
!1408 = !DILocation(line: 1465, column: 5, scope: !1398)
!1409 = !DILocation(line: 1467, column: 26, scope: !1357)
!1410 = !DILocation(line: 1467, column: 32, scope: !1357)
!1411 = !DILocation(line: 1467, column: 42, scope: !1357)
!1412 = !DILocation(line: 1467, column: 46, scope: !1357)
!1413 = !DILocation(line: 1467, column: 10, scope: !1357)
!1414 = !DILocation(line: 1467, column: 8, scope: !1357)
!1415 = !DILocation(line: 1469, column: 9, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 1469, column: 9)
!1417 = !DILocation(line: 1469, column: 12, scope: !1416)
!1418 = !DILocation(line: 1469, column: 9, scope: !1357)
!1419 = !DILocation(line: 1470, column: 7, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 1469, column: 18)
!1421 = !DILocation(line: 1472, column: 3, scope: !1358)
!1422 = !DILocation(line: 1472, column: 3, scope: !1357)
!1423 = !DILocation(line: 1474, column: 10, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 1474, column: 3)
!1425 = !DILocation(line: 1474, column: 8, scope: !1424)
!1426 = !DILocation(line: 1474, column: 15, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 1474, column: 3)
!1428 = !DILocation(line: 1474, column: 19, scope: !1427)
!1429 = !DILocation(line: 1474, column: 17, scope: !1427)
!1430 = !DILocation(line: 1474, column: 3, scope: !1424)
!1431 = !DILocation(line: 1475, column: 21, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1427, file: !2, line: 1474, column: 31)
!1433 = !DILocation(line: 1475, column: 31, scope: !1432)
!1434 = !DILocation(line: 1475, column: 38, scope: !1432)
!1435 = !DILocation(line: 1475, column: 41, scope: !1432)
!1436 = !DILocation(line: 1475, column: 10, scope: !1432)
!1437 = !DILocation(line: 1475, column: 8, scope: !1432)
!1438 = !DILocation(line: 1476, column: 9, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 1476, column: 9)
!1440 = !DILocation(line: 1476, column: 12, scope: !1439)
!1441 = !DILocation(line: 1476, column: 9, scope: !1432)
!1442 = !DILocation(line: 1477, column: 7, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1439, file: !2, line: 1476, column: 18)
!1444 = !DILocation(line: 1479, column: 3, scope: !1432)
!1445 = !DILocation(line: 1474, column: 26, scope: !1427)
!1446 = !DILocation(line: 1474, column: 3, scope: !1427)
!1447 = distinct !{!1447, !1430, !1448, !1202}
!1448 = !DILocation(line: 1479, column: 3, scope: !1424)
!1449 = !DILocation(line: 1481, column: 3, scope: !1326)
!1450 = !DILocation(line: 1481, column: 3, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 1481, column: 3)
!1452 = !DILocation(line: 1483, column: 3, scope: !1326)
!1453 = !DILocation(line: 1484, column: 1, scope: !1326)
!1454 = !DILocation(line: 1485, column: 3, scope: !1326)
!1455 = !DILocation(line: 1485, column: 3, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 1485, column: 3)
!1457 = !DILocation(line: 1487, column: 3, scope: !1326)
!1458 = !DILocation(line: 1487, column: 13, scope: !1326)
!1459 = !DILocation(line: 1487, column: 17, scope: !1326)
!1460 = !DILocation(line: 1487, column: 21, scope: !1326)
!1461 = !DILocation(line: 1488, column: 10, scope: !1326)
!1462 = !DILocation(line: 1488, column: 3, scope: !1326)
!1463 = !DILocation(line: 1489, column: 1, scope: !1326)
!1464 = distinct !DISubprogram(name: "emit_table_size", scope: !2, file: !2, line: 917, type: !1465, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1467)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!47, !1329, !188}
!1467 = !{!1468, !1469, !1470, !1471, !1472, !1473}
!1468 = !DILocalVariable(name: "bufs", arg: 1, scope: !1464, file: !2, line: 917, type: !1329)
!1469 = !DILocalVariable(name: "table_size", arg: 2, scope: !1464, file: !2, line: 917, type: !188)
!1470 = !DILocalVariable(name: "rv", scope: !1464, file: !2, line: 918, type: !47)
!1471 = !DILocalVariable(name: "bufp", scope: !1464, file: !2, line: 919, type: !181)
!1472 = !DILocalVariable(name: "blocklen", scope: !1464, file: !2, line: 920, type: !188)
!1473 = !DILocalVariable(name: "sb", scope: !1464, file: !2, line: 921, type: !1474)
!1474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 128, elements: !299)
!1475 = !DILocation(line: 917, column: 42, scope: !1464)
!1476 = !DILocation(line: 917, column: 55, scope: !1464)
!1477 = !DILocation(line: 918, column: 3, scope: !1464)
!1478 = !DILocation(line: 918, column: 7, scope: !1464)
!1479 = !DILocation(line: 919, column: 3, scope: !1464)
!1480 = !DILocation(line: 919, column: 12, scope: !1464)
!1481 = !DILocation(line: 920, column: 3, scope: !1464)
!1482 = !DILocation(line: 920, column: 10, scope: !1464)
!1483 = !DILocation(line: 921, column: 3, scope: !1464)
!1484 = !DILocation(line: 921, column: 11, scope: !1464)
!1485 = !DILocation(line: 923, column: 3, scope: !1464)
!1486 = !DILocation(line: 923, column: 3, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1464, file: !2, line: 923, column: 3)
!1488 = !DILocation(line: 925, column: 35, scope: !1464)
!1489 = !DILocation(line: 925, column: 14, scope: !1464)
!1490 = !DILocation(line: 925, column: 12, scope: !1464)
!1491 = !DILocation(line: 927, column: 20, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1464, file: !2, line: 927, column: 7)
!1493 = !DILocation(line: 927, column: 18, scope: !1492)
!1494 = !DILocation(line: 927, column: 7, scope: !1464)
!1495 = !DILocation(line: 928, column: 5, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1492, file: !2, line: 927, column: 30)
!1497 = !DILocation(line: 931, column: 10, scope: !1464)
!1498 = !DILocation(line: 931, column: 8, scope: !1464)
!1499 = !DILocation(line: 933, column: 4, scope: !1464)
!1500 = !DILocation(line: 933, column: 9, scope: !1464)
!1501 = !DILocation(line: 935, column: 17, scope: !1464)
!1502 = !DILocation(line: 935, column: 23, scope: !1464)
!1503 = !DILocation(line: 935, column: 3, scope: !1464)
!1504 = !DILocation(line: 937, column: 25, scope: !1464)
!1505 = !DILocation(line: 937, column: 31, scope: !1464)
!1506 = !DILocation(line: 937, column: 35, scope: !1464)
!1507 = !DILocation(line: 937, column: 8, scope: !1464)
!1508 = !DILocation(line: 937, column: 6, scope: !1464)
!1509 = !DILocation(line: 938, column: 7, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1464, file: !2, line: 938, column: 7)
!1511 = !DILocation(line: 938, column: 10, scope: !1510)
!1512 = !DILocation(line: 938, column: 7, scope: !1464)
!1513 = !DILocation(line: 939, column: 12, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1510, file: !2, line: 938, column: 16)
!1515 = !DILocation(line: 939, column: 5, scope: !1514)
!1516 = !DILocation(line: 942, column: 3, scope: !1464)
!1517 = !DILocation(line: 943, column: 1, scope: !1464)
!1518 = distinct !DISubprogram(name: "deflate_nv", scope: !2, file: !2, line: 1342, type: !1519, scopeLine: 1343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1521)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!47, !716, !1329, !1347}
!1521 = !{!1522, !1523, !1524, !1525, !1526, !1532, !1533, !1534, !1535, !1536, !1537}
!1522 = !DILocalVariable(name: "deflater", arg: 1, scope: !1518, file: !2, line: 1342, type: !716)
!1523 = !DILocalVariable(name: "bufs", arg: 2, scope: !1518, file: !2, line: 1342, type: !1329)
!1524 = !DILocalVariable(name: "nv", arg: 3, scope: !1518, file: !2, line: 1343, type: !1347)
!1525 = !DILocalVariable(name: "rv", scope: !1518, file: !2, line: 1344, type: !47)
!1526 = !DILocalVariable(name: "res", scope: !1518, file: !2, line: 1345, type: !1527)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "search_result", file: !2, line: 1170, baseType: !1528)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 1166, size: 128, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1528, file: !2, line: 1167, baseType: !195, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "name_value_match", scope: !1528, file: !2, line: 1169, baseType: !47, size: 32, offset: 64)
!1532 = !DILocalVariable(name: "idx", scope: !1518, file: !2, line: 1346, type: !195)
!1533 = !DILocalVariable(name: "indexing_mode", scope: !1518, file: !2, line: 1347, type: !47)
!1534 = !DILocalVariable(name: "token", scope: !1518, file: !2, line: 1348, type: !192)
!1535 = !DILocalVariable(name: "mem", scope: !1518, file: !2, line: 1349, type: !734)
!1536 = !DILocalVariable(name: "hash", scope: !1518, file: !2, line: 1350, type: !199)
!1537 = !DILocalVariable(name: "hd_nv", scope: !1538, file: !2, line: 1397, type: !597)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 1396, column: 50)
!1539 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 1396, column: 7)
!1540 = !DILocation(line: 1342, column: 44, scope: !1518)
!1541 = !DILocation(line: 1342, column: 68, scope: !1518)
!1542 = !DILocation(line: 1343, column: 41, scope: !1518)
!1543 = !DILocation(line: 1344, column: 3, scope: !1518)
!1544 = !DILocation(line: 1344, column: 7, scope: !1518)
!1545 = !DILocation(line: 1345, column: 3, scope: !1518)
!1546 = !DILocation(line: 1345, column: 17, scope: !1518)
!1547 = !DILocation(line: 1346, column: 3, scope: !1518)
!1548 = !DILocation(line: 1346, column: 11, scope: !1518)
!1549 = !DILocation(line: 1347, column: 3, scope: !1518)
!1550 = !DILocation(line: 1347, column: 7, scope: !1518)
!1551 = !DILocation(line: 1348, column: 3, scope: !1518)
!1552 = !DILocation(line: 1348, column: 11, scope: !1518)
!1553 = !DILocation(line: 1349, column: 3, scope: !1518)
!1554 = !DILocation(line: 1349, column: 16, scope: !1518)
!1555 = !DILocation(line: 1350, column: 3, scope: !1518)
!1556 = !DILocation(line: 1350, column: 12, scope: !1518)
!1557 = !DILocation(line: 1352, column: 3, scope: !1518)
!1558 = !DILocation(line: 1352, column: 3, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 1352, column: 3)
!1560 = !DILocation(line: 1355, column: 9, scope: !1518)
!1561 = !DILocation(line: 1355, column: 19, scope: !1518)
!1562 = !DILocation(line: 1355, column: 23, scope: !1518)
!1563 = !{!817, !613, i64 32}
!1564 = !DILocation(line: 1355, column: 7, scope: !1518)
!1565 = !DILocation(line: 1357, column: 24, scope: !1518)
!1566 = !DILocation(line: 1357, column: 28, scope: !1518)
!1567 = !{!640, !613, i64 0}
!1568 = !DILocation(line: 1357, column: 34, scope: !1518)
!1569 = !DILocation(line: 1357, column: 38, scope: !1518)
!1570 = !{!640, !633, i64 16}
!1571 = !DILocation(line: 1357, column: 11, scope: !1518)
!1572 = !DILocation(line: 1357, column: 9, scope: !1518)
!1573 = !DILocation(line: 1358, column: 7, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 1358, column: 7)
!1575 = !DILocation(line: 1358, column: 13, scope: !1574)
!1576 = !DILocation(line: 1358, column: 7, scope: !1518)
!1577 = !DILocation(line: 1359, column: 22, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1574, file: !2, line: 1358, column: 20)
!1579 = !DILocation(line: 1359, column: 12, scope: !1578)
!1580 = !DILocation(line: 1359, column: 10, scope: !1578)
!1581 = !DILocation(line: 1360, column: 3, scope: !1578)
!1582 = !DILocation(line: 1360, column: 14, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1574, file: !2, line: 1360, column: 14)
!1584 = !DILocation(line: 1360, column: 20, scope: !1583)
!1585 = !DILocation(line: 1360, column: 14, scope: !1574)
!1586 = !DILocation(line: 1361, column: 25, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 1360, column: 55)
!1588 = !DILocation(line: 1361, column: 12, scope: !1587)
!1589 = !DILocation(line: 1361, column: 32, scope: !1587)
!1590 = !{!1290, !624, i64 124}
!1591 = !DILocation(line: 1361, column: 10, scope: !1587)
!1592 = !DILocation(line: 1362, column: 3, scope: !1587)
!1593 = !DILocation(line: 1369, column: 7, scope: !1518)
!1594 = !DILocation(line: 1369, column: 13, scope: !1518)
!1595 = !DILocation(line: 1369, column: 44, scope: !1518)
!1596 = !DILocation(line: 1370, column: 16, scope: !1518)
!1597 = !DILocation(line: 1370, column: 22, scope: !1518)
!1598 = !DILocation(line: 1370, column: 46, scope: !1518)
!1599 = !DILocation(line: 1370, column: 49, scope: !1518)
!1600 = !DILocation(line: 1370, column: 53, scope: !1518)
!1601 = !{!640, !633, i64 24}
!1602 = !DILocation(line: 1370, column: 62, scope: !1518)
!1603 = !DILocation(line: 1370, column: 68, scope: !1518)
!1604 = !DILocation(line: 1371, column: 16, scope: !1518)
!1605 = !DILocation(line: 1371, column: 20, scope: !1518)
!1606 = !{!640, !614, i64 32}
!1607 = !DILocation(line: 1371, column: 26, scope: !1518)
!1608 = !DILocation(line: 1373, column: 40, scope: !1518)
!1609 = !DILocation(line: 1373, column: 50, scope: !1518)
!1610 = !DILocation(line: 1373, column: 54, scope: !1518)
!1611 = !DILocation(line: 1373, column: 13, scope: !1518)
!1612 = !DILocation(line: 1368, column: 17, scope: !1518)
!1613 = !DILocation(line: 1375, column: 9, scope: !1518)
!1614 = !DILocation(line: 1375, column: 26, scope: !1518)
!1615 = !DILocation(line: 1375, column: 36, scope: !1518)
!1616 = !DILocation(line: 1375, column: 41, scope: !1518)
!1617 = !DILocation(line: 1375, column: 45, scope: !1518)
!1618 = !DILocation(line: 1375, column: 52, scope: !1518)
!1619 = !DILocation(line: 1376, column: 26, scope: !1518)
!1620 = !DILocation(line: 1376, column: 36, scope: !1518)
!1621 = !DILocation(line: 1376, column: 41, scope: !1518)
!1622 = !{i64 0, i64 8, !788, i64 8, i64 4, !623}
!1623 = !DILocation(line: 1378, column: 13, scope: !1518)
!1624 = !{!1625, !633, i64 0}
!1625 = !{!"", !633, i64 0, !624, i64 8}
!1626 = !DILocation(line: 1378, column: 7, scope: !1518)
!1627 = !DILocation(line: 1380, column: 11, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 1380, column: 7)
!1629 = !{!1625, !624, i64 8}
!1630 = !DILocation(line: 1380, column: 7, scope: !1628)
!1631 = !DILocation(line: 1380, column: 7, scope: !1518)
!1632 = !DILocation(line: 1382, column: 5, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1628, file: !2, line: 1380, column: 29)
!1634 = !DILocation(line: 1382, column: 5, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1633, file: !2, line: 1382, column: 5)
!1636 = !DILocation(line: 1384, column: 29, scope: !1633)
!1637 = !DILocation(line: 1384, column: 43, scope: !1633)
!1638 = !DILocation(line: 1384, column: 10, scope: !1633)
!1639 = !DILocation(line: 1384, column: 8, scope: !1633)
!1640 = !DILocation(line: 1385, column: 9, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1633, file: !2, line: 1385, column: 9)
!1642 = !DILocation(line: 1385, column: 12, scope: !1641)
!1643 = !DILocation(line: 1385, column: 9, scope: !1633)
!1644 = !DILocation(line: 1386, column: 14, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 1385, column: 18)
!1646 = !DILocation(line: 1386, column: 7, scope: !1645)
!1647 = !DILocation(line: 1389, column: 5, scope: !1633)
!1648 = !DILocation(line: 1392, column: 11, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 1392, column: 7)
!1650 = !DILocation(line: 1392, column: 17, scope: !1649)
!1651 = !DILocation(line: 1392, column: 7, scope: !1518)
!1652 = !DILocation(line: 1393, column: 5, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1649, file: !2, line: 1392, column: 24)
!1654 = !DILocation(line: 1393, column: 5, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1653, file: !2, line: 1393, column: 5)
!1656 = !DILocation(line: 1394, column: 3, scope: !1653)
!1657 = !DILocation(line: 1396, column: 7, scope: !1539)
!1658 = !DILocation(line: 1396, column: 21, scope: !1539)
!1659 = !DILocation(line: 1396, column: 7, scope: !1518)
!1660 = !DILocation(line: 1397, column: 5, scope: !1538)
!1661 = !DILocation(line: 1397, column: 19, scope: !1538)
!1662 = !DILocation(line: 1399, column: 9, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1538, file: !2, line: 1399, column: 9)
!1664 = !DILocation(line: 1399, column: 13, scope: !1663)
!1665 = !DILocation(line: 1399, column: 9, scope: !1538)
!1666 = !DILocation(line: 1400, column: 42, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1663, file: !2, line: 1399, column: 20)
!1668 = !DILocation(line: 1400, column: 52, scope: !1667)
!1669 = !DILocation(line: 1400, column: 65, scope: !1667)
!1670 = !DILocation(line: 1400, column: 20, scope: !1667)
!1671 = !DILocation(line: 1400, column: 70, scope: !1667)
!1672 = !DILocation(line: 1400, column: 13, scope: !1667)
!1673 = !DILocation(line: 1400, column: 18, scope: !1667)
!1674 = !DILocation(line: 1401, column: 34, scope: !1667)
!1675 = !DILocation(line: 1401, column: 7, scope: !1667)
!1676 = !DILocation(line: 1402, column: 5, scope: !1667)
!1677 = !DILocation(line: 1403, column: 38, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1663, file: !2, line: 1402, column: 12)
!1679 = !DILocation(line: 1403, column: 44, scope: !1678)
!1680 = !DILocation(line: 1403, column: 48, scope: !1678)
!1681 = !DILocation(line: 1403, column: 54, scope: !1678)
!1682 = !DILocation(line: 1403, column: 58, scope: !1678)
!1683 = !DILocation(line: 1403, column: 67, scope: !1678)
!1684 = !DILocation(line: 1403, column: 12, scope: !1678)
!1685 = !DILocation(line: 1403, column: 10, scope: !1678)
!1686 = !DILocation(line: 1404, column: 11, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1678, file: !2, line: 1404, column: 11)
!1688 = !DILocation(line: 1404, column: 14, scope: !1687)
!1689 = !DILocation(line: 1404, column: 11, scope: !1678)
!1690 = !DILocation(line: 1405, column: 16, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1687, file: !2, line: 1404, column: 20)
!1692 = !DILocation(line: 1405, column: 9, scope: !1691)
!1693 = !DILocation(line: 1409, column: 36, scope: !1538)
!1694 = !DILocation(line: 1409, column: 43, scope: !1538)
!1695 = !DILocation(line: 1409, column: 47, scope: !1538)
!1696 = !{!640, !613, i64 8}
!1697 = !DILocation(line: 1409, column: 54, scope: !1538)
!1698 = !DILocation(line: 1409, column: 58, scope: !1538)
!1699 = !DILocation(line: 1409, column: 68, scope: !1538)
!1700 = !DILocation(line: 1409, column: 10, scope: !1538)
!1701 = !DILocation(line: 1409, column: 8, scope: !1538)
!1702 = !DILocation(line: 1411, column: 9, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1538, file: !2, line: 1411, column: 9)
!1704 = !DILocation(line: 1411, column: 12, scope: !1703)
!1705 = !DILocation(line: 1411, column: 9, scope: !1538)
!1706 = !DILocation(line: 1412, column: 34, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !2, line: 1411, column: 18)
!1708 = !DILocation(line: 1412, column: 7, scope: !1707)
!1709 = !DILocation(line: 1413, column: 14, scope: !1707)
!1710 = !DILocation(line: 1413, column: 7, scope: !1707)
!1711 = !DILocation(line: 1416, column: 19, scope: !1538)
!1712 = !DILocation(line: 1416, column: 11, scope: !1538)
!1713 = !DILocation(line: 1416, column: 17, scope: !1538)
!1714 = !DILocation(line: 1417, column: 11, scope: !1538)
!1715 = !DILocation(line: 1417, column: 17, scope: !1538)
!1716 = !DILocation(line: 1419, column: 36, scope: !1538)
!1717 = !DILocation(line: 1419, column: 46, scope: !1538)
!1718 = !DILocation(line: 1419, column: 60, scope: !1538)
!1719 = !DILocation(line: 1419, column: 70, scope: !1538)
!1720 = !DILocation(line: 1419, column: 75, scope: !1538)
!1721 = !DILocation(line: 1419, column: 10, scope: !1538)
!1722 = !DILocation(line: 1419, column: 8, scope: !1538)
!1723 = !DILocation(line: 1421, column: 32, scope: !1538)
!1724 = !DILocation(line: 1421, column: 5, scope: !1538)
!1725 = !DILocation(line: 1422, column: 32, scope: !1538)
!1726 = !DILocation(line: 1422, column: 5, scope: !1538)
!1727 = !DILocation(line: 1424, column: 9, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1538, file: !2, line: 1424, column: 9)
!1729 = !DILocation(line: 1424, column: 12, scope: !1728)
!1730 = !DILocation(line: 1424, column: 9, scope: !1538)
!1731 = !DILocation(line: 1425, column: 7, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1728, file: !2, line: 1424, column: 18)
!1733 = !DILocation(line: 1427, column: 3, scope: !1539)
!1734 = !DILocation(line: 1427, column: 3, scope: !1538)
!1735 = !DILocation(line: 1428, column: 7, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 1428, column: 7)
!1737 = !DILocation(line: 1428, column: 11, scope: !1736)
!1738 = !DILocation(line: 1428, column: 7, scope: !1518)
!1739 = !DILocation(line: 1429, column: 29, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1736, file: !2, line: 1428, column: 18)
!1741 = !DILocation(line: 1429, column: 35, scope: !1740)
!1742 = !DILocation(line: 1429, column: 39, scope: !1740)
!1743 = !DILocation(line: 1429, column: 10, scope: !1740)
!1744 = !DILocation(line: 1429, column: 8, scope: !1740)
!1745 = !DILocation(line: 1430, column: 3, scope: !1740)
!1746 = !DILocation(line: 1431, column: 29, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1736, file: !2, line: 1430, column: 10)
!1748 = !DILocation(line: 1431, column: 43, scope: !1747)
!1749 = !DILocation(line: 1431, column: 48, scope: !1747)
!1750 = !DILocation(line: 1431, column: 52, scope: !1747)
!1751 = !DILocation(line: 1431, column: 10, scope: !1747)
!1752 = !DILocation(line: 1431, column: 8, scope: !1747)
!1753 = !DILocation(line: 1433, column: 7, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 1433, column: 7)
!1755 = !DILocation(line: 1433, column: 10, scope: !1754)
!1756 = !DILocation(line: 1433, column: 7, scope: !1518)
!1757 = !DILocation(line: 1434, column: 12, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1754, file: !2, line: 1433, column: 16)
!1759 = !DILocation(line: 1434, column: 5, scope: !1758)
!1760 = !DILocation(line: 1437, column: 3, scope: !1518)
!1761 = !DILocation(line: 1438, column: 1, scope: !1518)
!1762 = distinct !DISubprogram(name: "nghttp2_hd_deflate_hd", scope: !2, file: !2, line: 1491, type: !1763, scopeLine: 1493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1765)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!195, !716, !181, !188, !1347, !188}
!1765 = !{!1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773}
!1766 = !DILocalVariable(name: "deflater", arg: 1, scope: !1762, file: !2, line: 1491, type: !716)
!1767 = !DILocalVariable(name: "buf", arg: 2, scope: !1762, file: !2, line: 1491, type: !181)
!1768 = !DILocalVariable(name: "buflen", arg: 3, scope: !1762, file: !2, line: 1492, type: !188)
!1769 = !DILocalVariable(name: "nv", arg: 4, scope: !1762, file: !2, line: 1492, type: !1347)
!1770 = !DILocalVariable(name: "nvlen", arg: 5, scope: !1762, file: !2, line: 1493, type: !188)
!1771 = !DILocalVariable(name: "bufs", scope: !1762, file: !2, line: 1494, type: !1330)
!1772 = !DILocalVariable(name: "rv", scope: !1762, file: !2, line: 1495, type: !47)
!1773 = !DILocalVariable(name: "mem", scope: !1762, file: !2, line: 1496, type: !734)
!1774 = !DILocation(line: 1491, column: 52, scope: !1762)
!1775 = !DILocation(line: 1491, column: 71, scope: !1762)
!1776 = !DILocation(line: 1492, column: 38, scope: !1762)
!1777 = !DILocation(line: 1492, column: 64, scope: !1762)
!1778 = !DILocation(line: 1493, column: 38, scope: !1762)
!1779 = !DILocation(line: 1494, column: 3, scope: !1762)
!1780 = !DILocation(line: 1494, column: 16, scope: !1762)
!1781 = !DILocation(line: 1495, column: 3, scope: !1762)
!1782 = !DILocation(line: 1495, column: 7, scope: !1762)
!1783 = !DILocation(line: 1496, column: 3, scope: !1762)
!1784 = !DILocation(line: 1496, column: 16, scope: !1762)
!1785 = !DILocation(line: 1498, column: 9, scope: !1762)
!1786 = !DILocation(line: 1498, column: 19, scope: !1762)
!1787 = !DILocation(line: 1498, column: 23, scope: !1762)
!1788 = !DILocation(line: 1498, column: 7, scope: !1762)
!1789 = !DILocation(line: 1500, column: 38, scope: !1762)
!1790 = !DILocation(line: 1500, column: 43, scope: !1762)
!1791 = !DILocation(line: 1500, column: 51, scope: !1762)
!1792 = !DILocation(line: 1500, column: 8, scope: !1762)
!1793 = !DILocation(line: 1500, column: 6, scope: !1762)
!1794 = !DILocation(line: 1502, column: 7, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 1502, column: 7)
!1796 = !DILocation(line: 1502, column: 10, scope: !1795)
!1797 = !DILocation(line: 1502, column: 7, scope: !1762)
!1798 = !DILocation(line: 1503, column: 12, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !2, line: 1502, column: 16)
!1800 = !DILocation(line: 1503, column: 5, scope: !1799)
!1801 = !DILocation(line: 1506, column: 35, scope: !1762)
!1802 = !DILocation(line: 1506, column: 52, scope: !1762)
!1803 = !DILocation(line: 1506, column: 56, scope: !1762)
!1804 = !DILocation(line: 1506, column: 8, scope: !1762)
!1805 = !DILocation(line: 1506, column: 6, scope: !1762)
!1806 = !DILocation(line: 1508, column: 12, scope: !1762)
!1807 = !DILocation(line: 1508, column: 10, scope: !1762)
!1808 = !DILocation(line: 1510, column: 3, scope: !1762)
!1809 = !DILocation(line: 1512, column: 7, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 1512, column: 7)
!1811 = !DILocation(line: 1512, column: 10, scope: !1810)
!1812 = !DILocation(line: 1512, column: 7, scope: !1762)
!1813 = !DILocation(line: 1513, column: 5, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1810, file: !2, line: 1512, column: 39)
!1815 = !DILocation(line: 1516, column: 7, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1762, file: !2, line: 1516, column: 7)
!1817 = !DILocation(line: 1516, column: 10, scope: !1816)
!1818 = !DILocation(line: 1516, column: 7, scope: !1762)
!1819 = !DILocation(line: 1517, column: 12, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1816, file: !2, line: 1516, column: 16)
!1821 = !DILocation(line: 1517, column: 5, scope: !1820)
!1822 = !DILocation(line: 1520, column: 19, scope: !1762)
!1823 = !DILocation(line: 1520, column: 3, scope: !1762)
!1824 = !DILocation(line: 1521, column: 1, scope: !1762)
!1825 = !DISubprogram(name: "nghttp2_bufs_wrap_init", scope: !922, file: !922, line: 215, type: !1826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!47, !1329, !181, !188, !734}
!1828 = !DISubprogram(name: "nghttp2_bufs_len", scope: !922, file: !922, line: 410, type: !1829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!188, !1329}
!1831 = !DISubprogram(name: "nghttp2_bufs_wrap_free", scope: !922, file: !922, line: 241, type: !1832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !1329}
!1834 = distinct !DISubprogram(name: "nghttp2_hd_deflate_hd_vec", scope: !2, file: !2, line: 1523, type: !1835, scopeLine: 1525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1844)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!195, !716, !1837, !188, !1347, !188}
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1839)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_vec", file: !46, line: 460, baseType: !1840)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 451, size: 128, elements: !1841)
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1840, file: !46, line: 455, baseType: !181, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1840, file: !46, line: 459, baseType: !188, size: 64, offset: 64)
!1844 = !{!1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853}
!1845 = !DILocalVariable(name: "deflater", arg: 1, scope: !1834, file: !2, line: 1523, type: !716)
!1846 = !DILocalVariable(name: "vec", arg: 2, scope: !1834, file: !2, line: 1524, type: !1837)
!1847 = !DILocalVariable(name: "veclen", arg: 3, scope: !1834, file: !2, line: 1524, type: !188)
!1848 = !DILocalVariable(name: "nv", arg: 4, scope: !1834, file: !2, line: 1525, type: !1347)
!1849 = !DILocalVariable(name: "nvlen", arg: 5, scope: !1834, file: !2, line: 1525, type: !188)
!1850 = !DILocalVariable(name: "bufs", scope: !1834, file: !2, line: 1526, type: !1330)
!1851 = !DILocalVariable(name: "rv", scope: !1834, file: !2, line: 1527, type: !47)
!1852 = !DILocalVariable(name: "mem", scope: !1834, file: !2, line: 1528, type: !734)
!1853 = !DILocalVariable(name: "buflen", scope: !1834, file: !2, line: 1529, type: !188)
!1854 = !DILocation(line: 1523, column: 56, scope: !1834)
!1855 = !DILocation(line: 1524, column: 54, scope: !1834)
!1856 = !DILocation(line: 1524, column: 66, scope: !1834)
!1857 = !DILocation(line: 1525, column: 53, scope: !1834)
!1858 = !DILocation(line: 1525, column: 64, scope: !1834)
!1859 = !DILocation(line: 1526, column: 3, scope: !1834)
!1860 = !DILocation(line: 1526, column: 16, scope: !1834)
!1861 = !DILocation(line: 1527, column: 3, scope: !1834)
!1862 = !DILocation(line: 1527, column: 7, scope: !1834)
!1863 = !DILocation(line: 1528, column: 3, scope: !1834)
!1864 = !DILocation(line: 1528, column: 16, scope: !1834)
!1865 = !DILocation(line: 1529, column: 3, scope: !1834)
!1866 = !DILocation(line: 1529, column: 10, scope: !1834)
!1867 = !DILocation(line: 1531, column: 9, scope: !1834)
!1868 = !DILocation(line: 1531, column: 19, scope: !1834)
!1869 = !DILocation(line: 1531, column: 23, scope: !1834)
!1870 = !DILocation(line: 1531, column: 7, scope: !1834)
!1871 = !DILocation(line: 1533, column: 39, scope: !1834)
!1872 = !DILocation(line: 1533, column: 44, scope: !1834)
!1873 = !DILocation(line: 1533, column: 52, scope: !1834)
!1874 = !DILocation(line: 1533, column: 8, scope: !1834)
!1875 = !DILocation(line: 1533, column: 6, scope: !1834)
!1876 = !DILocation(line: 1535, column: 7, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1834, file: !2, line: 1535, column: 7)
!1878 = !DILocation(line: 1535, column: 10, scope: !1877)
!1879 = !DILocation(line: 1535, column: 7, scope: !1834)
!1880 = !DILocation(line: 1536, column: 12, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1877, file: !2, line: 1535, column: 16)
!1882 = !DILocation(line: 1536, column: 5, scope: !1881)
!1883 = !DILocation(line: 1539, column: 35, scope: !1834)
!1884 = !DILocation(line: 1539, column: 52, scope: !1834)
!1885 = !DILocation(line: 1539, column: 56, scope: !1834)
!1886 = !DILocation(line: 1539, column: 8, scope: !1834)
!1887 = !DILocation(line: 1539, column: 6, scope: !1834)
!1888 = !DILocation(line: 1541, column: 12, scope: !1834)
!1889 = !DILocation(line: 1541, column: 10, scope: !1834)
!1890 = !DILocation(line: 1543, column: 3, scope: !1834)
!1891 = !DILocation(line: 1545, column: 7, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1834, file: !2, line: 1545, column: 7)
!1893 = !DILocation(line: 1545, column: 10, scope: !1892)
!1894 = !DILocation(line: 1545, column: 7, scope: !1834)
!1895 = !DILocation(line: 1546, column: 5, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1892, file: !2, line: 1545, column: 39)
!1897 = !DILocation(line: 1549, column: 7, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1834, file: !2, line: 1549, column: 7)
!1899 = !DILocation(line: 1549, column: 10, scope: !1898)
!1900 = !DILocation(line: 1549, column: 7, scope: !1834)
!1901 = !DILocation(line: 1550, column: 12, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1898, file: !2, line: 1549, column: 16)
!1903 = !DILocation(line: 1550, column: 5, scope: !1902)
!1904 = !DILocation(line: 1553, column: 19, scope: !1834)
!1905 = !DILocation(line: 1553, column: 3, scope: !1834)
!1906 = !DILocation(line: 1554, column: 1, scope: !1834)
!1907 = !DISubprogram(name: "nghttp2_bufs_wrap_init2", scope: !922, file: !922, line: 234, type: !1908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!47, !1329, !1837, !188, !734}
!1910 = distinct !DISubprogram(name: "nghttp2_hd_deflate_bound", scope: !2, file: !2, line: 1556, type: !1911, scopeLine: 1557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1913)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!188, !716, !1347, !188}
!1913 = !{!1914, !1915, !1916, !1917, !1918}
!1914 = !DILocalVariable(name: "deflater", arg: 1, scope: !1910, file: !2, line: 1556, type: !716)
!1915 = !DILocalVariable(name: "nva", arg: 2, scope: !1910, file: !2, line: 1557, type: !1347)
!1916 = !DILocalVariable(name: "nvlen", arg: 3, scope: !1910, file: !2, line: 1557, type: !188)
!1917 = !DILocalVariable(name: "n", scope: !1910, file: !2, line: 1558, type: !188)
!1918 = !DILocalVariable(name: "i", scope: !1910, file: !2, line: 1559, type: !188)
!1919 = !DILocation(line: 1556, column: 54, scope: !1910)
!1920 = !DILocation(line: 1557, column: 51, scope: !1910)
!1921 = !DILocation(line: 1557, column: 63, scope: !1910)
!1922 = !DILocation(line: 1558, column: 3, scope: !1910)
!1923 = !DILocation(line: 1558, column: 10, scope: !1910)
!1924 = !DILocation(line: 1559, column: 3, scope: !1910)
!1925 = !DILocation(line: 1559, column: 10, scope: !1910)
!1926 = !DILocation(line: 1560, column: 9, scope: !1910)
!1927 = !DILocation(line: 1565, column: 5, scope: !1910)
!1928 = !DILocation(line: 1574, column: 16, scope: !1910)
!1929 = !DILocation(line: 1574, column: 14, scope: !1910)
!1930 = !DILocation(line: 1574, column: 5, scope: !1910)
!1931 = !DILocation(line: 1576, column: 10, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1910, file: !2, line: 1576, column: 3)
!1933 = !DILocation(line: 1576, column: 8, scope: !1932)
!1934 = !DILocation(line: 1576, column: 15, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1932, file: !2, line: 1576, column: 3)
!1936 = !DILocation(line: 1576, column: 19, scope: !1935)
!1937 = !DILocation(line: 1576, column: 17, scope: !1935)
!1938 = !DILocation(line: 1576, column: 3, scope: !1932)
!1939 = !DILocation(line: 1577, column: 10, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1935, file: !2, line: 1576, column: 31)
!1941 = !DILocation(line: 1577, column: 14, scope: !1940)
!1942 = !DILocation(line: 1577, column: 17, scope: !1940)
!1943 = !DILocation(line: 1577, column: 27, scope: !1940)
!1944 = !DILocation(line: 1577, column: 31, scope: !1940)
!1945 = !DILocation(line: 1577, column: 34, scope: !1940)
!1946 = !DILocation(line: 1577, column: 25, scope: !1940)
!1947 = !DILocation(line: 1577, column: 7, scope: !1940)
!1948 = !DILocation(line: 1578, column: 3, scope: !1940)
!1949 = !DILocation(line: 1576, column: 26, scope: !1935)
!1950 = !DILocation(line: 1576, column: 3, scope: !1935)
!1951 = distinct !{!1951, !1938, !1952, !1202}
!1952 = !DILocation(line: 1578, column: 3, scope: !1932)
!1953 = !DILocation(line: 1580, column: 10, scope: !1910)
!1954 = !DILocation(line: 1581, column: 1, scope: !1910)
!1955 = !DILocation(line: 1580, column: 3, scope: !1910)
!1956 = distinct !DISubprogram(name: "nghttp2_hd_deflate_new", scope: !2, file: !2, line: 1583, type: !1957, scopeLine: 1584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1960)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!47, !1959, !188}
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!1960 = !{!1961, !1962}
!1961 = !DILocalVariable(name: "deflater_ptr", arg: 1, scope: !1956, file: !2, line: 1583, type: !1959)
!1962 = !DILocalVariable(name: "deflate_hd_table_bufsize_max", arg: 2, scope: !1956, file: !2, line: 1584, type: !188)
!1963 = !DILocation(line: 1583, column: 50, scope: !1956)
!1964 = !DILocation(line: 1584, column: 35, scope: !1956)
!1965 = !DILocation(line: 1585, column: 34, scope: !1956)
!1966 = !DILocation(line: 1585, column: 48, scope: !1956)
!1967 = !DILocation(line: 1585, column: 10, scope: !1956)
!1968 = !DILocation(line: 1585, column: 3, scope: !1956)
!1969 = distinct !DISubprogram(name: "nghttp2_hd_deflate_new2", scope: !2, file: !2, line: 1589, type: !1970, scopeLine: 1591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1972)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!47, !1959, !188, !734}
!1972 = !{!1973, !1974, !1975, !1976, !1977}
!1973 = !DILocalVariable(name: "deflater_ptr", arg: 1, scope: !1969, file: !2, line: 1589, type: !1959)
!1974 = !DILocalVariable(name: "deflate_hd_table_bufsize_max", arg: 2, scope: !1969, file: !2, line: 1590, type: !188)
!1975 = !DILocalVariable(name: "mem", arg: 3, scope: !1969, file: !2, line: 1591, type: !734)
!1976 = !DILocalVariable(name: "rv", scope: !1969, file: !2, line: 1592, type: !47)
!1977 = !DILocalVariable(name: "deflater", scope: !1969, file: !2, line: 1593, type: !716)
!1978 = !DILocation(line: 1589, column: 51, scope: !1969)
!1979 = !DILocation(line: 1590, column: 36, scope: !1969)
!1980 = !DILocation(line: 1591, column: 42, scope: !1969)
!1981 = !DILocation(line: 1592, column: 3, scope: !1969)
!1982 = !DILocation(line: 1592, column: 7, scope: !1969)
!1983 = !DILocation(line: 1593, column: 3, scope: !1969)
!1984 = !DILocation(line: 1593, column: 24, scope: !1969)
!1985 = !DILocation(line: 1595, column: 7, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1969, file: !2, line: 1595, column: 7)
!1987 = !DILocation(line: 1595, column: 11, scope: !1986)
!1988 = !DILocation(line: 1595, column: 7, scope: !1969)
!1989 = !DILocation(line: 1596, column: 11, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1986, file: !2, line: 1595, column: 20)
!1991 = !DILocation(line: 1596, column: 9, scope: !1990)
!1992 = !DILocation(line: 1597, column: 3, scope: !1990)
!1993 = !DILocation(line: 1599, column: 33, scope: !1969)
!1994 = !DILocation(line: 1599, column: 14, scope: !1969)
!1995 = !DILocation(line: 1599, column: 12, scope: !1969)
!1996 = !DILocation(line: 1601, column: 7, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1969, file: !2, line: 1601, column: 7)
!1998 = !DILocation(line: 1601, column: 16, scope: !1997)
!1999 = !DILocation(line: 1601, column: 7, scope: !1969)
!2000 = !DILocation(line: 1602, column: 5, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1997, file: !2, line: 1601, column: 25)
!2002 = !DILocation(line: 1605, column: 33, scope: !1969)
!2003 = !DILocation(line: 1605, column: 43, scope: !1969)
!2004 = !DILocation(line: 1605, column: 73, scope: !1969)
!2005 = !DILocation(line: 1605, column: 8, scope: !1969)
!2006 = !DILocation(line: 1605, column: 6, scope: !1969)
!2007 = !DILocation(line: 1607, column: 7, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1969, file: !2, line: 1607, column: 7)
!2009 = !DILocation(line: 1607, column: 10, scope: !2008)
!2010 = !DILocation(line: 1607, column: 7, scope: !1969)
!2011 = !DILocation(line: 1608, column: 22, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2008, file: !2, line: 1607, column: 16)
!2013 = !DILocation(line: 1608, column: 27, scope: !2012)
!2014 = !DILocation(line: 1608, column: 5, scope: !2012)
!2015 = !DILocation(line: 1610, column: 12, scope: !2012)
!2016 = !DILocation(line: 1610, column: 5, scope: !2012)
!2017 = !DILocation(line: 1613, column: 19, scope: !1969)
!2018 = !DILocation(line: 1613, column: 4, scope: !1969)
!2019 = !DILocation(line: 1613, column: 17, scope: !1969)
!2020 = !DILocation(line: 1615, column: 3, scope: !1969)
!2021 = !DILocation(line: 1616, column: 1, scope: !1969)
!2022 = !DISubprogram(name: "nghttp2_mem_default", scope: !2023, file: !2023, line: 35, type: !2024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2023 = !DIFile(filename: "./nghttp2_mem.h", directory: "/local-ssd/nghttp2-ygk7gapsiutjtu4stb5i6ycvvkuh4eel-build/aidengro/spack-stage-nghttp2-1.57.0-ygk7gapsiutjtu4stb5i6ycvvkuh4eel/spack-src/lib", checksumkind: CSK_MD5, checksum: "1dbe95fe1ea1cfe0a1d6dc1acee4e76d")
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!734}
!2026 = !DISubprogram(name: "nghttp2_mem_malloc", scope: !2023, file: !2023, line: 39, type: !2027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!174, !734, !188}
!2029 = !DISubprogram(name: "nghttp2_mem_free", scope: !2023, file: !2023, line: 40, type: !2030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !734, !174}
!2032 = distinct !DISubprogram(name: "nghttp2_hd_deflate_del", scope: !2, file: !2, line: 1618, type: !1043, scopeLine: 1618, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2033)
!2033 = !{!2034, !2035}
!2034 = !DILocalVariable(name: "deflater", arg: 1, scope: !2032, file: !2, line: 1618, type: !716)
!2035 = !DILocalVariable(name: "mem", scope: !2032, file: !2, line: 1619, type: !734)
!2036 = !DILocation(line: 1618, column: 50, scope: !2032)
!2037 = !DILocation(line: 1619, column: 3, scope: !2032)
!2038 = !DILocation(line: 1619, column: 16, scope: !2032)
!2039 = !DILocation(line: 1621, column: 9, scope: !2032)
!2040 = !DILocation(line: 1621, column: 19, scope: !2032)
!2041 = !DILocation(line: 1621, column: 23, scope: !2032)
!2042 = !DILocation(line: 1621, column: 7, scope: !2032)
!2043 = !DILocation(line: 1623, column: 27, scope: !2032)
!2044 = !DILocation(line: 1623, column: 3, scope: !2032)
!2045 = !DILocation(line: 1625, column: 20, scope: !2032)
!2046 = !DILocation(line: 1625, column: 25, scope: !2032)
!2047 = !DILocation(line: 1625, column: 3, scope: !2032)
!2048 = !DILocation(line: 1626, column: 1, scope: !2032)
!2049 = distinct !DISubprogram(name: "nghttp2_hd_inflate_hd", scope: !2, file: !2, line: 1836, type: !2050, scopeLine: 1838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2054)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!195, !906, !2052, !2053, !181, !188, !47}
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!2054 = !{!2055, !2056, !2057, !2058, !2059, !2060}
!2055 = !DILocalVariable(name: "inflater", arg: 1, scope: !2049, file: !2, line: 1836, type: !906)
!2056 = !DILocalVariable(name: "nv_out", arg: 2, scope: !2049, file: !2, line: 1836, type: !2052)
!2057 = !DILocalVariable(name: "inflate_flags", arg: 3, scope: !2049, file: !2, line: 1837, type: !2053)
!2058 = !DILocalVariable(name: "in", arg: 4, scope: !2049, file: !2, line: 1837, type: !181)
!2059 = !DILocalVariable(name: "inlen", arg: 5, scope: !2049, file: !2, line: 1837, type: !188)
!2060 = !DILocalVariable(name: "in_final", arg: 6, scope: !2049, file: !2, line: 1838, type: !47)
!2061 = !DILocation(line: 1836, column: 52, scope: !2049)
!2062 = !DILocation(line: 1836, column: 74, scope: !2049)
!2063 = !DILocation(line: 1837, column: 36, scope: !2049)
!2064 = !DILocation(line: 1837, column: 60, scope: !2049)
!2065 = !DILocation(line: 1837, column: 71, scope: !2049)
!2066 = !DILocation(line: 1838, column: 35, scope: !2049)
!2067 = !DILocation(line: 1839, column: 33, scope: !2049)
!2068 = !DILocation(line: 1839, column: 43, scope: !2049)
!2069 = !DILocation(line: 1839, column: 51, scope: !2049)
!2070 = !DILocation(line: 1839, column: 66, scope: !2049)
!2071 = !DILocation(line: 1839, column: 70, scope: !2049)
!2072 = !DILocation(line: 1840, column: 33, scope: !2049)
!2073 = !DILocation(line: 1839, column: 10, scope: !2049)
!2074 = !DILocation(line: 1839, column: 3, scope: !2049)
!2075 = distinct !DISubprogram(name: "nghttp2_hd_inflate_hd2", scope: !2, file: !2, line: 1843, type: !2076, scopeLine: 1845, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2080)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!195, !906, !2052, !2053, !2078, !188, !47}
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!2080 = !{!2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088}
!2081 = !DILocalVariable(name: "inflater", arg: 1, scope: !2075, file: !2, line: 1843, type: !906)
!2082 = !DILocalVariable(name: "nv_out", arg: 2, scope: !2075, file: !2, line: 1844, type: !2052)
!2083 = !DILocalVariable(name: "inflate_flags", arg: 3, scope: !2075, file: !2, line: 1844, type: !2053)
!2084 = !DILocalVariable(name: "in", arg: 4, scope: !2075, file: !2, line: 1845, type: !2078)
!2085 = !DILocalVariable(name: "inlen", arg: 5, scope: !2075, file: !2, line: 1845, type: !188)
!2086 = !DILocalVariable(name: "in_final", arg: 6, scope: !2075, file: !2, line: 1845, type: !47)
!2087 = !DILocalVariable(name: "rv", scope: !2075, file: !2, line: 1846, type: !195)
!2088 = !DILocalVariable(name: "hd_nv", scope: !2075, file: !2, line: 1847, type: !597)
!2089 = !DILocation(line: 1843, column: 53, scope: !2075)
!2090 = !DILocation(line: 1844, column: 44, scope: !2075)
!2091 = !DILocation(line: 1844, column: 57, scope: !2075)
!2092 = !DILocation(line: 1845, column: 47, scope: !2075)
!2093 = !DILocation(line: 1845, column: 58, scope: !2075)
!2094 = !DILocation(line: 1845, column: 69, scope: !2075)
!2095 = !DILocation(line: 1846, column: 3, scope: !2075)
!2096 = !DILocation(line: 1846, column: 11, scope: !2075)
!2097 = !DILocation(line: 1847, column: 3, scope: !2075)
!2098 = !DILocation(line: 1847, column: 17, scope: !2075)
!2099 = !DILocation(line: 1849, column: 33, scope: !2075)
!2100 = !DILocation(line: 1849, column: 51, scope: !2075)
!2101 = !DILocation(line: 1849, column: 66, scope: !2075)
!2102 = !DILocation(line: 1849, column: 70, scope: !2075)
!2103 = !DILocation(line: 1850, column: 33, scope: !2075)
!2104 = !DILocation(line: 1849, column: 8, scope: !2075)
!2105 = !DILocation(line: 1849, column: 6, scope: !2075)
!2106 = !DILocation(line: 1852, column: 7, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2075, file: !2, line: 1852, column: 7)
!2108 = !DILocation(line: 1852, column: 10, scope: !2107)
!2109 = !DILocation(line: 1852, column: 7, scope: !2075)
!2110 = !DILocation(line: 1853, column: 12, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1852, column: 15)
!2112 = !DILocation(line: 1853, column: 5, scope: !2111)
!2113 = !DILocation(line: 1856, column: 8, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2075, file: !2, line: 1856, column: 7)
!2115 = !DILocation(line: 1856, column: 7, scope: !2114)
!2116 = !DILocation(line: 1856, column: 22, scope: !2114)
!2117 = !DILocation(line: 1856, column: 7, scope: !2075)
!2118 = !DILocation(line: 1857, column: 26, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2114, file: !2, line: 1856, column: 49)
!2120 = !DILocation(line: 1857, column: 32, scope: !2119)
!2121 = !DILocation(line: 1857, column: 5, scope: !2119)
!2122 = !DILocation(line: 1857, column: 13, scope: !2119)
!2123 = !DILocation(line: 1857, column: 18, scope: !2119)
!2124 = !DILocation(line: 1858, column: 29, scope: !2119)
!2125 = !DILocation(line: 1858, column: 35, scope: !2119)
!2126 = !DILocation(line: 1858, column: 5, scope: !2119)
!2127 = !DILocation(line: 1858, column: 13, scope: !2119)
!2128 = !DILocation(line: 1858, column: 21, scope: !2119)
!2129 = !DILocation(line: 1860, column: 27, scope: !2119)
!2130 = !DILocation(line: 1860, column: 34, scope: !2119)
!2131 = !DILocation(line: 1860, column: 5, scope: !2119)
!2132 = !DILocation(line: 1860, column: 13, scope: !2119)
!2133 = !DILocation(line: 1860, column: 19, scope: !2119)
!2134 = !DILocation(line: 1861, column: 30, scope: !2119)
!2135 = !DILocation(line: 1861, column: 37, scope: !2119)
!2136 = !DILocation(line: 1861, column: 5, scope: !2119)
!2137 = !DILocation(line: 1861, column: 13, scope: !2119)
!2138 = !DILocation(line: 1861, column: 22, scope: !2119)
!2139 = !DILocation(line: 1863, column: 27, scope: !2119)
!2140 = !DILocation(line: 1863, column: 5, scope: !2119)
!2141 = !DILocation(line: 1863, column: 13, scope: !2119)
!2142 = !DILocation(line: 1863, column: 19, scope: !2119)
!2143 = !DILocation(line: 1864, column: 3, scope: !2119)
!2144 = !DILocation(line: 1866, column: 10, scope: !2075)
!2145 = !DILocation(line: 1866, column: 3, scope: !2075)
!2146 = !DILocation(line: 1867, column: 1, scope: !2075)
!2147 = distinct !DISubprogram(name: "nghttp2_hd_inflate_hd_nv", scope: !2, file: !2, line: 1869, type: !2148, scopeLine: 1872, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2150)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!195, !906, !608, !2053, !2078, !188, !47}
!2150 = !{!2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2169, !2170}
!2151 = !DILocalVariable(name: "inflater", arg: 1, scope: !2147, file: !2, line: 1869, type: !906)
!2152 = !DILocalVariable(name: "nv_out", arg: 2, scope: !2147, file: !2, line: 1870, type: !608)
!2153 = !DILocalVariable(name: "inflate_flags", arg: 3, scope: !2147, file: !2, line: 1870, type: !2053)
!2154 = !DILocalVariable(name: "in", arg: 4, scope: !2147, file: !2, line: 1871, type: !2078)
!2155 = !DILocalVariable(name: "inlen", arg: 5, scope: !2147, file: !2, line: 1871, type: !188)
!2156 = !DILocalVariable(name: "in_final", arg: 6, scope: !2147, file: !2, line: 1872, type: !47)
!2157 = !DILocalVariable(name: "rv", scope: !2147, file: !2, line: 1873, type: !195)
!2158 = !DILocalVariable(name: "first", scope: !2147, file: !2, line: 1874, type: !2078)
!2159 = !DILocalVariable(name: "last", scope: !2147, file: !2, line: 1875, type: !2078)
!2160 = !DILocalVariable(name: "rfin", scope: !2147, file: !2, line: 1876, type: !47)
!2161 = !DILocalVariable(name: "busy", scope: !2147, file: !2, line: 1877, type: !47)
!2162 = !DILocalVariable(name: "mem", scope: !2147, file: !2, line: 1878, type: !734)
!2163 = !DILocalVariable(name: "prefixlen", scope: !2164, file: !2, line: 1958, type: !188)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 1957, column: 39)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !2, line: 1891, column: 30)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !2, line: 1889, column: 31)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !2, line: 1889, column: 3)
!2168 = distinct !DILexicalBlock(scope: !2147, file: !2, line: 1889, column: 3)
!2169 = !DILabel(scope: !2147, name: "almost_ok", file: !2, line: 2221)
!2170 = !DILabel(scope: !2147, name: "fail", file: !2, line: 2231)
!2171 = !DILocation(line: 1869, column: 55, scope: !2147)
!2172 = !DILocation(line: 1870, column: 49, scope: !2147)
!2173 = !DILocation(line: 1870, column: 62, scope: !2147)
!2174 = !DILocation(line: 1871, column: 49, scope: !2147)
!2175 = !DILocation(line: 1871, column: 60, scope: !2147)
!2176 = !DILocation(line: 1872, column: 38, scope: !2147)
!2177 = !DILocation(line: 1873, column: 3, scope: !2147)
!2178 = !DILocation(line: 1873, column: 11, scope: !2147)
!2179 = !DILocation(line: 1874, column: 3, scope: !2147)
!2180 = !DILocation(line: 1874, column: 18, scope: !2147)
!2181 = !DILocation(line: 1874, column: 26, scope: !2147)
!2182 = !DILocation(line: 1875, column: 3, scope: !2147)
!2183 = !DILocation(line: 1875, column: 18, scope: !2147)
!2184 = !DILocation(line: 1875, column: 25, scope: !2147)
!2185 = !DILocation(line: 1875, column: 30, scope: !2147)
!2186 = !DILocation(line: 1875, column: 28, scope: !2147)
!2187 = !DILocation(line: 1876, column: 3, scope: !2147)
!2188 = !DILocation(line: 1876, column: 7, scope: !2147)
!2189 = !DILocation(line: 1877, column: 3, scope: !2147)
!2190 = !DILocation(line: 1877, column: 7, scope: !2147)
!2191 = !DILocation(line: 1878, column: 3, scope: !2147)
!2192 = !DILocation(line: 1878, column: 16, scope: !2147)
!2193 = !DILocation(line: 1880, column: 9, scope: !2147)
!2194 = !DILocation(line: 1880, column: 19, scope: !2147)
!2195 = !DILocation(line: 1880, column: 23, scope: !2147)
!2196 = !{!971, !613, i64 32}
!2197 = !DILocation(line: 1880, column: 7, scope: !2147)
!2198 = !DILocation(line: 1882, column: 7, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2147, file: !2, line: 1882, column: 7)
!2200 = !DILocation(line: 1882, column: 17, scope: !2199)
!2201 = !DILocation(line: 1882, column: 21, scope: !2199)
!2202 = !{!971, !614, i64 60}
!2203 = !DILocation(line: 1882, column: 7, scope: !2147)
!2204 = !DILocation(line: 1883, column: 5, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2199, file: !2, line: 1882, column: 26)
!2206 = !DILocation(line: 1886, column: 3, scope: !2147)
!2207 = !DILocation(line: 1886, column: 3, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2147, file: !2, line: 1886, column: 3)
!2209 = !DILocation(line: 1887, column: 24, scope: !2147)
!2210 = !DILocation(line: 1887, column: 3, scope: !2147)
!2211 = !DILocation(line: 1888, column: 4, scope: !2147)
!2212 = !DILocation(line: 1888, column: 18, scope: !2147)
!2213 = !DILocation(line: 1889, column: 3, scope: !2147)
!2214 = !DILocation(line: 1889, column: 10, scope: !2167)
!2215 = !DILocation(line: 1889, column: 16, scope: !2167)
!2216 = !DILocation(line: 1889, column: 13, scope: !2167)
!2217 = !DILocation(line: 1889, column: 21, scope: !2167)
!2218 = !DILocation(line: 1889, column: 24, scope: !2167)
!2219 = !DILocation(line: 1889, column: 3, scope: !2168)
!2220 = !DILocation(line: 1890, column: 10, scope: !2166)
!2221 = !DILocation(line: 1891, column: 13, scope: !2166)
!2222 = !DILocation(line: 1891, column: 23, scope: !2166)
!2223 = !DILocation(line: 1891, column: 5, scope: !2166)
!2224 = !DILocation(line: 1893, column: 13, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 1893, column: 11)
!2226 = !DILocation(line: 1893, column: 12, scope: !2225)
!2227 = !DILocation(line: 1893, column: 16, scope: !2225)
!2228 = !DILocation(line: 1893, column: 25, scope: !2225)
!2229 = !DILocation(line: 1893, column: 11, scope: !2165)
!2230 = !DILocation(line: 1894, column: 9, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2225, file: !2, line: 1893, column: 35)
!2232 = !DILocation(line: 1894, column: 9, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2231, file: !2, line: 1894, column: 9)
!2234 = !DILocation(line: 1897, column: 12, scope: !2231)
!2235 = !DILocation(line: 1898, column: 9, scope: !2231)
!2236 = !DILocation(line: 1893, column: 28, scope: !2225)
!2237 = !DILocation(line: 1903, column: 13, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 1903, column: 11)
!2239 = !DILocation(line: 1903, column: 12, scope: !2238)
!2240 = !DILocation(line: 1903, column: 16, scope: !2238)
!2241 = !DILocation(line: 1903, column: 25, scope: !2238)
!2242 = !DILocation(line: 1903, column: 11, scope: !2165)
!2243 = !DILocation(line: 1904, column: 9, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2238, file: !2, line: 1903, column: 35)
!2245 = !DILocation(line: 1904, column: 9, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2244, file: !2, line: 1904, column: 9)
!2247 = !DILocation(line: 1905, column: 13, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2244, file: !2, line: 1905, column: 13)
!2249 = !DILocation(line: 1905, column: 23, scope: !2248)
!2250 = !DILocation(line: 1905, column: 29, scope: !2248)
!2251 = !DILocation(line: 1905, column: 13, scope: !2244)
!2252 = !DILocation(line: 1906, column: 11, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2248, file: !2, line: 1905, column: 57)
!2254 = !DILocation(line: 1906, column: 11, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2253, file: !2, line: 1906, column: 11)
!2256 = !DILocation(line: 1908, column: 14, scope: !2253)
!2257 = !DILocation(line: 1909, column: 11, scope: !2253)
!2258 = !DILocation(line: 1911, column: 9, scope: !2244)
!2259 = !DILocation(line: 1911, column: 19, scope: !2244)
!2260 = !DILocation(line: 1911, column: 26, scope: !2244)
!2261 = !DILocation(line: 1912, column: 9, scope: !2244)
!2262 = !DILocation(line: 1912, column: 19, scope: !2244)
!2263 = !DILocation(line: 1912, column: 25, scope: !2244)
!2264 = !DILocation(line: 1913, column: 7, scope: !2244)
!2265 = !DILocation(line: 1913, column: 19, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2238, file: !2, line: 1913, column: 18)
!2267 = !DILocation(line: 1913, column: 18, scope: !2266)
!2268 = !DILocation(line: 1913, column: 22, scope: !2266)
!2269 = !DILocation(line: 1913, column: 18, scope: !2238)
!2270 = !DILocation(line: 1914, column: 9, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2266, file: !2, line: 1913, column: 31)
!2272 = !DILocation(line: 1914, column: 9, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2271, file: !2, line: 1914, column: 9)
!2274 = !DILocation(line: 1915, column: 9, scope: !2271)
!2275 = !DILocation(line: 1915, column: 19, scope: !2271)
!2276 = !DILocation(line: 1915, column: 26, scope: !2271)
!2277 = !DILocation(line: 1916, column: 9, scope: !2271)
!2278 = !DILocation(line: 1916, column: 19, scope: !2271)
!2279 = !DILocation(line: 1916, column: 25, scope: !2271)
!2280 = !DILocation(line: 1917, column: 7, scope: !2271)
!2281 = !DILocation(line: 1918, column: 14, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !2, line: 1918, column: 13)
!2283 = distinct !DILexicalBlock(scope: !2266, file: !2, line: 1917, column: 14)
!2284 = !DILocation(line: 1918, column: 13, scope: !2282)
!2285 = !DILocation(line: 1918, column: 17, scope: !2282)
!2286 = !DILocation(line: 1918, column: 26, scope: !2282)
!2287 = !DILocation(line: 1918, column: 30, scope: !2282)
!2288 = !DILocation(line: 1918, column: 29, scope: !2282)
!2289 = !DILocation(line: 1918, column: 33, scope: !2282)
!2290 = !DILocation(line: 1918, column: 38, scope: !2282)
!2291 = !DILocation(line: 1918, column: 42, scope: !2282)
!2292 = !DILocation(line: 1918, column: 41, scope: !2282)
!2293 = !DILocation(line: 1918, column: 45, scope: !2282)
!2294 = !DILocation(line: 1918, column: 13, scope: !2283)
!2295 = !DILocation(line: 1919, column: 11, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2282, file: !2, line: 1918, column: 55)
!2297 = !DILocation(line: 1919, column: 11, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2296, file: !2, line: 1919, column: 11)
!2299 = !DILocation(line: 1920, column: 11, scope: !2296)
!2300 = !DILocation(line: 1920, column: 21, scope: !2296)
!2301 = !DILocation(line: 1920, column: 28, scope: !2296)
!2302 = !DILocation(line: 1921, column: 11, scope: !2296)
!2303 = !DILocation(line: 1921, column: 21, scope: !2296)
!2304 = !DILocation(line: 1921, column: 27, scope: !2296)
!2305 = !DILocation(line: 1922, column: 9, scope: !2296)
!2306 = !DILocation(line: 1923, column: 11, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2282, file: !2, line: 1922, column: 16)
!2308 = !DILocation(line: 1923, column: 11, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2307, file: !2, line: 1923, column: 11)
!2310 = !DILocation(line: 1924, column: 11, scope: !2307)
!2311 = !DILocation(line: 1924, column: 21, scope: !2307)
!2312 = !DILocation(line: 1924, column: 28, scope: !2307)
!2313 = !DILocation(line: 1925, column: 11, scope: !2307)
!2314 = !DILocation(line: 1925, column: 21, scope: !2307)
!2315 = !DILocation(line: 1925, column: 27, scope: !2307)
!2316 = !DILocation(line: 1927, column: 38, scope: !2283)
!2317 = !DILocation(line: 1927, column: 37, scope: !2283)
!2318 = !DILocation(line: 1927, column: 41, scope: !2283)
!2319 = !DILocation(line: 1927, column: 49, scope: !2283)
!2320 = !DILocation(line: 1927, column: 36, scope: !2283)
!2321 = !DILocation(line: 1927, column: 9, scope: !2283)
!2322 = !DILocation(line: 1927, column: 19, scope: !2283)
!2323 = !DILocation(line: 1927, column: 34, scope: !2283)
!2324 = !DILocation(line: 1928, column: 32, scope: !2283)
!2325 = !DILocation(line: 1928, column: 31, scope: !2283)
!2326 = !DILocation(line: 1928, column: 35, scope: !2283)
!2327 = !DILocation(line: 1928, column: 44, scope: !2283)
!2328 = !DILocation(line: 1928, column: 30, scope: !2283)
!2329 = !DILocation(line: 1928, column: 9, scope: !2283)
!2330 = !DILocation(line: 1928, column: 19, scope: !2283)
!2331 = !DILocation(line: 1928, column: 28, scope: !2283)
!2332 = !DILocation(line: 1929, column: 9, scope: !2283)
!2333 = !DILocation(line: 1929, column: 9, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2283, file: !2, line: 1929, column: 9)
!2335 = !DILocation(line: 1931, column: 13, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2283, file: !2, line: 1931, column: 13)
!2337 = !DILocation(line: 1931, column: 23, scope: !2336)
!2338 = !DILocation(line: 1931, column: 30, scope: !2336)
!2339 = !DILocation(line: 1931, column: 13, scope: !2283)
!2340 = !DILocation(line: 1932, column: 11, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2336, file: !2, line: 1931, column: 60)
!2342 = !DILocation(line: 1933, column: 9, scope: !2341)
!2343 = !DILocation(line: 1935, column: 7, scope: !2165)
!2344 = !DILocation(line: 1935, column: 17, scope: !2165)
!2345 = !DILocation(line: 1935, column: 22, scope: !2165)
!2346 = !DILocation(line: 1936, column: 7, scope: !2165)
!2347 = !DILocation(line: 1936, column: 17, scope: !2165)
!2348 = !DILocation(line: 1936, column: 23, scope: !2165)
!2349 = !DILocation(line: 1937, column: 7, scope: !2165)
!2350 = !DILocation(line: 1939, column: 12, scope: !2165)
!2351 = !DILocation(line: 1941, column: 11, scope: !2165)
!2352 = !DILocation(line: 1941, column: 28, scope: !2165)
!2353 = !DILocation(line: 1941, column: 32, scope: !2165)
!2354 = !DILocation(line: 1942, column: 11, scope: !2165)
!2355 = !DILocation(line: 1940, column: 12, scope: !2165)
!2356 = !DILocation(line: 1940, column: 10, scope: !2165)
!2357 = !DILocation(line: 1944, column: 11, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 1944, column: 11)
!2359 = !DILocation(line: 1944, column: 14, scope: !2358)
!2360 = !DILocation(line: 1944, column: 11, scope: !2165)
!2361 = !DILocation(line: 1945, column: 9, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2358, file: !2, line: 1944, column: 19)
!2363 = !DILocation(line: 1947, column: 13, scope: !2165)
!2364 = !DILocation(line: 1947, column: 10, scope: !2165)
!2365 = !DILocation(line: 1948, column: 12, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 1948, column: 11)
!2367 = !DILocation(line: 1948, column: 11, scope: !2165)
!2368 = !DILocation(line: 1949, column: 9, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2366, file: !2, line: 1948, column: 18)
!2370 = !DILocation(line: 1951, column: 7, scope: !2165)
!2371 = !DILocation(line: 1951, column: 7, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 1951, column: 7)
!2373 = !DILocation(line: 1952, column: 7, scope: !2165)
!2374 = !DILocation(line: 1952, column: 17, scope: !2165)
!2375 = !DILocation(line: 1952, column: 42, scope: !2165)
!2376 = !DILocation(line: 1953, column: 44, scope: !2165)
!2377 = !DILocation(line: 1953, column: 54, scope: !2165)
!2378 = !DILocation(line: 1953, column: 7, scope: !2165)
!2379 = !DILocation(line: 1953, column: 17, scope: !2165)
!2380 = !DILocation(line: 1953, column: 21, scope: !2165)
!2381 = !DILocation(line: 1953, column: 42, scope: !2165)
!2382 = !DILocation(line: 1954, column: 37, scope: !2165)
!2383 = !DILocation(line: 1954, column: 47, scope: !2165)
!2384 = !DILocation(line: 1954, column: 7, scope: !2165)
!2385 = !DILocation(line: 1955, column: 7, scope: !2165)
!2386 = !DILocation(line: 1955, column: 17, scope: !2165)
!2387 = !DILocation(line: 1955, column: 23, scope: !2165)
!2388 = !DILocation(line: 1956, column: 7, scope: !2165)
!2389 = !DILocation(line: 1958, column: 7, scope: !2164)
!2390 = !DILocation(line: 1958, column: 14, scope: !2164)
!2391 = !DILocation(line: 1960, column: 11, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 1960, column: 11)
!2393 = !DILocation(line: 1960, column: 21, scope: !2392)
!2394 = !DILocation(line: 1960, column: 28, scope: !2392)
!2395 = !DILocation(line: 1960, column: 11, scope: !2164)
!2396 = !DILocation(line: 1961, column: 19, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2392, file: !2, line: 1960, column: 58)
!2398 = !DILocation(line: 1962, column: 7, scope: !2397)
!2399 = !DILocation(line: 1962, column: 18, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2392, file: !2, line: 1962, column: 18)
!2401 = !DILocation(line: 1962, column: 28, scope: !2400)
!2402 = !DILocation(line: 1962, column: 18, scope: !2392)
!2403 = !DILocation(line: 1963, column: 19, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2400, file: !2, line: 1962, column: 44)
!2405 = !DILocation(line: 1964, column: 7, scope: !2404)
!2406 = !DILocation(line: 1965, column: 19, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2400, file: !2, line: 1964, column: 14)
!2408 = !DILocation(line: 1968, column: 12, scope: !2164)
!2409 = !DILocation(line: 1969, column: 32, scope: !2164)
!2410 = !DILocation(line: 1969, column: 49, scope: !2164)
!2411 = !DILocation(line: 1969, column: 53, scope: !2164)
!2412 = !DILocation(line: 1969, column: 59, scope: !2164)
!2413 = !DILocation(line: 1970, column: 47, scope: !2164)
!2414 = !DILocation(line: 1970, column: 57, scope: !2164)
!2415 = !DILocation(line: 1970, column: 32, scope: !2164)
!2416 = !DILocation(line: 1969, column: 12, scope: !2164)
!2417 = !DILocation(line: 1969, column: 10, scope: !2164)
!2418 = !DILocation(line: 1971, column: 11, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 1971, column: 11)
!2420 = !DILocation(line: 1971, column: 14, scope: !2419)
!2421 = !DILocation(line: 1971, column: 11, scope: !2164)
!2422 = !DILocation(line: 1972, column: 9, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2419, file: !2, line: 1971, column: 19)
!2424 = !DILocation(line: 1975, column: 13, scope: !2164)
!2425 = !DILocation(line: 1975, column: 10, scope: !2164)
!2426 = !DILocation(line: 1977, column: 12, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 1977, column: 11)
!2428 = !DILocation(line: 1977, column: 11, scope: !2164)
!2429 = !DILocation(line: 1978, column: 9, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2427, file: !2, line: 1977, column: 18)
!2431 = !DILocation(line: 1981, column: 11, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 1981, column: 11)
!2433 = !DILocation(line: 1981, column: 21, scope: !2432)
!2434 = !DILocation(line: 1981, column: 26, scope: !2432)
!2435 = !DILocation(line: 1981, column: 11, scope: !2164)
!2436 = !DILocation(line: 1982, column: 12, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2432, file: !2, line: 1981, column: 32)
!2438 = !DILocation(line: 1983, column: 9, scope: !2437)
!2439 = !DILocation(line: 1986, column: 7, scope: !2164)
!2440 = !DILocation(line: 1986, column: 7, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 1986, column: 7)
!2442 = !DILocation(line: 1987, column: 11, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 1987, column: 11)
!2444 = !DILocation(line: 1987, column: 21, scope: !2443)
!2445 = !DILocation(line: 1987, column: 28, scope: !2443)
!2446 = !DILocation(line: 1987, column: 11, scope: !2164)
!2447 = !DILocation(line: 1988, column: 27, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2443, file: !2, line: 1987, column: 58)
!2449 = !DILocation(line: 1988, column: 37, scope: !2448)
!2450 = !DILocation(line: 1988, column: 9, scope: !2448)
!2451 = !DILocation(line: 1988, column: 19, scope: !2448)
!2452 = !DILocation(line: 1988, column: 25, scope: !2448)
!2453 = !DILocation(line: 1989, column: 11, scope: !2448)
!2454 = !DILocation(line: 1989, column: 21, scope: !2448)
!2455 = !DILocation(line: 1989, column: 9, scope: !2448)
!2456 = !DILocation(line: 1991, column: 35, scope: !2448)
!2457 = !DILocation(line: 1991, column: 45, scope: !2448)
!2458 = !DILocation(line: 1991, column: 9, scope: !2448)
!2459 = !DILocation(line: 1993, column: 9, scope: !2448)
!2460 = !DILocation(line: 1993, column: 19, scope: !2448)
!2461 = !DILocation(line: 1993, column: 25, scope: !2448)
!2462 = !DILocation(line: 1994, column: 10, scope: !2448)
!2463 = !DILocation(line: 1994, column: 24, scope: !2448)
!2464 = !DILocation(line: 1995, column: 26, scope: !2448)
!2465 = !DILocation(line: 1995, column: 31, scope: !2448)
!2466 = !DILocation(line: 1995, column: 29, scope: !2448)
!2467 = !DILocation(line: 1995, column: 9, scope: !2448)
!2468 = !DILocation(line: 1997, column: 27, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2443, file: !2, line: 1996, column: 14)
!2470 = !DILocation(line: 1997, column: 37, scope: !2469)
!2471 = !DILocation(line: 1997, column: 9, scope: !2469)
!2472 = !DILocation(line: 1997, column: 19, scope: !2469)
!2473 = !DILocation(line: 1997, column: 25, scope: !2469)
!2474 = !DILocation(line: 1998, column: 11, scope: !2469)
!2475 = !DILocation(line: 1998, column: 21, scope: !2469)
!2476 = !DILocation(line: 1998, column: 9, scope: !2469)
!2477 = !DILocation(line: 2000, column: 9, scope: !2469)
!2478 = !DILocation(line: 2000, column: 19, scope: !2469)
!2479 = !DILocation(line: 2000, column: 25, scope: !2469)
!2480 = !DILocation(line: 2002, column: 7, scope: !2164)
!2481 = !DILocation(line: 2003, column: 5, scope: !2165)
!2482 = !DILocation(line: 2005, column: 38, scope: !2165)
!2483 = !DILocation(line: 2005, column: 48, scope: !2165)
!2484 = !DILocation(line: 2005, column: 7, scope: !2165)
!2485 = !DILocation(line: 2006, column: 7, scope: !2165)
!2486 = !DILocation(line: 2006, column: 17, scope: !2165)
!2487 = !DILocation(line: 2006, column: 23, scope: !2165)
!2488 = !DILocation(line: 2007, column: 7, scope: !2165)
!2489 = !DILocation(line: 2007, column: 17, scope: !2165)
!2490 = !DILocation(line: 2007, column: 22, scope: !2165)
!2491 = !DILocation(line: 2008, column: 7, scope: !2165)
!2492 = !DILocation(line: 2008, column: 17, scope: !2165)
!2493 = !DILocation(line: 2008, column: 23, scope: !2165)
!2494 = !DILocation(line: 2009, column: 7, scope: !2165)
!2495 = !DILocation(line: 2009, column: 7, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2009, column: 7)
!2497 = !DILocation(line: 2012, column: 12, scope: !2165)
!2498 = !DILocation(line: 2013, column: 32, scope: !2165)
!2499 = !DILocation(line: 2013, column: 49, scope: !2165)
!2500 = !DILocation(line: 2013, column: 53, scope: !2165)
!2501 = !DILocation(line: 2013, column: 12, scope: !2165)
!2502 = !DILocation(line: 2013, column: 10, scope: !2165)
!2503 = !DILocation(line: 2014, column: 11, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2014, column: 11)
!2505 = !DILocation(line: 2014, column: 14, scope: !2504)
!2506 = !DILocation(line: 2014, column: 11, scope: !2165)
!2507 = !DILocation(line: 2015, column: 9, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2504, file: !2, line: 2014, column: 19)
!2509 = !DILocation(line: 2017, column: 13, scope: !2165)
!2510 = !DILocation(line: 2017, column: 10, scope: !2165)
!2511 = !DILocation(line: 2018, column: 12, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2018, column: 11)
!2513 = !DILocation(line: 2018, column: 11, scope: !2165)
!2514 = !DILocation(line: 2019, column: 9, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2512, file: !2, line: 2018, column: 18)
!2516 = !DILocation(line: 2019, column: 9, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2515, file: !2, line: 2019, column: 9)
!2518 = !DILocation(line: 2022, column: 9, scope: !2515)
!2519 = !DILocation(line: 2025, column: 11, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2025, column: 11)
!2521 = !DILocation(line: 2025, column: 21, scope: !2520)
!2522 = !DILocation(line: 2025, column: 11, scope: !2165)
!2523 = !DILocation(line: 2026, column: 46, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2520, file: !2, line: 2025, column: 38)
!2525 = !DILocation(line: 2026, column: 56, scope: !2524)
!2526 = !DILocation(line: 2026, column: 9, scope: !2524)
!2527 = !DILocation(line: 2028, column: 9, scope: !2524)
!2528 = !DILocation(line: 2028, column: 19, scope: !2524)
!2529 = !DILocation(line: 2028, column: 25, scope: !2524)
!2530 = !DILocation(line: 2030, column: 33, scope: !2524)
!2531 = !DILocation(line: 2030, column: 43, scope: !2524)
!2532 = !DILocation(line: 2030, column: 54, scope: !2524)
!2533 = !DILocation(line: 2030, column: 64, scope: !2524)
!2534 = !DILocation(line: 2030, column: 69, scope: !2524)
!2535 = !DILocation(line: 2030, column: 73, scope: !2524)
!2536 = !DILocation(line: 2031, column: 32, scope: !2524)
!2537 = !DILocation(line: 2030, column: 14, scope: !2524)
!2538 = !DILocation(line: 2030, column: 12, scope: !2524)
!2539 = !DILocation(line: 2032, column: 7, scope: !2524)
!2540 = !DILocation(line: 2033, column: 9, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2520, file: !2, line: 2032, column: 14)
!2542 = !DILocation(line: 2033, column: 19, scope: !2541)
!2543 = !DILocation(line: 2033, column: 25, scope: !2541)
!2544 = !DILocation(line: 2034, column: 33, scope: !2541)
!2545 = !DILocation(line: 2034, column: 43, scope: !2541)
!2546 = !DILocation(line: 2034, column: 54, scope: !2541)
!2547 = !DILocation(line: 2034, column: 64, scope: !2541)
!2548 = !DILocation(line: 2034, column: 69, scope: !2541)
!2549 = !DILocation(line: 2034, column: 74, scope: !2541)
!2550 = !DILocation(line: 2034, column: 14, scope: !2541)
!2551 = !DILocation(line: 2034, column: 12, scope: !2541)
!2552 = !DILocation(line: 2037, column: 11, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2037, column: 11)
!2554 = !DILocation(line: 2037, column: 14, scope: !2553)
!2555 = !DILocation(line: 2037, column: 11, scope: !2165)
!2556 = !DILocation(line: 2038, column: 9, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !2, line: 2037, column: 20)
!2558 = !DILocation(line: 2041, column: 30, scope: !2165)
!2559 = !DILocation(line: 2041, column: 40, scope: !2165)
!2560 = !DILocation(line: 2041, column: 49, scope: !2165)
!2561 = !DILocation(line: 2041, column: 59, scope: !2165)
!2562 = !DILocation(line: 2041, column: 70, scope: !2165)
!2563 = !DILocation(line: 2042, column: 29, scope: !2165)
!2564 = !DILocation(line: 2042, column: 39, scope: !2165)
!2565 = !DILocation(line: 2042, column: 50, scope: !2165)
!2566 = !DILocation(line: 2041, column: 7, scope: !2165)
!2567 = !DILocation(line: 2044, column: 7, scope: !2165)
!2568 = !DILocation(line: 2046, column: 33, scope: !2165)
!2569 = !DILocation(line: 2046, column: 44, scope: !2165)
!2570 = !DILocation(line: 2046, column: 54, scope: !2165)
!2571 = !DILocation(line: 2046, column: 63, scope: !2165)
!2572 = !DILocation(line: 2046, column: 67, scope: !2165)
!2573 = !DILocation(line: 2046, column: 12, scope: !2165)
!2574 = !DILocation(line: 2046, column: 10, scope: !2165)
!2575 = !DILocation(line: 2047, column: 11, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2047, column: 11)
!2577 = !DILocation(line: 2047, column: 14, scope: !2576)
!2578 = !DILocation(line: 2047, column: 11, scope: !2165)
!2579 = !DILocation(line: 2048, column: 9, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2576, file: !2, line: 2047, column: 19)
!2581 = !DILocation(line: 2051, column: 13, scope: !2165)
!2582 = !DILocation(line: 2051, column: 10, scope: !2165)
!2583 = !DILocation(line: 2053, column: 7, scope: !2165)
!2584 = !DILocation(line: 2053, column: 7, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2053, column: 7)
!2586 = !DILocation(line: 2055, column: 11, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2055, column: 11)
!2588 = !DILocation(line: 2055, column: 21, scope: !2587)
!2589 = !DILocation(line: 2055, column: 11, scope: !2165)
!2590 = !DILocation(line: 2056, column: 9, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2587, file: !2, line: 2055, column: 27)
!2592 = !DILocation(line: 2056, column: 9, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2591, file: !2, line: 2056, column: 9)
!2594 = !DILocation(line: 2058, column: 9, scope: !2591)
!2595 = !DILocation(line: 2061, column: 8, scope: !2165)
!2596 = !DILocation(line: 2061, column: 18, scope: !2165)
!2597 = !DILocation(line: 2061, column: 26, scope: !2165)
!2598 = !{!971, !613, i64 96}
!2599 = !DILocation(line: 2061, column: 31, scope: !2165)
!2600 = !DILocation(line: 2062, column: 34, scope: !2165)
!2601 = !{!971, !613, i64 88}
!2602 = !DILocation(line: 2062, column: 7, scope: !2165)
!2603 = !DILocation(line: 2062, column: 17, scope: !2165)
!2604 = !DILocation(line: 2062, column: 28, scope: !2165)
!2605 = !DILocation(line: 2062, column: 32, scope: !2165)
!2606 = !DILocation(line: 2064, column: 7, scope: !2165)
!2607 = !DILocation(line: 2064, column: 17, scope: !2165)
!2608 = !DILocation(line: 2064, column: 23, scope: !2165)
!2609 = !DILocation(line: 2066, column: 7, scope: !2165)
!2610 = !DILocation(line: 2068, column: 28, scope: !2165)
!2611 = !DILocation(line: 2068, column: 39, scope: !2165)
!2612 = !DILocation(line: 2068, column: 49, scope: !2165)
!2613 = !DILocation(line: 2068, column: 58, scope: !2165)
!2614 = !DILocation(line: 2068, column: 62, scope: !2165)
!2615 = !DILocation(line: 2068, column: 12, scope: !2165)
!2616 = !DILocation(line: 2068, column: 10, scope: !2165)
!2617 = !DILocation(line: 2069, column: 11, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2069, column: 11)
!2619 = !DILocation(line: 2069, column: 14, scope: !2618)
!2620 = !DILocation(line: 2069, column: 11, scope: !2165)
!2621 = !DILocation(line: 2070, column: 9, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2618, file: !2, line: 2069, column: 19)
!2623 = !DILocation(line: 2073, column: 13, scope: !2165)
!2624 = !DILocation(line: 2073, column: 10, scope: !2165)
!2625 = !DILocation(line: 2075, column: 7, scope: !2165)
!2626 = !DILocation(line: 2075, column: 7, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2075, column: 7)
!2628 = !DILocation(line: 2076, column: 11, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2076, column: 11)
!2630 = !DILocation(line: 2076, column: 21, scope: !2629)
!2631 = !DILocation(line: 2076, column: 11, scope: !2165)
!2632 = !DILocation(line: 2077, column: 9, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2629, file: !2, line: 2076, column: 27)
!2634 = !DILocation(line: 2077, column: 9, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2633, file: !2, line: 2077, column: 9)
!2636 = !DILocation(line: 2079, column: 9, scope: !2633)
!2637 = !DILocation(line: 2082, column: 8, scope: !2165)
!2638 = !DILocation(line: 2082, column: 18, scope: !2165)
!2639 = !DILocation(line: 2082, column: 26, scope: !2165)
!2640 = !DILocation(line: 2082, column: 31, scope: !2165)
!2641 = !DILocation(line: 2083, column: 34, scope: !2165)
!2642 = !DILocation(line: 2083, column: 7, scope: !2165)
!2643 = !DILocation(line: 2083, column: 17, scope: !2165)
!2644 = !DILocation(line: 2083, column: 28, scope: !2165)
!2645 = !DILocation(line: 2083, column: 32, scope: !2165)
!2646 = !DILocation(line: 2085, column: 7, scope: !2165)
!2647 = !DILocation(line: 2085, column: 17, scope: !2165)
!2648 = !DILocation(line: 2085, column: 23, scope: !2165)
!2649 = !DILocation(line: 2087, column: 7, scope: !2165)
!2650 = !DILocation(line: 2089, column: 38, scope: !2165)
!2651 = !DILocation(line: 2089, column: 48, scope: !2165)
!2652 = !DILocation(line: 2089, column: 7, scope: !2165)
!2653 = !DILocation(line: 2090, column: 7, scope: !2165)
!2654 = !DILocation(line: 2090, column: 17, scope: !2165)
!2655 = !DILocation(line: 2090, column: 23, scope: !2165)
!2656 = !DILocation(line: 2091, column: 7, scope: !2165)
!2657 = !DILocation(line: 2091, column: 17, scope: !2165)
!2658 = !DILocation(line: 2091, column: 22, scope: !2165)
!2659 = !DILocation(line: 2092, column: 7, scope: !2165)
!2660 = !DILocation(line: 2092, column: 17, scope: !2165)
!2661 = !DILocation(line: 2092, column: 23, scope: !2165)
!2662 = !DILocation(line: 2093, column: 7, scope: !2165)
!2663 = !DILocation(line: 2093, column: 7, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2093, column: 7)
!2665 = !DILocation(line: 2096, column: 12, scope: !2165)
!2666 = !DILocation(line: 2097, column: 32, scope: !2165)
!2667 = !DILocation(line: 2097, column: 49, scope: !2165)
!2668 = !DILocation(line: 2097, column: 53, scope: !2165)
!2669 = !DILocation(line: 2097, column: 12, scope: !2165)
!2670 = !DILocation(line: 2097, column: 10, scope: !2165)
!2671 = !DILocation(line: 2098, column: 11, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2098, column: 11)
!2673 = !DILocation(line: 2098, column: 14, scope: !2672)
!2674 = !DILocation(line: 2098, column: 11, scope: !2165)
!2675 = !DILocation(line: 2099, column: 9, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2672, file: !2, line: 2098, column: 19)
!2677 = !DILocation(line: 2102, column: 13, scope: !2165)
!2678 = !DILocation(line: 2102, column: 10, scope: !2165)
!2679 = !DILocation(line: 2104, column: 12, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2104, column: 11)
!2681 = !DILocation(line: 2104, column: 11, scope: !2165)
!2682 = !DILocation(line: 2105, column: 9, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2680, file: !2, line: 2104, column: 18)
!2684 = !DILocation(line: 2108, column: 7, scope: !2165)
!2685 = !DILocation(line: 2108, column: 7, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2108, column: 7)
!2687 = !DILocation(line: 2110, column: 11, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2110, column: 11)
!2689 = !DILocation(line: 2110, column: 21, scope: !2688)
!2690 = !DILocation(line: 2110, column: 11, scope: !2165)
!2691 = !DILocation(line: 2111, column: 46, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2688, file: !2, line: 2110, column: 38)
!2693 = !DILocation(line: 2111, column: 56, scope: !2692)
!2694 = !DILocation(line: 2111, column: 9, scope: !2692)
!2695 = !DILocation(line: 2113, column: 9, scope: !2692)
!2696 = !DILocation(line: 2113, column: 19, scope: !2692)
!2697 = !DILocation(line: 2113, column: 25, scope: !2692)
!2698 = !DILocation(line: 2115, column: 33, scope: !2692)
!2699 = !DILocation(line: 2115, column: 43, scope: !2692)
!2700 = !DILocation(line: 2115, column: 55, scope: !2692)
!2701 = !DILocation(line: 2115, column: 65, scope: !2692)
!2702 = !DILocation(line: 2115, column: 70, scope: !2692)
!2703 = !DILocation(line: 2115, column: 74, scope: !2692)
!2704 = !DILocation(line: 2116, column: 32, scope: !2692)
!2705 = !DILocation(line: 2115, column: 14, scope: !2692)
!2706 = !DILocation(line: 2115, column: 12, scope: !2692)
!2707 = !DILocation(line: 2117, column: 7, scope: !2692)
!2708 = !DILocation(line: 2118, column: 9, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2688, file: !2, line: 2117, column: 14)
!2710 = !DILocation(line: 2118, column: 19, scope: !2709)
!2711 = !DILocation(line: 2118, column: 25, scope: !2709)
!2712 = !DILocation(line: 2120, column: 33, scope: !2709)
!2713 = !DILocation(line: 2120, column: 43, scope: !2709)
!2714 = !DILocation(line: 2120, column: 55, scope: !2709)
!2715 = !DILocation(line: 2120, column: 65, scope: !2709)
!2716 = !DILocation(line: 2120, column: 70, scope: !2709)
!2717 = !DILocation(line: 2120, column: 75, scope: !2709)
!2718 = !DILocation(line: 2120, column: 14, scope: !2709)
!2719 = !DILocation(line: 2120, column: 12, scope: !2709)
!2720 = !DILocation(line: 2123, column: 11, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2123, column: 11)
!2722 = !DILocation(line: 2123, column: 14, scope: !2721)
!2723 = !DILocation(line: 2123, column: 11, scope: !2165)
!2724 = !DILocation(line: 2124, column: 9, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2721, file: !2, line: 2123, column: 20)
!2726 = !DILocation(line: 2127, column: 30, scope: !2165)
!2727 = !DILocation(line: 2127, column: 40, scope: !2165)
!2728 = !DILocation(line: 2127, column: 50, scope: !2165)
!2729 = !DILocation(line: 2127, column: 60, scope: !2165)
!2730 = !DILocation(line: 2127, column: 72, scope: !2165)
!2731 = !DILocation(line: 2128, column: 29, scope: !2165)
!2732 = !DILocation(line: 2128, column: 39, scope: !2165)
!2733 = !DILocation(line: 2128, column: 51, scope: !2165)
!2734 = !DILocation(line: 2127, column: 7, scope: !2165)
!2735 = !DILocation(line: 2130, column: 12, scope: !2165)
!2736 = !DILocation(line: 2132, column: 7, scope: !2165)
!2737 = !DILocation(line: 2134, column: 33, scope: !2165)
!2738 = !DILocation(line: 2134, column: 44, scope: !2165)
!2739 = !DILocation(line: 2134, column: 54, scope: !2165)
!2740 = !DILocation(line: 2134, column: 64, scope: !2165)
!2741 = !DILocation(line: 2134, column: 68, scope: !2165)
!2742 = !DILocation(line: 2134, column: 12, scope: !2165)
!2743 = !DILocation(line: 2134, column: 10, scope: !2165)
!2744 = !DILocation(line: 2135, column: 11, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2135, column: 11)
!2746 = !DILocation(line: 2135, column: 14, scope: !2745)
!2747 = !DILocation(line: 2135, column: 11, scope: !2165)
!2748 = !DILocation(line: 2136, column: 9, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2745, file: !2, line: 2135, column: 19)
!2750 = !DILocation(line: 2139, column: 13, scope: !2165)
!2751 = !DILocation(line: 2139, column: 10, scope: !2165)
!2752 = !DILocation(line: 2141, column: 7, scope: !2165)
!2753 = !DILocation(line: 2141, column: 7, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2141, column: 7)
!2755 = !DILocation(line: 2143, column: 11, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2143, column: 11)
!2757 = !DILocation(line: 2143, column: 21, scope: !2756)
!2758 = !DILocation(line: 2143, column: 11, scope: !2165)
!2759 = !DILocation(line: 2144, column: 9, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2756, file: !2, line: 2143, column: 27)
!2761 = !DILocation(line: 2144, column: 9, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2760, file: !2, line: 2144, column: 9)
!2763 = !DILocation(line: 2146, column: 9, scope: !2760)
!2764 = !DILocation(line: 2149, column: 8, scope: !2165)
!2765 = !DILocation(line: 2149, column: 18, scope: !2165)
!2766 = !DILocation(line: 2149, column: 27, scope: !2165)
!2767 = !{!971, !613, i64 136}
!2768 = !DILocation(line: 2149, column: 32, scope: !2165)
!2769 = !DILocation(line: 2150, column: 35, scope: !2165)
!2770 = !{!971, !613, i64 128}
!2771 = !DILocation(line: 2150, column: 7, scope: !2165)
!2772 = !DILocation(line: 2150, column: 17, scope: !2165)
!2773 = !DILocation(line: 2150, column: 29, scope: !2165)
!2774 = !DILocation(line: 2150, column: 33, scope: !2165)
!2775 = !DILocation(line: 2152, column: 11, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2152, column: 11)
!2777 = !DILocation(line: 2152, column: 21, scope: !2776)
!2778 = !DILocation(line: 2152, column: 28, scope: !2776)
!2779 = !DILocation(line: 2152, column: 11, scope: !2165)
!2780 = !DILocation(line: 2153, column: 40, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2776, file: !2, line: 2152, column: 58)
!2782 = !DILocation(line: 2153, column: 50, scope: !2781)
!2783 = !DILocation(line: 2153, column: 14, scope: !2781)
!2784 = !DILocation(line: 2153, column: 12, scope: !2781)
!2785 = !DILocation(line: 2154, column: 7, scope: !2781)
!2786 = !DILocation(line: 2155, column: 40, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2776, file: !2, line: 2154, column: 14)
!2788 = !DILocation(line: 2155, column: 50, scope: !2787)
!2789 = !DILocation(line: 2155, column: 14, scope: !2787)
!2790 = !DILocation(line: 2155, column: 12, scope: !2787)
!2791 = !DILocation(line: 2158, column: 11, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2158, column: 11)
!2793 = !DILocation(line: 2158, column: 14, scope: !2792)
!2794 = !DILocation(line: 2158, column: 11, scope: !2165)
!2795 = !DILocation(line: 2159, column: 9, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2792, file: !2, line: 2158, column: 20)
!2797 = !DILocation(line: 2162, column: 7, scope: !2165)
!2798 = !DILocation(line: 2162, column: 17, scope: !2165)
!2799 = !DILocation(line: 2162, column: 23, scope: !2165)
!2800 = !DILocation(line: 2163, column: 8, scope: !2165)
!2801 = !DILocation(line: 2163, column: 22, scope: !2165)
!2802 = !DILocation(line: 2165, column: 24, scope: !2165)
!2803 = !DILocation(line: 2165, column: 29, scope: !2165)
!2804 = !DILocation(line: 2165, column: 27, scope: !2165)
!2805 = !DILocation(line: 2165, column: 7, scope: !2165)
!2806 = !DILocation(line: 2167, column: 28, scope: !2165)
!2807 = !DILocation(line: 2167, column: 39, scope: !2165)
!2808 = !DILocation(line: 2167, column: 49, scope: !2165)
!2809 = !DILocation(line: 2167, column: 59, scope: !2165)
!2810 = !DILocation(line: 2167, column: 63, scope: !2165)
!2811 = !DILocation(line: 2167, column: 12, scope: !2165)
!2812 = !DILocation(line: 2167, column: 10, scope: !2165)
!2813 = !DILocation(line: 2168, column: 11, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2168, column: 11)
!2815 = !DILocation(line: 2168, column: 14, scope: !2814)
!2816 = !DILocation(line: 2168, column: 11, scope: !2165)
!2817 = !DILocation(line: 2169, column: 9, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2814, file: !2, line: 2168, column: 19)
!2819 = !DILocation(line: 2169, column: 9, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2818, file: !2, line: 2169, column: 9)
!2821 = !DILocation(line: 2171, column: 9, scope: !2818)
!2822 = !DILocation(line: 2174, column: 13, scope: !2165)
!2823 = !DILocation(line: 2174, column: 10, scope: !2165)
!2824 = !DILocation(line: 2176, column: 7, scope: !2165)
!2825 = !DILocation(line: 2176, column: 7, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2176, column: 7)
!2827 = !DILocation(line: 2178, column: 11, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2178, column: 11)
!2829 = !DILocation(line: 2178, column: 21, scope: !2828)
!2830 = !DILocation(line: 2178, column: 11, scope: !2165)
!2831 = !DILocation(line: 2179, column: 9, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2828, file: !2, line: 2178, column: 27)
!2833 = !DILocation(line: 2179, column: 9, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2832, file: !2, line: 2179, column: 9)
!2835 = !DILocation(line: 2180, column: 9, scope: !2832)
!2836 = !DILocation(line: 2183, column: 8, scope: !2165)
!2837 = !DILocation(line: 2183, column: 18, scope: !2165)
!2838 = !DILocation(line: 2183, column: 27, scope: !2165)
!2839 = !DILocation(line: 2183, column: 32, scope: !2165)
!2840 = !DILocation(line: 2184, column: 35, scope: !2165)
!2841 = !DILocation(line: 2184, column: 7, scope: !2165)
!2842 = !DILocation(line: 2184, column: 17, scope: !2165)
!2843 = !DILocation(line: 2184, column: 29, scope: !2165)
!2844 = !DILocation(line: 2184, column: 33, scope: !2165)
!2845 = !DILocation(line: 2186, column: 11, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2186, column: 11)
!2847 = !DILocation(line: 2186, column: 21, scope: !2846)
!2848 = !DILocation(line: 2186, column: 28, scope: !2846)
!2849 = !DILocation(line: 2186, column: 11, scope: !2165)
!2850 = !DILocation(line: 2187, column: 40, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2846, file: !2, line: 2186, column: 58)
!2852 = !DILocation(line: 2187, column: 50, scope: !2851)
!2853 = !DILocation(line: 2187, column: 14, scope: !2851)
!2854 = !DILocation(line: 2187, column: 12, scope: !2851)
!2855 = !DILocation(line: 2188, column: 7, scope: !2851)
!2856 = !DILocation(line: 2189, column: 40, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2846, file: !2, line: 2188, column: 14)
!2858 = !DILocation(line: 2189, column: 50, scope: !2857)
!2859 = !DILocation(line: 2189, column: 14, scope: !2857)
!2860 = !DILocation(line: 2189, column: 12, scope: !2857)
!2861 = !DILocation(line: 2192, column: 11, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 2192, column: 11)
!2863 = !DILocation(line: 2192, column: 14, scope: !2862)
!2864 = !DILocation(line: 2192, column: 11, scope: !2165)
!2865 = !DILocation(line: 2193, column: 9, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2862, file: !2, line: 2192, column: 20)
!2867 = !DILocation(line: 2196, column: 7, scope: !2165)
!2868 = !DILocation(line: 2196, column: 17, scope: !2165)
!2869 = !DILocation(line: 2196, column: 23, scope: !2165)
!2870 = !DILocation(line: 2197, column: 8, scope: !2165)
!2871 = !DILocation(line: 2197, column: 22, scope: !2165)
!2872 = !DILocation(line: 2199, column: 24, scope: !2165)
!2873 = !DILocation(line: 2199, column: 29, scope: !2165)
!2874 = !DILocation(line: 2199, column: 27, scope: !2165)
!2875 = !DILocation(line: 2199, column: 7, scope: !2165)
!2876 = !DILocation(line: 1889, column: 3, scope: !2167)
!2877 = distinct !{!2877, !2219, !2878, !1202}
!2878 = !DILocation(line: 2201, column: 3, scope: !2168)
!2879 = !DILocation(line: 2203, column: 3, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !2, line: 2203, column: 3)
!2881 = distinct !DILexicalBlock(scope: !2147, file: !2, line: 2203, column: 3)
!2882 = !DILocation(line: 2203, column: 3, scope: !2881)
!2883 = !DILocation(line: 2205, column: 3, scope: !2147)
!2884 = !DILocation(line: 2205, column: 3, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2147, file: !2, line: 2205, column: 3)
!2886 = !DILocation(line: 2207, column: 7, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2147, file: !2, line: 2207, column: 7)
!2888 = !DILocation(line: 2207, column: 7, scope: !2147)
!2889 = !DILocation(line: 2208, column: 5, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2887, file: !2, line: 2207, column: 17)
!2891 = !DILocation(line: 2208, column: 5, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2890, file: !2, line: 2208, column: 5)
!2893 = !DILocation(line: 2210, column: 9, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2890, file: !2, line: 2210, column: 9)
!2895 = !DILocation(line: 2210, column: 19, scope: !2894)
!2896 = !DILocation(line: 2210, column: 25, scope: !2894)
!2897 = !DILocation(line: 2210, column: 52, scope: !2894)
!2898 = !DILocation(line: 2211, column: 9, scope: !2894)
!2899 = !DILocation(line: 2211, column: 19, scope: !2894)
!2900 = !DILocation(line: 2211, column: 25, scope: !2894)
!2901 = !DILocation(line: 2210, column: 9, scope: !2890)
!2902 = !DILocation(line: 2212, column: 7, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2894, file: !2, line: 2211, column: 60)
!2904 = !DILocation(line: 2212, column: 7, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2903, file: !2, line: 2212, column: 7)
!2906 = !DILocation(line: 2213, column: 10, scope: !2903)
!2907 = !DILocation(line: 2215, column: 7, scope: !2903)
!2908 = !DILocation(line: 2217, column: 6, scope: !2890)
!2909 = !DILocation(line: 2217, column: 20, scope: !2890)
!2910 = !DILocation(line: 2218, column: 3, scope: !2890)
!2911 = !DILocation(line: 2219, column: 20, scope: !2147)
!2912 = !DILocation(line: 2219, column: 25, scope: !2147)
!2913 = !DILocation(line: 2219, column: 23, scope: !2147)
!2914 = !DILocation(line: 2219, column: 3, scope: !2147)
!2915 = !DILocation(line: 2221, column: 1, scope: !2147)
!2916 = !DILocation(line: 2222, column: 7, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2147, file: !2, line: 2222, column: 7)
!2918 = !DILocation(line: 2222, column: 7, scope: !2147)
!2919 = !DILocation(line: 2223, column: 5, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2917, file: !2, line: 2222, column: 17)
!2921 = !DILocation(line: 2223, column: 5, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2920, file: !2, line: 2223, column: 5)
!2923 = !DILocation(line: 2225, column: 8, scope: !2920)
!2924 = !DILocation(line: 2227, column: 5, scope: !2920)
!2925 = !DILocation(line: 2229, column: 20, scope: !2147)
!2926 = !DILocation(line: 2229, column: 25, scope: !2147)
!2927 = !DILocation(line: 2229, column: 23, scope: !2147)
!2928 = !DILocation(line: 2229, column: 3, scope: !2147)
!2929 = !DILocation(line: 2231, column: 1, scope: !2147)
!2930 = !DILocation(line: 2232, column: 3, scope: !2147)
!2931 = !DILocation(line: 2232, column: 3, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2147, file: !2, line: 2232, column: 3)
!2933 = !DILocation(line: 2234, column: 3, scope: !2147)
!2934 = !DILocation(line: 2234, column: 13, scope: !2147)
!2935 = !DILocation(line: 2234, column: 17, scope: !2147)
!2936 = !DILocation(line: 2234, column: 21, scope: !2147)
!2937 = !DILocation(line: 2235, column: 10, scope: !2147)
!2938 = !DILocation(line: 2235, column: 3, scope: !2147)
!2939 = !DILocation(line: 2236, column: 1, scope: !2147)
!2940 = distinct !DISubprogram(name: "hd_inflate_read_len", scope: !2, file: !2, line: 1646, type: !2941, scopeLine: 1648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !2943)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!195, !906, !2053, !2078, !2078, !188, !188}
!2943 = !{!2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951}
!2944 = !DILocalVariable(name: "inflater", arg: 1, scope: !2940, file: !2, line: 1646, type: !906)
!2945 = !DILocalVariable(name: "rfin", arg: 2, scope: !2940, file: !2, line: 1646, type: !2053)
!2946 = !DILocalVariable(name: "in", arg: 3, scope: !2940, file: !2, line: 1647, type: !2078)
!2947 = !DILocalVariable(name: "last", arg: 4, scope: !2940, file: !2, line: 1647, type: !2078)
!2948 = !DILocalVariable(name: "prefix", arg: 5, scope: !2940, file: !2, line: 1648, type: !188)
!2949 = !DILocalVariable(name: "maxlen", arg: 6, scope: !2940, file: !2, line: 1648, type: !188)
!2950 = !DILocalVariable(name: "rv", scope: !2940, file: !2, line: 1649, type: !195)
!2951 = !DILocalVariable(name: "out", scope: !2940, file: !2, line: 1650, type: !199)
!2952 = !DILocation(line: 1646, column: 57, scope: !2940)
!2953 = !DILocation(line: 1646, column: 72, scope: !2940)
!2954 = !DILocation(line: 1647, column: 51, scope: !2940)
!2955 = !DILocation(line: 1647, column: 70, scope: !2940)
!2956 = !DILocation(line: 1648, column: 43, scope: !2940)
!2957 = !DILocation(line: 1648, column: 58, scope: !2940)
!2958 = !DILocation(line: 1649, column: 3, scope: !2940)
!2959 = !DILocation(line: 1649, column: 11, scope: !2940)
!2960 = !DILocation(line: 1650, column: 3, scope: !2940)
!2961 = !DILocation(line: 1650, column: 12, scope: !2940)
!2962 = !DILocation(line: 1652, column: 4, scope: !2940)
!2963 = !DILocation(line: 1652, column: 9, scope: !2940)
!2964 = !DILocation(line: 1654, column: 29, scope: !2940)
!2965 = !DILocation(line: 1654, column: 39, scope: !2940)
!2966 = !DILocation(line: 1654, column: 46, scope: !2940)
!2967 = !DILocation(line: 1654, column: 62, scope: !2940)
!2968 = !DILocation(line: 1654, column: 72, scope: !2940)
!2969 = !DILocation(line: 1654, column: 52, scope: !2940)
!2970 = !DILocation(line: 1655, column: 22, scope: !2940)
!2971 = !DILocation(line: 1655, column: 32, scope: !2940)
!2972 = !DILocation(line: 1655, column: 39, scope: !2940)
!2973 = !DILocation(line: 1655, column: 43, scope: !2940)
!2974 = !DILocation(line: 1655, column: 49, scope: !2940)
!2975 = !DILocation(line: 1654, column: 8, scope: !2940)
!2976 = !DILocation(line: 1654, column: 6, scope: !2940)
!2977 = !DILocation(line: 1657, column: 7, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2940, file: !2, line: 1657, column: 7)
!2979 = !DILocation(line: 1657, column: 10, scope: !2978)
!2980 = !DILocation(line: 1657, column: 7, scope: !2940)
!2981 = !DILocation(line: 1658, column: 5, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2978, file: !2, line: 1657, column: 17)
!2983 = !DILocation(line: 1658, column: 5, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2982, file: !2, line: 1658, column: 5)
!2985 = !DILocation(line: 1659, column: 5, scope: !2982)
!2986 = !DILocation(line: 1662, column: 7, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2940, file: !2, line: 1662, column: 7)
!2988 = !DILocation(line: 1662, column: 13, scope: !2987)
!2989 = !DILocation(line: 1662, column: 11, scope: !2987)
!2990 = !DILocation(line: 1662, column: 7, scope: !2940)
!2991 = !DILocation(line: 1663, column: 5, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2987, file: !2, line: 1662, column: 21)
!2993 = !DILocation(line: 1663, column: 5, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2992, file: !2, line: 1663, column: 5)
!2995 = !DILocation(line: 1664, column: 5, scope: !2992)
!2996 = !DILocation(line: 1667, column: 20, scope: !2940)
!2997 = !DILocation(line: 1667, column: 3, scope: !2940)
!2998 = !DILocation(line: 1667, column: 13, scope: !2940)
!2999 = !DILocation(line: 1667, column: 18, scope: !2940)
!3000 = !DILocation(line: 1669, column: 3, scope: !2940)
!3001 = !DILocation(line: 1669, column: 3, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2940, file: !2, line: 1669, column: 3)
!3003 = !DILocation(line: 1671, column: 10, scope: !2940)
!3004 = !DILocation(line: 1671, column: 3, scope: !2940)
!3005 = !DILocation(line: 1672, column: 1, scope: !2940)
!3006 = distinct !DISubprogram(name: "get_max_index", scope: !2, file: !2, line: 1297, type: !3007, scopeLine: 1297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3009)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!188, !846}
!3009 = !{!3010}
!3010 = !DILocalVariable(name: "context", arg: 1, scope: !3006, file: !2, line: 1297, type: !846)
!3011 = !DILocation(line: 1297, column: 49, scope: !3006)
!3012 = !DILocation(line: 1298, column: 10, scope: !3006)
!3013 = !DILocation(line: 1298, column: 19, scope: !3006)
!3014 = !DILocation(line: 1298, column: 28, scope: !3006)
!3015 = !DILocation(line: 1298, column: 32, scope: !3006)
!3016 = !DILocation(line: 1298, column: 3, scope: !3006)
!3017 = distinct !DISubprogram(name: "hd_inflate_commit_indexed", scope: !2, file: !2, line: 1738, type: !3018, scopeLine: 1739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3020)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{null, !906, !608}
!3020 = !{!3021, !3022, !3023}
!3021 = !DILocalVariable(name: "inflater", arg: 1, scope: !3017, file: !2, line: 1738, type: !906)
!3022 = !DILocalVariable(name: "nv_out", arg: 2, scope: !3017, file: !2, line: 1739, type: !608)
!3023 = !DILocalVariable(name: "nv", scope: !3017, file: !2, line: 1740, type: !597)
!3024 = !DILocation(line: 1738, column: 60, scope: !3017)
!3025 = !DILocation(line: 1739, column: 54, scope: !3017)
!3026 = !DILocation(line: 1740, column: 3, scope: !3017)
!3027 = !DILocation(line: 1740, column: 17, scope: !3017)
!3028 = !DILocation(line: 1740, column: 44, scope: !3017)
!3029 = !DILocation(line: 1740, column: 54, scope: !3017)
!3030 = !DILocation(line: 1740, column: 59, scope: !3017)
!3031 = !DILocation(line: 1740, column: 69, scope: !3017)
!3032 = !DILocation(line: 1740, column: 22, scope: !3017)
!3033 = !DILocation(line: 1742, column: 15, scope: !3017)
!3034 = !DILocation(line: 1742, column: 3, scope: !3017)
!3035 = !DILocation(line: 1743, column: 1, scope: !3017)
!3036 = distinct !DISubprogram(name: "hd_inflate_set_huffman_encoded", scope: !2, file: !2, line: 1628, type: !3037, scopeLine: 1629, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{null, !906, !2078}
!3039 = !{!3040, !3041}
!3040 = !DILocalVariable(name: "inflater", arg: 1, scope: !3036, file: !2, line: 1628, type: !906)
!3041 = !DILocalVariable(name: "in", arg: 2, scope: !3036, file: !2, line: 1629, type: !2078)
!3042 = !DILocation(line: 1628, column: 65, scope: !3036)
!3043 = !DILocation(line: 1629, column: 59, scope: !3036)
!3044 = !DILocation(line: 1630, column: 33, scope: !3036)
!3045 = !DILocation(line: 1630, column: 32, scope: !3036)
!3046 = !DILocation(line: 1630, column: 36, scope: !3036)
!3047 = !DILocation(line: 1630, column: 48, scope: !3036)
!3048 = !DILocation(line: 1630, column: 31, scope: !3036)
!3049 = !DILocation(line: 1630, column: 3, scope: !3036)
!3050 = !DILocation(line: 1630, column: 13, scope: !3036)
!3051 = !DILocation(line: 1630, column: 29, scope: !3036)
!3052 = !DILocation(line: 1631, column: 1, scope: !3036)
!3053 = !DISubprogram(name: "nghttp2_hd_huff_decode_context_init", scope: !23, file: !23, line: 409, type: !3054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{null, !3056}
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!3057 = !DISubprogram(name: "nghttp2_rcbuf_new", scope: !171, file: !171, line: 57, type: !3058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!47, !3060, !188, !734}
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!3061 = !DISubprogram(name: "nghttp2_buf_wrap_init", scope: !922, file: !922, line: 120, type: !3062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{null, !1041, !181, !188}
!3064 = distinct !DISubprogram(name: "hd_inflate_read_huff", scope: !2, file: !2, line: 1687, type: !3065, scopeLine: 1689, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!195, !906, !1041, !2078, !2078}
!3067 = !{!3068, !3069, !3070, !3071, !3072, !3073}
!3068 = !DILocalVariable(name: "inflater", arg: 1, scope: !3064, file: !2, line: 1687, type: !906)
!3069 = !DILocalVariable(name: "buf", arg: 2, scope: !3064, file: !2, line: 1688, type: !1041)
!3070 = !DILocalVariable(name: "in", arg: 3, scope: !3064, file: !2, line: 1688, type: !2078)
!3071 = !DILocalVariable(name: "last", arg: 4, scope: !3064, file: !2, line: 1689, type: !2078)
!3072 = !DILocalVariable(name: "readlen", scope: !3064, file: !2, line: 1690, type: !195)
!3073 = !DILocalVariable(name: "fin", scope: !3064, file: !2, line: 1691, type: !47)
!3074 = !DILocation(line: 1687, column: 58, scope: !3064)
!3075 = !DILocation(line: 1688, column: 50, scope: !3064)
!3076 = !DILocation(line: 1688, column: 70, scope: !3064)
!3077 = !DILocation(line: 1689, column: 52, scope: !3064)
!3078 = !DILocation(line: 1690, column: 3, scope: !3064)
!3079 = !DILocation(line: 1690, column: 11, scope: !3064)
!3080 = !DILocation(line: 1691, column: 3, scope: !3064)
!3081 = !DILocation(line: 1691, column: 7, scope: !3064)
!3082 = !DILocation(line: 1692, column: 16, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3064, file: !2, line: 1692, column: 7)
!3084 = !DILocation(line: 1692, column: 23, scope: !3083)
!3085 = !DILocation(line: 1692, column: 21, scope: !3083)
!3086 = !DILocation(line: 1692, column: 30, scope: !3083)
!3087 = !DILocation(line: 1692, column: 40, scope: !3083)
!3088 = !DILocation(line: 1692, column: 27, scope: !3083)
!3089 = !DILocation(line: 1692, column: 7, scope: !3064)
!3090 = !DILocation(line: 1693, column: 12, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3083, file: !2, line: 1692, column: 46)
!3092 = !DILocation(line: 1693, column: 17, scope: !3091)
!3093 = !DILocation(line: 1693, column: 27, scope: !3091)
!3094 = !DILocation(line: 1693, column: 15, scope: !3091)
!3095 = !DILocation(line: 1693, column: 10, scope: !3091)
!3096 = !DILocation(line: 1694, column: 9, scope: !3091)
!3097 = !DILocation(line: 1695, column: 3, scope: !3091)
!3098 = !DILocation(line: 1696, column: 37, scope: !3064)
!3099 = !DILocation(line: 1696, column: 47, scope: !3064)
!3100 = !DILocation(line: 1696, column: 64, scope: !3064)
!3101 = !DILocation(line: 1696, column: 69, scope: !3064)
!3102 = !DILocation(line: 1697, column: 45, scope: !3064)
!3103 = !DILocation(line: 1697, column: 52, scope: !3064)
!3104 = !DILocation(line: 1697, column: 50, scope: !3064)
!3105 = !DILocation(line: 1697, column: 57, scope: !3064)
!3106 = !DILocation(line: 1696, column: 13, scope: !3064)
!3107 = !DILocation(line: 1696, column: 11, scope: !3064)
!3108 = !DILocation(line: 1699, column: 7, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3064, file: !2, line: 1699, column: 7)
!3110 = !DILocation(line: 1699, column: 15, scope: !3109)
!3111 = !DILocation(line: 1699, column: 7, scope: !3064)
!3112 = !DILocation(line: 1700, column: 5, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3109, file: !2, line: 1699, column: 20)
!3114 = !DILocation(line: 1700, column: 5, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3113, file: !2, line: 1700, column: 5)
!3116 = !DILocation(line: 1701, column: 12, scope: !3113)
!3117 = !DILocation(line: 1701, column: 5, scope: !3113)
!3118 = !DILocation(line: 1703, column: 45, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3064, file: !2, line: 1703, column: 7)
!3120 = !DILocation(line: 1703, column: 55, scope: !3119)
!3121 = !DILocation(line: 1703, column: 7, scope: !3119)
!3122 = !DILocation(line: 1703, column: 7, scope: !3064)
!3123 = !DILocation(line: 1704, column: 5, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3119, file: !2, line: 1703, column: 73)
!3125 = !DILocation(line: 1704, column: 5, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3124, file: !2, line: 1704, column: 5)
!3127 = !DILocation(line: 1705, column: 5, scope: !3124)
!3128 = !DILocation(line: 1708, column: 29, scope: !3064)
!3129 = !DILocation(line: 1708, column: 3, scope: !3064)
!3130 = !DILocation(line: 1708, column: 13, scope: !3064)
!3131 = !DILocation(line: 1708, column: 18, scope: !3064)
!3132 = !DILocation(line: 1709, column: 10, scope: !3064)
!3133 = !DILocation(line: 1709, column: 3, scope: !3064)
!3134 = !DILocation(line: 1710, column: 1, scope: !3064)
!3135 = distinct !DISubprogram(name: "hd_inflate_read", scope: !2, file: !2, line: 1724, type: !3065, scopeLine: 1725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3136)
!3136 = !{!3137, !3138, !3139, !3140, !3141}
!3137 = !DILocalVariable(name: "inflater", arg: 1, scope: !3135, file: !2, line: 1724, type: !906)
!3138 = !DILocalVariable(name: "buf", arg: 2, scope: !3135, file: !2, line: 1724, type: !1041)
!3139 = !DILocalVariable(name: "in", arg: 3, scope: !3135, file: !2, line: 1725, type: !2078)
!3140 = !DILocalVariable(name: "last", arg: 4, scope: !3135, file: !2, line: 1725, type: !2078)
!3141 = !DILocalVariable(name: "len", scope: !3135, file: !2, line: 1726, type: !188)
!3142 = !DILocation(line: 1724, column: 53, scope: !3135)
!3143 = !DILocation(line: 1724, column: 76, scope: !3135)
!3144 = !DILocation(line: 1725, column: 47, scope: !3135)
!3145 = !DILocation(line: 1725, column: 66, scope: !3135)
!3146 = !DILocation(line: 1726, column: 3, scope: !3135)
!3147 = !DILocation(line: 1726, column: 10, scope: !3135)
!3148 = !DILocation(line: 1726, column: 16, scope: !3135)
!3149 = !DILocation(line: 1728, column: 30, scope: !3135)
!3150 = !DILocation(line: 1728, column: 35, scope: !3135)
!3151 = !{!974, !613, i64 24}
!3152 = !DILocation(line: 1728, column: 41, scope: !3135)
!3153 = !DILocation(line: 1728, column: 45, scope: !3135)
!3154 = !DILocation(line: 1728, column: 15, scope: !3135)
!3155 = !DILocation(line: 1728, column: 3, scope: !3135)
!3156 = !DILocation(line: 1728, column: 8, scope: !3135)
!3157 = !DILocation(line: 1728, column: 13, scope: !3135)
!3158 = !DILocation(line: 1730, column: 21, scope: !3135)
!3159 = !DILocation(line: 1730, column: 3, scope: !3135)
!3160 = !DILocation(line: 1730, column: 13, scope: !3135)
!3161 = !DILocation(line: 1730, column: 18, scope: !3135)
!3162 = !DILocation(line: 1731, column: 19, scope: !3135)
!3163 = !DILocation(line: 1732, column: 1, scope: !3135)
!3164 = !DILocation(line: 1731, column: 3, scope: !3135)
!3165 = distinct !DISubprogram(name: "hd_inflate_commit_newname", scope: !2, file: !2, line: 1756, type: !3166, scopeLine: 1757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!47, !906, !608}
!3168 = !{!3169, !3170, !3171, !3172}
!3169 = !DILocalVariable(name: "inflater", arg: 1, scope: !3165, file: !2, line: 1756, type: !906)
!3170 = !DILocalVariable(name: "nv_out", arg: 2, scope: !3165, file: !2, line: 1757, type: !608)
!3171 = !DILocalVariable(name: "nv", scope: !3165, file: !2, line: 1758, type: !597)
!3172 = !DILocalVariable(name: "rv", scope: !3165, file: !2, line: 1759, type: !47)
!3173 = !DILocation(line: 1756, column: 59, scope: !3165)
!3174 = !DILocation(line: 1757, column: 53, scope: !3165)
!3175 = !DILocation(line: 1758, column: 3, scope: !3165)
!3176 = !DILocation(line: 1758, column: 17, scope: !3165)
!3177 = !DILocation(line: 1759, column: 3, scope: !3165)
!3178 = !DILocation(line: 1759, column: 7, scope: !3165)
!3179 = !DILocation(line: 1761, column: 7, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3165, file: !2, line: 1761, column: 7)
!3181 = !DILocation(line: 1761, column: 17, scope: !3180)
!3182 = !DILocation(line: 1761, column: 7, scope: !3165)
!3183 = !DILocation(line: 1762, column: 8, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3180, file: !2, line: 1761, column: 27)
!3185 = !DILocation(line: 1762, column: 14, scope: !3184)
!3186 = !DILocation(line: 1763, column: 3, scope: !3184)
!3187 = !DILocation(line: 1764, column: 8, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3180, file: !2, line: 1763, column: 10)
!3189 = !DILocation(line: 1764, column: 14, scope: !3188)
!3190 = !DILocation(line: 1767, column: 13, scope: !3165)
!3191 = !DILocation(line: 1767, column: 23, scope: !3165)
!3192 = !DILocation(line: 1767, column: 6, scope: !3165)
!3193 = !DILocation(line: 1767, column: 11, scope: !3165)
!3194 = !DILocation(line: 1768, column: 14, scope: !3165)
!3195 = !DILocation(line: 1768, column: 24, scope: !3165)
!3196 = !DILocation(line: 1768, column: 6, scope: !3165)
!3197 = !DILocation(line: 1768, column: 12, scope: !3165)
!3198 = !DILocation(line: 1769, column: 27, scope: !3165)
!3199 = !DILocation(line: 1769, column: 37, scope: !3165)
!3200 = !DILocation(line: 1769, column: 48, scope: !3165)
!3201 = !DILocation(line: 1769, column: 54, scope: !3165)
!3202 = !DILocation(line: 1769, column: 64, scope: !3165)
!3203 = !DILocation(line: 1769, column: 75, scope: !3165)
!3204 = !DILocation(line: 1769, column: 14, scope: !3165)
!3205 = !DILocation(line: 1769, column: 6, scope: !3165)
!3206 = !DILocation(line: 1769, column: 12, scope: !3165)
!3207 = !DILocation(line: 1771, column: 7, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3165, file: !2, line: 1771, column: 7)
!3209 = !DILocation(line: 1771, column: 17, scope: !3208)
!3210 = !DILocation(line: 1771, column: 7, scope: !3165)
!3211 = !DILocation(line: 1772, column: 36, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3208, file: !2, line: 1771, column: 33)
!3213 = !DILocation(line: 1772, column: 46, scope: !3212)
!3214 = !DILocation(line: 1772, column: 10, scope: !3212)
!3215 = !DILocation(line: 1772, column: 8, scope: !3212)
!3216 = !DILocation(line: 1774, column: 9, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3212, file: !2, line: 1774, column: 9)
!3218 = !DILocation(line: 1774, column: 12, scope: !3217)
!3219 = !DILocation(line: 1774, column: 9, scope: !3212)
!3220 = !DILocation(line: 1775, column: 14, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3217, file: !2, line: 1774, column: 18)
!3222 = !DILocation(line: 1775, column: 7, scope: !3221)
!3223 = !DILocation(line: 1777, column: 3, scope: !3212)
!3224 = !DILocation(line: 1779, column: 15, scope: !3165)
!3225 = !DILocation(line: 1779, column: 3, scope: !3165)
!3226 = !DILocation(line: 1781, column: 31, scope: !3165)
!3227 = !DILocation(line: 1781, column: 3, scope: !3165)
!3228 = !DILocation(line: 1781, column: 13, scope: !3165)
!3229 = !DILocation(line: 1781, column: 26, scope: !3165)
!3230 = !DILocation(line: 1782, column: 32, scope: !3165)
!3231 = !DILocation(line: 1782, column: 3, scope: !3165)
!3232 = !DILocation(line: 1782, column: 13, scope: !3165)
!3233 = !DILocation(line: 1782, column: 27, scope: !3165)
!3234 = !DILocation(line: 1784, column: 3, scope: !3165)
!3235 = !DILocation(line: 1784, column: 13, scope: !3165)
!3236 = !DILocation(line: 1784, column: 23, scope: !3165)
!3237 = !DILocation(line: 1785, column: 3, scope: !3165)
!3238 = !DILocation(line: 1785, column: 13, scope: !3165)
!3239 = !DILocation(line: 1785, column: 24, scope: !3165)
!3240 = !DILocation(line: 1787, column: 3, scope: !3165)
!3241 = !DILocation(line: 1788, column: 1, scope: !3165)
!3242 = distinct !DISubprogram(name: "hd_inflate_commit_indname", scope: !2, file: !2, line: 1801, type: !3166, scopeLine: 1802, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3243)
!3243 = !{!3244, !3245, !3246, !3247}
!3244 = !DILocalVariable(name: "inflater", arg: 1, scope: !3242, file: !2, line: 1801, type: !906)
!3245 = !DILocalVariable(name: "nv_out", arg: 2, scope: !3242, file: !2, line: 1802, type: !608)
!3246 = !DILocalVariable(name: "nv", scope: !3242, file: !2, line: 1803, type: !597)
!3247 = !DILocalVariable(name: "rv", scope: !3242, file: !2, line: 1804, type: !47)
!3248 = !DILocation(line: 1801, column: 59, scope: !3242)
!3249 = !DILocation(line: 1802, column: 53, scope: !3242)
!3250 = !DILocation(line: 1803, column: 3, scope: !3242)
!3251 = !DILocation(line: 1803, column: 17, scope: !3242)
!3252 = !DILocation(line: 1804, column: 3, scope: !3242)
!3253 = !DILocation(line: 1804, column: 7, scope: !3242)
!3254 = !DILocation(line: 1806, column: 8, scope: !3242)
!3255 = !DILocation(line: 1806, column: 30, scope: !3242)
!3256 = !DILocation(line: 1806, column: 40, scope: !3242)
!3257 = !DILocation(line: 1806, column: 45, scope: !3242)
!3258 = !DILocation(line: 1806, column: 55, scope: !3242)
!3259 = !DILocation(line: 1808, column: 7, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3242, file: !2, line: 1808, column: 7)
!3261 = !DILocation(line: 1808, column: 17, scope: !3260)
!3262 = !DILocation(line: 1808, column: 7, scope: !3242)
!3263 = !DILocation(line: 1809, column: 8, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3260, file: !2, line: 1808, column: 27)
!3265 = !DILocation(line: 1809, column: 14, scope: !3264)
!3266 = !DILocation(line: 1810, column: 3, scope: !3264)
!3267 = !DILocation(line: 1811, column: 8, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3260, file: !2, line: 1810, column: 10)
!3269 = !DILocation(line: 1811, column: 14, scope: !3268)
!3270 = !DILocation(line: 1814, column: 27, scope: !3242)
!3271 = !DILocation(line: 1814, column: 3, scope: !3242)
!3272 = !DILocation(line: 1816, column: 14, scope: !3242)
!3273 = !DILocation(line: 1816, column: 24, scope: !3242)
!3274 = !DILocation(line: 1816, column: 6, scope: !3242)
!3275 = !DILocation(line: 1816, column: 12, scope: !3242)
!3276 = !DILocation(line: 1818, column: 7, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3242, file: !2, line: 1818, column: 7)
!3278 = !DILocation(line: 1818, column: 17, scope: !3277)
!3279 = !DILocation(line: 1818, column: 7, scope: !3242)
!3280 = !DILocation(line: 1819, column: 36, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3277, file: !2, line: 1818, column: 33)
!3282 = !DILocation(line: 1819, column: 46, scope: !3281)
!3283 = !DILocation(line: 1819, column: 10, scope: !3281)
!3284 = !DILocation(line: 1819, column: 8, scope: !3281)
!3285 = !DILocation(line: 1820, column: 9, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3281, file: !2, line: 1820, column: 9)
!3287 = !DILocation(line: 1820, column: 12, scope: !3286)
!3288 = !DILocation(line: 1820, column: 9, scope: !3281)
!3289 = !DILocation(line: 1821, column: 31, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3286, file: !2, line: 1820, column: 18)
!3291 = !DILocation(line: 1821, column: 7, scope: !3290)
!3292 = !DILocation(line: 1822, column: 7, scope: !3290)
!3293 = !DILocation(line: 1824, column: 3, scope: !3281)
!3294 = !DILocation(line: 1826, column: 15, scope: !3242)
!3295 = !DILocation(line: 1826, column: 3, scope: !3242)
!3296 = !DILocation(line: 1828, column: 31, scope: !3242)
!3297 = !DILocation(line: 1828, column: 3, scope: !3242)
!3298 = !DILocation(line: 1828, column: 13, scope: !3242)
!3299 = !DILocation(line: 1828, column: 26, scope: !3242)
!3300 = !DILocation(line: 1829, column: 32, scope: !3242)
!3301 = !DILocation(line: 1829, column: 3, scope: !3242)
!3302 = !DILocation(line: 1829, column: 13, scope: !3242)
!3303 = !DILocation(line: 1829, column: 27, scope: !3242)
!3304 = !DILocation(line: 1831, column: 3, scope: !3242)
!3305 = !DILocation(line: 1831, column: 13, scope: !3242)
!3306 = !DILocation(line: 1831, column: 24, scope: !3242)
!3307 = !DILocation(line: 1833, column: 3, scope: !3242)
!3308 = !DILocation(line: 1834, column: 1, scope: !3242)
!3309 = distinct !DISubprogram(name: "nghttp2_hd_inflate_end_headers", scope: !2, file: !2, line: 2238, type: !3310, scopeLine: 2238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3312)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!47, !906}
!3312 = !{!3313}
!3313 = !DILocalVariable(name: "inflater", arg: 1, scope: !3309, file: !2, line: 2238, type: !906)
!3314 = !DILocation(line: 2238, column: 57, scope: !3309)
!3315 = !DILocation(line: 2239, column: 24, scope: !3309)
!3316 = !DILocation(line: 2239, column: 3, scope: !3309)
!3317 = !DILocation(line: 2240, column: 3, scope: !3309)
!3318 = !DILocation(line: 2240, column: 13, scope: !3309)
!3319 = !DILocation(line: 2240, column: 19, scope: !3309)
!3320 = !DILocation(line: 2241, column: 3, scope: !3309)
!3321 = distinct !DISubprogram(name: "nghttp2_hd_inflate_new", scope: !2, file: !2, line: 2244, type: !3322, scopeLine: 2244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3325)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!47, !3324}
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!3325 = !{!3326}
!3326 = !DILocalVariable(name: "inflater_ptr", arg: 1, scope: !3321, file: !2, line: 2244, type: !3324)
!3327 = !DILocation(line: 2244, column: 50, scope: !3321)
!3328 = !DILocation(line: 2245, column: 34, scope: !3321)
!3329 = !DILocation(line: 2245, column: 10, scope: !3321)
!3330 = !DILocation(line: 2245, column: 3, scope: !3321)
!3331 = distinct !DISubprogram(name: "nghttp2_hd_inflate_new2", scope: !2, file: !2, line: 2248, type: !3332, scopeLine: 2249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!47, !3324, !734}
!3334 = !{!3335, !3336, !3337, !3338}
!3335 = !DILocalVariable(name: "inflater_ptr", arg: 1, scope: !3331, file: !2, line: 2248, type: !3324)
!3336 = !DILocalVariable(name: "mem", arg: 2, scope: !3331, file: !2, line: 2249, type: !734)
!3337 = !DILocalVariable(name: "rv", scope: !3331, file: !2, line: 2250, type: !47)
!3338 = !DILocalVariable(name: "inflater", scope: !3331, file: !2, line: 2251, type: !906)
!3339 = !DILocation(line: 2248, column: 51, scope: !3331)
!3340 = !DILocation(line: 2249, column: 42, scope: !3331)
!3341 = !DILocation(line: 2250, column: 3, scope: !3331)
!3342 = !DILocation(line: 2250, column: 7, scope: !3331)
!3343 = !DILocation(line: 2251, column: 3, scope: !3331)
!3344 = !DILocation(line: 2251, column: 24, scope: !3331)
!3345 = !DILocation(line: 2253, column: 7, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3331, file: !2, line: 2253, column: 7)
!3347 = !DILocation(line: 2253, column: 11, scope: !3346)
!3348 = !DILocation(line: 2253, column: 7, scope: !3331)
!3349 = !DILocation(line: 2254, column: 11, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3346, file: !2, line: 2253, column: 20)
!3351 = !DILocation(line: 2254, column: 9, scope: !3350)
!3352 = !DILocation(line: 2255, column: 3, scope: !3350)
!3353 = !DILocation(line: 2257, column: 33, scope: !3331)
!3354 = !DILocation(line: 2257, column: 14, scope: !3331)
!3355 = !DILocation(line: 2257, column: 12, scope: !3331)
!3356 = !DILocation(line: 2259, column: 7, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3331, file: !2, line: 2259, column: 7)
!3358 = !DILocation(line: 2259, column: 16, scope: !3357)
!3359 = !DILocation(line: 2259, column: 7, scope: !3331)
!3360 = !DILocation(line: 2260, column: 5, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3357, file: !2, line: 2259, column: 25)
!3362 = !DILocation(line: 2263, column: 32, scope: !3331)
!3363 = !DILocation(line: 2263, column: 42, scope: !3331)
!3364 = !DILocation(line: 2263, column: 8, scope: !3331)
!3365 = !DILocation(line: 2263, column: 6, scope: !3331)
!3366 = !DILocation(line: 2265, column: 7, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3331, file: !2, line: 2265, column: 7)
!3368 = !DILocation(line: 2265, column: 10, scope: !3367)
!3369 = !DILocation(line: 2265, column: 7, scope: !3331)
!3370 = !DILocation(line: 2266, column: 22, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3367, file: !2, line: 2265, column: 16)
!3372 = !DILocation(line: 2266, column: 27, scope: !3371)
!3373 = !DILocation(line: 2266, column: 5, scope: !3371)
!3374 = !DILocation(line: 2268, column: 12, scope: !3371)
!3375 = !DILocation(line: 2268, column: 5, scope: !3371)
!3376 = !DILocation(line: 2271, column: 19, scope: !3331)
!3377 = !DILocation(line: 2271, column: 4, scope: !3331)
!3378 = !DILocation(line: 2271, column: 17, scope: !3331)
!3379 = !DILocation(line: 2273, column: 3, scope: !3331)
!3380 = !DILocation(line: 2274, column: 1, scope: !3331)
!3381 = distinct !DISubprogram(name: "nghttp2_hd_inflate_del", scope: !2, file: !2, line: 2276, type: !1065, scopeLine: 2276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3382)
!3382 = !{!3383, !3384}
!3383 = !DILocalVariable(name: "inflater", arg: 1, scope: !3381, file: !2, line: 2276, type: !906)
!3384 = !DILocalVariable(name: "mem", scope: !3381, file: !2, line: 2277, type: !734)
!3385 = !DILocation(line: 2276, column: 50, scope: !3381)
!3386 = !DILocation(line: 2277, column: 3, scope: !3381)
!3387 = !DILocation(line: 2277, column: 16, scope: !3381)
!3388 = !DILocation(line: 2279, column: 9, scope: !3381)
!3389 = !DILocation(line: 2279, column: 19, scope: !3381)
!3390 = !DILocation(line: 2279, column: 23, scope: !3381)
!3391 = !DILocation(line: 2279, column: 7, scope: !3381)
!3392 = !DILocation(line: 2280, column: 27, scope: !3381)
!3393 = !DILocation(line: 2280, column: 3, scope: !3381)
!3394 = !DILocation(line: 2282, column: 20, scope: !3381)
!3395 = !DILocation(line: 2282, column: 25, scope: !3381)
!3396 = !DILocation(line: 2282, column: 3, scope: !3381)
!3397 = !DILocation(line: 2283, column: 1, scope: !3381)
!3398 = distinct !DISubprogram(name: "nghttp2_hd_emit_indname_block", scope: !2, file: !2, line: 2285, type: !3399, scopeLine: 2286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3401)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!47, !1329, !188, !2052, !47}
!3401 = !{!3402, !3403, !3404, !3405}
!3402 = !DILocalVariable(name: "bufs", arg: 1, scope: !3398, file: !2, line: 2285, type: !1329)
!3403 = !DILocalVariable(name: "idx", arg: 2, scope: !3398, file: !2, line: 2285, type: !188)
!3404 = !DILocalVariable(name: "nv", arg: 3, scope: !3398, file: !2, line: 2286, type: !2052)
!3405 = !DILocalVariable(name: "indexing_mode", arg: 4, scope: !3398, file: !2, line: 2286, type: !47)
!3406 = !DILocation(line: 2285, column: 49, scope: !3398)
!3407 = !DILocation(line: 2285, column: 62, scope: !3398)
!3408 = !DILocation(line: 2286, column: 47, scope: !3398)
!3409 = !DILocation(line: 2286, column: 55, scope: !3398)
!3410 = !DILocation(line: 2288, column: 29, scope: !3398)
!3411 = !DILocation(line: 2288, column: 35, scope: !3398)
!3412 = !DILocation(line: 2288, column: 40, scope: !3398)
!3413 = !DILocation(line: 2288, column: 44, scope: !3398)
!3414 = !DILocation(line: 2288, column: 10, scope: !3398)
!3415 = !DILocation(line: 2288, column: 3, scope: !3398)
!3416 = distinct !DISubprogram(name: "emit_indname_block", scope: !2, file: !2, line: 1032, type: !3417, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3419)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!47, !1329, !188, !1347, !47}
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428}
!3420 = !DILocalVariable(name: "bufs", arg: 1, scope: !3416, file: !2, line: 1032, type: !1329)
!3421 = !DILocalVariable(name: "idx", arg: 2, scope: !3416, file: !2, line: 1032, type: !188)
!3422 = !DILocalVariable(name: "nv", arg: 3, scope: !3416, file: !2, line: 1033, type: !1347)
!3423 = !DILocalVariable(name: "indexing_mode", arg: 4, scope: !3416, file: !2, line: 1033, type: !47)
!3424 = !DILocalVariable(name: "rv", scope: !3416, file: !2, line: 1034, type: !47)
!3425 = !DILocalVariable(name: "bufp", scope: !3416, file: !2, line: 1035, type: !181)
!3426 = !DILocalVariable(name: "blocklen", scope: !3416, file: !2, line: 1036, type: !188)
!3427 = !DILocalVariable(name: "sb", scope: !3416, file: !2, line: 1037, type: !1474)
!3428 = !DILocalVariable(name: "prefixlen", scope: !3416, file: !2, line: 1038, type: !188)
!3429 = !DILocation(line: 1032, column: 45, scope: !3416)
!3430 = !DILocation(line: 1032, column: 58, scope: !3416)
!3431 = !DILocation(line: 1033, column: 49, scope: !3416)
!3432 = !DILocation(line: 1033, column: 57, scope: !3416)
!3433 = !DILocation(line: 1034, column: 3, scope: !3416)
!3434 = !DILocation(line: 1034, column: 7, scope: !3416)
!3435 = !DILocation(line: 1035, column: 3, scope: !3416)
!3436 = !DILocation(line: 1035, column: 12, scope: !3416)
!3437 = !DILocation(line: 1036, column: 3, scope: !3416)
!3438 = !DILocation(line: 1036, column: 10, scope: !3416)
!3439 = !DILocation(line: 1037, column: 3, scope: !3416)
!3440 = !DILocation(line: 1037, column: 11, scope: !3416)
!3441 = !DILocation(line: 1038, column: 3, scope: !3416)
!3442 = !DILocation(line: 1038, column: 10, scope: !3416)
!3443 = !DILocation(line: 1040, column: 7, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3416, file: !2, line: 1040, column: 7)
!3445 = !DILocation(line: 1040, column: 21, scope: !3444)
!3446 = !DILocation(line: 1040, column: 7, scope: !3416)
!3447 = !DILocation(line: 1041, column: 15, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3444, file: !2, line: 1040, column: 50)
!3449 = !DILocation(line: 1042, column: 3, scope: !3448)
!3450 = !DILocation(line: 1043, column: 15, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3444, file: !2, line: 1042, column: 10)
!3452 = !DILocation(line: 1046, column: 3, scope: !3416)
!3453 = !DILocation(line: 1046, column: 3, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3416, file: !2, line: 1046, column: 3)
!3455 = !DILocation(line: 1049, column: 35, scope: !3416)
!3456 = !DILocation(line: 1049, column: 39, scope: !3416)
!3457 = !DILocation(line: 1049, column: 44, scope: !3416)
!3458 = !DILocation(line: 1049, column: 14, scope: !3416)
!3459 = !DILocation(line: 1049, column: 12, scope: !3416)
!3460 = !DILocation(line: 1051, column: 20, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3416, file: !2, line: 1051, column: 7)
!3462 = !DILocation(line: 1051, column: 18, scope: !3461)
!3463 = !DILocation(line: 1051, column: 7, scope: !3416)
!3464 = !DILocation(line: 1052, column: 5, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3461, file: !2, line: 1051, column: 30)
!3466 = !DILocation(line: 1055, column: 10, scope: !3416)
!3467 = !DILocation(line: 1055, column: 8, scope: !3416)
!3468 = !DILocation(line: 1057, column: 27, scope: !3416)
!3469 = !DILocation(line: 1057, column: 11, scope: !3416)
!3470 = !DILocation(line: 1057, column: 4, scope: !3416)
!3471 = !DILocation(line: 1057, column: 9, scope: !3416)
!3472 = !DILocation(line: 1059, column: 17, scope: !3416)
!3473 = !DILocation(line: 1059, column: 23, scope: !3416)
!3474 = !DILocation(line: 1059, column: 27, scope: !3416)
!3475 = !DILocation(line: 1059, column: 32, scope: !3416)
!3476 = !DILocation(line: 1059, column: 3, scope: !3416)
!3477 = !DILocation(line: 1061, column: 25, scope: !3416)
!3478 = !DILocation(line: 1061, column: 31, scope: !3416)
!3479 = !DILocation(line: 1061, column: 35, scope: !3416)
!3480 = !DILocation(line: 1061, column: 8, scope: !3416)
!3481 = !DILocation(line: 1061, column: 6, scope: !3416)
!3482 = !DILocation(line: 1062, column: 7, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3416, file: !2, line: 1062, column: 7)
!3484 = !DILocation(line: 1062, column: 10, scope: !3483)
!3485 = !DILocation(line: 1062, column: 7, scope: !3416)
!3486 = !DILocation(line: 1063, column: 12, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3483, file: !2, line: 1062, column: 16)
!3488 = !DILocation(line: 1063, column: 5, scope: !3487)
!3489 = !DILocation(line: 1066, column: 20, scope: !3416)
!3490 = !DILocation(line: 1066, column: 26, scope: !3416)
!3491 = !DILocation(line: 1066, column: 30, scope: !3416)
!3492 = !DILocation(line: 1066, column: 37, scope: !3416)
!3493 = !DILocation(line: 1066, column: 41, scope: !3416)
!3494 = !DILocation(line: 1066, column: 8, scope: !3416)
!3495 = !DILocation(line: 1066, column: 6, scope: !3416)
!3496 = !DILocation(line: 1067, column: 7, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3416, file: !2, line: 1067, column: 7)
!3498 = !DILocation(line: 1067, column: 10, scope: !3497)
!3499 = !DILocation(line: 1067, column: 7, scope: !3416)
!3500 = !DILocation(line: 1068, column: 12, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3497, file: !2, line: 1067, column: 16)
!3502 = !DILocation(line: 1068, column: 5, scope: !3501)
!3503 = !DILocation(line: 1071, column: 3, scope: !3416)
!3504 = !DILocation(line: 1072, column: 1, scope: !3416)
!3505 = distinct !DISubprogram(name: "nghttp2_hd_emit_newname_block", scope: !2, file: !2, line: 2291, type: !3506, scopeLine: 2292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3508)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!47, !1329, !2052, !47}
!3508 = !{!3509, !3510, !3511}
!3509 = !DILocalVariable(name: "bufs", arg: 1, scope: !3505, file: !2, line: 2291, type: !1329)
!3510 = !DILocalVariable(name: "nv", arg: 2, scope: !3505, file: !2, line: 2291, type: !2052)
!3511 = !DILocalVariable(name: "indexing_mode", arg: 3, scope: !3505, file: !2, line: 2292, type: !47)
!3512 = !DILocation(line: 2291, column: 49, scope: !3505)
!3513 = !DILocation(line: 2291, column: 67, scope: !3505)
!3514 = !DILocation(line: 2292, column: 39, scope: !3505)
!3515 = !DILocation(line: 2293, column: 29, scope: !3505)
!3516 = !DILocation(line: 2293, column: 35, scope: !3505)
!3517 = !DILocation(line: 2293, column: 39, scope: !3505)
!3518 = !DILocation(line: 2293, column: 10, scope: !3505)
!3519 = !DILocation(line: 2293, column: 3, scope: !3505)
!3520 = distinct !DISubprogram(name: "emit_newname_block", scope: !2, file: !2, line: 1074, type: !3521, scopeLine: 1075, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3523)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!47, !1329, !1347, !47}
!3523 = !{!3524, !3525, !3526, !3527}
!3524 = !DILocalVariable(name: "bufs", arg: 1, scope: !3520, file: !2, line: 1074, type: !1329)
!3525 = !DILocalVariable(name: "nv", arg: 2, scope: !3520, file: !2, line: 1074, type: !1347)
!3526 = !DILocalVariable(name: "indexing_mode", arg: 3, scope: !3520, file: !2, line: 1075, type: !47)
!3527 = !DILocalVariable(name: "rv", scope: !3520, file: !2, line: 1076, type: !47)
!3528 = !DILocation(line: 1074, column: 45, scope: !3520)
!3529 = !DILocation(line: 1074, column: 69, scope: !3520)
!3530 = !DILocation(line: 1075, column: 35, scope: !3520)
!3531 = !DILocation(line: 1076, column: 3, scope: !3520)
!3532 = !DILocation(line: 1076, column: 7, scope: !3520)
!3533 = !DILocation(line: 1078, column: 3, scope: !3520)
!3534 = !DILocation(line: 1078, column: 3, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3520, file: !2, line: 1078, column: 3)
!3536 = !DILocation(line: 1082, column: 26, scope: !3520)
!3537 = !DILocation(line: 1082, column: 48, scope: !3520)
!3538 = !DILocation(line: 1082, column: 32, scope: !3520)
!3539 = !DILocation(line: 1082, column: 8, scope: !3520)
!3540 = !DILocation(line: 1082, column: 6, scope: !3520)
!3541 = !DILocation(line: 1083, column: 7, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3520, file: !2, line: 1083, column: 7)
!3543 = !DILocation(line: 1083, column: 10, scope: !3542)
!3544 = !DILocation(line: 1083, column: 7, scope: !3520)
!3545 = !DILocation(line: 1084, column: 12, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3542, file: !2, line: 1083, column: 16)
!3547 = !DILocation(line: 1084, column: 5, scope: !3546)
!3548 = !DILocation(line: 1087, column: 20, scope: !3520)
!3549 = !DILocation(line: 1087, column: 26, scope: !3520)
!3550 = !DILocation(line: 1087, column: 30, scope: !3520)
!3551 = !DILocation(line: 1087, column: 36, scope: !3520)
!3552 = !DILocation(line: 1087, column: 40, scope: !3520)
!3553 = !DILocation(line: 1087, column: 8, scope: !3520)
!3554 = !DILocation(line: 1087, column: 6, scope: !3520)
!3555 = !DILocation(line: 1088, column: 7, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3520, file: !2, line: 1088, column: 7)
!3557 = !DILocation(line: 1088, column: 10, scope: !3556)
!3558 = !DILocation(line: 1088, column: 7, scope: !3520)
!3559 = !DILocation(line: 1089, column: 12, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3556, file: !2, line: 1088, column: 16)
!3561 = !DILocation(line: 1089, column: 5, scope: !3560)
!3562 = !DILocation(line: 1092, column: 20, scope: !3520)
!3563 = !DILocation(line: 1092, column: 26, scope: !3520)
!3564 = !DILocation(line: 1092, column: 30, scope: !3520)
!3565 = !DILocation(line: 1092, column: 37, scope: !3520)
!3566 = !DILocation(line: 1092, column: 41, scope: !3520)
!3567 = !DILocation(line: 1092, column: 8, scope: !3520)
!3568 = !DILocation(line: 1092, column: 6, scope: !3520)
!3569 = !DILocation(line: 1093, column: 7, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3520, file: !2, line: 1093, column: 7)
!3571 = !DILocation(line: 1093, column: 10, scope: !3570)
!3572 = !DILocation(line: 1093, column: 7, scope: !3520)
!3573 = !DILocation(line: 1094, column: 12, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3570, file: !2, line: 1093, column: 16)
!3575 = !DILocation(line: 1094, column: 5, scope: !3574)
!3576 = !DILocation(line: 1097, column: 3, scope: !3520)
!3577 = !DILocation(line: 1098, column: 1, scope: !3520)
!3578 = distinct !DISubprogram(name: "nghttp2_hd_emit_table_size", scope: !2, file: !2, line: 2296, type: !1465, scopeLine: 2296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3579)
!3579 = !{!3580, !3581}
!3580 = !DILocalVariable(name: "bufs", arg: 1, scope: !3578, file: !2, line: 2296, type: !1329)
!3581 = !DILocalVariable(name: "table_size", arg: 2, scope: !3578, file: !2, line: 2296, type: !188)
!3582 = !DILocation(line: 2296, column: 46, scope: !3578)
!3583 = !DILocation(line: 2296, column: 59, scope: !3578)
!3584 = !DILocation(line: 2297, column: 26, scope: !3578)
!3585 = !DILocation(line: 2297, column: 32, scope: !3578)
!3586 = !DILocation(line: 2297, column: 10, scope: !3578)
!3587 = !DILocation(line: 2297, column: 3, scope: !3578)
!3588 = distinct !DISubprogram(name: "nghttp2_hd_decode_length", scope: !2, file: !2, line: 2300, type: !3589, scopeLine: 2302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3593)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!195, !3591, !3592, !2053, !199, !188, !181, !181, !188}
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!3593 = !{!3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601}
!3594 = !DILocalVariable(name: "res", arg: 1, scope: !3588, file: !2, line: 2300, type: !3591)
!3595 = !DILocalVariable(name: "shift_ptr", arg: 2, scope: !3588, file: !2, line: 2300, type: !3592)
!3596 = !DILocalVariable(name: "fin", arg: 3, scope: !3588, file: !2, line: 2300, type: !2053)
!3597 = !DILocalVariable(name: "initial", arg: 4, scope: !3588, file: !2, line: 2301, type: !199)
!3598 = !DILocalVariable(name: "shift", arg: 5, scope: !3588, file: !2, line: 2301, type: !188)
!3599 = !DILocalVariable(name: "in", arg: 6, scope: !3588, file: !2, line: 2301, type: !181)
!3600 = !DILocalVariable(name: "last", arg: 7, scope: !3588, file: !2, line: 2302, type: !181)
!3601 = !DILocalVariable(name: "prefix", arg: 8, scope: !3588, file: !2, line: 2302, type: !188)
!3602 = !DILocation(line: 2300, column: 44, scope: !3588)
!3603 = !DILocation(line: 2300, column: 57, scope: !3588)
!3604 = !DILocation(line: 2300, column: 73, scope: !3588)
!3605 = !DILocation(line: 2301, column: 43, scope: !3588)
!3606 = !DILocation(line: 2301, column: 59, scope: !3588)
!3607 = !DILocation(line: 2301, column: 75, scope: !3588)
!3608 = !DILocation(line: 2302, column: 43, scope: !3588)
!3609 = !DILocation(line: 2302, column: 56, scope: !3588)
!3610 = !DILocation(line: 2303, column: 24, scope: !3588)
!3611 = !DILocation(line: 2303, column: 29, scope: !3588)
!3612 = !DILocation(line: 2303, column: 40, scope: !3588)
!3613 = !DILocation(line: 2303, column: 45, scope: !3588)
!3614 = !DILocation(line: 2303, column: 54, scope: !3588)
!3615 = !DILocation(line: 2303, column: 61, scope: !3588)
!3616 = !DILocation(line: 2303, column: 65, scope: !3588)
!3617 = !DILocation(line: 2303, column: 71, scope: !3588)
!3618 = !DILocation(line: 2303, column: 10, scope: !3588)
!3619 = !DILocation(line: 2303, column: 3, scope: !3588)
!3620 = distinct !DISubprogram(name: "decode_length", scope: !2, file: !2, line: 853, type: !3621, scopeLine: 855, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3623)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!195, !3591, !3592, !2053, !199, !188, !2078, !2078, !188}
!3623 = !{!3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635}
!3624 = !DILocalVariable(name: "res", arg: 1, scope: !3620, file: !2, line: 853, type: !3591)
!3625 = !DILocalVariable(name: "shift_ptr", arg: 2, scope: !3620, file: !2, line: 853, type: !3592)
!3626 = !DILocalVariable(name: "fin", arg: 3, scope: !3620, file: !2, line: 853, type: !2053)
!3627 = !DILocalVariable(name: "initial", arg: 4, scope: !3620, file: !2, line: 854, type: !199)
!3628 = !DILocalVariable(name: "shift", arg: 5, scope: !3620, file: !2, line: 854, type: !188)
!3629 = !DILocalVariable(name: "in", arg: 6, scope: !3620, file: !2, line: 854, type: !2078)
!3630 = !DILocalVariable(name: "last", arg: 7, scope: !3620, file: !2, line: 855, type: !2078)
!3631 = !DILocalVariable(name: "prefix", arg: 8, scope: !3620, file: !2, line: 855, type: !188)
!3632 = !DILocalVariable(name: "k", scope: !3620, file: !2, line: 856, type: !199)
!3633 = !DILocalVariable(name: "n", scope: !3620, file: !2, line: 857, type: !199)
!3634 = !DILocalVariable(name: "start", scope: !3620, file: !2, line: 858, type: !2078)
!3635 = !DILocalVariable(name: "add", scope: !3636, file: !2, line: 879, type: !199)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !2, line: 878, column: 40)
!3637 = distinct !DILexicalBlock(scope: !3638, file: !2, line: 878, column: 3)
!3638 = distinct !DILexicalBlock(scope: !3620, file: !2, line: 878, column: 3)
!3639 = !DILocation(line: 853, column: 40, scope: !3620)
!3640 = !DILocation(line: 853, column: 53, scope: !3620)
!3641 = !DILocation(line: 853, column: 69, scope: !3620)
!3642 = !DILocation(line: 854, column: 39, scope: !3620)
!3643 = !DILocation(line: 854, column: 55, scope: !3620)
!3644 = !DILocation(line: 854, column: 77, scope: !3620)
!3645 = !DILocation(line: 855, column: 45, scope: !3620)
!3646 = !DILocation(line: 855, column: 58, scope: !3620)
!3647 = !DILocation(line: 856, column: 3, scope: !3620)
!3648 = !DILocation(line: 856, column: 12, scope: !3620)
!3649 = !DILocation(line: 856, column: 32, scope: !3620)
!3650 = !DILocation(line: 856, column: 29, scope: !3620)
!3651 = !DILocation(line: 856, column: 40, scope: !3620)
!3652 = !DILocation(line: 856, column: 16, scope: !3620)
!3653 = !DILocation(line: 857, column: 3, scope: !3620)
!3654 = !DILocation(line: 857, column: 12, scope: !3620)
!3655 = !DILocation(line: 857, column: 16, scope: !3620)
!3656 = !DILocation(line: 858, column: 3, scope: !3620)
!3657 = !DILocation(line: 858, column: 18, scope: !3620)
!3658 = !DILocation(line: 858, column: 26, scope: !3620)
!3659 = !DILocation(line: 860, column: 4, scope: !3620)
!3660 = !DILocation(line: 860, column: 14, scope: !3620)
!3661 = !DILocation(line: 861, column: 4, scope: !3620)
!3662 = !DILocation(line: 861, column: 8, scope: !3620)
!3663 = !DILocation(line: 863, column: 7, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3620, file: !2, line: 863, column: 7)
!3665 = !DILocation(line: 863, column: 9, scope: !3664)
!3666 = !DILocation(line: 863, column: 7, scope: !3620)
!3667 = !DILocation(line: 864, column: 11, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !2, line: 864, column: 9)
!3669 = distinct !DILexicalBlock(scope: !3664, file: !2, line: 863, column: 15)
!3670 = !DILocation(line: 864, column: 10, scope: !3668)
!3671 = !DILocation(line: 864, column: 16, scope: !3668)
!3672 = !DILocation(line: 864, column: 14, scope: !3668)
!3673 = !DILocation(line: 864, column: 22, scope: !3668)
!3674 = !DILocation(line: 864, column: 19, scope: !3668)
!3675 = !DILocation(line: 864, column: 9, scope: !3669)
!3676 = !DILocation(line: 865, column: 16, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3668, file: !2, line: 864, column: 25)
!3678 = !DILocation(line: 865, column: 15, scope: !3677)
!3679 = !DILocation(line: 865, column: 14, scope: !3677)
!3680 = !DILocation(line: 865, column: 22, scope: !3677)
!3681 = !DILocation(line: 865, column: 20, scope: !3677)
!3682 = !DILocation(line: 865, column: 8, scope: !3677)
!3683 = !DILocation(line: 865, column: 12, scope: !3677)
!3684 = !DILocation(line: 866, column: 8, scope: !3677)
!3685 = !DILocation(line: 866, column: 12, scope: !3677)
!3686 = !DILocation(line: 867, column: 7, scope: !3677)
!3687 = !DILocation(line: 870, column: 9, scope: !3669)
!3688 = !DILocation(line: 870, column: 7, scope: !3669)
!3689 = !DILocation(line: 872, column: 9, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3669, file: !2, line: 872, column: 9)
!3691 = !DILocation(line: 872, column: 17, scope: !3690)
!3692 = !DILocation(line: 872, column: 14, scope: !3690)
!3693 = !DILocation(line: 872, column: 9, scope: !3669)
!3694 = !DILocation(line: 873, column: 14, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3690, file: !2, line: 872, column: 23)
!3696 = !DILocation(line: 873, column: 8, scope: !3695)
!3697 = !DILocation(line: 873, column: 12, scope: !3695)
!3698 = !DILocation(line: 874, column: 24, scope: !3695)
!3699 = !DILocation(line: 874, column: 29, scope: !3695)
!3700 = !DILocation(line: 874, column: 27, scope: !3695)
!3701 = !DILocation(line: 874, column: 7, scope: !3695)
!3702 = !DILocation(line: 876, column: 3, scope: !3669)
!3703 = !DILocation(line: 878, column: 3, scope: !3620)
!3704 = !DILocation(line: 878, column: 10, scope: !3637)
!3705 = !DILocation(line: 878, column: 16, scope: !3637)
!3706 = !DILocation(line: 878, column: 13, scope: !3637)
!3707 = !DILocation(line: 878, column: 3, scope: !3638)
!3708 = !DILocation(line: 879, column: 5, scope: !3636)
!3709 = !DILocation(line: 879, column: 14, scope: !3636)
!3710 = !DILocation(line: 879, column: 21, scope: !3636)
!3711 = !DILocation(line: 879, column: 20, scope: !3636)
!3712 = !DILocation(line: 879, column: 24, scope: !3636)
!3713 = !DILocation(line: 881, column: 9, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3636, file: !2, line: 881, column: 9)
!3715 = !DILocation(line: 881, column: 15, scope: !3714)
!3716 = !DILocation(line: 881, column: 9, scope: !3636)
!3717 = !DILocation(line: 882, column: 7, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3714, file: !2, line: 881, column: 22)
!3719 = !DILocation(line: 882, column: 7, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3718, file: !2, line: 882, column: 7)
!3721 = !DILocation(line: 883, column: 7, scope: !3718)
!3722 = !DILocation(line: 886, column: 24, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3636, file: !2, line: 886, column: 9)
!3724 = !DILocation(line: 886, column: 21, scope: !3723)
!3725 = !DILocation(line: 886, column: 33, scope: !3723)
!3726 = !DILocation(line: 886, column: 31, scope: !3723)
!3727 = !DILocation(line: 886, column: 9, scope: !3636)
!3728 = !DILocation(line: 887, column: 7, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3723, file: !2, line: 886, column: 38)
!3730 = !DILocation(line: 887, column: 7, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3729, file: !2, line: 887, column: 7)
!3732 = !DILocation(line: 888, column: 7, scope: !3729)
!3733 = !DILocation(line: 891, column: 13, scope: !3636)
!3734 = !DILocation(line: 891, column: 9, scope: !3636)
!3735 = !DILocation(line: 893, column: 22, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3636, file: !2, line: 893, column: 9)
!3737 = !DILocation(line: 893, column: 20, scope: !3736)
!3738 = !DILocation(line: 893, column: 28, scope: !3736)
!3739 = !DILocation(line: 893, column: 26, scope: !3736)
!3740 = !DILocation(line: 893, column: 9, scope: !3636)
!3741 = !DILocation(line: 894, column: 7, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3736, file: !2, line: 893, column: 31)
!3743 = !DILocation(line: 894, column: 7, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3742, file: !2, line: 894, column: 7)
!3745 = !DILocation(line: 895, column: 7, scope: !3742)
!3746 = !DILocation(line: 898, column: 10, scope: !3636)
!3747 = !DILocation(line: 898, column: 7, scope: !3636)
!3748 = !DILocation(line: 900, column: 11, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3636, file: !2, line: 900, column: 9)
!3750 = !DILocation(line: 900, column: 10, scope: !3749)
!3751 = !DILocation(line: 900, column: 14, scope: !3749)
!3752 = !DILocation(line: 900, column: 26, scope: !3749)
!3753 = !DILocation(line: 900, column: 9, scope: !3636)
!3754 = !DILocation(line: 901, column: 7, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3749, file: !2, line: 900, column: 32)
!3756 = !DILocation(line: 903, column: 3, scope: !3637)
!3757 = !DILocation(line: 903, column: 3, scope: !3636)
!3758 = !DILocation(line: 878, column: 22, scope: !3637)
!3759 = !DILocation(line: 878, column: 34, scope: !3637)
!3760 = !DILocation(line: 878, column: 3, scope: !3637)
!3761 = distinct !{!3761, !3707, !3762, !1202}
!3762 = !DILocation(line: 903, column: 3, scope: !3638)
!3763 = !DILocation(line: 905, column: 16, scope: !3620)
!3764 = !DILocation(line: 905, column: 4, scope: !3620)
!3765 = !DILocation(line: 905, column: 14, scope: !3620)
!3766 = !DILocation(line: 907, column: 7, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3620, file: !2, line: 907, column: 7)
!3768 = !DILocation(line: 907, column: 13, scope: !3767)
!3769 = !DILocation(line: 907, column: 10, scope: !3767)
!3770 = !DILocation(line: 907, column: 7, scope: !3620)
!3771 = !DILocation(line: 908, column: 12, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3767, file: !2, line: 907, column: 19)
!3773 = !DILocation(line: 908, column: 6, scope: !3772)
!3774 = !DILocation(line: 908, column: 10, scope: !3772)
!3775 = !DILocation(line: 909, column: 22, scope: !3772)
!3776 = !DILocation(line: 909, column: 27, scope: !3772)
!3777 = !DILocation(line: 909, column: 25, scope: !3772)
!3778 = !DILocation(line: 909, column: 5, scope: !3772)
!3779 = !DILocation(line: 912, column: 10, scope: !3620)
!3780 = !DILocation(line: 912, column: 4, scope: !3620)
!3781 = !DILocation(line: 912, column: 8, scope: !3620)
!3782 = !DILocation(line: 913, column: 4, scope: !3620)
!3783 = !DILocation(line: 913, column: 8, scope: !3620)
!3784 = !DILocation(line: 914, column: 20, scope: !3620)
!3785 = !DILocation(line: 914, column: 23, scope: !3620)
!3786 = !DILocation(line: 914, column: 29, scope: !3620)
!3787 = !DILocation(line: 914, column: 27, scope: !3620)
!3788 = !DILocation(line: 914, column: 3, scope: !3620)
!3789 = !DILocation(line: 915, column: 1, scope: !3620)
!3790 = distinct !DISubprogram(name: "nghttp2_hd_deflate_get_num_table_entries", scope: !2, file: !2, line: 2321, type: !3791, scopeLine: 2321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3793)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!188, !716}
!3793 = !{!3794}
!3794 = !DILocalVariable(name: "deflater", arg: 1, scope: !3790, file: !2, line: 2321, type: !716)
!3795 = !DILocation(line: 2321, column: 70, scope: !3790)
!3796 = !DILocation(line: 2322, column: 25, scope: !3790)
!3797 = !DILocation(line: 2322, column: 35, scope: !3790)
!3798 = !DILocation(line: 2322, column: 10, scope: !3790)
!3799 = !DILocation(line: 2322, column: 3, scope: !3790)
!3800 = distinct !DISubprogram(name: "nghttp2_hd_deflate_get_table_entry", scope: !2, file: !2, line: 2326, type: !3801, scopeLine: 2326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3803)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!1347, !716, !188}
!3803 = !{!3804, !3805}
!3804 = !DILocalVariable(name: "deflater", arg: 1, scope: !3800, file: !2, line: 2326, type: !716)
!3805 = !DILocalVariable(name: "idx", arg: 2, scope: !3800, file: !2, line: 2326, type: !188)
!3806 = !DILocation(line: 2326, column: 57, scope: !3800)
!3807 = !DILocation(line: 2326, column: 74, scope: !3800)
!3808 = !DILocation(line: 2327, column: 30, scope: !3800)
!3809 = !DILocation(line: 2327, column: 40, scope: !3800)
!3810 = !DILocation(line: 2327, column: 45, scope: !3800)
!3811 = !DILocation(line: 2327, column: 10, scope: !3800)
!3812 = !DILocation(line: 2327, column: 3, scope: !3800)
!3813 = distinct !DISubprogram(name: "hd_get_table_entry", scope: !2, file: !2, line: 2306, type: !3814, scopeLine: 2307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3816)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!1347, !846, !188}
!3816 = !{!3817, !3818}
!3817 = !DILocalVariable(name: "context", arg: 1, scope: !3813, file: !2, line: 2306, type: !846)
!3818 = !DILocalVariable(name: "idx", arg: 2, scope: !3813, file: !2, line: 2307, type: !188)
!3819 = !DILocation(line: 2306, column: 65, scope: !3813)
!3820 = !DILocation(line: 2307, column: 52, scope: !3813)
!3821 = !DILocation(line: 2308, column: 7, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3813, file: !2, line: 2308, column: 7)
!3823 = !DILocation(line: 2308, column: 11, scope: !3822)
!3824 = !DILocation(line: 2308, column: 7, scope: !3813)
!3825 = !DILocation(line: 2309, column: 5, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3822, file: !2, line: 2308, column: 17)
!3827 = !DILocation(line: 2312, column: 3, scope: !3813)
!3828 = !DILocation(line: 2314, column: 8, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3813, file: !2, line: 2314, column: 7)
!3830 = !DILocation(line: 2314, column: 7, scope: !3813)
!3831 = !DILocation(line: 2315, column: 5, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3829, file: !2, line: 2314, column: 41)
!3833 = !DILocation(line: 2318, column: 32, scope: !3813)
!3834 = !DILocation(line: 2318, column: 41, scope: !3813)
!3835 = !DILocation(line: 2318, column: 10, scope: !3813)
!3836 = !DILocation(line: 2318, column: 3, scope: !3813)
!3837 = !DILocation(line: 2319, column: 1, scope: !3813)
!3838 = distinct !DISubprogram(name: "nghttp2_hd_deflate_get_dynamic_table_size", scope: !2, file: !2, line: 2331, type: !3791, scopeLine: 2331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3839)
!3839 = !{!3840}
!3840 = !DILocalVariable(name: "deflater", arg: 1, scope: !3838, file: !2, line: 2331, type: !716)
!3841 = !DILocation(line: 2331, column: 64, scope: !3838)
!3842 = !DILocation(line: 2332, column: 10, scope: !3838)
!3843 = !DILocation(line: 2332, column: 20, scope: !3838)
!3844 = !DILocation(line: 2332, column: 24, scope: !3838)
!3845 = !{!817, !633, i64 40}
!3846 = !DILocation(line: 2332, column: 3, scope: !3838)
!3847 = distinct !DISubprogram(name: "nghttp2_hd_deflate_get_max_dynamic_table_size", scope: !2, file: !2, line: 2336, type: !3791, scopeLine: 2336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3848)
!3848 = !{!3849}
!3849 = !DILocalVariable(name: "deflater", arg: 1, scope: !3847, file: !2, line: 2336, type: !716)
!3850 = !DILocation(line: 2336, column: 68, scope: !3847)
!3851 = !DILocation(line: 2337, column: 10, scope: !3847)
!3852 = !DILocation(line: 2337, column: 20, scope: !3847)
!3853 = !DILocation(line: 2337, column: 24, scope: !3847)
!3854 = !DILocation(line: 2337, column: 3, scope: !3847)
!3855 = distinct !DISubprogram(name: "nghttp2_hd_inflate_get_num_table_entries", scope: !2, file: !2, line: 2340, type: !3856, scopeLine: 2340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3858)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!188, !906}
!3858 = !{!3859}
!3859 = !DILocalVariable(name: "inflater", arg: 1, scope: !3855, file: !2, line: 2340, type: !906)
!3860 = !DILocation(line: 2340, column: 70, scope: !3855)
!3861 = !DILocation(line: 2341, column: 25, scope: !3855)
!3862 = !DILocation(line: 2341, column: 35, scope: !3855)
!3863 = !DILocation(line: 2341, column: 10, scope: !3855)
!3864 = !DILocation(line: 2341, column: 3, scope: !3855)
!3865 = distinct !DISubprogram(name: "nghttp2_hd_inflate_get_table_entry", scope: !2, file: !2, line: 2345, type: !3866, scopeLine: 2345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3868)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!1347, !906, !188}
!3868 = !{!3869, !3870}
!3869 = !DILocalVariable(name: "inflater", arg: 1, scope: !3865, file: !2, line: 2345, type: !906)
!3870 = !DILocalVariable(name: "idx", arg: 2, scope: !3865, file: !2, line: 2345, type: !188)
!3871 = !DILocation(line: 2345, column: 57, scope: !3865)
!3872 = !DILocation(line: 2345, column: 74, scope: !3865)
!3873 = !DILocation(line: 2346, column: 30, scope: !3865)
!3874 = !DILocation(line: 2346, column: 40, scope: !3865)
!3875 = !DILocation(line: 2346, column: 45, scope: !3865)
!3876 = !DILocation(line: 2346, column: 10, scope: !3865)
!3877 = !DILocation(line: 2346, column: 3, scope: !3865)
!3878 = distinct !DISubprogram(name: "nghttp2_hd_inflate_get_dynamic_table_size", scope: !2, file: !2, line: 2350, type: !3856, scopeLine: 2350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3879)
!3879 = !{!3880}
!3880 = !DILocalVariable(name: "inflater", arg: 1, scope: !3878, file: !2, line: 2350, type: !906)
!3881 = !DILocation(line: 2350, column: 64, scope: !3878)
!3882 = !DILocation(line: 2351, column: 10, scope: !3878)
!3883 = !DILocation(line: 2351, column: 20, scope: !3878)
!3884 = !DILocation(line: 2351, column: 24, scope: !3878)
!3885 = !{!971, !633, i64 40}
!3886 = !DILocation(line: 2351, column: 3, scope: !3878)
!3887 = distinct !DISubprogram(name: "nghttp2_hd_inflate_get_max_dynamic_table_size", scope: !2, file: !2, line: 2355, type: !3856, scopeLine: 2355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3888)
!3888 = !{!3889}
!3889 = !DILocalVariable(name: "inflater", arg: 1, scope: !3887, file: !2, line: 2355, type: !906)
!3890 = !DILocation(line: 2355, column: 68, scope: !3887)
!3891 = !DILocation(line: 2356, column: 10, scope: !3887)
!3892 = !DILocation(line: 2356, column: 20, scope: !3887)
!3893 = !DILocation(line: 2356, column: 24, scope: !3887)
!3894 = !DILocation(line: 2356, column: 3, scope: !3887)
!3895 = distinct !DISubprogram(name: "hd_ringbuf_init", scope: !2, file: !2, line: 593, type: !3896, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3898)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!47, !1302, !188, !734}
!3898 = !{!3899, !3900, !3901, !3902}
!3899 = !DILocalVariable(name: "ringbuf", arg: 1, scope: !3895, file: !2, line: 593, type: !1302)
!3900 = !DILocalVariable(name: "bufsize", arg: 2, scope: !3895, file: !2, line: 593, type: !188)
!3901 = !DILocalVariable(name: "mem", arg: 3, scope: !3895, file: !2, line: 594, type: !734)
!3902 = !DILocalVariable(name: "size", scope: !3895, file: !2, line: 595, type: !188)
!3903 = !DILocation(line: 593, column: 48, scope: !3895)
!3904 = !DILocation(line: 593, column: 64, scope: !3895)
!3905 = !DILocation(line: 594, column: 41, scope: !3895)
!3906 = !DILocation(line: 595, column: 3, scope: !3895)
!3907 = !DILocation(line: 595, column: 10, scope: !3895)
!3908 = !DILocation(line: 596, column: 13, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3895, file: !2, line: 596, column: 3)
!3910 = !DILocation(line: 596, column: 8, scope: !3909)
!3911 = !DILocation(line: 596, column: 18, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3909, file: !2, line: 596, column: 3)
!3913 = !DILocation(line: 596, column: 25, scope: !3912)
!3914 = !DILocation(line: 596, column: 23, scope: !3912)
!3915 = !DILocation(line: 596, column: 3, scope: !3909)
!3916 = !DILocation(line: 596, column: 39, scope: !3912)
!3917 = !DILocation(line: 596, column: 3, scope: !3912)
!3918 = distinct !{!3918, !3915, !3919, !1202}
!3919 = !DILocation(line: 597, column: 5, scope: !3909)
!3920 = !DILocation(line: 598, column: 40, scope: !3895)
!3921 = !DILocation(line: 598, column: 74, scope: !3895)
!3922 = !DILocation(line: 598, column: 72, scope: !3895)
!3923 = !DILocation(line: 598, column: 21, scope: !3895)
!3924 = !DILocation(line: 598, column: 3, scope: !3895)
!3925 = !DILocation(line: 598, column: 12, scope: !3895)
!3926 = !DILocation(line: 598, column: 19, scope: !3895)
!3927 = !DILocation(line: 599, column: 7, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3895, file: !2, line: 599, column: 7)
!3929 = !DILocation(line: 599, column: 16, scope: !3928)
!3930 = !DILocation(line: 599, column: 23, scope: !3928)
!3931 = !DILocation(line: 599, column: 7, scope: !3895)
!3932 = !DILocation(line: 600, column: 5, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3928, file: !2, line: 599, column: 32)
!3934 = !DILocation(line: 602, column: 19, scope: !3895)
!3935 = !DILocation(line: 602, column: 24, scope: !3895)
!3936 = !DILocation(line: 602, column: 3, scope: !3895)
!3937 = !DILocation(line: 602, column: 12, scope: !3895)
!3938 = !DILocation(line: 602, column: 17, scope: !3895)
!3939 = !DILocation(line: 603, column: 3, scope: !3895)
!3940 = !DILocation(line: 603, column: 12, scope: !3895)
!3941 = !DILocation(line: 603, column: 18, scope: !3895)
!3942 = !DILocation(line: 604, column: 3, scope: !3895)
!3943 = !DILocation(line: 604, column: 12, scope: !3895)
!3944 = !DILocation(line: 604, column: 16, scope: !3895)
!3945 = !DILocation(line: 605, column: 3, scope: !3895)
!3946 = !DILocation(line: 606, column: 1, scope: !3895)
!3947 = distinct !DISubprogram(name: "hd_ringbuf_free", scope: !2, file: !2, line: 639, type: !3948, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3950)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{null, !1302, !734}
!3950 = !{!3951, !3952, !3953, !3954}
!3951 = !DILocalVariable(name: "ringbuf", arg: 1, scope: !3947, file: !2, line: 639, type: !1302)
!3952 = !DILocalVariable(name: "mem", arg: 2, scope: !3947, file: !2, line: 639, type: !734)
!3953 = !DILocalVariable(name: "i", scope: !3947, file: !2, line: 640, type: !188)
!3954 = !DILocalVariable(name: "ent", scope: !3955, file: !2, line: 645, type: !592)
!3955 = distinct !DILexicalBlock(scope: !3956, file: !2, line: 644, column: 38)
!3956 = distinct !DILexicalBlock(scope: !3957, file: !2, line: 644, column: 3)
!3957 = distinct !DILexicalBlock(scope: !3947, file: !2, line: 644, column: 3)
!3958 = !DILocation(line: 639, column: 49, scope: !3947)
!3959 = !DILocation(line: 639, column: 71, scope: !3947)
!3960 = !DILocation(line: 640, column: 3, scope: !3947)
!3961 = !DILocation(line: 640, column: 10, scope: !3947)
!3962 = !DILocation(line: 641, column: 7, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3947, file: !2, line: 641, column: 7)
!3964 = !DILocation(line: 641, column: 15, scope: !3963)
!3965 = !DILocation(line: 641, column: 7, scope: !3947)
!3966 = !DILocation(line: 642, column: 5, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3963, file: !2, line: 641, column: 24)
!3968 = !DILocation(line: 644, column: 10, scope: !3957)
!3969 = !DILocation(line: 644, column: 8, scope: !3957)
!3970 = !DILocation(line: 644, column: 15, scope: !3956)
!3971 = !DILocation(line: 644, column: 19, scope: !3956)
!3972 = !DILocation(line: 644, column: 28, scope: !3956)
!3973 = !DILocation(line: 644, column: 17, scope: !3956)
!3974 = !DILocation(line: 644, column: 3, scope: !3957)
!3975 = !DILocation(line: 645, column: 5, scope: !3955)
!3976 = !DILocation(line: 645, column: 23, scope: !3955)
!3977 = !DILocation(line: 645, column: 44, scope: !3955)
!3978 = !DILocation(line: 645, column: 53, scope: !3955)
!3979 = !DILocation(line: 645, column: 29, scope: !3955)
!3980 = !DILocation(line: 647, column: 27, scope: !3955)
!3981 = !DILocation(line: 647, column: 5, scope: !3955)
!3982 = !DILocation(line: 648, column: 22, scope: !3955)
!3983 = !DILocation(line: 648, column: 27, scope: !3955)
!3984 = !DILocation(line: 648, column: 5, scope: !3955)
!3985 = !DILocation(line: 649, column: 3, scope: !3956)
!3986 = !DILocation(line: 649, column: 3, scope: !3955)
!3987 = !DILocation(line: 644, column: 33, scope: !3956)
!3988 = !DILocation(line: 644, column: 3, scope: !3956)
!3989 = distinct !{!3989, !3974, !3990, !1202}
!3990 = !DILocation(line: 649, column: 3, scope: !3957)
!3991 = !DILocation(line: 650, column: 20, scope: !3947)
!3992 = !DILocation(line: 650, column: 25, scope: !3947)
!3993 = !DILocation(line: 650, column: 34, scope: !3947)
!3994 = !DILocation(line: 650, column: 3, scope: !3947)
!3995 = !DILocation(line: 651, column: 1, scope: !3947)
!3996 = distinct !DISubprogram(name: "entry_room", scope: !2, file: !2, line: 782, type: !3997, scopeLine: 782, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !3999)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!188, !188, !188}
!3999 = !{!4000, !4001}
!4000 = !DILocalVariable(name: "namelen", arg: 1, scope: !3996, file: !2, line: 782, type: !188)
!4001 = !DILocalVariable(name: "valuelen", arg: 2, scope: !3996, file: !2, line: 782, type: !188)
!4002 = !DILocation(line: 782, column: 33, scope: !3996)
!4003 = !DILocation(line: 782, column: 49, scope: !3996)
!4004 = !DILocation(line: 783, column: 38, scope: !3996)
!4005 = !DILocation(line: 783, column: 36, scope: !3996)
!4006 = !DILocation(line: 783, column: 48, scope: !3996)
!4007 = !DILocation(line: 783, column: 46, scope: !3996)
!4008 = !DILocation(line: 783, column: 3, scope: !3996)
!4009 = distinct !DISubprogram(name: "hd_ringbuf_pop_back", scope: !2, file: !2, line: 669, type: !4010, scopeLine: 669, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !4012)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{null, !1302}
!4012 = !{!4013}
!4013 = !DILocalVariable(name: "ringbuf", arg: 1, scope: !4009, file: !2, line: 669, type: !1302)
!4014 = !DILocation(line: 669, column: 53, scope: !4009)
!4015 = !DILocation(line: 670, column: 3, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !2, line: 670, column: 3)
!4017 = distinct !DILexicalBlock(scope: !4009, file: !2, line: 670, column: 3)
!4018 = !DILocation(line: 670, column: 3, scope: !4017)
!4019 = !DILocation(line: 671, column: 5, scope: !4009)
!4020 = !DILocation(line: 671, column: 14, scope: !4009)
!4021 = !DILocation(line: 671, column: 3, scope: !4009)
!4022 = !DILocation(line: 672, column: 1, scope: !4009)
!4023 = distinct !DISubprogram(name: "hd_map_remove", scope: !2, file: !2, line: 577, type: !4024, scopeLine: 577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !4026)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{null, !896, !592}
!4026 = !{!4027, !4028, !4029}
!4027 = !DILocalVariable(name: "map", arg: 1, scope: !4023, file: !2, line: 577, type: !896)
!4028 = !DILocalVariable(name: "ent", arg: 2, scope: !4023, file: !2, line: 577, type: !592)
!4029 = !DILocalVariable(name: "dst", scope: !4023, file: !2, line: 578, type: !729)
!4030 = !DILocation(line: 577, column: 43, scope: !4023)
!4031 = !DILocation(line: 577, column: 66, scope: !4023)
!4032 = !DILocation(line: 578, column: 3, scope: !4023)
!4033 = !DILocation(line: 578, column: 22, scope: !4023)
!4034 = !DILocation(line: 580, column: 10, scope: !4023)
!4035 = !DILocation(line: 580, column: 15, scope: !4023)
!4036 = !DILocation(line: 580, column: 21, scope: !4023)
!4037 = !DILocation(line: 580, column: 26, scope: !4023)
!4038 = !DILocation(line: 580, column: 31, scope: !4023)
!4039 = !DILocation(line: 580, column: 7, scope: !4023)
!4040 = !DILocation(line: 582, column: 3, scope: !4023)
!4041 = !DILocation(line: 582, column: 11, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4043, file: !2, line: 582, column: 3)
!4043 = distinct !DILexicalBlock(scope: !4023, file: !2, line: 582, column: 3)
!4044 = !DILocation(line: 582, column: 10, scope: !4042)
!4045 = !DILocation(line: 582, column: 3, scope: !4043)
!4046 = !DILocation(line: 583, column: 10, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !2, line: 583, column: 9)
!4048 = distinct !DILexicalBlock(scope: !4042, file: !2, line: 582, column: 37)
!4049 = !DILocation(line: 583, column: 9, scope: !4047)
!4050 = !DILocation(line: 583, column: 17, scope: !4047)
!4051 = !DILocation(line: 583, column: 14, scope: !4047)
!4052 = !DILocation(line: 583, column: 9, scope: !4048)
!4053 = !DILocation(line: 584, column: 7, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4047, file: !2, line: 583, column: 22)
!4055 = !DILocation(line: 587, column: 12, scope: !4048)
!4056 = !DILocation(line: 587, column: 17, scope: !4048)
!4057 = !DILocation(line: 587, column: 6, scope: !4048)
!4058 = !DILocation(line: 587, column: 10, scope: !4048)
!4059 = !DILocation(line: 588, column: 5, scope: !4048)
!4060 = !DILocation(line: 588, column: 10, scope: !4048)
!4061 = !DILocation(line: 588, column: 15, scope: !4048)
!4062 = !DILocation(line: 589, column: 5, scope: !4048)
!4063 = !DILocation(line: 582, column: 25, scope: !4042)
!4064 = !DILocation(line: 582, column: 24, scope: !4042)
!4065 = !DILocation(line: 582, column: 31, scope: !4042)
!4066 = !DILocation(line: 582, column: 20, scope: !4042)
!4067 = !DILocation(line: 582, column: 3, scope: !4042)
!4068 = distinct !{!4068, !4045, !4069, !1202}
!4069 = !DILocation(line: 590, column: 3, scope: !4043)
!4070 = !DILocation(line: 591, column: 1, scope: !4023)
!4071 = distinct !DISubprogram(name: "count_encoded_length", scope: !2, file: !2, line: 794, type: !3997, scopeLine: 794, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !4072)
!4072 = !{!4073, !4074, !4075, !4076}
!4073 = !DILocalVariable(name: "n", arg: 1, scope: !4071, file: !2, line: 794, type: !188)
!4074 = !DILocalVariable(name: "prefix", arg: 2, scope: !4071, file: !2, line: 794, type: !188)
!4075 = !DILocalVariable(name: "k", scope: !4071, file: !2, line: 795, type: !188)
!4076 = !DILocalVariable(name: "len", scope: !4071, file: !2, line: 796, type: !188)
!4077 = !DILocation(line: 794, column: 43, scope: !4071)
!4078 = !DILocation(line: 794, column: 53, scope: !4071)
!4079 = !DILocation(line: 795, column: 3, scope: !4071)
!4080 = !DILocation(line: 795, column: 10, scope: !4071)
!4081 = !DILocation(line: 795, column: 29, scope: !4071)
!4082 = !DILocation(line: 795, column: 26, scope: !4071)
!4083 = !DILocation(line: 795, column: 37, scope: !4071)
!4084 = !DILocation(line: 795, column: 14, scope: !4071)
!4085 = !DILocation(line: 796, column: 3, scope: !4071)
!4086 = !DILocation(line: 796, column: 10, scope: !4071)
!4087 = !DILocation(line: 798, column: 7, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4071, file: !2, line: 798, column: 7)
!4089 = !DILocation(line: 798, column: 11, scope: !4088)
!4090 = !DILocation(line: 798, column: 9, scope: !4088)
!4091 = !DILocation(line: 798, column: 7, scope: !4071)
!4092 = !DILocation(line: 799, column: 5, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4088, file: !2, line: 798, column: 14)
!4094 = !DILocation(line: 802, column: 8, scope: !4071)
!4095 = !DILocation(line: 802, column: 5, scope: !4071)
!4096 = !DILocation(line: 803, column: 3, scope: !4071)
!4097 = !DILocation(line: 805, column: 3, scope: !4071)
!4098 = !DILocation(line: 805, column: 10, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4100, file: !2, line: 805, column: 3)
!4100 = distinct !DILexicalBlock(scope: !4071, file: !2, line: 805, column: 3)
!4101 = !DILocation(line: 805, column: 12, scope: !4099)
!4102 = !DILocation(line: 805, column: 3, scope: !4100)
!4103 = !DILocation(line: 805, column: 22, scope: !4099)
!4104 = !DILocation(line: 805, column: 29, scope: !4099)
!4105 = !DILocation(line: 805, column: 3, scope: !4099)
!4106 = distinct !{!4106, !4102, !4107, !1202}
!4107 = !DILocation(line: 806, column: 5, scope: !4100)
!4108 = !DILocation(line: 808, column: 10, scope: !4071)
!4109 = !DILocation(line: 808, column: 14, scope: !4071)
!4110 = !DILocation(line: 808, column: 3, scope: !4071)
!4111 = !DILocation(line: 809, column: 1, scope: !4071)
!4112 = distinct !DISubprogram(name: "encode_length", scope: !2, file: !2, line: 811, type: !4113, scopeLine: 811, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !4115)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!188, !181, !188, !188}
!4115 = !{!4116, !4117, !4118, !4119, !4120}
!4116 = !DILocalVariable(name: "buf", arg: 1, scope: !4112, file: !2, line: 811, type: !181)
!4117 = !DILocalVariable(name: "n", arg: 2, scope: !4112, file: !2, line: 811, type: !188)
!4118 = !DILocalVariable(name: "prefix", arg: 3, scope: !4112, file: !2, line: 811, type: !188)
!4119 = !DILocalVariable(name: "k", scope: !4112, file: !2, line: 812, type: !188)
!4120 = !DILocalVariable(name: "begin", scope: !4112, file: !2, line: 813, type: !181)
!4121 = !DILocation(line: 811, column: 38, scope: !4112)
!4122 = !DILocation(line: 811, column: 50, scope: !4112)
!4123 = !DILocation(line: 811, column: 60, scope: !4112)
!4124 = !DILocation(line: 812, column: 3, scope: !4112)
!4125 = !DILocation(line: 812, column: 10, scope: !4112)
!4126 = !DILocation(line: 812, column: 29, scope: !4112)
!4127 = !DILocation(line: 812, column: 26, scope: !4112)
!4128 = !DILocation(line: 812, column: 37, scope: !4112)
!4129 = !DILocation(line: 812, column: 14, scope: !4112)
!4130 = !DILocation(line: 813, column: 3, scope: !4112)
!4131 = !DILocation(line: 813, column: 12, scope: !4112)
!4132 = !DILocation(line: 813, column: 20, scope: !4112)
!4133 = !DILocation(line: 815, column: 21, scope: !4112)
!4134 = !DILocation(line: 815, column: 20, scope: !4112)
!4135 = !DILocation(line: 815, column: 28, scope: !4112)
!4136 = !DILocation(line: 815, column: 27, scope: !4112)
!4137 = !DILocation(line: 815, column: 25, scope: !4112)
!4138 = !DILocation(line: 815, column: 10, scope: !4112)
!4139 = !DILocation(line: 815, column: 4, scope: !4112)
!4140 = !DILocation(line: 815, column: 8, scope: !4112)
!4141 = !DILocation(line: 817, column: 7, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4112, file: !2, line: 817, column: 7)
!4143 = !DILocation(line: 817, column: 11, scope: !4142)
!4144 = !DILocation(line: 817, column: 9, scope: !4142)
!4145 = !DILocation(line: 817, column: 7, scope: !4112)
!4146 = !DILocation(line: 818, column: 23, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4142, file: !2, line: 817, column: 14)
!4148 = !DILocation(line: 818, column: 22, scope: !4147)
!4149 = !DILocation(line: 818, column: 29, scope: !4147)
!4150 = !DILocation(line: 818, column: 27, scope: !4147)
!4151 = !DILocation(line: 818, column: 12, scope: !4147)
!4152 = !DILocation(line: 818, column: 6, scope: !4147)
!4153 = !DILocation(line: 818, column: 10, scope: !4147)
!4154 = !DILocation(line: 819, column: 5, scope: !4147)
!4155 = !DILocation(line: 822, column: 21, scope: !4112)
!4156 = !DILocation(line: 822, column: 20, scope: !4112)
!4157 = !DILocation(line: 822, column: 27, scope: !4112)
!4158 = !DILocation(line: 822, column: 25, scope: !4112)
!4159 = !DILocation(line: 822, column: 10, scope: !4112)
!4160 = !DILocation(line: 822, column: 4, scope: !4112)
!4161 = !DILocation(line: 822, column: 8, scope: !4112)
!4162 = !DILocation(line: 823, column: 3, scope: !4112)
!4163 = !DILocation(line: 825, column: 8, scope: !4112)
!4164 = !DILocation(line: 825, column: 5, scope: !4112)
!4165 = !DILocation(line: 827, column: 3, scope: !4112)
!4166 = !DILocation(line: 827, column: 10, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4168, file: !2, line: 827, column: 3)
!4168 = distinct !DILexicalBlock(scope: !4112, file: !2, line: 827, column: 3)
!4169 = !DILocation(line: 827, column: 12, scope: !4167)
!4170 = !DILocation(line: 827, column: 3, scope: !4168)
!4171 = !DILocation(line: 828, column: 36, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4167, file: !2, line: 827, column: 29)
!4173 = !DILocation(line: 828, column: 38, scope: !4172)
!4174 = !DILocation(line: 828, column: 33, scope: !4172)
!4175 = !DILocation(line: 828, column: 14, scope: !4172)
!4176 = !DILocation(line: 828, column: 9, scope: !4172)
!4177 = !DILocation(line: 828, column: 12, scope: !4172)
!4178 = !DILocation(line: 829, column: 3, scope: !4172)
!4179 = !DILocation(line: 827, column: 22, scope: !4167)
!4180 = !DILocation(line: 827, column: 3, scope: !4167)
!4181 = distinct !{!4181, !4170, !4182, !1202}
!4182 = !DILocation(line: 829, column: 3, scope: !4168)
!4183 = !DILocation(line: 831, column: 21, scope: !4112)
!4184 = !DILocation(line: 831, column: 12, scope: !4112)
!4185 = !DILocation(line: 831, column: 7, scope: !4112)
!4186 = !DILocation(line: 831, column: 10, scope: !4112)
!4187 = !DILocation(line: 833, column: 19, scope: !4112)
!4188 = !DILocation(line: 833, column: 25, scope: !4112)
!4189 = !DILocation(line: 833, column: 23, scope: !4112)
!4190 = !DILocation(line: 833, column: 3, scope: !4112)
!4191 = !DILocation(line: 834, column: 1, scope: !4112)
!4192 = !DISubprogram(name: "nghttp2_bufs_add", scope: !922, file: !922, line: 272, type: !4193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!47, !1329, !4195, !188}
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4197 = distinct !DISubprogram(name: "lookup_token", scope: !2, file: !2, line: 120, type: !4198, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !4200)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!192, !2078, !188}
!4200 = !{!4201, !4202}
!4201 = !DILocalVariable(name: "name", arg: 1, scope: !4197, file: !2, line: 120, type: !2078)
!4202 = !DILocalVariable(name: "namelen", arg: 2, scope: !4197, file: !2, line: 120, type: !188)
!4203 = !DILocation(line: 120, column: 44, scope: !4197)
!4204 = !DILocation(line: 120, column: 57, scope: !4197)
!4205 = !DILocation(line: 121, column: 11, scope: !4197)
!4206 = !DILocation(line: 121, column: 3, scope: !4197)
!4207 = !DILocation(line: 123, column: 13, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4197, file: !2, line: 121, column: 20)
!4209 = !DILocation(line: 123, column: 5, scope: !4208)
!4210 = !DILocation(line: 125, column: 22, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4212, file: !2, line: 125, column: 11)
!4212 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 123, column: 22)
!4213 = !DILocation(line: 125, column: 11, scope: !4211)
!4214 = !DILocation(line: 125, column: 11, scope: !4212)
!4215 = !DILocation(line: 126, column: 9, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4211, file: !2, line: 125, column: 32)
!4217 = !DILocation(line: 128, column: 7, scope: !4212)
!4218 = !DILocation(line: 130, column: 5, scope: !4208)
!4219 = !DILocation(line: 132, column: 13, scope: !4208)
!4220 = !DILocation(line: 132, column: 5, scope: !4208)
!4221 = !DILocation(line: 134, column: 23, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4223, file: !2, line: 134, column: 11)
!4223 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 132, column: 22)
!4224 = !DILocation(line: 134, column: 11, scope: !4222)
!4225 = !DILocation(line: 134, column: 11, scope: !4223)
!4226 = !DILocation(line: 135, column: 9, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4222, file: !2, line: 134, column: 33)
!4228 = !DILocation(line: 137, column: 7, scope: !4223)
!4229 = !DILocation(line: 139, column: 23, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4223, file: !2, line: 139, column: 11)
!4231 = !DILocation(line: 139, column: 11, scope: !4230)
!4232 = !DILocation(line: 139, column: 11, scope: !4223)
!4233 = !DILocation(line: 140, column: 9, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4230, file: !2, line: 139, column: 33)
!4235 = !DILocation(line: 142, column: 7, scope: !4223)
!4236 = !DILocation(line: 144, column: 5, scope: !4208)
!4237 = !DILocation(line: 146, column: 13, scope: !4208)
!4238 = !DILocation(line: 146, column: 5, scope: !4208)
!4239 = !DILocation(line: 148, column: 24, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4241, file: !2, line: 148, column: 11)
!4241 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 146, column: 22)
!4242 = !DILocation(line: 148, column: 11, scope: !4240)
!4243 = !DILocation(line: 148, column: 11, scope: !4241)
!4244 = !DILocation(line: 149, column: 9, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4240, file: !2, line: 148, column: 34)
!4246 = !DILocation(line: 151, column: 7, scope: !4241)
!4247 = !DILocation(line: 153, column: 24, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4241, file: !2, line: 153, column: 11)
!4249 = !DILocation(line: 153, column: 11, scope: !4248)
!4250 = !DILocation(line: 153, column: 11, scope: !4241)
!4251 = !DILocation(line: 154, column: 9, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4248, file: !2, line: 153, column: 34)
!4253 = !DILocation(line: 156, column: 7, scope: !4241)
!4254 = !DILocation(line: 158, column: 24, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4241, file: !2, line: 158, column: 11)
!4256 = !DILocation(line: 158, column: 11, scope: !4255)
!4257 = !DILocation(line: 158, column: 11, scope: !4241)
!4258 = !DILocation(line: 159, column: 9, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4255, file: !2, line: 158, column: 34)
!4260 = !DILocation(line: 161, column: 7, scope: !4241)
!4261 = !DILocation(line: 163, column: 24, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4241, file: !2, line: 163, column: 11)
!4263 = !DILocation(line: 163, column: 11, scope: !4262)
!4264 = !DILocation(line: 163, column: 11, scope: !4241)
!4265 = !DILocation(line: 164, column: 9, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4262, file: !2, line: 163, column: 34)
!4267 = !DILocation(line: 166, column: 7, scope: !4241)
!4268 = !DILocation(line: 168, column: 24, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4241, file: !2, line: 168, column: 11)
!4270 = !DILocation(line: 168, column: 11, scope: !4269)
!4271 = !DILocation(line: 168, column: 11, scope: !4241)
!4272 = !DILocation(line: 169, column: 9, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4269, file: !2, line: 168, column: 34)
!4274 = !DILocation(line: 171, column: 7, scope: !4241)
!4275 = !DILocation(line: 173, column: 24, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4241, file: !2, line: 173, column: 11)
!4277 = !DILocation(line: 173, column: 11, scope: !4276)
!4278 = !DILocation(line: 173, column: 11, scope: !4241)
!4279 = !DILocation(line: 174, column: 9, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4276, file: !2, line: 173, column: 34)
!4281 = !DILocation(line: 176, column: 7, scope: !4241)
!4282 = !DILocation(line: 178, column: 5, scope: !4208)
!4283 = !DILocation(line: 180, column: 13, scope: !4208)
!4284 = !DILocation(line: 180, column: 5, scope: !4208)
!4285 = !DILocation(line: 182, column: 25, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4287, file: !2, line: 182, column: 11)
!4287 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 180, column: 22)
!4288 = !DILocation(line: 182, column: 11, scope: !4286)
!4289 = !DILocation(line: 182, column: 11, scope: !4287)
!4290 = !DILocation(line: 183, column: 9, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4286, file: !2, line: 182, column: 35)
!4292 = !DILocation(line: 185, column: 7, scope: !4287)
!4293 = !DILocation(line: 187, column: 25, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4287, file: !2, line: 187, column: 11)
!4295 = !DILocation(line: 187, column: 11, scope: !4294)
!4296 = !DILocation(line: 187, column: 11, scope: !4287)
!4297 = !DILocation(line: 188, column: 9, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4294, file: !2, line: 187, column: 35)
!4299 = !DILocation(line: 190, column: 7, scope: !4287)
!4300 = !DILocation(line: 192, column: 25, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4287, file: !2, line: 192, column: 11)
!4302 = !DILocation(line: 192, column: 11, scope: !4301)
!4303 = !DILocation(line: 192, column: 11, scope: !4287)
!4304 = !DILocation(line: 193, column: 9, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4301, file: !2, line: 192, column: 35)
!4306 = !DILocation(line: 195, column: 7, scope: !4287)
!4307 = !DILocation(line: 197, column: 5, scope: !4208)
!4308 = !DILocation(line: 199, column: 13, scope: !4208)
!4309 = !DILocation(line: 199, column: 5, scope: !4208)
!4310 = !DILocation(line: 201, column: 26, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4312, file: !2, line: 201, column: 11)
!4312 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 199, column: 22)
!4313 = !DILocation(line: 201, column: 11, scope: !4311)
!4314 = !DILocation(line: 201, column: 11, scope: !4312)
!4315 = !DILocation(line: 202, column: 9, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4311, file: !2, line: 201, column: 36)
!4317 = !DILocation(line: 204, column: 7, scope: !4312)
!4318 = !DILocation(line: 206, column: 26, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4312, file: !2, line: 206, column: 11)
!4320 = !DILocation(line: 206, column: 11, scope: !4319)
!4321 = !DILocation(line: 206, column: 11, scope: !4312)
!4322 = !DILocation(line: 207, column: 9, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4319, file: !2, line: 206, column: 36)
!4324 = !DILocation(line: 209, column: 7, scope: !4312)
!4325 = !DILocation(line: 211, column: 26, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4312, file: !2, line: 211, column: 11)
!4327 = !DILocation(line: 211, column: 11, scope: !4326)
!4328 = !DILocation(line: 211, column: 11, scope: !4312)
!4329 = !DILocation(line: 212, column: 9, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4326, file: !2, line: 211, column: 36)
!4331 = !DILocation(line: 214, column: 26, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4312, file: !2, line: 214, column: 11)
!4333 = !DILocation(line: 214, column: 11, scope: !4332)
!4334 = !DILocation(line: 214, column: 11, scope: !4312)
!4335 = !DILocation(line: 215, column: 9, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4332, file: !2, line: 214, column: 36)
!4337 = !DILocation(line: 217, column: 7, scope: !4312)
!4338 = !DILocation(line: 219, column: 5, scope: !4208)
!4339 = !DILocation(line: 221, column: 13, scope: !4208)
!4340 = !DILocation(line: 221, column: 5, scope: !4208)
!4341 = !DILocation(line: 223, column: 27, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4343, file: !2, line: 223, column: 11)
!4343 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 221, column: 22)
!4344 = !DILocation(line: 223, column: 11, scope: !4342)
!4345 = !DILocation(line: 223, column: 11, scope: !4343)
!4346 = !DILocation(line: 224, column: 9, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4342, file: !2, line: 223, column: 37)
!4348 = !DILocation(line: 226, column: 7, scope: !4343)
!4349 = !DILocation(line: 228, column: 27, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4343, file: !2, line: 228, column: 11)
!4351 = !DILocation(line: 228, column: 11, scope: !4350)
!4352 = !DILocation(line: 228, column: 11, scope: !4343)
!4353 = !DILocation(line: 229, column: 9, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4350, file: !2, line: 228, column: 37)
!4355 = !DILocation(line: 231, column: 27, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4343, file: !2, line: 231, column: 11)
!4357 = !DILocation(line: 231, column: 11, scope: !4356)
!4358 = !DILocation(line: 231, column: 11, scope: !4343)
!4359 = !DILocation(line: 232, column: 9, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4356, file: !2, line: 231, column: 37)
!4361 = !DILocation(line: 234, column: 7, scope: !4343)
!4362 = !DILocation(line: 236, column: 27, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4343, file: !2, line: 236, column: 11)
!4364 = !DILocation(line: 236, column: 11, scope: !4363)
!4365 = !DILocation(line: 236, column: 11, scope: !4343)
!4366 = !DILocation(line: 237, column: 9, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4363, file: !2, line: 236, column: 37)
!4368 = !DILocation(line: 239, column: 7, scope: !4343)
!4369 = !DILocation(line: 241, column: 27, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4343, file: !2, line: 241, column: 11)
!4371 = !DILocation(line: 241, column: 11, scope: !4370)
!4372 = !DILocation(line: 241, column: 11, scope: !4343)
!4373 = !DILocation(line: 242, column: 9, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4370, file: !2, line: 241, column: 37)
!4375 = !DILocation(line: 244, column: 7, scope: !4343)
!4376 = !DILocation(line: 246, column: 27, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4343, file: !2, line: 246, column: 11)
!4378 = !DILocation(line: 246, column: 11, scope: !4377)
!4379 = !DILocation(line: 246, column: 11, scope: !4343)
!4380 = !DILocation(line: 247, column: 9, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4377, file: !2, line: 246, column: 37)
!4382 = !DILocation(line: 249, column: 27, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4343, file: !2, line: 249, column: 11)
!4384 = !DILocation(line: 249, column: 11, scope: !4383)
!4385 = !DILocation(line: 249, column: 11, scope: !4343)
!4386 = !DILocation(line: 250, column: 9, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4383, file: !2, line: 249, column: 37)
!4388 = !DILocation(line: 252, column: 7, scope: !4343)
!4389 = !DILocation(line: 254, column: 5, scope: !4208)
!4390 = !DILocation(line: 256, column: 13, scope: !4208)
!4391 = !DILocation(line: 256, column: 5, scope: !4208)
!4392 = !DILocation(line: 258, column: 28, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4394, file: !2, line: 258, column: 11)
!4394 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 256, column: 22)
!4395 = !DILocation(line: 258, column: 11, scope: !4393)
!4396 = !DILocation(line: 258, column: 11, scope: !4394)
!4397 = !DILocation(line: 259, column: 9, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4393, file: !2, line: 258, column: 38)
!4399 = !DILocation(line: 261, column: 7, scope: !4394)
!4400 = !DILocation(line: 263, column: 28, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4394, file: !2, line: 263, column: 11)
!4402 = !DILocation(line: 263, column: 11, scope: !4401)
!4403 = !DILocation(line: 263, column: 11, scope: !4394)
!4404 = !DILocation(line: 264, column: 9, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4401, file: !2, line: 263, column: 38)
!4406 = !DILocation(line: 266, column: 7, scope: !4394)
!4407 = !DILocation(line: 268, column: 28, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4394, file: !2, line: 268, column: 11)
!4409 = !DILocation(line: 268, column: 11, scope: !4408)
!4410 = !DILocation(line: 268, column: 11, scope: !4394)
!4411 = !DILocation(line: 269, column: 9, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4408, file: !2, line: 268, column: 38)
!4413 = !DILocation(line: 271, column: 7, scope: !4394)
!4414 = !DILocation(line: 273, column: 28, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4394, file: !2, line: 273, column: 11)
!4416 = !DILocation(line: 273, column: 11, scope: !4415)
!4417 = !DILocation(line: 273, column: 11, scope: !4394)
!4418 = !DILocation(line: 274, column: 9, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4415, file: !2, line: 273, column: 38)
!4420 = !DILocation(line: 276, column: 7, scope: !4394)
!4421 = !DILocation(line: 278, column: 5, scope: !4208)
!4422 = !DILocation(line: 280, column: 13, scope: !4208)
!4423 = !DILocation(line: 280, column: 5, scope: !4208)
!4424 = !DILocation(line: 282, column: 29, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4426, file: !2, line: 282, column: 11)
!4426 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 280, column: 22)
!4427 = !DILocation(line: 282, column: 11, scope: !4425)
!4428 = !DILocation(line: 282, column: 11, scope: !4426)
!4429 = !DILocation(line: 283, column: 9, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4425, file: !2, line: 282, column: 39)
!4431 = !DILocation(line: 285, column: 7, scope: !4426)
!4432 = !DILocation(line: 287, column: 5, scope: !4208)
!4433 = !DILocation(line: 289, column: 13, scope: !4208)
!4434 = !DILocation(line: 289, column: 5, scope: !4208)
!4435 = !DILocation(line: 291, column: 30, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4437, file: !2, line: 291, column: 11)
!4437 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 289, column: 22)
!4438 = !DILocation(line: 291, column: 11, scope: !4436)
!4439 = !DILocation(line: 291, column: 11, scope: !4437)
!4440 = !DILocation(line: 292, column: 9, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4436, file: !2, line: 291, column: 40)
!4442 = !DILocation(line: 294, column: 30, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4437, file: !2, line: 294, column: 11)
!4444 = !DILocation(line: 294, column: 11, scope: !4443)
!4445 = !DILocation(line: 294, column: 11, scope: !4437)
!4446 = !DILocation(line: 295, column: 9, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4443, file: !2, line: 294, column: 40)
!4448 = !DILocation(line: 297, column: 7, scope: !4437)
!4449 = !DILocation(line: 299, column: 30, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4437, file: !2, line: 299, column: 11)
!4451 = !DILocation(line: 299, column: 11, scope: !4450)
!4452 = !DILocation(line: 299, column: 11, scope: !4437)
!4453 = !DILocation(line: 300, column: 9, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4450, file: !2, line: 299, column: 40)
!4455 = !DILocation(line: 302, column: 7, scope: !4437)
!4456 = !DILocation(line: 304, column: 30, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4437, file: !2, line: 304, column: 11)
!4458 = !DILocation(line: 304, column: 11, scope: !4457)
!4459 = !DILocation(line: 304, column: 11, scope: !4437)
!4460 = !DILocation(line: 305, column: 9, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4457, file: !2, line: 304, column: 40)
!4462 = !DILocation(line: 307, column: 7, scope: !4437)
!4463 = !DILocation(line: 309, column: 30, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4437, file: !2, line: 309, column: 11)
!4465 = !DILocation(line: 309, column: 11, scope: !4464)
!4466 = !DILocation(line: 309, column: 11, scope: !4437)
!4467 = !DILocation(line: 310, column: 9, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4464, file: !2, line: 309, column: 40)
!4469 = !DILocation(line: 312, column: 7, scope: !4437)
!4470 = !DILocation(line: 314, column: 5, scope: !4208)
!4471 = !DILocation(line: 316, column: 13, scope: !4208)
!4472 = !DILocation(line: 316, column: 5, scope: !4208)
!4473 = !DILocation(line: 318, column: 31, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !2, line: 318, column: 11)
!4475 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 316, column: 23)
!4476 = !DILocation(line: 318, column: 11, scope: !4474)
!4477 = !DILocation(line: 318, column: 11, scope: !4475)
!4478 = !DILocation(line: 319, column: 9, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4474, file: !2, line: 318, column: 42)
!4480 = !DILocation(line: 321, column: 7, scope: !4475)
!4481 = !DILocation(line: 323, column: 5, scope: !4208)
!4482 = !DILocation(line: 325, column: 13, scope: !4208)
!4483 = !DILocation(line: 325, column: 5, scope: !4208)
!4484 = !DILocation(line: 327, column: 32, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4486, file: !2, line: 327, column: 11)
!4486 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 325, column: 23)
!4487 = !DILocation(line: 327, column: 11, scope: !4485)
!4488 = !DILocation(line: 327, column: 11, scope: !4486)
!4489 = !DILocation(line: 328, column: 9, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4485, file: !2, line: 327, column: 43)
!4491 = !DILocation(line: 330, column: 7, scope: !4486)
!4492 = !DILocation(line: 332, column: 32, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4486, file: !2, line: 332, column: 11)
!4494 = !DILocation(line: 332, column: 11, scope: !4493)
!4495 = !DILocation(line: 332, column: 11, scope: !4486)
!4496 = !DILocation(line: 333, column: 9, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4493, file: !2, line: 332, column: 43)
!4498 = !DILocation(line: 335, column: 7, scope: !4486)
!4499 = !DILocation(line: 337, column: 5, scope: !4208)
!4500 = !DILocation(line: 339, column: 13, scope: !4208)
!4501 = !DILocation(line: 339, column: 5, scope: !4208)
!4502 = !DILocation(line: 341, column: 33, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4504, file: !2, line: 341, column: 11)
!4504 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 339, column: 23)
!4505 = !DILocation(line: 341, column: 11, scope: !4503)
!4506 = !DILocation(line: 341, column: 11, scope: !4504)
!4507 = !DILocation(line: 342, column: 9, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4503, file: !2, line: 341, column: 44)
!4509 = !DILocation(line: 344, column: 7, scope: !4504)
!4510 = !DILocation(line: 346, column: 33, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4504, file: !2, line: 346, column: 11)
!4512 = !DILocation(line: 346, column: 11, scope: !4511)
!4513 = !DILocation(line: 346, column: 11, scope: !4504)
!4514 = !DILocation(line: 347, column: 9, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4511, file: !2, line: 346, column: 44)
!4516 = !DILocation(line: 349, column: 7, scope: !4504)
!4517 = !DILocation(line: 351, column: 33, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4504, file: !2, line: 351, column: 11)
!4519 = !DILocation(line: 351, column: 11, scope: !4518)
!4520 = !DILocation(line: 351, column: 11, scope: !4504)
!4521 = !DILocation(line: 352, column: 9, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4518, file: !2, line: 351, column: 44)
!4523 = !DILocation(line: 354, column: 7, scope: !4504)
!4524 = !DILocation(line: 356, column: 33, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4504, file: !2, line: 356, column: 11)
!4526 = !DILocation(line: 356, column: 11, scope: !4525)
!4527 = !DILocation(line: 356, column: 11, scope: !4504)
!4528 = !DILocation(line: 357, column: 9, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4525, file: !2, line: 356, column: 44)
!4530 = !DILocation(line: 359, column: 7, scope: !4504)
!4531 = !DILocation(line: 361, column: 33, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4504, file: !2, line: 361, column: 11)
!4533 = !DILocation(line: 361, column: 11, scope: !4532)
!4534 = !DILocation(line: 361, column: 11, scope: !4504)
!4535 = !DILocation(line: 362, column: 9, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4532, file: !2, line: 361, column: 44)
!4537 = !DILocation(line: 364, column: 7, scope: !4504)
!4538 = !DILocation(line: 366, column: 33, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4504, file: !2, line: 366, column: 11)
!4540 = !DILocation(line: 366, column: 11, scope: !4539)
!4541 = !DILocation(line: 366, column: 11, scope: !4504)
!4542 = !DILocation(line: 367, column: 9, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4539, file: !2, line: 366, column: 44)
!4544 = !DILocation(line: 369, column: 7, scope: !4504)
!4545 = !DILocation(line: 371, column: 5, scope: !4208)
!4546 = !DILocation(line: 373, column: 13, scope: !4208)
!4547 = !DILocation(line: 373, column: 5, scope: !4208)
!4548 = !DILocation(line: 375, column: 34, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4550, file: !2, line: 375, column: 11)
!4550 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 373, column: 23)
!4551 = !DILocation(line: 375, column: 11, scope: !4549)
!4552 = !DILocation(line: 375, column: 11, scope: !4550)
!4553 = !DILocation(line: 376, column: 9, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4549, file: !2, line: 375, column: 45)
!4555 = !DILocation(line: 378, column: 7, scope: !4550)
!4556 = !DILocation(line: 380, column: 34, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4550, file: !2, line: 380, column: 11)
!4558 = !DILocation(line: 380, column: 11, scope: !4557)
!4559 = !DILocation(line: 380, column: 11, scope: !4550)
!4560 = !DILocation(line: 381, column: 9, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4557, file: !2, line: 380, column: 45)
!4562 = !DILocation(line: 383, column: 7, scope: !4550)
!4563 = !DILocation(line: 385, column: 5, scope: !4208)
!4564 = !DILocation(line: 387, column: 13, scope: !4208)
!4565 = !DILocation(line: 387, column: 5, scope: !4208)
!4566 = !DILocation(line: 389, column: 35, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4568, file: !2, line: 389, column: 11)
!4568 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 387, column: 23)
!4569 = !DILocation(line: 389, column: 11, scope: !4567)
!4570 = !DILocation(line: 389, column: 11, scope: !4568)
!4571 = !DILocation(line: 390, column: 9, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4567, file: !2, line: 389, column: 46)
!4573 = !DILocation(line: 392, column: 7, scope: !4568)
!4574 = !DILocation(line: 394, column: 35, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4568, file: !2, line: 394, column: 11)
!4576 = !DILocation(line: 394, column: 11, scope: !4575)
!4577 = !DILocation(line: 394, column: 11, scope: !4568)
!4578 = !DILocation(line: 395, column: 9, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4575, file: !2, line: 394, column: 46)
!4580 = !DILocation(line: 397, column: 7, scope: !4568)
!4581 = !DILocation(line: 399, column: 5, scope: !4208)
!4582 = !DILocation(line: 401, column: 13, scope: !4208)
!4583 = !DILocation(line: 401, column: 5, scope: !4208)
!4584 = !DILocation(line: 403, column: 36, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4586, file: !2, line: 403, column: 11)
!4586 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 401, column: 23)
!4587 = !DILocation(line: 403, column: 11, scope: !4585)
!4588 = !DILocation(line: 403, column: 11, scope: !4586)
!4589 = !DILocation(line: 404, column: 9, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4585, file: !2, line: 403, column: 47)
!4591 = !DILocation(line: 406, column: 36, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4586, file: !2, line: 406, column: 11)
!4593 = !DILocation(line: 406, column: 11, scope: !4592)
!4594 = !DILocation(line: 406, column: 11, scope: !4586)
!4595 = !DILocation(line: 407, column: 9, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4592, file: !2, line: 406, column: 47)
!4597 = !DILocation(line: 409, column: 7, scope: !4586)
!4598 = !DILocation(line: 411, column: 36, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4586, file: !2, line: 411, column: 11)
!4600 = !DILocation(line: 411, column: 11, scope: !4599)
!4601 = !DILocation(line: 411, column: 11, scope: !4586)
!4602 = !DILocation(line: 412, column: 9, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4599, file: !2, line: 411, column: 47)
!4604 = !DILocation(line: 414, column: 7, scope: !4586)
!4605 = !DILocation(line: 416, column: 36, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4586, file: !2, line: 416, column: 11)
!4607 = !DILocation(line: 416, column: 11, scope: !4606)
!4608 = !DILocation(line: 416, column: 11, scope: !4586)
!4609 = !DILocation(line: 417, column: 9, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4606, file: !2, line: 416, column: 47)
!4611 = !DILocation(line: 419, column: 36, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4586, file: !2, line: 419, column: 11)
!4613 = !DILocation(line: 419, column: 11, scope: !4612)
!4614 = !DILocation(line: 419, column: 11, scope: !4586)
!4615 = !DILocation(line: 420, column: 9, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4612, file: !2, line: 419, column: 47)
!4617 = !DILocation(line: 422, column: 7, scope: !4586)
!4618 = !DILocation(line: 424, column: 5, scope: !4208)
!4619 = !DILocation(line: 426, column: 13, scope: !4208)
!4620 = !DILocation(line: 426, column: 5, scope: !4208)
!4621 = !DILocation(line: 428, column: 37, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4623, file: !2, line: 428, column: 11)
!4623 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 426, column: 23)
!4624 = !DILocation(line: 428, column: 11, scope: !4622)
!4625 = !DILocation(line: 428, column: 11, scope: !4623)
!4626 = !DILocation(line: 429, column: 9, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4622, file: !2, line: 428, column: 48)
!4628 = !DILocation(line: 431, column: 7, scope: !4623)
!4629 = !DILocation(line: 433, column: 37, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4623, file: !2, line: 433, column: 11)
!4631 = !DILocation(line: 433, column: 11, scope: !4630)
!4632 = !DILocation(line: 433, column: 11, scope: !4623)
!4633 = !DILocation(line: 434, column: 9, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4630, file: !2, line: 433, column: 48)
!4635 = !DILocation(line: 436, column: 7, scope: !4623)
!4636 = !DILocation(line: 438, column: 5, scope: !4208)
!4637 = !DILocation(line: 440, column: 13, scope: !4208)
!4638 = !DILocation(line: 440, column: 5, scope: !4208)
!4639 = !DILocation(line: 442, column: 38, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4641, file: !2, line: 442, column: 11)
!4641 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 440, column: 23)
!4642 = !DILocation(line: 442, column: 11, scope: !4640)
!4643 = !DILocation(line: 442, column: 11, scope: !4641)
!4644 = !DILocation(line: 443, column: 9, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4640, file: !2, line: 442, column: 49)
!4646 = !DILocation(line: 445, column: 7, scope: !4641)
!4647 = !DILocation(line: 447, column: 5, scope: !4208)
!4648 = !DILocation(line: 449, column: 13, scope: !4208)
!4649 = !DILocation(line: 449, column: 5, scope: !4208)
!4650 = !DILocation(line: 451, column: 39, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4652, file: !2, line: 451, column: 11)
!4652 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 449, column: 23)
!4653 = !DILocation(line: 451, column: 11, scope: !4651)
!4654 = !DILocation(line: 451, column: 11, scope: !4652)
!4655 = !DILocation(line: 452, column: 9, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4651, file: !2, line: 451, column: 50)
!4657 = !DILocation(line: 454, column: 7, scope: !4652)
!4658 = !DILocation(line: 456, column: 39, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4652, file: !2, line: 456, column: 11)
!4660 = !DILocation(line: 456, column: 11, scope: !4659)
!4661 = !DILocation(line: 456, column: 11, scope: !4652)
!4662 = !DILocation(line: 457, column: 9, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4659, file: !2, line: 456, column: 50)
!4664 = !DILocation(line: 459, column: 39, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4652, file: !2, line: 459, column: 11)
!4666 = !DILocation(line: 459, column: 11, scope: !4665)
!4667 = !DILocation(line: 459, column: 11, scope: !4652)
!4668 = !DILocation(line: 460, column: 9, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4665, file: !2, line: 459, column: 50)
!4670 = !DILocation(line: 462, column: 7, scope: !4652)
!4671 = !DILocation(line: 464, column: 5, scope: !4208)
!4672 = !DILocation(line: 466, column: 13, scope: !4208)
!4673 = !DILocation(line: 466, column: 5, scope: !4208)
!4674 = !DILocation(line: 468, column: 45, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4676, file: !2, line: 468, column: 11)
!4676 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 466, column: 23)
!4677 = !DILocation(line: 468, column: 11, scope: !4675)
!4678 = !DILocation(line: 468, column: 11, scope: !4676)
!4679 = !DILocation(line: 469, column: 9, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4675, file: !2, line: 468, column: 56)
!4681 = !DILocation(line: 471, column: 7, scope: !4676)
!4682 = !DILocation(line: 473, column: 5, scope: !4208)
!4683 = !DILocation(line: 475, column: 13, scope: !4208)
!4684 = !DILocation(line: 475, column: 5, scope: !4208)
!4685 = !DILocation(line: 477, column: 47, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4687, file: !2, line: 477, column: 11)
!4687 = distinct !DILexicalBlock(scope: !4208, file: !2, line: 475, column: 23)
!4688 = !DILocation(line: 477, column: 11, scope: !4686)
!4689 = !DILocation(line: 477, column: 11, scope: !4687)
!4690 = !DILocation(line: 478, column: 9, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4686, file: !2, line: 477, column: 58)
!4692 = !DILocation(line: 480, column: 7, scope: !4687)
!4693 = !DILocation(line: 482, column: 5, scope: !4208)
!4694 = !DILocation(line: 484, column: 3, scope: !4197)
!4695 = !DILocation(line: 485, column: 1, scope: !4197)
!4696 = distinct !DISubprogram(name: "name_hash", scope: !2, file: !2, line: 516, type: !4697, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !4699)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!199, !1347}
!4699 = !{!4700, !4701, !4702}
!4700 = !DILocalVariable(name: "nv", arg: 1, scope: !4696, file: !2, line: 516, type: !1347)
!4701 = !DILocalVariable(name: "h", scope: !4696, file: !2, line: 518, type: !199)
!4702 = !DILocalVariable(name: "i", scope: !4696, file: !2, line: 519, type: !188)
!4703 = !DILocation(line: 516, column: 45, scope: !4696)
!4704 = !DILocation(line: 518, column: 3, scope: !4696)
!4705 = !DILocation(line: 518, column: 12, scope: !4696)
!4706 = !DILocation(line: 519, column: 3, scope: !4696)
!4707 = !DILocation(line: 519, column: 10, scope: !4696)
!4708 = !DILocation(line: 521, column: 10, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4696, file: !2, line: 521, column: 3)
!4710 = !DILocation(line: 521, column: 8, scope: !4709)
!4711 = !DILocation(line: 521, column: 15, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4709, file: !2, line: 521, column: 3)
!4713 = !DILocation(line: 521, column: 19, scope: !4712)
!4714 = !DILocation(line: 521, column: 23, scope: !4712)
!4715 = !DILocation(line: 521, column: 17, scope: !4712)
!4716 = !DILocation(line: 521, column: 3, scope: !4709)
!4717 = !DILocation(line: 522, column: 10, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4712, file: !2, line: 521, column: 37)
!4719 = !DILocation(line: 522, column: 14, scope: !4718)
!4720 = !DILocation(line: 522, column: 19, scope: !4718)
!4721 = !DILocation(line: 522, column: 7, scope: !4718)
!4722 = !DILocation(line: 523, column: 11, scope: !4718)
!4723 = !DILocation(line: 523, column: 13, scope: !4718)
!4724 = !DILocation(line: 523, column: 22, scope: !4718)
!4725 = !DILocation(line: 523, column: 24, scope: !4718)
!4726 = !DILocation(line: 523, column: 19, scope: !4718)
!4727 = !DILocation(line: 523, column: 33, scope: !4718)
!4728 = !DILocation(line: 523, column: 35, scope: !4718)
!4729 = !DILocation(line: 523, column: 30, scope: !4718)
!4730 = !DILocation(line: 523, column: 44, scope: !4718)
!4731 = !DILocation(line: 523, column: 46, scope: !4718)
!4732 = !DILocation(line: 523, column: 41, scope: !4718)
!4733 = !DILocation(line: 523, column: 55, scope: !4718)
!4734 = !DILocation(line: 523, column: 57, scope: !4718)
!4735 = !DILocation(line: 523, column: 52, scope: !4718)
!4736 = !DILocation(line: 523, column: 7, scope: !4718)
!4737 = !DILocation(line: 524, column: 3, scope: !4718)
!4738 = !DILocation(line: 521, column: 32, scope: !4712)
!4739 = !DILocation(line: 521, column: 3, scope: !4712)
!4740 = distinct !{!4740, !4716, !4741, !1202}
!4741 = !DILocation(line: 524, column: 3, scope: !4709)
!4742 = !DILocation(line: 526, column: 10, scope: !4696)
!4743 = !DILocation(line: 527, column: 1, scope: !4696)
!4744 = !DILocation(line: 526, column: 3, scope: !4696)
!4745 = distinct !DISubprogram(name: "hd_deflate_decide_indexing", scope: !2, file: !2, line: 1327, type: !4746, scopeLine: 1328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !4748)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!47, !716, !1347, !192}
!4748 = !{!4749, !4750, !4751}
!4749 = !DILocalVariable(name: "deflater", arg: 1, scope: !4745, file: !2, line: 1327, type: !716)
!4750 = !DILocalVariable(name: "nv", arg: 2, scope: !4745, file: !2, line: 1328, type: !1347)
!4751 = !DILocalVariable(name: "token", arg: 3, scope: !4745, file: !2, line: 1328, type: !192)
!4752 = !DILocation(line: 1327, column: 60, scope: !4745)
!4753 = !DILocation(line: 1328, column: 57, scope: !4745)
!4754 = !DILocation(line: 1328, column: 69, scope: !4745)
!4755 = !DILocation(line: 1329, column: 7, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4745, file: !2, line: 1329, column: 7)
!4757 = !DILocation(line: 1329, column: 13, scope: !4756)
!4758 = !DILocation(line: 1329, column: 36, scope: !4756)
!4759 = !DILocation(line: 1329, column: 39, scope: !4756)
!4760 = !DILocation(line: 1329, column: 45, scope: !4756)
!4761 = !DILocation(line: 1329, column: 66, scope: !4756)
!4762 = !DILocation(line: 1330, column: 7, scope: !4756)
!4763 = !DILocation(line: 1330, column: 13, scope: !4756)
!4764 = !DILocation(line: 1330, column: 45, scope: !4756)
!4765 = !DILocation(line: 1330, column: 48, scope: !4756)
!4766 = !DILocation(line: 1330, column: 54, scope: !4756)
!4767 = !DILocation(line: 1330, column: 76, scope: !4756)
!4768 = !DILocation(line: 1331, column: 7, scope: !4756)
!4769 = !DILocation(line: 1331, column: 13, scope: !4756)
!4770 = !DILocation(line: 1331, column: 48, scope: !4756)
!4771 = !DILocation(line: 1332, column: 7, scope: !4756)
!4772 = !DILocation(line: 1332, column: 13, scope: !4756)
!4773 = !DILocation(line: 1332, column: 44, scope: !4756)
!4774 = !DILocation(line: 1332, column: 47, scope: !4756)
!4775 = !DILocation(line: 1332, column: 53, scope: !4756)
!4776 = !DILocation(line: 1332, column: 79, scope: !4756)
!4777 = !DILocation(line: 1333, column: 7, scope: !4756)
!4778 = !DILocation(line: 1333, column: 13, scope: !4756)
!4779 = !DILocation(line: 1333, column: 41, scope: !4756)
!4780 = !DILocation(line: 1334, column: 18, scope: !4756)
!4781 = !DILocation(line: 1334, column: 22, scope: !4756)
!4782 = !DILocation(line: 1334, column: 31, scope: !4756)
!4783 = !DILocation(line: 1334, column: 35, scope: !4756)
!4784 = !DILocation(line: 1334, column: 7, scope: !4756)
!4785 = !DILocation(line: 1335, column: 11, scope: !4756)
!4786 = !DILocation(line: 1335, column: 21, scope: !4756)
!4787 = !DILocation(line: 1335, column: 25, scope: !4756)
!4788 = !DILocation(line: 1335, column: 46, scope: !4756)
!4789 = !DILocation(line: 1335, column: 50, scope: !4756)
!4790 = !DILocation(line: 1334, column: 45, scope: !4756)
!4791 = !DILocation(line: 1329, column: 7, scope: !4745)
!4792 = !DILocation(line: 1336, column: 5, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4756, file: !2, line: 1335, column: 55)
!4794 = !DILocation(line: 1339, column: 3, scope: !4745)
!4795 = !DILocation(line: 1340, column: 1, scope: !4745)
!4796 = distinct !DISubprogram(name: "search_hd_table", scope: !2, file: !2, line: 1196, type: !4797, scopeLine: 1199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !4799)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!1527, !846, !1347, !192, !47, !896, !199}
!4799 = !{!4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4810, !4811}
!4800 = !DILocalVariable(name: "context", arg: 1, scope: !4796, file: !2, line: 1196, type: !846)
!4801 = !DILocalVariable(name: "nv", arg: 2, scope: !4796, file: !2, line: 1197, type: !1347)
!4802 = !DILocalVariable(name: "token", arg: 3, scope: !4796, file: !2, line: 1197, type: !192)
!4803 = !DILocalVariable(name: "indexing_mode", arg: 4, scope: !4796, file: !2, line: 1198, type: !47)
!4804 = !DILocalVariable(name: "map", arg: 5, scope: !4796, file: !2, line: 1198, type: !896)
!4805 = !DILocalVariable(name: "hash", arg: 6, scope: !4796, file: !2, line: 1199, type: !199)
!4806 = !DILocalVariable(name: "res", scope: !4796, file: !2, line: 1200, type: !1527)
!4807 = !DILocalVariable(name: "ent", scope: !4796, file: !2, line: 1201, type: !4808)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !593)
!4810 = !DILocalVariable(name: "exact_match", scope: !4796, file: !2, line: 1202, type: !47)
!4811 = !DILocalVariable(name: "name_only", scope: !4796, file: !2, line: 1203, type: !47)
!4812 = !DILocation(line: 1196, column: 58, scope: !4796)
!4813 = !DILocation(line: 1197, column: 56, scope: !4796)
!4814 = !DILocation(line: 1197, column: 68, scope: !4796)
!4815 = !DILocation(line: 1198, column: 42, scope: !4796)
!4816 = !DILocation(line: 1198, column: 73, scope: !4796)
!4817 = !DILocation(line: 1199, column: 47, scope: !4796)
!4818 = !DILocation(line: 1200, column: 3, scope: !4796)
!4819 = !DILocation(line: 1200, column: 17, scope: !4796)
!4820 = !DILocation(line: 1201, column: 3, scope: !4796)
!4821 = !DILocation(line: 1201, column: 27, scope: !4796)
!4822 = !DILocation(line: 1202, column: 3, scope: !4796)
!4823 = !DILocation(line: 1202, column: 7, scope: !4796)
!4824 = !DILocation(line: 1203, column: 3, scope: !4796)
!4825 = !DILocation(line: 1203, column: 7, scope: !4796)
!4826 = !DILocation(line: 1203, column: 19, scope: !4796)
!4827 = !DILocation(line: 1203, column: 33, scope: !4796)
!4828 = !DILocation(line: 1205, column: 15, scope: !4796)
!4829 = !DILocation(line: 1206, column: 21, scope: !4796)
!4830 = !DILocation(line: 1206, column: 40, scope: !4796)
!4831 = !DILocation(line: 1206, column: 44, scope: !4796)
!4832 = !DILocation(line: 1206, column: 51, scope: !4796)
!4833 = !DILocation(line: 1206, column: 57, scope: !4796)
!4834 = !DILocation(line: 1206, column: 9, scope: !4796)
!4835 = !DILocation(line: 1206, column: 7, scope: !4796)
!4836 = !DILocation(line: 1208, column: 8, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4796, file: !2, line: 1208, column: 7)
!4838 = !DILocation(line: 1208, column: 20, scope: !4837)
!4839 = !DILocation(line: 1208, column: 23, scope: !4837)
!4840 = !DILocation(line: 1208, column: 29, scope: !4837)
!4841 = !DILocation(line: 1208, column: 34, scope: !4837)
!4842 = !DILocation(line: 1208, column: 37, scope: !4837)
!4843 = !DILocation(line: 1208, column: 43, scope: !4837)
!4844 = !DILocation(line: 1208, column: 7, scope: !4796)
!4845 = !DILocation(line: 1209, column: 32, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4837, file: !2, line: 1208, column: 78)
!4847 = !DILocation(line: 1209, column: 36, scope: !4846)
!4848 = !DILocation(line: 1209, column: 43, scope: !4846)
!4849 = !DILocation(line: 1209, column: 12, scope: !4846)
!4850 = !DILocation(line: 1209, column: 5, scope: !4846)
!4851 = !DILocation(line: 1212, column: 7, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4796, file: !2, line: 1212, column: 7)
!4853 = !DILocation(line: 1212, column: 11, scope: !4852)
!4854 = !DILocation(line: 1212, column: 7, scope: !4796)
!4855 = !DILocation(line: 1213, column: 12, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4852, file: !2, line: 1212, column: 20)
!4857 = !DILocation(line: 1213, column: 5, scope: !4856)
!4858 = !DILocation(line: 1217, column: 17, scope: !4796)
!4859 = !DILocation(line: 1217, column: 26, scope: !4796)
!4860 = !DILocation(line: 1217, column: 35, scope: !4796)
!4861 = !DILocation(line: 1217, column: 41, scope: !4796)
!4862 = !DILocation(line: 1217, column: 46, scope: !4796)
!4863 = !{!639, !624, i64 72}
!4864 = !DILocation(line: 1217, column: 39, scope: !4796)
!4865 = !DILocation(line: 1217, column: 50, scope: !4796)
!4866 = !DILocation(line: 1217, column: 7, scope: !4796)
!4867 = !DILocation(line: 1216, column: 7, scope: !4796)
!4868 = !DILocation(line: 1216, column: 13, scope: !4796)
!4869 = !DILocation(line: 1218, column: 26, scope: !4796)
!4870 = !DILocation(line: 1218, column: 7, scope: !4796)
!4871 = !DILocation(line: 1218, column: 24, scope: !4796)
!4872 = !DILocation(line: 1220, column: 10, scope: !4796)
!4873 = !DILocation(line: 1220, column: 3, scope: !4796)
!4874 = !DILocation(line: 1221, column: 1, scope: !4796)
!4875 = distinct !DISubprogram(name: "emit_indexed_block", scope: !2, file: !2, line: 945, type: !1465, scopeLine: 945, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !4876)
!4876 = !{!4877, !4878, !4879, !4880, !4881, !4882}
!4877 = !DILocalVariable(name: "bufs", arg: 1, scope: !4875, file: !2, line: 945, type: !1329)
!4878 = !DILocalVariable(name: "idx", arg: 2, scope: !4875, file: !2, line: 945, type: !188)
!4879 = !DILocalVariable(name: "rv", scope: !4875, file: !2, line: 946, type: !47)
!4880 = !DILocalVariable(name: "blocklen", scope: !4875, file: !2, line: 947, type: !188)
!4881 = !DILocalVariable(name: "sb", scope: !4875, file: !2, line: 948, type: !1474)
!4882 = !DILocalVariable(name: "bufp", scope: !4875, file: !2, line: 949, type: !181)
!4883 = !DILocation(line: 945, column: 45, scope: !4875)
!4884 = !DILocation(line: 945, column: 58, scope: !4875)
!4885 = !DILocation(line: 946, column: 3, scope: !4875)
!4886 = !DILocation(line: 946, column: 7, scope: !4875)
!4887 = !DILocation(line: 947, column: 3, scope: !4875)
!4888 = !DILocation(line: 947, column: 10, scope: !4875)
!4889 = !DILocation(line: 948, column: 3, scope: !4875)
!4890 = !DILocation(line: 948, column: 11, scope: !4875)
!4891 = !DILocation(line: 949, column: 3, scope: !4875)
!4892 = !DILocation(line: 949, column: 12, scope: !4875)
!4893 = !DILocation(line: 951, column: 35, scope: !4875)
!4894 = !DILocation(line: 951, column: 39, scope: !4875)
!4895 = !DILocation(line: 951, column: 14, scope: !4875)
!4896 = !DILocation(line: 951, column: 12, scope: !4875)
!4897 = !DILocation(line: 953, column: 3, scope: !4875)
!4898 = !DILocation(line: 953, column: 3, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4875, file: !2, line: 953, column: 3)
!4900 = !DILocation(line: 955, column: 20, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4875, file: !2, line: 955, column: 7)
!4902 = !DILocation(line: 955, column: 18, scope: !4901)
!4903 = !DILocation(line: 955, column: 7, scope: !4875)
!4904 = !DILocation(line: 956, column: 5, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4901, file: !2, line: 955, column: 30)
!4906 = !DILocation(line: 959, column: 10, scope: !4875)
!4907 = !DILocation(line: 959, column: 8, scope: !4875)
!4908 = !DILocation(line: 960, column: 4, scope: !4875)
!4909 = !DILocation(line: 960, column: 9, scope: !4875)
!4910 = !DILocation(line: 961, column: 17, scope: !4875)
!4911 = !DILocation(line: 961, column: 23, scope: !4875)
!4912 = !DILocation(line: 961, column: 27, scope: !4875)
!4913 = !DILocation(line: 961, column: 3, scope: !4875)
!4914 = !DILocation(line: 963, column: 25, scope: !4875)
!4915 = !DILocation(line: 963, column: 31, scope: !4875)
!4916 = !DILocation(line: 963, column: 35, scope: !4875)
!4917 = !DILocation(line: 963, column: 8, scope: !4875)
!4918 = !DILocation(line: 963, column: 6, scope: !4875)
!4919 = !DILocation(line: 964, column: 7, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4875, file: !2, line: 964, column: 7)
!4921 = !DILocation(line: 964, column: 10, scope: !4920)
!4922 = !DILocation(line: 964, column: 7, scope: !4875)
!4923 = !DILocation(line: 965, column: 12, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4920, file: !2, line: 964, column: 16)
!4925 = !DILocation(line: 965, column: 5, scope: !4924)
!4926 = !DILocation(line: 968, column: 3, scope: !4875)
!4927 = !DILocation(line: 969, column: 1, scope: !4875)
!4928 = !DISubprogram(name: "nghttp2_rcbuf_new2", scope: !171, file: !171, line: 72, type: !4929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!47, !3060, !2078, !188, !734}
!4931 = distinct !DISubprogram(name: "add_hd_table_incremental", scope: !2, file: !2, line: 1100, type: !4932, scopeLine: 1102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !4934)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!47, !846, !608, !896, !199}
!4934 = !{!4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4945}
!4935 = !DILocalVariable(name: "context", arg: 1, scope: !4931, file: !2, line: 1100, type: !846)
!4936 = !DILocalVariable(name: "nv", arg: 2, scope: !4931, file: !2, line: 1101, type: !608)
!4937 = !DILocalVariable(name: "map", arg: 3, scope: !4931, file: !2, line: 1101, type: !896)
!4938 = !DILocalVariable(name: "hash", arg: 4, scope: !4931, file: !2, line: 1102, type: !199)
!4939 = !DILocalVariable(name: "rv", scope: !4931, file: !2, line: 1103, type: !47)
!4940 = !DILocalVariable(name: "new_ent", scope: !4931, file: !2, line: 1104, type: !592)
!4941 = !DILocalVariable(name: "room", scope: !4931, file: !2, line: 1105, type: !188)
!4942 = !DILocalVariable(name: "mem", scope: !4931, file: !2, line: 1106, type: !734)
!4943 = !DILocalVariable(name: "idx", scope: !4944, file: !2, line: 1114, type: !188)
!4944 = distinct !DILexicalBlock(scope: !4931, file: !2, line: 1112, column: 37)
!4945 = !DILocalVariable(name: "ent", scope: !4944, file: !2, line: 1115, type: !592)
!4946 = !DILocation(line: 1100, column: 57, scope: !4931)
!4947 = !DILocation(line: 1101, column: 52, scope: !4931)
!4948 = !DILocation(line: 1101, column: 72, scope: !4931)
!4949 = !DILocation(line: 1102, column: 46, scope: !4931)
!4950 = !DILocation(line: 1103, column: 3, scope: !4931)
!4951 = !DILocation(line: 1103, column: 7, scope: !4931)
!4952 = !DILocation(line: 1104, column: 3, scope: !4931)
!4953 = !DILocation(line: 1104, column: 21, scope: !4931)
!4954 = !DILocation(line: 1105, column: 3, scope: !4931)
!4955 = !DILocation(line: 1105, column: 10, scope: !4931)
!4956 = !DILocation(line: 1106, column: 3, scope: !4931)
!4957 = !DILocation(line: 1106, column: 16, scope: !4931)
!4958 = !DILocation(line: 1108, column: 9, scope: !4931)
!4959 = !DILocation(line: 1108, column: 18, scope: !4931)
!4960 = !DILocation(line: 1108, column: 7, scope: !4931)
!4961 = !DILocation(line: 1109, column: 21, scope: !4931)
!4962 = !DILocation(line: 1109, column: 25, scope: !4931)
!4963 = !DILocation(line: 1109, column: 31, scope: !4931)
!4964 = !DILocation(line: 1109, column: 36, scope: !4931)
!4965 = !DILocation(line: 1109, column: 40, scope: !4931)
!4966 = !DILocation(line: 1109, column: 47, scope: !4931)
!4967 = !DILocation(line: 1109, column: 10, scope: !4931)
!4968 = !DILocation(line: 1109, column: 8, scope: !4931)
!4969 = !DILocation(line: 1111, column: 3, scope: !4931)
!4970 = !DILocation(line: 1111, column: 10, scope: !4931)
!4971 = !DILocation(line: 1111, column: 19, scope: !4931)
!4972 = !DILocation(line: 1111, column: 38, scope: !4931)
!4973 = !DILocation(line: 1111, column: 36, scope: !4931)
!4974 = !DILocation(line: 1111, column: 45, scope: !4931)
!4975 = !DILocation(line: 1111, column: 54, scope: !4931)
!4976 = !DILocation(line: 1111, column: 43, scope: !4931)
!4977 = !DILocation(line: 1111, column: 75, scope: !4931)
!4978 = !DILocation(line: 1112, column: 10, scope: !4931)
!4979 = !DILocation(line: 1112, column: 19, scope: !4931)
!4980 = !DILocation(line: 1112, column: 28, scope: !4931)
!4981 = !DILocation(line: 1112, column: 32, scope: !4931)
!4982 = !DILocation(line: 0, scope: !4931)
!4983 = !DILocation(line: 1114, column: 5, scope: !4944)
!4984 = !DILocation(line: 1114, column: 12, scope: !4944)
!4985 = !DILocation(line: 1114, column: 18, scope: !4944)
!4986 = !DILocation(line: 1114, column: 27, scope: !4944)
!4987 = !DILocation(line: 1114, column: 36, scope: !4944)
!4988 = !DILocation(line: 1114, column: 40, scope: !4944)
!4989 = !DILocation(line: 1115, column: 5, scope: !4944)
!4990 = !DILocation(line: 1115, column: 23, scope: !4944)
!4991 = !DILocation(line: 1115, column: 45, scope: !4944)
!4992 = !DILocation(line: 1115, column: 54, scope: !4944)
!4993 = !DILocation(line: 1115, column: 64, scope: !4944)
!4994 = !DILocation(line: 1115, column: 29, scope: !4944)
!4995 = !DILocation(line: 1118, column: 20, scope: !4944)
!4996 = !DILocation(line: 1118, column: 25, scope: !4944)
!4997 = !DILocation(line: 1118, column: 28, scope: !4944)
!4998 = !DILocation(line: 1118, column: 34, scope: !4944)
!4999 = !DILocation(line: 1118, column: 39, scope: !4944)
!5000 = !DILocation(line: 1118, column: 44, scope: !4944)
!5001 = !DILocation(line: 1118, column: 47, scope: !4944)
!5002 = !DILocation(line: 1118, column: 54, scope: !4944)
!5003 = !DILocation(line: 1118, column: 9, scope: !4944)
!5004 = !DILocation(line: 1117, column: 5, scope: !4944)
!5005 = !DILocation(line: 1117, column: 14, scope: !4944)
!5006 = !DILocation(line: 1117, column: 31, scope: !4944)
!5007 = !DILocation(line: 1120, column: 5, scope: !4944)
!5008 = !DILocation(line: 1120, column: 5, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4944, file: !2, line: 1120, column: 5)
!5010 = !DILocation(line: 1123, column: 26, scope: !4944)
!5011 = !DILocation(line: 1123, column: 35, scope: !4944)
!5012 = !DILocation(line: 1123, column: 5, scope: !4944)
!5013 = !DILocation(line: 1124, column: 9, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !4944, file: !2, line: 1124, column: 9)
!5015 = !DILocation(line: 1124, column: 9, scope: !4944)
!5016 = !DILocation(line: 1125, column: 21, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5014, file: !2, line: 1124, column: 14)
!5018 = !DILocation(line: 1125, column: 26, scope: !5017)
!5019 = !DILocation(line: 1125, column: 7, scope: !5017)
!5020 = !DILocation(line: 1126, column: 5, scope: !5017)
!5021 = !DILocation(line: 1128, column: 27, scope: !4944)
!5022 = !DILocation(line: 1128, column: 5, scope: !4944)
!5023 = !DILocation(line: 1129, column: 22, scope: !4944)
!5024 = !DILocation(line: 1129, column: 27, scope: !4944)
!5025 = !DILocation(line: 1129, column: 5, scope: !4944)
!5026 = !DILocation(line: 1130, column: 3, scope: !4931)
!5027 = distinct !{!5027, !4969, !5026, !1202}
!5028 = !DILocation(line: 1132, column: 7, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !4931, file: !2, line: 1132, column: 7)
!5030 = !DILocation(line: 1132, column: 14, scope: !5029)
!5031 = !DILocation(line: 1132, column: 23, scope: !5029)
!5032 = !DILocation(line: 1132, column: 12, scope: !5029)
!5033 = !DILocation(line: 1132, column: 7, scope: !4931)
!5034 = !DILocation(line: 1135, column: 5, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5029, file: !2, line: 1132, column: 45)
!5036 = !DILocation(line: 1138, column: 32, scope: !4931)
!5037 = !DILocation(line: 1138, column: 13, scope: !4931)
!5038 = !DILocation(line: 1138, column: 11, scope: !4931)
!5039 = !DILocation(line: 1139, column: 7, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !4931, file: !2, line: 1139, column: 7)
!5041 = !DILocation(line: 1139, column: 15, scope: !5040)
!5042 = !DILocation(line: 1139, column: 7, scope: !4931)
!5043 = !DILocation(line: 1140, column: 5, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5040, file: !2, line: 1139, column: 24)
!5045 = !DILocation(line: 1143, column: 25, scope: !4931)
!5046 = !DILocation(line: 1143, column: 34, scope: !4931)
!5047 = !DILocation(line: 1143, column: 3, scope: !4931)
!5048 = !DILocation(line: 1145, column: 31, scope: !4931)
!5049 = !DILocation(line: 1145, column: 40, scope: !4931)
!5050 = !DILocation(line: 1145, column: 50, scope: !4931)
!5051 = !DILocation(line: 1145, column: 59, scope: !4931)
!5052 = !DILocation(line: 1145, column: 8, scope: !4931)
!5053 = !DILocation(line: 1145, column: 6, scope: !4931)
!5054 = !DILocation(line: 1147, column: 7, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !4931, file: !2, line: 1147, column: 7)
!5056 = !DILocation(line: 1147, column: 10, scope: !5055)
!5057 = !DILocation(line: 1147, column: 7, scope: !4931)
!5058 = !DILocation(line: 1148, column: 27, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5055, file: !2, line: 1147, column: 16)
!5060 = !DILocation(line: 1148, column: 5, scope: !5059)
!5061 = !DILocation(line: 1149, column: 22, scope: !5059)
!5062 = !DILocation(line: 1149, column: 27, scope: !5059)
!5063 = !DILocation(line: 1149, column: 5, scope: !5059)
!5064 = !DILocation(line: 1151, column: 12, scope: !5059)
!5065 = !DILocation(line: 1151, column: 5, scope: !5059)
!5066 = !DILocation(line: 1154, column: 18, scope: !4931)
!5067 = !DILocation(line: 1154, column: 27, scope: !4931)
!5068 = !DILocation(line: 1154, column: 35, scope: !4931)
!5069 = !DILocation(line: 1154, column: 3, scope: !4931)
!5070 = !DILocation(line: 1154, column: 12, scope: !4931)
!5071 = !DILocation(line: 1154, column: 16, scope: !4931)
!5072 = !DILocation(line: 1155, column: 19, scope: !4931)
!5073 = !DILocation(line: 1155, column: 3, scope: !4931)
!5074 = !DILocation(line: 1155, column: 12, scope: !4931)
!5075 = !DILocation(line: 1155, column: 17, scope: !4931)
!5076 = !DILocation(line: 1157, column: 7, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !4931, file: !2, line: 1157, column: 7)
!5078 = !DILocation(line: 1157, column: 7, scope: !4931)
!5079 = !DILocation(line: 1158, column: 19, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5077, file: !2, line: 1157, column: 12)
!5081 = !DILocation(line: 1158, column: 24, scope: !5080)
!5082 = !DILocation(line: 1158, column: 5, scope: !5080)
!5083 = !DILocation(line: 1159, column: 3, scope: !5080)
!5084 = !DILocation(line: 1161, column: 32, scope: !4931)
!5085 = !DILocation(line: 1161, column: 3, scope: !4931)
!5086 = !DILocation(line: 1161, column: 12, scope: !4931)
!5087 = !DILocation(line: 1161, column: 29, scope: !4931)
!5088 = !DILocation(line: 1163, column: 3, scope: !4931)
!5089 = !DILocation(line: 1164, column: 1, scope: !4931)
!5090 = distinct !DISubprogram(name: "memeq", scope: !2, file: !2, line: 112, type: !5091, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !5093)
!5091 = !DISubroutineType(types: !5092)
!5092 = !{!47, !4195, !4195, !188}
!5093 = !{!5094, !5095, !5096}
!5094 = !DILocalVariable(name: "s1", arg: 1, scope: !5090, file: !2, line: 112, type: !4195)
!5095 = !DILocalVariable(name: "s2", arg: 2, scope: !5090, file: !2, line: 112, type: !4195)
!5096 = !DILocalVariable(name: "n", arg: 3, scope: !5090, file: !2, line: 112, type: !188)
!5097 = !DILocation(line: 112, column: 30, scope: !5090)
!5098 = !DILocation(line: 112, column: 46, scope: !5090)
!5099 = !DILocation(line: 112, column: 57, scope: !5090)
!5100 = !DILocation(line: 113, column: 17, scope: !5090)
!5101 = !DILocation(line: 113, column: 21, scope: !5090)
!5102 = !DILocation(line: 113, column: 25, scope: !5090)
!5103 = !DILocation(line: 113, column: 10, scope: !5090)
!5104 = !DILocation(line: 113, column: 28, scope: !5090)
!5105 = !DILocation(line: 113, column: 3, scope: !5090)
!5106 = !DISubprogram(name: "memcmp", scope: !5107, file: !5107, line: 64, type: !5091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5107 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!5108 = distinct !DISubprogram(name: "hd_map_find", scope: !2, file: !2, line: 548, type: !5109, scopeLine: 550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !5111)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{!592, !896, !2053, !1347, !192, !199, !47}
!5111 = !{!5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119}
!5112 = !DILocalVariable(name: "map", arg: 1, scope: !5108, file: !2, line: 548, type: !896)
!5113 = !DILocalVariable(name: "exact_match", arg: 2, scope: !5108, file: !2, line: 548, type: !2053)
!5114 = !DILocalVariable(name: "nv", arg: 3, scope: !5108, file: !2, line: 549, type: !1347)
!5115 = !DILocalVariable(name: "token", arg: 4, scope: !5108, file: !2, line: 549, type: !192)
!5116 = !DILocalVariable(name: "hash", arg: 5, scope: !5108, file: !2, line: 550, type: !199)
!5117 = !DILocalVariable(name: "name_only", arg: 6, scope: !5108, file: !2, line: 550, type: !47)
!5118 = !DILocalVariable(name: "p", scope: !5108, file: !2, line: 551, type: !592)
!5119 = !DILocalVariable(name: "res", scope: !5108, file: !2, line: 552, type: !592)
!5120 = !DILocation(line: 548, column: 54, scope: !5108)
!5121 = !DILocation(line: 548, column: 64, scope: !5108)
!5122 = !DILocation(line: 549, column: 56, scope: !5108)
!5123 = !DILocation(line: 549, column: 68, scope: !5108)
!5124 = !DILocation(line: 550, column: 47, scope: !5108)
!5125 = !DILocation(line: 550, column: 57, scope: !5108)
!5126 = !DILocation(line: 551, column: 3, scope: !5108)
!5127 = !DILocation(line: 551, column: 21, scope: !5108)
!5128 = !DILocation(line: 552, column: 3, scope: !5108)
!5129 = !DILocation(line: 552, column: 21, scope: !5108)
!5130 = !DILocation(line: 554, column: 4, scope: !5108)
!5131 = !DILocation(line: 554, column: 16, scope: !5108)
!5132 = !DILocation(line: 556, column: 12, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5108, file: !2, line: 556, column: 3)
!5134 = !DILocation(line: 556, column: 17, scope: !5133)
!5135 = !DILocation(line: 556, column: 23, scope: !5133)
!5136 = !DILocation(line: 556, column: 28, scope: !5133)
!5137 = !DILocation(line: 556, column: 10, scope: !5133)
!5138 = !DILocation(line: 556, column: 8, scope: !5133)
!5139 = !DILocation(line: 556, column: 50, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5133, file: !2, line: 556, column: 3)
!5141 = !DILocation(line: 556, column: 3, scope: !5133)
!5142 = !DILocation(line: 557, column: 9, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5144, file: !2, line: 557, column: 9)
!5144 = distinct !DILexicalBlock(scope: !5140, file: !2, line: 556, column: 66)
!5145 = !DILocation(line: 557, column: 18, scope: !5143)
!5146 = !DILocation(line: 557, column: 21, scope: !5143)
!5147 = !DILocation(line: 557, column: 24, scope: !5143)
!5148 = !{!639, !624, i64 16}
!5149 = !DILocation(line: 557, column: 15, scope: !5143)
!5150 = !DILocation(line: 557, column: 30, scope: !5143)
!5151 = !DILocation(line: 558, column: 10, scope: !5143)
!5152 = !DILocation(line: 558, column: 16, scope: !5143)
!5153 = !DILocation(line: 558, column: 22, scope: !5143)
!5154 = !DILocation(line: 558, column: 26, scope: !5143)
!5155 = !DILocation(line: 558, column: 34, scope: !5143)
!5156 = !DILocation(line: 558, column: 37, scope: !5143)
!5157 = !DILocation(line: 558, column: 31, scope: !5143)
!5158 = !DILocation(line: 558, column: 42, scope: !5143)
!5159 = !DILocation(line: 558, column: 55, scope: !5143)
!5160 = !DILocation(line: 558, column: 58, scope: !5143)
!5161 = !DILocation(line: 558, column: 62, scope: !5143)
!5162 = !DILocation(line: 558, column: 46, scope: !5143)
!5163 = !DILocation(line: 557, column: 9, scope: !5144)
!5164 = !DILocation(line: 559, column: 7, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5143, file: !2, line: 558, column: 69)
!5166 = !DILocation(line: 561, column: 10, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5144, file: !2, line: 561, column: 9)
!5168 = !DILocation(line: 561, column: 9, scope: !5144)
!5169 = !DILocation(line: 562, column: 13, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5167, file: !2, line: 561, column: 15)
!5171 = !DILocation(line: 562, column: 11, scope: !5170)
!5172 = !DILocation(line: 563, column: 11, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5170, file: !2, line: 563, column: 11)
!5174 = !DILocation(line: 563, column: 11, scope: !5170)
!5175 = !DILocation(line: 564, column: 9, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5173, file: !2, line: 563, column: 22)
!5177 = !DILocation(line: 566, column: 5, scope: !5170)
!5178 = !DILocation(line: 567, column: 19, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5144, file: !2, line: 567, column: 9)
!5180 = !DILocation(line: 567, column: 22, scope: !5179)
!5181 = !DILocation(line: 567, column: 26, scope: !5179)
!5182 = !DILocation(line: 567, column: 9, scope: !5179)
!5183 = !DILocation(line: 567, column: 9, scope: !5144)
!5184 = !DILocation(line: 568, column: 13, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5179, file: !2, line: 567, column: 31)
!5186 = !DILocation(line: 568, column: 11, scope: !5185)
!5187 = !DILocation(line: 569, column: 8, scope: !5185)
!5188 = !DILocation(line: 569, column: 20, scope: !5185)
!5189 = !DILocation(line: 570, column: 7, scope: !5185)
!5190 = !DILocation(line: 572, column: 3, scope: !5144)
!5191 = !DILocation(line: 556, column: 57, scope: !5140)
!5192 = !DILocation(line: 556, column: 60, scope: !5140)
!5193 = !DILocation(line: 556, column: 55, scope: !5140)
!5194 = !DILocation(line: 556, column: 3, scope: !5140)
!5195 = distinct !{!5195, !5141, !5196, !1202}
!5196 = !DILocation(line: 572, column: 3, scope: !5133)
!5197 = !DILocation(line: 574, column: 10, scope: !5108)
!5198 = !DILocation(line: 575, column: 1, scope: !5108)
!5199 = !DILocation(line: 574, column: 3, scope: !5108)
!5200 = distinct !DISubprogram(name: "search_static_table", scope: !2, file: !2, line: 1172, type: !5201, scopeLine: 1173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !5203)
!5201 = !DISubroutineType(types: !5202)
!5202 = !{!1527, !1347, !192, !47}
!5203 = !{!5204, !5205, !5206, !5207, !5208, !5209}
!5204 = !DILocalVariable(name: "nv", arg: 1, scope: !5200, file: !2, line: 1172, type: !1347)
!5205 = !DILocalVariable(name: "token", arg: 2, scope: !5200, file: !2, line: 1172, type: !192)
!5206 = !DILocalVariable(name: "name_only", arg: 3, scope: !5200, file: !2, line: 1173, type: !47)
!5207 = !DILocalVariable(name: "res", scope: !5200, file: !2, line: 1174, type: !1527)
!5208 = !DILocalVariable(name: "i", scope: !5200, file: !2, line: 1175, type: !47)
!5209 = !DILocalVariable(name: "ent", scope: !5200, file: !2, line: 1176, type: !1258)
!5210 = !DILocation(line: 1172, column: 60, scope: !5200)
!5211 = !DILocation(line: 1172, column: 72, scope: !5200)
!5212 = !DILocation(line: 1173, column: 46, scope: !5200)
!5213 = !DILocation(line: 1174, column: 17, scope: !5200)
!5214 = !DILocation(line: 1174, column: 23, scope: !5200)
!5215 = !DILocation(line: 1174, column: 24, scope: !5200)
!5216 = !DILocation(line: 1175, column: 3, scope: !5200)
!5217 = !DILocation(line: 1175, column: 7, scope: !5200)
!5218 = !DILocation(line: 1176, column: 3, scope: !5200)
!5219 = !DILocation(line: 1176, column: 34, scope: !5200)
!5220 = !DILocation(line: 1178, column: 7, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5200, file: !2, line: 1178, column: 7)
!5222 = !DILocation(line: 1178, column: 7, scope: !5200)
!5223 = !DILocation(line: 1179, column: 5, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5221, file: !2, line: 1178, column: 18)
!5225 = !DILocation(line: 1182, column: 12, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5200, file: !2, line: 1182, column: 3)
!5227 = !DILocation(line: 1182, column: 10, scope: !5226)
!5228 = !DILocation(line: 1182, column: 8, scope: !5226)
!5229 = !DILocation(line: 1183, column: 8, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5226, file: !2, line: 1182, column: 3)
!5231 = !DILocation(line: 1183, column: 10, scope: !5230)
!5232 = !DILocation(line: 1183, column: 44, scope: !5230)
!5233 = !DILocation(line: 1183, column: 60, scope: !5230)
!5234 = !DILocation(line: 1183, column: 47, scope: !5230)
!5235 = !DILocation(line: 1183, column: 63, scope: !5230)
!5236 = !DILocation(line: 1183, column: 72, scope: !5230)
!5237 = !DILocation(line: 1183, column: 69, scope: !5230)
!5238 = !DILocation(line: 0, scope: !5230)
!5239 = !DILocation(line: 1182, column: 3, scope: !5226)
!5240 = !DILocation(line: 1185, column: 25, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5230, file: !2, line: 1184, column: 13)
!5242 = !DILocation(line: 1185, column: 12, scope: !5241)
!5243 = !DILocation(line: 1185, column: 9, scope: !5241)
!5244 = !DILocation(line: 1186, column: 9, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5241, file: !2, line: 1186, column: 9)
!5246 = !DILocation(line: 1186, column: 14, scope: !5245)
!5247 = !DILocation(line: 1186, column: 20, scope: !5245)
!5248 = !{!1290, !633, i64 64}
!5249 = !DILocation(line: 1186, column: 27, scope: !5245)
!5250 = !DILocation(line: 1186, column: 31, scope: !5245)
!5251 = !DILocation(line: 1186, column: 24, scope: !5245)
!5252 = !DILocation(line: 1186, column: 40, scope: !5245)
!5253 = !DILocation(line: 1187, column: 16, scope: !5245)
!5254 = !DILocation(line: 1187, column: 21, scope: !5245)
!5255 = !DILocation(line: 1187, column: 27, scope: !5245)
!5256 = !{!1290, !613, i64 56}
!5257 = !DILocation(line: 1187, column: 33, scope: !5245)
!5258 = !DILocation(line: 1187, column: 37, scope: !5245)
!5259 = !DILocation(line: 1187, column: 44, scope: !5245)
!5260 = !DILocation(line: 1187, column: 48, scope: !5245)
!5261 = !DILocation(line: 1187, column: 9, scope: !5245)
!5262 = !DILocation(line: 1187, column: 58, scope: !5245)
!5263 = !DILocation(line: 1186, column: 9, scope: !5241)
!5264 = !DILocation(line: 1188, column: 19, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5245, file: !2, line: 1187, column: 64)
!5266 = !DILocation(line: 1188, column: 11, scope: !5265)
!5267 = !DILocation(line: 1188, column: 17, scope: !5265)
!5268 = !DILocation(line: 1189, column: 11, scope: !5265)
!5269 = !DILocation(line: 1189, column: 28, scope: !5265)
!5270 = !DILocation(line: 1190, column: 7, scope: !5265)
!5271 = !DILocation(line: 1192, column: 3, scope: !5241)
!5272 = !DILocation(line: 1184, column: 8, scope: !5230)
!5273 = !DILocation(line: 1182, column: 3, scope: !5230)
!5274 = distinct !{!5274, !5239, !5275, !1202}
!5275 = !DILocation(line: 1192, column: 3, scope: !5226)
!5276 = !DILocation(line: 1193, column: 3, scope: !5200)
!5277 = !DILocation(line: 1194, column: 1, scope: !5200)
!5278 = distinct !DISubprogram(name: "name_eq", scope: !2, file: !2, line: 506, type: !5279, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !5283)
!5279 = !DISubroutineType(types: !5280)
!5280 = !{!47, !5281, !1347}
!5281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5282, size: 64)
!5282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !597)
!5283 = !{!5284, !5285}
!5284 = !DILocalVariable(name: "a", arg: 1, scope: !5278, file: !2, line: 506, type: !5281)
!5285 = !DILocalVariable(name: "b", arg: 2, scope: !5278, file: !2, line: 506, type: !1347)
!5286 = !DILocation(line: 506, column: 41, scope: !5278)
!5287 = !DILocation(line: 506, column: 62, scope: !5278)
!5288 = !DILocation(line: 507, column: 10, scope: !5278)
!5289 = !DILocation(line: 507, column: 13, scope: !5278)
!5290 = !DILocation(line: 507, column: 19, scope: !5278)
!5291 = !DILocation(line: 507, column: 26, scope: !5278)
!5292 = !DILocation(line: 507, column: 29, scope: !5278)
!5293 = !DILocation(line: 507, column: 23, scope: !5278)
!5294 = !DILocation(line: 507, column: 37, scope: !5278)
!5295 = !DILocation(line: 508, column: 16, scope: !5278)
!5296 = !DILocation(line: 508, column: 19, scope: !5278)
!5297 = !DILocation(line: 508, column: 25, scope: !5278)
!5298 = !DILocation(line: 508, column: 31, scope: !5278)
!5299 = !DILocation(line: 508, column: 34, scope: !5278)
!5300 = !DILocation(line: 508, column: 40, scope: !5278)
!5301 = !DILocation(line: 508, column: 43, scope: !5278)
!5302 = !DILocation(line: 508, column: 10, scope: !5278)
!5303 = !DILocation(line: 0, scope: !5278)
!5304 = !DILocation(line: 507, column: 3, scope: !5278)
!5305 = distinct !DISubprogram(name: "value_eq", scope: !2, file: !2, line: 511, type: !5279, scopeLine: 511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !5306)
!5306 = !{!5307, !5308}
!5307 = !DILocalVariable(name: "a", arg: 1, scope: !5305, file: !2, line: 511, type: !5281)
!5308 = !DILocalVariable(name: "b", arg: 2, scope: !5305, file: !2, line: 511, type: !1347)
!5309 = !DILocation(line: 511, column: 42, scope: !5305)
!5310 = !DILocation(line: 511, column: 63, scope: !5305)
!5311 = !DILocation(line: 512, column: 10, scope: !5305)
!5312 = !DILocation(line: 512, column: 13, scope: !5305)
!5313 = !DILocation(line: 512, column: 20, scope: !5305)
!5314 = !DILocation(line: 512, column: 27, scope: !5305)
!5315 = !DILocation(line: 512, column: 30, scope: !5305)
!5316 = !DILocation(line: 512, column: 24, scope: !5305)
!5317 = !DILocation(line: 512, column: 39, scope: !5305)
!5318 = !DILocation(line: 513, column: 16, scope: !5305)
!5319 = !DILocation(line: 513, column: 19, scope: !5305)
!5320 = !DILocation(line: 513, column: 26, scope: !5305)
!5321 = !DILocation(line: 513, column: 32, scope: !5305)
!5322 = !DILocation(line: 513, column: 35, scope: !5305)
!5323 = !DILocation(line: 513, column: 42, scope: !5305)
!5324 = !DILocation(line: 513, column: 45, scope: !5305)
!5325 = !DILocation(line: 513, column: 10, scope: !5305)
!5326 = !DILocation(line: 0, scope: !5305)
!5327 = !DILocation(line: 512, column: 3, scope: !5305)
!5328 = distinct !DISubprogram(name: "hd_ringbuf_push_front", scope: !2, file: !2, line: 653, type: !5329, scopeLine: 654, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !5331)
!5329 = !DISubroutineType(types: !5330)
!5330 = !{!47, !1302, !592, !734}
!5331 = !{!5332, !5333, !5334, !5335}
!5332 = !DILocalVariable(name: "ringbuf", arg: 1, scope: !5328, file: !2, line: 653, type: !1302)
!5333 = !DILocalVariable(name: "ent", arg: 2, scope: !5328, file: !2, line: 654, type: !592)
!5334 = !DILocalVariable(name: "mem", arg: 3, scope: !5328, file: !2, line: 654, type: !734)
!5335 = !DILocalVariable(name: "rv", scope: !5328, file: !2, line: 655, type: !47)
!5336 = !DILocation(line: 653, column: 54, scope: !5328)
!5337 = !DILocation(line: 654, column: 52, scope: !5328)
!5338 = !DILocation(line: 654, column: 70, scope: !5328)
!5339 = !DILocation(line: 655, column: 3, scope: !5328)
!5340 = !DILocation(line: 655, column: 7, scope: !5328)
!5341 = !DILocation(line: 657, column: 27, scope: !5328)
!5342 = !DILocation(line: 657, column: 36, scope: !5328)
!5343 = !DILocation(line: 657, column: 45, scope: !5328)
!5344 = !DILocation(line: 657, column: 49, scope: !5328)
!5345 = !DILocation(line: 657, column: 54, scope: !5328)
!5346 = !DILocation(line: 657, column: 8, scope: !5328)
!5347 = !DILocation(line: 657, column: 6, scope: !5328)
!5348 = !DILocation(line: 659, column: 7, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5328, file: !2, line: 659, column: 7)
!5350 = !DILocation(line: 659, column: 10, scope: !5349)
!5351 = !DILocation(line: 659, column: 7, scope: !5328)
!5352 = !DILocation(line: 660, column: 12, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5349, file: !2, line: 659, column: 16)
!5354 = !DILocation(line: 660, column: 5, scope: !5353)
!5355 = !DILocation(line: 663, column: 55, scope: !5328)
!5356 = !DILocation(line: 663, column: 3, scope: !5328)
!5357 = !DILocation(line: 663, column: 12, scope: !5328)
!5358 = !DILocation(line: 663, column: 21, scope: !5328)
!5359 = !DILocation(line: 663, column: 30, scope: !5328)
!5360 = !DILocation(line: 663, column: 19, scope: !5328)
!5361 = !DILocation(line: 663, column: 38, scope: !5328)
!5362 = !DILocation(line: 663, column: 47, scope: !5328)
!5363 = !DILocation(line: 663, column: 36, scope: !5328)
!5364 = !DILocation(line: 663, column: 53, scope: !5328)
!5365 = !DILocation(line: 664, column: 5, scope: !5328)
!5366 = !DILocation(line: 664, column: 14, scope: !5328)
!5367 = !DILocation(line: 664, column: 3, scope: !5328)
!5368 = !DILocation(line: 666, column: 3, scope: !5328)
!5369 = !DILocation(line: 667, column: 1, scope: !5328)
!5370 = distinct !DISubprogram(name: "hd_map_insert", scope: !2, file: !2, line: 533, type: !4024, scopeLine: 533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !5371)
!5371 = !{!5372, !5373, !5374}
!5372 = !DILocalVariable(name: "map", arg: 1, scope: !5370, file: !2, line: 533, type: !896)
!5373 = !DILocalVariable(name: "ent", arg: 2, scope: !5370, file: !2, line: 533, type: !592)
!5374 = !DILocalVariable(name: "bucket", scope: !5370, file: !2, line: 534, type: !729)
!5375 = !DILocation(line: 533, column: 43, scope: !5370)
!5376 = !DILocation(line: 533, column: 66, scope: !5370)
!5377 = !DILocation(line: 534, column: 3, scope: !5370)
!5378 = !DILocation(line: 534, column: 22, scope: !5370)
!5379 = !DILocation(line: 536, column: 13, scope: !5370)
!5380 = !DILocation(line: 536, column: 18, scope: !5370)
!5381 = !DILocation(line: 536, column: 24, scope: !5370)
!5382 = !DILocation(line: 536, column: 29, scope: !5370)
!5383 = !DILocation(line: 536, column: 34, scope: !5370)
!5384 = !DILocation(line: 536, column: 10, scope: !5370)
!5385 = !DILocation(line: 538, column: 8, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5370, file: !2, line: 538, column: 7)
!5387 = !DILocation(line: 538, column: 7, scope: !5386)
!5388 = !DILocation(line: 538, column: 15, scope: !5386)
!5389 = !DILocation(line: 538, column: 7, scope: !5370)
!5390 = !DILocation(line: 539, column: 15, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5386, file: !2, line: 538, column: 24)
!5392 = !DILocation(line: 539, column: 6, scope: !5391)
!5393 = !DILocation(line: 539, column: 13, scope: !5391)
!5394 = !DILocation(line: 540, column: 5, scope: !5391)
!5395 = !DILocation(line: 544, column: 16, scope: !5370)
!5396 = !DILocation(line: 544, column: 15, scope: !5370)
!5397 = !DILocation(line: 544, column: 3, scope: !5370)
!5398 = !DILocation(line: 544, column: 8, scope: !5370)
!5399 = !DILocation(line: 544, column: 13, scope: !5370)
!5400 = !DILocation(line: 545, column: 13, scope: !5370)
!5401 = !DILocation(line: 545, column: 4, scope: !5370)
!5402 = !DILocation(line: 545, column: 11, scope: !5370)
!5403 = !DILocation(line: 546, column: 1, scope: !5370)
!5404 = distinct !DISubprogram(name: "hd_ringbuf_reserve", scope: !2, file: !2, line: 614, type: !3896, scopeLine: 615, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !5405)
!5405 = !{!5406, !5407, !5408, !5409, !5410, !5411}
!5406 = !DILocalVariable(name: "ringbuf", arg: 1, scope: !5404, file: !2, line: 614, type: !1302)
!5407 = !DILocalVariable(name: "bufsize", arg: 2, scope: !5404, file: !2, line: 614, type: !188)
!5408 = !DILocalVariable(name: "mem", arg: 3, scope: !5404, file: !2, line: 615, type: !734)
!5409 = !DILocalVariable(name: "i", scope: !5404, file: !2, line: 616, type: !188)
!5410 = !DILocalVariable(name: "size", scope: !5404, file: !2, line: 617, type: !188)
!5411 = !DILocalVariable(name: "buffer", scope: !5404, file: !2, line: 618, type: !729)
!5412 = !DILocation(line: 614, column: 51, scope: !5404)
!5413 = !DILocation(line: 614, column: 67, scope: !5404)
!5414 = !DILocation(line: 615, column: 44, scope: !5404)
!5415 = !DILocation(line: 616, column: 3, scope: !5404)
!5416 = !DILocation(line: 616, column: 10, scope: !5404)
!5417 = !DILocation(line: 617, column: 3, scope: !5404)
!5418 = !DILocation(line: 617, column: 10, scope: !5404)
!5419 = !DILocation(line: 618, column: 3, scope: !5404)
!5420 = !DILocation(line: 618, column: 22, scope: !5404)
!5421 = !DILocation(line: 620, column: 7, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5404, file: !2, line: 620, column: 7)
!5423 = !DILocation(line: 620, column: 16, scope: !5422)
!5424 = !DILocation(line: 620, column: 21, scope: !5422)
!5425 = !DILocation(line: 620, column: 28, scope: !5422)
!5426 = !DILocation(line: 620, column: 25, scope: !5422)
!5427 = !DILocation(line: 620, column: 7, scope: !5404)
!5428 = !DILocation(line: 621, column: 5, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5422, file: !2, line: 620, column: 37)
!5430 = !DILocation(line: 623, column: 13, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5404, file: !2, line: 623, column: 3)
!5432 = !DILocation(line: 623, column: 8, scope: !5431)
!5433 = !DILocation(line: 623, column: 18, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5431, file: !2, line: 623, column: 3)
!5435 = !DILocation(line: 623, column: 25, scope: !5434)
!5436 = !DILocation(line: 623, column: 23, scope: !5434)
!5437 = !DILocation(line: 623, column: 3, scope: !5431)
!5438 = !DILocation(line: 623, column: 39, scope: !5434)
!5439 = !DILocation(line: 623, column: 3, scope: !5434)
!5440 = distinct !{!5440, !5437, !5441, !1202}
!5441 = !DILocation(line: 624, column: 5, scope: !5431)
!5442 = !DILocation(line: 625, column: 31, scope: !5404)
!5443 = !DILocation(line: 625, column: 65, scope: !5404)
!5444 = !DILocation(line: 625, column: 63, scope: !5404)
!5445 = !DILocation(line: 625, column: 12, scope: !5404)
!5446 = !DILocation(line: 625, column: 10, scope: !5404)
!5447 = !DILocation(line: 626, column: 7, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5404, file: !2, line: 626, column: 7)
!5449 = !DILocation(line: 626, column: 14, scope: !5448)
!5450 = !DILocation(line: 626, column: 7, scope: !5404)
!5451 = !DILocation(line: 627, column: 5, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5448, file: !2, line: 626, column: 23)
!5453 = !DILocation(line: 629, column: 10, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5404, file: !2, line: 629, column: 3)
!5455 = !DILocation(line: 629, column: 8, scope: !5454)
!5456 = !DILocation(line: 629, column: 15, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5454, file: !2, line: 629, column: 3)
!5458 = !DILocation(line: 629, column: 19, scope: !5457)
!5459 = !DILocation(line: 629, column: 28, scope: !5457)
!5460 = !DILocation(line: 629, column: 17, scope: !5457)
!5461 = !DILocation(line: 629, column: 3, scope: !5454)
!5462 = !DILocation(line: 630, column: 32, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5457, file: !2, line: 629, column: 38)
!5464 = !DILocation(line: 630, column: 41, scope: !5463)
!5465 = !DILocation(line: 630, column: 17, scope: !5463)
!5466 = !DILocation(line: 630, column: 5, scope: !5463)
!5467 = !DILocation(line: 630, column: 12, scope: !5463)
!5468 = !DILocation(line: 630, column: 15, scope: !5463)
!5469 = !DILocation(line: 631, column: 3, scope: !5463)
!5470 = !DILocation(line: 629, column: 33, scope: !5457)
!5471 = !DILocation(line: 629, column: 3, scope: !5457)
!5472 = distinct !{!5472, !5461, !5473, !1202}
!5473 = !DILocation(line: 631, column: 3, scope: !5454)
!5474 = !DILocation(line: 632, column: 20, scope: !5404)
!5475 = !DILocation(line: 632, column: 25, scope: !5404)
!5476 = !DILocation(line: 632, column: 34, scope: !5404)
!5477 = !DILocation(line: 632, column: 3, scope: !5404)
!5478 = !DILocation(line: 633, column: 21, scope: !5404)
!5479 = !DILocation(line: 633, column: 3, scope: !5404)
!5480 = !DILocation(line: 633, column: 12, scope: !5404)
!5481 = !DILocation(line: 633, column: 19, scope: !5404)
!5482 = !DILocation(line: 634, column: 19, scope: !5404)
!5483 = !DILocation(line: 634, column: 24, scope: !5404)
!5484 = !DILocation(line: 634, column: 3, scope: !5404)
!5485 = !DILocation(line: 634, column: 12, scope: !5404)
!5486 = !DILocation(line: 634, column: 17, scope: !5404)
!5487 = !DILocation(line: 635, column: 3, scope: !5404)
!5488 = !DILocation(line: 635, column: 12, scope: !5404)
!5489 = !DILocation(line: 635, column: 18, scope: !5404)
!5490 = !DILocation(line: 636, column: 3, scope: !5404)
!5491 = !DILocation(line: 637, column: 1, scope: !5404)
!5492 = distinct !DISubprogram(name: "emit_header", scope: !2, file: !2, line: 786, type: !5493, scopeLine: 786, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !5495)
!5493 = !DISubroutineType(types: !5494)
!5494 = !{null, !608, !608}
!5495 = !{!5496, !5497}
!5496 = !DILocalVariable(name: "nv_out", arg: 1, scope: !5492, file: !2, line: 786, type: !608)
!5497 = !DILocalVariable(name: "nv", arg: 2, scope: !5492, file: !2, line: 786, type: !608)
!5498 = !DILocation(line: 786, column: 40, scope: !5492)
!5499 = !DILocation(line: 786, column: 63, scope: !5492)
!5500 = !DILocation(line: 787, column: 3, scope: !5492)
!5501 = !DILocation(line: 787, column: 3, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5492, file: !2, line: 787, column: 3)
!5503 = !DILocation(line: 791, column: 4, scope: !5492)
!5504 = !DILocation(line: 791, column: 14, scope: !5492)
!5505 = !DILocation(line: 791, column: 13, scope: !5492)
!5506 = !DILocation(line: 792, column: 1, scope: !5492)
!5507 = !DISubprogram(name: "nghttp2_hd_huff_decode", scope: !23, file: !23, line: 430, type: !5508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5508 = !DISubroutineType(types: !5509)
!5509 = !{!195, !3056, !1041, !2078, !188, !47}
!5510 = !DISubprogram(name: "nghttp2_hd_huff_decode_failure_state", scope: !23, file: !23, line: 438, type: !5511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{!47, !3056}
!5513 = !DISubprogram(name: "nghttp2_cpymem", scope: !5514, file: !5514, line: 120, type: !5515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5514 = !DIFile(filename: "./nghttp2_helper.h", directory: "/local-ssd/nghttp2-ygk7gapsiutjtu4stb5i6ycvvkuh4eel-build/aidengro/spack-stage-nghttp2-1.57.0-ygk7gapsiutjtu4stb5i6ycvvkuh4eel/spack-src/lib", checksumkind: CSK_MD5, checksum: "29c69b335e2bd6771de21b287c148dc7")
!5515 = !DISubroutineType(types: !5516)
!5516 = !{!181, !181, !4195, !188}
!5517 = distinct !DISubprogram(name: "pack_first_byte", scope: !2, file: !2, line: 1016, type: !5518, scopeLine: 1016, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !5520)
!5518 = !DISubroutineType(types: !5519)
!5519 = !{!182, !47}
!5520 = !{!5521}
!5521 = !DILocalVariable(name: "indexing_mode", arg: 1, scope: !5517, file: !2, line: 1016, type: !47)
!5522 = !DILocation(line: 1016, column: 36, scope: !5517)
!5523 = !DILocation(line: 1017, column: 11, scope: !5517)
!5524 = !DILocation(line: 1017, column: 3, scope: !5517)
!5525 = !DILocation(line: 1019, column: 5, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5517, file: !2, line: 1017, column: 26)
!5527 = !DILocation(line: 1021, column: 5, scope: !5526)
!5528 = !DILocation(line: 1023, column: 5, scope: !5526)
!5529 = !DILocation(line: 1025, column: 5, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5531, file: !2, line: 1025, column: 5)
!5531 = distinct !DILexicalBlock(scope: !5526, file: !2, line: 1025, column: 5)
!5532 = !DILocation(line: 1030, column: 1, scope: !5517)
!5533 = distinct !DISubprogram(name: "emit_string", scope: !2, file: !2, line: 971, type: !5534, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !5536)
!5534 = !DISubroutineType(types: !5535)
!5535 = !{!47, !1329, !2078, !188}
!5536 = !{!5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545}
!5537 = !DILocalVariable(name: "bufs", arg: 1, scope: !5533, file: !2, line: 971, type: !1329)
!5538 = !DILocalVariable(name: "str", arg: 2, scope: !5533, file: !2, line: 971, type: !2078)
!5539 = !DILocalVariable(name: "len", arg: 3, scope: !5533, file: !2, line: 971, type: !188)
!5540 = !DILocalVariable(name: "rv", scope: !5533, file: !2, line: 972, type: !47)
!5541 = !DILocalVariable(name: "sb", scope: !5533, file: !2, line: 973, type: !1474)
!5542 = !DILocalVariable(name: "bufp", scope: !5533, file: !2, line: 974, type: !181)
!5543 = !DILocalVariable(name: "blocklen", scope: !5533, file: !2, line: 975, type: !188)
!5544 = !DILocalVariable(name: "enclen", scope: !5533, file: !2, line: 976, type: !188)
!5545 = !DILocalVariable(name: "huffman", scope: !5533, file: !2, line: 977, type: !47)
!5546 = !DILocation(line: 971, column: 38, scope: !5533)
!5547 = !DILocation(line: 971, column: 59, scope: !5533)
!5548 = !DILocation(line: 971, column: 71, scope: !5533)
!5549 = !DILocation(line: 972, column: 3, scope: !5533)
!5550 = !DILocation(line: 972, column: 7, scope: !5533)
!5551 = !DILocation(line: 973, column: 3, scope: !5533)
!5552 = !DILocation(line: 973, column: 11, scope: !5533)
!5553 = !DILocation(line: 974, column: 3, scope: !5533)
!5554 = !DILocation(line: 974, column: 12, scope: !5533)
!5555 = !DILocation(line: 975, column: 3, scope: !5533)
!5556 = !DILocation(line: 975, column: 10, scope: !5533)
!5557 = !DILocation(line: 976, column: 3, scope: !5533)
!5558 = !DILocation(line: 976, column: 10, scope: !5533)
!5559 = !DILocation(line: 977, column: 3, scope: !5533)
!5560 = !DILocation(line: 977, column: 7, scope: !5533)
!5561 = !DILocation(line: 979, column: 41, scope: !5533)
!5562 = !DILocation(line: 979, column: 46, scope: !5533)
!5563 = !DILocation(line: 979, column: 12, scope: !5533)
!5564 = !DILocation(line: 979, column: 10, scope: !5533)
!5565 = !DILocation(line: 981, column: 7, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5533, file: !2, line: 981, column: 7)
!5567 = !DILocation(line: 981, column: 16, scope: !5566)
!5568 = !DILocation(line: 981, column: 14, scope: !5566)
!5569 = !DILocation(line: 981, column: 7, scope: !5533)
!5570 = !DILocation(line: 982, column: 13, scope: !5571)
!5571 = distinct !DILexicalBlock(scope: !5566, file: !2, line: 981, column: 21)
!5572 = !DILocation(line: 983, column: 3, scope: !5571)
!5573 = !DILocation(line: 984, column: 14, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5566, file: !2, line: 983, column: 10)
!5575 = !DILocation(line: 984, column: 12, scope: !5574)
!5576 = !DILocation(line: 987, column: 35, scope: !5533)
!5577 = !DILocation(line: 987, column: 14, scope: !5533)
!5578 = !DILocation(line: 987, column: 12, scope: !5533)
!5579 = !DILocation(line: 989, column: 3, scope: !5533)
!5580 = !DILocation(line: 989, column: 3, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5533, file: !2, line: 989, column: 3)
!5582 = !DILocation(line: 993, column: 20, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5533, file: !2, line: 993, column: 7)
!5584 = !DILocation(line: 993, column: 18, scope: !5583)
!5585 = !DILocation(line: 993, column: 7, scope: !5533)
!5586 = !DILocation(line: 994, column: 5, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5583, file: !2, line: 993, column: 30)
!5588 = !DILocation(line: 997, column: 10, scope: !5533)
!5589 = !DILocation(line: 997, column: 8, scope: !5533)
!5590 = !DILocation(line: 998, column: 11, scope: !5533)
!5591 = !DILocation(line: 998, column: 4, scope: !5533)
!5592 = !DILocation(line: 998, column: 9, scope: !5533)
!5593 = !DILocation(line: 999, column: 17, scope: !5533)
!5594 = !DILocation(line: 999, column: 23, scope: !5533)
!5595 = !DILocation(line: 999, column: 3, scope: !5533)
!5596 = !DILocation(line: 1001, column: 25, scope: !5533)
!5597 = !DILocation(line: 1001, column: 31, scope: !5533)
!5598 = !DILocation(line: 1001, column: 35, scope: !5533)
!5599 = !DILocation(line: 1001, column: 8, scope: !5533)
!5600 = !DILocation(line: 1001, column: 6, scope: !5533)
!5601 = !DILocation(line: 1002, column: 7, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5533, file: !2, line: 1002, column: 7)
!5603 = !DILocation(line: 1002, column: 10, scope: !5602)
!5604 = !DILocation(line: 1002, column: 7, scope: !5533)
!5605 = !DILocation(line: 1003, column: 12, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5602, file: !2, line: 1002, column: 16)
!5607 = !DILocation(line: 1003, column: 5, scope: !5606)
!5608 = !DILocation(line: 1006, column: 7, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5533, file: !2, line: 1006, column: 7)
!5610 = !DILocation(line: 1006, column: 7, scope: !5533)
!5611 = !DILocation(line: 1007, column: 33, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5609, file: !2, line: 1006, column: 16)
!5613 = !DILocation(line: 1007, column: 39, scope: !5612)
!5614 = !DILocation(line: 1007, column: 44, scope: !5612)
!5615 = !DILocation(line: 1007, column: 10, scope: !5612)
!5616 = !DILocation(line: 1007, column: 8, scope: !5612)
!5617 = !DILocation(line: 1008, column: 3, scope: !5612)
!5618 = !DILocation(line: 1009, column: 5, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5620, file: !2, line: 1009, column: 5)
!5620 = distinct !DILexicalBlock(scope: !5621, file: !2, line: 1009, column: 5)
!5621 = distinct !DILexicalBlock(scope: !5609, file: !2, line: 1008, column: 10)
!5622 = !DILocation(line: 1009, column: 5, scope: !5620)
!5623 = !DILocation(line: 1010, column: 27, scope: !5621)
!5624 = !DILocation(line: 1010, column: 33, scope: !5621)
!5625 = !DILocation(line: 1010, column: 38, scope: !5621)
!5626 = !DILocation(line: 1010, column: 10, scope: !5621)
!5627 = !DILocation(line: 1010, column: 8, scope: !5621)
!5628 = !DILocation(line: 1013, column: 10, scope: !5533)
!5629 = !DILocation(line: 1013, column: 3, scope: !5533)
!5630 = !DILocation(line: 1014, column: 1, scope: !5533)
!5631 = !DISubprogram(name: "nghttp2_hd_huff_encode_count", scope: !23, file: !23, line: 392, type: !5632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5632 = !DISubroutineType(types: !5633)
!5633 = !{!188, !2078, !188}
!5634 = !DISubprogram(name: "nghttp2_hd_huff_encode", scope: !23, file: !23, line: 406, type: !5534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5635 = !DISubprogram(name: "nghttp2_bufs_addb", scope: !922, file: !922, line: 287, type: !5636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5636 = !DISubroutineType(types: !5637)
!5637 = !{!47, !1329, !182}
!5638 = distinct !DISubprogram(name: "nghttp2_hd_table_get2", scope: !2, file: !2, line: 1315, type: !3814, scopeLine: 1316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !5639)
!5639 = !{!5640, !5641}
!5640 = !DILocalVariable(name: "context", arg: 1, scope: !5638, file: !2, line: 1315, type: !846)
!5641 = !DILocalVariable(name: "idx", arg: 2, scope: !5638, file: !2, line: 1316, type: !188)
!5642 = !DILocation(line: 1315, column: 68, scope: !5638)
!5643 = !DILocation(line: 1316, column: 55, scope: !5638)
!5644 = !DILocation(line: 1317, column: 3, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5646, file: !2, line: 1317, column: 3)
!5646 = distinct !DILexicalBlock(scope: !5638, file: !2, line: 1317, column: 3)
!5647 = !DILocation(line: 1317, column: 3, scope: !5646)
!5648 = !DILocation(line: 1318, column: 7, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5638, file: !2, line: 1318, column: 7)
!5650 = !DILocation(line: 1318, column: 11, scope: !5649)
!5651 = !DILocation(line: 1318, column: 7, scope: !5638)
!5652 = !DILocation(line: 1319, column: 29, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5649, file: !2, line: 1318, column: 43)
!5654 = !DILocation(line: 1319, column: 38, scope: !5653)
!5655 = !DILocation(line: 1320, column: 28, scope: !5653)
!5656 = !DILocation(line: 1320, column: 32, scope: !5653)
!5657 = !DILocation(line: 1319, column: 13, scope: !5653)
!5658 = !DILocation(line: 1321, column: 19, scope: !5653)
!5659 = !DILocation(line: 1319, column: 5, scope: !5653)
!5660 = !DILocation(line: 1324, column: 24, scope: !5638)
!5661 = !DILocation(line: 1324, column: 11, scope: !5638)
!5662 = !DILocation(line: 1324, column: 29, scope: !5638)
!5663 = !DILocation(line: 1324, column: 3, scope: !5638)
!5664 = !DILocation(line: 1325, column: 1, scope: !5638)
