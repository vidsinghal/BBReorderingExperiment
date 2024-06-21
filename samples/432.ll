; ModuleID = 'samples/432.bc'
source_filename = "/local-ssd/eccodes-psuel4mgyciesdodvadhkap2g5cqhhyf-build/aidengro/spack-stage-eccodes-2.25.0-psuel4mgyciesdodvadhkap2g5cqhhyf/spack-src/src/grib_accessor_class_nearest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grib_accessor_class = type { ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.grib_accessor_nearest = type { %struct.grib_accessor, ptr }
%struct.grib_accessor = type { ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, i64, ptr, [20 x ptr], [20 x ptr], i32, ptr, i64, i64, i64, ptr, ptr, [20 x ptr], ptr }

@_grib_accessor_class_nearest = internal global %struct.grib_accessor_class { ptr @grib_accessor_class_gen, ptr @.str.1, i64 656, i32 0, ptr @init_class, ptr @init, ptr null, ptr null, ptr @dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@grib_accessor_class_nearest = global ptr @_grib_accessor_class_nearest, align 8
@.str = private unnamed_addr constant [8 x i8] c"NEAREST\00", align 1
@grib_accessor_class_gen = external global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"nearest\00", align 1

; Function Attrs: nounwind uwtable
define ptr @grib_nearest_new(ptr noundef %ch, ptr noundef %error) #0 {
entry:
  %retval = alloca ptr, align 8
  %ch.addr = alloca ptr, align 8
  %error.addr = alloca ptr, align 8
  %h = alloca ptr, align 8
  %a = alloca ptr, align 8
  %na = alloca ptr, align 8
  %n = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ch, ptr %ch.addr, align 8, !tbaa !4
  store ptr %error, ptr %error.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #3
  %0 = load ptr, ptr %ch.addr, align 8, !tbaa !4
  store ptr %0, ptr %h, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #3
  store ptr null, ptr %a, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %na) #3
  store ptr null, ptr %na, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #3
  store ptr null, ptr %n, align 8, !tbaa !4
  %1 = load ptr, ptr %error.addr, align 8, !tbaa !4
  store i32 -4, ptr %1, align 4, !tbaa !8
  %2 = load ptr, ptr %h, align 8, !tbaa !4
  %call = call ptr @grib_find_accessor(ptr noundef %2, ptr noundef @.str)
  store ptr %call, ptr %a, align 8, !tbaa !4
  %3 = load ptr, ptr %a, align 8, !tbaa !4
  store ptr %3, ptr %na, align 8, !tbaa !4
  %4 = load ptr, ptr %a, align 8, !tbaa !4
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %h, align 8, !tbaa !4
  %6 = load ptr, ptr %na, align 8, !tbaa !4
  %args = getelementptr inbounds %struct.grib_accessor_nearest, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %args, align 8, !tbaa !10
  %call1 = call ptr @grib_nearest_factory(ptr noundef %5, ptr noundef %7)
  store ptr %call1, ptr %n, align 8, !tbaa !4
  %8 = load ptr, ptr %n, align 8, !tbaa !4
  %tobool2 = icmp ne ptr %8, null
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %error.addr, align 8, !tbaa !4
  store i32 0, ptr %9, align 4, !tbaa !8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %10 = load ptr, ptr %n, align 8, !tbaa !4
  store ptr %10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %na) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #3
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @grib_find_accessor(ptr noundef, ptr noundef) #2

declare ptr @grib_nearest_factory(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @init_class(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super = getelementptr inbounds %struct.grib_accessor_class, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %super, align 8, !tbaa !14
  %2 = load ptr, ptr %1, align 8, !tbaa !4
  %next_offset = getelementptr inbounds %struct.grib_accessor_class, ptr %2, i32 0, i32 9
  %3 = load ptr, ptr %next_offset, align 8, !tbaa !16
  %4 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %next_offset1 = getelementptr inbounds %struct.grib_accessor_class, ptr %4, i32 0, i32 9
  store ptr %3, ptr %next_offset1, align 8, !tbaa !16
  %5 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super2 = getelementptr inbounds %struct.grib_accessor_class, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %super2, align 8, !tbaa !14
  %7 = load ptr, ptr %6, align 8, !tbaa !4
  %string_length = getelementptr inbounds %struct.grib_accessor_class, ptr %7, i32 0, i32 10
  %8 = load ptr, ptr %string_length, align 8, !tbaa !17
  %9 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %string_length3 = getelementptr inbounds %struct.grib_accessor_class, ptr %9, i32 0, i32 10
  store ptr %8, ptr %string_length3, align 8, !tbaa !17
  %10 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super4 = getelementptr inbounds %struct.grib_accessor_class, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %super4, align 8, !tbaa !14
  %12 = load ptr, ptr %11, align 8, !tbaa !4
  %value_count = getelementptr inbounds %struct.grib_accessor_class, ptr %12, i32 0, i32 11
  %13 = load ptr, ptr %value_count, align 8, !tbaa !18
  %14 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %value_count5 = getelementptr inbounds %struct.grib_accessor_class, ptr %14, i32 0, i32 11
  store ptr %13, ptr %value_count5, align 8, !tbaa !18
  %15 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super6 = getelementptr inbounds %struct.grib_accessor_class, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %super6, align 8, !tbaa !14
  %17 = load ptr, ptr %16, align 8, !tbaa !4
  %byte_count = getelementptr inbounds %struct.grib_accessor_class, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %byte_count, align 8, !tbaa !19
  %19 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %byte_count7 = getelementptr inbounds %struct.grib_accessor_class, ptr %19, i32 0, i32 12
  store ptr %18, ptr %byte_count7, align 8, !tbaa !19
  %20 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super8 = getelementptr inbounds %struct.grib_accessor_class, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %super8, align 8, !tbaa !14
  %22 = load ptr, ptr %21, align 8, !tbaa !4
  %byte_offset = getelementptr inbounds %struct.grib_accessor_class, ptr %22, i32 0, i32 13
  %23 = load ptr, ptr %byte_offset, align 8, !tbaa !20
  %24 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %byte_offset9 = getelementptr inbounds %struct.grib_accessor_class, ptr %24, i32 0, i32 13
  store ptr %23, ptr %byte_offset9, align 8, !tbaa !20
  %25 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super10 = getelementptr inbounds %struct.grib_accessor_class, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %super10, align 8, !tbaa !14
  %27 = load ptr, ptr %26, align 8, !tbaa !4
  %get_native_type = getelementptr inbounds %struct.grib_accessor_class, ptr %27, i32 0, i32 14
  %28 = load ptr, ptr %get_native_type, align 8, !tbaa !21
  %29 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %get_native_type11 = getelementptr inbounds %struct.grib_accessor_class, ptr %29, i32 0, i32 14
  store ptr %28, ptr %get_native_type11, align 8, !tbaa !21
  %30 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super12 = getelementptr inbounds %struct.grib_accessor_class, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %super12, align 8, !tbaa !14
  %32 = load ptr, ptr %31, align 8, !tbaa !4
  %sub_section = getelementptr inbounds %struct.grib_accessor_class, ptr %32, i32 0, i32 15
  %33 = load ptr, ptr %sub_section, align 8, !tbaa !22
  %34 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %sub_section13 = getelementptr inbounds %struct.grib_accessor_class, ptr %34, i32 0, i32 15
  store ptr %33, ptr %sub_section13, align 8, !tbaa !22
  %35 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super14 = getelementptr inbounds %struct.grib_accessor_class, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %super14, align 8, !tbaa !14
  %37 = load ptr, ptr %36, align 8, !tbaa !4
  %pack_missing = getelementptr inbounds %struct.grib_accessor_class, ptr %37, i32 0, i32 16
  %38 = load ptr, ptr %pack_missing, align 8, !tbaa !23
  %39 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_missing15 = getelementptr inbounds %struct.grib_accessor_class, ptr %39, i32 0, i32 16
  store ptr %38, ptr %pack_missing15, align 8, !tbaa !23
  %40 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super16 = getelementptr inbounds %struct.grib_accessor_class, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %super16, align 8, !tbaa !14
  %42 = load ptr, ptr %41, align 8, !tbaa !4
  %is_missing = getelementptr inbounds %struct.grib_accessor_class, ptr %42, i32 0, i32 17
  %43 = load ptr, ptr %is_missing, align 8, !tbaa !24
  %44 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %is_missing17 = getelementptr inbounds %struct.grib_accessor_class, ptr %44, i32 0, i32 17
  store ptr %43, ptr %is_missing17, align 8, !tbaa !24
  %45 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super18 = getelementptr inbounds %struct.grib_accessor_class, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %super18, align 8, !tbaa !14
  %47 = load ptr, ptr %46, align 8, !tbaa !4
  %pack_long = getelementptr inbounds %struct.grib_accessor_class, ptr %47, i32 0, i32 18
  %48 = load ptr, ptr %pack_long, align 8, !tbaa !25
  %49 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_long19 = getelementptr inbounds %struct.grib_accessor_class, ptr %49, i32 0, i32 18
  store ptr %48, ptr %pack_long19, align 8, !tbaa !25
  %50 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super20 = getelementptr inbounds %struct.grib_accessor_class, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %super20, align 8, !tbaa !14
  %52 = load ptr, ptr %51, align 8, !tbaa !4
  %unpack_long = getelementptr inbounds %struct.grib_accessor_class, ptr %52, i32 0, i32 19
  %53 = load ptr, ptr %unpack_long, align 8, !tbaa !26
  %54 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_long21 = getelementptr inbounds %struct.grib_accessor_class, ptr %54, i32 0, i32 19
  store ptr %53, ptr %unpack_long21, align 8, !tbaa !26
  %55 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super22 = getelementptr inbounds %struct.grib_accessor_class, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %super22, align 8, !tbaa !14
  %57 = load ptr, ptr %56, align 8, !tbaa !4
  %pack_double = getelementptr inbounds %struct.grib_accessor_class, ptr %57, i32 0, i32 20
  %58 = load ptr, ptr %pack_double, align 8, !tbaa !27
  %59 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_double23 = getelementptr inbounds %struct.grib_accessor_class, ptr %59, i32 0, i32 20
  store ptr %58, ptr %pack_double23, align 8, !tbaa !27
  %60 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super24 = getelementptr inbounds %struct.grib_accessor_class, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %super24, align 8, !tbaa !14
  %62 = load ptr, ptr %61, align 8, !tbaa !4
  %unpack_double = getelementptr inbounds %struct.grib_accessor_class, ptr %62, i32 0, i32 21
  %63 = load ptr, ptr %unpack_double, align 8, !tbaa !28
  %64 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double25 = getelementptr inbounds %struct.grib_accessor_class, ptr %64, i32 0, i32 21
  store ptr %63, ptr %unpack_double25, align 8, !tbaa !28
  %65 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super26 = getelementptr inbounds %struct.grib_accessor_class, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %super26, align 8, !tbaa !14
  %67 = load ptr, ptr %66, align 8, !tbaa !4
  %pack_string = getelementptr inbounds %struct.grib_accessor_class, ptr %67, i32 0, i32 22
  %68 = load ptr, ptr %pack_string, align 8, !tbaa !29
  %69 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_string27 = getelementptr inbounds %struct.grib_accessor_class, ptr %69, i32 0, i32 22
  store ptr %68, ptr %pack_string27, align 8, !tbaa !29
  %70 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super28 = getelementptr inbounds %struct.grib_accessor_class, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %super28, align 8, !tbaa !14
  %72 = load ptr, ptr %71, align 8, !tbaa !4
  %unpack_string = getelementptr inbounds %struct.grib_accessor_class, ptr %72, i32 0, i32 23
  %73 = load ptr, ptr %unpack_string, align 8, !tbaa !30
  %74 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_string29 = getelementptr inbounds %struct.grib_accessor_class, ptr %74, i32 0, i32 23
  store ptr %73, ptr %unpack_string29, align 8, !tbaa !30
  %75 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super30 = getelementptr inbounds %struct.grib_accessor_class, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %super30, align 8, !tbaa !14
  %77 = load ptr, ptr %76, align 8, !tbaa !4
  %pack_string_array = getelementptr inbounds %struct.grib_accessor_class, ptr %77, i32 0, i32 24
  %78 = load ptr, ptr %pack_string_array, align 8, !tbaa !31
  %79 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_string_array31 = getelementptr inbounds %struct.grib_accessor_class, ptr %79, i32 0, i32 24
  store ptr %78, ptr %pack_string_array31, align 8, !tbaa !31
  %80 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super32 = getelementptr inbounds %struct.grib_accessor_class, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %super32, align 8, !tbaa !14
  %82 = load ptr, ptr %81, align 8, !tbaa !4
  %unpack_string_array = getelementptr inbounds %struct.grib_accessor_class, ptr %82, i32 0, i32 25
  %83 = load ptr, ptr %unpack_string_array, align 8, !tbaa !32
  %84 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_string_array33 = getelementptr inbounds %struct.grib_accessor_class, ptr %84, i32 0, i32 25
  store ptr %83, ptr %unpack_string_array33, align 8, !tbaa !32
  %85 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super34 = getelementptr inbounds %struct.grib_accessor_class, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %super34, align 8, !tbaa !14
  %87 = load ptr, ptr %86, align 8, !tbaa !4
  %pack_bytes = getelementptr inbounds %struct.grib_accessor_class, ptr %87, i32 0, i32 26
  %88 = load ptr, ptr %pack_bytes, align 8, !tbaa !33
  %89 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_bytes35 = getelementptr inbounds %struct.grib_accessor_class, ptr %89, i32 0, i32 26
  store ptr %88, ptr %pack_bytes35, align 8, !tbaa !33
  %90 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super36 = getelementptr inbounds %struct.grib_accessor_class, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %super36, align 8, !tbaa !14
  %92 = load ptr, ptr %91, align 8, !tbaa !4
  %unpack_bytes = getelementptr inbounds %struct.grib_accessor_class, ptr %92, i32 0, i32 27
  %93 = load ptr, ptr %unpack_bytes, align 8, !tbaa !34
  %94 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_bytes37 = getelementptr inbounds %struct.grib_accessor_class, ptr %94, i32 0, i32 27
  store ptr %93, ptr %unpack_bytes37, align 8, !tbaa !34
  %95 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super38 = getelementptr inbounds %struct.grib_accessor_class, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %super38, align 8, !tbaa !14
  %97 = load ptr, ptr %96, align 8, !tbaa !4
  %pack_expression = getelementptr inbounds %struct.grib_accessor_class, ptr %97, i32 0, i32 28
  %98 = load ptr, ptr %pack_expression, align 8, !tbaa !35
  %99 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_expression39 = getelementptr inbounds %struct.grib_accessor_class, ptr %99, i32 0, i32 28
  store ptr %98, ptr %pack_expression39, align 8, !tbaa !35
  %100 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super40 = getelementptr inbounds %struct.grib_accessor_class, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %super40, align 8, !tbaa !14
  %102 = load ptr, ptr %101, align 8, !tbaa !4
  %notify_change = getelementptr inbounds %struct.grib_accessor_class, ptr %102, i32 0, i32 29
  %103 = load ptr, ptr %notify_change, align 8, !tbaa !36
  %104 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %notify_change41 = getelementptr inbounds %struct.grib_accessor_class, ptr %104, i32 0, i32 29
  store ptr %103, ptr %notify_change41, align 8, !tbaa !36
  %105 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super42 = getelementptr inbounds %struct.grib_accessor_class, ptr %105, i32 0, i32 0
  %106 = load ptr, ptr %super42, align 8, !tbaa !14
  %107 = load ptr, ptr %106, align 8, !tbaa !4
  %update_size = getelementptr inbounds %struct.grib_accessor_class, ptr %107, i32 0, i32 30
  %108 = load ptr, ptr %update_size, align 8, !tbaa !37
  %109 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %update_size43 = getelementptr inbounds %struct.grib_accessor_class, ptr %109, i32 0, i32 30
  store ptr %108, ptr %update_size43, align 8, !tbaa !37
  %110 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super44 = getelementptr inbounds %struct.grib_accessor_class, ptr %110, i32 0, i32 0
  %111 = load ptr, ptr %super44, align 8, !tbaa !14
  %112 = load ptr, ptr %111, align 8, !tbaa !4
  %preferred_size = getelementptr inbounds %struct.grib_accessor_class, ptr %112, i32 0, i32 31
  %113 = load ptr, ptr %preferred_size, align 8, !tbaa !38
  %114 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %preferred_size45 = getelementptr inbounds %struct.grib_accessor_class, ptr %114, i32 0, i32 31
  store ptr %113, ptr %preferred_size45, align 8, !tbaa !38
  %115 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super46 = getelementptr inbounds %struct.grib_accessor_class, ptr %115, i32 0, i32 0
  %116 = load ptr, ptr %super46, align 8, !tbaa !14
  %117 = load ptr, ptr %116, align 8, !tbaa !4
  %resize = getelementptr inbounds %struct.grib_accessor_class, ptr %117, i32 0, i32 32
  %118 = load ptr, ptr %resize, align 8, !tbaa !39
  %119 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %resize47 = getelementptr inbounds %struct.grib_accessor_class, ptr %119, i32 0, i32 32
  store ptr %118, ptr %resize47, align 8, !tbaa !39
  %120 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super48 = getelementptr inbounds %struct.grib_accessor_class, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %super48, align 8, !tbaa !14
  %122 = load ptr, ptr %121, align 8, !tbaa !4
  %nearest_smaller_value = getelementptr inbounds %struct.grib_accessor_class, ptr %122, i32 0, i32 33
  %123 = load ptr, ptr %nearest_smaller_value, align 8, !tbaa !40
  %124 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %nearest_smaller_value49 = getelementptr inbounds %struct.grib_accessor_class, ptr %124, i32 0, i32 33
  store ptr %123, ptr %nearest_smaller_value49, align 8, !tbaa !40
  %125 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super50 = getelementptr inbounds %struct.grib_accessor_class, ptr %125, i32 0, i32 0
  %126 = load ptr, ptr %super50, align 8, !tbaa !14
  %127 = load ptr, ptr %126, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.grib_accessor_class, ptr %127, i32 0, i32 34
  %128 = load ptr, ptr %next, align 8, !tbaa !41
  %129 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %next51 = getelementptr inbounds %struct.grib_accessor_class, ptr %129, i32 0, i32 34
  store ptr %128, ptr %next51, align 8, !tbaa !41
  %130 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super52 = getelementptr inbounds %struct.grib_accessor_class, ptr %130, i32 0, i32 0
  %131 = load ptr, ptr %super52, align 8, !tbaa !14
  %132 = load ptr, ptr %131, align 8, !tbaa !4
  %compare = getelementptr inbounds %struct.grib_accessor_class, ptr %132, i32 0, i32 35
  %133 = load ptr, ptr %compare, align 8, !tbaa !42
  %134 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %compare53 = getelementptr inbounds %struct.grib_accessor_class, ptr %134, i32 0, i32 35
  store ptr %133, ptr %compare53, align 8, !tbaa !42
  %135 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super54 = getelementptr inbounds %struct.grib_accessor_class, ptr %135, i32 0, i32 0
  %136 = load ptr, ptr %super54, align 8, !tbaa !14
  %137 = load ptr, ptr %136, align 8, !tbaa !4
  %unpack_double_element = getelementptr inbounds %struct.grib_accessor_class, ptr %137, i32 0, i32 36
  %138 = load ptr, ptr %unpack_double_element, align 8, !tbaa !43
  %139 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double_element55 = getelementptr inbounds %struct.grib_accessor_class, ptr %139, i32 0, i32 36
  store ptr %138, ptr %unpack_double_element55, align 8, !tbaa !43
  %140 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super56 = getelementptr inbounds %struct.grib_accessor_class, ptr %140, i32 0, i32 0
  %141 = load ptr, ptr %super56, align 8, !tbaa !14
  %142 = load ptr, ptr %141, align 8, !tbaa !4
  %unpack_double_subarray = getelementptr inbounds %struct.grib_accessor_class, ptr %142, i32 0, i32 37
  %143 = load ptr, ptr %unpack_double_subarray, align 8, !tbaa !44
  %144 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double_subarray57 = getelementptr inbounds %struct.grib_accessor_class, ptr %144, i32 0, i32 37
  store ptr %143, ptr %unpack_double_subarray57, align 8, !tbaa !44
  %145 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super58 = getelementptr inbounds %struct.grib_accessor_class, ptr %145, i32 0, i32 0
  %146 = load ptr, ptr %super58, align 8, !tbaa !14
  %147 = load ptr, ptr %146, align 8, !tbaa !4
  %clear = getelementptr inbounds %struct.grib_accessor_class, ptr %147, i32 0, i32 38
  %148 = load ptr, ptr %clear, align 8, !tbaa !45
  %149 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %clear59 = getelementptr inbounds %struct.grib_accessor_class, ptr %149, i32 0, i32 38
  store ptr %148, ptr %clear59, align 8, !tbaa !45
  %150 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super60 = getelementptr inbounds %struct.grib_accessor_class, ptr %150, i32 0, i32 0
  %151 = load ptr, ptr %super60, align 8, !tbaa !14
  %152 = load ptr, ptr %151, align 8, !tbaa !4
  %make_clone = getelementptr inbounds %struct.grib_accessor_class, ptr %152, i32 0, i32 39
  %153 = load ptr, ptr %make_clone, align 8, !tbaa !46
  %154 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %make_clone61 = getelementptr inbounds %struct.grib_accessor_class, ptr %154, i32 0, i32 39
  store ptr %153, ptr %make_clone61, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init(ptr noundef %a, i64 noundef %l, ptr noundef %args) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %l.addr = alloca i64, align 8
  %args.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %l, ptr %l.addr, align 8, !tbaa !47
  store ptr %args, ptr %args.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #3
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  %1 = load ptr, ptr %args.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %self, align 8, !tbaa !4
  %args1 = getelementptr inbounds %struct.grib_accessor_nearest, ptr %2, i32 0, i32 1
  store ptr %1, ptr %args1, align 8, !tbaa !10
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
  call void @grib_dump_label(ptr noundef %0, ptr noundef %1, ptr noundef null)
  ret void
}

declare void @grib_dump_label(ptr noundef, ptr noundef, ptr noundef) #2

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !5, i64 648}
!11 = !{!"grib_accessor_nearest", !12, i64 0, !5, i64 648}
!12 = !{!"grib_accessor", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !13, i64 40, !13, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !13, i64 88, !5, i64 96, !6, i64 104, !6, i64 264, !9, i64 424, !5, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !5, i64 464, !5, i64 472, !6, i64 480, !5, i64 640}
!13 = !{!"long", !6, i64 0}
!14 = !{!15, !5, i64 0}
!15 = !{!"grib_accessor_class", !5, i64 0, !5, i64 8, !13, i64 16, !9, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312}
!16 = !{!15, !5, i64 72}
!17 = !{!15, !5, i64 80}
!18 = !{!15, !5, i64 88}
!19 = !{!15, !5, i64 96}
!20 = !{!15, !5, i64 104}
!21 = !{!15, !5, i64 112}
!22 = !{!15, !5, i64 120}
!23 = !{!15, !5, i64 128}
!24 = !{!15, !5, i64 136}
!25 = !{!15, !5, i64 144}
!26 = !{!15, !5, i64 152}
!27 = !{!15, !5, i64 160}
!28 = !{!15, !5, i64 168}
!29 = !{!15, !5, i64 176}
!30 = !{!15, !5, i64 184}
!31 = !{!15, !5, i64 192}
!32 = !{!15, !5, i64 200}
!33 = !{!15, !5, i64 208}
!34 = !{!15, !5, i64 216}
!35 = !{!15, !5, i64 224}
!36 = !{!15, !5, i64 232}
!37 = !{!15, !5, i64 240}
!38 = !{!15, !5, i64 248}
!39 = !{!15, !5, i64 256}
!40 = !{!15, !5, i64 264}
!41 = !{!15, !5, i64 272}
!42 = !{!15, !5, i64 280}
!43 = !{!15, !5, i64 288}
!44 = !{!15, !5, i64 296}
!45 = !{!15, !5, i64 304}
!46 = !{!15, !5, i64 312}
!47 = !{!13, !13, i64 0}
