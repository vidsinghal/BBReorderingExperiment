; ModuleID = 'samples/932.bc'
source_filename = "/local-ssd/eccodes-psuel4mgyciesdodvadhkap2g5cqhhyf-build/aidengro/spack-stage-eccodes-2.25.0-psuel4mgyciesdodvadhkap2g5cqhhyf/spack-src/src/grib_accessor_class_transient_darray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grib_accessor_class = type { ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.grib_accessor_transient_darray = type { %struct.grib_accessor, ptr, i32 }
%struct.grib_accessor = type { ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, i64, ptr, [20 x ptr], [20 x ptr], i32, ptr, i64, i64, i64, ptr, ptr, [20 x ptr], ptr }
%struct.grib_darray = type { ptr, i64, i64, i64, ptr }

@_grib_accessor_class_transient_darray = internal global %struct.grib_accessor_class { ptr @grib_accessor_class_gen, ptr @.str, i64 664, i32 0, ptr @init_class, ptr @init, ptr null, ptr @destroy, ptr @dump, ptr null, ptr null, ptr @value_count, ptr null, ptr null, ptr @get_native_type, ptr null, ptr null, ptr null, ptr @pack_long, ptr @unpack_long, ptr @pack_double, ptr @unpack_double, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @compare, ptr null, ptr null, ptr null, ptr null }, align 8
@grib_accessor_class_transient_darray = global ptr @_grib_accessor_class_transient_darray, align 8
@grib_accessor_class_gen = external global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"transient_darray\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Wrong size for %s (setting %ld, required %ld) \00", align 1

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
  %sub_section = getelementptr inbounds %struct.grib_accessor_class, ptr %22, i32 0, i32 15
  %23 = load ptr, ptr %sub_section, align 8, !tbaa !16
  %24 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %sub_section9 = getelementptr inbounds %struct.grib_accessor_class, ptr %24, i32 0, i32 15
  store ptr %23, ptr %sub_section9, align 8, !tbaa !16
  %25 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super10 = getelementptr inbounds %struct.grib_accessor_class, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %super10, align 8, !tbaa !8
  %27 = load ptr, ptr %26, align 8, !tbaa !4
  %pack_missing = getelementptr inbounds %struct.grib_accessor_class, ptr %27, i32 0, i32 16
  %28 = load ptr, ptr %pack_missing, align 8, !tbaa !17
  %29 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_missing11 = getelementptr inbounds %struct.grib_accessor_class, ptr %29, i32 0, i32 16
  store ptr %28, ptr %pack_missing11, align 8, !tbaa !17
  %30 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super12 = getelementptr inbounds %struct.grib_accessor_class, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %super12, align 8, !tbaa !8
  %32 = load ptr, ptr %31, align 8, !tbaa !4
  %is_missing = getelementptr inbounds %struct.grib_accessor_class, ptr %32, i32 0, i32 17
  %33 = load ptr, ptr %is_missing, align 8, !tbaa !18
  %34 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %is_missing13 = getelementptr inbounds %struct.grib_accessor_class, ptr %34, i32 0, i32 17
  store ptr %33, ptr %is_missing13, align 8, !tbaa !18
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
  %update_size = getelementptr inbounds %struct.grib_accessor_class, ptr %77, i32 0, i32 30
  %78 = load ptr, ptr %update_size, align 8, !tbaa !27
  %79 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %update_size31 = getelementptr inbounds %struct.grib_accessor_class, ptr %79, i32 0, i32 30
  store ptr %78, ptr %update_size31, align 8, !tbaa !27
  %80 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super32 = getelementptr inbounds %struct.grib_accessor_class, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %super32, align 8, !tbaa !8
  %82 = load ptr, ptr %81, align 8, !tbaa !4
  %preferred_size = getelementptr inbounds %struct.grib_accessor_class, ptr %82, i32 0, i32 31
  %83 = load ptr, ptr %preferred_size, align 8, !tbaa !28
  %84 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %preferred_size33 = getelementptr inbounds %struct.grib_accessor_class, ptr %84, i32 0, i32 31
  store ptr %83, ptr %preferred_size33, align 8, !tbaa !28
  %85 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super34 = getelementptr inbounds %struct.grib_accessor_class, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %super34, align 8, !tbaa !8
  %87 = load ptr, ptr %86, align 8, !tbaa !4
  %resize = getelementptr inbounds %struct.grib_accessor_class, ptr %87, i32 0, i32 32
  %88 = load ptr, ptr %resize, align 8, !tbaa !29
  %89 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %resize35 = getelementptr inbounds %struct.grib_accessor_class, ptr %89, i32 0, i32 32
  store ptr %88, ptr %resize35, align 8, !tbaa !29
  %90 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super36 = getelementptr inbounds %struct.grib_accessor_class, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %super36, align 8, !tbaa !8
  %92 = load ptr, ptr %91, align 8, !tbaa !4
  %nearest_smaller_value = getelementptr inbounds %struct.grib_accessor_class, ptr %92, i32 0, i32 33
  %93 = load ptr, ptr %nearest_smaller_value, align 8, !tbaa !30
  %94 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %nearest_smaller_value37 = getelementptr inbounds %struct.grib_accessor_class, ptr %94, i32 0, i32 33
  store ptr %93, ptr %nearest_smaller_value37, align 8, !tbaa !30
  %95 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super38 = getelementptr inbounds %struct.grib_accessor_class, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %super38, align 8, !tbaa !8
  %97 = load ptr, ptr %96, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.grib_accessor_class, ptr %97, i32 0, i32 34
  %98 = load ptr, ptr %next, align 8, !tbaa !31
  %99 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %next39 = getelementptr inbounds %struct.grib_accessor_class, ptr %99, i32 0, i32 34
  store ptr %98, ptr %next39, align 8, !tbaa !31
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
define internal void @init(ptr noundef %a, i64 noundef %length, ptr noundef %args) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %args.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %length, ptr %length.addr, align 8, !tbaa !36
  store ptr %args, ptr %args.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  %1 = load ptr, ptr %self, align 8, !tbaa !4
  %arr = getelementptr inbounds %struct.grib_accessor_transient_darray, ptr %1, i32 0, i32 1
  store ptr null, ptr %arr, align 8, !tbaa !37
  %2 = load ptr, ptr %self, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.grib_accessor_transient_darray, ptr %2, i32 0, i32 2
  store i32 2, ptr %type, align 8, !tbaa !40
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %length1 = getelementptr inbounds %struct.grib_accessor, ptr %3, i32 0, i32 5
  store i64 0, ptr %length1, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroy(ptr noundef %c, ptr noundef %a) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  %1 = load ptr, ptr %self, align 8, !tbaa !4
  %arr = getelementptr inbounds %struct.grib_accessor_transient_darray, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %arr, align 8, !tbaa !37
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %context, align 8, !tbaa !42
  %5 = load ptr, ptr %self, align 8, !tbaa !4
  %arr1 = getelementptr inbounds %struct.grib_accessor_transient_darray, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %arr1, align 8, !tbaa !37
  call void @grib_darray_delete(ptr noundef %4, ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
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
  call void @grib_dump_double(ptr noundef %0, ptr noundef %1, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @value_count(ptr noundef %a, ptr noundef %count) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %count.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %count, ptr %count.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  %1 = load ptr, ptr %self, align 8, !tbaa !4
  %arr = getelementptr inbounds %struct.grib_accessor_transient_darray, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %arr, align 8, !tbaa !37
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %self, align 8, !tbaa !4
  %arr1 = getelementptr inbounds %struct.grib_accessor_transient_darray, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %arr1, align 8, !tbaa !37
  %call = call i64 @grib_darray_used_size(ptr noundef %4)
  %5 = load ptr, ptr %count.addr, align 8, !tbaa !4
  store i64 %call, ptr %5, align 8, !tbaa !36
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %count.addr, align 8, !tbaa !4
  store i64 0, ptr %6, align 8, !tbaa !36
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #3
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @get_native_type(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  %1 = load ptr, ptr %self, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.grib_accessor_transient_darray, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %type, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #3
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @pack_long(ptr noundef %a, ptr noundef %val, ptr noundef %len) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  %1 = load ptr, ptr %self, align 8, !tbaa !4
  %arr = getelementptr inbounds %struct.grib_accessor_transient_darray, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %arr, align 8, !tbaa !37
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %context, align 8, !tbaa !42
  %5 = load ptr, ptr %self, align 8, !tbaa !4
  %arr1 = getelementptr inbounds %struct.grib_accessor_transient_darray, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %arr1, align 8, !tbaa !37
  call void @grib_darray_delete(ptr noundef %4, ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context2 = getelementptr inbounds %struct.grib_accessor, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %context2, align 8, !tbaa !42
  %9 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %10 = load i64, ptr %9, align 8, !tbaa !36
  %call = call ptr @grib_darray_new(ptr noundef %8, i64 noundef %10, i64 noundef 10)
  %11 = load ptr, ptr %self, align 8, !tbaa !4
  %arr3 = getelementptr inbounds %struct.grib_accessor_transient_darray, ptr %11, i32 0, i32 1
  store ptr %call, ptr %arr3, align 8, !tbaa !37
  store i64 0, ptr %i, align 8, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i64, ptr %i, align 8, !tbaa !36
  %13 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %14 = load i64, ptr %13, align 8, !tbaa !36
  %cmp = icmp ult i64 %12, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context4 = getelementptr inbounds %struct.grib_accessor, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %context4, align 8, !tbaa !42
  %17 = load ptr, ptr %self, align 8, !tbaa !4
  %arr5 = getelementptr inbounds %struct.grib_accessor_transient_darray, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %arr5, align 8, !tbaa !37
  %19 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %20 = load i64, ptr %i, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds i64, ptr %19, i64 %20
  %21 = load i64, ptr %arrayidx, align 8, !tbaa !36
  %conv = sitofp i64 %21 to double
  %call6 = call ptr @grib_darray_push(ptr noundef %16, ptr noundef %18, double noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i64, ptr %i, align 8, !tbaa !36
  %inc = add i64 %22, 1
  store i64 %inc, ptr %i, align 8, !tbaa !36
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #3
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
  %count = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #3
  store i64 0, ptr %count, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call i32 @value_count(ptr noundef %1, ptr noundef %count)
  %2 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %3 = load i64, ptr %2, align 8, !tbaa !36
  %4 = load i64, ptr %count, align 8, !tbaa !36
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %context, align 8, !tbaa !42
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_accessor, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %name, align 8, !tbaa !45
  %9 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %10 = load i64, ptr %9, align 8, !tbaa !36
  %11 = load i64, ptr %count, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @grib_context_log(ptr noundef %6, i32 noundef 2, ptr noundef @.str.1, ptr noundef %8, i64 noundef %10, i64 noundef %11)
  store i32 -6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load i64, ptr %count, align 8, !tbaa !36
  %13 = load ptr, ptr %len.addr, align 8, !tbaa !4
  store i64 %12, ptr %13, align 8, !tbaa !36
  store i64 0, ptr %i, align 8, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i64, ptr %i, align 8, !tbaa !36
  %15 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %16 = load i64, ptr %15, align 8, !tbaa !36
  %cmp1 = icmp ult i64 %14, %16
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %self, align 8, !tbaa !4
  %arr = getelementptr inbounds %struct.grib_accessor_transient_darray, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %arr, align 8, !tbaa !37
  %v = getelementptr inbounds %struct.grib_darray, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %v, align 8, !tbaa !46
  %20 = load i64, ptr %i, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds double, ptr %19, i64 %20
  %21 = load double, ptr %arrayidx, align 8, !tbaa !48
  %conv = fptosi double %21 to i64
  %22 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %23 = load i64, ptr %i, align 8, !tbaa !36
  %arrayidx2 = getelementptr inbounds i64, ptr %22, i64 %23
  store i64 %conv, ptr %arrayidx2, align 8, !tbaa !36
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, ptr %i, align 8, !tbaa !36
  %inc = add i64 %24, 1
  store i64 %inc, ptr %i, align 8, !tbaa !36
  br label %for.cond, !llvm.loop !50

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #3
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @pack_double(ptr noundef %a, ptr noundef %val, ptr noundef %len) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  %1 = load ptr, ptr %self, align 8, !tbaa !4
  %arr = getelementptr inbounds %struct.grib_accessor_transient_darray, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %arr, align 8, !tbaa !37
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %context, align 8, !tbaa !42
  %5 = load ptr, ptr %self, align 8, !tbaa !4
  %arr1 = getelementptr inbounds %struct.grib_accessor_transient_darray, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %arr1, align 8, !tbaa !37
  call void @grib_darray_delete(ptr noundef %4, ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context2 = getelementptr inbounds %struct.grib_accessor, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %context2, align 8, !tbaa !42
  %9 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %10 = load i64, ptr %9, align 8, !tbaa !36
  %call = call ptr @grib_darray_new(ptr noundef %8, i64 noundef %10, i64 noundef 10)
  %11 = load ptr, ptr %self, align 8, !tbaa !4
  %arr3 = getelementptr inbounds %struct.grib_accessor_transient_darray, ptr %11, i32 0, i32 1
  store ptr %call, ptr %arr3, align 8, !tbaa !37
  store i64 0, ptr %i, align 8, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i64, ptr %i, align 8, !tbaa !36
  %13 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %14 = load i64, ptr %13, align 8, !tbaa !36
  %cmp = icmp ult i64 %12, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context4 = getelementptr inbounds %struct.grib_accessor, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %context4, align 8, !tbaa !42
  %17 = load ptr, ptr %self, align 8, !tbaa !4
  %arr5 = getelementptr inbounds %struct.grib_accessor_transient_darray, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %arr5, align 8, !tbaa !37
  %19 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %20 = load i64, ptr %i, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds double, ptr %19, i64 %20
  %21 = load double, ptr %arrayidx, align 8, !tbaa !48
  %call6 = call ptr @grib_darray_push(ptr noundef %16, ptr noundef %18, double noundef %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i64, ptr %i, align 8, !tbaa !36
  %inc = add i64 %22, 1
  store i64 %inc, ptr %i, align 8, !tbaa !36
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #3
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @unpack_double(ptr noundef %a, ptr noundef %val, ptr noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %count = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #3
  store i64 0, ptr %count, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call i32 @value_count(ptr noundef %1, ptr noundef %count)
  %2 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %3 = load i64, ptr %2, align 8, !tbaa !36
  %4 = load i64, ptr %count, align 8, !tbaa !36
  %cmp = icmp ult i64 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %context, align 8, !tbaa !42
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_accessor, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %name, align 8, !tbaa !45
  %9 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %10 = load i64, ptr %9, align 8, !tbaa !36
  %11 = load i64, ptr %count, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @grib_context_log(ptr noundef %6, i32 noundef 2, ptr noundef @.str.1, ptr noundef %8, i64 noundef %10, i64 noundef %11)
  store i32 -6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load i64, ptr %count, align 8, !tbaa !36
  %13 = load ptr, ptr %len.addr, align 8, !tbaa !4
  store i64 %12, ptr %13, align 8, !tbaa !36
  store i64 0, ptr %i, align 8, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i64, ptr %i, align 8, !tbaa !36
  %15 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %16 = load i64, ptr %15, align 8, !tbaa !36
  %cmp1 = icmp ult i64 %14, %16
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %self, align 8, !tbaa !4
  %arr = getelementptr inbounds %struct.grib_accessor_transient_darray, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %arr, align 8, !tbaa !37
  %v = getelementptr inbounds %struct.grib_darray, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %v, align 8, !tbaa !46
  %20 = load i64, ptr %i, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds double, ptr %19, i64 %20
  %21 = load double, ptr %arrayidx, align 8, !tbaa !48
  %22 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %23 = load i64, ptr %i, align 8, !tbaa !36
  %arrayidx2 = getelementptr inbounds double, ptr %22, i64 %23
  store double %21, ptr %arrayidx2, align 8, !tbaa !48
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, ptr %i, align 8, !tbaa !36
  %inc = add i64 %24, 1
  store i64 %inc, ptr %i, align 8, !tbaa !36
  br label %for.cond, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #3
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @compare(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %aval = alloca ptr, align 8
  %bval = alloca ptr, align 8
  %alen = alloca i64, align 8
  %blen = alloca i64, align 8
  %err = alloca i32, align 4
  %count = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #3
  store i32 0, ptr %retval1, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 8, ptr %aval) #3
  store ptr null, ptr %aval, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bval) #3
  store ptr null, ptr %bval, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %alen) #3
  store i64 0, ptr %alen, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr %blen) #3
  store i64 0, ptr %blen, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #3
  store i32 0, ptr %err, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #3
  store i64 0, ptr %count, align 8, !tbaa !36
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call i32 @grib_value_count(ptr noundef %0, ptr noundef %count)
  store i32 %call, ptr %err, align 4, !tbaa !53
  %1 = load i32, ptr %err, align 4, !tbaa !53
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !tbaa !53
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %count, align 8, !tbaa !36
  store i64 %3, ptr %alen, align 8, !tbaa !36
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %call2 = call i32 @grib_value_count(ptr noundef %4, ptr noundef %count)
  store i32 %call2, ptr %err, align 4, !tbaa !53
  %5 = load i32, ptr %err, align 4, !tbaa !53
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %6 = load i32, ptr %err, align 4, !tbaa !53
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = load i64, ptr %count, align 8, !tbaa !36
  store i64 %7, ptr %blen, align 8, !tbaa !36
  %8 = load i64, ptr %alen, align 8, !tbaa !36
  %9 = load i64, ptr %blen, align 8, !tbaa !36
  %cmp = icmp ne i64 %8, %9
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end5
  store i32 7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %10 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %context, align 8, !tbaa !42
  %12 = load i64, ptr %alen, align 8, !tbaa !36
  %mul = mul i64 %12, 8
  %call8 = call ptr @grib_context_malloc(ptr noundef %11, i64 noundef %mul)
  store ptr %call8, ptr %aval, align 8, !tbaa !4
  %13 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %context9 = getelementptr inbounds %struct.grib_accessor, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %context9, align 8, !tbaa !42
  %15 = load i64, ptr %blen, align 8, !tbaa !36
  %mul10 = mul i64 %15, 8
  %call11 = call ptr @grib_context_malloc(ptr noundef %14, i64 noundef %mul10)
  store ptr %call11, ptr %bval, align 8, !tbaa !4
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %aval, align 8, !tbaa !4
  %call12 = call i32 @grib_unpack_double(ptr noundef %16, ptr noundef %17, ptr noundef %alen)
  %18 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %bval, align 8, !tbaa !4
  %call13 = call i32 @grib_unpack_double(ptr noundef %18, ptr noundef %19, ptr noundef %blen)
  store i32 0, ptr %retval1, align 4, !tbaa !53
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %if.end7
  %20 = load i64, ptr %alen, align 8, !tbaa !36
  %cmp14 = icmp ne i64 %20, 0
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load ptr, ptr %bval, align 8, !tbaa !4
  %22 = load double, ptr %21, align 8, !tbaa !48
  %23 = load ptr, ptr %aval, align 8, !tbaa !4
  %24 = load double, ptr %23, align 8, !tbaa !48
  %cmp15 = fcmp une double %22, %24
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %while.body
  store i32 2, ptr %retval1, align 4, !tbaa !53
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %while.body
  %25 = load i64, ptr %alen, align 8, !tbaa !36
  %dec = add i64 %25, -1
  store i64 %dec, ptr %alen, align 8, !tbaa !36
  br label %while.cond, !llvm.loop !54

while.end:                                        ; preds = %while.cond
  %26 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context18 = getelementptr inbounds %struct.grib_accessor, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %context18, align 8, !tbaa !42
  %28 = load ptr, ptr %aval, align 8, !tbaa !4
  call void @grib_context_free(ptr noundef %27, ptr noundef %28)
  %29 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %context19 = getelementptr inbounds %struct.grib_accessor, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %context19, align 8, !tbaa !42
  %31 = load ptr, ptr %bval, align 8, !tbaa !4
  call void @grib_context_free(ptr noundef %30, ptr noundef %31)
  %32 = load i32, ptr %retval1, align 4, !tbaa !53
  store i32 %32, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %blen) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %alen) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bval) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %aval) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #3
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @grib_darray_delete(ptr noundef, ptr noundef) #2

declare void @grib_dump_double(ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @grib_darray_used_size(ptr noundef) #2

declare ptr @grib_darray_new(ptr noundef, i64 noundef, i64 noundef) #2

declare ptr @grib_darray_push(ptr noundef, ptr noundef, double noundef) #2

declare void @grib_context_log(ptr noundef, i32 noundef, ptr noundef, ...) #2

declare i32 @grib_value_count(ptr noundef, ptr noundef) #2

declare ptr @grib_context_malloc(ptr noundef, i64 noundef) #2

declare i32 @grib_unpack_double(ptr noundef, ptr noundef, ptr noundef) #2

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
!12 = !{!9, !5, i64 72}
!13 = !{!9, !5, i64 80}
!14 = !{!9, !5, i64 96}
!15 = !{!9, !5, i64 104}
!16 = !{!9, !5, i64 120}
!17 = !{!9, !5, i64 128}
!18 = !{!9, !5, i64 136}
!19 = !{!9, !5, i64 176}
!20 = !{!9, !5, i64 184}
!21 = !{!9, !5, i64 192}
!22 = !{!9, !5, i64 200}
!23 = !{!9, !5, i64 208}
!24 = !{!9, !5, i64 216}
!25 = !{!9, !5, i64 224}
!26 = !{!9, !5, i64 232}
!27 = !{!9, !5, i64 240}
!28 = !{!9, !5, i64 248}
!29 = !{!9, !5, i64 256}
!30 = !{!9, !5, i64 264}
!31 = !{!9, !5, i64 272}
!32 = !{!9, !5, i64 288}
!33 = !{!9, !5, i64 296}
!34 = !{!9, !5, i64 304}
!35 = !{!9, !5, i64 312}
!36 = !{!10, !10, i64 0}
!37 = !{!38, !5, i64 648}
!38 = !{!"grib_accessor_transient_darray", !39, i64 0, !5, i64 648, !11, i64 656}
!39 = !{!"grib_accessor", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40, !10, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !10, i64 88, !5, i64 96, !6, i64 104, !6, i64 264, !11, i64 424, !5, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !5, i64 464, !5, i64 472, !6, i64 480, !5, i64 640}
!40 = !{!38, !11, i64 656}
!41 = !{!39, !10, i64 40}
!42 = !{!39, !5, i64 16}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!39, !5, i64 0}
!46 = !{!47, !5, i64 0}
!47 = !{!"grib_darray", !5, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !5, i64 32}
!48 = !{!49, !49, i64 0}
!49 = !{!"double", !6, i64 0}
!50 = distinct !{!50, !44}
!51 = distinct !{!51, !44}
!52 = distinct !{!52, !44}
!53 = !{!11, !11, i64 0}
!54 = distinct !{!54, !44}
