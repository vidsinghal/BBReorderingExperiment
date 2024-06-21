; ModuleID = 'samples/33.bc'
source_filename = "/local-ssd/eccodes-psuel4mgyciesdodvadhkap2g5cqhhyf-build/aidengro/spack-stage-eccodes-2.25.0-psuel4mgyciesdodvadhkap2g5cqhhyf/spack-src/src/grib_accessor_class_number_of_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grib_accessor_class = type { ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.grib_accessor_number_of_points = type { %struct.grib_accessor, ptr, ptr, ptr, ptr }
%struct.grib_accessor = type { ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, i64, ptr, [20 x ptr], [20 x ptr], i32, ptr, i64, i64, i64, ptr, ptr, [20 x ptr], ptr }

@_grib_accessor_class_number_of_points = internal global %struct.grib_accessor_class { ptr @grib_accessor_class_long, ptr @.str, i64 680, i32 0, ptr @init_class, ptr @init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @unpack_long, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@grib_accessor_class_number_of_points = global ptr @_grib_accessor_class_number_of_points, align 8
@grib_accessor_class_long = external global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"number_of_points\00", align 1

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
  %value_count = getelementptr inbounds %struct.grib_accessor_class, ptr %17, i32 0, i32 11
  %18 = load ptr, ptr %value_count, align 8, !tbaa !15
  %19 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %value_count7 = getelementptr inbounds %struct.grib_accessor_class, ptr %19, i32 0, i32 11
  store ptr %18, ptr %value_count7, align 8, !tbaa !15
  %20 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super8 = getelementptr inbounds %struct.grib_accessor_class, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %super8, align 8, !tbaa !8
  %22 = load ptr, ptr %21, align 8, !tbaa !4
  %byte_count = getelementptr inbounds %struct.grib_accessor_class, ptr %22, i32 0, i32 12
  %23 = load ptr, ptr %byte_count, align 8, !tbaa !16
  %24 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %byte_count9 = getelementptr inbounds %struct.grib_accessor_class, ptr %24, i32 0, i32 12
  store ptr %23, ptr %byte_count9, align 8, !tbaa !16
  %25 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super10 = getelementptr inbounds %struct.grib_accessor_class, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %super10, align 8, !tbaa !8
  %27 = load ptr, ptr %26, align 8, !tbaa !4
  %byte_offset = getelementptr inbounds %struct.grib_accessor_class, ptr %27, i32 0, i32 13
  %28 = load ptr, ptr %byte_offset, align 8, !tbaa !17
  %29 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %byte_offset11 = getelementptr inbounds %struct.grib_accessor_class, ptr %29, i32 0, i32 13
  store ptr %28, ptr %byte_offset11, align 8, !tbaa !17
  %30 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super12 = getelementptr inbounds %struct.grib_accessor_class, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %super12, align 8, !tbaa !8
  %32 = load ptr, ptr %31, align 8, !tbaa !4
  %get_native_type = getelementptr inbounds %struct.grib_accessor_class, ptr %32, i32 0, i32 14
  %33 = load ptr, ptr %get_native_type, align 8, !tbaa !18
  %34 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %get_native_type13 = getelementptr inbounds %struct.grib_accessor_class, ptr %34, i32 0, i32 14
  store ptr %33, ptr %get_native_type13, align 8, !tbaa !18
  %35 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super14 = getelementptr inbounds %struct.grib_accessor_class, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %super14, align 8, !tbaa !8
  %37 = load ptr, ptr %36, align 8, !tbaa !4
  %sub_section = getelementptr inbounds %struct.grib_accessor_class, ptr %37, i32 0, i32 15
  %38 = load ptr, ptr %sub_section, align 8, !tbaa !19
  %39 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %sub_section15 = getelementptr inbounds %struct.grib_accessor_class, ptr %39, i32 0, i32 15
  store ptr %38, ptr %sub_section15, align 8, !tbaa !19
  %40 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super16 = getelementptr inbounds %struct.grib_accessor_class, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %super16, align 8, !tbaa !8
  %42 = load ptr, ptr %41, align 8, !tbaa !4
  %pack_missing = getelementptr inbounds %struct.grib_accessor_class, ptr %42, i32 0, i32 16
  %43 = load ptr, ptr %pack_missing, align 8, !tbaa !20
  %44 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_missing17 = getelementptr inbounds %struct.grib_accessor_class, ptr %44, i32 0, i32 16
  store ptr %43, ptr %pack_missing17, align 8, !tbaa !20
  %45 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super18 = getelementptr inbounds %struct.grib_accessor_class, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %super18, align 8, !tbaa !8
  %47 = load ptr, ptr %46, align 8, !tbaa !4
  %is_missing = getelementptr inbounds %struct.grib_accessor_class, ptr %47, i32 0, i32 17
  %48 = load ptr, ptr %is_missing, align 8, !tbaa !21
  %49 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %is_missing19 = getelementptr inbounds %struct.grib_accessor_class, ptr %49, i32 0, i32 17
  store ptr %48, ptr %is_missing19, align 8, !tbaa !21
  %50 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super20 = getelementptr inbounds %struct.grib_accessor_class, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %super20, align 8, !tbaa !8
  %52 = load ptr, ptr %51, align 8, !tbaa !4
  %pack_long = getelementptr inbounds %struct.grib_accessor_class, ptr %52, i32 0, i32 18
  %53 = load ptr, ptr %pack_long, align 8, !tbaa !22
  %54 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_long21 = getelementptr inbounds %struct.grib_accessor_class, ptr %54, i32 0, i32 18
  store ptr %53, ptr %pack_long21, align 8, !tbaa !22
  %55 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super22 = getelementptr inbounds %struct.grib_accessor_class, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %super22, align 8, !tbaa !8
  %57 = load ptr, ptr %56, align 8, !tbaa !4
  %pack_double = getelementptr inbounds %struct.grib_accessor_class, ptr %57, i32 0, i32 20
  %58 = load ptr, ptr %pack_double, align 8, !tbaa !23
  %59 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_double23 = getelementptr inbounds %struct.grib_accessor_class, ptr %59, i32 0, i32 20
  store ptr %58, ptr %pack_double23, align 8, !tbaa !23
  %60 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super24 = getelementptr inbounds %struct.grib_accessor_class, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %super24, align 8, !tbaa !8
  %62 = load ptr, ptr %61, align 8, !tbaa !4
  %unpack_double = getelementptr inbounds %struct.grib_accessor_class, ptr %62, i32 0, i32 21
  %63 = load ptr, ptr %unpack_double, align 8, !tbaa !24
  %64 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double25 = getelementptr inbounds %struct.grib_accessor_class, ptr %64, i32 0, i32 21
  store ptr %63, ptr %unpack_double25, align 8, !tbaa !24
  %65 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super26 = getelementptr inbounds %struct.grib_accessor_class, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %super26, align 8, !tbaa !8
  %67 = load ptr, ptr %66, align 8, !tbaa !4
  %pack_string = getelementptr inbounds %struct.grib_accessor_class, ptr %67, i32 0, i32 22
  %68 = load ptr, ptr %pack_string, align 8, !tbaa !25
  %69 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_string27 = getelementptr inbounds %struct.grib_accessor_class, ptr %69, i32 0, i32 22
  store ptr %68, ptr %pack_string27, align 8, !tbaa !25
  %70 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super28 = getelementptr inbounds %struct.grib_accessor_class, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %super28, align 8, !tbaa !8
  %72 = load ptr, ptr %71, align 8, !tbaa !4
  %unpack_string = getelementptr inbounds %struct.grib_accessor_class, ptr %72, i32 0, i32 23
  %73 = load ptr, ptr %unpack_string, align 8, !tbaa !26
  %74 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_string29 = getelementptr inbounds %struct.grib_accessor_class, ptr %74, i32 0, i32 23
  store ptr %73, ptr %unpack_string29, align 8, !tbaa !26
  %75 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super30 = getelementptr inbounds %struct.grib_accessor_class, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %super30, align 8, !tbaa !8
  %77 = load ptr, ptr %76, align 8, !tbaa !4
  %pack_string_array = getelementptr inbounds %struct.grib_accessor_class, ptr %77, i32 0, i32 24
  %78 = load ptr, ptr %pack_string_array, align 8, !tbaa !27
  %79 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_string_array31 = getelementptr inbounds %struct.grib_accessor_class, ptr %79, i32 0, i32 24
  store ptr %78, ptr %pack_string_array31, align 8, !tbaa !27
  %80 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super32 = getelementptr inbounds %struct.grib_accessor_class, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %super32, align 8, !tbaa !8
  %82 = load ptr, ptr %81, align 8, !tbaa !4
  %unpack_string_array = getelementptr inbounds %struct.grib_accessor_class, ptr %82, i32 0, i32 25
  %83 = load ptr, ptr %unpack_string_array, align 8, !tbaa !28
  %84 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_string_array33 = getelementptr inbounds %struct.grib_accessor_class, ptr %84, i32 0, i32 25
  store ptr %83, ptr %unpack_string_array33, align 8, !tbaa !28
  %85 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super34 = getelementptr inbounds %struct.grib_accessor_class, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %super34, align 8, !tbaa !8
  %87 = load ptr, ptr %86, align 8, !tbaa !4
  %pack_bytes = getelementptr inbounds %struct.grib_accessor_class, ptr %87, i32 0, i32 26
  %88 = load ptr, ptr %pack_bytes, align 8, !tbaa !29
  %89 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_bytes35 = getelementptr inbounds %struct.grib_accessor_class, ptr %89, i32 0, i32 26
  store ptr %88, ptr %pack_bytes35, align 8, !tbaa !29
  %90 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super36 = getelementptr inbounds %struct.grib_accessor_class, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %super36, align 8, !tbaa !8
  %92 = load ptr, ptr %91, align 8, !tbaa !4
  %unpack_bytes = getelementptr inbounds %struct.grib_accessor_class, ptr %92, i32 0, i32 27
  %93 = load ptr, ptr %unpack_bytes, align 8, !tbaa !30
  %94 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_bytes37 = getelementptr inbounds %struct.grib_accessor_class, ptr %94, i32 0, i32 27
  store ptr %93, ptr %unpack_bytes37, align 8, !tbaa !30
  %95 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super38 = getelementptr inbounds %struct.grib_accessor_class, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %super38, align 8, !tbaa !8
  %97 = load ptr, ptr %96, align 8, !tbaa !4
  %pack_expression = getelementptr inbounds %struct.grib_accessor_class, ptr %97, i32 0, i32 28
  %98 = load ptr, ptr %pack_expression, align 8, !tbaa !31
  %99 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_expression39 = getelementptr inbounds %struct.grib_accessor_class, ptr %99, i32 0, i32 28
  store ptr %98, ptr %pack_expression39, align 8, !tbaa !31
  %100 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super40 = getelementptr inbounds %struct.grib_accessor_class, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %super40, align 8, !tbaa !8
  %102 = load ptr, ptr %101, align 8, !tbaa !4
  %notify_change = getelementptr inbounds %struct.grib_accessor_class, ptr %102, i32 0, i32 29
  %103 = load ptr, ptr %notify_change, align 8, !tbaa !32
  %104 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %notify_change41 = getelementptr inbounds %struct.grib_accessor_class, ptr %104, i32 0, i32 29
  store ptr %103, ptr %notify_change41, align 8, !tbaa !32
  %105 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super42 = getelementptr inbounds %struct.grib_accessor_class, ptr %105, i32 0, i32 0
  %106 = load ptr, ptr %super42, align 8, !tbaa !8
  %107 = load ptr, ptr %106, align 8, !tbaa !4
  %update_size = getelementptr inbounds %struct.grib_accessor_class, ptr %107, i32 0, i32 30
  %108 = load ptr, ptr %update_size, align 8, !tbaa !33
  %109 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %update_size43 = getelementptr inbounds %struct.grib_accessor_class, ptr %109, i32 0, i32 30
  store ptr %108, ptr %update_size43, align 8, !tbaa !33
  %110 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super44 = getelementptr inbounds %struct.grib_accessor_class, ptr %110, i32 0, i32 0
  %111 = load ptr, ptr %super44, align 8, !tbaa !8
  %112 = load ptr, ptr %111, align 8, !tbaa !4
  %preferred_size = getelementptr inbounds %struct.grib_accessor_class, ptr %112, i32 0, i32 31
  %113 = load ptr, ptr %preferred_size, align 8, !tbaa !34
  %114 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %preferred_size45 = getelementptr inbounds %struct.grib_accessor_class, ptr %114, i32 0, i32 31
  store ptr %113, ptr %preferred_size45, align 8, !tbaa !34
  %115 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super46 = getelementptr inbounds %struct.grib_accessor_class, ptr %115, i32 0, i32 0
  %116 = load ptr, ptr %super46, align 8, !tbaa !8
  %117 = load ptr, ptr %116, align 8, !tbaa !4
  %resize = getelementptr inbounds %struct.grib_accessor_class, ptr %117, i32 0, i32 32
  %118 = load ptr, ptr %resize, align 8, !tbaa !35
  %119 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %resize47 = getelementptr inbounds %struct.grib_accessor_class, ptr %119, i32 0, i32 32
  store ptr %118, ptr %resize47, align 8, !tbaa !35
  %120 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super48 = getelementptr inbounds %struct.grib_accessor_class, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %super48, align 8, !tbaa !8
  %122 = load ptr, ptr %121, align 8, !tbaa !4
  %nearest_smaller_value = getelementptr inbounds %struct.grib_accessor_class, ptr %122, i32 0, i32 33
  %123 = load ptr, ptr %nearest_smaller_value, align 8, !tbaa !36
  %124 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %nearest_smaller_value49 = getelementptr inbounds %struct.grib_accessor_class, ptr %124, i32 0, i32 33
  store ptr %123, ptr %nearest_smaller_value49, align 8, !tbaa !36
  %125 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super50 = getelementptr inbounds %struct.grib_accessor_class, ptr %125, i32 0, i32 0
  %126 = load ptr, ptr %super50, align 8, !tbaa !8
  %127 = load ptr, ptr %126, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.grib_accessor_class, ptr %127, i32 0, i32 34
  %128 = load ptr, ptr %next, align 8, !tbaa !37
  %129 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %next51 = getelementptr inbounds %struct.grib_accessor_class, ptr %129, i32 0, i32 34
  store ptr %128, ptr %next51, align 8, !tbaa !37
  %130 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super52 = getelementptr inbounds %struct.grib_accessor_class, ptr %130, i32 0, i32 0
  %131 = load ptr, ptr %super52, align 8, !tbaa !8
  %132 = load ptr, ptr %131, align 8, !tbaa !4
  %compare = getelementptr inbounds %struct.grib_accessor_class, ptr %132, i32 0, i32 35
  %133 = load ptr, ptr %compare, align 8, !tbaa !38
  %134 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %compare53 = getelementptr inbounds %struct.grib_accessor_class, ptr %134, i32 0, i32 35
  store ptr %133, ptr %compare53, align 8, !tbaa !38
  %135 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super54 = getelementptr inbounds %struct.grib_accessor_class, ptr %135, i32 0, i32 0
  %136 = load ptr, ptr %super54, align 8, !tbaa !8
  %137 = load ptr, ptr %136, align 8, !tbaa !4
  %unpack_double_element = getelementptr inbounds %struct.grib_accessor_class, ptr %137, i32 0, i32 36
  %138 = load ptr, ptr %unpack_double_element, align 8, !tbaa !39
  %139 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double_element55 = getelementptr inbounds %struct.grib_accessor_class, ptr %139, i32 0, i32 36
  store ptr %138, ptr %unpack_double_element55, align 8, !tbaa !39
  %140 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super56 = getelementptr inbounds %struct.grib_accessor_class, ptr %140, i32 0, i32 0
  %141 = load ptr, ptr %super56, align 8, !tbaa !8
  %142 = load ptr, ptr %141, align 8, !tbaa !4
  %unpack_double_subarray = getelementptr inbounds %struct.grib_accessor_class, ptr %142, i32 0, i32 37
  %143 = load ptr, ptr %unpack_double_subarray, align 8, !tbaa !40
  %144 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double_subarray57 = getelementptr inbounds %struct.grib_accessor_class, ptr %144, i32 0, i32 37
  store ptr %143, ptr %unpack_double_subarray57, align 8, !tbaa !40
  %145 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super58 = getelementptr inbounds %struct.grib_accessor_class, ptr %145, i32 0, i32 0
  %146 = load ptr, ptr %super58, align 8, !tbaa !8
  %147 = load ptr, ptr %146, align 8, !tbaa !4
  %clear = getelementptr inbounds %struct.grib_accessor_class, ptr %147, i32 0, i32 38
  %148 = load ptr, ptr %clear, align 8, !tbaa !41
  %149 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %clear59 = getelementptr inbounds %struct.grib_accessor_class, ptr %149, i32 0, i32 38
  store ptr %148, ptr %clear59, align 8, !tbaa !41
  %150 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super60 = getelementptr inbounds %struct.grib_accessor_class, ptr %150, i32 0, i32 0
  %151 = load ptr, ptr %super60, align 8, !tbaa !8
  %152 = load ptr, ptr %151, align 8, !tbaa !4
  %make_clone = getelementptr inbounds %struct.grib_accessor_class, ptr %152, i32 0, i32 39
  %153 = load ptr, ptr %make_clone, align 8, !tbaa !42
  %154 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %make_clone61 = getelementptr inbounds %struct.grib_accessor_class, ptr %154, i32 0, i32 39
  store ptr %153, ptr %make_clone61, align 8, !tbaa !42
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init(ptr noundef %a, i64 noundef %l, ptr noundef %c) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %l.addr = alloca i64, align 8
  %c.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %self = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %l, ptr %l.addr, align 8, !tbaa !43
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  store i32 0, ptr %n, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call ptr @grib_handle_of_accessor(ptr noundef %1)
  %2 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %3 = load i32, ptr %n, align 4, !tbaa !44
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %n, align 4, !tbaa !44
  %call1 = call ptr @grib_arguments_get_name(ptr noundef %call, ptr noundef %2, i32 noundef %3)
  %4 = load ptr, ptr %self, align 8, !tbaa !4
  %ni = getelementptr inbounds %struct.grib_accessor_number_of_points, ptr %4, i32 0, i32 1
  store ptr %call1, ptr %ni, align 8, !tbaa !45
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call2 = call ptr @grib_handle_of_accessor(ptr noundef %5)
  %6 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %7 = load i32, ptr %n, align 4, !tbaa !44
  %inc3 = add nsw i32 %7, 1
  store i32 %inc3, ptr %n, align 4, !tbaa !44
  %call4 = call ptr @grib_arguments_get_name(ptr noundef %call2, ptr noundef %6, i32 noundef %7)
  %8 = load ptr, ptr %self, align 8, !tbaa !4
  %nj = getelementptr inbounds %struct.grib_accessor_number_of_points, ptr %8, i32 0, i32 2
  store ptr %call4, ptr %nj, align 8, !tbaa !48
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call5 = call ptr @grib_handle_of_accessor(ptr noundef %9)
  %10 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %11 = load i32, ptr %n, align 4, !tbaa !44
  %inc6 = add nsw i32 %11, 1
  store i32 %inc6, ptr %n, align 4, !tbaa !44
  %call7 = call ptr @grib_arguments_get_name(ptr noundef %call5, ptr noundef %10, i32 noundef %11)
  %12 = load ptr, ptr %self, align 8, !tbaa !4
  %plpresent = getelementptr inbounds %struct.grib_accessor_number_of_points, ptr %12, i32 0, i32 3
  store ptr %call7, ptr %plpresent, align 8, !tbaa !49
  %13 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call8 = call ptr @grib_handle_of_accessor(ptr noundef %13)
  %14 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %15 = load i32, ptr %n, align 4, !tbaa !44
  %inc9 = add nsw i32 %15, 1
  store i32 %inc9, ptr %n, align 4, !tbaa !44
  %call10 = call ptr @grib_arguments_get_name(ptr noundef %call8, ptr noundef %14, i32 noundef %15)
  %16 = load ptr, ptr %self, align 8, !tbaa !4
  %pl = getelementptr inbounds %struct.grib_accessor_number_of_points, ptr %16, i32 0, i32 4
  store ptr %call10, ptr %pl, align 8, !tbaa !50
  %17 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.grib_accessor, ptr %17, i32 0, i32 11
  %18 = load i64, ptr %flags, align 8, !tbaa !51
  %or = or i64 %18, 2
  store i64 %or, ptr %flags, align 8, !tbaa !51
  %19 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %flags11 = getelementptr inbounds %struct.grib_accessor, ptr %19, i32 0, i32 11
  %20 = load i64, ptr %flags11, align 8, !tbaa !51
  %or12 = or i64 %20, 1024
  store i64 %or12, ptr %flags11, align 8, !tbaa !51
  %21 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.grib_accessor, ptr %21, i32 0, i32 5
  store i64 0, ptr %length, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @unpack_long(ptr noundef %a, ptr noundef %val, ptr noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %ni = alloca i64, align 8
  %nj = alloca i64, align 8
  %plpresent = alloca i64, align 8
  %plsize = alloca i64, align 8
  %pl = alloca ptr, align 8
  %i = alloca i32, align 4
  %self = alloca ptr, align 8
  %c = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #3
  store i32 0, ptr %ret, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr %ni) #3
  store i64 0, ptr %ni, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr %nj) #3
  store i64 0, ptr %nj, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr %plpresent) #3
  store i64 0, ptr %plpresent, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr %plsize) #3
  store i64 0, ptr %plsize, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr %pl) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #3
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %context, align 8, !tbaa !53
  store ptr %2, ptr %c, align 8, !tbaa !4
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call ptr @grib_handle_of_accessor(ptr noundef %3)
  %4 = load ptr, ptr %self, align 8, !tbaa !4
  %ni1 = getelementptr inbounds %struct.grib_accessor_number_of_points, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %ni1, align 8, !tbaa !45
  %call2 = call i32 @grib_get_long_internal(ptr noundef %call, ptr noundef %5, ptr noundef %ni)
  store i32 %call2, ptr %ret, align 4, !tbaa !44
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %ret, align 4, !tbaa !44
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call3 = call ptr @grib_handle_of_accessor(ptr noundef %7)
  %8 = load ptr, ptr %self, align 8, !tbaa !4
  %nj4 = getelementptr inbounds %struct.grib_accessor_number_of_points, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %nj4, align 8, !tbaa !48
  %call5 = call i32 @grib_get_long_internal(ptr noundef %call3, ptr noundef %9, ptr noundef %nj)
  store i32 %call5, ptr %ret, align 4, !tbaa !44
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %10 = load i32, ptr %ret, align 4, !tbaa !44
  store i32 %10, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %11 = load ptr, ptr %self, align 8, !tbaa !4
  %plpresent9 = getelementptr inbounds %struct.grib_accessor_number_of_points, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %plpresent9, align 8, !tbaa !49
  %tobool = icmp ne ptr %12, null
  br i1 %tobool, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end8
  %13 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call10 = call ptr @grib_handle_of_accessor(ptr noundef %13)
  %14 = load ptr, ptr %self, align 8, !tbaa !4
  %plpresent11 = getelementptr inbounds %struct.grib_accessor_number_of_points, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %plpresent11, align 8, !tbaa !49
  %call12 = call i32 @grib_get_long_internal(ptr noundef %call10, ptr noundef %15, ptr noundef %plpresent)
  store i32 %call12, ptr %ret, align 4, !tbaa !44
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  %16 = load i32, ptr %ret, align 4, !tbaa !44
  store i32 %16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true, %if.end8
  %17 = load i64, ptr %nj, align 8, !tbaa !43
  %cmp16 = icmp eq i64 %17, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  store i32 -16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %18 = load i64, ptr %plpresent, align 8, !tbaa !43
  %tobool19 = icmp ne i64 %18, 0
  br i1 %tobool19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end18
  %19 = load i64, ptr %nj, align 8, !tbaa !43
  store i64 %19, ptr %plsize, align 8, !tbaa !43
  %20 = load ptr, ptr %c, align 8, !tbaa !4
  %21 = load i64, ptr %plsize, align 8, !tbaa !43
  %mul = mul i64 8, %21
  %call21 = call ptr @grib_context_malloc(ptr noundef %20, i64 noundef %mul)
  store ptr %call21, ptr %pl, align 8, !tbaa !4
  %22 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call22 = call ptr @grib_handle_of_accessor(ptr noundef %22)
  %23 = load ptr, ptr %self, align 8, !tbaa !4
  %pl23 = getelementptr inbounds %struct.grib_accessor_number_of_points, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %pl23, align 8, !tbaa !50
  %25 = load ptr, ptr %pl, align 8, !tbaa !4
  %call24 = call i32 @grib_get_long_array_internal(ptr noundef %call22, ptr noundef %24, ptr noundef %25, ptr noundef %plsize)
  %26 = load ptr, ptr %val.addr, align 8, !tbaa !4
  store i64 0, ptr %26, align 8, !tbaa !43
  store i32 0, ptr %i, align 4, !tbaa !44
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then20
  %27 = load i32, ptr %i, align 4, !tbaa !44
  %conv = sext i32 %27 to i64
  %28 = load i64, ptr %plsize, align 8, !tbaa !43
  %cmp25 = icmp ult i64 %conv, %28
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %pl, align 8, !tbaa !4
  %30 = load i32, ptr %i, align 4, !tbaa !44
  %idxprom = sext i32 %30 to i64
  %arrayidx = getelementptr inbounds i64, ptr %29, i64 %idxprom
  %31 = load i64, ptr %arrayidx, align 8, !tbaa !43
  %32 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %33 = load i64, ptr %32, align 8, !tbaa !43
  %add = add nsw i64 %33, %31
  store i64 %add, ptr %32, align 8, !tbaa !43
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, ptr %i, align 4, !tbaa !44
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %i, align 4, !tbaa !44
  br label %for.cond, !llvm.loop !54

for.end:                                          ; preds = %for.cond
  %35 = load ptr, ptr %c, align 8, !tbaa !4
  %36 = load ptr, ptr %pl, align 8, !tbaa !4
  call void @grib_context_free(ptr noundef %35, ptr noundef %36)
  br label %if.end28

if.else:                                          ; preds = %if.end18
  %37 = load i64, ptr %ni, align 8, !tbaa !43
  %38 = load i64, ptr %nj, align 8, !tbaa !43
  %mul27 = mul nsw i64 %37, %38
  %39 = load ptr, ptr %val.addr, align 8, !tbaa !4
  store i64 %mul27, ptr %39, align 8, !tbaa !43
  br label %if.end28

if.end28:                                         ; preds = %if.else, %for.end
  %40 = load i32, ptr %ret, align 4, !tbaa !44
  store i32 %40, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then17, %if.then14, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %pl) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %plsize) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %plpresent) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %nj) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ni) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #3
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @grib_arguments_get_name(ptr noundef, ptr noundef, i32 noundef) #2

declare ptr @grib_handle_of_accessor(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @grib_get_long_internal(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @grib_context_malloc(ptr noundef, i64 noundef) #2

declare i32 @grib_get_long_array_internal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @grib_context_free(ptr noundef, ptr noundef) #2

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
!15 = !{!9, !5, i64 88}
!16 = !{!9, !5, i64 96}
!17 = !{!9, !5, i64 104}
!18 = !{!9, !5, i64 112}
!19 = !{!9, !5, i64 120}
!20 = !{!9, !5, i64 128}
!21 = !{!9, !5, i64 136}
!22 = !{!9, !5, i64 144}
!23 = !{!9, !5, i64 160}
!24 = !{!9, !5, i64 168}
!25 = !{!9, !5, i64 176}
!26 = !{!9, !5, i64 184}
!27 = !{!9, !5, i64 192}
!28 = !{!9, !5, i64 200}
!29 = !{!9, !5, i64 208}
!30 = !{!9, !5, i64 216}
!31 = !{!9, !5, i64 224}
!32 = !{!9, !5, i64 232}
!33 = !{!9, !5, i64 240}
!34 = !{!9, !5, i64 248}
!35 = !{!9, !5, i64 256}
!36 = !{!9, !5, i64 264}
!37 = !{!9, !5, i64 272}
!38 = !{!9, !5, i64 280}
!39 = !{!9, !5, i64 288}
!40 = !{!9, !5, i64 296}
!41 = !{!9, !5, i64 304}
!42 = !{!9, !5, i64 312}
!43 = !{!10, !10, i64 0}
!44 = !{!11, !11, i64 0}
!45 = !{!46, !5, i64 648}
!46 = !{!"grib_accessor_number_of_points", !47, i64 0, !5, i64 648, !5, i64 656, !5, i64 664, !5, i64 672}
!47 = !{!"grib_accessor", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40, !10, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !10, i64 88, !5, i64 96, !6, i64 104, !6, i64 264, !11, i64 424, !5, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !5, i64 464, !5, i64 472, !6, i64 480, !5, i64 640}
!48 = !{!46, !5, i64 656}
!49 = !{!46, !5, i64 664}
!50 = !{!46, !5, i64 672}
!51 = !{!47, !10, i64 88}
!52 = !{!47, !10, i64 40}
!53 = !{!47, !5, i64 16}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
