; ModuleID = 'samples/492.bc'
source_filename = "/local-ssd/eccodes-psuel4mgyciesdodvadhkap2g5cqhhyf-build/aidengro/spack-stage-eccodes-2.25.0-psuel4mgyciesdodvadhkap2g5cqhhyf/spack-src/src/grib_accessor_class_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grib_accessor_class = type { ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.grib_accessor_constant = type { %struct.grib_accessor, double, ptr, ptr, i32 }
%struct.grib_accessor = type { ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, i64, ptr, [20 x ptr], [20 x ptr], i32, ptr, i64, i64, i64, ptr, ptr, [20 x ptr], ptr }

@_grib_accessor_class_constant = internal global %struct.grib_accessor_class { ptr @grib_accessor_class_variable, ptr @.str, i64 680, i32 0, ptr @init_class, ptr @init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pack_long, ptr null, ptr @pack_double, ptr null, ptr @pack_string, ptr null, ptr null, ptr null, ptr @pack_bytes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@grib_accessor_class_constant = global ptr @_grib_accessor_class_constant, align 8
@grib_accessor_class_variable = external global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"constant\00", align 1

; Function Attrs: nounwind uwtable
define void @accessor_constant_set_type(ptr noundef %a, i32 noundef %type) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %self = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store i32 %type, ptr %type.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #2
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  %1 = load i32, ptr %type.addr, align 4, !tbaa !8
  %2 = load ptr, ptr %self, align 8, !tbaa !4
  %type1 = getelementptr inbounds %struct.grib_accessor_constant, ptr %2, i32 0, i32 4
  store i32 %1, ptr %type1, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @accessor_constant_set_dval(ptr noundef %a, double noundef %dval) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %dval.addr = alloca double, align 8
  %self = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store double %dval, ptr %dval.addr, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #2
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  %1 = load double, ptr %dval.addr, align 8, !tbaa !15
  %2 = load ptr, ptr %self, align 8, !tbaa !4
  %dval1 = getelementptr inbounds %struct.grib_accessor_constant, ptr %2, i32 0, i32 1
  store double %1, ptr %dval1, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_class(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super = getelementptr inbounds %struct.grib_accessor_class, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %super, align 8, !tbaa !17
  %2 = load ptr, ptr %1, align 8, !tbaa !4
  %dump = getelementptr inbounds %struct.grib_accessor_class, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %dump, align 8, !tbaa !19
  %4 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %dump1 = getelementptr inbounds %struct.grib_accessor_class, ptr %4, i32 0, i32 8
  store ptr %3, ptr %dump1, align 8, !tbaa !19
  %5 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super2 = getelementptr inbounds %struct.grib_accessor_class, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %super2, align 8, !tbaa !17
  %7 = load ptr, ptr %6, align 8, !tbaa !4
  %next_offset = getelementptr inbounds %struct.grib_accessor_class, ptr %7, i32 0, i32 9
  %8 = load ptr, ptr %next_offset, align 8, !tbaa !20
  %9 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %next_offset3 = getelementptr inbounds %struct.grib_accessor_class, ptr %9, i32 0, i32 9
  store ptr %8, ptr %next_offset3, align 8, !tbaa !20
  %10 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super4 = getelementptr inbounds %struct.grib_accessor_class, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %super4, align 8, !tbaa !17
  %12 = load ptr, ptr %11, align 8, !tbaa !4
  %string_length = getelementptr inbounds %struct.grib_accessor_class, ptr %12, i32 0, i32 10
  %13 = load ptr, ptr %string_length, align 8, !tbaa !21
  %14 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %string_length5 = getelementptr inbounds %struct.grib_accessor_class, ptr %14, i32 0, i32 10
  store ptr %13, ptr %string_length5, align 8, !tbaa !21
  %15 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super6 = getelementptr inbounds %struct.grib_accessor_class, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %super6, align 8, !tbaa !17
  %17 = load ptr, ptr %16, align 8, !tbaa !4
  %value_count = getelementptr inbounds %struct.grib_accessor_class, ptr %17, i32 0, i32 11
  %18 = load ptr, ptr %value_count, align 8, !tbaa !22
  %19 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %value_count7 = getelementptr inbounds %struct.grib_accessor_class, ptr %19, i32 0, i32 11
  store ptr %18, ptr %value_count7, align 8, !tbaa !22
  %20 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super8 = getelementptr inbounds %struct.grib_accessor_class, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %super8, align 8, !tbaa !17
  %22 = load ptr, ptr %21, align 8, !tbaa !4
  %byte_count = getelementptr inbounds %struct.grib_accessor_class, ptr %22, i32 0, i32 12
  %23 = load ptr, ptr %byte_count, align 8, !tbaa !23
  %24 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %byte_count9 = getelementptr inbounds %struct.grib_accessor_class, ptr %24, i32 0, i32 12
  store ptr %23, ptr %byte_count9, align 8, !tbaa !23
  %25 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super10 = getelementptr inbounds %struct.grib_accessor_class, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %super10, align 8, !tbaa !17
  %27 = load ptr, ptr %26, align 8, !tbaa !4
  %byte_offset = getelementptr inbounds %struct.grib_accessor_class, ptr %27, i32 0, i32 13
  %28 = load ptr, ptr %byte_offset, align 8, !tbaa !24
  %29 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %byte_offset11 = getelementptr inbounds %struct.grib_accessor_class, ptr %29, i32 0, i32 13
  store ptr %28, ptr %byte_offset11, align 8, !tbaa !24
  %30 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super12 = getelementptr inbounds %struct.grib_accessor_class, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %super12, align 8, !tbaa !17
  %32 = load ptr, ptr %31, align 8, !tbaa !4
  %get_native_type = getelementptr inbounds %struct.grib_accessor_class, ptr %32, i32 0, i32 14
  %33 = load ptr, ptr %get_native_type, align 8, !tbaa !25
  %34 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %get_native_type13 = getelementptr inbounds %struct.grib_accessor_class, ptr %34, i32 0, i32 14
  store ptr %33, ptr %get_native_type13, align 8, !tbaa !25
  %35 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super14 = getelementptr inbounds %struct.grib_accessor_class, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %super14, align 8, !tbaa !17
  %37 = load ptr, ptr %36, align 8, !tbaa !4
  %sub_section = getelementptr inbounds %struct.grib_accessor_class, ptr %37, i32 0, i32 15
  %38 = load ptr, ptr %sub_section, align 8, !tbaa !26
  %39 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %sub_section15 = getelementptr inbounds %struct.grib_accessor_class, ptr %39, i32 0, i32 15
  store ptr %38, ptr %sub_section15, align 8, !tbaa !26
  %40 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super16 = getelementptr inbounds %struct.grib_accessor_class, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %super16, align 8, !tbaa !17
  %42 = load ptr, ptr %41, align 8, !tbaa !4
  %pack_missing = getelementptr inbounds %struct.grib_accessor_class, ptr %42, i32 0, i32 16
  %43 = load ptr, ptr %pack_missing, align 8, !tbaa !27
  %44 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_missing17 = getelementptr inbounds %struct.grib_accessor_class, ptr %44, i32 0, i32 16
  store ptr %43, ptr %pack_missing17, align 8, !tbaa !27
  %45 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super18 = getelementptr inbounds %struct.grib_accessor_class, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %super18, align 8, !tbaa !17
  %47 = load ptr, ptr %46, align 8, !tbaa !4
  %is_missing = getelementptr inbounds %struct.grib_accessor_class, ptr %47, i32 0, i32 17
  %48 = load ptr, ptr %is_missing, align 8, !tbaa !28
  %49 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %is_missing19 = getelementptr inbounds %struct.grib_accessor_class, ptr %49, i32 0, i32 17
  store ptr %48, ptr %is_missing19, align 8, !tbaa !28
  %50 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super20 = getelementptr inbounds %struct.grib_accessor_class, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %super20, align 8, !tbaa !17
  %52 = load ptr, ptr %51, align 8, !tbaa !4
  %unpack_long = getelementptr inbounds %struct.grib_accessor_class, ptr %52, i32 0, i32 19
  %53 = load ptr, ptr %unpack_long, align 8, !tbaa !29
  %54 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_long21 = getelementptr inbounds %struct.grib_accessor_class, ptr %54, i32 0, i32 19
  store ptr %53, ptr %unpack_long21, align 8, !tbaa !29
  %55 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super22 = getelementptr inbounds %struct.grib_accessor_class, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %super22, align 8, !tbaa !17
  %57 = load ptr, ptr %56, align 8, !tbaa !4
  %unpack_double = getelementptr inbounds %struct.grib_accessor_class, ptr %57, i32 0, i32 21
  %58 = load ptr, ptr %unpack_double, align 8, !tbaa !30
  %59 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double23 = getelementptr inbounds %struct.grib_accessor_class, ptr %59, i32 0, i32 21
  store ptr %58, ptr %unpack_double23, align 8, !tbaa !30
  %60 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super24 = getelementptr inbounds %struct.grib_accessor_class, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %super24, align 8, !tbaa !17
  %62 = load ptr, ptr %61, align 8, !tbaa !4
  %unpack_string = getelementptr inbounds %struct.grib_accessor_class, ptr %62, i32 0, i32 23
  %63 = load ptr, ptr %unpack_string, align 8, !tbaa !31
  %64 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_string25 = getelementptr inbounds %struct.grib_accessor_class, ptr %64, i32 0, i32 23
  store ptr %63, ptr %unpack_string25, align 8, !tbaa !31
  %65 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super26 = getelementptr inbounds %struct.grib_accessor_class, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %super26, align 8, !tbaa !17
  %67 = load ptr, ptr %66, align 8, !tbaa !4
  %pack_string_array = getelementptr inbounds %struct.grib_accessor_class, ptr %67, i32 0, i32 24
  %68 = load ptr, ptr %pack_string_array, align 8, !tbaa !32
  %69 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_string_array27 = getelementptr inbounds %struct.grib_accessor_class, ptr %69, i32 0, i32 24
  store ptr %68, ptr %pack_string_array27, align 8, !tbaa !32
  %70 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super28 = getelementptr inbounds %struct.grib_accessor_class, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %super28, align 8, !tbaa !17
  %72 = load ptr, ptr %71, align 8, !tbaa !4
  %unpack_string_array = getelementptr inbounds %struct.grib_accessor_class, ptr %72, i32 0, i32 25
  %73 = load ptr, ptr %unpack_string_array, align 8, !tbaa !33
  %74 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_string_array29 = getelementptr inbounds %struct.grib_accessor_class, ptr %74, i32 0, i32 25
  store ptr %73, ptr %unpack_string_array29, align 8, !tbaa !33
  %75 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super30 = getelementptr inbounds %struct.grib_accessor_class, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %super30, align 8, !tbaa !17
  %77 = load ptr, ptr %76, align 8, !tbaa !4
  %unpack_bytes = getelementptr inbounds %struct.grib_accessor_class, ptr %77, i32 0, i32 27
  %78 = load ptr, ptr %unpack_bytes, align 8, !tbaa !34
  %79 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_bytes31 = getelementptr inbounds %struct.grib_accessor_class, ptr %79, i32 0, i32 27
  store ptr %78, ptr %unpack_bytes31, align 8, !tbaa !34
  %80 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super32 = getelementptr inbounds %struct.grib_accessor_class, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %super32, align 8, !tbaa !17
  %82 = load ptr, ptr %81, align 8, !tbaa !4
  %pack_expression = getelementptr inbounds %struct.grib_accessor_class, ptr %82, i32 0, i32 28
  %83 = load ptr, ptr %pack_expression, align 8, !tbaa !35
  %84 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_expression33 = getelementptr inbounds %struct.grib_accessor_class, ptr %84, i32 0, i32 28
  store ptr %83, ptr %pack_expression33, align 8, !tbaa !35
  %85 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super34 = getelementptr inbounds %struct.grib_accessor_class, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %super34, align 8, !tbaa !17
  %87 = load ptr, ptr %86, align 8, !tbaa !4
  %notify_change = getelementptr inbounds %struct.grib_accessor_class, ptr %87, i32 0, i32 29
  %88 = load ptr, ptr %notify_change, align 8, !tbaa !36
  %89 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %notify_change35 = getelementptr inbounds %struct.grib_accessor_class, ptr %89, i32 0, i32 29
  store ptr %88, ptr %notify_change35, align 8, !tbaa !36
  %90 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super36 = getelementptr inbounds %struct.grib_accessor_class, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %super36, align 8, !tbaa !17
  %92 = load ptr, ptr %91, align 8, !tbaa !4
  %update_size = getelementptr inbounds %struct.grib_accessor_class, ptr %92, i32 0, i32 30
  %93 = load ptr, ptr %update_size, align 8, !tbaa !37
  %94 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %update_size37 = getelementptr inbounds %struct.grib_accessor_class, ptr %94, i32 0, i32 30
  store ptr %93, ptr %update_size37, align 8, !tbaa !37
  %95 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super38 = getelementptr inbounds %struct.grib_accessor_class, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %super38, align 8, !tbaa !17
  %97 = load ptr, ptr %96, align 8, !tbaa !4
  %preferred_size = getelementptr inbounds %struct.grib_accessor_class, ptr %97, i32 0, i32 31
  %98 = load ptr, ptr %preferred_size, align 8, !tbaa !38
  %99 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %preferred_size39 = getelementptr inbounds %struct.grib_accessor_class, ptr %99, i32 0, i32 31
  store ptr %98, ptr %preferred_size39, align 8, !tbaa !38
  %100 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super40 = getelementptr inbounds %struct.grib_accessor_class, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %super40, align 8, !tbaa !17
  %102 = load ptr, ptr %101, align 8, !tbaa !4
  %resize = getelementptr inbounds %struct.grib_accessor_class, ptr %102, i32 0, i32 32
  %103 = load ptr, ptr %resize, align 8, !tbaa !39
  %104 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %resize41 = getelementptr inbounds %struct.grib_accessor_class, ptr %104, i32 0, i32 32
  store ptr %103, ptr %resize41, align 8, !tbaa !39
  %105 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super42 = getelementptr inbounds %struct.grib_accessor_class, ptr %105, i32 0, i32 0
  %106 = load ptr, ptr %super42, align 8, !tbaa !17
  %107 = load ptr, ptr %106, align 8, !tbaa !4
  %nearest_smaller_value = getelementptr inbounds %struct.grib_accessor_class, ptr %107, i32 0, i32 33
  %108 = load ptr, ptr %nearest_smaller_value, align 8, !tbaa !40
  %109 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %nearest_smaller_value43 = getelementptr inbounds %struct.grib_accessor_class, ptr %109, i32 0, i32 33
  store ptr %108, ptr %nearest_smaller_value43, align 8, !tbaa !40
  %110 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super44 = getelementptr inbounds %struct.grib_accessor_class, ptr %110, i32 0, i32 0
  %111 = load ptr, ptr %super44, align 8, !tbaa !17
  %112 = load ptr, ptr %111, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.grib_accessor_class, ptr %112, i32 0, i32 34
  %113 = load ptr, ptr %next, align 8, !tbaa !41
  %114 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %next45 = getelementptr inbounds %struct.grib_accessor_class, ptr %114, i32 0, i32 34
  store ptr %113, ptr %next45, align 8, !tbaa !41
  %115 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super46 = getelementptr inbounds %struct.grib_accessor_class, ptr %115, i32 0, i32 0
  %116 = load ptr, ptr %super46, align 8, !tbaa !17
  %117 = load ptr, ptr %116, align 8, !tbaa !4
  %compare = getelementptr inbounds %struct.grib_accessor_class, ptr %117, i32 0, i32 35
  %118 = load ptr, ptr %compare, align 8, !tbaa !42
  %119 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %compare47 = getelementptr inbounds %struct.grib_accessor_class, ptr %119, i32 0, i32 35
  store ptr %118, ptr %compare47, align 8, !tbaa !42
  %120 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super48 = getelementptr inbounds %struct.grib_accessor_class, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %super48, align 8, !tbaa !17
  %122 = load ptr, ptr %121, align 8, !tbaa !4
  %unpack_double_element = getelementptr inbounds %struct.grib_accessor_class, ptr %122, i32 0, i32 36
  %123 = load ptr, ptr %unpack_double_element, align 8, !tbaa !43
  %124 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double_element49 = getelementptr inbounds %struct.grib_accessor_class, ptr %124, i32 0, i32 36
  store ptr %123, ptr %unpack_double_element49, align 8, !tbaa !43
  %125 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super50 = getelementptr inbounds %struct.grib_accessor_class, ptr %125, i32 0, i32 0
  %126 = load ptr, ptr %super50, align 8, !tbaa !17
  %127 = load ptr, ptr %126, align 8, !tbaa !4
  %unpack_double_subarray = getelementptr inbounds %struct.grib_accessor_class, ptr %127, i32 0, i32 37
  %128 = load ptr, ptr %unpack_double_subarray, align 8, !tbaa !44
  %129 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double_subarray51 = getelementptr inbounds %struct.grib_accessor_class, ptr %129, i32 0, i32 37
  store ptr %128, ptr %unpack_double_subarray51, align 8, !tbaa !44
  %130 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super52 = getelementptr inbounds %struct.grib_accessor_class, ptr %130, i32 0, i32 0
  %131 = load ptr, ptr %super52, align 8, !tbaa !17
  %132 = load ptr, ptr %131, align 8, !tbaa !4
  %clear = getelementptr inbounds %struct.grib_accessor_class, ptr %132, i32 0, i32 38
  %133 = load ptr, ptr %clear, align 8, !tbaa !45
  %134 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %clear53 = getelementptr inbounds %struct.grib_accessor_class, ptr %134, i32 0, i32 38
  store ptr %133, ptr %clear53, align 8, !tbaa !45
  %135 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super54 = getelementptr inbounds %struct.grib_accessor_class, ptr %135, i32 0, i32 0
  %136 = load ptr, ptr %super54, align 8, !tbaa !17
  %137 = load ptr, ptr %136, align 8, !tbaa !4
  %make_clone = getelementptr inbounds %struct.grib_accessor_class, ptr %137, i32 0, i32 39
  %138 = load ptr, ptr %make_clone, align 8, !tbaa !46
  %139 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %make_clone55 = getelementptr inbounds %struct.grib_accessor_class, ptr %139, i32 0, i32 39
  store ptr %138, ptr %make_clone55, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init(ptr noundef %a, i64 noundef %len, ptr noundef %arg) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %arg.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !47
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.grib_accessor, ptr %0, i32 0, i32 11
  %1 = load i64, ptr %flags, align 8, !tbaa !48
  %or = or i64 %1, 2
  store i64 %or, ptr %flags, align 8, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pack_long(ptr noundef %a, ptr noundef %val, ptr noundef %len) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  ret i32 -18
}

; Function Attrs: nounwind uwtable
define internal i32 @pack_double(ptr noundef %a, ptr noundef %val, ptr noundef %len) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  ret i32 -18
}

; Function Attrs: nounwind uwtable
define internal i32 @pack_string(ptr noundef %a, ptr noundef %val, ptr noundef %len) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  ret i32 -18
}

; Function Attrs: nounwind uwtable
define internal i32 @pack_bytes(ptr noundef %a, ptr noundef %val, ptr noundef %len) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  ret i32 -18
}

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
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !9, i64 672}
!11 = !{!"grib_accessor_constant", !12, i64 0, !14, i64 648, !5, i64 656, !5, i64 664, !9, i64 672}
!12 = !{!"grib_accessor", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !13, i64 40, !13, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !13, i64 88, !5, i64 96, !6, i64 104, !6, i64 264, !9, i64 424, !5, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !5, i64 464, !5, i64 472, !6, i64 480, !5, i64 640}
!13 = !{!"long", !6, i64 0}
!14 = !{!"double", !6, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!11, !14, i64 648}
!17 = !{!18, !5, i64 0}
!18 = !{!"grib_accessor_class", !5, i64 0, !5, i64 8, !13, i64 16, !9, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312}
!19 = !{!18, !5, i64 64}
!20 = !{!18, !5, i64 72}
!21 = !{!18, !5, i64 80}
!22 = !{!18, !5, i64 88}
!23 = !{!18, !5, i64 96}
!24 = !{!18, !5, i64 104}
!25 = !{!18, !5, i64 112}
!26 = !{!18, !5, i64 120}
!27 = !{!18, !5, i64 128}
!28 = !{!18, !5, i64 136}
!29 = !{!18, !5, i64 152}
!30 = !{!18, !5, i64 168}
!31 = !{!18, !5, i64 184}
!32 = !{!18, !5, i64 192}
!33 = !{!18, !5, i64 200}
!34 = !{!18, !5, i64 216}
!35 = !{!18, !5, i64 224}
!36 = !{!18, !5, i64 232}
!37 = !{!18, !5, i64 240}
!38 = !{!18, !5, i64 248}
!39 = !{!18, !5, i64 256}
!40 = !{!18, !5, i64 264}
!41 = !{!18, !5, i64 272}
!42 = !{!18, !5, i64 280}
!43 = !{!18, !5, i64 288}
!44 = !{!18, !5, i64 296}
!45 = !{!18, !5, i64 304}
!46 = !{!18, !5, i64 312}
!47 = !{!13, !13, i64 0}
!48 = !{!12, !13, i64 88}
