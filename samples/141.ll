; ModuleID = 'samples/141.bc'
source_filename = "/local-ssd/eccodes-psuel4mgyciesdodvadhkap2g5cqhhyf-build/aidengro/spack-stage-eccodes-2.25.0-psuel4mgyciesdodvadhkap2g5cqhhyf/spack-src/src/grib_accessor_class_count_missing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grib_accessor_class = type { ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.grib_accessor = type { ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, i64, ptr, [20 x ptr], [20 x ptr], i32, ptr, i64, i64, i64, ptr, ptr, [20 x ptr], ptr }
%struct.grib_accessor_count_missing = type { %struct.grib_accessor, ptr, ptr, ptr }
%struct.grib_handle = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [10 x ptr], [10 x i64], i32, i32, i32, ptr, i64, i32, i32, [5000 x ptr], [12 x ptr], [12 x ptr], i32, i64, i64, i64, i64, double, i32 }
%struct.grib_buffer = type { i32, i32, i32, i64, i64, i64, ptr }

@_grib_accessor_class_count_missing = internal global %struct.grib_accessor_class { ptr @grib_accessor_class_long, ptr @.str, i64 672, i32 0, ptr @init_class, ptr @init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @value_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @unpack_long, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@grib_accessor_class_count_missing = global ptr @_grib_accessor_class_count_missing, align 8
@grib_accessor_class_long = external global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"count_missing\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to count missing values\00", align 1
@bitsoff = internal constant [256 x i8] c"\08\07\07\06\07\06\06\05\07\06\06\05\06\05\05\04\07\06\06\05\06\05\05\04\06\05\05\04\05\04\04\03\07\06\06\05\06\05\05\04\06\05\05\04\05\04\04\03\06\05\05\04\05\04\04\03\05\04\04\03\04\03\03\02\07\06\06\05\06\05\05\04\06\05\05\04\05\04\04\03\06\05\05\04\05\04\04\03\05\04\04\03\04\03\03\02\06\05\05\04\05\04\04\03\05\04\04\03\04\03\03\02\05\04\04\03\04\03\03\02\04\03\03\02\03\02\02\01\07\06\06\05\06\05\05\04\06\05\05\04\05\04\04\03\06\05\05\04\05\04\04\03\05\04\04\03\04\03\03\02\06\05\05\04\05\04\04\03\05\04\04\03\04\03\03\02\05\04\04\03\04\03\03\02\04\03\03\02\03\02\02\01\06\05\05\04\05\04\04\03\05\04\04\03\04\03\03\02\05\04\04\03\04\03\03\02\04\03\03\02\03\02\02\01\05\04\04\03\04\03\03\02\04\03\03\02\03\02\02\01\04\03\03\02\03\02\02\01\03\02\02\01\02\01\01\00", align 16
@used = internal constant [9 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255], align 16

; Function Attrs: nounwind uwtable
define internal void @init_class(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super = getelementptr inbounds %struct.grib_accessor_class, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %super, align 8, !tbaa !8
  %2 = load ptr, ptr %1, align 8, !tbaa !4
  %dump = getelementptr inbounds %struct.grib_accessor_class, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %dump, align 8, !tbaa !12
  %4 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %dump1 = getelementptr inbounds %struct.grib_accessor_class, ptr %4, i32 0, i32 8
  store ptr %3, ptr %dump1, align 8, !tbaa !12
  %5 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super2 = getelementptr inbounds %struct.grib_accessor_class, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %super2, align 8, !tbaa !8
  %7 = load ptr, ptr %6, align 8, !tbaa !4
  %next_offset = getelementptr inbounds %struct.grib_accessor_class, ptr %7, i32 0, i32 9
  %8 = load ptr, ptr %next_offset, align 8, !tbaa !13
  %9 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %next_offset3 = getelementptr inbounds %struct.grib_accessor_class, ptr %9, i32 0, i32 9
  store ptr %8, ptr %next_offset3, align 8, !tbaa !13
  %10 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super4 = getelementptr inbounds %struct.grib_accessor_class, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %super4, align 8, !tbaa !8
  %12 = load ptr, ptr %11, align 8, !tbaa !4
  %string_length = getelementptr inbounds %struct.grib_accessor_class, ptr %12, i32 0, i32 10
  %13 = load ptr, ptr %string_length, align 8, !tbaa !14
  %14 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %string_length5 = getelementptr inbounds %struct.grib_accessor_class, ptr %14, i32 0, i32 10
  store ptr %13, ptr %string_length5, align 8, !tbaa !14
  %15 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super6 = getelementptr inbounds %struct.grib_accessor_class, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %super6, align 8, !tbaa !8
  %17 = load ptr, ptr %16, align 8, !tbaa !4
  %byte_count = getelementptr inbounds %struct.grib_accessor_class, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %byte_count, align 8, !tbaa !15
  %19 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %byte_count7 = getelementptr inbounds %struct.grib_accessor_class, ptr %19, i32 0, i32 12
  store ptr %18, ptr %byte_count7, align 8, !tbaa !15
  %20 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super8 = getelementptr inbounds %struct.grib_accessor_class, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %super8, align 8, !tbaa !8
  %22 = load ptr, ptr %21, align 8, !tbaa !4
  %byte_offset = getelementptr inbounds %struct.grib_accessor_class, ptr %22, i32 0, i32 13
  %23 = load ptr, ptr %byte_offset, align 8, !tbaa !16
  %24 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %byte_offset9 = getelementptr inbounds %struct.grib_accessor_class, ptr %24, i32 0, i32 13
  store ptr %23, ptr %byte_offset9, align 8, !tbaa !16
  %25 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super10 = getelementptr inbounds %struct.grib_accessor_class, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %super10, align 8, !tbaa !8
  %27 = load ptr, ptr %26, align 8, !tbaa !4
  %get_native_type = getelementptr inbounds %struct.grib_accessor_class, ptr %27, i32 0, i32 14
  %28 = load ptr, ptr %get_native_type, align 8, !tbaa !17
  %29 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %get_native_type11 = getelementptr inbounds %struct.grib_accessor_class, ptr %29, i32 0, i32 14
  store ptr %28, ptr %get_native_type11, align 8, !tbaa !17
  %30 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super12 = getelementptr inbounds %struct.grib_accessor_class, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %super12, align 8, !tbaa !8
  %32 = load ptr, ptr %31, align 8, !tbaa !4
  %sub_section = getelementptr inbounds %struct.grib_accessor_class, ptr %32, i32 0, i32 15
  %33 = load ptr, ptr %sub_section, align 8, !tbaa !18
  %34 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %sub_section13 = getelementptr inbounds %struct.grib_accessor_class, ptr %34, i32 0, i32 15
  store ptr %33, ptr %sub_section13, align 8, !tbaa !18
  %35 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super14 = getelementptr inbounds %struct.grib_accessor_class, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %super14, align 8, !tbaa !8
  %37 = load ptr, ptr %36, align 8, !tbaa !4
  %pack_missing = getelementptr inbounds %struct.grib_accessor_class, ptr %37, i32 0, i32 16
  %38 = load ptr, ptr %pack_missing, align 8, !tbaa !19
  %39 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_missing15 = getelementptr inbounds %struct.grib_accessor_class, ptr %39, i32 0, i32 16
  store ptr %38, ptr %pack_missing15, align 8, !tbaa !19
  %40 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super16 = getelementptr inbounds %struct.grib_accessor_class, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %super16, align 8, !tbaa !8
  %42 = load ptr, ptr %41, align 8, !tbaa !4
  %is_missing = getelementptr inbounds %struct.grib_accessor_class, ptr %42, i32 0, i32 17
  %43 = load ptr, ptr %is_missing, align 8, !tbaa !20
  %44 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %is_missing17 = getelementptr inbounds %struct.grib_accessor_class, ptr %44, i32 0, i32 17
  store ptr %43, ptr %is_missing17, align 8, !tbaa !20
  %45 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super18 = getelementptr inbounds %struct.grib_accessor_class, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %super18, align 8, !tbaa !8
  %47 = load ptr, ptr %46, align 8, !tbaa !4
  %pack_long = getelementptr inbounds %struct.grib_accessor_class, ptr %47, i32 0, i32 18
  %48 = load ptr, ptr %pack_long, align 8, !tbaa !21
  %49 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_long19 = getelementptr inbounds %struct.grib_accessor_class, ptr %49, i32 0, i32 18
  store ptr %48, ptr %pack_long19, align 8, !tbaa !21
  %50 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super20 = getelementptr inbounds %struct.grib_accessor_class, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %super20, align 8, !tbaa !8
  %52 = load ptr, ptr %51, align 8, !tbaa !4
  %pack_double = getelementptr inbounds %struct.grib_accessor_class, ptr %52, i32 0, i32 20
  %53 = load ptr, ptr %pack_double, align 8, !tbaa !22
  %54 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_double21 = getelementptr inbounds %struct.grib_accessor_class, ptr %54, i32 0, i32 20
  store ptr %53, ptr %pack_double21, align 8, !tbaa !22
  %55 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super22 = getelementptr inbounds %struct.grib_accessor_class, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %super22, align 8, !tbaa !8
  %57 = load ptr, ptr %56, align 8, !tbaa !4
  %unpack_double = getelementptr inbounds %struct.grib_accessor_class, ptr %57, i32 0, i32 21
  %58 = load ptr, ptr %unpack_double, align 8, !tbaa !23
  %59 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double23 = getelementptr inbounds %struct.grib_accessor_class, ptr %59, i32 0, i32 21
  store ptr %58, ptr %unpack_double23, align 8, !tbaa !23
  %60 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super24 = getelementptr inbounds %struct.grib_accessor_class, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %super24, align 8, !tbaa !8
  %62 = load ptr, ptr %61, align 8, !tbaa !4
  %pack_string = getelementptr inbounds %struct.grib_accessor_class, ptr %62, i32 0, i32 22
  %63 = load ptr, ptr %pack_string, align 8, !tbaa !24
  %64 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_string25 = getelementptr inbounds %struct.grib_accessor_class, ptr %64, i32 0, i32 22
  store ptr %63, ptr %pack_string25, align 8, !tbaa !24
  %65 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super26 = getelementptr inbounds %struct.grib_accessor_class, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %super26, align 8, !tbaa !8
  %67 = load ptr, ptr %66, align 8, !tbaa !4
  %unpack_string = getelementptr inbounds %struct.grib_accessor_class, ptr %67, i32 0, i32 23
  %68 = load ptr, ptr %unpack_string, align 8, !tbaa !25
  %69 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_string27 = getelementptr inbounds %struct.grib_accessor_class, ptr %69, i32 0, i32 23
  store ptr %68, ptr %unpack_string27, align 8, !tbaa !25
  %70 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super28 = getelementptr inbounds %struct.grib_accessor_class, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %super28, align 8, !tbaa !8
  %72 = load ptr, ptr %71, align 8, !tbaa !4
  %pack_string_array = getelementptr inbounds %struct.grib_accessor_class, ptr %72, i32 0, i32 24
  %73 = load ptr, ptr %pack_string_array, align 8, !tbaa !26
  %74 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_string_array29 = getelementptr inbounds %struct.grib_accessor_class, ptr %74, i32 0, i32 24
  store ptr %73, ptr %pack_string_array29, align 8, !tbaa !26
  %75 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super30 = getelementptr inbounds %struct.grib_accessor_class, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %super30, align 8, !tbaa !8
  %77 = load ptr, ptr %76, align 8, !tbaa !4
  %unpack_string_array = getelementptr inbounds %struct.grib_accessor_class, ptr %77, i32 0, i32 25
  %78 = load ptr, ptr %unpack_string_array, align 8, !tbaa !27
  %79 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_string_array31 = getelementptr inbounds %struct.grib_accessor_class, ptr %79, i32 0, i32 25
  store ptr %78, ptr %unpack_string_array31, align 8, !tbaa !27
  %80 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super32 = getelementptr inbounds %struct.grib_accessor_class, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %super32, align 8, !tbaa !8
  %82 = load ptr, ptr %81, align 8, !tbaa !4
  %pack_bytes = getelementptr inbounds %struct.grib_accessor_class, ptr %82, i32 0, i32 26
  %83 = load ptr, ptr %pack_bytes, align 8, !tbaa !28
  %84 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_bytes33 = getelementptr inbounds %struct.grib_accessor_class, ptr %84, i32 0, i32 26
  store ptr %83, ptr %pack_bytes33, align 8, !tbaa !28
  %85 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super34 = getelementptr inbounds %struct.grib_accessor_class, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %super34, align 8, !tbaa !8
  %87 = load ptr, ptr %86, align 8, !tbaa !4
  %unpack_bytes = getelementptr inbounds %struct.grib_accessor_class, ptr %87, i32 0, i32 27
  %88 = load ptr, ptr %unpack_bytes, align 8, !tbaa !29
  %89 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_bytes35 = getelementptr inbounds %struct.grib_accessor_class, ptr %89, i32 0, i32 27
  store ptr %88, ptr %unpack_bytes35, align 8, !tbaa !29
  %90 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super36 = getelementptr inbounds %struct.grib_accessor_class, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %super36, align 8, !tbaa !8
  %92 = load ptr, ptr %91, align 8, !tbaa !4
  %pack_expression = getelementptr inbounds %struct.grib_accessor_class, ptr %92, i32 0, i32 28
  %93 = load ptr, ptr %pack_expression, align 8, !tbaa !30
  %94 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_expression37 = getelementptr inbounds %struct.grib_accessor_class, ptr %94, i32 0, i32 28
  store ptr %93, ptr %pack_expression37, align 8, !tbaa !30
  %95 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super38 = getelementptr inbounds %struct.grib_accessor_class, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %super38, align 8, !tbaa !8
  %97 = load ptr, ptr %96, align 8, !tbaa !4
  %notify_change = getelementptr inbounds %struct.grib_accessor_class, ptr %97, i32 0, i32 29
  %98 = load ptr, ptr %notify_change, align 8, !tbaa !31
  %99 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %notify_change39 = getelementptr inbounds %struct.grib_accessor_class, ptr %99, i32 0, i32 29
  store ptr %98, ptr %notify_change39, align 8, !tbaa !31
  %100 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super40 = getelementptr inbounds %struct.grib_accessor_class, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %super40, align 8, !tbaa !8
  %102 = load ptr, ptr %101, align 8, !tbaa !4
  %update_size = getelementptr inbounds %struct.grib_accessor_class, ptr %102, i32 0, i32 30
  %103 = load ptr, ptr %update_size, align 8, !tbaa !32
  %104 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %update_size41 = getelementptr inbounds %struct.grib_accessor_class, ptr %104, i32 0, i32 30
  store ptr %103, ptr %update_size41, align 8, !tbaa !32
  %105 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super42 = getelementptr inbounds %struct.grib_accessor_class, ptr %105, i32 0, i32 0
  %106 = load ptr, ptr %super42, align 8, !tbaa !8
  %107 = load ptr, ptr %106, align 8, !tbaa !4
  %preferred_size = getelementptr inbounds %struct.grib_accessor_class, ptr %107, i32 0, i32 31
  %108 = load ptr, ptr %preferred_size, align 8, !tbaa !33
  %109 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %preferred_size43 = getelementptr inbounds %struct.grib_accessor_class, ptr %109, i32 0, i32 31
  store ptr %108, ptr %preferred_size43, align 8, !tbaa !33
  %110 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super44 = getelementptr inbounds %struct.grib_accessor_class, ptr %110, i32 0, i32 0
  %111 = load ptr, ptr %super44, align 8, !tbaa !8
  %112 = load ptr, ptr %111, align 8, !tbaa !4
  %resize = getelementptr inbounds %struct.grib_accessor_class, ptr %112, i32 0, i32 32
  %113 = load ptr, ptr %resize, align 8, !tbaa !34
  %114 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %resize45 = getelementptr inbounds %struct.grib_accessor_class, ptr %114, i32 0, i32 32
  store ptr %113, ptr %resize45, align 8, !tbaa !34
  %115 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super46 = getelementptr inbounds %struct.grib_accessor_class, ptr %115, i32 0, i32 0
  %116 = load ptr, ptr %super46, align 8, !tbaa !8
  %117 = load ptr, ptr %116, align 8, !tbaa !4
  %nearest_smaller_value = getelementptr inbounds %struct.grib_accessor_class, ptr %117, i32 0, i32 33
  %118 = load ptr, ptr %nearest_smaller_value, align 8, !tbaa !35
  %119 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %nearest_smaller_value47 = getelementptr inbounds %struct.grib_accessor_class, ptr %119, i32 0, i32 33
  store ptr %118, ptr %nearest_smaller_value47, align 8, !tbaa !35
  %120 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super48 = getelementptr inbounds %struct.grib_accessor_class, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %super48, align 8, !tbaa !8
  %122 = load ptr, ptr %121, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.grib_accessor_class, ptr %122, i32 0, i32 34
  %123 = load ptr, ptr %next, align 8, !tbaa !36
  %124 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %next49 = getelementptr inbounds %struct.grib_accessor_class, ptr %124, i32 0, i32 34
  store ptr %123, ptr %next49, align 8, !tbaa !36
  %125 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super50 = getelementptr inbounds %struct.grib_accessor_class, ptr %125, i32 0, i32 0
  %126 = load ptr, ptr %super50, align 8, !tbaa !8
  %127 = load ptr, ptr %126, align 8, !tbaa !4
  %compare = getelementptr inbounds %struct.grib_accessor_class, ptr %127, i32 0, i32 35
  %128 = load ptr, ptr %compare, align 8, !tbaa !37
  %129 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %compare51 = getelementptr inbounds %struct.grib_accessor_class, ptr %129, i32 0, i32 35
  store ptr %128, ptr %compare51, align 8, !tbaa !37
  %130 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super52 = getelementptr inbounds %struct.grib_accessor_class, ptr %130, i32 0, i32 0
  %131 = load ptr, ptr %super52, align 8, !tbaa !8
  %132 = load ptr, ptr %131, align 8, !tbaa !4
  %unpack_double_element = getelementptr inbounds %struct.grib_accessor_class, ptr %132, i32 0, i32 36
  %133 = load ptr, ptr %unpack_double_element, align 8, !tbaa !38
  %134 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double_element53 = getelementptr inbounds %struct.grib_accessor_class, ptr %134, i32 0, i32 36
  store ptr %133, ptr %unpack_double_element53, align 8, !tbaa !38
  %135 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super54 = getelementptr inbounds %struct.grib_accessor_class, ptr %135, i32 0, i32 0
  %136 = load ptr, ptr %super54, align 8, !tbaa !8
  %137 = load ptr, ptr %136, align 8, !tbaa !4
  %unpack_double_subarray = getelementptr inbounds %struct.grib_accessor_class, ptr %137, i32 0, i32 37
  %138 = load ptr, ptr %unpack_double_subarray, align 8, !tbaa !39
  %139 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double_subarray55 = getelementptr inbounds %struct.grib_accessor_class, ptr %139, i32 0, i32 37
  store ptr %138, ptr %unpack_double_subarray55, align 8, !tbaa !39
  %140 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super56 = getelementptr inbounds %struct.grib_accessor_class, ptr %140, i32 0, i32 0
  %141 = load ptr, ptr %super56, align 8, !tbaa !8
  %142 = load ptr, ptr %141, align 8, !tbaa !4
  %clear = getelementptr inbounds %struct.grib_accessor_class, ptr %142, i32 0, i32 38
  %143 = load ptr, ptr %clear, align 8, !tbaa !40
  %144 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %clear57 = getelementptr inbounds %struct.grib_accessor_class, ptr %144, i32 0, i32 38
  store ptr %143, ptr %clear57, align 8, !tbaa !40
  %145 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super58 = getelementptr inbounds %struct.grib_accessor_class, ptr %145, i32 0, i32 0
  %146 = load ptr, ptr %super58, align 8, !tbaa !8
  %147 = load ptr, ptr %146, align 8, !tbaa !4
  %make_clone = getelementptr inbounds %struct.grib_accessor_class, ptr %147, i32 0, i32 39
  %148 = load ptr, ptr %make_clone, align 8, !tbaa !41
  %149 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %make_clone59 = getelementptr inbounds %struct.grib_accessor_class, ptr %149, i32 0, i32 39
  store ptr %148, ptr %make_clone59, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init(ptr noundef %a, i64 noundef %len, ptr noundef %arg) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %arg.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %self = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !42
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  store i32 0, ptr %n, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.grib_accessor, ptr %1, i32 0, i32 5
  store i64 0, ptr %length, align 8, !tbaa !44
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.grib_accessor, ptr %2, i32 0, i32 11
  %3 = load i64, ptr %flags, align 8, !tbaa !46
  %or = or i64 %3, 2
  store i64 %or, ptr %flags, align 8, !tbaa !46
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call ptr @grib_handle_of_accessor(ptr noundef %4)
  %5 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %6 = load i32, ptr %n, align 4, !tbaa !43
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %n, align 4, !tbaa !43
  %call1 = call ptr @grib_arguments_get_name(ptr noundef %call, ptr noundef %5, i32 noundef %6)
  %7 = load ptr, ptr %self, align 8, !tbaa !4
  %bitmap = getelementptr inbounds %struct.grib_accessor_count_missing, ptr %7, i32 0, i32 1
  store ptr %call1, ptr %bitmap, align 8, !tbaa !47
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call2 = call ptr @grib_handle_of_accessor(ptr noundef %8)
  %9 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %10 = load i32, ptr %n, align 4, !tbaa !43
  %inc3 = add nsw i32 %10, 1
  store i32 %inc3, ptr %n, align 4, !tbaa !43
  %call4 = call ptr @grib_arguments_get_name(ptr noundef %call2, ptr noundef %9, i32 noundef %10)
  %11 = load ptr, ptr %self, align 8, !tbaa !4
  %unusedBitsInBitmap = getelementptr inbounds %struct.grib_accessor_count_missing, ptr %11, i32 0, i32 2
  store ptr %call4, ptr %unusedBitsInBitmap, align 8, !tbaa !49
  %12 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call5 = call ptr @grib_handle_of_accessor(ptr noundef %12)
  %13 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %14 = load i32, ptr %n, align 4, !tbaa !43
  %inc6 = add nsw i32 %14, 1
  store i32 %inc6, ptr %n, align 4, !tbaa !43
  %call7 = call ptr @grib_arguments_get_name(ptr noundef %call5, ptr noundef %13, i32 noundef %14)
  %15 = load ptr, ptr %self, align 8, !tbaa !4
  %numberOfDataPoints = getelementptr inbounds %struct.grib_accessor_count_missing, ptr %15, i32 0, i32 3
  store ptr %call7, ptr %numberOfDataPoints, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @value_count(ptr noundef %a, ptr noundef %count) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %count.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %count, ptr %count.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %count.addr, align 8, !tbaa !4
  store i64 1, ptr %0, align 8, !tbaa !42
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @unpack_long(ptr noundef %a, ptr noundef %val, ptr noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %size = alloca i64, align 8
  %offset = alloca i64, align 8
  %unusedBitsInBitmap = alloca i64, align 8
  %numberOfDataPoints = alloca i64, align 8
  %h = alloca ptr, align 8
  %bitmap = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #3
  store i64 0, ptr %size, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #3
  store i64 0, ptr %offset, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr %unusedBitsInBitmap) #3
  store i64 0, ptr %unusedBitsInBitmap, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr %numberOfDataPoints) #3
  store i64 0, ptr %numberOfDataPoints, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #3
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call ptr @grib_handle_of_accessor(ptr noundef %1)
  store ptr %call, ptr %h, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitmap) #3
  %2 = load ptr, ptr %h, align 8, !tbaa !4
  %3 = load ptr, ptr %self, align 8, !tbaa !4
  %bitmap1 = getelementptr inbounds %struct.grib_accessor_count_missing, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %bitmap1, align 8, !tbaa !47
  %call2 = call ptr @grib_find_accessor(ptr noundef %2, ptr noundef %4)
  store ptr %call2, ptr %bitmap, align 8, !tbaa !4
  %5 = load ptr, ptr %val.addr, align 8, !tbaa !4
  store i64 0, ptr %5, align 8, !tbaa !42
  %6 = load ptr, ptr %len.addr, align 8, !tbaa !4
  store i64 1, ptr %6, align 8, !tbaa !42
  %7 = load ptr, ptr %bitmap, align 8, !tbaa !4
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %bitmap, align 8, !tbaa !4
  %call3 = call i64 @grib_byte_count(ptr noundef %8)
  store i64 %call3, ptr %size, align 8, !tbaa !42
  %9 = load ptr, ptr %bitmap, align 8, !tbaa !4
  %call4 = call i64 @grib_byte_offset(ptr noundef %9)
  store i64 %call4, ptr %offset, align 8, !tbaa !42
  %10 = load ptr, ptr %h, align 8, !tbaa !4
  %11 = load ptr, ptr %self, align 8, !tbaa !4
  %unusedBitsInBitmap5 = getelementptr inbounds %struct.grib_accessor_count_missing, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %unusedBitsInBitmap5, align 8, !tbaa !49
  %call6 = call i32 @grib_get_long(ptr noundef %10, ptr noundef %12, ptr noundef %unusedBitsInBitmap)
  %cmp = icmp ne i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.end
  %13 = load ptr, ptr %h, align 8, !tbaa !4
  %14 = load ptr, ptr %self, align 8, !tbaa !4
  %numberOfDataPoints8 = getelementptr inbounds %struct.grib_accessor_count_missing, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %numberOfDataPoints8, align 8, !tbaa !50
  %call9 = call i32 @grib_get_long(ptr noundef %13, ptr noundef %15, ptr noundef %numberOfDataPoints)
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then7
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %context, align 8, !tbaa !51
  call void (ptr, i32, ptr, ...) @grib_context_log(ptr noundef %17, i32 noundef 2, ptr noundef @.str.1)
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.then7
  %18 = load i64, ptr %size, align 8, !tbaa !42
  %mul = mul nsw i64 %18, 8
  %19 = load i64, ptr %numberOfDataPoints, align 8, !tbaa !42
  %sub = sub nsw i64 %mul, %19
  store i64 %sub, ptr %unusedBitsInBitmap, align 8, !tbaa !42
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  %20 = load ptr, ptr %h, align 8, !tbaa !4
  %buffer = getelementptr inbounds %struct.grib_handle, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %buffer, align 8, !tbaa !52
  %data = getelementptr inbounds %struct.grib_buffer, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %data, align 8, !tbaa !55
  %23 = load i64, ptr %offset, align 8, !tbaa !42
  %add.ptr = getelementptr inbounds i8, ptr %22, i64 %23
  store ptr %add.ptr, ptr %p, align 8, !tbaa !4
  %24 = load i64, ptr %unusedBitsInBitmap, align 8, !tbaa !42
  %div = sdiv i64 %24, 8
  %25 = load i64, ptr %size, align 8, !tbaa !42
  %sub14 = sub nsw i64 %25, %div
  store i64 %sub14, ptr %size, align 8, !tbaa !42
  %26 = load i64, ptr %unusedBitsInBitmap, align 8, !tbaa !42
  %rem = srem i64 %26, 8
  store i64 %rem, ptr %unusedBitsInBitmap, align 8, !tbaa !42
  store i32 0, ptr %i, align 4, !tbaa !43
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %27 = load i32, ptr %i, align 4, !tbaa !43
  %conv = sext i32 %27 to i64
  %28 = load i64, ptr %size, align 8, !tbaa !42
  %sub15 = sub nsw i64 %28, 1
  %cmp16 = icmp slt i64 %conv, %sub15
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  %30 = load i8, ptr %29, align 1, !tbaa !57
  %idxprom = zext i8 %30 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @bitsoff, i64 0, i64 %idxprom
  %31 = load i8, ptr %arrayidx, align 1, !tbaa !57
  %conv18 = zext i8 %31 to i64
  %32 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %33 = load i64, ptr %32, align 8, !tbaa !42
  %add = add nsw i64 %33, %conv18
  store i64 %add, ptr %32, align 8, !tbaa !42
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, ptr %i, align 4, !tbaa !43
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %i, align 4, !tbaa !43
  br label %for.cond, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  %35 = load ptr, ptr %p, align 8, !tbaa !4
  %36 = load i8, ptr %35, align 1, !tbaa !57
  %conv19 = zext i8 %36 to i32
  %37 = load i64, ptr %unusedBitsInBitmap, align 8, !tbaa !42
  %arrayidx20 = getelementptr inbounds [9 x i32], ptr @used, i64 0, i64 %37
  %38 = load i32, ptr %arrayidx20, align 4, !tbaa !43
  %or = or i32 %conv19, %38
  %idxprom21 = sext i32 %or to i64
  %arrayidx22 = getelementptr inbounds [256 x i8], ptr @bitsoff, i64 0, i64 %idxprom21
  %39 = load i8, ptr %arrayidx22, align 1, !tbaa !57
  %conv23 = zext i8 %39 to i64
  %40 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %41 = load i64, ptr %40, align 8, !tbaa !42
  %add24 = add nsw i64 %41, %conv23
  store i64 %add24, ptr %40, align 8, !tbaa !42
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitmap) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %numberOfDataPoints) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %unusedBitsInBitmap) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #3
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @grib_arguments_get_name(ptr noundef, ptr noundef, i32 noundef) #2

declare ptr @grib_handle_of_accessor(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @grib_find_accessor(ptr noundef, ptr noundef) #2

declare i64 @grib_byte_count(ptr noundef) #2

declare i64 @grib_byte_offset(ptr noundef) #2

declare i32 @grib_get_long(ptr noundef, ptr noundef, ptr noundef) #2

declare void @grib_context_log(ptr noundef, i32 noundef, ptr noundef, ...) #2

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
!8 = !{!9, !5, i64 0}
!9 = !{!"grib_accessor_class", !5, i64 0, !5, i64 8, !10, i64 16, !11, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312}
!10 = !{!"long", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!9, !5, i64 64}
!13 = !{!9, !5, i64 72}
!14 = !{!9, !5, i64 80}
!15 = !{!9, !5, i64 96}
!16 = !{!9, !5, i64 104}
!17 = !{!9, !5, i64 112}
!18 = !{!9, !5, i64 120}
!19 = !{!9, !5, i64 128}
!20 = !{!9, !5, i64 136}
!21 = !{!9, !5, i64 144}
!22 = !{!9, !5, i64 160}
!23 = !{!9, !5, i64 168}
!24 = !{!9, !5, i64 176}
!25 = !{!9, !5, i64 184}
!26 = !{!9, !5, i64 192}
!27 = !{!9, !5, i64 200}
!28 = !{!9, !5, i64 208}
!29 = !{!9, !5, i64 216}
!30 = !{!9, !5, i64 224}
!31 = !{!9, !5, i64 232}
!32 = !{!9, !5, i64 240}
!33 = !{!9, !5, i64 248}
!34 = !{!9, !5, i64 256}
!35 = !{!9, !5, i64 264}
!36 = !{!9, !5, i64 272}
!37 = !{!9, !5, i64 280}
!38 = !{!9, !5, i64 288}
!39 = !{!9, !5, i64 296}
!40 = !{!9, !5, i64 304}
!41 = !{!9, !5, i64 312}
!42 = !{!10, !10, i64 0}
!43 = !{!11, !11, i64 0}
!44 = !{!45, !10, i64 40}
!45 = !{!"grib_accessor", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40, !10, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !10, i64 88, !5, i64 96, !6, i64 104, !6, i64 264, !11, i64 424, !5, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !5, i64 464, !5, i64 472, !6, i64 480, !5, i64 640}
!46 = !{!45, !10, i64 88}
!47 = !{!48, !5, i64 648}
!48 = !{!"grib_accessor_count_missing", !45, i64 0, !5, i64 648, !5, i64 656, !5, i64 664}
!49 = !{!48, !5, i64 656}
!50 = !{!48, !5, i64 664}
!51 = !{!45, !5, i64 16}
!52 = !{!53, !5, i64 8}
!53 = !{!"grib_handle", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !11, i64 72, !6, i64 80, !6, i64 160, !11, i64 240, !11, i64 244, !11, i64 248, !5, i64 256, !10, i64 264, !11, i64 272, !11, i64 276, !6, i64 280, !6, i64 40280, !6, i64 40376, !11, i64 40472, !10, i64 40480, !10, i64 40488, !10, i64 40496, !10, i64 40504, !54, i64 40512, !6, i64 40520}
!54 = !{!"double", !6, i64 0}
!55 = !{!56, !5, i64 40}
!56 = !{!"grib_buffer", !11, i64 0, !11, i64 4, !11, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40}
!57 = !{!6, !6, i64 0}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
