; ModuleID = 'samples/950.bc'
source_filename = "/local-ssd/eccodes-psuel4mgyciesdodvadhkap2g5cqhhyf-build/aidengro/spack-stage-eccodes-2.25.0-psuel4mgyciesdodvadhkap2g5cqhhyf/spack-src/src/grib_accessor_class_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grib_accessor_class = type { ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.grib_handle = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [10 x ptr], [10 x i64], i32, i32, i32, ptr, i64, i32, i32, [5000 x ptr], [12 x ptr], [12 x ptr], i32, i64, i64, i64, i64, double, i32 }
%struct.grib_accessor = type { ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, i64, ptr, [20 x ptr], [20 x ptr], i32, ptr, i64, i64, i64, ptr, ptr, [20 x ptr], ptr }
%struct.grib_accessor_group = type { %struct.grib_accessor, i8 }
%struct.grib_buffer = type { i32, i32, i32, i64, i64, i64, ptr }

@_grib_accessor_class_group = internal global %struct.grib_accessor_class { ptr @grib_accessor_class_gen, ptr @.str, i64 656, i32 0, ptr @init_class, ptr @init, ptr @post_init, ptr null, ptr @dump, ptr @next_offset, ptr @string_length, ptr @value_count, ptr null, ptr null, ptr @get_native_type, ptr null, ptr null, ptr null, ptr @pack_long, ptr @unpack_long, ptr @pack_double, ptr @unpack_double, ptr @pack_string, ptr @unpack_string, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @compare, ptr null, ptr null, ptr null, ptr null }, align 8
@grib_accessor_class_group = global ptr @_grib_accessor_class_group, align 8
@grib_accessor_class_gen = external global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Using only first character as group end of %s not the string %s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c" Should not pack %s as long\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c" Casting string %s to long\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c" Should not pack %s  as double\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"unpack_string: Wrong size (%lu) for %s it contains %ld values\00", align 1

; Function Attrs: nounwind uwtable
define internal void @init_class(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super = getelementptr inbounds %struct.grib_accessor_class, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %super, align 8, !tbaa !8
  %2 = load ptr, ptr %1, align 8, !tbaa !4
  %byte_count = getelementptr inbounds %struct.grib_accessor_class, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %byte_count, align 8, !tbaa !12
  %4 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %byte_count1 = getelementptr inbounds %struct.grib_accessor_class, ptr %4, i32 0, i32 12
  store ptr %3, ptr %byte_count1, align 8, !tbaa !12
  %5 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super2 = getelementptr inbounds %struct.grib_accessor_class, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %super2, align 8, !tbaa !8
  %7 = load ptr, ptr %6, align 8, !tbaa !4
  %byte_offset = getelementptr inbounds %struct.grib_accessor_class, ptr %7, i32 0, i32 13
  %8 = load ptr, ptr %byte_offset, align 8, !tbaa !13
  %9 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %byte_offset3 = getelementptr inbounds %struct.grib_accessor_class, ptr %9, i32 0, i32 13
  store ptr %8, ptr %byte_offset3, align 8, !tbaa !13
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
  %pack_string_array = getelementptr inbounds %struct.grib_accessor_class, ptr %27, i32 0, i32 24
  %28 = load ptr, ptr %pack_string_array, align 8, !tbaa !17
  %29 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_string_array11 = getelementptr inbounds %struct.grib_accessor_class, ptr %29, i32 0, i32 24
  store ptr %28, ptr %pack_string_array11, align 8, !tbaa !17
  %30 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super12 = getelementptr inbounds %struct.grib_accessor_class, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %super12, align 8, !tbaa !8
  %32 = load ptr, ptr %31, align 8, !tbaa !4
  %unpack_string_array = getelementptr inbounds %struct.grib_accessor_class, ptr %32, i32 0, i32 25
  %33 = load ptr, ptr %unpack_string_array, align 8, !tbaa !18
  %34 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_string_array13 = getelementptr inbounds %struct.grib_accessor_class, ptr %34, i32 0, i32 25
  store ptr %33, ptr %unpack_string_array13, align 8, !tbaa !18
  %35 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super14 = getelementptr inbounds %struct.grib_accessor_class, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %super14, align 8, !tbaa !8
  %37 = load ptr, ptr %36, align 8, !tbaa !4
  %pack_bytes = getelementptr inbounds %struct.grib_accessor_class, ptr %37, i32 0, i32 26
  %38 = load ptr, ptr %pack_bytes, align 8, !tbaa !19
  %39 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_bytes15 = getelementptr inbounds %struct.grib_accessor_class, ptr %39, i32 0, i32 26
  store ptr %38, ptr %pack_bytes15, align 8, !tbaa !19
  %40 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super16 = getelementptr inbounds %struct.grib_accessor_class, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %super16, align 8, !tbaa !8
  %42 = load ptr, ptr %41, align 8, !tbaa !4
  %unpack_bytes = getelementptr inbounds %struct.grib_accessor_class, ptr %42, i32 0, i32 27
  %43 = load ptr, ptr %unpack_bytes, align 8, !tbaa !20
  %44 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_bytes17 = getelementptr inbounds %struct.grib_accessor_class, ptr %44, i32 0, i32 27
  store ptr %43, ptr %unpack_bytes17, align 8, !tbaa !20
  %45 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super18 = getelementptr inbounds %struct.grib_accessor_class, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %super18, align 8, !tbaa !8
  %47 = load ptr, ptr %46, align 8, !tbaa !4
  %pack_expression = getelementptr inbounds %struct.grib_accessor_class, ptr %47, i32 0, i32 28
  %48 = load ptr, ptr %pack_expression, align 8, !tbaa !21
  %49 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %pack_expression19 = getelementptr inbounds %struct.grib_accessor_class, ptr %49, i32 0, i32 28
  store ptr %48, ptr %pack_expression19, align 8, !tbaa !21
  %50 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super20 = getelementptr inbounds %struct.grib_accessor_class, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %super20, align 8, !tbaa !8
  %52 = load ptr, ptr %51, align 8, !tbaa !4
  %notify_change = getelementptr inbounds %struct.grib_accessor_class, ptr %52, i32 0, i32 29
  %53 = load ptr, ptr %notify_change, align 8, !tbaa !22
  %54 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %notify_change21 = getelementptr inbounds %struct.grib_accessor_class, ptr %54, i32 0, i32 29
  store ptr %53, ptr %notify_change21, align 8, !tbaa !22
  %55 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super22 = getelementptr inbounds %struct.grib_accessor_class, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %super22, align 8, !tbaa !8
  %57 = load ptr, ptr %56, align 8, !tbaa !4
  %update_size = getelementptr inbounds %struct.grib_accessor_class, ptr %57, i32 0, i32 30
  %58 = load ptr, ptr %update_size, align 8, !tbaa !23
  %59 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %update_size23 = getelementptr inbounds %struct.grib_accessor_class, ptr %59, i32 0, i32 30
  store ptr %58, ptr %update_size23, align 8, !tbaa !23
  %60 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super24 = getelementptr inbounds %struct.grib_accessor_class, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %super24, align 8, !tbaa !8
  %62 = load ptr, ptr %61, align 8, !tbaa !4
  %preferred_size = getelementptr inbounds %struct.grib_accessor_class, ptr %62, i32 0, i32 31
  %63 = load ptr, ptr %preferred_size, align 8, !tbaa !24
  %64 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %preferred_size25 = getelementptr inbounds %struct.grib_accessor_class, ptr %64, i32 0, i32 31
  store ptr %63, ptr %preferred_size25, align 8, !tbaa !24
  %65 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super26 = getelementptr inbounds %struct.grib_accessor_class, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %super26, align 8, !tbaa !8
  %67 = load ptr, ptr %66, align 8, !tbaa !4
  %resize = getelementptr inbounds %struct.grib_accessor_class, ptr %67, i32 0, i32 32
  %68 = load ptr, ptr %resize, align 8, !tbaa !25
  %69 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %resize27 = getelementptr inbounds %struct.grib_accessor_class, ptr %69, i32 0, i32 32
  store ptr %68, ptr %resize27, align 8, !tbaa !25
  %70 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super28 = getelementptr inbounds %struct.grib_accessor_class, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %super28, align 8, !tbaa !8
  %72 = load ptr, ptr %71, align 8, !tbaa !4
  %nearest_smaller_value = getelementptr inbounds %struct.grib_accessor_class, ptr %72, i32 0, i32 33
  %73 = load ptr, ptr %nearest_smaller_value, align 8, !tbaa !26
  %74 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %nearest_smaller_value29 = getelementptr inbounds %struct.grib_accessor_class, ptr %74, i32 0, i32 33
  store ptr %73, ptr %nearest_smaller_value29, align 8, !tbaa !26
  %75 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super30 = getelementptr inbounds %struct.grib_accessor_class, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %super30, align 8, !tbaa !8
  %77 = load ptr, ptr %76, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.grib_accessor_class, ptr %77, i32 0, i32 34
  %78 = load ptr, ptr %next, align 8, !tbaa !27
  %79 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %next31 = getelementptr inbounds %struct.grib_accessor_class, ptr %79, i32 0, i32 34
  store ptr %78, ptr %next31, align 8, !tbaa !27
  %80 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super32 = getelementptr inbounds %struct.grib_accessor_class, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %super32, align 8, !tbaa !8
  %82 = load ptr, ptr %81, align 8, !tbaa !4
  %unpack_double_element = getelementptr inbounds %struct.grib_accessor_class, ptr %82, i32 0, i32 36
  %83 = load ptr, ptr %unpack_double_element, align 8, !tbaa !28
  %84 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double_element33 = getelementptr inbounds %struct.grib_accessor_class, ptr %84, i32 0, i32 36
  store ptr %83, ptr %unpack_double_element33, align 8, !tbaa !28
  %85 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super34 = getelementptr inbounds %struct.grib_accessor_class, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %super34, align 8, !tbaa !8
  %87 = load ptr, ptr %86, align 8, !tbaa !4
  %unpack_double_subarray = getelementptr inbounds %struct.grib_accessor_class, ptr %87, i32 0, i32 37
  %88 = load ptr, ptr %unpack_double_subarray, align 8, !tbaa !29
  %89 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %unpack_double_subarray35 = getelementptr inbounds %struct.grib_accessor_class, ptr %89, i32 0, i32 37
  store ptr %88, ptr %unpack_double_subarray35, align 8, !tbaa !29
  %90 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super36 = getelementptr inbounds %struct.grib_accessor_class, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %super36, align 8, !tbaa !8
  %92 = load ptr, ptr %91, align 8, !tbaa !4
  %clear = getelementptr inbounds %struct.grib_accessor_class, ptr %92, i32 0, i32 38
  %93 = load ptr, ptr %clear, align 8, !tbaa !30
  %94 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %clear37 = getelementptr inbounds %struct.grib_accessor_class, ptr %94, i32 0, i32 38
  store ptr %93, ptr %clear37, align 8, !tbaa !30
  %95 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %super38 = getelementptr inbounds %struct.grib_accessor_class, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %super38, align 8, !tbaa !8
  %97 = load ptr, ptr %96, align 8, !tbaa !4
  %make_clone = getelementptr inbounds %struct.grib_accessor_class, ptr %97, i32 0, i32 39
  %98 = load ptr, ptr %make_clone, align 8, !tbaa !31
  %99 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %make_clone39 = getelementptr inbounds %struct.grib_accessor_class, ptr %99, i32 0, i32 39
  store ptr %98, ptr %make_clone39, align 8, !tbaa !31
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init(ptr noundef %a, i64 noundef %len, ptr noundef %arg) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %arg.addr = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %self = alloca ptr, align 8
  %i = alloca i64, align 8
  %v = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !32
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call ptr @grib_handle_of_accessor(ptr noundef %0)
  %buffer1 = getelementptr inbounds %struct.grib_handle, ptr %call, i32 0, i32 1
  %1 = load ptr, ptr %buffer1, align 8, !tbaa !33
  store ptr %1, ptr %buffer, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #6
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %2, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6
  store i64 0, ptr %i, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call2 = call ptr @grib_handle_of_accessor(ptr noundef %3)
  %4 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call3 = call ptr @grib_arguments_get_string(ptr noundef %call2, ptr noundef %4, i32 noundef 0)
  store ptr %call3, ptr %s, align 8, !tbaa !4
  %5 = load ptr, ptr %s, align 8, !tbaa !4
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %s, align 8, !tbaa !4
  %call4 = call i64 @strlen(ptr noundef %6) #7
  %cmp = icmp ugt i64 %call4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %context, align 8, !tbaa !36
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_accessor, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %name, align 8, !tbaa !38
  %11 = load ptr, ptr %s, align 8, !tbaa !4
  call void (ptr, i32, ptr, ...) @grib_context_log(ptr noundef %8, i32 noundef 1, ptr noundef @.str.1, ptr noundef %10, ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load ptr, ptr %s, align 8, !tbaa !4
  %tobool5 = icmp ne ptr %12, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load ptr, ptr %s, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx, align 1, !tbaa !39
  %conv = sext i8 %14 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ]
  %conv6 = trunc i32 %cond to i8
  %15 = load ptr, ptr %self, align 8, !tbaa !4
  %endCharacter = getelementptr inbounds %struct.grib_accessor_group, ptr %15, i32 0, i32 1
  store i8 %conv6, ptr %endCharacter, align 8, !tbaa !40
  %16 = load ptr, ptr %buffer, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.grib_buffer, ptr %16, i32 0, i32 6
  %17 = load ptr, ptr %data, align 8, !tbaa !42
  %18 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %offset = getelementptr inbounds %struct.grib_accessor, ptr %18, i32 0, i32 6
  %19 = load i64, ptr %offset, align 8, !tbaa !44
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %19
  store ptr %add.ptr, ptr %v, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !32
  %20 = load ptr, ptr %s, align 8, !tbaa !4
  %tobool7 = icmp ne ptr %20, null
  br i1 %tobool7, label %if.then8, label %if.else

if.then8:                                         ; preds = %cond.end
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %if.then8
  %21 = load ptr, ptr %v, align 8, !tbaa !4
  %22 = load i8, ptr %21, align 1, !tbaa !39
  %conv9 = zext i8 %22 to i32
  %23 = load ptr, ptr %self, align 8, !tbaa !4
  %endCharacter10 = getelementptr inbounds %struct.grib_accessor_group, ptr %23, i32 0, i32 1
  %24 = load i8, ptr %endCharacter10, align 8, !tbaa !40
  %conv11 = sext i8 %24 to i32
  %cmp12 = icmp ne i32 %conv9, %conv11
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %25 = load i64, ptr %i, align 8, !tbaa !32
  %26 = load ptr, ptr %buffer, align 8, !tbaa !4
  %ulength = getelementptr inbounds %struct.grib_buffer, ptr %26, i32 0, i32 4
  %27 = load i64, ptr %ulength, align 8, !tbaa !45
  %cmp14 = icmp ule i64 %25, %27
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %28 = phi i1 [ false, %while.cond ], [ %cmp14, %land.rhs ]
  br i1 %28, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %29 = load ptr, ptr %v, align 8, !tbaa !4
  %30 = load i8, ptr %29, align 1, !tbaa !39
  %conv16 = zext i8 %30 to i32
  %cmp17 = icmp sgt i32 %conv16, 126
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %while.body
  %31 = load ptr, ptr %v, align 8, !tbaa !4
  store i8 32, ptr %31, align 1, !tbaa !39
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %while.body
  %32 = load ptr, ptr %v, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr, ptr %v, align 8, !tbaa !4
  %33 = load i64, ptr %i, align 8, !tbaa !32
  %inc = add i64 %33, 1
  store i64 %inc, ptr %i, align 8, !tbaa !32
  br label %while.cond, !llvm.loop !46

while.end:                                        ; preds = %land.end
  br label %if.end42

if.else:                                          ; preds = %cond.end
  br label %while.cond21

while.cond21:                                     ; preds = %while.body38, %if.else
  %34 = load ptr, ptr %v, align 8, !tbaa !4
  %35 = load i8, ptr %34, align 1, !tbaa !39
  %conv22 = zext i8 %35 to i32
  %cmp23 = icmp sgt i32 %conv22, 32
  br i1 %cmp23, label %land.lhs.true25, label %land.end37

land.lhs.true25:                                  ; preds = %while.cond21
  %36 = load ptr, ptr %v, align 8, !tbaa !4
  %37 = load i8, ptr %36, align 1, !tbaa !39
  %conv26 = zext i8 %37 to i32
  %cmp27 = icmp ne i32 %conv26, 61
  br i1 %cmp27, label %land.lhs.true29, label %land.end37

land.lhs.true29:                                  ; preds = %land.lhs.true25
  %38 = load ptr, ptr %v, align 8, !tbaa !4
  %39 = load i8, ptr %38, align 1, !tbaa !39
  %conv30 = zext i8 %39 to i32
  %cmp31 = icmp slt i32 %conv30, 127
  br i1 %cmp31, label %land.rhs33, label %land.end37

land.rhs33:                                       ; preds = %land.lhs.true29
  %40 = load i64, ptr %i, align 8, !tbaa !32
  %41 = load ptr, ptr %buffer, align 8, !tbaa !4
  %ulength34 = getelementptr inbounds %struct.grib_buffer, ptr %41, i32 0, i32 4
  %42 = load i64, ptr %ulength34, align 8, !tbaa !45
  %cmp35 = icmp ule i64 %40, %42
  br label %land.end37

land.end37:                                       ; preds = %land.rhs33, %land.lhs.true29, %land.lhs.true25, %while.cond21
  %43 = phi i1 [ false, %land.lhs.true29 ], [ false, %land.lhs.true25 ], [ false, %while.cond21 ], [ %cmp35, %land.rhs33 ]
  br i1 %43, label %while.body38, label %while.end41

while.body38:                                     ; preds = %land.end37
  %44 = load ptr, ptr %v, align 8, !tbaa !4
  %incdec.ptr39 = getelementptr inbounds i8, ptr %44, i32 1
  store ptr %incdec.ptr39, ptr %v, align 8, !tbaa !4
  %45 = load i64, ptr %i, align 8, !tbaa !32
  %inc40 = add i64 %45, 1
  store i64 %inc40, ptr %i, align 8, !tbaa !32
  br label %while.cond21, !llvm.loop !48

while.end41:                                      ; preds = %land.end37
  br label %if.end42

if.end42:                                         ; preds = %while.end41, %while.end
  %46 = load i64, ptr %i, align 8, !tbaa !32
  %47 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.grib_accessor, ptr %47, i32 0, i32 5
  store i64 %46, ptr %length, align 8, !tbaa !49
  %48 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.grib_accessor, ptr %48, i32 0, i32 11
  %49 = load i64, ptr %flags, align 8, !tbaa !50
  %or = or i64 %49, 2
  store i64 %or, ptr %flags, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @post_init(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
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
  call void @grib_dump_string(ptr noundef %0, ptr noundef %1, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @next_offset(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %offset = getelementptr inbounds %struct.grib_accessor, ptr %0, i32 0, i32 6
  %1 = load i64, ptr %offset, align 8, !tbaa !44
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.grib_accessor, ptr %2, i32 0, i32 5
  %3 = load i64, ptr %length, align 8, !tbaa !49
  %add = add nsw i64 %1, %3
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define internal i64 @string_length(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.grib_accessor, ptr %0, i32 0, i32 5
  %1 = load i64, ptr %length, align 8, !tbaa !49
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @value_count(ptr noundef %a, ptr noundef %count) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %count.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %count, ptr %count.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %count.addr, align 8, !tbaa !4
  store i64 1, ptr %0, align 8, !tbaa !32
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @get_native_type(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal i32 @pack_long(ptr noundef %a, ptr noundef %v, ptr noundef %len) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %context, align 8, !tbaa !36
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_accessor, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %name, align 8, !tbaa !38
  call void (ptr, i32, ptr, ...) @grib_context_log(ptr noundef %1, i32 noundef 2, ptr noundef @.str.2, ptr noundef %3)
  ret i32 -4
}

; Function Attrs: nounwind uwtable
define internal i32 @unpack_long(ptr noundef %a, ptr noundef %v, ptr noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %val = alloca [1024 x i8], align 16
  %l = alloca i64, align 8
  %i = alloca i64, align 8
  %last = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1024, ptr %val) #6
  call void @llvm.memset.p0.i64(ptr align 16 %val, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #6
  store i64 1024, ptr %l, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6
  store i64 0, ptr %i, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #6
  store ptr null, ptr %last, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 0
  %call = call i32 @grib_unpack_string(ptr noundef %0, ptr noundef %arraydecay, ptr noundef %l)
  store i32 %call, ptr %err, align 4, !tbaa !51
  %1 = load i32, ptr %err, align 4, !tbaa !51
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !tbaa !51
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i64 0, ptr %i, align 8, !tbaa !32
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i64, ptr %i, align 8, !tbaa !32
  %4 = load i64, ptr %l, align 8, !tbaa !32
  %sub = sub i64 %4, 1
  %cmp = icmp ult i64 %3, %sub
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i64, ptr %i, align 8, !tbaa !32
  %arrayidx = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 %5
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !39
  %conv = sext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i64, ptr %i, align 8, !tbaa !32
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !32
  br label %while.cond, !llvm.loop !52

while.end:                                        ; preds = %land.end
  %9 = load i64, ptr %i, align 8, !tbaa !32
  %arrayidx3 = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 %9
  %10 = load i8, ptr %arrayidx3, align 1, !tbaa !39
  %conv4 = sext i8 %10 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %while.end
  %11 = load ptr, ptr %v.addr, align 8, !tbaa !4
  store i64 0, ptr %11, align 8, !tbaa !32
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %while.end
  %12 = load i64, ptr %i, align 8, !tbaa !32
  %add = add i64 %12, 1
  %arrayidx9 = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 %add
  %13 = load i8, ptr %arrayidx9, align 1, !tbaa !39
  %conv10 = sext i8 %13 to i32
  %cmp11 = icmp eq i32 %conv10, 32
  br i1 %cmp11, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end8
  %14 = load i64, ptr %i, align 8, !tbaa !32
  %15 = load i64, ptr %l, align 8, !tbaa !32
  %sub13 = sub i64 %15, 2
  %cmp14 = icmp ult i64 %14, %sub13
  br i1 %cmp14, label %if.then16, label %if.end19

if.then16:                                        ; preds = %land.lhs.true
  %16 = load i64, ptr %i, align 8, !tbaa !32
  %add17 = add i64 %16, 1
  %arrayidx18 = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 %add17
  store i8 0, ptr %arrayidx18, align 1, !tbaa !39
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %land.lhs.true, %if.end8
  %arraydecay20 = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 0
  %call21 = call i64 @strtol(ptr noundef %arraydecay20, ptr noundef %last, i32 noundef 10) #6
  %17 = load ptr, ptr %v.addr, align 8, !tbaa !4
  store i64 %call21, ptr %17, align 8, !tbaa !32
  %18 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %context, align 8, !tbaa !36
  %20 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_accessor, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %name, align 8, !tbaa !38
  call void (ptr, i32, ptr, ...) @grib_context_log(ptr noundef %19, i32 noundef 4, ptr noundef @.str.3, ptr noundef %21)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #6
  call void @llvm.lifetime.end.p0(i64 1024, ptr %val) #6
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @pack_double(ptr noundef %a, ptr noundef %v, ptr noundef %len) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %context, align 8, !tbaa !36
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_accessor, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %name, align 8, !tbaa !38
  call void (ptr, i32, ptr, ...) @grib_context_log(ptr noundef %1, i32 noundef 2, ptr noundef @.str.4, ptr noundef %3)
  ret i32 -4
}

; Function Attrs: nounwind uwtable
define internal i32 @unpack_double(ptr noundef %a, ptr noundef %v, ptr noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %val = alloca [1024 x i8], align 16
  %l = alloca i64, align 8
  %last = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1024, ptr %val) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #6
  store i64 1024, ptr %l, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #6
  store ptr null, ptr %last, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 0
  %call = call i32 @grib_unpack_string(ptr noundef %0, ptr noundef %arraydecay, ptr noundef %l)
  %arraydecay1 = getelementptr inbounds [1024 x i8], ptr %val, i64 0, i64 0
  %call2 = call double @strtod(ptr noundef %arraydecay1, ptr noundef %last) #6
  %1 = load ptr, ptr %v.addr, align 8, !tbaa !4
  store double %call2, ptr %1, align 8, !tbaa !53
  %2 = load ptr, ptr %last, align 8, !tbaa !4
  %3 = load i8, ptr %2, align 1, !tbaa !39
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %context, align 8, !tbaa !36
  %6 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_accessor, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %name, align 8, !tbaa !38
  call void (ptr, i32, ptr, ...) @grib_context_log(ptr noundef %5, i32 noundef 4, ptr noundef @.str.3, ptr noundef %7)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #6
  call void @llvm.lifetime.end.p0(i64 1024, ptr %val) #6
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
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
  ret i32 -4
}

; Function Attrs: nounwind uwtable
define internal i32 @unpack_string(ptr noundef %a, ptr noundef %val, ptr noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4, !tbaa !51
  %0 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i64, ptr %0, i64 0
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !32
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.grib_accessor, ptr %2, i32 0, i32 5
  %3 = load i64, ptr %length, align 8, !tbaa !49
  %add = add nsw i64 %3, 1
  %cmp = icmp ult i64 %1, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %context, align 8, !tbaa !36
  %6 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds i64, ptr %6, i64 0
  %7 = load i64, ptr %arrayidx1, align 8, !tbaa !32
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_accessor, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %name, align 8, !tbaa !38
  %10 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %length2 = getelementptr inbounds %struct.grib_accessor, ptr %10, i32 0, i32 5
  %11 = load i64, ptr %length2, align 8, !tbaa !49
  %add3 = add nsw i64 %11, 1
  call void (ptr, i32, ptr, ...) @grib_context_log(ptr noundef %5, i32 noundef 2, ptr noundef @.str.5, i64 noundef %7, ptr noundef %9, i64 noundef %add3)
  %12 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds i64, ptr %12, i64 0
  store i64 0, ptr %arrayidx4, align 8, !tbaa !32
  store i32 -6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !51
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, ptr %i, align 4, !tbaa !51
  %conv = sext i32 %13 to i64
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %length5 = getelementptr inbounds %struct.grib_accessor, ptr %14, i32 0, i32 5
  %15 = load i64, ptr %length5, align 8, !tbaa !49
  %cmp6 = icmp slt i64 %conv, %15
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call ptr @grib_handle_of_accessor(ptr noundef %16)
  %buffer = getelementptr inbounds %struct.grib_handle, ptr %call, i32 0, i32 1
  %17 = load ptr, ptr %buffer, align 8, !tbaa !33
  %data = getelementptr inbounds %struct.grib_buffer, ptr %17, i32 0, i32 6
  %18 = load ptr, ptr %data, align 8, !tbaa !42
  %19 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %offset = getelementptr inbounds %struct.grib_accessor, ptr %19, i32 0, i32 6
  %20 = load i64, ptr %offset, align 8, !tbaa !44
  %21 = load i32, ptr %i, align 4, !tbaa !51
  %conv8 = sext i32 %21 to i64
  %add9 = add nsw i64 %20, %conv8
  %arrayidx10 = getelementptr inbounds i8, ptr %18, i64 %add9
  %22 = load i8, ptr %arrayidx10, align 1, !tbaa !39
  %23 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %24 = load i32, ptr %i, align 4, !tbaa !51
  %idxprom = sext i32 %24 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %23, i64 %idxprom
  store i8 %22, ptr %arrayidx11, align 1, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, ptr %i, align 4, !tbaa !51
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %i, align 4, !tbaa !51
  br label %for.cond, !llvm.loop !54

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %27 = load i32, ptr %i, align 4, !tbaa !51
  %idxprom12 = sext i32 %27 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %26, i64 %idxprom12
  store i8 0, ptr %arrayidx13, align 1, !tbaa !39
  %28 = load i32, ptr %i, align 4, !tbaa !51
  %conv14 = sext i32 %28 to i64
  %29 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds i64, ptr %29, i64 0
  store i64 %conv14, ptr %arrayidx15, align 8, !tbaa !32
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
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
  %err = alloca i32, align 4
  %alen = alloca i64, align 8
  %blen = alloca i64, align 8
  %count = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #6
  store i32 0, ptr %retval1, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr %aval) #6
  store ptr null, ptr %aval, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bval) #6
  store ptr null, ptr %bval, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6
  store i32 0, ptr %err, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr %alen) #6
  store i64 0, ptr %alen, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %blen) #6
  store i64 0, ptr %blen, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #6
  store i64 0, ptr %count, align 8, !tbaa !32
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call i32 @grib_value_count(ptr noundef %0, ptr noundef %count)
  store i32 %call, ptr %err, align 4, !tbaa !51
  %1 = load i32, ptr %err, align 4, !tbaa !51
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !tbaa !51
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %count, align 8, !tbaa !32
  store i64 %3, ptr %alen, align 8, !tbaa !32
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %call2 = call i32 @grib_value_count(ptr noundef %4, ptr noundef %count)
  store i32 %call2, ptr %err, align 4, !tbaa !51
  %5 = load i32, ptr %err, align 4, !tbaa !51
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %6 = load i32, ptr %err, align 4, !tbaa !51
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = load i64, ptr %count, align 8, !tbaa !32
  store i64 %7, ptr %blen, align 8, !tbaa !32
  %8 = load i64, ptr %alen, align 8, !tbaa !32
  %9 = load i64, ptr %blen, align 8, !tbaa !32
  %cmp = icmp ne i64 %8, %9
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end5
  store i32 7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %10 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_accessor, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %context, align 8, !tbaa !36
  %12 = load i64, ptr %alen, align 8, !tbaa !32
  %mul = mul i64 %12, 1
  %call8 = call ptr @grib_context_malloc(ptr noundef %11, i64 noundef %mul)
  store ptr %call8, ptr %aval, align 8, !tbaa !4
  %13 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %context9 = getelementptr inbounds %struct.grib_accessor, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %context9, align 8, !tbaa !36
  %15 = load i64, ptr %blen, align 8, !tbaa !32
  %mul10 = mul i64 %15, 1
  %call11 = call ptr @grib_context_malloc(ptr noundef %14, i64 noundef %mul10)
  store ptr %call11, ptr %bval, align 8, !tbaa !4
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %aval, align 8, !tbaa !4
  %call12 = call i32 @grib_unpack_string(ptr noundef %16, ptr noundef %17, ptr noundef %alen)
  %18 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %bval, align 8, !tbaa !4
  %call13 = call i32 @grib_unpack_string(ptr noundef %18, ptr noundef %19, ptr noundef %blen)
  store i32 0, ptr %retval1, align 4, !tbaa !51
  %20 = load ptr, ptr %aval, align 8, !tbaa !4
  %21 = load ptr, ptr %bval, align 8, !tbaa !4
  %call14 = call i32 @strcmp(ptr noundef %20, ptr noundef %21) #7
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end7
  store i32 5, ptr %retval1, align 4, !tbaa !51
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end7
  %22 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %context18 = getelementptr inbounds %struct.grib_accessor, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %context18, align 8, !tbaa !36
  %24 = load ptr, ptr %aval, align 8, !tbaa !4
  call void @grib_context_free(ptr noundef %23, ptr noundef %24)
  %25 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %context19 = getelementptr inbounds %struct.grib_accessor, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %context19, align 8, !tbaa !36
  %27 = load ptr, ptr %bval, align 8, !tbaa !4
  call void @grib_context_free(ptr noundef %26, ptr noundef %27)
  %28 = load i32, ptr %retval1, align 4, !tbaa !51
  store i32 %28, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %blen) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %alen) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %bval) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %aval) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #6
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @grib_handle_of_accessor(ptr noundef) #2

declare ptr @grib_arguments_get_string(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare void @grib_context_log(ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @grib_dump_string(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @grib_unpack_string(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nounwind
declare double @strtod(ptr noundef, ptr noundef) #5

declare i32 @grib_value_count(ptr noundef, ptr noundef) #2

declare ptr @grib_context_malloc(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

declare void @grib_context_free(ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!12 = !{!9, !5, i64 96}
!13 = !{!9, !5, i64 104}
!14 = !{!9, !5, i64 120}
!15 = !{!9, !5, i64 128}
!16 = !{!9, !5, i64 136}
!17 = !{!9, !5, i64 192}
!18 = !{!9, !5, i64 200}
!19 = !{!9, !5, i64 208}
!20 = !{!9, !5, i64 216}
!21 = !{!9, !5, i64 224}
!22 = !{!9, !5, i64 232}
!23 = !{!9, !5, i64 240}
!24 = !{!9, !5, i64 248}
!25 = !{!9, !5, i64 256}
!26 = !{!9, !5, i64 264}
!27 = !{!9, !5, i64 272}
!28 = !{!9, !5, i64 288}
!29 = !{!9, !5, i64 296}
!30 = !{!9, !5, i64 304}
!31 = !{!9, !5, i64 312}
!32 = !{!10, !10, i64 0}
!33 = !{!34, !5, i64 8}
!34 = !{!"grib_handle", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !11, i64 72, !6, i64 80, !6, i64 160, !11, i64 240, !11, i64 244, !11, i64 248, !5, i64 256, !10, i64 264, !11, i64 272, !11, i64 276, !6, i64 280, !6, i64 40280, !6, i64 40376, !11, i64 40472, !10, i64 40480, !10, i64 40488, !10, i64 40496, !10, i64 40504, !35, i64 40512, !6, i64 40520}
!35 = !{!"double", !6, i64 0}
!36 = !{!37, !5, i64 16}
!37 = !{!"grib_accessor", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40, !10, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !10, i64 88, !5, i64 96, !6, i64 104, !6, i64 264, !11, i64 424, !5, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !5, i64 464, !5, i64 472, !6, i64 480, !5, i64 640}
!38 = !{!37, !5, i64 0}
!39 = !{!6, !6, i64 0}
!40 = !{!41, !6, i64 648}
!41 = !{!"grib_accessor_group", !37, i64 0, !6, i64 648}
!42 = !{!43, !5, i64 40}
!43 = !{!"grib_buffer", !11, i64 0, !11, i64 4, !11, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40}
!44 = !{!37, !10, i64 48}
!45 = !{!43, !10, i64 24}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{!48, !47}
!49 = !{!37, !10, i64 40}
!50 = !{!37, !10, i64 88}
!51 = !{!11, !11, i64 0}
!52 = distinct !{!52, !47}
!53 = !{!35, !35, i64 0}
!54 = distinct !{!54, !47}
