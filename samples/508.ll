; ModuleID = 'samples/508.bc'
source_filename = "/local-ssd/eccodes-psuel4mgyciesdodvadhkap2g5cqhhyf-build/aidengro/spack-stage-eccodes-2.25.0-psuel4mgyciesdodvadhkap2g5cqhhyf/spack-src/src/grib_accessor_class_library_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grib_accessor_class = type { ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@_grib_accessor_class_library_version = internal global %struct.grib_accessor_class { ptr @grib_accessor_class_ascii, ptr @.str, i64 648, i32 0, ptr @init_class, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @string_length, ptr @value_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @unpack_string, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@grib_accessor_class_library_version = global ptr @_grib_accessor_class_library_version, align 8
@grib_accessor_class_ascii = external global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"library_version\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1

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
  %byte_count = getelementptr inbounds %struct.grib_accessor_class, ptr %12, i32 0, i32 12
  %13 = load ptr, ptr %byte_count, align 8, !tbaa !14
  %14 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %byte_count5 = getelementptr inbounds %struct.grib_accessor_class, ptr %14, i32 0, i32 12
  store ptr %13, ptr %byte_count5, align 8, !tbaa !14
  %15 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super6 = getelementptr inbounds %struct.grib_accessor_class, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %super6, align 8, !tbaa !8
  %17 = load ptr, ptr %16, align 8, !tbaa !4
  %byte_offset = getelementptr inbounds %struct.grib_accessor_class, ptr %17, i32 0, i32 13
  %18 = load ptr, ptr %byte_offset, align 8, !tbaa !15
  %19 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %byte_offset7 = getelementptr inbounds %struct.grib_accessor_class, ptr %19, i32 0, i32 13
  store ptr %18, ptr %byte_offset7, align 8, !tbaa !15
  %20 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super8 = getelementptr inbounds %struct.grib_accessor_class, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %super8, align 8, !tbaa !8
  %22 = load ptr, ptr %21, align 8, !tbaa !4
  %get_native_type = getelementptr inbounds %struct.grib_accessor_class, ptr %22, i32 0, i32 14
  %23 = load ptr, ptr %get_native_type, align 8, !tbaa !16
  %24 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %get_native_type9 = getelementptr inbounds %struct.grib_accessor_class, ptr %24, i32 0, i32 14
  store ptr %23, ptr %get_native_type9, align 8, !tbaa !16
  %25 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super10 = getelementptr inbounds %struct.grib_accessor_class, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %super10, align 8, !tbaa !8
  %27 = load ptr, ptr %26, align 8, !tbaa !4
  %sub_section = getelementptr inbounds %struct.grib_accessor_class, ptr %27, i32 0, i32 15
  %28 = load ptr, ptr %sub_section, align 8, !tbaa !17
  %29 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %sub_section11 = getelementptr inbounds %struct.grib_accessor_class, ptr %29, i32 0, i32 15
  store ptr %28, ptr %sub_section11, align 8, !tbaa !17
  %30 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super12 = getelementptr inbounds %struct.grib_accessor_class, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %super12, align 8, !tbaa !8
  %32 = load ptr, ptr %31, align 8, !tbaa !4
  %pack_missing = getelementptr inbounds %struct.grib_accessor_class, ptr %32, i32 0, i32 16
  %33 = load ptr, ptr %pack_missing, align 8, !tbaa !18
  %34 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_missing13 = getelementptr inbounds %struct.grib_accessor_class, ptr %34, i32 0, i32 16
  store ptr %33, ptr %pack_missing13, align 8, !tbaa !18
  %35 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super14 = getelementptr inbounds %struct.grib_accessor_class, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %super14, align 8, !tbaa !8
  %37 = load ptr, ptr %36, align 8, !tbaa !4
  %is_missing = getelementptr inbounds %struct.grib_accessor_class, ptr %37, i32 0, i32 17
  %38 = load ptr, ptr %is_missing, align 8, !tbaa !19
  %39 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %is_missing15 = getelementptr inbounds %struct.grib_accessor_class, ptr %39, i32 0, i32 17
  store ptr %38, ptr %is_missing15, align 8, !tbaa !19
  %40 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super16 = getelementptr inbounds %struct.grib_accessor_class, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %super16, align 8, !tbaa !8
  %42 = load ptr, ptr %41, align 8, !tbaa !4
  %pack_long = getelementptr inbounds %struct.grib_accessor_class, ptr %42, i32 0, i32 18
  %43 = load ptr, ptr %pack_long, align 8, !tbaa !20
  %44 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_long17 = getelementptr inbounds %struct.grib_accessor_class, ptr %44, i32 0, i32 18
  store ptr %43, ptr %pack_long17, align 8, !tbaa !20
  %45 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super18 = getelementptr inbounds %struct.grib_accessor_class, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %super18, align 8, !tbaa !8
  %47 = load ptr, ptr %46, align 8, !tbaa !4
  %unpack_long = getelementptr inbounds %struct.grib_accessor_class, ptr %47, i32 0, i32 19
  %48 = load ptr, ptr %unpack_long, align 8, !tbaa !21
  %49 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_long19 = getelementptr inbounds %struct.grib_accessor_class, ptr %49, i32 0, i32 19
  store ptr %48, ptr %unpack_long19, align 8, !tbaa !21
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
  %pack_string_array = getelementptr inbounds %struct.grib_accessor_class, ptr %67, i32 0, i32 24
  %68 = load ptr, ptr %pack_string_array, align 8, !tbaa !25
  %69 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_string_array27 = getelementptr inbounds %struct.grib_accessor_class, ptr %69, i32 0, i32 24
  store ptr %68, ptr %pack_string_array27, align 8, !tbaa !25
  %70 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super28 = getelementptr inbounds %struct.grib_accessor_class, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %super28, align 8, !tbaa !8
  %72 = load ptr, ptr %71, align 8, !tbaa !4
  %unpack_string_array = getelementptr inbounds %struct.grib_accessor_class, ptr %72, i32 0, i32 25
  %73 = load ptr, ptr %unpack_string_array, align 8, !tbaa !26
  %74 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_string_array29 = getelementptr inbounds %struct.grib_accessor_class, ptr %74, i32 0, i32 25
  store ptr %73, ptr %unpack_string_array29, align 8, !tbaa !26
  %75 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super30 = getelementptr inbounds %struct.grib_accessor_class, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %super30, align 8, !tbaa !8
  %77 = load ptr, ptr %76, align 8, !tbaa !4
  %pack_bytes = getelementptr inbounds %struct.grib_accessor_class, ptr %77, i32 0, i32 26
  %78 = load ptr, ptr %pack_bytes, align 8, !tbaa !27
  %79 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_bytes31 = getelementptr inbounds %struct.grib_accessor_class, ptr %79, i32 0, i32 26
  store ptr %78, ptr %pack_bytes31, align 8, !tbaa !27
  %80 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super32 = getelementptr inbounds %struct.grib_accessor_class, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %super32, align 8, !tbaa !8
  %82 = load ptr, ptr %81, align 8, !tbaa !4
  %unpack_bytes = getelementptr inbounds %struct.grib_accessor_class, ptr %82, i32 0, i32 27
  %83 = load ptr, ptr %unpack_bytes, align 8, !tbaa !28
  %84 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_bytes33 = getelementptr inbounds %struct.grib_accessor_class, ptr %84, i32 0, i32 27
  store ptr %83, ptr %unpack_bytes33, align 8, !tbaa !28
  %85 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super34 = getelementptr inbounds %struct.grib_accessor_class, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %super34, align 8, !tbaa !8
  %87 = load ptr, ptr %86, align 8, !tbaa !4
  %pack_expression = getelementptr inbounds %struct.grib_accessor_class, ptr %87, i32 0, i32 28
  %88 = load ptr, ptr %pack_expression, align 8, !tbaa !29
  %89 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_expression35 = getelementptr inbounds %struct.grib_accessor_class, ptr %89, i32 0, i32 28
  store ptr %88, ptr %pack_expression35, align 8, !tbaa !29
  %90 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super36 = getelementptr inbounds %struct.grib_accessor_class, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %super36, align 8, !tbaa !8
  %92 = load ptr, ptr %91, align 8, !tbaa !4
  %notify_change = getelementptr inbounds %struct.grib_accessor_class, ptr %92, i32 0, i32 29
  %93 = load ptr, ptr %notify_change, align 8, !tbaa !30
  %94 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %notify_change37 = getelementptr inbounds %struct.grib_accessor_class, ptr %94, i32 0, i32 29
  store ptr %93, ptr %notify_change37, align 8, !tbaa !30
  %95 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super38 = getelementptr inbounds %struct.grib_accessor_class, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %super38, align 8, !tbaa !8
  %97 = load ptr, ptr %96, align 8, !tbaa !4
  %update_size = getelementptr inbounds %struct.grib_accessor_class, ptr %97, i32 0, i32 30
  %98 = load ptr, ptr %update_size, align 8, !tbaa !31
  %99 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %update_size39 = getelementptr inbounds %struct.grib_accessor_class, ptr %99, i32 0, i32 30
  store ptr %98, ptr %update_size39, align 8, !tbaa !31
  %100 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super40 = getelementptr inbounds %struct.grib_accessor_class, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %super40, align 8, !tbaa !8
  %102 = load ptr, ptr %101, align 8, !tbaa !4
  %preferred_size = getelementptr inbounds %struct.grib_accessor_class, ptr %102, i32 0, i32 31
  %103 = load ptr, ptr %preferred_size, align 8, !tbaa !32
  %104 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %preferred_size41 = getelementptr inbounds %struct.grib_accessor_class, ptr %104, i32 0, i32 31
  store ptr %103, ptr %preferred_size41, align 8, !tbaa !32
  %105 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super42 = getelementptr inbounds %struct.grib_accessor_class, ptr %105, i32 0, i32 0
  %106 = load ptr, ptr %super42, align 8, !tbaa !8
  %107 = load ptr, ptr %106, align 8, !tbaa !4
  %resize = getelementptr inbounds %struct.grib_accessor_class, ptr %107, i32 0, i32 32
  %108 = load ptr, ptr %resize, align 8, !tbaa !33
  %109 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %resize43 = getelementptr inbounds %struct.grib_accessor_class, ptr %109, i32 0, i32 32
  store ptr %108, ptr %resize43, align 8, !tbaa !33
  %110 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super44 = getelementptr inbounds %struct.grib_accessor_class, ptr %110, i32 0, i32 0
  %111 = load ptr, ptr %super44, align 8, !tbaa !8
  %112 = load ptr, ptr %111, align 8, !tbaa !4
  %nearest_smaller_value = getelementptr inbounds %struct.grib_accessor_class, ptr %112, i32 0, i32 33
  %113 = load ptr, ptr %nearest_smaller_value, align 8, !tbaa !34
  %114 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %nearest_smaller_value45 = getelementptr inbounds %struct.grib_accessor_class, ptr %114, i32 0, i32 33
  store ptr %113, ptr %nearest_smaller_value45, align 8, !tbaa !34
  %115 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super46 = getelementptr inbounds %struct.grib_accessor_class, ptr %115, i32 0, i32 0
  %116 = load ptr, ptr %super46, align 8, !tbaa !8
  %117 = load ptr, ptr %116, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.grib_accessor_class, ptr %117, i32 0, i32 34
  %118 = load ptr, ptr %next, align 8, !tbaa !35
  %119 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %next47 = getelementptr inbounds %struct.grib_accessor_class, ptr %119, i32 0, i32 34
  store ptr %118, ptr %next47, align 8, !tbaa !35
  %120 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super48 = getelementptr inbounds %struct.grib_accessor_class, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %super48, align 8, !tbaa !8
  %122 = load ptr, ptr %121, align 8, !tbaa !4
  %compare = getelementptr inbounds %struct.grib_accessor_class, ptr %122, i32 0, i32 35
  %123 = load ptr, ptr %compare, align 8, !tbaa !36
  %124 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %compare49 = getelementptr inbounds %struct.grib_accessor_class, ptr %124, i32 0, i32 35
  store ptr %123, ptr %compare49, align 8, !tbaa !36
  %125 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super50 = getelementptr inbounds %struct.grib_accessor_class, ptr %125, i32 0, i32 0
  %126 = load ptr, ptr %super50, align 8, !tbaa !8
  %127 = load ptr, ptr %126, align 8, !tbaa !4
  %unpack_double_element = getelementptr inbounds %struct.grib_accessor_class, ptr %127, i32 0, i32 36
  %128 = load ptr, ptr %unpack_double_element, align 8, !tbaa !37
  %129 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double_element51 = getelementptr inbounds %struct.grib_accessor_class, ptr %129, i32 0, i32 36
  store ptr %128, ptr %unpack_double_element51, align 8, !tbaa !37
  %130 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super52 = getelementptr inbounds %struct.grib_accessor_class, ptr %130, i32 0, i32 0
  %131 = load ptr, ptr %super52, align 8, !tbaa !8
  %132 = load ptr, ptr %131, align 8, !tbaa !4
  %unpack_double_subarray = getelementptr inbounds %struct.grib_accessor_class, ptr %132, i32 0, i32 37
  %133 = load ptr, ptr %unpack_double_subarray, align 8, !tbaa !38
  %134 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double_subarray53 = getelementptr inbounds %struct.grib_accessor_class, ptr %134, i32 0, i32 37
  store ptr %133, ptr %unpack_double_subarray53, align 8, !tbaa !38
  %135 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super54 = getelementptr inbounds %struct.grib_accessor_class, ptr %135, i32 0, i32 0
  %136 = load ptr, ptr %super54, align 8, !tbaa !8
  %137 = load ptr, ptr %136, align 8, !tbaa !4
  %clear = getelementptr inbounds %struct.grib_accessor_class, ptr %137, i32 0, i32 38
  %138 = load ptr, ptr %clear, align 8, !tbaa !39
  %139 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %clear55 = getelementptr inbounds %struct.grib_accessor_class, ptr %139, i32 0, i32 38
  store ptr %138, ptr %clear55, align 8, !tbaa !39
  %140 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super56 = getelementptr inbounds %struct.grib_accessor_class, ptr %140, i32 0, i32 0
  %141 = load ptr, ptr %super56, align 8, !tbaa !8
  %142 = load ptr, ptr %141, align 8, !tbaa !4
  %make_clone = getelementptr inbounds %struct.grib_accessor_class, ptr %142, i32 0, i32 39
  %143 = load ptr, ptr %make_clone, align 8, !tbaa !40
  %144 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %make_clone57 = getelementptr inbounds %struct.grib_accessor_class, ptr %144, i32 0, i32 39
  store ptr %143, ptr %make_clone57, align 8, !tbaa !40
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @string_length(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  ret i64 255
}

; Function Attrs: nounwind uwtable
define internal i32 @value_count(ptr noundef %a, ptr noundef %count) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %count.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %count, ptr %count.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %count.addr, align 8, !tbaa !4
  store i64 1, ptr %0, align 8, !tbaa !41
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @unpack_string(ptr noundef %a, ptr noundef %val, ptr noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %result = alloca [30 x i8], align 16
  %size = alloca i64, align 8
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  %revision = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 30, ptr %result) #4
  call void @llvm.memset.p0.i64(ptr align 16 %result, i8 0, i64 30, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %major) #4
  store i32 2, ptr %major, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #4
  store i32 25, ptr %minor, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 4, ptr %revision) #4
  store i32 0, ptr %revision, align 4, !tbaa !42
  %arraydecay = getelementptr inbounds [30 x i8], ptr %result, i64 0, i64 0
  %0 = load i32, ptr %major, align 4, !tbaa !42
  %1 = load i32, ptr %minor, align 4, !tbaa !42
  %2 = load i32, ptr %revision, align 4, !tbaa !42
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.1, i32 noundef %0, i32 noundef %1, i32 noundef %2) #4
  store i64 30, ptr %size, align 8, !tbaa !41
  %3 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %4 = load i64, ptr %3, align 8, !tbaa !41
  %5 = load i64, ptr %size, align 8, !tbaa !41
  %cmp = icmp ult i64 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %arraydecay1 = getelementptr inbounds [30 x i8], ptr %result, i64 0, i64 0
  %call2 = call ptr @strcpy(ptr noundef %6, ptr noundef %arraydecay1) #4
  %7 = load i64, ptr %size, align 8, !tbaa !41
  %8 = load ptr, ptr %len.addr, align 8, !tbaa !4
  store i64 %7, ptr %8, align 8, !tbaa !41
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %revision) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %major) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #4
  call void @llvm.lifetime.end.p0(i64 30, ptr %result) #4
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !5, i64 0}
!9 = !{!"grib_accessor_class", !5, i64 0, !5, i64 8, !10, i64 16, !11, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312}
!10 = !{!"long", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!9, !5, i64 64}
!13 = !{!9, !5, i64 72}
!14 = !{!9, !5, i64 96}
!15 = !{!9, !5, i64 104}
!16 = !{!9, !5, i64 112}
!17 = !{!9, !5, i64 120}
!18 = !{!9, !5, i64 128}
!19 = !{!9, !5, i64 136}
!20 = !{!9, !5, i64 144}
!21 = !{!9, !5, i64 152}
!22 = !{!9, !5, i64 160}
!23 = !{!9, !5, i64 168}
!24 = !{!9, !5, i64 176}
!25 = !{!9, !5, i64 192}
!26 = !{!9, !5, i64 200}
!27 = !{!9, !5, i64 208}
!28 = !{!9, !5, i64 216}
!29 = !{!9, !5, i64 224}
!30 = !{!9, !5, i64 232}
!31 = !{!9, !5, i64 240}
!32 = !{!9, !5, i64 248}
!33 = !{!9, !5, i64 256}
!34 = !{!9, !5, i64 264}
!35 = !{!9, !5, i64 272}
!36 = !{!9, !5, i64 280}
!37 = !{!9, !5, i64 288}
!38 = !{!9, !5, i64 296}
!39 = !{!9, !5, i64 304}
!40 = !{!9, !5, i64 312}
!41 = !{!10, !10, i64 0}
!42 = !{!11, !11, i64 0}
