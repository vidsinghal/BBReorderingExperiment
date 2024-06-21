; ModuleID = 'samples/56.bc'
source_filename = "/local-ssd/eccodes-psuel4mgyciesdodvadhkap2g5cqhhyf-build/aidengro/spack-stage-eccodes-2.25.0-psuel4mgyciesdodvadhkap2g5cqhhyf/spack-src/src/grib_accessor_class_unsigned_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grib_accessor_class = type { ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.grib_accessor_unsigned_bits = type { %struct.grib_accessor, ptr, ptr }
%struct.grib_accessor = type { ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, i64, ptr, [20 x ptr], [20 x ptr], i32, ptr, i64, i64, i64, ptr, ptr, [20 x ptr], ptr }
%struct.grib_handle = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [10 x ptr], [10 x i64], i32, i32, i32, ptr, i64, i32, i32, [5000 x ptr], [12 x ptr], [12 x ptr], i32, i64, i64, i64, i64, double, i32 }
%struct.grib_buffer = type { i32, i32, i32, i64, i64, i64, ptr }

@_grib_accessor_class_unsigned_bits = internal global %struct.grib_accessor_class { ptr @grib_accessor_class_long, ptr @.str, i64 664, i32 0, ptr @init_class, ptr @init, ptr null, ptr null, ptr @dump, ptr @next_offset, ptr null, ptr @value_count, ptr @byte_count, ptr @byte_offset, ptr null, ptr null, ptr null, ptr null, ptr @pack_long, ptr @unpack_long, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @update_size, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@grib_accessor_class_unsigned_bits = global ptr @_grib_accessor_class_unsigned_bits, align 8
@grib_accessor_class_long = external global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"unsigned_bits\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s unable to get %s to compute size\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Wrong size (%ld) for %s, it contains %ld values\00", align 1

; Function Attrs: nounwind uwtable
define internal void @init_class(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super = getelementptr inbounds %struct.grib_accessor_class, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %super, align 8, !tbaa !8
  %2 = load ptr, ptr %1, align 8, !tbaa !4
  %string_length = getelementptr inbounds %struct.grib_accessor_class, ptr %2, i32 0, i32 10
  %3 = load ptr, ptr %string_length, align 8, !tbaa !12
  %4 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %string_length1 = getelementptr inbounds %struct.grib_accessor_class, ptr %4, i32 0, i32 10
  store ptr %3, ptr %string_length1, align 8, !tbaa !12
  %5 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super2 = getelementptr inbounds %struct.grib_accessor_class, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %super2, align 8, !tbaa !8
  %7 = load ptr, ptr %6, align 8, !tbaa !4
  %get_native_type = getelementptr inbounds %struct.grib_accessor_class, ptr %7, i32 0, i32 14
  %8 = load ptr, ptr %get_native_type, align 8, !tbaa !13
  %9 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %get_native_type3 = getelementptr inbounds %struct.grib_accessor_class, ptr %9, i32 0, i32 14
  store ptr %8, ptr %get_native_type3, align 8, !tbaa !13
  %10 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super4 = getelementptr inbounds %struct.grib_accessor_class, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %super4, align 8, !tbaa !8
  %12 = load ptr, ptr %11, align 8, !tbaa !4
  %sub_section = getelementptr inbounds %struct.grib_accessor_class, ptr %12, i32 0, i32 15
  %13 = load ptr, ptr %sub_section, align 8, !tbaa !14
  %14 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %sub_section5 = getelementptr inbounds %struct.grib_accessor_class, ptr %14, i32 0, i32 15
  store ptr %13, ptr %sub_section5, align 8, !tbaa !14
  %15 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super6 = getelementptr inbounds %struct.grib_accessor_class, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %super6, align 8, !tbaa !8
  %17 = load ptr, ptr %16, align 8, !tbaa !4
  %pack_missing = getelementptr inbounds %struct.grib_accessor_class, ptr %17, i32 0, i32 16
  %18 = load ptr, ptr %pack_missing, align 8, !tbaa !15
  %19 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_missing7 = getelementptr inbounds %struct.grib_accessor_class, ptr %19, i32 0, i32 16
  store ptr %18, ptr %pack_missing7, align 8, !tbaa !15
  %20 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super8 = getelementptr inbounds %struct.grib_accessor_class, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %super8, align 8, !tbaa !8
  %22 = load ptr, ptr %21, align 8, !tbaa !4
  %is_missing = getelementptr inbounds %struct.grib_accessor_class, ptr %22, i32 0, i32 17
  %23 = load ptr, ptr %is_missing, align 8, !tbaa !16
  %24 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %is_missing9 = getelementptr inbounds %struct.grib_accessor_class, ptr %24, i32 0, i32 17
  store ptr %23, ptr %is_missing9, align 8, !tbaa !16
  %25 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super10 = getelementptr inbounds %struct.grib_accessor_class, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %super10, align 8, !tbaa !8
  %27 = load ptr, ptr %26, align 8, !tbaa !4
  %pack_double = getelementptr inbounds %struct.grib_accessor_class, ptr %27, i32 0, i32 20
  %28 = load ptr, ptr %pack_double, align 8, !tbaa !17
  %29 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_double11 = getelementptr inbounds %struct.grib_accessor_class, ptr %29, i32 0, i32 20
  store ptr %28, ptr %pack_double11, align 8, !tbaa !17
  %30 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super12 = getelementptr inbounds %struct.grib_accessor_class, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %super12, align 8, !tbaa !8
  %32 = load ptr, ptr %31, align 8, !tbaa !4
  %unpack_double = getelementptr inbounds %struct.grib_accessor_class, ptr %32, i32 0, i32 21
  %33 = load ptr, ptr %unpack_double, align 8, !tbaa !18
  %34 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double13 = getelementptr inbounds %struct.grib_accessor_class, ptr %34, i32 0, i32 21
  store ptr %33, ptr %unpack_double13, align 8, !tbaa !18
  %35 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super14 = getelementptr inbounds %struct.grib_accessor_class, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %super14, align 8, !tbaa !8
  %37 = load ptr, ptr %36, align 8, !tbaa !4
  %pack_string = getelementptr inbounds %struct.grib_accessor_class, ptr %37, i32 0, i32 22
  %38 = load ptr, ptr %pack_string, align 8, !tbaa !19
  %39 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_string15 = getelementptr inbounds %struct.grib_accessor_class, ptr %39, i32 0, i32 22
  store ptr %38, ptr %pack_string15, align 8, !tbaa !19
  %40 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super16 = getelementptr inbounds %struct.grib_accessor_class, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %super16, align 8, !tbaa !8
  %42 = load ptr, ptr %41, align 8, !tbaa !4
  %unpack_string = getelementptr inbounds %struct.grib_accessor_class, ptr %42, i32 0, i32 23
  %43 = load ptr, ptr %unpack_string, align 8, !tbaa !20
  %44 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_string17 = getelementptr inbounds %struct.grib_accessor_class, ptr %44, i32 0, i32 23
  store ptr %43, ptr %unpack_string17, align 8, !tbaa !20
  %45 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super18 = getelementptr inbounds %struct.grib_accessor_class, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %super18, align 8, !tbaa !8
  %47 = load ptr, ptr %46, align 8, !tbaa !4
  %pack_string_array = getelementptr inbounds %struct.grib_accessor_class, ptr %47, i32 0, i32 24
  %48 = load ptr, ptr %pack_string_array, align 8, !tbaa !21
  %49 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_string_array19 = getelementptr inbounds %struct.grib_accessor_class, ptr %49, i32 0, i32 24
  store ptr %48, ptr %pack_string_array19, align 8, !tbaa !21
  %50 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super20 = getelementptr inbounds %struct.grib_accessor_class, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %super20, align 8, !tbaa !8
  %52 = load ptr, ptr %51, align 8, !tbaa !4
  %unpack_string_array = getelementptr inbounds %struct.grib_accessor_class, ptr %52, i32 0, i32 25
  %53 = load ptr, ptr %unpack_string_array, align 8, !tbaa !22
  %54 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_string_array21 = getelementptr inbounds %struct.grib_accessor_class, ptr %54, i32 0, i32 25
  store ptr %53, ptr %unpack_string_array21, align 8, !tbaa !22
  %55 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super22 = getelementptr inbounds %struct.grib_accessor_class, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %super22, align 8, !tbaa !8
  %57 = load ptr, ptr %56, align 8, !tbaa !4
  %pack_bytes = getelementptr inbounds %struct.grib_accessor_class, ptr %57, i32 0, i32 26
  %58 = load ptr, ptr %pack_bytes, align 8, !tbaa !23
  %59 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_bytes23 = getelementptr inbounds %struct.grib_accessor_class, ptr %59, i32 0, i32 26
  store ptr %58, ptr %pack_bytes23, align 8, !tbaa !23
  %60 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super24 = getelementptr inbounds %struct.grib_accessor_class, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %super24, align 8, !tbaa !8
  %62 = load ptr, ptr %61, align 8, !tbaa !4
  %unpack_bytes = getelementptr inbounds %struct.grib_accessor_class, ptr %62, i32 0, i32 27
  %63 = load ptr, ptr %unpack_bytes, align 8, !tbaa !24
  %64 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_bytes25 = getelementptr inbounds %struct.grib_accessor_class, ptr %64, i32 0, i32 27
  store ptr %63, ptr %unpack_bytes25, align 8, !tbaa !24
  %65 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super26 = getelementptr inbounds %struct.grib_accessor_class, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %super26, align 8, !tbaa !8
  %67 = load ptr, ptr %66, align 8, !tbaa !4
  %pack_expression = getelementptr inbounds %struct.grib_accessor_class, ptr %67, i32 0, i32 28
  %68 = load ptr, ptr %pack_expression, align 8, !tbaa !25
  %69 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_expression27 = getelementptr inbounds %struct.grib_accessor_class, ptr %69, i32 0, i32 28
  store ptr %68, ptr %pack_expression27, align 8, !tbaa !25
  %70 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super28 = getelementptr inbounds %struct.grib_accessor_class, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %super28, align 8, !tbaa !8
  %72 = load ptr, ptr %71, align 8, !tbaa !4
  %notify_change = getelementptr inbounds %struct.grib_accessor_class, ptr %72, i32 0, i32 29
  %73 = load ptr, ptr %notify_change, align 8, !tbaa !26
  %74 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %notify_change29 = getelementptr inbounds %struct.grib_accessor_class, ptr %74, i32 0, i32 29
  store ptr %73, ptr %notify_change29, align 8, !tbaa !26
  %75 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super30 = getelementptr inbounds %struct.grib_accessor_class, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %super30, align 8, !tbaa !8
  %77 = load ptr, ptr %76, align 8, !tbaa !4
  %preferred_size = getelementptr inbounds %struct.grib_accessor_class, ptr %77, i32 0, i32 31
  %78 = load ptr, ptr %preferred_size, align 8, !tbaa !27
  %79 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %preferred_size31 = getelementptr inbounds %struct.grib_accessor_class, ptr %79, i32 0, i32 31
  store ptr %78, ptr %preferred_size31, align 8, !tbaa !27
  %80 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super32 = getelementptr inbounds %struct.grib_accessor_class, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %super32, align 8, !tbaa !8
  %82 = load ptr, ptr %81, align 8, !tbaa !4
  %resize = getelementptr inbounds %struct.grib_accessor_class, ptr %82, i32 0, i32 32
  %83 = load ptr, ptr %resize, align 8, !tbaa !28
  %84 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %resize33 = getelementptr inbounds %struct.grib_accessor_class, ptr %84, i32 0, i32 32
  store ptr %83, ptr %resize33, align 8, !tbaa !28
  %85 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super34 = getelementptr inbounds %struct.grib_accessor_class, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %super34, align 8, !tbaa !8
  %87 = load ptr, ptr %86, align 8, !tbaa !4
  %nearest_smaller_value = getelementptr inbounds %struct.grib_accessor_class, ptr %87, i32 0, i32 33
  %88 = load ptr, ptr %nearest_smaller_value, align 8, !tbaa !29
  %89 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %nearest_smaller_value35 = getelementptr inbounds %struct.grib_accessor_class, ptr %89, i32 0, i32 33
  store ptr %88, ptr %nearest_smaller_value35, align 8, !tbaa !29
  %90 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super36 = getelementptr inbounds %struct.grib_accessor_class, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %super36, align 8, !tbaa !8
  %92 = load ptr, ptr %91, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.grib_accessor_class, ptr %92, i32 0, i32 34
  %93 = load ptr, ptr %next, align 8, !tbaa !30
  %94 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %next37 = getelementptr inbounds %struct.grib_accessor_class, ptr %94, i32 0, i32 34
  store ptr %93, ptr %next37, align 8, !tbaa !30
  %95 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super38 = getelementptr inbounds %struct.grib_accessor_class, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %super38, align 8, !tbaa !8
  %97 = load ptr, ptr %96, align 8, !tbaa !4
  %compare = getelementptr inbounds %struct.grib_accessor_class, ptr %97, i32 0, i32 35
  %98 = load ptr, ptr %compare, align 8, !tbaa !31
  %99 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %compare39 = getelementptr inbounds %struct.grib_accessor_class, ptr %99, i32 0, i32 35
  store ptr %98, ptr %compare39, align 8, !tbaa !31
  %100 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super40 = getelementptr inbounds %struct.grib_accessor_class, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %super40, align 8, !tbaa !8
  %102 = load ptr, ptr %101, align 8, !tbaa !4
  %unpack_double_element = getelementptr inbounds %struct.grib_accessor_class, ptr %102, i32 0, i32 36
  %103 = load ptr, ptr %unpack_double_element, align 8, !tbaa !32
  %104 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double_element41 = getelementptr inbounds %struct.grib_accessor_class, ptr %104, i32 0, i32 36
  store ptr %103, ptr %unpack_double_element41, align 8, !tbaa !32
  %105 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super42 = getelementptr inbounds %struct.grib_accessor_class, ptr %105, i32 0, i32 0
  %106 = load ptr, ptr %super42, align 8, !tbaa !8
  %107 = load ptr, ptr %106, align 8, !tbaa !4
  %unpack_double_subarray = getelementptr inbounds %struct.grib_accessor_class, ptr %107, i32 0, i32 37
  %108 = load ptr, ptr %unpack_double_subarray, align 8, !tbaa !33
  %109 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double_subarray43 = getelementptr inbounds %struct.grib_accessor_class, ptr %109, i32 0, i32 37
  store ptr %108, ptr %unpack_double_subarray43, align 8, !tbaa !33
  %110 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super44 = getelementptr inbounds %struct.grib_accessor_class, ptr %110, i32 0, i32 0
  %111 = load ptr, ptr %super44, align 8, !tbaa !8
  %112 = load ptr, ptr %111, align 8, !tbaa !4
  %clear = getelementptr inbounds %struct.grib_accessor_class, ptr %112, i32 0, i32 38
  %113 = load ptr, ptr %clear, align 8, !tbaa !34
  %114 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %clear45 = getelementptr inbounds %struct.grib_accessor_class, ptr %114, i32 0, i32 38
  store ptr %113, ptr %clear45, align 8, !tbaa !34
  %115 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super46 = getelementptr inbounds %struct.grib_accessor_class, ptr %115, i32 0, i32 0
  %116 = load ptr, ptr %super46, align 8, !tbaa !8
  %117 = load ptr, ptr %116, align 8, !tbaa !4
  %make_clone = getelementptr inbounds %struct.grib_accessor_class, ptr %117, i32 0, i32 39
  %118 = load ptr, ptr %make_clone, align 8, !tbaa !35
  %119 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %make_clone47 = getelementptr inbounds %struct.grib_accessor_class, ptr %119, i32 0, i32 39
  store ptr %118, ptr %make_clone47, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init(ptr noundef %a, i64 noundef %len, ptr noundef %args) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %args.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !36
  store ptr %args, ptr %args.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  store i32 0, ptr %n, align 4, !tbaa !37
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call ptr @grib_handle_of_accessor(ptr noundef %1)
  %2 = load ptr, ptr %args.addr, align 8, !tbaa !4
  %3 = load i32, ptr %n, align 4, !tbaa !37
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %n, align 4, !tbaa !37
  %call1 = call ptr @grib_arguments_get_name(ptr noundef %call, ptr noundef %2, i32 noundef %3)
  %4 = load ptr, ptr %self, align 8, !tbaa !4
  %numberOfBits = getelementptr inbounds %struct.grib_accessor_unsigned_bits, ptr %4, i32 0, i32 1
  store ptr %call1, ptr %numberOfBits, align 8, !tbaa !38
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call2 = call ptr @grib_handle_of_accessor(ptr noundef %5)
  %6 = load ptr, ptr %args.addr, align 8, !tbaa !4
  %7 = load i32, ptr %n, align 4, !tbaa !37
  %inc3 = add nsw i32 %7, 1
  store i32 %inc3, ptr %n, align 4, !tbaa !37
  %call4 = call ptr @grib_arguments_get_name(ptr noundef %call2, ptr noundef %6, i32 noundef %7)
  %8 = load ptr, ptr %self, align 8, !tbaa !4
  %numberOfElements = getelementptr inbounds %struct.grib_accessor_unsigned_bits, ptr %8, i32 0, i32 2
  store ptr %call4, ptr %numberOfElements, align 8, !tbaa !41
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call5 = call i64 @compute_byte_count(ptr noundef %9)
  %10 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.grib_accessor, ptr %10, i32 0, i32 5
  store i64 %call5, ptr %length, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #3
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
define internal i64 @next_offset(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call i64 @byte_offset(ptr noundef %0)
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.grib_accessor, ptr %1, i32 0, i32 5
  %2 = load i64, ptr %length, align 8, !tbaa !42
  %add = add nsw i64 %call, %2
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define internal i32 @value_count(ptr noundef %a, ptr noundef %numberOfElements) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %numberOfElements.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %numberOfElements, ptr %numberOfElements.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #3
  %1 = load ptr, ptr %numberOfElements.addr, align 8, !tbaa !4
  store i64 0, ptr %1, align 8, !tbaa !36
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call ptr @grib_handle_of_accessor(ptr noundef %2)
  %3 = load ptr, ptr %self, align 8, !tbaa !4
  %numberOfElements1 = getelementptr inbounds %struct.grib_accessor_unsigned_bits, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %numberOfElements1, align 8, !tbaa !41
  %5 = load ptr, ptr %numberOfElements.addr, align 8, !tbaa !4
  %call2 = call i32 @grib_get_long(ptr noundef %call, ptr noundef %4, ptr noundef %5)
  store i32 %call2, ptr %ret, align 4, !tbaa !37
  %6 = load i32, ptr %ret, align 4, !tbaa !37
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %context, align 8, !tbaa !43
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_accessor, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %name, align 8, !tbaa !44
  %11 = load ptr, ptr %self, align 8, !tbaa !4
  %numberOfElements3 = getelementptr inbounds %struct.grib_accessor_unsigned_bits, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %numberOfElements3, align 8, !tbaa !41
  call void (ptr, i32, ptr, ...) @grib_context_log(ptr noundef %8, i32 noundef 2, ptr noundef @.str.1, ptr noundef %10, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, ptr %ret, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #3
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i64 @byte_count(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.grib_accessor, ptr %0, i32 0, i32 5
  %1 = load i64, ptr %length, align 8, !tbaa !42
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @byte_offset(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %offset = getelementptr inbounds %struct.grib_accessor, ptr %0, i32 0, i32 6
  %1 = load i64, ptr %offset, align 8, !tbaa !45
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @pack_long(ptr noundef %a, ptr noundef %val, ptr noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %ret = alloca i32, align 4
  %off = alloca i64, align 8
  %numberOfBits = alloca i64, align 8
  %buflen = alloca i64, align 8
  %buf = alloca ptr, align 8
  %i = alloca i64, align 8
  %rlen = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #3
  store i32 0, ptr %ret, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #3
  store i64 0, ptr %off, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr %numberOfBits) #3
  store i64 0, ptr %numberOfBits, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr %buflen) #3
  store i64 0, ptr %buflen, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #3
  store ptr null, ptr %buf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  store i64 0, ptr %i, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr %rlen) #3
  store i64 0, ptr %rlen, align 8, !tbaa !36
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call i32 @value_count(ptr noundef %1, ptr noundef %rlen)
  store i32 %call, ptr %ret, align 4, !tbaa !37
  %2 = load i32, ptr %ret, align 4, !tbaa !37
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !tbaa !37
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %5 = load i64, ptr %4, align 8, !tbaa !36
  %6 = load i64, ptr %rlen, align 8, !tbaa !36
  %cmp = icmp ne i64 %5, %6
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call2 = call ptr @grib_handle_of_accessor(ptr noundef %7)
  %8 = load ptr, ptr %self, align 8, !tbaa !4
  %numberOfElements = getelementptr inbounds %struct.grib_accessor_unsigned_bits, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %numberOfElements, align 8, !tbaa !41
  %10 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %11 = load i64, ptr %10, align 8, !tbaa !36
  %call3 = call i32 @grib_set_long(ptr noundef %call2, ptr noundef %9, i64 noundef %11)
  store i32 %call3, ptr %ret, align 4, !tbaa !37
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  %12 = load i32, ptr %ret, align 4, !tbaa !37
  %tobool5 = icmp ne i32 %12, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  %13 = load i32, ptr %ret, align 4, !tbaa !37
  store i32 %13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call8 = call ptr @grib_handle_of_accessor(ptr noundef %14)
  %15 = load ptr, ptr %self, align 8, !tbaa !4
  %numberOfBits9 = getelementptr inbounds %struct.grib_accessor_unsigned_bits, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %numberOfBits9, align 8, !tbaa !38
  %call10 = call i32 @grib_get_long(ptr noundef %call8, ptr noundef %16, ptr noundef %numberOfBits)
  store i32 %call10, ptr %ret, align 4, !tbaa !37
  %17 = load i32, ptr %ret, align 4, !tbaa !37
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  %18 = load i32, ptr %ret, align 4, !tbaa !37
  store i32 %18, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %19 = load i64, ptr %numberOfBits, align 8, !tbaa !36
  %cmp14 = icmp eq i64 %19, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  %20 = load ptr, ptr %a.addr, align 8, !tbaa !4
  call void @grib_buffer_replace(ptr noundef %20, ptr noundef null, i64 noundef 0, i32 noundef 1, i32 noundef 1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %21 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call17 = call i64 @compute_byte_count(ptr noundef %21)
  store i64 %call17, ptr %buflen, align 8, !tbaa !36
  %22 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %context, align 8, !tbaa !43
  %24 = load i64, ptr %buflen, align 8, !tbaa !36
  %add = add i64 %24, 8
  %call18 = call ptr @grib_context_malloc_clear(ptr noundef %23, i64 noundef %add)
  store ptr %call18, ptr %buf, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %25 = load i64, ptr %i, align 8, !tbaa !36
  %26 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %27 = load i64, ptr %26, align 8, !tbaa !36
  %cmp19 = icmp ult i64 %25, %27
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %buf, align 8, !tbaa !4
  %29 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %30 = load i64, ptr %i, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds i64, ptr %29, i64 %30
  %31 = load i64, ptr %arrayidx, align 8, !tbaa !36
  %32 = load i64, ptr %numberOfBits, align 8, !tbaa !36
  %call20 = call i32 @grib_encode_unsigned_longb(ptr noundef %28, i64 noundef %31, ptr noundef %off, i64 noundef %32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, ptr %i, align 8, !tbaa !36
  %inc = add i64 %33, 1
  store i64 %inc, ptr %i, align 8, !tbaa !36
  br label %for.cond, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  %34 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %35 = load ptr, ptr %buf, align 8, !tbaa !4
  %36 = load i64, ptr %buflen, align 8, !tbaa !36
  call void @grib_buffer_replace(ptr noundef %34, ptr noundef %35, i64 noundef %36, i32 noundef 1, i32 noundef 1)
  %37 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context21 = getelementptr inbounds %struct.grib_accessor, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %context21, align 8, !tbaa !43
  %39 = load ptr, ptr %buf, align 8, !tbaa !4
  call void @grib_context_free(ptr noundef %38, ptr noundef %39)
  %40 = load i32, ptr %ret, align 4, !tbaa !37
  store i32 %40, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then15, %if.then12, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rlen) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buflen) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %numberOfBits) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #3
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @unpack_long(ptr noundef %a, ptr noundef %val, ptr noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %ret = alloca i32, align 4
  %pos = alloca i64, align 8
  %rlen = alloca i64, align 8
  %numberOfBits = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #3
  store i32 0, ptr %ret, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #3
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %offset = getelementptr inbounds %struct.grib_accessor, ptr %1, i32 0, i32 6
  %2 = load i64, ptr %offset, align 8, !tbaa !45
  %mul = mul nsw i64 %2, 8
  store i64 %mul, ptr %pos, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr %rlen) #3
  store i64 0, ptr %rlen, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr %numberOfBits) #3
  store i64 0, ptr %numberOfBits, align 8, !tbaa !36
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call i32 @value_count(ptr noundef %3, ptr noundef %rlen)
  store i32 %call, ptr %ret, align 4, !tbaa !37
  %4 = load i32, ptr %ret, align 4, !tbaa !37
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %ret, align 4, !tbaa !37
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %7 = load i64, ptr %6, align 8, !tbaa !36
  %8 = load i64, ptr %rlen, align 8, !tbaa !36
  %cmp = icmp ult i64 %7, %8
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %context, align 8, !tbaa !43
  %11 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %12 = load i64, ptr %11, align 8, !tbaa !36
  %13 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_accessor, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %name, align 8, !tbaa !44
  %15 = load i64, ptr %rlen, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @grib_context_log(ptr noundef %10, i32 noundef 2, ptr noundef @.str.2, i64 noundef %12, ptr noundef %14, i64 noundef %15)
  %16 = load ptr, ptr %len.addr, align 8, !tbaa !4
  store i64 0, ptr %16, align 8, !tbaa !36
  store i32 -6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %17 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call3 = call ptr @grib_handle_of_accessor(ptr noundef %17)
  %18 = load ptr, ptr %self, align 8, !tbaa !4
  %numberOfBits4 = getelementptr inbounds %struct.grib_accessor_unsigned_bits, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %numberOfBits4, align 8, !tbaa !38
  %call5 = call i32 @grib_get_long(ptr noundef %call3, ptr noundef %19, ptr noundef %numberOfBits)
  store i32 %call5, ptr %ret, align 4, !tbaa !37
  %20 = load i32, ptr %ret, align 4, !tbaa !37
  %tobool6 = icmp ne i32 %20, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end2
  %21 = load i32, ptr %ret, align 4, !tbaa !37
  store i32 %21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end2
  %22 = load i64, ptr %numberOfBits, align 8, !tbaa !36
  %cmp9 = icmp eq i64 %22, 0
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !37
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then10
  %23 = load i32, ptr %i, align 4, !tbaa !37
  %conv = sext i32 %23 to i64
  %24 = load i64, ptr %rlen, align 8, !tbaa !36
  %cmp11 = icmp slt i64 %conv, %24
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %26 = load i32, ptr %i, align 4, !tbaa !37
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds i64, ptr %25, i64 %idxprom
  store i64 0, ptr %arrayidx, align 8, !tbaa !36
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, ptr %i, align 4, !tbaa !37
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %i, align 4, !tbaa !37
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %28 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call14 = call ptr @grib_handle_of_accessor(ptr noundef %28)
  %buffer = getelementptr inbounds %struct.grib_handle, ptr %call14, i32 0, i32 1
  %29 = load ptr, ptr %buffer, align 8, !tbaa !49
  %data = getelementptr inbounds %struct.grib_buffer, ptr %29, i32 0, i32 6
  %30 = load ptr, ptr %data, align 8, !tbaa !52
  %31 = load i64, ptr %numberOfBits, align 8, !tbaa !36
  %32 = load i64, ptr %rlen, align 8, !tbaa !36
  %33 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %call15 = call i32 @grib_decode_long_array(ptr noundef %30, ptr noundef %pos, i64 noundef %31, i64 noundef %32, ptr noundef %33)
  %34 = load i64, ptr %rlen, align 8, !tbaa !36
  %35 = load ptr, ptr %len.addr, align 8, !tbaa !4
  store i64 %34, ptr %35, align 8, !tbaa !36
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %for.end, %if.then7, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %numberOfBits) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rlen) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #3
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal void @update_size(ptr noundef %a, i64 noundef %s) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %s.addr = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %s, ptr %s.addr, align 8, !tbaa !36
  %0 = load i64, ptr %s.addr, align 8, !tbaa !36
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.grib_accessor, ptr %1, i32 0, i32 5
  store i64 %0, ptr %length, align 8, !tbaa !42
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @grib_arguments_get_name(ptr noundef, ptr noundef, i32 noundef) #2

declare ptr @grib_handle_of_accessor(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @compute_byte_count(ptr noundef %a) #0 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %numberOfBits = alloca i64, align 8
  %numberOfElements = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %numberOfBits) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %numberOfElements) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #3
  store i32 0, ptr %ret, align 4, !tbaa !37
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call ptr @grib_handle_of_accessor(ptr noundef %1)
  %2 = load ptr, ptr %self, align 8, !tbaa !4
  %numberOfBits1 = getelementptr inbounds %struct.grib_accessor_unsigned_bits, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %numberOfBits1, align 8, !tbaa !38
  %call2 = call i32 @grib_get_long(ptr noundef %call, ptr noundef %3, ptr noundef %numberOfBits)
  store i32 %call2, ptr %ret, align 4, !tbaa !37
  %4 = load i32, ptr %ret, align 4, !tbaa !37
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %context, align 8, !tbaa !43
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_accessor, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %name, align 8, !tbaa !44
  %9 = load ptr, ptr %self, align 8, !tbaa !4
  %numberOfBits3 = getelementptr inbounds %struct.grib_accessor_unsigned_bits, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %numberOfBits3, align 8, !tbaa !38
  call void (ptr, i32, ptr, ...) @grib_context_log(ptr noundef %6, i32 noundef 2, ptr noundef @.str.1, ptr noundef %8, ptr noundef %10)
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call4 = call ptr @grib_handle_of_accessor(ptr noundef %11)
  %12 = load ptr, ptr %self, align 8, !tbaa !4
  %numberOfElements5 = getelementptr inbounds %struct.grib_accessor_unsigned_bits, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %numberOfElements5, align 8, !tbaa !41
  %call6 = call i32 @grib_get_long(ptr noundef %call4, ptr noundef %13, ptr noundef %numberOfElements)
  store i32 %call6, ptr %ret, align 4, !tbaa !37
  %14 = load i32, ptr %ret, align 4, !tbaa !37
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  %15 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context9 = getelementptr inbounds %struct.grib_accessor, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %context9, align 8, !tbaa !43
  %17 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name10 = getelementptr inbounds %struct.grib_accessor, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %name10, align 8, !tbaa !44
  %19 = load ptr, ptr %self, align 8, !tbaa !4
  %numberOfElements11 = getelementptr inbounds %struct.grib_accessor_unsigned_bits, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %numberOfElements11, align 8, !tbaa !41
  call void (ptr, i32, ptr, ...) @grib_context_log(ptr noundef %16, i32 noundef 2, ptr noundef @.str.1, ptr noundef %18, ptr noundef %20)
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %21 = load i64, ptr %numberOfBits, align 8, !tbaa !36
  %22 = load i64, ptr %numberOfElements, align 8, !tbaa !36
  %mul = mul nsw i64 %21, %22
  %add = add nsw i64 %mul, 7
  %div = sdiv i64 %add, 8
  store i64 %div, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %numberOfElements) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %numberOfBits) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #3
  %23 = load i64, ptr %retval, align 8
  ret i64 %23
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @grib_get_long(ptr noundef, ptr noundef, ptr noundef) #2

declare void @grib_context_log(ptr noundef, i32 noundef, ptr noundef, ...) #2

declare void @grib_dump_long(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @grib_set_long(ptr noundef, ptr noundef, i64 noundef) #2

declare void @grib_buffer_replace(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) #2

declare ptr @grib_context_malloc_clear(ptr noundef, i64 noundef) #2

declare i32 @grib_encode_unsigned_longb(ptr noundef, i64 noundef, ptr noundef, i64 noundef) #2

declare void @grib_context_free(ptr noundef, ptr noundef) #2

declare i32 @grib_decode_long_array(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

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
!12 = !{!9, !5, i64 80}
!13 = !{!9, !5, i64 112}
!14 = !{!9, !5, i64 120}
!15 = !{!9, !5, i64 128}
!16 = !{!9, !5, i64 136}
!17 = !{!9, !5, i64 160}
!18 = !{!9, !5, i64 168}
!19 = !{!9, !5, i64 176}
!20 = !{!9, !5, i64 184}
!21 = !{!9, !5, i64 192}
!22 = !{!9, !5, i64 200}
!23 = !{!9, !5, i64 208}
!24 = !{!9, !5, i64 216}
!25 = !{!9, !5, i64 224}
!26 = !{!9, !5, i64 232}
!27 = !{!9, !5, i64 248}
!28 = !{!9, !5, i64 256}
!29 = !{!9, !5, i64 264}
!30 = !{!9, !5, i64 272}
!31 = !{!9, !5, i64 280}
!32 = !{!9, !5, i64 288}
!33 = !{!9, !5, i64 296}
!34 = !{!9, !5, i64 304}
!35 = !{!9, !5, i64 312}
!36 = !{!10, !10, i64 0}
!37 = !{!11, !11, i64 0}
!38 = !{!39, !5, i64 648}
!39 = !{!"grib_accessor_unsigned_bits", !40, i64 0, !5, i64 648, !5, i64 656}
!40 = !{!"grib_accessor", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40, !10, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !10, i64 88, !5, i64 96, !6, i64 104, !6, i64 264, !11, i64 424, !5, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !5, i64 464, !5, i64 472, !6, i64 480, !5, i64 640}
!41 = !{!39, !5, i64 656}
!42 = !{!40, !10, i64 40}
!43 = !{!40, !5, i64 16}
!44 = !{!40, !5, i64 0}
!45 = !{!40, !10, i64 48}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{!48, !47}
!49 = !{!50, !5, i64 8}
!50 = !{!"grib_handle", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !11, i64 72, !6, i64 80, !6, i64 160, !11, i64 240, !11, i64 244, !11, i64 248, !5, i64 256, !10, i64 264, !11, i64 272, !11, i64 276, !6, i64 280, !6, i64 40280, !6, i64 40376, !11, i64 40472, !10, i64 40480, !10, i64 40488, !10, i64 40496, !10, i64 40504, !51, i64 40512, !6, i64 40520}
!51 = !{!"double", !6, i64 0}
!52 = !{!53, !5, i64 40}
!53 = !{!"grib_buffer", !11, i64 0, !11, i64 4, !11, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40}
