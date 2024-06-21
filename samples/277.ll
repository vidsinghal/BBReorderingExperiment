; ModuleID = 'samples/277.bc'
source_filename = "H5Zszip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.H5Z_class2_t = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.SZ_com_t_s = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"szip\00", align 1
@H5Z_SZIP = global [1 x %struct.H5Z_class2_t] [%struct.H5Z_class2_t { i32 1, i32 4, i32 1, i32 1, ptr @.str, ptr @H5Z___can_apply_szip, ptr @H5Z___set_local_szip, ptr @H5Z___filter_szip }], align 16
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"bad datatype size\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"invalid datatype size\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"can't retrieve datatype endianness order\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"invalid datatype endianness order\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"can't get szip parameters\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"bad datatype precision\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"unable to get dataspace dimensions\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"unable to get number of points in the dataspace\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"pixels per block greater than total number of elements in the chunk\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"bad datatype endianness order\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"can't set local szip parameters\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"invalid number of filter parameters\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"memory allocation failed for szip decompression\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"szip_filter: decompression failed\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"unable to allocate szip destination buffer\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @H5Z___can_apply_szip(i32 noundef %dcpl_id, i32 noundef %type_id, i32 noundef %space_id) #0 {
entry:
  %dcpl_id.addr = alloca i32, align 4
  %type_id.addr = alloca i32, align 4
  %space_id.addr = alloca i32, align 4
  %ret_value = alloca i32, align 4
  %dtype_size = alloca i32, align 4
  %dtype_order = alloca i32, align 4
  store i32 %dcpl_id, ptr %dcpl_id.addr, align 4
  store i32 %type_id, ptr %type_id.addr, align 4
  store i32 %space_id, ptr %space_id.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #5
  store i32 1, ptr %ret_value, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtype_size) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtype_order) #5
  %0 = load i32, ptr %type_id.addr, align 4
  %call = call i64 @H5Tget_size(i32 noundef %0)
  %mul = mul i64 8, %call
  %conv = trunc i64 %mul to i32
  store i32 %conv, ptr %dtype_size, align 4
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.2)
  store i32 -1, ptr %ret_value, align 4
  br label %done

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %dtype_size, align 4
  %cmp3 = icmp ugt i32 %2, 32
  br i1 %cmp3, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, ptr %dtype_size, align 4
  %cmp5 = icmp ne i32 %3, 64
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  %4 = load ptr, ptr @stderr, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.1, ptr noundef @.str.3)
  store i32 -1, ptr %ret_value, align 4
  br label %done

if.end9:                                          ; preds = %land.lhs.true, %if.end
  %5 = load i32, ptr %type_id.addr, align 4
  %call10 = call i32 @H5Tget_order(i32 noundef %5)
  store i32 %call10, ptr %dtype_order, align 4
  %cmp11 = icmp eq i32 %call10, -1
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  %6 = load ptr, ptr @stderr, align 8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.1, ptr noundef @.str.4)
  store i32 -1, ptr %ret_value, align 4
  br label %done

if.end15:                                         ; preds = %if.end9
  %7 = load i32, ptr %dtype_order, align 4
  %cmp16 = icmp ne i32 %7, 0
  br i1 %cmp16, label %land.lhs.true18, label %if.end23

land.lhs.true18:                                  ; preds = %if.end15
  %8 = load i32, ptr %dtype_order, align 4
  %cmp19 = icmp ne i32 %8, 1
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %land.lhs.true18
  %9 = load ptr, ptr @stderr, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.1, ptr noundef @.str.5)
  store i32 -1, ptr %ret_value, align 4
  br label %done

if.end23:                                         ; preds = %land.lhs.true18, %if.end15
  br label %done

done:                                             ; preds = %if.end23, %if.then21, %if.then13, %if.then7, %if.then
  %10 = load i32, ptr %ret_value, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtype_order) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtype_size) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #5
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @H5Z___set_local_szip(i32 noundef %dcpl_id, i32 noundef %type_id, i32 noundef %space_id) #0 {
entry:
  %retval = alloca i32, align 4
  %dcpl_id.addr = alloca i32, align 4
  %type_id.addr = alloca i32, align 4
  %space_id.addr = alloca i32, align 4
  %ret_value = alloca i32, align 4
  %flags = alloca i32, align 4
  %cd_nelmts = alloca i64, align 8
  %cd_values = alloca [4 x i32], align 16
  %dims = alloca [33 x i64], align 16
  %ndims = alloca i32, align 4
  %dtype_order = alloca i32, align 4
  %dtype_size = alloca i64, align 8
  %dtype_precision = alloca i64, align 8
  %dtype_offset = alloca i64, align 8
  %scanline = alloca i64, align 8
  %npoints = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %dcpl_id, ptr %dcpl_id.addr, align 4
  store i32 %type_id, ptr %type_id.addr, align 4
  store i32 %space_id, ptr %space_id.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #5
  store i32 0, ptr %ret_value, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd_nelmts) #5
  store i64 2, ptr %cd_nelmts, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %cd_values) #5
  call void @llvm.lifetime.start.p0(i64 264, ptr %dims) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ndims) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %dtype_order) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %dtype_size) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %dtype_precision) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %dtype_offset) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %scanline) #5
  %0 = load i32, ptr %dcpl_id.addr, align 4
  %arraydecay = getelementptr inbounds [4 x i32], ptr %cd_values, i64 0, i64 0
  %call = call i32 @H5Pget_filter_by_id1(i32 noundef %0, i32 noundef 4, ptr noundef %flags, ptr noundef %cd_nelmts, ptr noundef %arraydecay, i64 noundef 0, ptr noundef null)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.6)
  store i32 -1, ptr %ret_value, align 4
  br label %done

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %type_id.addr, align 4
  %call2 = call i64 @H5Tget_size(i32 noundef %2)
  %mul = mul i64 8, %call2
  store i64 %mul, ptr %dtype_size, align 8
  %cmp3 = icmp eq i64 %mul, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr @stderr, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.1, ptr noundef @.str.2)
  store i32 -1, ptr %ret_value, align 4
  br label %done

if.end6:                                          ; preds = %if.end
  %4 = load i32, ptr %type_id.addr, align 4
  %call7 = call i64 @H5Tget_precision(i32 noundef %4)
  store i64 %call7, ptr %dtype_precision, align 8
  %cmp8 = icmp eq i64 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %5 = load ptr, ptr @stderr, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, ptr noundef @.str.7)
  store i32 -1, ptr %ret_value, align 4
  br label %done

if.end11:                                         ; preds = %if.end6
  %6 = load i64, ptr %dtype_precision, align 8
  %7 = load i64, ptr %dtype_size, align 8
  %cmp12 = icmp ult i64 %6, %7
  br i1 %cmp12, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.end11
  %8 = load i32, ptr %type_id.addr, align 4
  %call14 = call i32 @H5Tget_offset(i32 noundef %8)
  %conv = sext i32 %call14 to i64
  store i64 %conv, ptr %dtype_offset, align 8
  %9 = load i64, ptr %dtype_offset, align 8
  %cmp15 = icmp ne i64 %9, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then13
  %10 = load i64, ptr %dtype_size, align 8
  store i64 %10, ptr %dtype_precision, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then13
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end11
  %11 = load i64, ptr %dtype_precision, align 8
  %cmp20 = icmp ugt i64 %11, 24
  br i1 %cmp20, label %if.then22, label %if.end31

if.then22:                                        ; preds = %if.end19
  %12 = load i64, ptr %dtype_precision, align 8
  %cmp23 = icmp ule i64 %12, 32
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then22
  store i64 32, ptr %dtype_precision, align 8
  br label %if.end30

if.else:                                          ; preds = %if.then22
  %13 = load i64, ptr %dtype_precision, align 8
  %cmp26 = icmp ule i64 %13, 64
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.else
  store i64 64, ptr %dtype_precision, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then25
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end19
  %14 = load i64, ptr %dtype_precision, align 8
  %conv32 = trunc i64 %14 to i32
  %arrayidx = getelementptr inbounds [4 x i32], ptr %cd_values, i64 0, i64 2
  store i32 %conv32, ptr %arrayidx, align 8
  %15 = load i32, ptr %space_id.addr, align 4
  %arraydecay33 = getelementptr inbounds [33 x i64], ptr %dims, i64 0, i64 0
  %call34 = call i32 @H5Sget_simple_extent_dims(i32 noundef %15, ptr noundef %arraydecay33, ptr noundef null)
  store i32 %call34, ptr %ndims, align 4
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end31
  %16 = load ptr, ptr @stderr, align 8
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.1, ptr noundef @.str.8)
  store i32 -1, ptr %ret_value, align 4
  br label %done

if.end39:                                         ; preds = %if.end31
  %17 = load i32, ptr %ndims, align 4
  %sub = sub nsw i32 %17, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx40 = getelementptr inbounds [33 x i64], ptr %dims, i64 0, i64 %idxprom
  %18 = load i64, ptr %arrayidx40, align 8
  store i64 %18, ptr %scanline, align 8
  %19 = load i64, ptr %scanline, align 8
  %arrayidx41 = getelementptr inbounds [4 x i32], ptr %cd_values, i64 0, i64 1
  %20 = load i32, ptr %arrayidx41, align 4
  %conv42 = zext i32 %20 to i64
  %cmp43 = icmp ult i64 %19, %conv42
  br i1 %cmp43, label %if.then45, label %if.else67

if.then45:                                        ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 8, ptr %npoints) #5
  %21 = load i32, ptr %space_id.addr, align 4
  %call46 = call i64 @H5Sget_simple_extent_npoints(i32 noundef %21)
  store i64 %call46, ptr %npoints, align 8
  %cmp47 = icmp slt i64 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.then45
  %22 = load ptr, ptr @stderr, align 8
  %call50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.1, ptr noundef @.str.9)
  store i32 -1, ptr %ret_value, align 4
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end51:                                         ; preds = %if.then45
  %23 = load i64, ptr %npoints, align 8
  %arrayidx52 = getelementptr inbounds [4 x i32], ptr %cd_values, i64 0, i64 1
  %24 = load i32, ptr %arrayidx52, align 4
  %conv53 = zext i32 %24 to i64
  %cmp54 = icmp slt i64 %23, %conv53
  br i1 %cmp54, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end51
  %25 = load ptr, ptr @stderr, align 8
  %call57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.1, ptr noundef @.str.10)
  store i32 -1, ptr %ret_value, align 4
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end58:                                         ; preds = %if.end51
  %arrayidx59 = getelementptr inbounds [4 x i32], ptr %cd_values, i64 0, i64 1
  %26 = load i32, ptr %arrayidx59, align 4
  %mul60 = mul i32 %26, 128
  %conv61 = zext i32 %mul60 to i64
  %27 = load i64, ptr %npoints, align 8
  %cmp62 = icmp slt i64 %conv61, %27
  br i1 %cmp62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end58
  %arrayidx64 = getelementptr inbounds [4 x i32], ptr %cd_values, i64 0, i64 1
  %28 = load i32, ptr %arrayidx64, align 4
  %mul65 = mul i32 %28, 128
  %conv66 = zext i32 %mul65 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.end58
  %29 = load i64, ptr %npoints, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv66, %cond.true ], [ %29, %cond.false ]
  store i64 %cond, ptr %scanline, align 8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %if.then49, %cond.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %npoints) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup111 [
    i32 0, label %cleanup.cont
    i32 2, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end88

if.else67:                                        ; preds = %if.end39
  %30 = load i64, ptr %scanline, align 8
  %cmp68 = icmp ule i64 %30, 4096
  br i1 %cmp68, label %if.then70, label %if.else83

if.then70:                                        ; preds = %if.else67
  %arrayidx71 = getelementptr inbounds [4 x i32], ptr %cd_values, i64 0, i64 1
  %31 = load i32, ptr %arrayidx71, align 4
  %mul72 = mul i32 %31, 128
  %conv73 = zext i32 %mul72 to i64
  %32 = load i64, ptr %scanline, align 8
  %cmp74 = icmp ult i64 %conv73, %32
  br i1 %cmp74, label %cond.true76, label %cond.false80

cond.true76:                                      ; preds = %if.then70
  %arrayidx77 = getelementptr inbounds [4 x i32], ptr %cd_values, i64 0, i64 1
  %33 = load i32, ptr %arrayidx77, align 4
  %mul78 = mul i32 %33, 128
  %conv79 = zext i32 %mul78 to i64
  br label %cond.end81

cond.false80:                                     ; preds = %if.then70
  %34 = load i64, ptr %scanline, align 8
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false80, %cond.true76
  %cond82 = phi i64 [ %conv79, %cond.true76 ], [ %34, %cond.false80 ]
  store i64 %cond82, ptr %scanline, align 8
  br label %if.end87

if.else83:                                        ; preds = %if.else67
  %arrayidx84 = getelementptr inbounds [4 x i32], ptr %cd_values, i64 0, i64 1
  %35 = load i32, ptr %arrayidx84, align 4
  %mul85 = mul i32 %35, 128
  %conv86 = zext i32 %mul85 to i64
  store i64 %conv86, ptr %scanline, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.else83, %cond.end81
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %cleanup.cont
  %36 = load i64, ptr %scanline, align 8
  %conv89 = trunc i64 %36 to i32
  %arrayidx90 = getelementptr inbounds [4 x i32], ptr %cd_values, i64 0, i64 3
  store i32 %conv89, ptr %arrayidx90, align 4
  %37 = load i32, ptr %type_id.addr, align 4
  %call91 = call i32 @H5Tget_order(i32 noundef %37)
  store i32 %call91, ptr %dtype_order, align 4
  %cmp92 = icmp eq i32 %call91, -1
  br i1 %cmp92, label %if.then94, label %if.end96

if.then94:                                        ; preds = %if.end88
  %38 = load ptr, ptr @stderr, align 8
  %call95 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.1, ptr noundef @.str.11)
  store i32 -1, ptr %ret_value, align 4
  br label %done

if.end96:                                         ; preds = %if.end88
  %arrayidx97 = getelementptr inbounds [4 x i32], ptr %cd_values, i64 0, i64 0
  %39 = load i32, ptr %arrayidx97, align 16
  %and = and i32 %39, -25
  store i32 %and, ptr %arrayidx97, align 16
  %40 = load i32, ptr %dtype_order, align 4
  switch i32 %40, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb99
    i32 -1, label %sw.bb102
    i32 2, label %sw.bb102
    i32 3, label %sw.bb102
    i32 4, label %sw.bb102
  ]

sw.bb:                                            ; preds = %if.end96
  %arrayidx98 = getelementptr inbounds [4 x i32], ptr %cd_values, i64 0, i64 0
  %41 = load i32, ptr %arrayidx98, align 16
  %or = or i32 %41, 8
  store i32 %or, ptr %arrayidx98, align 16
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.end96
  %arrayidx100 = getelementptr inbounds [4 x i32], ptr %cd_values, i64 0, i64 0
  %42 = load i32, ptr %arrayidx100, align 16
  %or101 = or i32 %42, 16
  store i32 %or101, ptr %arrayidx100, align 16
  br label %sw.epilog

sw.bb102:                                         ; preds = %if.end96, %if.end96, %if.end96, %if.end96
  br label %sw.default

sw.default:                                       ; preds = %if.end96, %sw.bb102
  %43 = load ptr, ptr @stderr, align 8
  %call103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.1, ptr noundef @.str.11)
  store i32 -1, ptr %ret_value, align 4
  br label %done

sw.epilog:                                        ; preds = %sw.bb99, %sw.bb
  %44 = load i32, ptr %dcpl_id.addr, align 4
  %45 = load i32, ptr %flags, align 4
  %arraydecay104 = getelementptr inbounds [4 x i32], ptr %cd_values, i64 0, i64 0
  %call105 = call i32 @H5Pmodify_filter(i32 noundef %44, i32 noundef 4, i32 noundef %45, i64 noundef 4, ptr noundef %arraydecay104)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %if.then108, label %if.end110

if.then108:                                       ; preds = %sw.epilog
  %46 = load ptr, ptr @stderr, align 8
  %call109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.1, ptr noundef @.str.12)
  store i32 -1, ptr %ret_value, align 4
  br label %done

if.end110:                                        ; preds = %sw.epilog
  br label %done

done:                                             ; preds = %if.end110, %cleanup, %if.then108, %sw.default, %if.then94, %if.then37, %if.then9, %if.then4, %if.then
  %47 = load i32, ptr %ret_value, align 4
  store i32 %47, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup111

cleanup111:                                       ; preds = %done, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %scanline) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dtype_offset) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dtype_precision) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dtype_size) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %dtype_order) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ndims) #5
  call void @llvm.lifetime.end.p0(i64 264, ptr %dims) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %cd_values) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd_nelmts) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #5
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal i64 @H5Z___filter_szip(i32 noundef %flags, i64 noundef %cd_nelmts, ptr noundef %cd_values, i64 noundef %nbytes, ptr noundef %buf_size, ptr noundef %buf) #0 {
entry:
  %retval = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %cd_nelmts.addr = alloca i64, align 8
  %cd_values.addr = alloca ptr, align 8
  %nbytes.addr = alloca i64, align 8
  %buf_size.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ret_value = alloca i64, align 8
  %size_out = alloca i64, align 8
  %outbuf = alloca ptr, align 8
  %newbuf = alloca ptr, align 8
  %sz_param = alloca %struct.SZ_com_t_s, align 4
  %stored_nalloc = alloca i32, align 4
  %nalloc = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %dst = alloca ptr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store i64 %cd_nelmts, ptr %cd_nelmts.addr, align 8
  store ptr %cd_values, ptr %cd_values.addr, align 8
  store i64 %nbytes, ptr %nbytes.addr, align 8
  store ptr %buf_size, ptr %buf_size.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret_value) #5
  store i64 0, ptr %ret_value, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %size_out) #5
  store i64 0, ptr %size_out, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %outbuf) #5
  store ptr null, ptr %outbuf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %newbuf) #5
  store ptr null, ptr %newbuf, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %sz_param) #5
  %0 = load i64, ptr %cd_nelmts.addr, align 8
  %cmp = icmp ne i64 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.13)
  store i64 -1, ptr %ret_value, align 8
  br label %done

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %cd_values.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 0
  %3 = load i32, ptr %arrayidx, align 4
  %options_mask = getelementptr inbounds %struct.SZ_com_t_s, ptr %sz_param, i32 0, i32 0
  store i32 %3, ptr %options_mask, align 4
  %4 = load ptr, ptr %cd_values.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %4, i64 2
  %5 = load i32, ptr %arrayidx1, align 4
  %bits_per_pixel = getelementptr inbounds %struct.SZ_com_t_s, ptr %sz_param, i32 0, i32 1
  store i32 %5, ptr %bits_per_pixel, align 4
  %6 = load ptr, ptr %cd_values.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 1
  %7 = load i32, ptr %arrayidx2, align 4
  %pixels_per_block = getelementptr inbounds %struct.SZ_com_t_s, ptr %sz_param, i32 0, i32 2
  store i32 %7, ptr %pixels_per_block, align 4
  %8 = load ptr, ptr %cd_values.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 3
  %9 = load i32, ptr %arrayidx3, align 4
  %pixels_per_scanline = getelementptr inbounds %struct.SZ_com_t_s, ptr %sz_param, i32 0, i32 3
  store i32 %9, ptr %pixels_per_scanline, align 4
  %10 = load i32, ptr %flags.addr, align 4
  %and = and i32 %10, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then4, label %if.else37

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %stored_nalloc) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %nalloc) #5
  %11 = load ptr, ptr %buf.addr, align 8
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %newbuf, align 8
  %13 = load ptr, ptr %newbuf, align 8
  %14 = load i8, ptr %13, align 1
  %conv = zext i8 %14 to i32
  %and5 = and i32 %conv, 255
  store i32 %and5, ptr %stored_nalloc, align 4
  %15 = load ptr, ptr %newbuf, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %newbuf, align 8
  %16 = load ptr, ptr %newbuf, align 8
  %17 = load i8, ptr %16, align 1
  %conv6 = zext i8 %17 to i32
  %and7 = and i32 %conv6, 255
  %shl = shl i32 %and7, 8
  %18 = load i32, ptr %stored_nalloc, align 4
  %or = or i32 %18, %shl
  store i32 %or, ptr %stored_nalloc, align 4
  %19 = load ptr, ptr %newbuf, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr8, ptr %newbuf, align 8
  %20 = load ptr, ptr %newbuf, align 8
  %21 = load i8, ptr %20, align 1
  %conv9 = zext i8 %21 to i32
  %and10 = and i32 %conv9, 255
  %shl11 = shl i32 %and10, 16
  %22 = load i32, ptr %stored_nalloc, align 4
  %or12 = or i32 %22, %shl11
  store i32 %or12, ptr %stored_nalloc, align 4
  %23 = load ptr, ptr %newbuf, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr13, ptr %newbuf, align 8
  %24 = load ptr, ptr %newbuf, align 8
  %25 = load i8, ptr %24, align 1
  %conv14 = zext i8 %25 to i32
  %and15 = and i32 %conv14, 255
  %shl16 = shl i32 %and15, 24
  %26 = load i32, ptr %stored_nalloc, align 4
  %or17 = or i32 %26, %shl16
  store i32 %or17, ptr %stored_nalloc, align 4
  %27 = load ptr, ptr %newbuf, align 8
  %incdec.ptr18 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr18, ptr %newbuf, align 8
  %28 = load i32, ptr %stored_nalloc, align 4
  %conv19 = zext i32 %28 to i64
  store i64 %conv19, ptr %nalloc, align 8
  %29 = load i64, ptr %nalloc, align 8
  %call20 = call noalias ptr @malloc(i64 noundef %29) #6
  store ptr %call20, ptr %outbuf, align 8
  %cmp21 = icmp eq ptr null, %call20
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then4
  %30 = load ptr, ptr @stderr, align 8
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.1, ptr noundef @.str.14)
  store i64 -1, ptr %ret_value, align 8
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.then4
  %31 = load i64, ptr %nalloc, align 8
  store i64 %31, ptr %size_out, align 8
  %32 = load ptr, ptr %outbuf, align 8
  %33 = load ptr, ptr %newbuf, align 8
  %34 = load i64, ptr %nbytes.addr, align 8
  %sub = sub i64 %34, 4
  %call26 = call i32 @SZ_BufftoBuffDecompress(ptr noundef %32, ptr noundef %size_out, ptr noundef %33, i64 noundef %sub, ptr noundef %sz_param)
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end25
  %35 = load ptr, ptr @stderr, align 8
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.1, ptr noundef @.str.15)
  store i64 -1, ptr %ret_value, align 8
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  %36 = load ptr, ptr %buf.addr, align 8
  %37 = load ptr, ptr %36, align 8
  %cmp32 = icmp ne ptr %37, null
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end31
  %38 = load ptr, ptr %buf.addr, align 8
  %39 = load ptr, ptr %38, align 8
  call void @free(ptr noundef %39) #5
  br label %if.end35

if.else:                                          ; preds = %if.end31
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then34
  %40 = load ptr, ptr %outbuf, align 8
  %41 = load ptr, ptr %buf.addr, align 8
  store ptr %40, ptr %41, align 8
  store ptr null, ptr %outbuf, align 8
  %42 = load i64, ptr %nalloc, align 8
  %43 = load ptr, ptr %buf_size.addr, align 8
  store i64 %42, ptr %43, align 8
  %44 = load i64, ptr %size_out, align 8
  store i64 %44, ptr %ret_value, align 8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.then23, %if.end35
  call void @llvm.lifetime.end.p0(i64 8, ptr %nalloc) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %stored_nalloc) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup83 [
    i32 0, label %cleanup.cont
    i32 2, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end74

if.else37:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #5
  store ptr null, ptr %dst, align 8
  %45 = load i64, ptr %nbytes.addr, align 8
  %add = add i64 %45, 4
  %call38 = call noalias ptr @malloc(i64 noundef %add) #6
  store ptr %call38, ptr %outbuf, align 8
  store ptr %call38, ptr %dst, align 8
  %cmp39 = icmp eq ptr null, %call38
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.else37
  %46 = load ptr, ptr @stderr, align 8
  %call42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.1, ptr noundef @.str.16)
  store i64 -1, ptr %ret_value, align 8
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup71

if.end43:                                         ; preds = %if.else37
  %47 = load i64, ptr %nbytes.addr, align 8
  %and44 = and i64 %47, 255
  %conv45 = trunc i64 %and44 to i8
  %48 = load ptr, ptr %dst, align 8
  store i8 %conv45, ptr %48, align 1
  %49 = load ptr, ptr %dst, align 8
  %incdec.ptr46 = getelementptr inbounds i8, ptr %49, i32 1
  store ptr %incdec.ptr46, ptr %dst, align 8
  %50 = load i64, ptr %nbytes.addr, align 8
  %shr = lshr i64 %50, 8
  %and47 = and i64 %shr, 255
  %conv48 = trunc i64 %and47 to i8
  %51 = load ptr, ptr %dst, align 8
  store i8 %conv48, ptr %51, align 1
  %52 = load ptr, ptr %dst, align 8
  %incdec.ptr49 = getelementptr inbounds i8, ptr %52, i32 1
  store ptr %incdec.ptr49, ptr %dst, align 8
  %53 = load i64, ptr %nbytes.addr, align 8
  %shr50 = lshr i64 %53, 16
  %and51 = and i64 %shr50, 255
  %conv52 = trunc i64 %and51 to i8
  %54 = load ptr, ptr %dst, align 8
  store i8 %conv52, ptr %54, align 1
  %55 = load ptr, ptr %dst, align 8
  %incdec.ptr53 = getelementptr inbounds i8, ptr %55, i32 1
  store ptr %incdec.ptr53, ptr %dst, align 8
  %56 = load i64, ptr %nbytes.addr, align 8
  %shr54 = lshr i64 %56, 24
  %and55 = and i64 %shr54, 255
  %conv56 = trunc i64 %and55 to i8
  %57 = load ptr, ptr %dst, align 8
  store i8 %conv56, ptr %57, align 1
  %58 = load ptr, ptr %dst, align 8
  %incdec.ptr57 = getelementptr inbounds i8, ptr %58, i32 1
  store ptr %incdec.ptr57, ptr %dst, align 8
  %59 = load i64, ptr %nbytes.addr, align 8
  store i64 %59, ptr %size_out, align 8
  %60 = load ptr, ptr %dst, align 8
  %61 = load ptr, ptr %buf.addr, align 8
  %62 = load ptr, ptr %61, align 8
  %63 = load i64, ptr %nbytes.addr, align 8
  %call58 = call i32 @SZ_BufftoBuffCompress(ptr noundef %60, ptr noundef %size_out, ptr noundef %62, i64 noundef %63, ptr noundef %sz_param)
  %cmp59 = icmp ne i32 0, %call58
  br i1 %cmp59, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.end43
  %64 = load ptr, ptr @stderr, align 8
  %call62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef @.str.1, ptr noundef @.str.17)
  store i64 -1, ptr %ret_value, align 8
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup71

if.end63:                                         ; preds = %if.end43
  %65 = load ptr, ptr %buf.addr, align 8
  %66 = load ptr, ptr %65, align 8
  %cmp64 = icmp ne ptr %66, null
  br i1 %cmp64, label %if.then66, label %if.else67

if.then66:                                        ; preds = %if.end63
  %67 = load ptr, ptr %buf.addr, align 8
  %68 = load ptr, ptr %67, align 8
  call void @free(ptr noundef %68) #5
  br label %if.end68

if.else67:                                        ; preds = %if.end63
  br label %if.end68

if.end68:                                         ; preds = %if.else67, %if.then66
  %69 = load ptr, ptr %outbuf, align 8
  %70 = load ptr, ptr %buf.addr, align 8
  store ptr %69, ptr %70, align 8
  store ptr null, ptr %outbuf, align 8
  %71 = load i64, ptr %nbytes.addr, align 8
  %add69 = add i64 %71, 4
  %72 = load ptr, ptr %buf_size.addr, align 8
  store i64 %add69, ptr %72, align 8
  %73 = load i64, ptr %size_out, align 8
  %add70 = add i64 %73, 4
  store i64 %add70, ptr %ret_value, align 8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup71

cleanup71:                                        ; preds = %if.then61, %if.then41, %if.end68
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #5
  %cleanup.dest72 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest72, label %cleanup83 [
    i32 0, label %cleanup.cont73
    i32 2, label %done
  ]

cleanup.cont73:                                   ; preds = %cleanup71
  br label %if.end74

if.end74:                                         ; preds = %cleanup.cont73, %cleanup.cont
  br label %done

done:                                             ; preds = %if.end74, %cleanup71, %cleanup, %if.then
  %74 = load ptr, ptr %outbuf, align 8
  %tobool75 = icmp ne ptr %74, null
  br i1 %tobool75, label %if.then76, label %if.end82

if.then76:                                        ; preds = %done
  %75 = load ptr, ptr %outbuf, align 8
  %cmp77 = icmp ne ptr %75, null
  br i1 %cmp77, label %if.then79, label %if.else80

if.then79:                                        ; preds = %if.then76
  %76 = load ptr, ptr %outbuf, align 8
  call void @free(ptr noundef %76) #5
  br label %if.end81

if.else80:                                        ; preds = %if.then76
  br label %if.end81

if.end81:                                         ; preds = %if.else80, %if.then79
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %done
  %77 = load i64, ptr %ret_value, align 8
  store i64 %77, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83

cleanup83:                                        ; preds = %if.end82, %cleanup71, %cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr %sz_param) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %newbuf) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %outbuf) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %size_out) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret_value) #5
  %78 = load i64, ptr %retval, align 8
  ret i64 %78
}

; Function Attrs: nounwind uwtable
define i32 @H5PLget_plugin_type() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define ptr @H5PLget_plugin_info() #0 {
entry:
  ret ptr @H5Z_SZIP
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i64 @H5Tget_size(i32 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @H5Tget_order(i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @H5Pget_filter_by_id1(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i64 @H5Tget_precision(i32 noundef) #2

declare i32 @H5Tget_offset(i32 noundef) #2

declare i32 @H5Sget_simple_extent_dims(i32 noundef, ptr noundef, ptr noundef) #2

declare i64 @H5Sget_simple_extent_npoints(i32 noundef) #2

declare i32 @H5Pmodify_filter(i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

declare i32 @SZ_BufftoBuffDecompress(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

declare i32 @SZ_BufftoBuffCompress(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
