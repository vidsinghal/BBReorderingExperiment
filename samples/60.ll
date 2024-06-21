; ModuleID = 'samples/60.bc'
source_filename = "/local-ssd/eccodes-psuel4mgyciesdodvadhkap2g5cqhhyf-build/aidengro/spack-stage-eccodes-2.25.0-psuel4mgyciesdodvadhkap2g5cqhhyf/spack-src/src/grib_accessor_class_g1date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grib_accessor_class = type { ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.grib_accessor_g1date = type { %struct.grib_accessor, ptr, ptr, ptr, ptr }
%struct.grib_accessor = type { ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, i64, ptr, [20 x ptr], [20 x ptr], i32, ptr, i64, i64, i64, ptr, ptr, [20 x ptr], ptr }

@_grib_accessor_class_g1date = internal global %struct.grib_accessor_class { ptr @grib_accessor_class_long, ptr @.str, i64 680, i32 0, ptr @init_class, ptr @init, ptr null, ptr null, ptr @dump, ptr null, ptr null, ptr @value_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pack_long, ptr @unpack_long, ptr null, ptr null, ptr null, ptr @unpack_string, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@grib_accessor_class_g1date = global ptr @_grib_accessor_class_g1date, align 8
@grib_accessor_class_long = external global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"g1date\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"grib_accessor_g1date: pack_long invalid date %ld, changed to %ld\00", align 1
@months = internal global [12 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"%s-%02ld\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"jan\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"feb\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"mar\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"apr\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"may\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"jun\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"jul\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"aug\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"sep\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"oct\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"nov\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"dec\00", align 1

; Function Attrs: nounwind uwtable
define internal void @init_class(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super = getelementptr inbounds %struct.grib_accessor_class, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %super, align 8, !tbaa !8
  %2 = load ptr, ptr %1, align 8, !tbaa !4
  %next_offset = getelementptr inbounds %struct.grib_accessor_class, ptr %2, i32 0, i32 9
  %3 = load ptr, ptr %next_offset, align 8, !tbaa !12
  %4 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %next_offset1 = getelementptr inbounds %struct.grib_accessor_class, ptr %4, i32 0, i32 9
  store ptr %3, ptr %next_offset1, align 8, !tbaa !12
  %5 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super2 = getelementptr inbounds %struct.grib_accessor_class, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %super2, align 8, !tbaa !8
  %7 = load ptr, ptr %6, align 8, !tbaa !4
  %string_length = getelementptr inbounds %struct.grib_accessor_class, ptr %7, i32 0, i32 10
  %8 = load ptr, ptr %string_length, align 8, !tbaa !13
  %9 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %string_length3 = getelementptr inbounds %struct.grib_accessor_class, ptr %9, i32 0, i32 10
  store ptr %8, ptr %string_length3, align 8, !tbaa !13
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
  %pack_double = getelementptr inbounds %struct.grib_accessor_class, ptr %42, i32 0, i32 20
  %43 = load ptr, ptr %pack_double, align 8, !tbaa !20
  %44 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_double17 = getelementptr inbounds %struct.grib_accessor_class, ptr %44, i32 0, i32 20
  store ptr %43, ptr %pack_double17, align 8, !tbaa !20
  %45 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super18 = getelementptr inbounds %struct.grib_accessor_class, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %super18, align 8, !tbaa !8
  %47 = load ptr, ptr %46, align 8, !tbaa !4
  %unpack_double = getelementptr inbounds %struct.grib_accessor_class, ptr %47, i32 0, i32 21
  %48 = load ptr, ptr %unpack_double, align 8, !tbaa !21
  %49 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double19 = getelementptr inbounds %struct.grib_accessor_class, ptr %49, i32 0, i32 21
  store ptr %48, ptr %unpack_double19, align 8, !tbaa !21
  %50 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super20 = getelementptr inbounds %struct.grib_accessor_class, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %super20, align 8, !tbaa !8
  %52 = load ptr, ptr %51, align 8, !tbaa !4
  %pack_string = getelementptr inbounds %struct.grib_accessor_class, ptr %52, i32 0, i32 22
  %53 = load ptr, ptr %pack_string, align 8, !tbaa !22
  %54 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_string21 = getelementptr inbounds %struct.grib_accessor_class, ptr %54, i32 0, i32 22
  store ptr %53, ptr %pack_string21, align 8, !tbaa !22
  %55 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super22 = getelementptr inbounds %struct.grib_accessor_class, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %super22, align 8, !tbaa !8
  %57 = load ptr, ptr %56, align 8, !tbaa !4
  %pack_string_array = getelementptr inbounds %struct.grib_accessor_class, ptr %57, i32 0, i32 24
  %58 = load ptr, ptr %pack_string_array, align 8, !tbaa !23
  %59 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_string_array23 = getelementptr inbounds %struct.grib_accessor_class, ptr %59, i32 0, i32 24
  store ptr %58, ptr %pack_string_array23, align 8, !tbaa !23
  %60 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super24 = getelementptr inbounds %struct.grib_accessor_class, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %super24, align 8, !tbaa !8
  %62 = load ptr, ptr %61, align 8, !tbaa !4
  %unpack_string_array = getelementptr inbounds %struct.grib_accessor_class, ptr %62, i32 0, i32 25
  %63 = load ptr, ptr %unpack_string_array, align 8, !tbaa !24
  %64 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_string_array25 = getelementptr inbounds %struct.grib_accessor_class, ptr %64, i32 0, i32 25
  store ptr %63, ptr %unpack_string_array25, align 8, !tbaa !24
  %65 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super26 = getelementptr inbounds %struct.grib_accessor_class, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %super26, align 8, !tbaa !8
  %67 = load ptr, ptr %66, align 8, !tbaa !4
  %pack_bytes = getelementptr inbounds %struct.grib_accessor_class, ptr %67, i32 0, i32 26
  %68 = load ptr, ptr %pack_bytes, align 8, !tbaa !25
  %69 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_bytes27 = getelementptr inbounds %struct.grib_accessor_class, ptr %69, i32 0, i32 26
  store ptr %68, ptr %pack_bytes27, align 8, !tbaa !25
  %70 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super28 = getelementptr inbounds %struct.grib_accessor_class, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %super28, align 8, !tbaa !8
  %72 = load ptr, ptr %71, align 8, !tbaa !4
  %unpack_bytes = getelementptr inbounds %struct.grib_accessor_class, ptr %72, i32 0, i32 27
  %73 = load ptr, ptr %unpack_bytes, align 8, !tbaa !26
  %74 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_bytes29 = getelementptr inbounds %struct.grib_accessor_class, ptr %74, i32 0, i32 27
  store ptr %73, ptr %unpack_bytes29, align 8, !tbaa !26
  %75 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super30 = getelementptr inbounds %struct.grib_accessor_class, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %super30, align 8, !tbaa !8
  %77 = load ptr, ptr %76, align 8, !tbaa !4
  %pack_expression = getelementptr inbounds %struct.grib_accessor_class, ptr %77, i32 0, i32 28
  %78 = load ptr, ptr %pack_expression, align 8, !tbaa !27
  %79 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_expression31 = getelementptr inbounds %struct.grib_accessor_class, ptr %79, i32 0, i32 28
  store ptr %78, ptr %pack_expression31, align 8, !tbaa !27
  %80 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super32 = getelementptr inbounds %struct.grib_accessor_class, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %super32, align 8, !tbaa !8
  %82 = load ptr, ptr %81, align 8, !tbaa !4
  %notify_change = getelementptr inbounds %struct.grib_accessor_class, ptr %82, i32 0, i32 29
  %83 = load ptr, ptr %notify_change, align 8, !tbaa !28
  %84 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %notify_change33 = getelementptr inbounds %struct.grib_accessor_class, ptr %84, i32 0, i32 29
  store ptr %83, ptr %notify_change33, align 8, !tbaa !28
  %85 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super34 = getelementptr inbounds %struct.grib_accessor_class, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %super34, align 8, !tbaa !8
  %87 = load ptr, ptr %86, align 8, !tbaa !4
  %update_size = getelementptr inbounds %struct.grib_accessor_class, ptr %87, i32 0, i32 30
  %88 = load ptr, ptr %update_size, align 8, !tbaa !29
  %89 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %update_size35 = getelementptr inbounds %struct.grib_accessor_class, ptr %89, i32 0, i32 30
  store ptr %88, ptr %update_size35, align 8, !tbaa !29
  %90 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super36 = getelementptr inbounds %struct.grib_accessor_class, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %super36, align 8, !tbaa !8
  %92 = load ptr, ptr %91, align 8, !tbaa !4
  %preferred_size = getelementptr inbounds %struct.grib_accessor_class, ptr %92, i32 0, i32 31
  %93 = load ptr, ptr %preferred_size, align 8, !tbaa !30
  %94 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %preferred_size37 = getelementptr inbounds %struct.grib_accessor_class, ptr %94, i32 0, i32 31
  store ptr %93, ptr %preferred_size37, align 8, !tbaa !30
  %95 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super38 = getelementptr inbounds %struct.grib_accessor_class, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %super38, align 8, !tbaa !8
  %97 = load ptr, ptr %96, align 8, !tbaa !4
  %resize = getelementptr inbounds %struct.grib_accessor_class, ptr %97, i32 0, i32 32
  %98 = load ptr, ptr %resize, align 8, !tbaa !31
  %99 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %resize39 = getelementptr inbounds %struct.grib_accessor_class, ptr %99, i32 0, i32 32
  store ptr %98, ptr %resize39, align 8, !tbaa !31
  %100 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super40 = getelementptr inbounds %struct.grib_accessor_class, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %super40, align 8, !tbaa !8
  %102 = load ptr, ptr %101, align 8, !tbaa !4
  %nearest_smaller_value = getelementptr inbounds %struct.grib_accessor_class, ptr %102, i32 0, i32 33
  %103 = load ptr, ptr %nearest_smaller_value, align 8, !tbaa !32
  %104 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %nearest_smaller_value41 = getelementptr inbounds %struct.grib_accessor_class, ptr %104, i32 0, i32 33
  store ptr %103, ptr %nearest_smaller_value41, align 8, !tbaa !32
  %105 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super42 = getelementptr inbounds %struct.grib_accessor_class, ptr %105, i32 0, i32 0
  %106 = load ptr, ptr %super42, align 8, !tbaa !8
  %107 = load ptr, ptr %106, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.grib_accessor_class, ptr %107, i32 0, i32 34
  %108 = load ptr, ptr %next, align 8, !tbaa !33
  %109 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %next43 = getelementptr inbounds %struct.grib_accessor_class, ptr %109, i32 0, i32 34
  store ptr %108, ptr %next43, align 8, !tbaa !33
  %110 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super44 = getelementptr inbounds %struct.grib_accessor_class, ptr %110, i32 0, i32 0
  %111 = load ptr, ptr %super44, align 8, !tbaa !8
  %112 = load ptr, ptr %111, align 8, !tbaa !4
  %compare = getelementptr inbounds %struct.grib_accessor_class, ptr %112, i32 0, i32 35
  %113 = load ptr, ptr %compare, align 8, !tbaa !34
  %114 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %compare45 = getelementptr inbounds %struct.grib_accessor_class, ptr %114, i32 0, i32 35
  store ptr %113, ptr %compare45, align 8, !tbaa !34
  %115 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super46 = getelementptr inbounds %struct.grib_accessor_class, ptr %115, i32 0, i32 0
  %116 = load ptr, ptr %super46, align 8, !tbaa !8
  %117 = load ptr, ptr %116, align 8, !tbaa !4
  %unpack_double_element = getelementptr inbounds %struct.grib_accessor_class, ptr %117, i32 0, i32 36
  %118 = load ptr, ptr %unpack_double_element, align 8, !tbaa !35
  %119 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double_element47 = getelementptr inbounds %struct.grib_accessor_class, ptr %119, i32 0, i32 36
  store ptr %118, ptr %unpack_double_element47, align 8, !tbaa !35
  %120 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super48 = getelementptr inbounds %struct.grib_accessor_class, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %super48, align 8, !tbaa !8
  %122 = load ptr, ptr %121, align 8, !tbaa !4
  %unpack_double_subarray = getelementptr inbounds %struct.grib_accessor_class, ptr %122, i32 0, i32 37
  %123 = load ptr, ptr %unpack_double_subarray, align 8, !tbaa !36
  %124 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double_subarray49 = getelementptr inbounds %struct.grib_accessor_class, ptr %124, i32 0, i32 37
  store ptr %123, ptr %unpack_double_subarray49, align 8, !tbaa !36
  %125 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super50 = getelementptr inbounds %struct.grib_accessor_class, ptr %125, i32 0, i32 0
  %126 = load ptr, ptr %super50, align 8, !tbaa !8
  %127 = load ptr, ptr %126, align 8, !tbaa !4
  %clear = getelementptr inbounds %struct.grib_accessor_class, ptr %127, i32 0, i32 38
  %128 = load ptr, ptr %clear, align 8, !tbaa !37
  %129 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %clear51 = getelementptr inbounds %struct.grib_accessor_class, ptr %129, i32 0, i32 38
  store ptr %128, ptr %clear51, align 8, !tbaa !37
  %130 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super52 = getelementptr inbounds %struct.grib_accessor_class, ptr %130, i32 0, i32 0
  %131 = load ptr, ptr %super52, align 8, !tbaa !8
  %132 = load ptr, ptr %131, align 8, !tbaa !4
  %make_clone = getelementptr inbounds %struct.grib_accessor_class, ptr %132, i32 0, i32 39
  %133 = load ptr, ptr %make_clone, align 8, !tbaa !38
  %134 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %make_clone53 = getelementptr inbounds %struct.grib_accessor_class, ptr %134, i32 0, i32 39
  store ptr %133, ptr %make_clone53, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init(ptr noundef %a, i64 noundef %l, ptr noundef %c) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %l.addr = alloca i64, align 8
  %c.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %hand = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %l, ptr %l.addr, align 8, !tbaa !39
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #5
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hand) #5
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call ptr @grib_handle_of_accessor(ptr noundef %1)
  store ptr %call, ptr %hand, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  store i32 0, ptr %n, align 4, !tbaa !40
  %2 = load ptr, ptr %hand, align 8, !tbaa !4
  %3 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %4 = load i32, ptr %n, align 4, !tbaa !40
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %n, align 4, !tbaa !40
  %call1 = call ptr @grib_arguments_get_name(ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %5 = load ptr, ptr %self, align 8, !tbaa !4
  %century = getelementptr inbounds %struct.grib_accessor_g1date, ptr %5, i32 0, i32 1
  store ptr %call1, ptr %century, align 8, !tbaa !41
  %6 = load ptr, ptr %hand, align 8, !tbaa !4
  %7 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %8 = load i32, ptr %n, align 4, !tbaa !40
  %inc2 = add nsw i32 %8, 1
  store i32 %inc2, ptr %n, align 4, !tbaa !40
  %call3 = call ptr @grib_arguments_get_name(ptr noundef %6, ptr noundef %7, i32 noundef %8)
  %9 = load ptr, ptr %self, align 8, !tbaa !4
  %year = getelementptr inbounds %struct.grib_accessor_g1date, ptr %9, i32 0, i32 2
  store ptr %call3, ptr %year, align 8, !tbaa !44
  %10 = load ptr, ptr %hand, align 8, !tbaa !4
  %11 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %12 = load i32, ptr %n, align 4, !tbaa !40
  %inc4 = add nsw i32 %12, 1
  store i32 %inc4, ptr %n, align 4, !tbaa !40
  %call5 = call ptr @grib_arguments_get_name(ptr noundef %10, ptr noundef %11, i32 noundef %12)
  %13 = load ptr, ptr %self, align 8, !tbaa !4
  %month = getelementptr inbounds %struct.grib_accessor_g1date, ptr %13, i32 0, i32 3
  store ptr %call5, ptr %month, align 8, !tbaa !45
  %14 = load ptr, ptr %hand, align 8, !tbaa !4
  %15 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %16 = load i32, ptr %n, align 4, !tbaa !40
  %inc6 = add nsw i32 %16, 1
  store i32 %inc6, ptr %n, align 4, !tbaa !40
  %call7 = call ptr @grib_arguments_get_name(ptr noundef %14, ptr noundef %15, i32 noundef %16)
  %17 = load ptr, ptr %self, align 8, !tbaa !4
  %day = getelementptr inbounds %struct.grib_accessor_g1date, ptr %17, i32 0, i32 4
  store ptr %call7, ptr %day, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %hand) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dump(ptr noundef %a, ptr noundef %dumper) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %dumper.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %dumper, ptr %dumper.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %dumper.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  call void @grib_dump_long(ptr noundef %0, ptr noundef %1, ptr noundef null)
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
  store i64 1, ptr %0, align 8, !tbaa !39
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pack_long(ptr noundef %a, ptr noundef %val, ptr noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %v = alloca i64, align 8
  %self = alloca ptr, align 8
  %hand = alloca ptr, align 8
  %year = alloca i64, align 8
  %century = alloca i64, align 8
  %month = alloca i64, align 8
  %day = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %d = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5
  store i32 0, ptr %ret, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #5
  %0 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !39
  store i64 %1, ptr %v, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #5
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %2, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hand) #5
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call ptr @grib_handle_of_accessor(ptr noundef %3)
  store ptr %call, ptr %hand, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %year) #5
  store i64 0, ptr %year, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %century) #5
  store i64 0, ptr %century, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %month) #5
  store i64 0, ptr %month, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %day) #5
  store i64 0, ptr %day, align 8, !tbaa !39
  %4 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %5 = load i64, ptr %4, align 8, !tbaa !39
  %cmp = icmp ne i64 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #5
  %6 = load i64, ptr %v, align 8, !tbaa !39
  %call1 = call i64 @grib_date_to_julian(i64 noundef %6)
  %call2 = call i64 @grib_julian_to_date(i64 noundef %call1)
  store i64 %call2, ptr %d, align 8, !tbaa !39
  %7 = load i64, ptr %v, align 8, !tbaa !39
  %8 = load i64, ptr %d, align 8, !tbaa !39
  %cmp3 = icmp ne i64 %7, %8
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %context, align 8, !tbaa !47
  %11 = load i64, ptr %v, align 8, !tbaa !39
  %12 = load i64, ptr %d, align 8, !tbaa !39
  call void (ptr, i32, ptr, ...) @grib_context_log(ptr noundef %10, i32 noundef 2, ptr noundef @.str.1, i64 noundef %11, i64 noundef %12)
  store i32 -14, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup33 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %13 = load i64, ptr %v, align 8, !tbaa !39
  %div = sdiv i64 %13, 1000000
  store i64 %div, ptr %century, align 8, !tbaa !39
  %14 = load i64, ptr %v, align 8, !tbaa !39
  %rem = srem i64 %14, 1000000
  store i64 %rem, ptr %v, align 8, !tbaa !39
  %15 = load i64, ptr %v, align 8, !tbaa !39
  %div6 = sdiv i64 %15, 10000
  store i64 %div6, ptr %year, align 8, !tbaa !39
  %16 = load i64, ptr %v, align 8, !tbaa !39
  %rem7 = srem i64 %16, 10000
  store i64 %rem7, ptr %v, align 8, !tbaa !39
  %17 = load i64, ptr %v, align 8, !tbaa !39
  %div8 = sdiv i64 %17, 100
  store i64 %div8, ptr %month, align 8, !tbaa !39
  %18 = load i64, ptr %v, align 8, !tbaa !39
  %rem9 = srem i64 %18, 100
  store i64 %rem9, ptr %v, align 8, !tbaa !39
  %19 = load i64, ptr %v, align 8, !tbaa !39
  store i64 %19, ptr %day, align 8, !tbaa !39
  %20 = load i64, ptr %year, align 8, !tbaa !39
  %cmp10 = icmp eq i64 %20, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %cleanup.cont
  store i64 100, ptr %year, align 8, !tbaa !39
  br label %if.end12

if.else:                                          ; preds = %cleanup.cont
  %21 = load i64, ptr %century, align 8, !tbaa !39
  %inc = add nsw i64 %21, 1
  store i64 %inc, ptr %century, align 8, !tbaa !39
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  %22 = load ptr, ptr %hand, align 8, !tbaa !4
  %23 = load ptr, ptr %self, align 8, !tbaa !4
  %century13 = getelementptr inbounds %struct.grib_accessor_g1date, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %century13, align 8, !tbaa !41
  %25 = load i64, ptr %century, align 8, !tbaa !39
  %call14 = call i32 @grib_set_long_internal(ptr noundef %22, ptr noundef %24, i64 noundef %25)
  store i32 %call14, ptr %ret, align 4, !tbaa !40
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  %26 = load i32, ptr %ret, align 4, !tbaa !40
  store i32 %26, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33

if.end17:                                         ; preds = %if.end12
  %27 = load ptr, ptr %hand, align 8, !tbaa !4
  %28 = load ptr, ptr %self, align 8, !tbaa !4
  %day18 = getelementptr inbounds %struct.grib_accessor_g1date, ptr %28, i32 0, i32 4
  %29 = load ptr, ptr %day18, align 8, !tbaa !46
  %30 = load i64, ptr %day, align 8, !tbaa !39
  %call19 = call i32 @grib_set_long_internal(ptr noundef %27, ptr noundef %29, i64 noundef %30)
  store i32 %call19, ptr %ret, align 4, !tbaa !40
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  %31 = load i32, ptr %ret, align 4, !tbaa !40
  store i32 %31, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33

if.end22:                                         ; preds = %if.end17
  %32 = load ptr, ptr %hand, align 8, !tbaa !4
  %33 = load ptr, ptr %self, align 8, !tbaa !4
  %month23 = getelementptr inbounds %struct.grib_accessor_g1date, ptr %33, i32 0, i32 3
  %34 = load ptr, ptr %month23, align 8, !tbaa !45
  %35 = load i64, ptr %month, align 8, !tbaa !39
  %call24 = call i32 @grib_set_long_internal(ptr noundef %32, ptr noundef %34, i64 noundef %35)
  store i32 %call24, ptr %ret, align 4, !tbaa !40
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end22
  %36 = load i32, ptr %ret, align 4, !tbaa !40
  store i32 %36, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33

if.end27:                                         ; preds = %if.end22
  %37 = load ptr, ptr %hand, align 8, !tbaa !4
  %38 = load ptr, ptr %self, align 8, !tbaa !4
  %year28 = getelementptr inbounds %struct.grib_accessor_g1date, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %year28, align 8, !tbaa !44
  %40 = load i64, ptr %year, align 8, !tbaa !39
  %call29 = call i32 @grib_set_long_internal(ptr noundef %37, ptr noundef %39, i64 noundef %40)
  store i32 %call29, ptr %ret, align 4, !tbaa !40
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  %41 = load i32, ptr %ret, align 4, !tbaa !40
  store i32 %41, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33

if.end32:                                         ; preds = %if.end27
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup33

cleanup33:                                        ; preds = %if.end32, %if.then31, %if.then26, %if.then21, %if.then16, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %day) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %month) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %century) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %year) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %hand) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @unpack_long(ptr noundef %a, ptr noundef %val, ptr noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %self = alloca ptr, align 8
  %hand = alloca ptr, align 8
  %year = alloca i64, align 8
  %century = alloca i64, align 8
  %month = alloca i64, align 8
  %day = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5
  store i32 0, ptr %ret, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #5
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hand) #5
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call ptr @grib_handle_of_accessor(ptr noundef %1)
  store ptr %call, ptr %hand, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %year) #5
  store i64 0, ptr %year, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %century) #5
  store i64 0, ptr %century, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %month) #5
  store i64 0, ptr %month, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %day) #5
  store i64 0, ptr %day, align 8, !tbaa !39
  %2 = load ptr, ptr %hand, align 8, !tbaa !4
  %3 = load ptr, ptr %self, align 8, !tbaa !4
  %century1 = getelementptr inbounds %struct.grib_accessor_g1date, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %century1, align 8, !tbaa !41
  %call2 = call i32 @grib_get_long_internal(ptr noundef %2, ptr noundef %4, ptr noundef %century)
  store i32 %call2, ptr %ret, align 4, !tbaa !40
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %ret, align 4, !tbaa !40
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %hand, align 8, !tbaa !4
  %7 = load ptr, ptr %self, align 8, !tbaa !4
  %day3 = getelementptr inbounds %struct.grib_accessor_g1date, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %day3, align 8, !tbaa !46
  %call4 = call i32 @grib_get_long_internal(ptr noundef %6, ptr noundef %8, ptr noundef %day)
  store i32 %call4, ptr %ret, align 4, !tbaa !40
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %9 = load i32, ptr %ret, align 4, !tbaa !40
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %10 = load ptr, ptr %hand, align 8, !tbaa !4
  %11 = load ptr, ptr %self, align 8, !tbaa !4
  %month8 = getelementptr inbounds %struct.grib_accessor_g1date, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %month8, align 8, !tbaa !45
  %call9 = call i32 @grib_get_long_internal(ptr noundef %10, ptr noundef %12, ptr noundef %month)
  store i32 %call9, ptr %ret, align 4, !tbaa !40
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  %13 = load i32, ptr %ret, align 4, !tbaa !40
  store i32 %13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %14 = load ptr, ptr %hand, align 8, !tbaa !4
  %15 = load ptr, ptr %self, align 8, !tbaa !4
  %year13 = getelementptr inbounds %struct.grib_accessor_g1date, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %year13, align 8, !tbaa !44
  %call14 = call i32 @grib_get_long_internal(ptr noundef %14, ptr noundef %16, ptr noundef %year)
  store i32 %call14, ptr %ret, align 4, !tbaa !40
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  %17 = load i32, ptr %ret, align 4, !tbaa !40
  store i32 %17, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %18 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %19 = load i64, ptr %18, align 8, !tbaa !39
  %cmp18 = icmp ult i64 %19, 1
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  store i32 -9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %20 = load i64, ptr %century, align 8, !tbaa !39
  %sub = sub nsw i64 %20, 1
  %mul = mul nsw i64 %sub, 100
  %21 = load i64, ptr %year, align 8, !tbaa !39
  %add = add nsw i64 %mul, %21
  %mul21 = mul nsw i64 %add, 10000
  %22 = load i64, ptr %month, align 8, !tbaa !39
  %mul22 = mul nsw i64 %22, 100
  %add23 = add nsw i64 %mul21, %mul22
  %23 = load i64, ptr %day, align 8, !tbaa !39
  %add24 = add nsw i64 %add23, %23
  %24 = load ptr, ptr %val.addr, align 8, !tbaa !4
  store i64 %add24, ptr %24, align 8, !tbaa !39
  %25 = load i64, ptr %year, align 8, !tbaa !39
  %cmp25 = icmp eq i64 %25, 255
  br i1 %cmp25, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %if.end20
  %26 = load i64, ptr %day, align 8, !tbaa !39
  %cmp26 = icmp eq i64 %26, 255
  br i1 %cmp26, label %land.lhs.true27, label %if.end32

land.lhs.true27:                                  ; preds = %land.lhs.true
  %27 = load i64, ptr %month, align 8, !tbaa !39
  %cmp28 = icmp sge i64 %27, 1
  br i1 %cmp28, label %land.lhs.true29, label %if.end32

land.lhs.true29:                                  ; preds = %land.lhs.true27
  %28 = load i64, ptr %month, align 8, !tbaa !39
  %cmp30 = icmp sle i64 %28, 12
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %land.lhs.true29
  %29 = load i64, ptr %month, align 8, !tbaa !39
  %30 = load ptr, ptr %val.addr, align 8, !tbaa !4
  store i64 %29, ptr %30, align 8, !tbaa !39
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %land.lhs.true29, %land.lhs.true27, %land.lhs.true, %if.end20
  %31 = load i64, ptr %year, align 8, !tbaa !39
  %cmp33 = icmp eq i64 %31, 255
  br i1 %cmp33, label %land.lhs.true34, label %if.end43

land.lhs.true34:                                  ; preds = %if.end32
  %32 = load i64, ptr %day, align 8, !tbaa !39
  %cmp35 = icmp ne i64 %32, 255
  br i1 %cmp35, label %land.lhs.true36, label %if.end43

land.lhs.true36:                                  ; preds = %land.lhs.true34
  %33 = load i64, ptr %month, align 8, !tbaa !39
  %cmp37 = icmp sge i64 %33, 1
  br i1 %cmp37, label %land.lhs.true38, label %if.end43

land.lhs.true38:                                  ; preds = %land.lhs.true36
  %34 = load i64, ptr %month, align 8, !tbaa !39
  %cmp39 = icmp sle i64 %34, 12
  br i1 %cmp39, label %if.then40, label %if.end43

if.then40:                                        ; preds = %land.lhs.true38
  %35 = load i64, ptr %month, align 8, !tbaa !39
  %mul41 = mul nsw i64 %35, 100
  %36 = load i64, ptr %day, align 8, !tbaa !39
  %add42 = add nsw i64 %mul41, %36
  %37 = load ptr, ptr %val.addr, align 8, !tbaa !4
  store i64 %add42, ptr %37, align 8, !tbaa !39
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %land.lhs.true38, %land.lhs.true36, %land.lhs.true34, %if.end32
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then19, %if.then16, %if.then11, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %day) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %month) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %century) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %year) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %hand) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @unpack_string(ptr noundef %a, ptr noundef %val, ptr noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca [1024 x i8], align 16
  %self = alloca ptr, align 8
  %hand = alloca ptr, align 8
  %year = alloca i64, align 8
  %century = alloca i64, align 8
  %month = alloca i64, align 8
  %day = alloca i64, align 8
  %l = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %x = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5
  store i32 0, ptr %ret, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 1024, ptr %tmp) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #5
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hand) #5
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call ptr @grib_handle_of_accessor(ptr noundef %1)
  store ptr %call, ptr %hand, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %year) #5
  store i64 0, ptr %year, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %century) #5
  store i64 0, ptr %century, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %month) #5
  store i64 0, ptr %month, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %day) #5
  store i64 0, ptr %day, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #5
  %2 = load ptr, ptr %hand, align 8, !tbaa !4
  %3 = load ptr, ptr %self, align 8, !tbaa !4
  %century1 = getelementptr inbounds %struct.grib_accessor_g1date, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %century1, align 8, !tbaa !41
  %call2 = call i32 @grib_get_long_internal(ptr noundef %2, ptr noundef %4, ptr noundef %century)
  store i32 %call2, ptr %ret, align 4, !tbaa !40
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %ret, align 4, !tbaa !40
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %hand, align 8, !tbaa !4
  %7 = load ptr, ptr %self, align 8, !tbaa !4
  %day3 = getelementptr inbounds %struct.grib_accessor_g1date, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %day3, align 8, !tbaa !46
  %call4 = call i32 @grib_get_long_internal(ptr noundef %6, ptr noundef %8, ptr noundef %day)
  store i32 %call4, ptr %ret, align 4, !tbaa !40
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %9 = load i32, ptr %ret, align 4, !tbaa !40
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %10 = load ptr, ptr %hand, align 8, !tbaa !4
  %11 = load ptr, ptr %self, align 8, !tbaa !4
  %month8 = getelementptr inbounds %struct.grib_accessor_g1date, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %month8, align 8, !tbaa !45
  %call9 = call i32 @grib_get_long_internal(ptr noundef %10, ptr noundef %12, ptr noundef %month)
  store i32 %call9, ptr %ret, align 4, !tbaa !40
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  %13 = load i32, ptr %ret, align 4, !tbaa !40
  store i32 %13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %14 = load ptr, ptr %hand, align 8, !tbaa !4
  %15 = load ptr, ptr %self, align 8, !tbaa !4
  %year13 = getelementptr inbounds %struct.grib_accessor_g1date, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %year13, align 8, !tbaa !44
  %call14 = call i32 @grib_get_long_internal(ptr noundef %14, ptr noundef %16, ptr noundef %year)
  store i32 %call14, ptr %ret, align 4, !tbaa !40
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  %17 = load i32, ptr %ret, align 4, !tbaa !40
  store i32 %17, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %18 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %19 = load i64, ptr %18, align 8, !tbaa !39
  %cmp18 = icmp ult i64 %19, 1
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  store i32 -9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %20 = load i64, ptr %year, align 8, !tbaa !39
  %cmp21 = icmp eq i64 %20, 255
  br i1 %cmp21, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end20
  %21 = load i64, ptr %day, align 8, !tbaa !39
  %cmp22 = icmp eq i64 %21, 255
  br i1 %cmp22, label %land.lhs.true23, label %if.else

land.lhs.true23:                                  ; preds = %land.lhs.true
  %22 = load i64, ptr %month, align 8, !tbaa !39
  %cmp24 = icmp sge i64 %22, 1
  br i1 %cmp24, label %land.lhs.true25, label %if.else

land.lhs.true25:                                  ; preds = %land.lhs.true23
  %23 = load i64, ptr %month, align 8, !tbaa !39
  %cmp26 = icmp sle i64 %23, 12
  br i1 %cmp26, label %if.then27, label %if.else

if.then27:                                        ; preds = %land.lhs.true25
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %tmp, i64 0, i64 0
  %24 = load i64, ptr %month, align 8, !tbaa !39
  %sub = sub nsw i64 %24, 1
  %arrayidx = getelementptr inbounds [12 x ptr], ptr @months, i64 0, i64 %sub
  %25 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %call28 = call ptr @strcpy(ptr noundef %arraydecay, ptr noundef %25) #5
  br label %if.end48

if.else:                                          ; preds = %land.lhs.true25, %land.lhs.true23, %land.lhs.true, %if.end20
  %26 = load i64, ptr %year, align 8, !tbaa !39
  %cmp29 = icmp eq i64 %26, 255
  br i1 %cmp29, label %land.lhs.true30, label %if.else39

land.lhs.true30:                                  ; preds = %if.else
  %27 = load i64, ptr %month, align 8, !tbaa !39
  %cmp31 = icmp sge i64 %27, 1
  br i1 %cmp31, label %land.lhs.true32, label %if.else39

land.lhs.true32:                                  ; preds = %land.lhs.true30
  %28 = load i64, ptr %month, align 8, !tbaa !39
  %cmp33 = icmp sle i64 %28, 12
  br i1 %cmp33, label %if.then34, label %if.else39

if.then34:                                        ; preds = %land.lhs.true32
  %arraydecay35 = getelementptr inbounds [1024 x i8], ptr %tmp, i64 0, i64 0
  %29 = load i64, ptr %month, align 8, !tbaa !39
  %sub36 = sub nsw i64 %29, 1
  %arrayidx37 = getelementptr inbounds [12 x ptr], ptr @months, i64 0, i64 %sub36
  %30 = load ptr, ptr %arrayidx37, align 8, !tbaa !4
  %31 = load i64, ptr %day, align 8, !tbaa !39
  %call38 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay35, ptr noundef @.str.2, ptr noundef %30, i64 noundef %31) #5
  br label %if.end47

if.else39:                                        ; preds = %land.lhs.true32, %land.lhs.true30, %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5
  %32 = load i64, ptr %century, align 8, !tbaa !39
  %sub40 = sub nsw i64 %32, 1
  %mul = mul nsw i64 %sub40, 100
  %33 = load i64, ptr %year, align 8, !tbaa !39
  %add = add nsw i64 %mul, %33
  %mul41 = mul nsw i64 %add, 10000
  %34 = load i64, ptr %month, align 8, !tbaa !39
  %mul42 = mul nsw i64 %34, 100
  %add43 = add nsw i64 %mul41, %mul42
  %35 = load i64, ptr %day, align 8, !tbaa !39
  %add44 = add nsw i64 %add43, %35
  store i64 %add44, ptr %x, align 8, !tbaa !39
  %arraydecay45 = getelementptr inbounds [1024 x i8], ptr %tmp, i64 0, i64 0
  %36 = load i64, ptr %x, align 8, !tbaa !39
  %call46 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay45, ptr noundef @.str.3, i64 noundef %36) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5
  br label %if.end47

if.end47:                                         ; preds = %if.else39, %if.then34
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then27
  %arraydecay49 = getelementptr inbounds [1024 x i8], ptr %tmp, i64 0, i64 0
  %call50 = call i64 @strlen(ptr noundef %arraydecay49) #6
  %add51 = add i64 %call50, 1
  store i64 %add51, ptr %l, align 8, !tbaa !39
  %37 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %38 = load i64, ptr %37, align 8, !tbaa !39
  %39 = load i64, ptr %l, align 8, !tbaa !39
  %cmp52 = icmp ult i64 %38, %39
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end48
  %40 = load i64, ptr %l, align 8, !tbaa !39
  %41 = load ptr, ptr %len.addr, align 8, !tbaa !4
  store i64 %40, ptr %41, align 8, !tbaa !39
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end54:                                         ; preds = %if.end48
  %42 = load i64, ptr %l, align 8, !tbaa !39
  %43 = load ptr, ptr %len.addr, align 8, !tbaa !4
  store i64 %42, ptr %43, align 8, !tbaa !39
  %44 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %arraydecay55 = getelementptr inbounds [1024 x i8], ptr %tmp, i64 0, i64 0
  %call56 = call ptr @strcpy(ptr noundef %44, ptr noundef %arraydecay55) #5
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then53, %if.then19, %if.then16, %if.then11, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %day) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %month) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %century) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %year) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %hand) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #5
  call void @llvm.lifetime.end.p0(i64 1024, ptr %tmp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @grib_handle_of_accessor(ptr noundef) #2

declare ptr @grib_arguments_get_name(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @grib_dump_long(ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @grib_julian_to_date(i64 noundef) #2

declare i64 @grib_date_to_julian(i64 noundef) #2

declare void @grib_context_log(ptr noundef, i32 noundef, ptr noundef, ...) #2

declare i32 @grib_set_long_internal(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @grib_get_long_internal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!12 = !{!9, !5, i64 72}
!13 = !{!9, !5, i64 80}
!14 = !{!9, !5, i64 96}
!15 = !{!9, !5, i64 104}
!16 = !{!9, !5, i64 112}
!17 = !{!9, !5, i64 120}
!18 = !{!9, !5, i64 128}
!19 = !{!9, !5, i64 136}
!20 = !{!9, !5, i64 160}
!21 = !{!9, !5, i64 168}
!22 = !{!9, !5, i64 176}
!23 = !{!9, !5, i64 192}
!24 = !{!9, !5, i64 200}
!25 = !{!9, !5, i64 208}
!26 = !{!9, !5, i64 216}
!27 = !{!9, !5, i64 224}
!28 = !{!9, !5, i64 232}
!29 = !{!9, !5, i64 240}
!30 = !{!9, !5, i64 248}
!31 = !{!9, !5, i64 256}
!32 = !{!9, !5, i64 264}
!33 = !{!9, !5, i64 272}
!34 = !{!9, !5, i64 280}
!35 = !{!9, !5, i64 288}
!36 = !{!9, !5, i64 296}
!37 = !{!9, !5, i64 304}
!38 = !{!9, !5, i64 312}
!39 = !{!10, !10, i64 0}
!40 = !{!11, !11, i64 0}
!41 = !{!42, !5, i64 648}
!42 = !{!"grib_accessor_g1date", !43, i64 0, !5, i64 648, !5, i64 656, !5, i64 664, !5, i64 672}
!43 = !{!"grib_accessor", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40, !10, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !10, i64 88, !5, i64 96, !6, i64 104, !6, i64 264, !11, i64 424, !5, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !5, i64 464, !5, i64 472, !6, i64 480, !5, i64 640}
!44 = !{!42, !5, i64 656}
!45 = !{!42, !5, i64 664}
!46 = !{!42, !5, i64 672}
!47 = !{!43, !5, i64 16}
