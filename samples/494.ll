; ModuleID = 'samples/494.bc'
source_filename = "/local-ssd/vtk-tde7pvxyfxkjb2rs7jnkeqne3vxa45o7-build/aidengro/spack-stage-vtk-9.0.3-tde7pvxyfxkjb2rs7jnkeqne3vxa45o7/spack-src/ThirdParty/libharu/vtklibharu/src/hpdf_image_png.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._HPDF_MMgr_Rec = type { ptr, ptr, ptr, ptr, i32 }
%struct._HPDF_Dict_Rec = type { %struct._HPDF_Obj_Header, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct._HPDF_Obj_Header = type { i32, i16, i16 }
%struct._HPDF_Error_Rec = type { i64, i64, ptr, ptr }
%struct.png_color_struct = type { i8, i8, i8 }
%struct._HPDF_String_Rec = type { %struct._HPDF_Obj_Header, ptr, ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"XObject\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Subtype\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"1.6.39\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"ColorSpace\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"BitsPerComponent\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"SMask\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Indexed\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"_FILE_NAME\00", align 1

; Function Attrs: uwtable
define ptr @vtklibharu_HPDF_Image_LoadPngImage(ptr noundef %mmgr, ptr noundef %png_data, ptr noundef %xref, i32 noundef %delayed_loading) #0 {
entry:
  %retval = alloca ptr, align 8
  %mmgr.addr = alloca ptr, align 8
  %png_data.addr = alloca ptr, align 8
  %xref.addr = alloca ptr, align 8
  %delayed_loading.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  %image = alloca ptr, align 8
  %header = alloca [8 x i8], align 1
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mmgr, ptr %mmgr.addr, align 8, !tbaa !4
  store ptr %png_data, ptr %png_data.addr, align 8, !tbaa !4
  store ptr %xref, ptr %xref.addr, align 8, !tbaa !4
  store i32 %delayed_loading, ptr %delayed_loading.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %image) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %header) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #4
  store i32 8, ptr %len, align 4, !tbaa !8
  %arraydecay = getelementptr inbounds [8 x i8], ptr %header, i64 0, i64 0
  %call = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay, i8 noundef zeroext 0, i32 noundef 8)
  %0 = load ptr, ptr %png_data.addr, align 8, !tbaa !4
  %arraydecay1 = getelementptr inbounds [8 x i8], ptr %header, i64 0, i64 0
  %call2 = call i64 @vtklibharu_HPDF_Stream_Read(ptr noundef %0, ptr noundef %arraydecay1, ptr noundef %len)
  store i64 %call2, ptr %ret, align 8, !tbaa !10
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arraydecay3 = getelementptr inbounds [8 x i8], ptr %header, i64 0, i64 0
  %call4 = call i32 @png_sig_cmp(ptr noundef %arraydecay3, i64 noundef 0, i64 noundef 8)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr %mmgr.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_MMgr_Rec, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %error, align 8, !tbaa !12
  %call5 = call i64 @vtklibharu_HPDF_SetError(ptr noundef %3, i64 noundef 4155, i64 noundef 0)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %mmgr.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %xref.addr, align 8, !tbaa !4
  %call6 = call ptr @vtklibharu_HPDF_DictStream_New(ptr noundef %4, ptr noundef %5)
  store ptr %call6, ptr %image, align 8, !tbaa !4
  %6 = load ptr, ptr %image, align 8, !tbaa !4
  %tobool7 = icmp ne ptr %6, null
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %7 = load ptr, ptr %image, align 8, !tbaa !4
  %header10 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 0
  %obj_class = getelementptr inbounds %struct._HPDF_Obj_Header, ptr %header10, i32 0, i32 2
  %8 = load i16, ptr %obj_class, align 2, !tbaa !14
  %conv = zext i16 %8 to i32
  %or = or i32 %conv, 1280
  %conv11 = trunc i32 %or to i16
  store i16 %conv11, ptr %obj_class, align 2, !tbaa !14
  %9 = load ptr, ptr %image, align 8, !tbaa !4
  %call12 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %9, ptr noundef @.str, ptr noundef @.str.1)
  %10 = load i64, ptr %ret, align 8, !tbaa !10
  %add = add i64 %10, %call12
  store i64 %add, ptr %ret, align 8, !tbaa !10
  %11 = load ptr, ptr %image, align 8, !tbaa !4
  %call13 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %11, ptr noundef @.str.2, ptr noundef @.str.3)
  %12 = load i64, ptr %ret, align 8, !tbaa !10
  %add14 = add i64 %12, %call13
  store i64 %add14, ptr %ret, align 8, !tbaa !10
  %13 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp15 = icmp ne i64 %13, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end9
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %14 = load ptr, ptr %image, align 8, !tbaa !4
  %15 = load ptr, ptr %xref.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %png_data.addr, align 8, !tbaa !4
  %17 = load i32, ptr %delayed_loading.addr, align 4, !tbaa !8
  %call19 = call i64 @LoadPngData(ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17)
  %cmp20 = icmp ne i64 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %18 = load ptr, ptr %image, align 8, !tbaa !4
  store ptr %18, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then22, %if.then17, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %header) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %image) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #4
  %19 = load ptr, ptr %retval, align 8
  ret ptr %19
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @vtklibharu_HPDF_MemSet(ptr noundef, i8 noundef zeroext, i32 noundef) #2

declare i64 @vtklibharu_HPDF_Stream_Read(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @png_sig_cmp(ptr noundef, i64 noundef, i64 noundef) #2

declare i64 @vtklibharu_HPDF_SetError(ptr noundef, i64 noundef, i64 noundef) #2

declare ptr @vtklibharu_HPDF_DictStream_New(ptr noundef, ptr noundef) #2

declare i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: uwtable
define internal i64 @LoadPngData(ptr noundef %image, ptr noundef %xref, ptr noundef %png_data, i32 noundef %delayed_loading) #0 {
entry:
  %retval = alloca i64, align 8
  %image.addr = alloca ptr, align 8
  %xref.addr = alloca ptr, align 8
  %png_data.addr = alloca ptr, align 8
  %delayed_loading.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %bit_depth = alloca i32, align 4
  %color_type = alloca i32, align 4
  %png_ptr = alloca ptr, align 8
  %info_ptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %trans = alloca ptr, align 8
  %num_trans = alloca i32, align 4
  %smask = alloca ptr, align 8
  %smask_data = alloca ptr, align 8
  %smask87 = alloca ptr, align 8
  %smask_data88 = alloca ptr, align 8
  store ptr %image, ptr %image.addr, align 8, !tbaa !4
  store ptr %xref, ptr %xref.addr, align 8, !tbaa !4
  store ptr %png_data, ptr %png_data.addr, align 8, !tbaa !4
  store i32 %delayed_loading, ptr %delayed_loading.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #4
  store i64 0, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %width) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %height) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit_depth) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %color_type) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %png_ptr) #4
  store ptr null, ptr %png_ptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %info_ptr) #4
  store ptr null, ptr %info_ptr, align 8, !tbaa !4
  %0 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %error, align 8, !tbaa !18
  %call = call noalias ptr @png_create_read_struct(ptr noundef @.str.4, ptr noundef %1, ptr noundef @PngErrorFunc, ptr noundef @PngErrorFunc)
  store ptr %call, ptr %png_ptr, align 8, !tbaa !4
  %2 = load ptr, ptr %png_ptr, align 8, !tbaa !4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %error1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %error1, align 8, !tbaa !18
  %call2 = call i64 @vtklibharu_HPDF_SetError(ptr noundef %4, i64 noundef 4117, i64 noundef 0)
  store i64 4117, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup210

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %png_ptr, align 8, !tbaa !4
  %call3 = call noalias ptr @png_create_info_struct(ptr noundef %5)
  store ptr %call3, ptr %info_ptr, align 8, !tbaa !4
  %6 = load ptr, ptr %info_ptr, align 8, !tbaa !4
  %cmp4 = icmp eq ptr %6, null
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %error6 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error6, align 8, !tbaa !18
  %call7 = call i64 @vtklibharu_HPDF_SetError(ptr noundef %8, i64 noundef 4117, i64 noundef 0)
  br label %Exit

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %png_ptr, align 8, !tbaa !4
  call void @png_set_sig_bytes(ptr noundef %9, i32 noundef 8)
  %10 = load ptr, ptr %png_ptr, align 8, !tbaa !4
  %11 = load ptr, ptr %png_data.addr, align 8, !tbaa !4
  call void @png_set_read_fn(ptr noundef %10, ptr noundef %11, ptr noundef @PngReadFunc)
  %12 = load ptr, ptr %png_ptr, align 8, !tbaa !4
  %13 = load ptr, ptr %info_ptr, align 8, !tbaa !4
  call void @png_read_info(ptr noundef %12, ptr noundef %13)
  %14 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %error9 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %error9, align 8, !tbaa !18
  %error_no = getelementptr inbounds %struct._HPDF_Error_Rec, ptr %15, i32 0, i32 0
  %16 = load i64, ptr %error_no, align 8, !tbaa !19
  %cmp10 = icmp ne i64 %16, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  br label %Exit

if.end12:                                         ; preds = %if.end8
  %17 = load ptr, ptr %png_ptr, align 8, !tbaa !4
  %18 = load ptr, ptr %info_ptr, align 8, !tbaa !4
  %call13 = call i32 @png_get_IHDR(ptr noundef %17, ptr noundef %18, ptr noundef %width, ptr noundef %height, ptr noundef %bit_depth, ptr noundef %color_type, ptr noundef null, ptr noundef null, ptr noundef null)
  %19 = load i32, ptr %bit_depth, align 4, !tbaa !8
  %cmp14 = icmp eq i32 %19, 16
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %20 = load ptr, ptr %png_ptr, align 8, !tbaa !4
  call void @png_set_strip_16(ptr noundef %20)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12
  %21 = load ptr, ptr %png_ptr, align 8, !tbaa !4
  %22 = load ptr, ptr %info_ptr, align 8, !tbaa !4
  call void @png_read_update_info(ptr noundef %21, ptr noundef %22)
  %23 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %error17 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %error17, align 8, !tbaa !18
  %error_no18 = getelementptr inbounds %struct._HPDF_Error_Rec, ptr %24, i32 0, i32 0
  %25 = load i64, ptr %error_no18, align 8, !tbaa !19
  %cmp19 = icmp ne i64 %25, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  br label %Exit

if.end21:                                         ; preds = %if.end16
  %26 = load ptr, ptr %xref.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %26, null
  br i1 %tobool, label %land.lhs.true, label %if.end81

land.lhs.true:                                    ; preds = %if.end21
  %27 = load i32, ptr %color_type, align 4, !tbaa !8
  %and = and i32 3, %27
  %tobool22 = icmp ne i32 %and, 0
  br i1 %tobool22, label %if.then23, label %if.end81

if.then23:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %trans) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_trans) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %smask) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %smask_data) #4
  %28 = load ptr, ptr %png_ptr, align 8, !tbaa !4
  %29 = load ptr, ptr %info_ptr, align 8, !tbaa !4
  %call24 = call i32 @png_get_valid(ptr noundef %28, ptr noundef %29, i32 noundef 16)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %lor.lhs.false, label %if.then28

lor.lhs.false:                                    ; preds = %if.then23
  %30 = load ptr, ptr %png_ptr, align 8, !tbaa !4
  %31 = load ptr, ptr %info_ptr, align 8, !tbaa !4
  %call26 = call i32 @png_get_tRNS(ptr noundef %30, ptr noundef %31, ptr noundef %trans, ptr noundef %num_trans, ptr noundef null)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %lor.lhs.false, %if.then23
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false
  %32 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %mmgr, align 8, !tbaa !21
  %34 = load ptr, ptr %xref.addr, align 8, !tbaa !4
  %call30 = call ptr @vtklibharu_HPDF_DictStream_New(ptr noundef %33, ptr noundef %34)
  store ptr %call30, ptr %smask, align 8, !tbaa !4
  %35 = load ptr, ptr %smask, align 8, !tbaa !4
  %tobool31 = icmp ne ptr %35, null
  br i1 %tobool31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end29
  store i64 4117, ptr %ret, align 8, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %36 = load ptr, ptr %smask, align 8, !tbaa !4
  %header = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %36, i32 0, i32 0
  %obj_class = getelementptr inbounds %struct._HPDF_Obj_Header, ptr %header, i32 0, i32 2
  %37 = load i16, ptr %obj_class, align 2, !tbaa !14
  %conv = zext i16 %37 to i32
  %or = or i32 %conv, 1280
  %conv34 = trunc i32 %or to i16
  store i16 %conv34, ptr %obj_class, align 2, !tbaa !14
  %38 = load ptr, ptr %smask, align 8, !tbaa !4
  %call35 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %38, ptr noundef @.str, ptr noundef @.str.1)
  store i64 %call35, ptr %ret, align 8, !tbaa !10
  %39 = load ptr, ptr %smask, align 8, !tbaa !4
  %call36 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %39, ptr noundef @.str.2, ptr noundef @.str.3)
  %40 = load i64, ptr %ret, align 8, !tbaa !10
  %add = add i64 %40, %call36
  store i64 %add, ptr %ret, align 8, !tbaa !10
  %41 = load ptr, ptr %smask, align 8, !tbaa !4
  %42 = load i32, ptr %width, align 4, !tbaa !8
  %call37 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %41, ptr noundef @.str.5, i32 noundef %42)
  %43 = load i64, ptr %ret, align 8, !tbaa !10
  %add38 = add i64 %43, %call37
  store i64 %add38, ptr %ret, align 8, !tbaa !10
  %44 = load ptr, ptr %smask, align 8, !tbaa !4
  %45 = load i32, ptr %height, align 4, !tbaa !8
  %call39 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %44, ptr noundef @.str.6, i32 noundef %45)
  %46 = load i64, ptr %ret, align 8, !tbaa !10
  %add40 = add i64 %46, %call39
  store i64 %add40, ptr %ret, align 8, !tbaa !10
  %47 = load ptr, ptr %smask, align 8, !tbaa !4
  %call41 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %47, ptr noundef @.str.7, ptr noundef @.str.8)
  %48 = load i64, ptr %ret, align 8, !tbaa !10
  %add42 = add i64 %48, %call41
  store i64 %add42, ptr %ret, align 8, !tbaa !10
  %49 = load ptr, ptr %smask, align 8, !tbaa !4
  %50 = load i32, ptr %bit_depth, align 4, !tbaa !8
  %call43 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %49, ptr noundef @.str.9, i32 noundef %50)
  %51 = load i64, ptr %ret, align 8, !tbaa !10
  %add44 = add i64 %51, %call43
  store i64 %add44, ptr %ret, align 8, !tbaa !10
  %52 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp45 = icmp ne i64 %52, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end33
  %53 = load ptr, ptr %smask, align 8, !tbaa !4
  call void @vtklibharu_HPDF_Dict_Free(ptr noundef %53)
  store i64 4155, ptr %ret, align 8, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end48:                                         ; preds = %if.end33
  %54 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr49 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %mmgr49, align 8, !tbaa !21
  %56 = load i32, ptr %width, align 4, !tbaa !8
  %57 = load i32, ptr %height, align 4, !tbaa !8
  %mul = mul i32 %56, %57
  %call50 = call ptr @vtklibharu_HPDF_GetMem(ptr noundef %55, i32 noundef %mul)
  store ptr %call50, ptr %smask_data, align 8, !tbaa !4
  %58 = load ptr, ptr %smask_data, align 8, !tbaa !4
  %tobool51 = icmp ne ptr %58, null
  br i1 %tobool51, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end48
  %59 = load ptr, ptr %smask, align 8, !tbaa !4
  call void @vtklibharu_HPDF_Dict_Free(ptr noundef %59)
  store i64 4117, ptr %ret, align 8, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end53:                                         ; preds = %if.end48
  %60 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %61 = load ptr, ptr %png_ptr, align 8, !tbaa !4
  %62 = load ptr, ptr %info_ptr, align 8, !tbaa !4
  %63 = load ptr, ptr %smask_data, align 8, !tbaa !4
  %64 = load ptr, ptr %trans, align 8, !tbaa !4
  %65 = load i32, ptr %num_trans, align 4, !tbaa !8
  %call54 = call i64 @ReadTransparentPaletteData(ptr noundef %60, ptr noundef %61, ptr noundef %62, ptr noundef %63, ptr noundef %64, i32 noundef %65)
  %cmp55 = icmp ne i64 %call54, 0
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end53
  %66 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr58 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %66, i32 0, i32 1
  %67 = load ptr, ptr %mmgr58, align 8, !tbaa !21
  %68 = load ptr, ptr %smask_data, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %67, ptr noundef %68)
  %69 = load ptr, ptr %smask, align 8, !tbaa !4
  call void @vtklibharu_HPDF_Dict_Free(ptr noundef %69)
  store i64 4155, ptr %ret, align 8, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end59:                                         ; preds = %if.end53
  %70 = load ptr, ptr %smask, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %70, i32 0, i32 8
  %71 = load ptr, ptr %stream, align 8, !tbaa !22
  %72 = load ptr, ptr %smask_data, align 8, !tbaa !4
  %73 = load i32, ptr %width, align 4, !tbaa !8
  %74 = load i32, ptr %height, align 4, !tbaa !8
  %mul60 = mul i32 %73, %74
  %call61 = call i64 @vtklibharu_HPDF_Stream_Write(ptr noundef %71, ptr noundef %72, i32 noundef %mul60)
  %cmp62 = icmp ne i64 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end59
  %75 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr65 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %75, i32 0, i32 1
  %76 = load ptr, ptr %mmgr65, align 8, !tbaa !21
  %77 = load ptr, ptr %smask_data, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %76, ptr noundef %77)
  %78 = load ptr, ptr %smask, align 8, !tbaa !4
  call void @vtklibharu_HPDF_Dict_Free(ptr noundef %78)
  store i64 4118, ptr %ret, align 8, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end66:                                         ; preds = %if.end59
  %79 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr67 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %79, i32 0, i32 1
  %80 = load ptr, ptr %mmgr67, align 8, !tbaa !21
  %81 = load ptr, ptr %smask_data, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %80, ptr noundef %81)
  %82 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %83 = load ptr, ptr %png_ptr, align 8, !tbaa !4
  %84 = load ptr, ptr %info_ptr, align 8, !tbaa !4
  %call68 = call i64 @CreatePallet(ptr noundef %82, ptr noundef %83, ptr noundef %84)
  %85 = load i64, ptr %ret, align 8, !tbaa !10
  %add69 = add i64 %85, %call68
  store i64 %add69, ptr %ret, align 8, !tbaa !10
  %86 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %87 = load i32, ptr %width, align 4, !tbaa !8
  %call70 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %86, ptr noundef @.str.5, i32 noundef %87)
  %88 = load i64, ptr %ret, align 8, !tbaa !10
  %add71 = add i64 %88, %call70
  store i64 %add71, ptr %ret, align 8, !tbaa !10
  %89 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %90 = load i32, ptr %height, align 4, !tbaa !8
  %call72 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %89, ptr noundef @.str.6, i32 noundef %90)
  %91 = load i64, ptr %ret, align 8, !tbaa !10
  %add73 = add i64 %91, %call72
  store i64 %add73, ptr %ret, align 8, !tbaa !10
  %92 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %93 = load i32, ptr %bit_depth, align 4, !tbaa !8
  %call74 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %92, ptr noundef @.str.9, i32 noundef %93)
  %94 = load i64, ptr %ret, align 8, !tbaa !10
  %add75 = add i64 %94, %call74
  store i64 %add75, ptr %ret, align 8, !tbaa !10
  %95 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %96 = load ptr, ptr %smask, align 8, !tbaa !4
  %call76 = call i64 @vtklibharu_HPDF_Dict_Add(ptr noundef %95, ptr noundef @.str.10, ptr noundef %96)
  %97 = load i64, ptr %ret, align 8, !tbaa !10
  %add77 = add i64 %97, %call76
  store i64 %add77, ptr %ret, align 8, !tbaa !10
  call void @png_destroy_read_struct(ptr noundef %png_ptr, ptr noundef %info_ptr, ptr noundef null)
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.then57, %if.then52, %if.then47, %if.then32, %if.then28, %if.end66
  call void @llvm.lifetime.end.p0(i64 8, ptr %smask_data) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %smask) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_trans) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %trans) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup210 [
    i32 3, label %no_transparent_color_in_palette
    i32 2, label %Exit
  ]

if.end81:                                         ; preds = %land.lhs.true, %if.end21
  br label %no_transparent_color_in_palette

no_transparent_color_in_palette:                  ; preds = %if.end81, %cleanup
  %98 = load ptr, ptr %xref.addr, align 8, !tbaa !4
  %tobool82 = icmp ne ptr %98, null
  br i1 %tobool82, label %land.lhs.true83, label %if.end153

land.lhs.true83:                                  ; preds = %no_transparent_color_in_palette
  %99 = load i32, ptr %color_type, align 4, !tbaa !8
  %and84 = and i32 4, %99
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.then86, label %if.end153

if.then86:                                        ; preds = %land.lhs.true83
  call void @llvm.lifetime.start.p0(i64 8, ptr %smask87) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %smask_data88) #4
  %100 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr89 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %100, i32 0, i32 1
  %101 = load ptr, ptr %mmgr89, align 8, !tbaa !21
  %102 = load ptr, ptr %xref.addr, align 8, !tbaa !4
  %call90 = call ptr @vtklibharu_HPDF_DictStream_New(ptr noundef %101, ptr noundef %102)
  store ptr %call90, ptr %smask87, align 8, !tbaa !4
  %103 = load ptr, ptr %smask87, align 8, !tbaa !4
  %tobool91 = icmp ne ptr %103, null
  br i1 %tobool91, label %if.end93, label %if.then92

if.then92:                                        ; preds = %if.then86
  store i64 4117, ptr %ret, align 8, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup151

if.end93:                                         ; preds = %if.then86
  %104 = load ptr, ptr %smask87, align 8, !tbaa !4
  %header94 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %104, i32 0, i32 0
  %obj_class95 = getelementptr inbounds %struct._HPDF_Obj_Header, ptr %header94, i32 0, i32 2
  %105 = load i16, ptr %obj_class95, align 2, !tbaa !14
  %conv96 = zext i16 %105 to i32
  %or97 = or i32 %conv96, 1280
  %conv98 = trunc i32 %or97 to i16
  store i16 %conv98, ptr %obj_class95, align 2, !tbaa !14
  %106 = load ptr, ptr %smask87, align 8, !tbaa !4
  %call99 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %106, ptr noundef @.str, ptr noundef @.str.1)
  store i64 %call99, ptr %ret, align 8, !tbaa !10
  %107 = load ptr, ptr %smask87, align 8, !tbaa !4
  %call100 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %107, ptr noundef @.str.2, ptr noundef @.str.3)
  %108 = load i64, ptr %ret, align 8, !tbaa !10
  %add101 = add i64 %108, %call100
  store i64 %add101, ptr %ret, align 8, !tbaa !10
  %109 = load ptr, ptr %smask87, align 8, !tbaa !4
  %110 = load i32, ptr %width, align 4, !tbaa !8
  %call102 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %109, ptr noundef @.str.5, i32 noundef %110)
  %111 = load i64, ptr %ret, align 8, !tbaa !10
  %add103 = add i64 %111, %call102
  store i64 %add103, ptr %ret, align 8, !tbaa !10
  %112 = load ptr, ptr %smask87, align 8, !tbaa !4
  %113 = load i32, ptr %height, align 4, !tbaa !8
  %call104 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %112, ptr noundef @.str.6, i32 noundef %113)
  %114 = load i64, ptr %ret, align 8, !tbaa !10
  %add105 = add i64 %114, %call104
  store i64 %add105, ptr %ret, align 8, !tbaa !10
  %115 = load ptr, ptr %smask87, align 8, !tbaa !4
  %call106 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %115, ptr noundef @.str.7, ptr noundef @.str.8)
  %116 = load i64, ptr %ret, align 8, !tbaa !10
  %add107 = add i64 %116, %call106
  store i64 %add107, ptr %ret, align 8, !tbaa !10
  %117 = load ptr, ptr %smask87, align 8, !tbaa !4
  %118 = load i32, ptr %bit_depth, align 4, !tbaa !8
  %call108 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %117, ptr noundef @.str.9, i32 noundef %118)
  %119 = load i64, ptr %ret, align 8, !tbaa !10
  %add109 = add i64 %119, %call108
  store i64 %add109, ptr %ret, align 8, !tbaa !10
  %120 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp110 = icmp ne i64 %120, 0
  br i1 %cmp110, label %if.then112, label %if.end113

if.then112:                                       ; preds = %if.end93
  %121 = load ptr, ptr %smask87, align 8, !tbaa !4
  call void @vtklibharu_HPDF_Dict_Free(ptr noundef %121)
  store i64 4155, ptr %ret, align 8, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup151

if.end113:                                        ; preds = %if.end93
  %122 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr114 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %122, i32 0, i32 1
  %123 = load ptr, ptr %mmgr114, align 8, !tbaa !21
  %124 = load i32, ptr %width, align 4, !tbaa !8
  %125 = load i32, ptr %height, align 4, !tbaa !8
  %mul115 = mul i32 %124, %125
  %call116 = call ptr @vtklibharu_HPDF_GetMem(ptr noundef %123, i32 noundef %mul115)
  store ptr %call116, ptr %smask_data88, align 8, !tbaa !4
  %126 = load ptr, ptr %smask_data88, align 8, !tbaa !4
  %tobool117 = icmp ne ptr %126, null
  br i1 %tobool117, label %if.end119, label %if.then118

if.then118:                                       ; preds = %if.end113
  %127 = load ptr, ptr %smask87, align 8, !tbaa !4
  call void @vtklibharu_HPDF_Dict_Free(ptr noundef %127)
  store i64 4117, ptr %ret, align 8, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup151

if.end119:                                        ; preds = %if.end113
  %128 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %129 = load ptr, ptr %png_ptr, align 8, !tbaa !4
  %130 = load ptr, ptr %info_ptr, align 8, !tbaa !4
  %131 = load ptr, ptr %smask_data88, align 8, !tbaa !4
  %call120 = call i64 @ReadTransparentPngData(ptr noundef %128, ptr noundef %129, ptr noundef %130, ptr noundef %131)
  %cmp121 = icmp ne i64 %call120, 0
  br i1 %cmp121, label %if.then123, label %if.end125

if.then123:                                       ; preds = %if.end119
  %132 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr124 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %132, i32 0, i32 1
  %133 = load ptr, ptr %mmgr124, align 8, !tbaa !21
  %134 = load ptr, ptr %smask_data88, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %133, ptr noundef %134)
  %135 = load ptr, ptr %smask87, align 8, !tbaa !4
  call void @vtklibharu_HPDF_Dict_Free(ptr noundef %135)
  store i64 4155, ptr %ret, align 8, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup151

if.end125:                                        ; preds = %if.end119
  %136 = load ptr, ptr %smask87, align 8, !tbaa !4
  %stream126 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %136, i32 0, i32 8
  %137 = load ptr, ptr %stream126, align 8, !tbaa !22
  %138 = load ptr, ptr %smask_data88, align 8, !tbaa !4
  %139 = load i32, ptr %width, align 4, !tbaa !8
  %140 = load i32, ptr %height, align 4, !tbaa !8
  %mul127 = mul i32 %139, %140
  %call128 = call i64 @vtklibharu_HPDF_Stream_Write(ptr noundef %137, ptr noundef %138, i32 noundef %mul127)
  %cmp129 = icmp ne i64 %call128, 0
  br i1 %cmp129, label %if.then131, label %if.end133

if.then131:                                       ; preds = %if.end125
  %141 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr132 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %141, i32 0, i32 1
  %142 = load ptr, ptr %mmgr132, align 8, !tbaa !21
  %143 = load ptr, ptr %smask_data88, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %142, ptr noundef %143)
  %144 = load ptr, ptr %smask87, align 8, !tbaa !4
  call void @vtklibharu_HPDF_Dict_Free(ptr noundef %144)
  store i64 4118, ptr %ret, align 8, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup151

if.end133:                                        ; preds = %if.end125
  %145 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr134 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %145, i32 0, i32 1
  %146 = load ptr, ptr %mmgr134, align 8, !tbaa !21
  %147 = load ptr, ptr %smask_data88, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %146, ptr noundef %147)
  %148 = load i32, ptr %color_type, align 4, !tbaa !8
  %cmp135 = icmp eq i32 %148, 4
  br i1 %cmp135, label %if.then137, label %if.else

if.then137:                                       ; preds = %if.end133
  %149 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %call138 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %149, ptr noundef @.str.7, ptr noundef @.str.8)
  %150 = load i64, ptr %ret, align 8, !tbaa !10
  %add139 = add i64 %150, %call138
  store i64 %add139, ptr %ret, align 8, !tbaa !10
  br label %if.end142

if.else:                                          ; preds = %if.end133
  %151 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %call140 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %151, ptr noundef @.str.7, ptr noundef @.str.11)
  %152 = load i64, ptr %ret, align 8, !tbaa !10
  %add141 = add i64 %152, %call140
  store i64 %add141, ptr %ret, align 8, !tbaa !10
  br label %if.end142

if.end142:                                        ; preds = %if.else, %if.then137
  %153 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %154 = load i32, ptr %width, align 4, !tbaa !8
  %call143 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %153, ptr noundef @.str.5, i32 noundef %154)
  %155 = load i64, ptr %ret, align 8, !tbaa !10
  %add144 = add i64 %155, %call143
  store i64 %add144, ptr %ret, align 8, !tbaa !10
  %156 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %157 = load i32, ptr %height, align 4, !tbaa !8
  %call145 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %156, ptr noundef @.str.6, i32 noundef %157)
  %158 = load i64, ptr %ret, align 8, !tbaa !10
  %add146 = add i64 %158, %call145
  store i64 %add146, ptr %ret, align 8, !tbaa !10
  %159 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %160 = load i32, ptr %bit_depth, align 4, !tbaa !8
  %call147 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %159, ptr noundef @.str.9, i32 noundef %160)
  %161 = load i64, ptr %ret, align 8, !tbaa !10
  %add148 = add i64 %161, %call147
  store i64 %add148, ptr %ret, align 8, !tbaa !10
  %162 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %163 = load ptr, ptr %smask87, align 8, !tbaa !4
  %call149 = call i64 @vtklibharu_HPDF_Dict_Add(ptr noundef %162, ptr noundef @.str.10, ptr noundef %163)
  %164 = load i64, ptr %ret, align 8, !tbaa !10
  %add150 = add i64 %164, %call149
  store i64 %add150, ptr %ret, align 8, !tbaa !10
  call void @png_destroy_read_struct(ptr noundef %png_ptr, ptr noundef %info_ptr, ptr noundef null)
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup151

cleanup151:                                       ; preds = %if.then131, %if.then123, %if.then118, %if.then112, %if.then92, %if.end142
  call void @llvm.lifetime.end.p0(i64 8, ptr %smask_data88) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %smask87) #4
  %cleanup.dest203 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest203, label %cleanup210 [
    i32 2, label %Exit
  ]

if.end153:                                        ; preds = %land.lhs.true83, %no_transparent_color_in_palette
  %165 = load i32, ptr %color_type, align 4, !tbaa !8
  %cmp154 = icmp eq i32 %165, 3
  br i1 %cmp154, label %if.then156, label %if.else158

if.then156:                                       ; preds = %if.end153
  %166 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %167 = load ptr, ptr %png_ptr, align 8, !tbaa !4
  %168 = load ptr, ptr %info_ptr, align 8, !tbaa !4
  %call157 = call i64 @CreatePallet(ptr noundef %166, ptr noundef %167, ptr noundef %168)
  store i64 %call157, ptr %ret, align 8, !tbaa !10
  br label %if.end166

if.else158:                                       ; preds = %if.end153
  %169 = load i32, ptr %color_type, align 4, !tbaa !8
  %cmp159 = icmp eq i32 %169, 0
  br i1 %cmp159, label %if.then161, label %if.else163

if.then161:                                       ; preds = %if.else158
  %170 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %call162 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %170, ptr noundef @.str.7, ptr noundef @.str.8)
  store i64 %call162, ptr %ret, align 8, !tbaa !10
  br label %if.end165

if.else163:                                       ; preds = %if.else158
  %171 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %call164 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %171, ptr noundef @.str.7, ptr noundef @.str.11)
  store i64 %call164, ptr %ret, align 8, !tbaa !10
  br label %if.end165

if.end165:                                        ; preds = %if.else163, %if.then161
  br label %if.end166

if.end166:                                        ; preds = %if.end165, %if.then156
  %172 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp167 = icmp ne i64 %172, 0
  br i1 %cmp167, label %if.then169, label %if.end170

if.then169:                                       ; preds = %if.end166
  br label %Exit

if.end170:                                        ; preds = %if.end166
  %173 = load i32, ptr %delayed_loading.addr, align 4, !tbaa !8
  %tobool171 = icmp ne i32 %173, 0
  br i1 %tobool171, label %if.then172, label %if.else173

if.then172:                                       ; preds = %if.end170
  %174 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %before_write_fn = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %174, i32 0, i32 4
  store ptr @PngBeforeWrite, ptr %before_write_fn, align 8, !tbaa !23
  %175 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %after_write_fn = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %175, i32 0, i32 6
  store ptr @PngAfterWrite, ptr %after_write_fn, align 8, !tbaa !24
  br label %if.end187

if.else173:                                       ; preds = %if.end170
  %176 = load ptr, ptr %png_ptr, align 8, !tbaa !4
  %177 = load ptr, ptr %info_ptr, align 8, !tbaa !4
  %call174 = call zeroext i8 @png_get_interlace_type(ptr noundef %176, ptr noundef %177)
  %conv175 = zext i8 %call174 to i32
  %cmp176 = icmp ne i32 %conv175, 0
  br i1 %cmp176, label %if.then178, label %if.else180

if.then178:                                       ; preds = %if.else173
  %178 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %179 = load ptr, ptr %png_ptr, align 8, !tbaa !4
  %180 = load ptr, ptr %info_ptr, align 8, !tbaa !4
  %call179 = call i64 @ReadPngData_Interlaced(ptr noundef %178, ptr noundef %179, ptr noundef %180)
  store i64 %call179, ptr %ret, align 8, !tbaa !10
  br label %if.end182

if.else180:                                       ; preds = %if.else173
  %181 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %182 = load ptr, ptr %png_ptr, align 8, !tbaa !4
  %183 = load ptr, ptr %info_ptr, align 8, !tbaa !4
  %call181 = call i64 @ReadPngData(ptr noundef %181, ptr noundef %182, ptr noundef %183)
  store i64 %call181, ptr %ret, align 8, !tbaa !10
  br label %if.end182

if.end182:                                        ; preds = %if.else180, %if.then178
  %184 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp183 = icmp ne i64 %184, 0
  br i1 %cmp183, label %if.then185, label %if.end186

if.then185:                                       ; preds = %if.end182
  br label %Exit

if.end186:                                        ; preds = %if.end182
  br label %if.end187

if.end187:                                        ; preds = %if.end186, %if.then172
  %185 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %186 = load i32, ptr %width, align 4, !tbaa !8
  %call188 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %185, ptr noundef @.str.5, i32 noundef %186)
  %cmp189 = icmp ne i64 %call188, 0
  br i1 %cmp189, label %if.then191, label %if.end192

if.then191:                                       ; preds = %if.end187
  br label %Exit

if.end192:                                        ; preds = %if.end187
  %187 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %188 = load i32, ptr %height, align 4, !tbaa !8
  %call193 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %187, ptr noundef @.str.6, i32 noundef %188)
  %cmp194 = icmp ne i64 %call193, 0
  br i1 %cmp194, label %if.then196, label %if.end197

if.then196:                                       ; preds = %if.end192
  br label %Exit

if.end197:                                        ; preds = %if.end192
  %189 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %190 = load i32, ptr %bit_depth, align 4, !tbaa !8
  %call198 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %189, ptr noundef @.str.9, i32 noundef %190)
  %cmp199 = icmp ne i64 %call198, 0
  br i1 %cmp199, label %if.then201, label %if.end202

if.then201:                                       ; preds = %if.end197
  br label %Exit

if.end202:                                        ; preds = %if.end197
  call void @png_destroy_read_struct(ptr noundef %png_ptr, ptr noundef %info_ptr, ptr noundef null)
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup210

Exit:                                             ; preds = %cleanup151, %cleanup, %if.then201, %if.then196, %if.then191, %if.then185, %if.then169, %if.then20, %if.then11, %if.then5
  call void @png_destroy_read_struct(ptr noundef %png_ptr, ptr noundef %info_ptr, ptr noundef null)
  %191 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp204 = icmp ne i64 %191, 0
  br i1 %cmp204, label %if.then206, label %if.end207

if.then206:                                       ; preds = %Exit
  %192 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %192, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup210

if.end207:                                        ; preds = %Exit
  %193 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %error208 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %193, i32 0, i32 2
  %194 = load ptr, ptr %error208, align 8, !tbaa !18
  %error_no209 = getelementptr inbounds %struct._HPDF_Error_Rec, ptr %194, i32 0, i32 0
  %195 = load i64, ptr %error_no209, align 8, !tbaa !19
  store i64 %195, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup210

cleanup210:                                       ; preds = %if.end207, %if.then206, %cleanup151, %if.end202, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %info_ptr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %png_ptr) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %color_type) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit_depth) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %height) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %width) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #4
  %196 = load i64, ptr %retval, align 8
  ret i64 %196
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare noalias ptr @png_create_read_struct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: uwtable
define internal void @PngErrorFunc(ptr noundef %png_ptr, ptr noundef %msg) #0 {
entry:
  %png_ptr.addr = alloca ptr, align 8
  %msg.addr = alloca ptr, align 8
  %error_number = alloca [16 x i8], align 16
  %i = alloca i32, align 4
  %detail_no = alloca i64, align 8
  %error = alloca ptr, align 8
  store ptr %png_ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  store ptr %msg, ptr %msg.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %error_number) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %detail_no) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %error) #4
  %arraydecay = getelementptr inbounds [16 x i8], ptr %error_number, i64 0, i64 0
  %call = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay, i8 noundef zeroext 0, i32 noundef 16)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %cmp = icmp ult i32 %0, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %msg.addr, align 8, !tbaa !4
  %2 = load i32, ptr %i, align 4, !tbaa !8
  %idx.ext = zext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  %3 = load i8, ptr %add.ptr, align 1, !tbaa !25
  %4 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr %error_number, i64 0, i64 %idxprom
  store i8 %3, ptr %arrayidx, align 1, !tbaa !25
  %5 = load ptr, ptr %msg.addr, align 8, !tbaa !4
  %6 = load i32, ptr %i, align 4, !tbaa !8
  %idx.ext1 = zext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i8, ptr %5, i64 %idx.ext1
  %add.ptr3 = getelementptr inbounds i8, ptr %add.ptr2, i64 1
  %7 = load i8, ptr %add.ptr3, align 1, !tbaa !25
  %conv = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv, 32
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  %call6 = call ptr @png_get_error_ptr(ptr noundef %9)
  store ptr %call6, ptr %error, align 8, !tbaa !4
  %arraydecay7 = getelementptr inbounds [16 x i8], ptr %error_number, i64 0, i64 0
  %call8 = call i32 @vtklibharu_HPDF_AToI(ptr noundef %arraydecay7)
  %conv9 = sext i32 %call8 to i64
  store i64 %conv9, ptr %detail_no, align 8, !tbaa !10
  %10 = load ptr, ptr %error, align 8, !tbaa !4
  %11 = load i64, ptr %detail_no, align 8, !tbaa !10
  %call10 = call i64 @vtklibharu_HPDF_SetError(ptr noundef %10, i64 noundef 4163, i64 noundef %11)
  call void @llvm.lifetime.end.p0(i64 8, ptr %error) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %detail_no) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %error_number) #4
  ret void
}

declare noalias ptr @png_create_info_struct(ptr noundef) #2

declare void @png_set_sig_bytes(ptr noundef, i32 noundef) #2

declare void @png_set_read_fn(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: uwtable
define internal void @PngReadFunc(ptr noundef %png_ptr, ptr noundef %data, i32 noundef %length) #0 {
entry:
  %png_ptr.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %stream = alloca ptr, align 8
  store ptr %png_ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i32 %length, ptr %length.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #4
  %0 = load i32, ptr %length.addr, align 4, !tbaa !8
  store i32 %0, ptr %len, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %stream) #4
  %1 = load ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  %call = call ptr @png_get_io_ptr(ptr noundef %1)
  store ptr %call, ptr %stream, align 8, !tbaa !4
  %2 = load ptr, ptr %stream, align 8, !tbaa !4
  %3 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %call1 = call i64 @vtklibharu_HPDF_Stream_Read(ptr noundef %2, ptr noundef %3, ptr noundef %len)
  call void @llvm.lifetime.end.p0(i64 8, ptr %stream) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #4
  ret void
}

declare void @png_read_info(ptr noundef, ptr noundef) #2

declare i32 @png_get_IHDR(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @png_set_strip_16(ptr noundef) #2

declare void @png_read_update_info(ptr noundef, ptr noundef) #2

declare i32 @png_get_valid(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @png_get_tRNS(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef, ptr noundef, i32 noundef) #2

declare void @vtklibharu_HPDF_Dict_Free(ptr noundef) #2

declare ptr @vtklibharu_HPDF_GetMem(ptr noundef, i32 noundef) #2

; Function Attrs: uwtable
define internal i64 @ReadTransparentPaletteData(ptr noundef %image, ptr noundef %png_ptr, ptr noundef %info_ptr, ptr noundef %smask_data, ptr noundef %trans, i32 noundef %num_trans) #0 {
entry:
  %retval = alloca i64, align 8
  %image.addr = alloca ptr, align 8
  %png_ptr.addr = alloca ptr, align 8
  %info_ptr.addr = alloca ptr, align 8
  %smask_data.addr = alloca ptr, align 8
  %trans.addr = alloca ptr, align 8
  %num_trans.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %row_ptr = alloca ptr, align 8
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %image, ptr %image.addr, align 8, !tbaa !4
  store ptr %png_ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  store ptr %info_ptr, ptr %info_ptr.addr, align 8, !tbaa !4
  store ptr %smask_data, ptr %smask_data.addr, align 8, !tbaa !4
  store ptr %trans, ptr %trans.addr, align 8, !tbaa !4
  store i32 %num_trans, ptr %num_trans.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #4
  store i64 0, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %row_ptr) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %height) #4
  %0 = load ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %info_ptr.addr, align 8, !tbaa !4
  %call = call i32 @png_get_image_height(ptr noundef %0, ptr noundef %1)
  store i32 %call, ptr %height, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %width) #4
  %2 = load ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %info_ptr.addr, align 8, !tbaa !4
  %call1 = call i32 @png_get_image_width(ptr noundef %2, ptr noundef %3)
  store i32 %call1, ptr %width, align 4, !tbaa !8
  %4 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %mmgr, align 8, !tbaa !21
  %6 = load i32, ptr %height, align 4, !tbaa !8
  %conv = zext i32 %6 to i64
  %mul = mul i64 %conv, 8
  %conv2 = trunc i64 %mul to i32
  %call3 = call ptr @vtklibharu_HPDF_GetMem(ptr noundef %5, i32 noundef %conv2)
  store ptr %call3, ptr %row_ptr, align 8, !tbaa !4
  %7 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i64 4117, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #4
  %8 = load ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %info_ptr.addr, align 8, !tbaa !4
  %call4 = call i64 @png_get_rowbytes(ptr noundef %8, ptr noundef %9)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, ptr %len, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %if.else
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %11 = load i32, ptr %height, align 4, !tbaa !8
  %cmp = icmp ult i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr7 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %mmgr7, align 8, !tbaa !21
  %14 = load i32, ptr %len, align 4, !tbaa !8
  %call8 = call ptr @vtklibharu_HPDF_GetMem(ptr noundef %13, i32 noundef %14)
  %15 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  %16 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %16 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 %idxprom
  store ptr %call8, ptr %arrayidx, align 8, !tbaa !4
  %17 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  %18 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom9 = zext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %17, i64 %idxprom9
  %19 = load ptr, ptr %arrayidx10, align 8, !tbaa !4
  %tobool11 = icmp ne ptr %19, null
  br i1 %tobool11, label %if.end, label %if.then12

if.then12:                                        ; preds = %for.body
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %if.then12
  %20 = load i32, ptr %i, align 4, !tbaa !8
  %cmp14 = icmp ugt i32 %20, 0
  br i1 %cmp14, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond13
  %21 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr17 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %mmgr17, align 8, !tbaa !21
  %23 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  %24 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom18 = zext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %23, i64 %idxprom18
  %25 = load ptr, ptr %arrayidx19, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %22, ptr noundef %25)
  br label %for.inc

for.inc:                                          ; preds = %for.body16
  %26 = load i32, ptr %i, align 4, !tbaa !8
  %dec = add i32 %26, -1
  store i32 %dec, ptr %i, align 4, !tbaa !8
  br label %for.cond13, !llvm.loop !28

for.end:                                          ; preds = %for.cond13
  %27 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr20 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %mmgr20, align 8, !tbaa !21
  %29 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %28, ptr noundef %29)
  store i64 4117, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc21

for.inc21:                                        ; preds = %if.end
  %30 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %30, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !29

for.end22:                                        ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end22, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup78 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end23

if.end23:                                         ; preds = %cleanup.cont
  %31 = load ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  %32 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  call void @png_read_image(ptr noundef %31, ptr noundef %32)
  %33 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %error, align 8, !tbaa !18
  %error_no = getelementptr inbounds %struct._HPDF_Error_Rec, ptr %34, i32 0, i32 0
  %35 = load i64, ptr %error_no, align 8, !tbaa !19
  %cmp24 = icmp ne i64 %35, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  store i64 4155, ptr %ret, align 8, !tbaa !10
  br label %Error

if.end27:                                         ; preds = %if.end23
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc64, %if.end27
  %36 = load i32, ptr %j, align 4, !tbaa !8
  %37 = load i32, ptr %height, align 4, !tbaa !8
  %cmp29 = icmp ult i32 %36, %37
  br i1 %cmp29, label %for.body31, label %for.end66

for.body31:                                       ; preds = %for.cond28
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc54, %for.body31
  %38 = load i32, ptr %i, align 4, !tbaa !8
  %39 = load i32, ptr %width, align 4, !tbaa !8
  %cmp33 = icmp ult i32 %38, %39
  br i1 %cmp33, label %for.body35, label %for.end56

for.body35:                                       ; preds = %for.cond32
  %40 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  %41 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom36 = zext i32 %41 to i64
  %arrayidx37 = getelementptr inbounds ptr, ptr %40, i64 %idxprom36
  %42 = load ptr, ptr %arrayidx37, align 8, !tbaa !4
  %43 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom38 = zext i32 %43 to i64
  %arrayidx39 = getelementptr inbounds i8, ptr %42, i64 %idxprom38
  %44 = load i8, ptr %arrayidx39, align 1, !tbaa !25
  %conv40 = zext i8 %44 to i32
  %45 = load i32, ptr %num_trans.addr, align 4, !tbaa !8
  %cmp41 = icmp slt i32 %conv40, %45
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body35
  %46 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %47 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  %48 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom43 = zext i32 %48 to i64
  %arrayidx44 = getelementptr inbounds ptr, ptr %47, i64 %idxprom43
  %49 = load ptr, ptr %arrayidx44, align 8, !tbaa !4
  %50 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom45 = zext i32 %50 to i64
  %arrayidx46 = getelementptr inbounds i8, ptr %49, i64 %idxprom45
  %51 = load i8, ptr %arrayidx46, align 1, !tbaa !25
  %idxprom47 = zext i8 %51 to i64
  %arrayidx48 = getelementptr inbounds i8, ptr %46, i64 %idxprom47
  %52 = load i8, ptr %arrayidx48, align 1, !tbaa !25
  %conv49 = zext i8 %52 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body35
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv49, %cond.true ], [ 255, %cond.false ]
  %conv50 = trunc i32 %cond to i8
  %53 = load ptr, ptr %smask_data.addr, align 8, !tbaa !4
  %54 = load i32, ptr %width, align 4, !tbaa !8
  %55 = load i32, ptr %j, align 4, !tbaa !8
  %mul51 = mul i32 %54, %55
  %56 = load i32, ptr %i, align 4, !tbaa !8
  %add = add i32 %mul51, %56
  %idxprom52 = zext i32 %add to i64
  %arrayidx53 = getelementptr inbounds i8, ptr %53, i64 %idxprom52
  store i8 %conv50, ptr %arrayidx53, align 1, !tbaa !25
  br label %for.inc54

for.inc54:                                        ; preds = %cond.end
  %57 = load i32, ptr %i, align 4, !tbaa !8
  %inc55 = add i32 %57, 1
  store i32 %inc55, ptr %i, align 4, !tbaa !8
  br label %for.cond32, !llvm.loop !30

for.end56:                                        ; preds = %for.cond32
  %58 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %58, i32 0, i32 8
  %59 = load ptr, ptr %stream, align 8, !tbaa !22
  %60 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  %61 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom57 = zext i32 %61 to i64
  %arrayidx58 = getelementptr inbounds ptr, ptr %60, i64 %idxprom57
  %62 = load ptr, ptr %arrayidx58, align 8, !tbaa !4
  %63 = load i32, ptr %width, align 4, !tbaa !8
  %call59 = call i64 @vtklibharu_HPDF_Stream_Write(ptr noundef %59, ptr noundef %62, i32 noundef %63)
  %cmp60 = icmp ne i64 %call59, 0
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %for.end56
  store i64 4118, ptr %ret, align 8, !tbaa !10
  br label %Error

if.end63:                                         ; preds = %for.end56
  br label %for.inc64

for.inc64:                                        ; preds = %if.end63
  %64 = load i32, ptr %j, align 4, !tbaa !8
  %inc65 = add i32 %64, 1
  store i32 %inc65, ptr %j, align 4, !tbaa !8
  br label %for.cond28, !llvm.loop !31

for.end66:                                        ; preds = %for.cond28
  br label %Error

Error:                                            ; preds = %for.end66, %if.then62, %if.then26
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc74, %Error
  %65 = load i32, ptr %i, align 4, !tbaa !8
  %66 = load i32, ptr %height, align 4, !tbaa !8
  %cmp68 = icmp ult i32 %65, %66
  br i1 %cmp68, label %for.body70, label %for.end76

for.body70:                                       ; preds = %for.cond67
  %67 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr71 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %67, i32 0, i32 1
  %68 = load ptr, ptr %mmgr71, align 8, !tbaa !21
  %69 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  %70 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom72 = zext i32 %70 to i64
  %arrayidx73 = getelementptr inbounds ptr, ptr %69, i64 %idxprom72
  %71 = load ptr, ptr %arrayidx73, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %68, ptr noundef %71)
  br label %for.inc74

for.inc74:                                        ; preds = %for.body70
  %72 = load i32, ptr %i, align 4, !tbaa !8
  %inc75 = add i32 %72, 1
  store i32 %inc75, ptr %i, align 4, !tbaa !8
  br label %for.cond67, !llvm.loop !32

for.end76:                                        ; preds = %for.cond67
  %73 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr77 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %73, i32 0, i32 1
  %74 = load ptr, ptr %mmgr77, align 8, !tbaa !21
  %75 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %74, ptr noundef %75)
  %76 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %76, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78

cleanup78:                                        ; preds = %for.end76, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %width) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %height) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %row_ptr) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #4
  %77 = load i64, ptr %retval, align 8
  ret i64 %77
}

declare void @vtklibharu_HPDF_FreeMem(ptr noundef, ptr noundef) #2

declare i64 @vtklibharu_HPDF_Stream_Write(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: uwtable
define internal i64 @CreatePallet(ptr noundef %image, ptr noundef %png_ptr, ptr noundef %info_ptr) #0 {
entry:
  %retval = alloca i64, align 8
  %image.addr = alloca ptr, align 8
  %png_ptr.addr = alloca ptr, align 8
  %info_ptr.addr = alloca ptr, align 8
  %num_pl = alloca i32, align 4
  %src_pl = alloca ptr, align 8
  %ppallet = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %array = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %b = alloca ptr, align 8
  store ptr %image, ptr %image.addr, align 8, !tbaa !4
  store ptr %png_ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  store ptr %info_ptr, ptr %info_ptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_pl) #4
  store i32 0, ptr %num_pl, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %src_pl) #4
  store ptr null, ptr %src_pl, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ppallet) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #4
  %0 = load ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %info_ptr.addr, align 8, !tbaa !4
  %call = call i32 @png_get_PLTE(ptr noundef %0, ptr noundef %1, ptr noundef %src_pl, ptr noundef %num_pl)
  %cmp = icmp ne i32 %call, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %error, align 8, !tbaa !18
  %call1 = call i64 @vtklibharu_HPDF_SetError(ptr noundef %3, i64 noundef 4163, i64 noundef 4101)
  store i64 %call1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %mmgr, align 8, !tbaa !21
  %6 = load i32, ptr %num_pl, align 4, !tbaa !8
  %mul = mul nsw i32 %6, 3
  %call2 = call ptr @vtklibharu_HPDF_GetMem(ptr noundef %5, i32 noundef %mul)
  store ptr %call2, ptr %ppallet, align 8, !tbaa !4
  %7 = load ptr, ptr %ppallet, align 8, !tbaa !4
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %error4 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %error4, align 8, !tbaa !18
  %error_no = getelementptr inbounds %struct._HPDF_Error_Rec, ptr %9, i32 0, i32 0
  %10 = load i64, ptr %error_no, align 8, !tbaa !19
  store i64 %10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = load ptr, ptr %ppallet, align 8, !tbaa !4
  store ptr %11, ptr %p, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %13 = load i32, ptr %num_pl, align 4, !tbaa !8
  %cmp6 = icmp ult i32 %12, %13
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %src_pl, align 8, !tbaa !4
  %red = getelementptr inbounds %struct.png_color_struct, ptr %14, i32 0, i32 0
  %15 = load i8, ptr %red, align 1, !tbaa !33
  %16 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  store i8 %15, ptr %16, align 1, !tbaa !25
  %17 = load ptr, ptr %src_pl, align 8, !tbaa !4
  %green = getelementptr inbounds %struct.png_color_struct, ptr %17, i32 0, i32 1
  %18 = load i8, ptr %green, align 1, !tbaa !35
  %19 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr7 = getelementptr inbounds i8, ptr %19, i32 1
  store ptr %incdec.ptr7, ptr %p, align 8, !tbaa !4
  store i8 %18, ptr %19, align 1, !tbaa !25
  %20 = load ptr, ptr %src_pl, align 8, !tbaa !4
  %blue = getelementptr inbounds %struct.png_color_struct, ptr %20, i32 0, i32 2
  %21 = load i8, ptr %blue, align 1, !tbaa !36
  %22 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr8 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr8, ptr %p, align 8, !tbaa !4
  store i8 %21, ptr %22, align 1, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %23, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  %24 = load ptr, ptr %src_pl, align 8, !tbaa !4
  %incdec.ptr9 = getelementptr inbounds %struct.png_color_struct, ptr %24, i32 1
  store ptr %incdec.ptr9, ptr %src_pl, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr10 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %mmgr10, align 8, !tbaa !21
  %call11 = call ptr @vtklibharu_HPDF_Array_New(ptr noundef %26)
  store ptr %call11, ptr %array, align 8, !tbaa !4
  %27 = load ptr, ptr %array, align 8, !tbaa !4
  %tobool12 = icmp ne ptr %27, null
  br i1 %tobool12, label %if.then13, label %if.end25

if.then13:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4
  %28 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %array, align 8, !tbaa !4
  %call14 = call i64 @vtklibharu_HPDF_Dict_Add(ptr noundef %28, ptr noundef @.str.7, ptr noundef %29)
  %30 = load ptr, ptr %array, align 8, !tbaa !4
  %call15 = call i64 @vtklibharu_HPDF_Array_AddName(ptr noundef %30, ptr noundef @.str.12)
  %31 = load ptr, ptr %array, align 8, !tbaa !4
  %call16 = call i64 @vtklibharu_HPDF_Array_AddName(ptr noundef %31, ptr noundef @.str.11)
  %32 = load ptr, ptr %array, align 8, !tbaa !4
  %33 = load i32, ptr %num_pl, align 4, !tbaa !8
  %sub = sub nsw i32 %33, 1
  %call17 = call i64 @vtklibharu_HPDF_Array_AddNumber(ptr noundef %32, i32 noundef %sub)
  %34 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr18 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %mmgr18, align 8, !tbaa !21
  %36 = load ptr, ptr %ppallet, align 8, !tbaa !4
  %37 = load i32, ptr %num_pl, align 4, !tbaa !8
  %mul19 = mul nsw i32 %37, 3
  %call20 = call ptr @vtklibharu_HPDF_Binary_New(ptr noundef %35, ptr noundef %36, i32 noundef %mul19)
  store ptr %call20, ptr %b, align 8, !tbaa !4
  %38 = load ptr, ptr %b, align 8, !tbaa !4
  %tobool21 = icmp ne ptr %38, null
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.then13
  %39 = load ptr, ptr %array, align 8, !tbaa !4
  %40 = load ptr, ptr %b, align 8, !tbaa !4
  %call23 = call i64 @vtklibharu_HPDF_Array_Add(ptr noundef %39, ptr noundef %40)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %for.end
  %41 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr26 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %mmgr26, align 8, !tbaa !21
  %43 = load ptr, ptr %ppallet, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %42, ptr noundef %43)
  %44 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %error27 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %error27, align 8, !tbaa !18
  %error_no28 = getelementptr inbounds %struct._HPDF_Error_Rec, ptr %45, i32 0, i32 0
  %46 = load i64, ptr %error_no28, align 8, !tbaa !19
  store i64 %46, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ppallet) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %src_pl) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_pl) #4
  %47 = load i64, ptr %retval, align 8
  ret i64 %47
}

declare i64 @vtklibharu_HPDF_Dict_Add(ptr noundef, ptr noundef, ptr noundef) #2

declare void @png_destroy_read_struct(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: uwtable
define internal i64 @ReadTransparentPngData(ptr noundef %image, ptr noundef %png_ptr, ptr noundef %info_ptr, ptr noundef %smask_data) #0 {
entry:
  %retval = alloca i64, align 8
  %image.addr = alloca ptr, align 8
  %png_ptr.addr = alloca ptr, align 8
  %info_ptr.addr = alloca ptr, align 8
  %smask_data.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %row_len = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %row_ptr = alloca ptr, align 8
  %row = alloca ptr, align 8
  %color_type = alloca i8, align 1
  %height = alloca i32, align 4
  %width = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %image, ptr %image.addr, align 8, !tbaa !4
  store ptr %png_ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  store ptr %info_ptr, ptr %info_ptr.addr, align 8, !tbaa !4
  store ptr %smask_data, ptr %smask_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #4
  store i64 0, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %row_len) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %row_ptr) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %row) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr %color_type) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %height) #4
  %0 = load ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %info_ptr.addr, align 8, !tbaa !4
  %call = call i32 @png_get_image_height(ptr noundef %0, ptr noundef %1)
  store i32 %call, ptr %height, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %width) #4
  %2 = load ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %info_ptr.addr, align 8, !tbaa !4
  %call1 = call i32 @png_get_image_width(ptr noundef %2, ptr noundef %3)
  store i32 %call1, ptr %width, align 4, !tbaa !8
  %4 = load ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %info_ptr.addr, align 8, !tbaa !4
  %call2 = call zeroext i8 @png_get_color_type(ptr noundef %4, ptr noundef %5)
  store i8 %call2, ptr %color_type, align 1, !tbaa !25
  %6 = load i8, ptr %color_type, align 1, !tbaa !25
  %conv = zext i8 %6 to i32
  %and = and i32 %conv, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 4155, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup120

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %mmgr, align 8, !tbaa !21
  %9 = load i32, ptr %height, align 4, !tbaa !8
  %conv3 = zext i32 %9 to i64
  %mul = mul i64 %conv3, 8
  %conv4 = trunc i64 %mul to i32
  %call5 = call ptr @vtklibharu_HPDF_GetMem(ptr noundef %8, i32 noundef %conv4)
  store ptr %call5, ptr %row_ptr, align 8, !tbaa !4
  %10 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  %tobool6 = icmp ne ptr %10, null
  br i1 %tobool6, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  store i64 4117, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup120

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #4
  %11 = load ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %info_ptr.addr, align 8, !tbaa !4
  %call8 = call i64 @png_get_rowbytes(ptr noundef %11, ptr noundef %12)
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %len, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %if.else
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %14 = load i32, ptr %height, align 4, !tbaa !8
  %cmp = icmp ult i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr11 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %mmgr11, align 8, !tbaa !21
  %17 = load i32, ptr %len, align 4, !tbaa !8
  %call12 = call ptr @vtklibharu_HPDF_GetMem(ptr noundef %16, i32 noundef %17)
  %18 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  %19 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %19 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %18, i64 %idxprom
  store ptr %call12, ptr %arrayidx, align 8, !tbaa !4
  %20 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  %21 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom13 = zext i32 %21 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %20, i64 %idxprom13
  %22 = load ptr, ptr %arrayidx14, align 8, !tbaa !4
  %tobool15 = icmp ne ptr %22, null
  br i1 %tobool15, label %if.end25, label %if.then16

if.then16:                                        ; preds = %for.body
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %if.then16
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %cmp18 = icmp ugt i32 %23, 0
  br i1 %cmp18, label %for.body20, label %for.end

for.body20:                                       ; preds = %for.cond17
  %24 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr21 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %mmgr21, align 8, !tbaa !21
  %26 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  %27 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom22 = zext i32 %27 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %26, i64 %idxprom22
  %28 = load ptr, ptr %arrayidx23, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %25, ptr noundef %28)
  br label %for.inc

for.inc:                                          ; preds = %for.body20
  %29 = load i32, ptr %i, align 4, !tbaa !8
  %dec = add i32 %29, -1
  store i32 %dec, ptr %i, align 4, !tbaa !8
  br label %for.cond17, !llvm.loop !38

for.end:                                          ; preds = %for.cond17
  %30 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr24 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %mmgr24, align 8, !tbaa !21
  %32 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %31, ptr noundef %32)
  store i64 4117, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %for.body
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %33 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %33, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !39

for.end27:                                        ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end27, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup120 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end28

if.end28:                                         ; preds = %cleanup.cont
  %34 = load ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  %35 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  call void @png_read_image(ptr noundef %34, ptr noundef %35)
  %36 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %error, align 8, !tbaa !18
  %error_no = getelementptr inbounds %struct._HPDF_Error_Rec, ptr %37, i32 0, i32 0
  %38 = load i64, ptr %error_no, align 8, !tbaa !19
  %cmp29 = icmp ne i64 %38, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  store i64 4155, ptr %ret, align 8, !tbaa !10
  br label %Error

if.end32:                                         ; preds = %if.end28
  %39 = load i8, ptr %color_type, align 1, !tbaa !25
  %conv33 = zext i8 %39 to i32
  switch i32 %conv33, label %sw.default [
    i32 6, label %sw.bb
    i32 4, label %sw.bb70
  ]

sw.bb:                                            ; preds = %if.end32
  %40 = load i32, ptr %width, align 4, !tbaa !8
  %mul34 = mul i32 3, %40
  %conv35 = zext i32 %mul34 to i64
  %mul36 = mul i64 %conv35, 1
  %conv37 = trunc i64 %mul36 to i32
  store i32 %conv37, ptr %row_len, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc67, %sw.bb
  %41 = load i32, ptr %j, align 4, !tbaa !8
  %42 = load i32, ptr %height, align 4, !tbaa !8
  %cmp39 = icmp ult i32 %41, %42
  br i1 %cmp39, label %for.body41, label %for.end69

for.body41:                                       ; preds = %for.cond38
  %43 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  %44 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom42 = zext i32 %44 to i64
  %arrayidx43 = getelementptr inbounds ptr, ptr %43, i64 %idxprom42
  %45 = load ptr, ptr %arrayidx43, align 8, !tbaa !4
  store ptr %45, ptr %row, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc59, %for.body41
  %46 = load i32, ptr %i, align 4, !tbaa !8
  %47 = load i32, ptr %width, align 4, !tbaa !8
  %cmp45 = icmp ult i32 %46, %47
  br i1 %cmp45, label %for.body47, label %for.end61

for.body47:                                       ; preds = %for.cond44
  %48 = load ptr, ptr %row, align 8, !tbaa !4
  %49 = load i32, ptr %i, align 4, !tbaa !8
  %mul48 = mul i32 3, %49
  %idx.ext = zext i32 %mul48 to i64
  %add.ptr = getelementptr inbounds i8, ptr %48, i64 %idx.ext
  %50 = load ptr, ptr %row, align 8, !tbaa !4
  %51 = load i32, ptr %i, align 4, !tbaa !8
  %mul49 = mul i32 4, %51
  %idx.ext50 = zext i32 %mul49 to i64
  %add.ptr51 = getelementptr inbounds i8, ptr %50, i64 %idx.ext50
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr51, i64 3, i1 false)
  %52 = load ptr, ptr %row, align 8, !tbaa !4
  %53 = load i32, ptr %i, align 4, !tbaa !8
  %mul52 = mul i32 4, %53
  %add = add i32 %mul52, 3
  %idxprom53 = zext i32 %add to i64
  %arrayidx54 = getelementptr inbounds i8, ptr %52, i64 %idxprom53
  %54 = load i8, ptr %arrayidx54, align 1, !tbaa !25
  %55 = load ptr, ptr %smask_data.addr, align 8, !tbaa !4
  %56 = load i32, ptr %width, align 4, !tbaa !8
  %57 = load i32, ptr %j, align 4, !tbaa !8
  %mul55 = mul i32 %56, %57
  %58 = load i32, ptr %i, align 4, !tbaa !8
  %add56 = add i32 %mul55, %58
  %idxprom57 = zext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds i8, ptr %55, i64 %idxprom57
  store i8 %54, ptr %arrayidx58, align 1, !tbaa !25
  br label %for.inc59

for.inc59:                                        ; preds = %for.body47
  %59 = load i32, ptr %i, align 4, !tbaa !8
  %inc60 = add i32 %59, 1
  store i32 %inc60, ptr %i, align 4, !tbaa !8
  br label %for.cond44, !llvm.loop !40

for.end61:                                        ; preds = %for.cond44
  %60 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %60, i32 0, i32 8
  %61 = load ptr, ptr %stream, align 8, !tbaa !22
  %62 = load ptr, ptr %row, align 8, !tbaa !4
  %63 = load i32, ptr %row_len, align 4, !tbaa !8
  %call62 = call i64 @vtklibharu_HPDF_Stream_Write(ptr noundef %61, ptr noundef %62, i32 noundef %63)
  %cmp63 = icmp ne i64 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %for.end61
  store i64 4118, ptr %ret, align 8, !tbaa !10
  br label %Error

if.end66:                                         ; preds = %for.end61
  br label %for.inc67

for.inc67:                                        ; preds = %if.end66
  %64 = load i32, ptr %j, align 4, !tbaa !8
  %inc68 = add i32 %64, 1
  store i32 %inc68, ptr %j, align 4, !tbaa !8
  br label %for.cond38, !llvm.loop !41

for.end69:                                        ; preds = %for.cond38
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end32
  %65 = load i32, ptr %width, align 4, !tbaa !8
  %conv71 = zext i32 %65 to i64
  %mul72 = mul i64 %conv71, 1
  %conv73 = trunc i64 %mul72 to i32
  store i32 %conv73, ptr %row_len, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc106, %sw.bb70
  %66 = load i32, ptr %j, align 4, !tbaa !8
  %67 = load i32, ptr %height, align 4, !tbaa !8
  %cmp75 = icmp ult i32 %66, %67
  br i1 %cmp75, label %for.body77, label %for.end108

for.body77:                                       ; preds = %for.cond74
  %68 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  %69 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom78 = zext i32 %69 to i64
  %arrayidx79 = getelementptr inbounds ptr, ptr %68, i64 %idxprom78
  %70 = load ptr, ptr %arrayidx79, align 8, !tbaa !4
  store ptr %70, ptr %row, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc97, %for.body77
  %71 = load i32, ptr %i, align 4, !tbaa !8
  %72 = load i32, ptr %width, align 4, !tbaa !8
  %cmp81 = icmp ult i32 %71, %72
  br i1 %cmp81, label %for.body83, label %for.end99

for.body83:                                       ; preds = %for.cond80
  %73 = load ptr, ptr %row, align 8, !tbaa !4
  %74 = load i32, ptr %i, align 4, !tbaa !8
  %mul84 = mul i32 2, %74
  %idxprom85 = zext i32 %mul84 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %73, i64 %idxprom85
  %75 = load i8, ptr %arrayidx86, align 1, !tbaa !25
  %76 = load ptr, ptr %row, align 8, !tbaa !4
  %77 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom87 = zext i32 %77 to i64
  %arrayidx88 = getelementptr inbounds i8, ptr %76, i64 %idxprom87
  store i8 %75, ptr %arrayidx88, align 1, !tbaa !25
  %78 = load ptr, ptr %row, align 8, !tbaa !4
  %79 = load i32, ptr %i, align 4, !tbaa !8
  %mul89 = mul i32 2, %79
  %add90 = add i32 %mul89, 1
  %idxprom91 = zext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds i8, ptr %78, i64 %idxprom91
  %80 = load i8, ptr %arrayidx92, align 1, !tbaa !25
  %81 = load ptr, ptr %smask_data.addr, align 8, !tbaa !4
  %82 = load i32, ptr %width, align 4, !tbaa !8
  %83 = load i32, ptr %j, align 4, !tbaa !8
  %mul93 = mul i32 %82, %83
  %84 = load i32, ptr %i, align 4, !tbaa !8
  %add94 = add i32 %mul93, %84
  %idxprom95 = zext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds i8, ptr %81, i64 %idxprom95
  store i8 %80, ptr %arrayidx96, align 1, !tbaa !25
  br label %for.inc97

for.inc97:                                        ; preds = %for.body83
  %85 = load i32, ptr %i, align 4, !tbaa !8
  %inc98 = add i32 %85, 1
  store i32 %inc98, ptr %i, align 4, !tbaa !8
  br label %for.cond80, !llvm.loop !42

for.end99:                                        ; preds = %for.cond80
  %86 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %stream100 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %86, i32 0, i32 8
  %87 = load ptr, ptr %stream100, align 8, !tbaa !22
  %88 = load ptr, ptr %row, align 8, !tbaa !4
  %89 = load i32, ptr %row_len, align 4, !tbaa !8
  %call101 = call i64 @vtklibharu_HPDF_Stream_Write(ptr noundef %87, ptr noundef %88, i32 noundef %89)
  %cmp102 = icmp ne i64 %call101, 0
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %for.end99
  store i64 4118, ptr %ret, align 8, !tbaa !10
  br label %Error

if.end105:                                        ; preds = %for.end99
  br label %for.inc106

for.inc106:                                       ; preds = %if.end105
  %90 = load i32, ptr %j, align 4, !tbaa !8
  %inc107 = add i32 %90, 1
  store i32 %inc107, ptr %j, align 4, !tbaa !8
  br label %for.cond74, !llvm.loop !43

for.end108:                                       ; preds = %for.cond74
  br label %sw.epilog

sw.default:                                       ; preds = %if.end32
  store i64 4155, ptr %ret, align 8, !tbaa !10
  br label %Error

sw.epilog:                                        ; preds = %for.end108, %for.end69
  br label %Error

Error:                                            ; preds = %sw.epilog, %sw.default, %if.then104, %if.then65, %if.then31
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc116, %Error
  %91 = load i32, ptr %i, align 4, !tbaa !8
  %92 = load i32, ptr %height, align 4, !tbaa !8
  %cmp110 = icmp ult i32 %91, %92
  br i1 %cmp110, label %for.body112, label %for.end118

for.body112:                                      ; preds = %for.cond109
  %93 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr113 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %93, i32 0, i32 1
  %94 = load ptr, ptr %mmgr113, align 8, !tbaa !21
  %95 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  %96 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom114 = zext i32 %96 to i64
  %arrayidx115 = getelementptr inbounds ptr, ptr %95, i64 %idxprom114
  %97 = load ptr, ptr %arrayidx115, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %94, ptr noundef %97)
  br label %for.inc116

for.inc116:                                       ; preds = %for.body112
  %98 = load i32, ptr %i, align 4, !tbaa !8
  %inc117 = add i32 %98, 1
  store i32 %inc117, ptr %i, align 4, !tbaa !8
  br label %for.cond109, !llvm.loop !44

for.end118:                                       ; preds = %for.cond109
  %99 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr119 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %99, i32 0, i32 1
  %100 = load ptr, ptr %mmgr119, align 8, !tbaa !21
  %101 = load ptr, ptr %row_ptr, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %100, ptr noundef %101)
  %102 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %102, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup120

cleanup120:                                       ; preds = %for.end118, %cleanup, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %width) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %height) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr %color_type) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %row) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %row_ptr) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %row_len) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #4
  %103 = load i64, ptr %retval, align 8
  ret i64 %103
}

; Function Attrs: uwtable
define internal i64 @PngBeforeWrite(ptr noundef %obj) #0 {
entry:
  %retval = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %header = alloca [8 x i8], align 1
  %len = alloca i32, align 4
  %png_data = alloca ptr, align 8
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %header) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #4
  store i32 8, ptr %len, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %png_data) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %stream, align 8, !tbaa !22
  call void @vtklibharu_HPDF_MemStream_FreeData(ptr noundef %1)
  %2 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call = call ptr @vtklibharu_HPDF_Dict_GetItem(ptr noundef %2, ptr noundef @.str.13, i16 noundef zeroext 7)
  store ptr %call, ptr %s, align 8, !tbaa !4
  %3 = load ptr, ptr %s, align 8, !tbaa !4
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %error, align 8, !tbaa !18
  %call1 = call i64 @vtklibharu_HPDF_SetError(ptr noundef %5, i64 noundef 4157, i64 noundef 0)
  store i64 %call1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %mmgr, align 8, !tbaa !21
  %8 = load ptr, ptr %s, align 8, !tbaa !4
  %value = getelementptr inbounds %struct._HPDF_String_Rec, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %value, align 8, !tbaa !45
  %call2 = call ptr @vtklibharu_HPDF_FileReader_New(ptr noundef %7, ptr noundef %9)
  store ptr %call2, ptr %png_data, align 8, !tbaa !4
  %10 = load ptr, ptr %png_data, align 8, !tbaa !4
  %call3 = call i64 @vtklibharu_HPDF_Stream_Validate(ptr noundef %10)
  %tobool4 = icmp ne i64 %call3, 0
  br i1 %tobool4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %error6 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %error6, align 8, !tbaa !18
  %error_no = getelementptr inbounds %struct._HPDF_Error_Rec, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %error_no, align 8, !tbaa !19
  store i64 %13, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [8 x i8], ptr %header, i64 0, i64 0
  %call8 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay, i8 noundef zeroext 0, i32 noundef 8)
  %14 = load ptr, ptr %png_data, align 8, !tbaa !4
  %arraydecay9 = getelementptr inbounds [8 x i8], ptr %header, i64 0, i64 0
  %call10 = call i64 @vtklibharu_HPDF_Stream_Read(ptr noundef %14, ptr noundef %arraydecay9, ptr noundef %len)
  store i64 %call10, ptr %ret, align 8, !tbaa !10
  %15 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %15, 0
  br i1 %cmp, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %arraydecay11 = getelementptr inbounds [8 x i8], ptr %header, i64 0, i64 0
  %call12 = call i32 @png_sig_cmp(ptr noundef %arraydecay11, i64 noundef 0, i64 noundef 8)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  %16 = load ptr, ptr %png_data, align 8, !tbaa !4
  call void @vtklibharu_HPDF_Stream_Free(ptr noundef %16)
  %17 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %error15 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %error15, align 8, !tbaa !18
  %call16 = call i64 @vtklibharu_HPDF_SetError(ptr noundef %18, i64 noundef 4155, i64 noundef 0)
  store i64 %call16, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  %19 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %png_data, align 8, !tbaa !4
  %call18 = call i64 @LoadPngData(ptr noundef %19, ptr noundef null, ptr noundef %20, i32 noundef 0)
  store i64 %call18, ptr %ret, align 8, !tbaa !10
  %cmp19 = icmp ne i64 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  %21 = load ptr, ptr %png_data, align 8, !tbaa !4
  call void @vtklibharu_HPDF_Stream_Free(ptr noundef %21)
  %22 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %22, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %23 = load ptr, ptr %png_data, align 8, !tbaa !4
  call void @vtklibharu_HPDF_Stream_Free(ptr noundef %23)
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then20, %if.then14, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %png_data) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %header) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #4
  %24 = load i64, ptr %retval, align 8
  ret i64 %24
}

; Function Attrs: uwtable
define internal i64 @PngAfterWrite(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %stream, align 8, !tbaa !22
  call void @vtklibharu_HPDF_MemStream_FreeData(ptr noundef %1)
  ret i64 0
}

declare zeroext i8 @png_get_interlace_type(ptr noundef, ptr noundef) #2

; Function Attrs: uwtable
define internal i64 @ReadPngData_Interlaced(ptr noundef %image, ptr noundef %png_ptr, ptr noundef %info_ptr) #0 {
entry:
  %image.addr = alloca ptr, align 8
  %png_ptr.addr = alloca ptr, align 8
  %info_ptr.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %height = alloca i32, align 4
  %row_pointers = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %image, ptr %image.addr, align 8, !tbaa !4
  store ptr %png_ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  store ptr %info_ptr, ptr %info_ptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #4
  %0 = load ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %info_ptr.addr, align 8, !tbaa !4
  %call = call i64 @png_get_rowbytes(ptr noundef %0, ptr noundef %1)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %len, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %height) #4
  %2 = load ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %info_ptr.addr, align 8, !tbaa !4
  %call1 = call i32 @png_get_image_height(ptr noundef %2, ptr noundef %3)
  store i32 %call1, ptr %height, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %row_pointers) #4
  %4 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %mmgr, align 8, !tbaa !21
  %6 = load i32, ptr %height, align 4, !tbaa !8
  %conv2 = zext i32 %6 to i64
  %mul = mul i64 %conv2, 8
  %conv3 = trunc i64 %mul to i32
  %call4 = call ptr @vtklibharu_HPDF_GetMem(ptr noundef %5, i32 noundef %conv3)
  store ptr %call4, ptr %row_pointers, align 8, !tbaa !4
  %7 = load ptr, ptr %row_pointers, align 8, !tbaa !4
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then, label %if.end52

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  %8 = load ptr, ptr %row_pointers, align 8, !tbaa !4
  %9 = load i32, ptr %height, align 4, !tbaa !8
  %conv5 = zext i32 %9 to i64
  %mul6 = mul i64 %conv5, 8
  %conv7 = trunc i64 %mul6 to i32
  %call8 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %8, i8 noundef zeroext 0, i32 noundef %conv7)
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %11 = load i32, ptr %height, align 4, !tbaa !8
  %cmp = icmp ult i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr10 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %mmgr10, align 8, !tbaa !21
  %14 = load i32, ptr %len, align 4, !tbaa !8
  %call11 = call ptr @vtklibharu_HPDF_GetMem(ptr noundef %13, i32 noundef %14)
  %15 = load ptr, ptr %row_pointers, align 8, !tbaa !4
  %16 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = zext i32 %16 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 %idxprom
  store ptr %call11, ptr %arrayidx, align 8, !tbaa !4
  %17 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %error, align 8, !tbaa !18
  %error_no = getelementptr inbounds %struct._HPDF_Error_Rec, ptr %18, i32 0, i32 0
  %19 = load i64, ptr %error_no, align 8, !tbaa !19
  %cmp12 = icmp ne i64 %19, 0
  br i1 %cmp12, label %if.then14, label %if.end

if.then14:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %20, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %if.then14, %for.cond
  %21 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %error15 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %error15, align 8, !tbaa !18
  %error_no16 = getelementptr inbounds %struct._HPDF_Error_Rec, ptr %22, i32 0, i32 0
  %23 = load i64, ptr %error_no16, align 8, !tbaa !19
  %cmp17 = icmp eq i64 %23, 0
  br i1 %cmp17, label %if.then19, label %if.end40

if.then19:                                        ; preds = %for.end
  %24 = load ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %row_pointers, align 8, !tbaa !4
  call void @png_read_image(ptr noundef %24, ptr noundef %25)
  %26 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %error20 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %error20, align 8, !tbaa !18
  %error_no21 = getelementptr inbounds %struct._HPDF_Error_Rec, ptr %27, i32 0, i32 0
  %28 = load i64, ptr %error_no21, align 8, !tbaa !19
  %cmp22 = icmp eq i64 %28, 0
  br i1 %cmp22, label %if.then24, label %if.end39

if.then24:                                        ; preds = %if.then19
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc36, %if.then24
  %29 = load i32, ptr %i, align 4, !tbaa !8
  %30 = load i32, ptr %height, align 4, !tbaa !8
  %cmp26 = icmp ult i32 %29, %30
  br i1 %cmp26, label %for.body28, label %for.end38

for.body28:                                       ; preds = %for.cond25
  %31 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %31, i32 0, i32 8
  %32 = load ptr, ptr %stream, align 8, !tbaa !22
  %33 = load ptr, ptr %row_pointers, align 8, !tbaa !4
  %34 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom29 = zext i32 %34 to i64
  %arrayidx30 = getelementptr inbounds ptr, ptr %33, i64 %idxprom29
  %35 = load ptr, ptr %arrayidx30, align 8, !tbaa !4
  %36 = load i32, ptr %len, align 4, !tbaa !8
  %call31 = call i64 @vtklibharu_HPDF_Stream_Write(ptr noundef %32, ptr noundef %35, i32 noundef %36)
  %cmp32 = icmp ne i64 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %for.body28
  br label %for.end38

if.end35:                                         ; preds = %for.body28
  br label %for.inc36

for.inc36:                                        ; preds = %if.end35
  %37 = load i32, ptr %i, align 4, !tbaa !8
  %inc37 = add i32 %37, 1
  store i32 %inc37, ptr %i, align 4, !tbaa !8
  br label %for.cond25, !llvm.loop !48

for.end38:                                        ; preds = %if.then34, %for.cond25
  br label %if.end39

if.end39:                                         ; preds = %for.end38, %if.then19
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %for.end
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc48, %if.end40
  %38 = load i32, ptr %i, align 4, !tbaa !8
  %39 = load i32, ptr %height, align 4, !tbaa !8
  %cmp42 = icmp ult i32 %38, %39
  br i1 %cmp42, label %for.body44, label %for.end50

for.body44:                                       ; preds = %for.cond41
  %40 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr45 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %mmgr45, align 8, !tbaa !21
  %42 = load ptr, ptr %row_pointers, align 8, !tbaa !4
  %43 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom46 = zext i32 %43 to i64
  %arrayidx47 = getelementptr inbounds ptr, ptr %42, i64 %idxprom46
  %44 = load ptr, ptr %arrayidx47, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %41, ptr noundef %44)
  br label %for.inc48

for.inc48:                                        ; preds = %for.body44
  %45 = load i32, ptr %i, align 4, !tbaa !8
  %inc49 = add i32 %45, 1
  store i32 %inc49, ptr %i, align 4, !tbaa !8
  br label %for.cond41, !llvm.loop !49

for.end50:                                        ; preds = %for.cond41
  %46 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr51 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %46, i32 0, i32 1
  %47 = load ptr, ptr %mmgr51, align 8, !tbaa !21
  %48 = load ptr, ptr %row_pointers, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %47, ptr noundef %48)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  br label %if.end52

if.end52:                                         ; preds = %for.end50, %entry
  %49 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %error53 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %49, i32 0, i32 2
  %50 = load ptr, ptr %error53, align 8, !tbaa !18
  %error_no54 = getelementptr inbounds %struct._HPDF_Error_Rec, ptr %50, i32 0, i32 0
  %51 = load i64, ptr %error_no54, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 8, ptr %row_pointers) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %height) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #4
  ret i64 %51
}

; Function Attrs: uwtable
define internal i64 @ReadPngData(ptr noundef %image, ptr noundef %png_ptr, ptr noundef %info_ptr) #0 {
entry:
  %image.addr = alloca ptr, align 8
  %png_ptr.addr = alloca ptr, align 8
  %info_ptr.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %height = alloca i32, align 4
  %buf_ptr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %image, ptr %image.addr, align 8, !tbaa !4
  store ptr %png_ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  store ptr %info_ptr, ptr %info_ptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #4
  %0 = load ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %info_ptr.addr, align 8, !tbaa !4
  %call = call i64 @png_get_rowbytes(ptr noundef %0, ptr noundef %1)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %len, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %height) #4
  %2 = load ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %info_ptr.addr, align 8, !tbaa !4
  %call1 = call i32 @png_get_image_height(ptr noundef %2, ptr noundef %3)
  store i32 %call1, ptr %height, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf_ptr) #4
  %4 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %mmgr, align 8, !tbaa !21
  %6 = load i32, ptr %len, align 4, !tbaa !8
  %call2 = call ptr @vtklibharu_HPDF_GetMem(ptr noundef %5, i32 noundef %6)
  store ptr %call2, ptr %buf_ptr, align 8, !tbaa !4
  %7 = load ptr, ptr %buf_ptr, align 8, !tbaa !4
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %9 = load i32, ptr %height, align 4, !tbaa !8
  %cmp = icmp ult i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %png_ptr.addr, align 8, !tbaa !4
  call void @png_read_rows(ptr noundef %10, ptr noundef %buf_ptr, ptr noundef null, i32 noundef 1)
  %11 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %error, align 8, !tbaa !18
  %error_no = getelementptr inbounds %struct._HPDF_Error_Rec, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %error_no, align 8, !tbaa !19
  %cmp4 = icmp ne i64 %13, 0
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %14 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %14, i32 0, i32 8
  %15 = load ptr, ptr %stream, align 8, !tbaa !22
  %16 = load ptr, ptr %buf_ptr, align 8, !tbaa !4
  %17 = load i32, ptr %len, align 4, !tbaa !8
  %call7 = call i64 @vtklibharu_HPDF_Stream_Write(ptr noundef %15, ptr noundef %16, i32 noundef %17)
  %cmp8 = icmp ne i64 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  br label %for.end

if.end11:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %18 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add i32 %18, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !50

for.end:                                          ; preds = %if.then10, %if.then6, %for.cond
  %19 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %mmgr12 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %mmgr12, align 8, !tbaa !21
  %21 = load ptr, ptr %buf_ptr, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %20, ptr noundef %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  br label %if.end13

if.end13:                                         ; preds = %for.end, %entry
  %22 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %error14 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %error14, align 8, !tbaa !18
  %error_no15 = getelementptr inbounds %struct._HPDF_Error_Rec, ptr %23, i32 0, i32 0
  %24 = load i64, ptr %error_no15, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf_ptr) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %height) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #4
  ret i64 %24
}

declare ptr @png_get_error_ptr(ptr noundef) #2

declare i32 @vtklibharu_HPDF_AToI(ptr noundef) #2

declare ptr @png_get_io_ptr(ptr noundef) #2

declare i32 @png_get_image_height(ptr noundef, ptr noundef) #2

declare i32 @png_get_image_width(ptr noundef, ptr noundef) #2

declare i64 @png_get_rowbytes(ptr noundef, ptr noundef) #2

declare void @png_read_image(ptr noundef, ptr noundef) #2

declare i32 @png_get_PLTE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @vtklibharu_HPDF_Array_New(ptr noundef) #2

declare i64 @vtklibharu_HPDF_Array_AddName(ptr noundef, ptr noundef) #2

declare i64 @vtklibharu_HPDF_Array_AddNumber(ptr noundef, i32 noundef) #2

declare ptr @vtklibharu_HPDF_Binary_New(ptr noundef, ptr noundef, i32 noundef) #2

declare i64 @vtklibharu_HPDF_Array_Add(ptr noundef, ptr noundef) #2

declare zeroext i8 @png_get_color_type(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

declare void @vtklibharu_HPDF_MemStream_FreeData(ptr noundef) #2

declare ptr @vtklibharu_HPDF_Dict_GetItem(ptr noundef, ptr noundef, i16 noundef zeroext) #2

declare ptr @vtklibharu_HPDF_FileReader_New(ptr noundef, ptr noundef) #2

declare i64 @vtklibharu_HPDF_Stream_Validate(ptr noundef) #2

declare void @vtklibharu_HPDF_Stream_Free(ptr noundef) #2

declare void @png_read_rows(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !5, i64 0}
!13 = !{!"_HPDF_MMgr_Rec", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !9, i64 32}
!14 = !{!15, !17, i64 6}
!15 = !{!"_HPDF_Dict_Rec", !16, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !9, i64 72, !5, i64 80, !5, i64 88}
!16 = !{!"_HPDF_Obj_Header", !9, i64 0, !17, i64 4, !17, i64 6}
!17 = !{!"short", !6, i64 0}
!18 = !{!15, !5, i64 16}
!19 = !{!20, !11, i64 0}
!20 = !{!"_HPDF_Error_Rec", !11, i64 0, !11, i64 8, !5, i64 16, !5, i64 24}
!21 = !{!15, !5, i64 8}
!22 = !{!15, !5, i64 64}
!23 = !{!15, !5, i64 32}
!24 = !{!15, !5, i64 48}
!25 = !{!6, !6, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !27}
!31 = distinct !{!31, !27}
!32 = distinct !{!32, !27}
!33 = !{!34, !6, i64 0}
!34 = !{!"png_color_struct", !6, i64 0, !6, i64 1, !6, i64 2}
!35 = !{!34, !6, i64 1}
!36 = !{!34, !6, i64 2}
!37 = distinct !{!37, !27}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !27}
!40 = distinct !{!40, !27}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !27}
!45 = !{!46, !5, i64 32}
!46 = !{!"_HPDF_String_Rec", !16, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !9, i64 40}
!47 = distinct !{!47, !27}
!48 = distinct !{!48, !27}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !27}
