; ModuleID = 'samples/908.bc'
source_filename = "/local-ssd/eccodes-psuel4mgyciesdodvadhkap2g5cqhhyf-build/aidengro/spack-stage-eccodes-2.25.0-psuel4mgyciesdodvadhkap2g5cqhhyf/spack-src/src/eccodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define ptr @codes_samples_path(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call = call ptr @grib_samples_path(ptr noundef %0)
  ret ptr %call
}

declare ptr @grib_samples_path(ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_definition_path(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call = call ptr @grib_definition_path(ptr noundef %0)
  ret ptr %call
}

declare ptr @grib_definition_path(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i64 @codes_get_api_version() #0 {
entry:
  %call = call i64 @grib_get_api_version()
  ret i64 %call
}

declare i64 @grib_get_api_version() #1

; Function Attrs: nounwind uwtable
define ptr @codes_get_git_sha1() #0 {
entry:
  %call = call ptr @grib_get_git_sha1()
  ret ptr %call
}

declare ptr @grib_get_git_sha1() #1

; Function Attrs: nounwind uwtable
define ptr @codes_get_package_name() #0 {
entry:
  %call = call ptr @grib_get_package_name()
  ret ptr %call
}

declare ptr @grib_get_package_name() #1

; Function Attrs: nounwind uwtable
define void @codes_print_api_version(ptr noundef %out) #0 {
entry:
  %out.addr = alloca ptr, align 8
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %out.addr, align 8, !tbaa !4
  call void @grib_print_api_version(ptr noundef %0)
  ret void
}

declare void @grib_print_api_version(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_count_in_file(ptr noundef %c, ptr noundef %f, ptr noundef %n) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %call = call i32 @grib_count_in_file(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_count_in_file(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_count_in_filename(ptr noundef %c, ptr noundef %filename, ptr noundef %n) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %call = call i32 @grib_count_in_filename(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_count_in_filename(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_context_get_default() #0 {
entry:
  %call = call ptr @grib_context_get_default()
  ret ptr %call
}

declare ptr @grib_context_get_default() #1

; Function Attrs: nounwind uwtable
define ptr @codes_get_error_message(i32 noundef %code) #0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, ptr %code.addr, align 4, !tbaa !8
  %0 = load i32, ptr %code.addr, align 4, !tbaa !8
  %call = call ptr @grib_get_error_message(i32 noundef %0)
  ret ptr %call
}

declare ptr @grib_get_error_message(i32 noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_get_type_name(i32 noundef %type) #0 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4, !tbaa !8
  %0 = load i32, ptr %type.addr, align 4, !tbaa !8
  %call = call ptr @grib_get_type_name(i32 noundef %0)
  ret ptr %call
}

declare ptr @grib_get_type_name(i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_get_native_type(ptr noundef %h, ptr noundef %name, ptr noundef %type) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store ptr %type, ptr %type.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %type.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_native_type(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_get_native_type(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @codes_check(ptr noundef %call, ptr noundef %file, i32 noundef %line, i32 noundef %e, ptr noundef %msg) #0 {
entry:
  %call.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %e.addr = alloca i32, align 4
  %msg.addr = alloca ptr, align 8
  store ptr %call, ptr %call.addr, align 8, !tbaa !4
  store ptr %file, ptr %file.addr, align 8, !tbaa !4
  store i32 %line, ptr %line.addr, align 4, !tbaa !8
  store i32 %e, ptr %e.addr, align 4, !tbaa !8
  store ptr %msg, ptr %msg.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %call.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %2 = load i32, ptr %line.addr, align 4, !tbaa !8
  %3 = load i32, ptr %e.addr, align 4, !tbaa !8
  %4 = load ptr, ptr %msg.addr, align 8, !tbaa !4
  call void @grib_check(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  ret void
}

declare void @grib_check(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_fieldset_new_from_files(ptr noundef %c, ptr noundef %filenames, i32 noundef %nfiles, ptr noundef %keys, i32 noundef %nkeys, ptr noundef %where_string, ptr noundef %order_by_string, ptr noundef %err) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %filenames.addr = alloca ptr, align 8
  %nfiles.addr = alloca i32, align 4
  %keys.addr = alloca ptr, align 8
  %nkeys.addr = alloca i32, align 4
  %where_string.addr = alloca ptr, align 8
  %order_by_string.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %filenames, ptr %filenames.addr, align 8, !tbaa !4
  store i32 %nfiles, ptr %nfiles.addr, align 4, !tbaa !8
  store ptr %keys, ptr %keys.addr, align 8, !tbaa !4
  store i32 %nkeys, ptr %nkeys.addr, align 4, !tbaa !8
  store ptr %where_string, ptr %where_string.addr, align 8, !tbaa !4
  store ptr %order_by_string, ptr %order_by_string.addr, align 8, !tbaa !4
  store ptr %err, ptr %err.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %filenames.addr, align 8, !tbaa !4
  %2 = load i32, ptr %nfiles.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %4 = load i32, ptr %nkeys.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %where_string.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %order_by_string.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %call = call ptr @grib_fieldset_new_from_files(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  ret ptr %call
}

declare ptr @grib_fieldset_new_from_files(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @codes_fieldset_delete(ptr noundef %set) #0 {
entry:
  %set.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %set.addr, align 8, !tbaa !4
  call void @grib_fieldset_delete(ptr noundef %0)
  ret void
}

declare void @grib_fieldset_delete(ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @codes_fieldset_rewind(ptr noundef %set) #0 {
entry:
  %set.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %set.addr, align 8, !tbaa !4
  call void @grib_fieldset_rewind(ptr noundef %0)
  ret void
}

declare void @grib_fieldset_rewind(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_fieldset_apply_order_by(ptr noundef %set, ptr noundef %order_by_string) #0 {
entry:
  %set.addr = alloca ptr, align 8
  %order_by_string.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8, !tbaa !4
  store ptr %order_by_string, ptr %order_by_string.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %set.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %order_by_string.addr, align 8, !tbaa !4
  %call = call i32 @grib_fieldset_apply_order_by(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @grib_fieldset_apply_order_by(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_fieldset_next_handle(ptr noundef %set, ptr noundef %err) #0 {
entry:
  %set.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8, !tbaa !4
  store ptr %err, ptr %err.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %set.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %call = call ptr @grib_fieldset_next_handle(ptr noundef %0, ptr noundef %1)
  ret ptr %call
}

declare ptr @grib_fieldset_next_handle(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_fieldset_count(ptr noundef %set) #0 {
entry:
  %set.addr = alloca ptr, align 8
  store ptr %set, ptr %set.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %set.addr, align 8, !tbaa !4
  %call = call i32 @grib_fieldset_count(ptr noundef %0)
  ret i32 %call
}

declare i32 @grib_fieldset_count(ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_index_new_from_file(ptr noundef %c, ptr noundef %filename, ptr noundef %keys, ptr noundef %err) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %keys.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !4
  store ptr %keys, ptr %keys.addr, align 8, !tbaa !4
  store ptr %err, ptr %err.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %call = call ptr @grib_index_new_from_file(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %call
}

declare ptr @grib_index_new_from_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_index_new(ptr noundef %c, ptr noundef %keys, ptr noundef %err) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %keys.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %keys, ptr %keys.addr, align 8, !tbaa !4
  store ptr %err, ptr %err.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %call = call ptr @grib_index_new(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret ptr %call
}

declare ptr @grib_index_new(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_index_add_file(ptr noundef %index, ptr noundef %filename) #0 {
entry:
  %index.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  store ptr %index, ptr %index.addr, align 8, !tbaa !4
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %index.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %call = call i32 @grib_index_add_file(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @grib_index_add_file(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_index_write(ptr noundef %index, ptr noundef %filename) #0 {
entry:
  %index.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  store ptr %index, ptr %index.addr, align 8, !tbaa !4
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %index.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %call = call i32 @grib_index_write(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @grib_index_write(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_index_read(ptr noundef %c, ptr noundef %filename, ptr noundef %err) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !4
  store ptr %err, ptr %err.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %filename.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %call = call ptr @grib_index_read(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret ptr %call
}

declare ptr @grib_index_read(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_index_get_size(ptr noundef %index, ptr noundef %key, ptr noundef %size) #0 {
entry:
  %index.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  store ptr %index, ptr %index.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %size, ptr %size.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %index.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %size.addr, align 8, !tbaa !4
  %call = call i32 @grib_index_get_size(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_index_get_size(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_index_get_long(ptr noundef %index, ptr noundef %key, ptr noundef %values, ptr noundef %size) #0 {
entry:
  %index.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  store ptr %index, ptr %index.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %values, ptr %values.addr, align 8, !tbaa !4
  store ptr %size, ptr %size.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %index.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %size.addr, align 8, !tbaa !4
  %call = call i32 @grib_index_get_long(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @grib_index_get_long(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_index_get_double(ptr noundef %index, ptr noundef %key, ptr noundef %values, ptr noundef %size) #0 {
entry:
  %index.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  store ptr %index, ptr %index.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %values, ptr %values.addr, align 8, !tbaa !4
  store ptr %size, ptr %size.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %index.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %size.addr, align 8, !tbaa !4
  %call = call i32 @grib_index_get_double(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @grib_index_get_double(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_index_get_string(ptr noundef %index, ptr noundef %key, ptr noundef %values, ptr noundef %size) #0 {
entry:
  %index.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  store ptr %index, ptr %index.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %values, ptr %values.addr, align 8, !tbaa !4
  store ptr %size, ptr %size.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %index.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %size.addr, align 8, !tbaa !4
  %call = call i32 @grib_index_get_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @grib_index_get_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_index_select_long(ptr noundef %index, ptr noundef %key, i64 noundef %value) #0 {
entry:
  %index.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  store ptr %index, ptr %index.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store i64 %value, ptr %value.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %index.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load i64, ptr %value.addr, align 8, !tbaa !10
  %call = call i32 @grib_index_select_long(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret i32 %call
}

declare i32 @grib_index_select_long(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_index_select_double(ptr noundef %index, ptr noundef %key, double noundef %value) #0 {
entry:
  %index.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %value.addr = alloca double, align 8
  store ptr %index, ptr %index.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store double %value, ptr %value.addr, align 8, !tbaa !12
  %0 = load ptr, ptr %index.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load double, ptr %value.addr, align 8, !tbaa !12
  %call = call i32 @grib_index_select_double(ptr noundef %0, ptr noundef %1, double noundef %2)
  ret i32 %call
}

declare i32 @grib_index_select_double(ptr noundef, ptr noundef, double noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_index_select_string(ptr noundef %index, ptr noundef %key, ptr noundef %value) #0 {
entry:
  %index.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %index, ptr %index.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %index.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %call = call i32 @grib_index_select_string(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_index_select_string(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_handle_new_from_index(ptr noundef %index, ptr noundef %err) #0 {
entry:
  %index.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store ptr %index, ptr %index.addr, align 8, !tbaa !4
  store ptr %err, ptr %err.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %index.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %call = call ptr @grib_handle_new_from_index(ptr noundef %0, ptr noundef %1)
  ret ptr %call
}

declare ptr @grib_handle_new_from_index(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @codes_index_delete(ptr noundef %index) #0 {
entry:
  %index.addr = alloca ptr, align 8
  store ptr %index, ptr %index.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %index.addr, align 8, !tbaa !4
  call void @grib_index_delete(ptr noundef %0)
  ret void
}

declare void @grib_index_delete(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_write_message(ptr noundef %h, ptr noundef %file, ptr noundef %mode) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %file, ptr %file.addr, align 8, !tbaa !4
  store ptr %mode, ptr %mode.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %mode.addr, align 8, !tbaa !4
  %call = call i32 @grib_write_message(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_write_message(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_handle_new_from_message(ptr noundef %c, ptr noundef %data, i64 noundef %data_len) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %data_len.addr = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i64 %data_len, ptr %data_len.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %2 = load i64, ptr %data_len.addr, align 8, !tbaa !10
  %call = call ptr @grib_handle_new_from_message(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret ptr %call
}

declare ptr @grib_handle_new_from_message(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_handle_new_from_message_copy(ptr noundef %c, ptr noundef %data, i64 noundef %data_len) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %data_len.addr = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i64 %data_len, ptr %data_len.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %2 = load i64, ptr %data_len.addr, align 8, !tbaa !10
  %call = call ptr @grib_handle_new_from_message_copy(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret ptr %call
}

declare ptr @grib_handle_new_from_message_copy(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_grib_handle_new_from_samples(ptr noundef %c, ptr noundef %sample_name) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %sample_name.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %sample_name, ptr %sample_name.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %sample_name.addr, align 8, !tbaa !4
  %call = call ptr @grib_handle_new_from_samples(ptr noundef %0, ptr noundef %1)
  ret ptr %call
}

declare ptr @grib_handle_new_from_samples(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_handle_clone(ptr noundef %h) #0 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %call = call ptr @grib_handle_clone(ptr noundef %0)
  ret ptr %call
}

declare ptr @grib_handle_clone(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_handle_delete(ptr noundef %h) #0 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %call = call i32 @grib_handle_delete(ptr noundef %0)
  ret i32 %call
}

declare i32 @grib_handle_delete(ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_handle_new_from_partial_message_copy(ptr noundef %c, ptr noundef %data, i64 noundef %size) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i64 %size, ptr %size.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %2 = load i64, ptr %size.addr, align 8, !tbaa !10
  %call = call ptr @grib_handle_new_from_partial_message_copy(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret ptr %call
}

declare ptr @grib_handle_new_from_partial_message_copy(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_handle_new_from_partial_message(ptr noundef %c, ptr noundef %data, i64 noundef %buflen) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i64 %buflen, ptr %buflen.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %2 = load i64, ptr %buflen.addr, align 8, !tbaa !10
  %call = call ptr @grib_handle_new_from_partial_message(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret ptr %call
}

declare ptr @grib_handle_new_from_partial_message(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_get_message(ptr noundef %h, ptr noundef %message, ptr noundef %message_length) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %message.addr = alloca ptr, align 8
  %message_length.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  store ptr %message_length, ptr %message_length.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %message_length.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_message(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_get_message(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_get_message_copy(ptr noundef %h, ptr noundef %message, ptr noundef %message_length) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %message.addr = alloca ptr, align 8
  %message_length.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %message, ptr %message.addr, align 8, !tbaa !4
  store ptr %message_length, ptr %message_length.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %message.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %message_length.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_message_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_get_message_copy(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_grib_util_set_spec(ptr noundef %h, ptr noundef %grid_spec, ptr noundef %packing_spec, i32 noundef %flags, ptr noundef %data_values, i64 noundef %data_values_count, ptr noundef %err) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %grid_spec.addr = alloca ptr, align 8
  %packing_spec.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %data_values.addr = alloca ptr, align 8
  %data_values_count.addr = alloca i64, align 8
  %err.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %grid_spec, ptr %grid_spec.addr, align 8, !tbaa !4
  store ptr %packing_spec, ptr %packing_spec.addr, align 8, !tbaa !4
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !8
  store ptr %data_values, ptr %data_values.addr, align 8, !tbaa !4
  store i64 %data_values_count, ptr %data_values_count.addr, align 8, !tbaa !10
  store ptr %err, ptr %err.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %grid_spec.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %packing_spec.addr, align 8, !tbaa !4
  %3 = load i32, ptr %flags.addr, align 4, !tbaa !8
  %4 = load ptr, ptr %data_values.addr, align 8, !tbaa !4
  %5 = load i64, ptr %data_values_count.addr, align 8, !tbaa !10
  %6 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %call = call ptr @grib_util_set_spec(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6)
  ret ptr %call
}

declare ptr @grib_util_set_spec(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_grib_util_sections_copy(ptr noundef %hfrom, ptr noundef %hto, i32 noundef %what, ptr noundef %err) #0 {
entry:
  %hfrom.addr = alloca ptr, align 8
  %hto.addr = alloca ptr, align 8
  %what.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  store ptr %hfrom, ptr %hfrom.addr, align 8, !tbaa !4
  store ptr %hto, ptr %hto.addr, align 8, !tbaa !4
  store i32 %what, ptr %what.addr, align 4, !tbaa !8
  store ptr %err, ptr %err.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %hfrom.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %hto.addr, align 8, !tbaa !4
  %2 = load i32, ptr %what.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %call = call ptr @grib_util_sections_copy(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret ptr %call
}

declare ptr @grib_util_sections_copy(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_grib_util_get_param_id(ptr noundef %mars_param) #0 {
entry:
  %mars_param.addr = alloca ptr, align 8
  store ptr %mars_param, ptr %mars_param.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %mars_param.addr, align 8, !tbaa !4
  %call = call ptr @grib_util_get_param_id(ptr noundef %0)
  ret ptr %call
}

declare ptr @grib_util_get_param_id(ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_grib_util_get_mars_param(ptr noundef %param_id) #0 {
entry:
  %param_id.addr = alloca ptr, align 8
  store ptr %param_id, ptr %param_id.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %param_id.addr, align 8, !tbaa !4
  %call = call ptr @grib_util_get_mars_param(ptr noundef %0)
  ret ptr %call
}

declare ptr @grib_util_get_mars_param(ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @codes_grib_multi_support_on(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  call void @grib_multi_support_on(ptr noundef %0)
  ret void
}

declare void @grib_multi_support_on(ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @codes_grib_multi_support_off(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  call void @grib_multi_support_off(ptr noundef %0)
  ret void
}

declare void @grib_multi_support_off(ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @codes_grib_multi_support_reset_file(ptr noundef %c, ptr noundef %f) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %f.addr, align 8, !tbaa !4
  call void @grib_multi_support_reset_file(ptr noundef %0, ptr noundef %1)
  ret void
}

declare void @grib_multi_support_reset_file(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_grib_handle_new_from_multi_message(ptr noundef %c, ptr noundef %data, ptr noundef %data_len, ptr noundef %error) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %data_len.addr = alloca ptr, align 8
  %error.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %data_len, ptr %data_len.addr, align 8, !tbaa !4
  store ptr %error, ptr %error.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %data_len.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %call = call ptr @grib_handle_new_from_multi_message(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %call
}

declare ptr @grib_handle_new_from_multi_message(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_grib_multi_handle_new(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call = call ptr @grib_multi_handle_new(ptr noundef %0)
  ret ptr %call
}

declare ptr @grib_multi_handle_new(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_grib_multi_handle_append(ptr noundef %h, i32 noundef %start_section, ptr noundef %mh) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %start_section.addr = alloca i32, align 4
  %mh.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store i32 %start_section, ptr %start_section.addr, align 4, !tbaa !8
  store ptr %mh, ptr %mh.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load i32, ptr %start_section.addr, align 4, !tbaa !8
  %2 = load ptr, ptr %mh.addr, align 8, !tbaa !4
  %call = call i32 @grib_multi_handle_append(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_multi_handle_append(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_grib_multi_handle_delete(ptr noundef %mh) #0 {
entry:
  %mh.addr = alloca ptr, align 8
  store ptr %mh, ptr %mh.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %mh.addr, align 8, !tbaa !4
  %call = call i32 @grib_multi_handle_delete(ptr noundef %0)
  ret i32 %call
}

declare i32 @grib_multi_handle_delete(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_grib_multi_handle_write(ptr noundef %mh, ptr noundef %f) #0 {
entry:
  %mh.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  store ptr %mh, ptr %mh.addr, align 8, !tbaa !4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %mh.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call = call i32 @grib_multi_handle_write(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @grib_multi_handle_write(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_grib_iterator_new(ptr noundef %h, i64 noundef %flags, ptr noundef %error) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %error.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !10
  store ptr %error, ptr %error.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load i64, ptr %flags.addr, align 8, !tbaa !10
  %2 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %call = call ptr @grib_iterator_new(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  ret ptr %call
}

declare ptr @grib_iterator_new(ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_grib_get_data(ptr noundef %h, ptr noundef %lats, ptr noundef %lons, ptr noundef %values) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %lats.addr = alloca ptr, align 8
  %lons.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %lats, ptr %lats.addr, align 8, !tbaa !4
  store ptr %lons, ptr %lons.addr, align 8, !tbaa !4
  store ptr %values, ptr %values.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %lats.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %lons.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @grib_get_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_grib_iterator_next(ptr noundef %i, ptr noundef %lat, ptr noundef %lon, ptr noundef %value) #0 {
entry:
  %i.addr = alloca ptr, align 8
  %lat.addr = alloca ptr, align 8
  %lon.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %i, ptr %i.addr, align 8, !tbaa !4
  store ptr %lat, ptr %lat.addr, align 8, !tbaa !4
  store ptr %lon, ptr %lon.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %i.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %lat.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %lon.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %call = call i32 @grib_iterator_next(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @grib_iterator_next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_grib_iterator_previous(ptr noundef %i, ptr noundef %lat, ptr noundef %lon, ptr noundef %value) #0 {
entry:
  %i.addr = alloca ptr, align 8
  %lat.addr = alloca ptr, align 8
  %lon.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %i, ptr %i.addr, align 8, !tbaa !4
  store ptr %lat, ptr %lat.addr, align 8, !tbaa !4
  store ptr %lon, ptr %lon.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %i.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %lat.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %lon.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %call = call i32 @grib_iterator_previous(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @grib_iterator_previous(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_grib_iterator_has_next(ptr noundef %i) #0 {
entry:
  %i.addr = alloca ptr, align 8
  store ptr %i, ptr %i.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %i.addr, align 8, !tbaa !4
  %call = call i32 @grib_iterator_has_next(ptr noundef %0)
  ret i32 %call
}

declare i32 @grib_iterator_has_next(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_grib_iterator_reset(ptr noundef %i) #0 {
entry:
  %i.addr = alloca ptr, align 8
  store ptr %i, ptr %i.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %i.addr, align 8, !tbaa !4
  %call = call i32 @grib_iterator_reset(ptr noundef %0)
  ret i32 %call
}

declare i32 @grib_iterator_reset(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_grib_iterator_delete(ptr noundef %i) #0 {
entry:
  %i.addr = alloca ptr, align 8
  store ptr %i, ptr %i.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %i.addr, align 8, !tbaa !4
  %call = call i32 @grib_iterator_delete(ptr noundef %0)
  ret i32 %call
}

declare i32 @grib_iterator_delete(ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_grib_nearest_new(ptr noundef %h, ptr noundef %error) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %error.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %error, ptr %error.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %call = call ptr @grib_nearest_new(ptr noundef %0, ptr noundef %1)
  ret ptr %call
}

declare ptr @grib_nearest_new(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_grib_nearest_find(ptr noundef %nearest, ptr noundef %h, double noundef %inlat, double noundef %inlon, i64 noundef %flags, ptr noundef %outlats, ptr noundef %outlons, ptr noundef %values, ptr noundef %distances, ptr noundef %indexes, ptr noundef %len) #0 {
entry:
  %nearest.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %inlat.addr = alloca double, align 8
  %inlon.addr = alloca double, align 8
  %flags.addr = alloca i64, align 8
  %outlats.addr = alloca ptr, align 8
  %outlons.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  %distances.addr = alloca ptr, align 8
  %indexes.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  store ptr %nearest, ptr %nearest.addr, align 8, !tbaa !4
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store double %inlat, ptr %inlat.addr, align 8, !tbaa !12
  store double %inlon, ptr %inlon.addr, align 8, !tbaa !12
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !10
  store ptr %outlats, ptr %outlats.addr, align 8, !tbaa !4
  store ptr %outlons, ptr %outlons.addr, align 8, !tbaa !4
  store ptr %values, ptr %values.addr, align 8, !tbaa !4
  store ptr %distances, ptr %distances.addr, align 8, !tbaa !4
  store ptr %indexes, ptr %indexes.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %nearest.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %2 = load double, ptr %inlat.addr, align 8, !tbaa !12
  %3 = load double, ptr %inlon.addr, align 8, !tbaa !12
  %4 = load i64, ptr %flags.addr, align 8, !tbaa !10
  %5 = load ptr, ptr %outlats.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %outlons.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %distances.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %indexes.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %call = call i32 @grib_nearest_find(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10)
  ret i32 %call
}

declare i32 @grib_nearest_find(ptr noundef, ptr noundef, double noundef, double noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_grib_nearest_find_multiple(ptr noundef %h, i32 noundef %is_lsm, ptr noundef %inlats, ptr noundef %inlons, i64 noundef %npoints, ptr noundef %outlats, ptr noundef %outlons, ptr noundef %values, ptr noundef %distances, ptr noundef %indexes) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %is_lsm.addr = alloca i32, align 4
  %inlats.addr = alloca ptr, align 8
  %inlons.addr = alloca ptr, align 8
  %npoints.addr = alloca i64, align 8
  %outlats.addr = alloca ptr, align 8
  %outlons.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  %distances.addr = alloca ptr, align 8
  %indexes.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store i32 %is_lsm, ptr %is_lsm.addr, align 4, !tbaa !8
  store ptr %inlats, ptr %inlats.addr, align 8, !tbaa !4
  store ptr %inlons, ptr %inlons.addr, align 8, !tbaa !4
  store i64 %npoints, ptr %npoints.addr, align 8, !tbaa !10
  store ptr %outlats, ptr %outlats.addr, align 8, !tbaa !4
  store ptr %outlons, ptr %outlons.addr, align 8, !tbaa !4
  store ptr %values, ptr %values.addr, align 8, !tbaa !4
  store ptr %distances, ptr %distances.addr, align 8, !tbaa !4
  store ptr %indexes, ptr %indexes.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load i32, ptr %is_lsm.addr, align 4, !tbaa !8
  %2 = load ptr, ptr %inlats.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %inlons.addr, align 8, !tbaa !4
  %4 = load i64, ptr %npoints.addr, align 8, !tbaa !10
  %5 = load ptr, ptr %outlats.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %outlons.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %distances.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %indexes.addr, align 8, !tbaa !4
  %call = call i32 @grib_nearest_find_multiple(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret i32 %call
}

declare i32 @grib_nearest_find_multiple(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_grib_nearest_delete(ptr noundef %nearest) #0 {
entry:
  %nearest.addr = alloca ptr, align 8
  store ptr %nearest, ptr %nearest.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %nearest.addr, align 8, !tbaa !4
  %call = call i32 @grib_nearest_delete(ptr noundef %0)
  ret i32 %call
}

declare i32 @grib_nearest_delete(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_is_missing(ptr noundef %h, ptr noundef %key, ptr noundef %err) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %err, ptr %err.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %call = call i32 @grib_is_missing(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_is_missing(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_is_defined(ptr noundef %h, ptr noundef %key) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call i32 @grib_is_defined(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @grib_is_defined(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_set_missing(ptr noundef %h, ptr noundef %key) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call = call i32 @grib_set_missing(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @grib_set_missing(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_get_size(ptr noundef %h, ptr noundef %key, ptr noundef %size) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %size, ptr %size.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %size.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_size(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_get_size(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_get_length(ptr noundef %h, ptr noundef %key, ptr noundef %length) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %length.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %length, ptr %length.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %length.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_length(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_get_length(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_get_long(ptr noundef %h, ptr noundef %key, ptr noundef %value) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_long(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_get_long(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_get_double(ptr noundef %h, ptr noundef %key, ptr noundef %value) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_double(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_get_double(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_get_double_element(ptr noundef %h, ptr noundef %key, i32 noundef %i, ptr noundef %value) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store i32 %i, ptr %i.addr, align 4, !tbaa !8
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load i32, ptr %i.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_double_element(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @grib_get_double_element(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_get_double_elements(ptr noundef %h, ptr noundef %key, ptr noundef %i, i64 noundef %size, ptr noundef %value) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %i.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %value.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %i, ptr %i.addr, align 8, !tbaa !4
  store i64 %size, ptr %size.addr, align 8, !tbaa !10
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %i.addr, align 8, !tbaa !4
  %3 = load i64, ptr %size.addr, align 8, !tbaa !10
  %4 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_double_elements(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  ret i32 %call
}

declare i32 @grib_get_double_elements(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_get_string(ptr noundef %h, ptr noundef %key, ptr noundef %mesg, ptr noundef %length) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %mesg.addr = alloca ptr, align 8
  %length.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %mesg, ptr %mesg.addr, align 8, !tbaa !4
  store ptr %length, ptr %length.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %mesg.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %length.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @grib_get_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_get_string_array(ptr noundef %h, ptr noundef %key, ptr noundef %vals, ptr noundef %length) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %vals.addr = alloca ptr, align 8
  %length.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %vals, ptr %vals.addr, align 8, !tbaa !4
  store ptr %length, ptr %length.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %vals.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %length.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_string_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @grib_get_string_array(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_get_bytes(ptr noundef %h, ptr noundef %key, ptr noundef %bytes, ptr noundef %length) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %bytes.addr = alloca ptr, align 8
  %length.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %bytes, ptr %bytes.addr, align 8, !tbaa !4
  store ptr %length, ptr %length.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %bytes.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %length.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_bytes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @grib_get_bytes(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_get_double_array(ptr noundef %h, ptr noundef %key, ptr noundef %vals, ptr noundef %length) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %vals.addr = alloca ptr, align 8
  %length.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %vals, ptr %vals.addr, align 8, !tbaa !4
  store ptr %length, ptr %length.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %vals.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %length.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_double_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @grib_get_double_array(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_get_long_array(ptr noundef %h, ptr noundef %key, ptr noundef %vals, ptr noundef %length) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %vals.addr = alloca ptr, align 8
  %length.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %vals, ptr %vals.addr, align 8, !tbaa !4
  store ptr %length, ptr %length.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %vals.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %length.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_long_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @grib_get_long_array(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_copy_namespace(ptr noundef %dest, ptr noundef %name, ptr noundef %src) #0 {
entry:
  %dest.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8, !tbaa !4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store ptr %src, ptr %src.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %dest.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %src.addr, align 8, !tbaa !4
  %call = call i32 @grib_copy_namespace(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_copy_namespace(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_set_long(ptr noundef %h, ptr noundef %key, i64 noundef %val) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store i64 %val, ptr %val.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load i64, ptr %val.addr, align 8, !tbaa !10
  %call = call i32 @grib_set_long(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret i32 %call
}

declare i32 @grib_set_long(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_set_double(ptr noundef %h, ptr noundef %key, double noundef %val) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %val.addr = alloca double, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store double %val, ptr %val.addr, align 8, !tbaa !12
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load double, ptr %val.addr, align 8, !tbaa !12
  %call = call i32 @grib_set_double(ptr noundef %0, ptr noundef %1, double noundef %2)
  ret i32 %call
}

declare i32 @grib_set_double(ptr noundef, ptr noundef, double noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_set_string(ptr noundef %h, ptr noundef %key, ptr noundef %mesg, ptr noundef %length) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %mesg.addr = alloca ptr, align 8
  %length.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %mesg, ptr %mesg.addr, align 8, !tbaa !4
  store ptr %length, ptr %length.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %mesg.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %length.addr, align 8, !tbaa !4
  %call = call i32 @grib_set_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @grib_set_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_set_bytes(ptr noundef %h, ptr noundef %key, ptr noundef %bytes, ptr noundef %length) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %bytes.addr = alloca ptr, align 8
  %length.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %bytes, ptr %bytes.addr, align 8, !tbaa !4
  store ptr %length, ptr %length.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %bytes.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %length.addr, align 8, !tbaa !4
  %call = call i32 @grib_set_bytes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @grib_set_bytes(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_set_double_array(ptr noundef %h, ptr noundef %key, ptr noundef %vals, i64 noundef %length) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %vals.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %vals, ptr %vals.addr, align 8, !tbaa !4
  store i64 %length, ptr %length.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %vals.addr, align 8, !tbaa !4
  %3 = load i64, ptr %length.addr, align 8, !tbaa !10
  %call = call i32 @grib_set_double_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  ret i32 %call
}

declare i32 @grib_set_double_array(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_set_force_double_array(ptr noundef %h, ptr noundef %key, ptr noundef %vals, i64 noundef %length) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %vals.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %vals, ptr %vals.addr, align 8, !tbaa !4
  store i64 %length, ptr %length.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %vals.addr, align 8, !tbaa !4
  %3 = load i64, ptr %length.addr, align 8, !tbaa !10
  %call = call i32 @grib_set_force_double_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  ret i32 %call
}

declare i32 @grib_set_force_double_array(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_set_long_array(ptr noundef %h, ptr noundef %key, ptr noundef %vals, i64 noundef %length) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %vals.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %vals, ptr %vals.addr, align 8, !tbaa !4
  store i64 %length, ptr %length.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %vals.addr, align 8, !tbaa !4
  %3 = load i64, ptr %length.addr, align 8, !tbaa !10
  %call = call i32 @grib_set_long_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  ret i32 %call
}

declare i32 @grib_set_long_array(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_set_string_array(ptr noundef %h, ptr noundef %key, ptr noundef %vals, i64 noundef %length) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %vals.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %vals, ptr %vals.addr, align 8, !tbaa !4
  store i64 %length, ptr %length.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %vals.addr, align 8, !tbaa !4
  %3 = load i64, ptr %length.addr, align 8, !tbaa !10
  %call = call i32 @grib_set_string_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  ret i32 %call
}

declare i32 @grib_set_string_array(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_set_values(ptr noundef %h, ptr noundef %grib_values, i64 noundef %arg_count) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %grib_values.addr = alloca ptr, align 8
  %arg_count.addr = alloca i64, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %grib_values, ptr %grib_values.addr, align 8, !tbaa !4
  store i64 %arg_count, ptr %arg_count.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %grib_values.addr, align 8, !tbaa !4
  %2 = load i64, ptr %arg_count.addr, align 8, !tbaa !10
  %call = call i32 @grib_set_values(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret i32 %call
}

declare i32 @grib_set_values(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_get_message_offset(ptr noundef %h, ptr noundef %offset) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %offset.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %offset, ptr %offset.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %offset.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_message_offset(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @grib_get_message_offset(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_get_message_size(ptr noundef %h, ptr noundef %size) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %size, ptr %size.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %size.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_message_size(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @grib_get_message_size(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @codes_dump_content(ptr noundef %h, ptr noundef %out, ptr noundef %mode, i64 noundef %option_flags, ptr noundef %arg) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  %option_flags.addr = alloca i64, align 8
  %arg.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store ptr %mode, ptr %mode.addr, align 8, !tbaa !4
  store i64 %option_flags, ptr %option_flags.addr, align 8, !tbaa !10
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %mode.addr, align 8, !tbaa !4
  %3 = load i64, ptr %option_flags.addr, align 8, !tbaa !10
  %4 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  call void @grib_dump_content(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  ret void
}

declare void @grib_dump_content(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @codes_gts_header_off(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  call void @grib_gts_header_off(ptr noundef %0)
  ret void
}

declare void @grib_gts_header_off(ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @codes_gribex_mode_on(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  call void @grib_gribex_mode_on(ptr noundef %0)
  ret void
}

declare void @grib_gribex_mode_on(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_get_gribex_mode(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_gribex_mode(ptr noundef %0)
  ret i32 %call
}

declare i32 @grib_get_gribex_mode(ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @codes_gribex_mode_off(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  call void @grib_gribex_mode_off(ptr noundef %0)
  ret void
}

declare void @grib_gribex_mode_off(ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_keys_iterator_new(ptr noundef %h, i64 noundef %filter_flags, ptr noundef %name_space) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %filter_flags.addr = alloca i64, align 8
  %name_space.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store i64 %filter_flags, ptr %filter_flags.addr, align 8, !tbaa !10
  store ptr %name_space, ptr %name_space.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load i64, ptr %filter_flags.addr, align 8, !tbaa !10
  %2 = load ptr, ptr %name_space.addr, align 8, !tbaa !4
  %call = call ptr @grib_keys_iterator_new(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  ret ptr %call
}

declare ptr @grib_keys_iterator_new(ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_keys_iterator_next(ptr noundef %kiter) #0 {
entry:
  %kiter.addr = alloca ptr, align 8
  store ptr %kiter, ptr %kiter.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %kiter.addr, align 8, !tbaa !4
  %call = call i32 @grib_keys_iterator_next(ptr noundef %0)
  ret i32 %call
}

declare i32 @grib_keys_iterator_next(ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_keys_iterator_get_name(ptr noundef %kiter) #0 {
entry:
  %kiter.addr = alloca ptr, align 8
  store ptr %kiter, ptr %kiter.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %kiter.addr, align 8, !tbaa !4
  %call = call ptr @grib_keys_iterator_get_name(ptr noundef %0)
  ret ptr %call
}

declare ptr @grib_keys_iterator_get_name(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_keys_iterator_delete(ptr noundef %kiter) #0 {
entry:
  %kiter.addr = alloca ptr, align 8
  store ptr %kiter, ptr %kiter.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %kiter.addr, align 8, !tbaa !4
  %call = call i32 @grib_keys_iterator_delete(ptr noundef %0)
  ret i32 %call
}

declare i32 @grib_keys_iterator_delete(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_keys_iterator_rewind(ptr noundef %kiter) #0 {
entry:
  %kiter.addr = alloca ptr, align 8
  store ptr %kiter, ptr %kiter.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %kiter.addr, align 8, !tbaa !4
  %call = call i32 @grib_keys_iterator_rewind(ptr noundef %0)
  ret i32 %call
}

declare i32 @grib_keys_iterator_rewind(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_keys_iterator_set_flags(ptr noundef %kiter, i64 noundef %flags) #0 {
entry:
  %kiter.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %kiter, ptr %kiter.addr, align 8, !tbaa !4
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %kiter.addr, align 8, !tbaa !4
  %1 = load i64, ptr %flags.addr, align 8, !tbaa !10
  %call = call i32 @grib_keys_iterator_set_flags(ptr noundef %0, i64 noundef %1)
  ret i32 %call
}

declare i32 @grib_keys_iterator_set_flags(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_keys_iterator_get_long(ptr noundef %kiter, ptr noundef %v, ptr noundef %len) #0 {
entry:
  %kiter.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  store ptr %kiter, ptr %kiter.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %kiter.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %call = call i32 @grib_keys_iterator_get_long(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_keys_iterator_get_long(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_keys_iterator_get_double(ptr noundef %kiter, ptr noundef %v, ptr noundef %len) #0 {
entry:
  %kiter.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  store ptr %kiter, ptr %kiter.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %kiter.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %call = call i32 @grib_keys_iterator_get_double(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_keys_iterator_get_double(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_keys_iterator_get_string(ptr noundef %kiter, ptr noundef %v, ptr noundef %len) #0 {
entry:
  %kiter.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  store ptr %kiter, ptr %kiter.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %kiter.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %call = call i32 @grib_keys_iterator_get_string(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_keys_iterator_get_string(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_keys_iterator_get_bytes(ptr noundef %kiter, ptr noundef %v, ptr noundef %len) #0 {
entry:
  %kiter.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %len.addr = alloca ptr, align 8
  store ptr %kiter, ptr %kiter.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %kiter.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %call = call i32 @grib_keys_iterator_get_bytes(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_keys_iterator_get_bytes(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_values_check(ptr noundef %h, ptr noundef %values, i32 noundef %count) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %values, ptr %values.addr, align 8, !tbaa !4
  store i32 %count, ptr %count.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %2 = load i32, ptr %count.addr, align 4, !tbaa !8
  %call = call i32 @grib_values_check(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i32 %call
}

declare i32 @grib_values_check(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define void @codes_update_sections_lengths(ptr noundef %h) #0 {
entry:
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  call void @grib_update_sections_lengths(ptr noundef %0)
  ret void
}

declare void @grib_update_sections_lengths(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_get_gaussian_latitudes(i64 noundef %truncation, ptr noundef %latitudes) #0 {
entry:
  %truncation.addr = alloca i64, align 8
  %latitudes.addr = alloca ptr, align 8
  store i64 %truncation, ptr %truncation.addr, align 8, !tbaa !10
  store ptr %latitudes, ptr %latitudes.addr, align 8, !tbaa !4
  %0 = load i64, ptr %truncation.addr, align 8, !tbaa !10
  %1 = load ptr, ptr %latitudes.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_gaussian_latitudes(i64 noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @grib_get_gaussian_latitudes(i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_julian_to_datetime(double noundef %jd, ptr noundef %year, ptr noundef %month, ptr noundef %day, ptr noundef %hour, ptr noundef %minute, ptr noundef %second) #0 {
entry:
  %jd.addr = alloca double, align 8
  %year.addr = alloca ptr, align 8
  %month.addr = alloca ptr, align 8
  %day.addr = alloca ptr, align 8
  %hour.addr = alloca ptr, align 8
  %minute.addr = alloca ptr, align 8
  %second.addr = alloca ptr, align 8
  store double %jd, ptr %jd.addr, align 8, !tbaa !12
  store ptr %year, ptr %year.addr, align 8, !tbaa !4
  store ptr %month, ptr %month.addr, align 8, !tbaa !4
  store ptr %day, ptr %day.addr, align 8, !tbaa !4
  store ptr %hour, ptr %hour.addr, align 8, !tbaa !4
  store ptr %minute, ptr %minute.addr, align 8, !tbaa !4
  store ptr %second, ptr %second.addr, align 8, !tbaa !4
  %0 = load double, ptr %jd.addr, align 8, !tbaa !12
  %1 = load ptr, ptr %year.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %month.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %day.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %hour.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %minute.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %second.addr, align 8, !tbaa !4
  %call = call i32 @grib_julian_to_datetime(double noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret i32 %call
}

declare i32 @grib_julian_to_datetime(double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_datetime_to_julian(i64 noundef %year, i64 noundef %month, i64 noundef %day, i64 noundef %hour, i64 noundef %minute, i64 noundef %second, ptr noundef %jd) #0 {
entry:
  %year.addr = alloca i64, align 8
  %month.addr = alloca i64, align 8
  %day.addr = alloca i64, align 8
  %hour.addr = alloca i64, align 8
  %minute.addr = alloca i64, align 8
  %second.addr = alloca i64, align 8
  %jd.addr = alloca ptr, align 8
  store i64 %year, ptr %year.addr, align 8, !tbaa !10
  store i64 %month, ptr %month.addr, align 8, !tbaa !10
  store i64 %day, ptr %day.addr, align 8, !tbaa !10
  store i64 %hour, ptr %hour.addr, align 8, !tbaa !10
  store i64 %minute, ptr %minute.addr, align 8, !tbaa !10
  store i64 %second, ptr %second.addr, align 8, !tbaa !10
  store ptr %jd, ptr %jd.addr, align 8, !tbaa !4
  %0 = load i64, ptr %year.addr, align 8, !tbaa !10
  %1 = load i64, ptr %month.addr, align 8, !tbaa !10
  %2 = load i64, ptr %day.addr, align 8, !tbaa !10
  %3 = load i64, ptr %hour.addr, align 8, !tbaa !10
  %4 = load i64, ptr %minute.addr, align 8, !tbaa !10
  %5 = load i64, ptr %second.addr, align 8, !tbaa !10
  %6 = load ptr, ptr %jd.addr, align 8, !tbaa !4
  %call = call i32 @grib_datetime_to_julian(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6)
  ret i32 %call
}

declare i32 @grib_datetime_to_julian(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i64 @codes_julian_to_date(i64 noundef %jdate) #0 {
entry:
  %jdate.addr = alloca i64, align 8
  store i64 %jdate, ptr %jdate.addr, align 8, !tbaa !10
  %0 = load i64, ptr %jdate.addr, align 8, !tbaa !10
  %call = call i64 @grib_julian_to_date(i64 noundef %0)
  ret i64 %call
}

declare i64 @grib_julian_to_date(i64 noundef) #1

; Function Attrs: nounwind uwtable
define i64 @codes_date_to_julian(i64 noundef %ddate) #0 {
entry:
  %ddate.addr = alloca i64, align 8
  store i64 %ddate, ptr %ddate.addr, align 8, !tbaa !10
  %0 = load i64, ptr %ddate.addr, align 8, !tbaa !10
  %call = call i64 @grib_date_to_julian(i64 noundef %0)
  ret i64 %call
}

declare i64 @grib_date_to_julian(i64 noundef) #1

; Function Attrs: nounwind uwtable
define void @codes_get_reduced_row(i64 noundef %pl, double noundef %lon_first, double noundef %lon_last, ptr noundef %npoints, ptr noundef %ilon_first, ptr noundef %ilon_last) #0 {
entry:
  %pl.addr = alloca i64, align 8
  %lon_first.addr = alloca double, align 8
  %lon_last.addr = alloca double, align 8
  %npoints.addr = alloca ptr, align 8
  %ilon_first.addr = alloca ptr, align 8
  %ilon_last.addr = alloca ptr, align 8
  store i64 %pl, ptr %pl.addr, align 8, !tbaa !10
  store double %lon_first, ptr %lon_first.addr, align 8, !tbaa !12
  store double %lon_last, ptr %lon_last.addr, align 8, !tbaa !12
  store ptr %npoints, ptr %npoints.addr, align 8, !tbaa !4
  store ptr %ilon_first, ptr %ilon_first.addr, align 8, !tbaa !4
  store ptr %ilon_last, ptr %ilon_last.addr, align 8, !tbaa !4
  %0 = load i64, ptr %pl.addr, align 8, !tbaa !10
  %1 = load double, ptr %lon_first.addr, align 8, !tbaa !12
  %2 = load double, ptr %lon_last.addr, align 8, !tbaa !12
  %3 = load ptr, ptr %npoints.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %ilon_first.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ilon_last.addr, align 8, !tbaa !4
  call void @grib_get_reduced_row(i64 noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret void
}

declare void @grib_get_reduced_row(i64 noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @codes_get_reduced_row_p(i64 noundef %pl, double noundef %lon_first, double noundef %lon_last, ptr noundef %npoints, ptr noundef %olon_first, ptr noundef %olon_last) #0 {
entry:
  %pl.addr = alloca i64, align 8
  %lon_first.addr = alloca double, align 8
  %lon_last.addr = alloca double, align 8
  %npoints.addr = alloca ptr, align 8
  %olon_first.addr = alloca ptr, align 8
  %olon_last.addr = alloca ptr, align 8
  store i64 %pl, ptr %pl.addr, align 8, !tbaa !10
  store double %lon_first, ptr %lon_first.addr, align 8, !tbaa !12
  store double %lon_last, ptr %lon_last.addr, align 8, !tbaa !12
  store ptr %npoints, ptr %npoints.addr, align 8, !tbaa !4
  store ptr %olon_first, ptr %olon_first.addr, align 8, !tbaa !4
  store ptr %olon_last, ptr %olon_last.addr, align 8, !tbaa !4
  %0 = load i64, ptr %pl.addr, align 8, !tbaa !10
  %1 = load double, ptr %lon_first.addr, align 8, !tbaa !12
  %2 = load double, ptr %lon_last.addr, align 8, !tbaa !12
  %3 = load ptr, ptr %npoints.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %olon_first.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %olon_last.addr, align 8, !tbaa !4
  call void @grib_get_reduced_row_p(i64 noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret void
}

declare void @grib_get_reduced_row_p(i64 noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_box_new(ptr noundef %h, ptr noundef %error) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %error.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %error, ptr %error.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %error.addr, align 8, !tbaa !4
  %call = call ptr @grib_box_new(ptr noundef %0, ptr noundef %1)
  ret ptr %call
}

declare ptr @grib_box_new(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @codes_box_get_points(ptr noundef %box, double noundef %north, double noundef %west, double noundef %south, double noundef %east, ptr noundef %err) #0 {
entry:
  %box.addr = alloca ptr, align 8
  %north.addr = alloca double, align 8
  %west.addr = alloca double, align 8
  %south.addr = alloca double, align 8
  %east.addr = alloca double, align 8
  %err.addr = alloca ptr, align 8
  store ptr %box, ptr %box.addr, align 8, !tbaa !4
  store double %north, ptr %north.addr, align 8, !tbaa !12
  store double %west, ptr %west.addr, align 8, !tbaa !12
  store double %south, ptr %south.addr, align 8, !tbaa !12
  store double %east, ptr %east.addr, align 8, !tbaa !12
  store ptr %err, ptr %err.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %box.addr, align 8, !tbaa !4
  %1 = load double, ptr %north.addr, align 8, !tbaa !12
  %2 = load double, ptr %west.addr, align 8, !tbaa !12
  %3 = load double, ptr %south.addr, align 8, !tbaa !12
  %4 = load double, ptr %east.addr, align 8, !tbaa !12
  %5 = load ptr, ptr %err.addr, align 8, !tbaa !4
  %call = call ptr @grib_box_get_points(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, ptr noundef %5)
  ret ptr %call
}

declare ptr @grib_box_get_points(ptr noundef, double noundef, double noundef, double noundef, double noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @codes_points_get_values(ptr noundef %h, ptr noundef %points, ptr noundef %val) #0 {
entry:
  %h.addr = alloca ptr, align 8
  %points.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  store ptr %points, ptr %points.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %points.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %call = call i32 @grib_points_get_values(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @grib_points_get_values(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @codes_context_delete(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  call void @grib_context_delete(ptr noundef %0)
  ret void
}

declare void @grib_context_delete(ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @codes_context_set_definitions_path(ptr noundef %c, ptr noundef %path) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %path, ptr %path.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %path.addr, align 8, !tbaa !4
  call void @grib_context_set_definitions_path(ptr noundef %0, ptr noundef %1)
  ret void
}

declare void @grib_context_set_definitions_path(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @codes_context_set_samples_path(ptr noundef %c, ptr noundef %path) #0 {
entry:
  %c.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  store ptr %path, ptr %path.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %path.addr, align 8, !tbaa !4
  call void @grib_context_set_samples_path(ptr noundef %0, ptr noundef %1)
  ret void
}

declare void @grib_context_set_samples_path(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}
