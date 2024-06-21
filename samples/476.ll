; ModuleID = 'samples/476.bc'
source_filename = "/local-ssd/vtk-kb2jughcg3bneb23yemli5qgcptmb7ii-build/aidengro/spack-stage-vtk-9.2.6-kb2jughcg3bneb23yemli5qgcptmb7ii/spack-src/ThirdParty/libharu/vtklibharu/src/hpdf_page_operator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._HPDF_DashMode = type { [8 x float], i32, float }
%struct._HPDF_Point = type { float, float }
%struct._HPDF_TransMatrix = type { float, float, float, float, float, float }
%struct._HPDF_Dict_Rec = type { %struct._HPDF_Obj_Header, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct._HPDF_Obj_Header = type { i32, i16, i16 }
%struct._HPDF_PageAttr_Rec = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct._HPDF_Point, %struct._HPDF_Point, %struct._HPDF_Point, %struct._HPDF_TransMatrix, i16, ptr, ptr, ptr, i32, ptr }
%struct._HPDF_GState_Rec = type { %struct._HPDF_TransMatrix, float, i32, i32, float, %struct._HPDF_DashMode, float, float, float, float, float, i32, float, i32, i32, %struct._HPDF_RGBColor, %struct._HPDF_RGBColor, %struct._HPDF_CMYKColor, %struct._HPDF_CMYKColor, float, float, ptr, float, i32, ptr, i32 }
%struct._HPDF_RGBColor = type { float, float, float }
%struct._HPDF_CMYKColor = type { float, float, float, float }
%struct._HPDF_FontAttr_Rec = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._HPDF_Encoder_Rec = type { i32, [128 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._HPDF_Rect = type { float, float, float, float }
%struct._HPDF_ParseText_Rec = type { ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c" w\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" J\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" j\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" M\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" d\0A\00", align 1
@INIT_MODE = internal constant %struct._HPDF_DashMode zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c" i\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" gs\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" sh\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"q\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"Q\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c" cm\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" m\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" l\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" c\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" v\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" y\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"h\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" re\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"S\0A\00", align 1
@INIT_POS = internal constant %struct._HPDF_Point zeroinitializer, align 4
@.str.19 = private unnamed_addr constant [3 x i8] c"s\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"f\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"f*\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"B\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"B*\0A\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"b\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"b*\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"n\0A\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"W\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"W*\0A\00", align 1
@__const.vtklibharu_HPDF_Page_BeginText.INIT_MATRIX = private unnamed_addr constant %struct._HPDF_TransMatrix { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, align 4
@.str.29 = private unnamed_addr constant [4 x i8] c"BT\0A\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"ET\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c" Tc\0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c" Tw\0A\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c" Tz\0A\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c" TL\0A\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c" Tf\0A\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c" Tr\0A\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c" Ts\0A\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c" Td\0A\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c" TD\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c" Tm\0A\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"T*\0A\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c" Tj\0A\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c" '\0A\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c" \22\0A\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c" g\0A\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c" G\0A\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c" rg\0A\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c" RG\0A\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c" k\0A\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c" K\0A\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c" Do\0A\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"Trans\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"Wipe\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"Di\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"Split\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"Dm\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"Box\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"Blinds\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"Dissolve\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"Glitter\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"Dur\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"Contents\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c">\00", align 1

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetLineWidth(ptr noundef %page, float noundef %line_width) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %line_width.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %line_width, ptr %line_width.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load float, ptr %line_width.addr, align 4, !tbaa !8
  %cmp2 = fcmp olt float %5, 0.000000e+00
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %error, align 8, !tbaa !17
  %call4 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %7, i64 noundef 4182, i64 noundef 0)
  store i64 %call4, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %8, i32 0, i32 12
  %9 = load ptr, ptr %stream, align 8, !tbaa !18
  %10 = load float, ptr %line_width.addr, align 4, !tbaa !8
  %call6 = call i64 @vtklibharu_HPDF_Stream_WriteReal(ptr noundef %9, float noundef %10)
  %cmp7 = icmp ne i64 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end5
  %11 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error9 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %error9, align 8, !tbaa !17
  %call10 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %12)
  store i64 %call10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %13 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream12 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %13, i32 0, i32 12
  %14 = load ptr, ptr %stream12, align 8, !tbaa !18
  %call13 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %14, ptr noundef @.str)
  %cmp14 = icmp ne i64 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  %15 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error16 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %error16, align 8, !tbaa !17
  %call17 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %16)
  store i64 %call17, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %17 = load float, ptr %line_width.addr, align 4, !tbaa !8
  %18 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %18, i32 0, i32 5
  %19 = load ptr, ptr %gstate, align 8, !tbaa !22
  %line_width19 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %19, i32 0, i32 1
  store float %17, ptr %line_width19, align 8, !tbaa !23
  %20 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %20, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then15, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %21 = load i64, ptr %retval, align 8
  ret i64 %21
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef, i32 noundef) #2

declare i64 @vtklibharu_HPDF_RaiseError(ptr noundef, i64 noundef, i64 noundef) #2

declare i64 @vtklibharu_HPDF_Stream_WriteReal(ptr noundef, float noundef) #2

declare i64 @vtklibharu_HPDF_CheckError(ptr noundef) #2

declare i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetLineCap(ptr noundef %page, i32 noundef %line_cap) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %line_cap.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store i32 %line_cap, ptr %line_cap.addr, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %line_cap.addr, align 4, !tbaa !28
  %cmp1 = icmp uge i32 %3, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %error, align 8, !tbaa !17
  %6 = load i32, ptr %line_cap.addr, align 4, !tbaa !28
  %conv = zext i32 %6 to i64
  %call3 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %5, i64 noundef 4182, i64 noundef %conv)
  store i64 %call3, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr5 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 11
  %8 = load ptr, ptr %attr5, align 8, !tbaa !12
  store ptr %8, ptr %attr, align 8, !tbaa !4
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %stream, align 8, !tbaa !18
  %11 = load i32, ptr %line_cap.addr, align 4, !tbaa !28
  %call6 = call i64 @vtklibharu_HPDF_Stream_WriteInt(ptr noundef %10, i32 noundef %11)
  store i64 %call6, ptr %ret, align 8, !tbaa !10
  %cmp7 = icmp ne i64 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end4
  %12 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %12, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %13 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream11 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %13, i32 0, i32 12
  %14 = load ptr, ptr %stream11, align 8, !tbaa !18
  %call12 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %14, ptr noundef @.str.1)
  store i64 %call12, ptr %ret, align 8, !tbaa !10
  %cmp13 = icmp ne i64 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end10
  %15 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error16 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %error16, align 8, !tbaa !17
  %call17 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %16)
  store i64 %call17, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %17 = load i32, ptr %line_cap.addr, align 4, !tbaa !28
  %18 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %18, i32 0, i32 5
  %19 = load ptr, ptr %gstate, align 8, !tbaa !22
  %line_cap19 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %19, i32 0, i32 2
  store i32 %17, ptr %line_cap19, align 4, !tbaa !29
  %20 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %20, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then15, %if.then9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %21 = load i64, ptr %retval, align 8
  ret i64 %21
}

declare i64 @vtklibharu_HPDF_Stream_WriteInt(ptr noundef, i32 noundef) #2

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetLineJoin(ptr noundef %page, i32 noundef %line_join) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %line_join.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store i32 %line_join, ptr %line_join.addr, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %line_join.addr, align 4, !tbaa !28
  %cmp1 = icmp uge i32 %3, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %error, align 8, !tbaa !17
  %6 = load i32, ptr %line_join.addr, align 4, !tbaa !28
  %conv = zext i32 %6 to i64
  %call3 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %5, i64 noundef 4182, i64 noundef %conv)
  store i64 %call3, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr5 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 11
  %8 = load ptr, ptr %attr5, align 8, !tbaa !12
  store ptr %8, ptr %attr, align 8, !tbaa !4
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %stream, align 8, !tbaa !18
  %11 = load i32, ptr %line_join.addr, align 4, !tbaa !28
  %call6 = call i64 @vtklibharu_HPDF_Stream_WriteInt(ptr noundef %10, i32 noundef %11)
  %cmp7 = icmp ne i64 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end4
  %12 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error10 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %error10, align 8, !tbaa !17
  %call11 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %13)
  store i64 %call11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %14 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream13 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %stream13, align 8, !tbaa !18
  %call14 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %15, ptr noundef @.str.2)
  %cmp15 = icmp ne i64 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end12
  %16 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error18 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %error18, align 8, !tbaa !17
  %call19 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %17)
  store i64 %call19, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %18 = load i32, ptr %line_join.addr, align 4, !tbaa !28
  %19 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %gstate, align 8, !tbaa !22
  %line_join21 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %20, i32 0, i32 3
  store i32 %18, ptr %line_join21, align 8, !tbaa !30
  %21 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %21, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then17, %if.then9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %22 = load i64, ptr %retval, align 8
  ret i64 %22
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetMiterLimit(ptr noundef %page, float noundef %miter_limit) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %miter_limit.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %miter_limit, ptr %miter_limit.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load float, ptr %miter_limit.addr, align 4, !tbaa !8
  %cmp2 = fcmp olt float %5, 1.000000e+00
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %error, align 8, !tbaa !17
  %call4 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %7, i64 noundef 4182, i64 noundef 0)
  store i64 %call4, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %8, i32 0, i32 12
  %9 = load ptr, ptr %stream, align 8, !tbaa !18
  %10 = load float, ptr %miter_limit.addr, align 4, !tbaa !8
  %call6 = call i64 @vtklibharu_HPDF_Stream_WriteReal(ptr noundef %9, float noundef %10)
  %cmp7 = icmp ne i64 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end5
  %11 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error9 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %error9, align 8, !tbaa !17
  %call10 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %12)
  store i64 %call10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %13 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream12 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %13, i32 0, i32 12
  %14 = load ptr, ptr %stream12, align 8, !tbaa !18
  %call13 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %14, ptr noundef @.str.3)
  %cmp14 = icmp ne i64 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  %15 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error16 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %error16, align 8, !tbaa !17
  %call17 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %16)
  store i64 %call17, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %17 = load float, ptr %miter_limit.addr, align 4, !tbaa !8
  %18 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %18, i32 0, i32 5
  %19 = load ptr, ptr %gstate, align 8, !tbaa !22
  %miter_limit19 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %19, i32 0, i32 4
  store float %17, ptr %miter_limit19, align 4, !tbaa !31
  %20 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %20, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then15, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %21 = load i64, ptr %retval, align 8
  ret i64 %21
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetDash(ptr noundef %page, ptr noundef %dash_ptn, i32 noundef %num_param, float noundef %phase) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %dash_ptn.addr = alloca ptr, align 8
  %num_param.addr = alloca i32, align 4
  %phase.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %buf = alloca [512 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %pdash_ptn = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store ptr %dash_ptn, ptr %dash_ptn.addr, align 8, !tbaa !4
  store i32 %num_param, ptr %num_param.addr, align 4, !tbaa !32
  store float %phase, ptr %phase.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdash_ptn) #8
  %1 = load ptr, ptr %dash_ptn.addr, align 8, !tbaa !4
  store ptr %1, ptr %pdash_ptn, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %3, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %num_param.addr, align 4, !tbaa !32
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %5 = load float, ptr %phase.addr, align 4, !tbaa !8
  %cmp4 = fcmp ogt float %5, 0.000000e+00
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %error, align 8, !tbaa !17
  %8 = load float, ptr %phase.addr, align 4, !tbaa !8
  %conv = fptoui float %8 to i64
  %call6 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %7, i64 noundef 4182, i64 noundef %conv)
  store i64 %call6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %9 = load ptr, ptr %dash_ptn.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %if.end15, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %if.end7
  %10 = load i32, ptr %num_param.addr, align 4, !tbaa !32
  %cmp9 = icmp ugt i32 %10, 0
  br i1 %cmp9, label %if.then11, label %if.end15

if.then11:                                        ; preds = %land.lhs.true8
  %11 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error12 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %error12, align 8, !tbaa !17
  %13 = load float, ptr %phase.addr, align 4, !tbaa !8
  %conv13 = fptoui float %13 to i64
  %call14 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %12, i64 noundef 4153, i64 noundef %conv13)
  store i64 %call14, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true8, %if.end7
  %arraydecay16 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call17 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay16, i8 noundef zeroext 0, i32 noundef 512)
  %14 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 91, ptr %14, align 1, !tbaa !28
  store i32 0, ptr %i, align 4, !tbaa !32
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end15
  %15 = load i32, ptr %i, align 4, !tbaa !32
  %16 = load i32, ptr %num_param.addr, align 4, !tbaa !32
  %cmp18 = icmp ult i32 %15, %16
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %pdash_ptn, align 8, !tbaa !4
  %18 = load float, ptr %17, align 4, !tbaa !8
  %cmp20 = fcmp oeq float %18, 0.000000e+00
  br i1 %cmp20, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %19 = load ptr, ptr %pdash_ptn, align 8, !tbaa !4
  %20 = load float, ptr %19, align 4, !tbaa !8
  %cmp22 = fcmp ogt float %20, 1.000000e+02
  br i1 %cmp22, label %if.then24, label %if.end27

if.then24:                                        ; preds = %lor.lhs.false, %for.body
  %21 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error25 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %error25, align 8, !tbaa !17
  %call26 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %22, i64 noundef 4182, i64 noundef 0)
  store i64 %call26, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false
  %23 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %24 = load ptr, ptr %pdash_ptn, align 8, !tbaa !4
  %25 = load float, ptr %24, align 4, !tbaa !8
  %26 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call28 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %23, float noundef %25, ptr noundef %26)
  store ptr %call28, ptr %pbuf, align 8, !tbaa !4
  %27 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr29 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr29, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %27, align 1, !tbaa !28
  %28 = load ptr, ptr %pdash_ptn, align 8, !tbaa !4
  %incdec.ptr30 = getelementptr inbounds float, ptr %28, i32 1
  store ptr %incdec.ptr30, ptr %pdash_ptn, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %29 = load i32, ptr %i, align 4, !tbaa !32
  %inc = add i32 %29, 1
  store i32 %inc, ptr %i, align 4, !tbaa !32
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr31 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr31, ptr %pbuf, align 8, !tbaa !4
  store i8 93, ptr %30, align 1, !tbaa !28
  %31 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr32 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr32, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %31, align 1, !tbaa !28
  %32 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %33 = load float, ptr %phase.addr, align 4, !tbaa !8
  %34 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call33 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %32, float noundef %33, ptr noundef %34)
  store ptr %call33, ptr %pbuf, align 8, !tbaa !4
  %35 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %36 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call34 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %35, ptr noundef @.str.4, ptr noundef %36)
  %37 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr35 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %37, i32 0, i32 11
  %38 = load ptr, ptr %attr35, align 8, !tbaa !12
  store ptr %38, ptr %attr, align 8, !tbaa !4
  %39 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %39, i32 0, i32 12
  %40 = load ptr, ptr %stream, align 8, !tbaa !18
  %arraydecay36 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call37 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %40, ptr noundef %arraydecay36)
  store i64 %call37, ptr %ret, align 8, !tbaa !10
  %cmp38 = icmp ne i64 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.end43

if.then40:                                        ; preds = %for.end
  %41 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error41 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %error41, align 8, !tbaa !17
  %call42 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %42)
  store i64 %call42, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %for.end
  %43 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %43, i32 0, i32 5
  %44 = load ptr, ptr %gstate, align 8, !tbaa !22
  %dash_mode = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %44, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dash_mode, ptr align 4 @INIT_MODE, i64 40, i1 false), !tbaa.struct !35
  %45 = load i32, ptr %num_param.addr, align 4, !tbaa !32
  %46 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate44 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %46, i32 0, i32 5
  %47 = load ptr, ptr %gstate44, align 8, !tbaa !22
  %dash_mode45 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %47, i32 0, i32 5
  %num_ptn = getelementptr inbounds %struct._HPDF_DashMode, ptr %dash_mode45, i32 0, i32 1
  store i32 %45, ptr %num_ptn, align 8, !tbaa !36
  %48 = load float, ptr %phase.addr, align 4, !tbaa !8
  %49 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate46 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %49, i32 0, i32 5
  %50 = load ptr, ptr %gstate46, align 8, !tbaa !22
  %dash_mode47 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %50, i32 0, i32 5
  %phase48 = getelementptr inbounds %struct._HPDF_DashMode, ptr %dash_mode47, i32 0, i32 2
  store float %48, ptr %phase48, align 4, !tbaa !37
  %51 = load ptr, ptr %dash_ptn.addr, align 8, !tbaa !4
  store ptr %51, ptr %pdash_ptn, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !32
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc56, %if.end43
  %52 = load i32, ptr %i, align 4, !tbaa !32
  %53 = load i32, ptr %num_param.addr, align 4, !tbaa !32
  %cmp50 = icmp ult i32 %52, %53
  br i1 %cmp50, label %for.body52, label %for.end58

for.body52:                                       ; preds = %for.cond49
  %54 = load ptr, ptr %pdash_ptn, align 8, !tbaa !4
  %55 = load float, ptr %54, align 4, !tbaa !8
  %56 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate53 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %56, i32 0, i32 5
  %57 = load ptr, ptr %gstate53, align 8, !tbaa !22
  %dash_mode54 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %57, i32 0, i32 5
  %ptn = getelementptr inbounds %struct._HPDF_DashMode, ptr %dash_mode54, i32 0, i32 0
  %58 = load i32, ptr %i, align 4, !tbaa !32
  %idxprom = zext i32 %58 to i64
  %arrayidx = getelementptr inbounds [8 x float], ptr %ptn, i64 0, i64 %idxprom
  store float %55, ptr %arrayidx, align 4, !tbaa !8
  %59 = load ptr, ptr %pdash_ptn, align 8, !tbaa !4
  %incdec.ptr55 = getelementptr inbounds float, ptr %59, i32 1
  store ptr %incdec.ptr55, ptr %pdash_ptn, align 8, !tbaa !4
  br label %for.inc56

for.inc56:                                        ; preds = %for.body52
  %60 = load i32, ptr %i, align 4, !tbaa !32
  %inc57 = add i32 %60, 1
  store i32 %inc57, ptr %i, align 4, !tbaa !32
  br label %for.cond49, !llvm.loop !38

for.end58:                                        ; preds = %for.cond49
  %61 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %61, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end58, %if.then40, %if.then24, %if.then11, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdash_ptn) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %62 = load i64, ptr %retval, align 8
  ret i64 %62
}

declare ptr @vtklibharu_HPDF_MemSet(ptr noundef, i8 noundef zeroext, i32 noundef) #2

declare ptr @vtklibharu_HPDF_FToA(ptr noundef, float noundef, ptr noundef) #2

declare ptr @vtklibharu_HPDF_StrCpy(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetFlat(ptr noundef %page, float noundef %flatness) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %flatness.addr = alloca float, align 4
  %attr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %flatness, ptr %flatness.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load float, ptr %flatness.addr, align 4, !tbaa !8
  %cmp2 = fcmp ogt float %5, 1.000000e+02
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load float, ptr %flatness.addr, align 4, !tbaa !8
  %cmp3 = fcmp olt float %6, 0.000000e+00
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %8, i64 noundef 4182, i64 noundef 0)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %stream, align 8, !tbaa !18
  %11 = load float, ptr %flatness.addr, align 4, !tbaa !8
  %call7 = call i64 @vtklibharu_HPDF_Stream_WriteReal(ptr noundef %10, float noundef %11)
  %cmp8 = icmp ne i64 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  %12 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error10 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %error10, align 8, !tbaa !17
  %call11 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %13)
  store i64 %call11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %14 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream13 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %stream13, align 8, !tbaa !18
  %call14 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %15, ptr noundef @.str.5)
  %cmp15 = icmp ne i64 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  %16 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error17 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %error17, align 8, !tbaa !17
  %call18 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %17)
  store i64 %call18, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %18 = load float, ptr %flatness.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %gstate, align 8, !tbaa !22
  %flatness20 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %20, i32 0, i32 6
  store float %18, ptr %flatness20, align 8, !tbaa !39
  %21 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %21, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then16, %if.then9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  %22 = load i64, ptr %retval, align 8
  ret i64 %22
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetExtGState(ptr noundef %page, ptr noundef %ext_gstate) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %ext_gstate.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %local_name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store ptr %ext_gstate, ptr %ext_gstate.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 1)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_name) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ext_gstate.addr, align 8, !tbaa !4
  %call1 = call i32 @vtklibharu_HPDF_ExtGState_Validate(ptr noundef %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %error, align 8, !tbaa !17
  %call3 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %5, i64 noundef 4147, i64 noundef 0)
  store i64 %call3, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %mmgr, align 8, !tbaa !40
  %8 = load ptr, ptr %ext_gstate.addr, align 8, !tbaa !4
  %mmgr5 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %mmgr5, align 8, !tbaa !40
  %cmp6 = icmp ne ptr %7, %9
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end4
  %10 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error8 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %error8, align 8, !tbaa !17
  %call9 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %11, i64 noundef 4225, i64 noundef 0)
  store i64 %call9, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %12 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr11 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %12, i32 0, i32 11
  %13 = load ptr, ptr %attr11, align 8, !tbaa !12
  store ptr %13, ptr %attr, align 8, !tbaa !4
  %14 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %ext_gstate.addr, align 8, !tbaa !4
  %call12 = call ptr @vtklibharu_HPDF_Page_GetExtGStateName(ptr noundef %14, ptr noundef %15)
  store ptr %call12, ptr %local_name, align 8, !tbaa !4
  %16 = load ptr, ptr %local_name, align 8, !tbaa !4
  %tobool13 = icmp ne ptr %16, null
  br i1 %tobool13, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end10
  %17 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error15 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %error15, align 8, !tbaa !17
  %call16 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %18)
  store i64 %call16, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %19 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %19, i32 0, i32 12
  %20 = load ptr, ptr %stream, align 8, !tbaa !18
  %21 = load ptr, ptr %local_name, align 8, !tbaa !4
  %call18 = call i64 @vtklibharu_HPDF_Stream_WriteEscapeName(ptr noundef %20, ptr noundef %21)
  %cmp19 = icmp ne i64 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end17
  %22 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error21 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %error21, align 8, !tbaa !17
  %call22 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %23)
  store i64 %call22, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %24 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream24 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %24, i32 0, i32 12
  %25 = load ptr, ptr %stream24, align 8, !tbaa !18
  %call25 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %25, ptr noundef @.str.6)
  %cmp26 = icmp ne i64 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end23
  %26 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error28 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %error28, align 8, !tbaa !17
  %call29 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %27)
  store i64 %call29, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %28 = load ptr, ptr %ext_gstate.addr, align 8, !tbaa !4
  %header = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %28, i32 0, i32 0
  %obj_class = getelementptr inbounds %struct._HPDF_Obj_Header, ptr %header, i32 0, i32 2
  store i16 2833, ptr %obj_class, align 2, !tbaa !41
  %29 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %29, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then27, %if.then20, %if.then14, %if.then7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_name) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %30 = load i64, ptr %retval, align 8
  ret i64 %30
}

declare i32 @vtklibharu_HPDF_ExtGState_Validate(ptr noundef) #2

declare ptr @vtklibharu_HPDF_Page_GetExtGStateName(ptr noundef, ptr noundef) #2

declare i64 @vtklibharu_HPDF_Stream_WriteEscapeName(ptr noundef, ptr noundef) #2

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetShading(ptr noundef %page, ptr noundef %shading) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %shading.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %local_name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store ptr %shading, ptr %shading.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 1)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_name) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %mmgr, align 8, !tbaa !40
  %5 = load ptr, ptr %shading.addr, align 8, !tbaa !4
  %mmgr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %mmgr1, align 8, !tbaa !40
  %cmp2 = icmp ne ptr %4, %6
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call4 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %8, i64 noundef 4147, i64 noundef 0)
  store i64 %call4, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr6 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %9, i32 0, i32 11
  %10 = load ptr, ptr %attr6, align 8, !tbaa !12
  store ptr %10, ptr %attr, align 8, !tbaa !4
  %11 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %shading.addr, align 8, !tbaa !4
  %call7 = call ptr @vtklibharu_HPDF_Page_GetShadingName(ptr noundef %11, ptr noundef %12)
  store ptr %call7, ptr %local_name, align 8, !tbaa !4
  %13 = load ptr, ptr %local_name, align 8, !tbaa !4
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end5
  %14 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error9 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %error9, align 8, !tbaa !17
  %call10 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %15)
  store i64 %call10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %16 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %stream, align 8, !tbaa !18
  %18 = load ptr, ptr %local_name, align 8, !tbaa !4
  %call12 = call i64 @vtklibharu_HPDF_Stream_WriteEscapeName(ptr noundef %17, ptr noundef %18)
  %cmp13 = icmp ne i64 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end11
  %19 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error15 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %error15, align 8, !tbaa !17
  %call16 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %20)
  store i64 %call16, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %21 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream18 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %21, i32 0, i32 12
  %22 = load ptr, ptr %stream18, align 8, !tbaa !18
  %call19 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %22, ptr noundef @.str.7)
  %cmp20 = icmp ne i64 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end17
  %23 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error22 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %error22, align 8, !tbaa !17
  %call23 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %24)
  store i64 %call23, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %25 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %25, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then21, %if.then14, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_name) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %26 = load i64, ptr %retval, align 8
  ret i64 %26
}

declare ptr @vtklibharu_HPDF_Page_GetShadingName(ptr noundef, ptr noundef) #2

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_GSave(ptr noundef %page) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %new_gstate = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_gstate) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 1)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %mmgr, align 8, !tbaa !40
  %7 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %gstate, align 8, !tbaa !22
  %call2 = call ptr @vtklibharu_HPDF_GState_New(ptr noundef %6, ptr noundef %8)
  store ptr %call2, ptr %new_gstate, align 8, !tbaa !4
  %9 = load ptr, ptr %new_gstate, align 8, !tbaa !4
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %error, align 8, !tbaa !17
  %call4 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %11)
  store i64 %call4, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %12 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %12, i32 0, i32 12
  %13 = load ptr, ptr %stream, align 8, !tbaa !18
  %call6 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %13, ptr noundef @.str.8)
  %cmp7 = icmp ne i64 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end5
  %14 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error9 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %error9, align 8, !tbaa !17
  %call10 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %15)
  store i64 %call10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %16 = load ptr, ptr %new_gstate, align 8, !tbaa !4
  %17 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate12 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %17, i32 0, i32 5
  store ptr %16, ptr %gstate12, align 8, !tbaa !22
  %18 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %18, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_gstate) #8
  %19 = load i64, ptr %retval, align 8
  ret i64 %19
}

declare ptr @vtklibharu_HPDF_GState_New(ptr noundef, ptr noundef) #2

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_GRestore(ptr noundef %page) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %new_gstate = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_gstate) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 1)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %gstate, align 8, !tbaa !22
  %prev = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %6, i32 0, i32 24
  %7 = load ptr, ptr %prev, align 8, !tbaa !42
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %error, align 8, !tbaa !17
  %call3 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %9, i64 noundef 4172, i64 noundef 0)
  store i64 %call3, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %10 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %mmgr, align 8, !tbaa !40
  %12 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate5 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %gstate5, align 8, !tbaa !22
  %call6 = call ptr @vtklibharu_HPDF_GState_Free(ptr noundef %11, ptr noundef %13)
  store ptr %call6, ptr %new_gstate, align 8, !tbaa !4
  %14 = load ptr, ptr %new_gstate, align 8, !tbaa !4
  %15 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate7 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %15, i32 0, i32 5
  store ptr %14, ptr %gstate7, align 8, !tbaa !22
  %16 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %stream, align 8, !tbaa !18
  %call8 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %17, ptr noundef @.str.9)
  %cmp9 = icmp ne i64 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end4
  %18 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error11 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %error11, align 8, !tbaa !17
  %call12 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %19)
  store i64 %call12, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %20 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %20, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then10, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_gstate) #8
  %21 = load i64, ptr %retval, align 8
  ret i64 %21
}

declare ptr @vtklibharu_HPDF_GState_Free(ptr noundef, ptr noundef) #2

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_Concat(ptr noundef %page, float noundef %a, float noundef %b, float noundef %c, float noundef %d, float noundef %x, float noundef %y) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %c.addr = alloca float, align 4
  %d.addr = alloca float, align 4
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %buf = alloca [512 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %tm = alloca %struct._HPDF_TransMatrix, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %a, ptr %a.addr, align 4, !tbaa !8
  store float %b, ptr %b.addr, align 4, !tbaa !8
  store float %c, ptr %c.addr, align 4, !tbaa !8
  store float %d, ptr %d.addr, align 4, !tbaa !8
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 1)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr %tm) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr3 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr3, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %arraydecay4 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call5 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay4, i8 noundef zeroext 0, i32 noundef 512)
  %5 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %6 = load float, ptr %a.addr, align 4, !tbaa !8
  %7 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call6 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %5, float noundef %6, ptr noundef %7)
  store ptr %call6, ptr %pbuf, align 8, !tbaa !4
  %8 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %8, align 1, !tbaa !28
  %9 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %10 = load float, ptr %b.addr, align 4, !tbaa !8
  %11 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call7 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %9, float noundef %10, ptr noundef %11)
  store ptr %call7, ptr %pbuf, align 8, !tbaa !4
  %12 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr8 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr8, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %12, align 1, !tbaa !28
  %13 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %14 = load float, ptr %c.addr, align 4, !tbaa !8
  %15 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call9 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %13, float noundef %14, ptr noundef %15)
  store ptr %call9, ptr %pbuf, align 8, !tbaa !4
  %16 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr10 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr10, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %16, align 1, !tbaa !28
  %17 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %18 = load float, ptr %d.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call11 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %17, float noundef %18, ptr noundef %19)
  store ptr %call11, ptr %pbuf, align 8, !tbaa !4
  %20 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr12 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr12, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %20, align 1, !tbaa !28
  %21 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %22 = load float, ptr %x.addr, align 4, !tbaa !8
  %23 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call13 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %21, float noundef %22, ptr noundef %23)
  store ptr %call13, ptr %pbuf, align 8, !tbaa !4
  %24 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr14 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr14, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %24, align 1, !tbaa !28
  %25 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %26 = load float, ptr %y.addr, align 4, !tbaa !8
  %27 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call15 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %25, float noundef %26, ptr noundef %27)
  store ptr %call15, ptr %pbuf, align 8, !tbaa !4
  %28 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %29 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call16 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %28, ptr noundef @.str.10, ptr noundef %29)
  %30 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %30, i32 0, i32 12
  %31 = load ptr, ptr %stream, align 8, !tbaa !18
  %arraydecay17 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call18 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %31, ptr noundef %arraydecay17)
  %cmp19 = icmp ne i64 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end
  %32 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %error, align 8, !tbaa !17
  %call21 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %33)
  store i64 %call21, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %34 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %34, i32 0, i32 5
  %35 = load ptr, ptr %gstate, align 8, !tbaa !22
  %trans_matrix = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %35, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %tm, ptr align 8 %trans_matrix, i64 24, i1 false), !tbaa.struct !43
  %a23 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %tm, i32 0, i32 0
  %36 = load float, ptr %a23, align 4, !tbaa !44
  %37 = load float, ptr %a.addr, align 4, !tbaa !8
  %b24 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %tm, i32 0, i32 1
  %38 = load float, ptr %b24, align 4, !tbaa !45
  %39 = load float, ptr %c.addr, align 4, !tbaa !8
  %mul25 = fmul float %38, %39
  %40 = call float @llvm.fmuladd.f32(float %36, float %37, float %mul25)
  %41 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate26 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %41, i32 0, i32 5
  %42 = load ptr, ptr %gstate26, align 8, !tbaa !22
  %trans_matrix27 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %42, i32 0, i32 0
  %a28 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %trans_matrix27, i32 0, i32 0
  store float %40, ptr %a28, align 8, !tbaa !46
  %a29 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %tm, i32 0, i32 0
  %43 = load float, ptr %a29, align 4, !tbaa !44
  %44 = load float, ptr %b.addr, align 4, !tbaa !8
  %b30 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %tm, i32 0, i32 1
  %45 = load float, ptr %b30, align 4, !tbaa !45
  %46 = load float, ptr %d.addr, align 4, !tbaa !8
  %mul31 = fmul float %45, %46
  %47 = call float @llvm.fmuladd.f32(float %43, float %44, float %mul31)
  %48 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate32 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %48, i32 0, i32 5
  %49 = load ptr, ptr %gstate32, align 8, !tbaa !22
  %trans_matrix33 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %49, i32 0, i32 0
  %b34 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %trans_matrix33, i32 0, i32 1
  store float %47, ptr %b34, align 4, !tbaa !47
  %c35 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %tm, i32 0, i32 2
  %50 = load float, ptr %c35, align 4, !tbaa !48
  %51 = load float, ptr %a.addr, align 4, !tbaa !8
  %d36 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %tm, i32 0, i32 3
  %52 = load float, ptr %d36, align 4, !tbaa !49
  %53 = load float, ptr %c.addr, align 4, !tbaa !8
  %mul37 = fmul float %52, %53
  %54 = call float @llvm.fmuladd.f32(float %50, float %51, float %mul37)
  %55 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate38 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %55, i32 0, i32 5
  %56 = load ptr, ptr %gstate38, align 8, !tbaa !22
  %trans_matrix39 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %56, i32 0, i32 0
  %c40 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %trans_matrix39, i32 0, i32 2
  store float %54, ptr %c40, align 8, !tbaa !50
  %c41 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %tm, i32 0, i32 2
  %57 = load float, ptr %c41, align 4, !tbaa !48
  %58 = load float, ptr %b.addr, align 4, !tbaa !8
  %d42 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %tm, i32 0, i32 3
  %59 = load float, ptr %d42, align 4, !tbaa !49
  %60 = load float, ptr %d.addr, align 4, !tbaa !8
  %mul43 = fmul float %59, %60
  %61 = call float @llvm.fmuladd.f32(float %57, float %58, float %mul43)
  %62 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate44 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %62, i32 0, i32 5
  %63 = load ptr, ptr %gstate44, align 8, !tbaa !22
  %trans_matrix45 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %63, i32 0, i32 0
  %d46 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %trans_matrix45, i32 0, i32 3
  store float %61, ptr %d46, align 4, !tbaa !51
  %x47 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %tm, i32 0, i32 4
  %64 = load float, ptr %x47, align 4, !tbaa !52
  %65 = load float, ptr %x.addr, align 4, !tbaa !8
  %a48 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %tm, i32 0, i32 0
  %66 = load float, ptr %a48, align 4, !tbaa !44
  %67 = call float @llvm.fmuladd.f32(float %65, float %66, float %64)
  %68 = load float, ptr %y.addr, align 4, !tbaa !8
  %c49 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %tm, i32 0, i32 2
  %69 = load float, ptr %c49, align 4, !tbaa !48
  %70 = call float @llvm.fmuladd.f32(float %68, float %69, float %67)
  %71 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate50 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %71, i32 0, i32 5
  %72 = load ptr, ptr %gstate50, align 8, !tbaa !22
  %trans_matrix51 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %72, i32 0, i32 0
  %x52 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %trans_matrix51, i32 0, i32 4
  store float %70, ptr %x52, align 8, !tbaa !53
  %y53 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %tm, i32 0, i32 5
  %73 = load float, ptr %y53, align 4, !tbaa !54
  %74 = load float, ptr %x.addr, align 4, !tbaa !8
  %b54 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %tm, i32 0, i32 1
  %75 = load float, ptr %b54, align 4, !tbaa !45
  %76 = call float @llvm.fmuladd.f32(float %74, float %75, float %73)
  %77 = load float, ptr %y.addr, align 4, !tbaa !8
  %d55 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %tm, i32 0, i32 3
  %78 = load float, ptr %d55, align 4, !tbaa !49
  %79 = call float @llvm.fmuladd.f32(float %77, float %78, float %76)
  %80 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate56 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %80, i32 0, i32 5
  %81 = load ptr, ptr %gstate56, align 8, !tbaa !22
  %trans_matrix57 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %81, i32 0, i32 0
  %y58 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %trans_matrix57, i32 0, i32 5
  store float %79, ptr %y58, align 4, !tbaa !55
  %82 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %82, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then20, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %tm) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %83 = load i64, ptr %retval, align 8
  ret i64 %83
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_MoveTo(ptr noundef %page, float noundef %x, float noundef %y) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %buf = alloca [512 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 3)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr3 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr3, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %arraydecay4 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call5 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay4, i8 noundef zeroext 0, i32 noundef 512)
  %5 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %6 = load float, ptr %x.addr, align 4, !tbaa !8
  %7 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call6 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %5, float noundef %6, ptr noundef %7)
  store ptr %call6, ptr %pbuf, align 8, !tbaa !4
  %8 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %8, align 1, !tbaa !28
  %9 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %10 = load float, ptr %y.addr, align 4, !tbaa !8
  %11 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call7 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %9, float noundef %10, ptr noundef %11)
  store ptr %call7, ptr %pbuf, align 8, !tbaa !4
  %12 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %13 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call8 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %12, ptr noundef @.str.11, ptr noundef %13)
  %14 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %stream, align 8, !tbaa !18
  %arraydecay9 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call10 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %15, ptr noundef %arraydecay9)
  %cmp11 = icmp ne i64 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  %16 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %error, align 8, !tbaa !17
  %call13 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %17)
  store i64 %call13, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %18 = load float, ptr %x.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %19, i32 0, i32 7
  %x15 = getelementptr inbounds %struct._HPDF_Point, ptr %cur_pos, i32 0, i32 0
  store float %18, ptr %x15, align 8, !tbaa !56
  %20 = load float, ptr %y.addr, align 4, !tbaa !8
  %21 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos16 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %21, i32 0, i32 7
  %y17 = getelementptr inbounds %struct._HPDF_Point, ptr %cur_pos16, i32 0, i32 1
  store float %20, ptr %y17, align 4, !tbaa !57
  %22 = load ptr, ptr %attr, align 8, !tbaa !4
  %str_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %22, i32 0, i32 6
  %23 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos18 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %23, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %str_pos, ptr align 8 %cur_pos18, i64 8, i1 false), !tbaa.struct !58
  %24 = load ptr, ptr %attr, align 8, !tbaa !4
  %gmode = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %24, i32 0, i32 10
  store i16 2, ptr %gmode, align 8, !tbaa !59
  %25 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %25, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %26 = load i64, ptr %retval, align 8
  ret i64 %26
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_LineTo(ptr noundef %page, float noundef %x, float noundef %y) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %buf = alloca [512 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 2)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr3 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr3, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %arraydecay4 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call5 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay4, i8 noundef zeroext 0, i32 noundef 512)
  %5 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %6 = load float, ptr %x.addr, align 4, !tbaa !8
  %7 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call6 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %5, float noundef %6, ptr noundef %7)
  store ptr %call6, ptr %pbuf, align 8, !tbaa !4
  %8 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %8, align 1, !tbaa !28
  %9 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %10 = load float, ptr %y.addr, align 4, !tbaa !8
  %11 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call7 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %9, float noundef %10, ptr noundef %11)
  store ptr %call7, ptr %pbuf, align 8, !tbaa !4
  %12 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %13 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call8 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %12, ptr noundef @.str.12, ptr noundef %13)
  %14 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %stream, align 8, !tbaa !18
  %arraydecay9 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call10 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %15, ptr noundef %arraydecay9)
  %cmp11 = icmp ne i64 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  %16 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %error, align 8, !tbaa !17
  %call13 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %17)
  store i64 %call13, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %18 = load float, ptr %x.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %19, i32 0, i32 7
  %x15 = getelementptr inbounds %struct._HPDF_Point, ptr %cur_pos, i32 0, i32 0
  store float %18, ptr %x15, align 8, !tbaa !56
  %20 = load float, ptr %y.addr, align 4, !tbaa !8
  %21 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos16 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %21, i32 0, i32 7
  %y17 = getelementptr inbounds %struct._HPDF_Point, ptr %cur_pos16, i32 0, i32 1
  store float %20, ptr %y17, align 4, !tbaa !57
  %22 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %22, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %23 = load i64, ptr %retval, align 8
  ret i64 %23
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_CurveTo(ptr noundef %page, float noundef %x1, float noundef %y1, float noundef %x2, float noundef %y2, float noundef %x3, float noundef %y3) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %x1.addr = alloca float, align 4
  %y1.addr = alloca float, align 4
  %x2.addr = alloca float, align 4
  %y2.addr = alloca float, align 4
  %x3.addr = alloca float, align 4
  %y3.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %buf = alloca [512 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %x1, ptr %x1.addr, align 4, !tbaa !8
  store float %y1, ptr %y1.addr, align 4, !tbaa !8
  store float %x2, ptr %x2.addr, align 4, !tbaa !8
  store float %y2, ptr %y2.addr, align 4, !tbaa !8
  store float %x3, ptr %x3.addr, align 4, !tbaa !8
  store float %y3, ptr %y3.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 2)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr3 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr3, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %arraydecay4 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call5 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay4, i8 noundef zeroext 0, i32 noundef 512)
  %5 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %6 = load float, ptr %x1.addr, align 4, !tbaa !8
  %7 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call6 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %5, float noundef %6, ptr noundef %7)
  store ptr %call6, ptr %pbuf, align 8, !tbaa !4
  %8 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %8, align 1, !tbaa !28
  %9 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %10 = load float, ptr %y1.addr, align 4, !tbaa !8
  %11 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call7 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %9, float noundef %10, ptr noundef %11)
  store ptr %call7, ptr %pbuf, align 8, !tbaa !4
  %12 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr8 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr8, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %12, align 1, !tbaa !28
  %13 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %14 = load float, ptr %x2.addr, align 4, !tbaa !8
  %15 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call9 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %13, float noundef %14, ptr noundef %15)
  store ptr %call9, ptr %pbuf, align 8, !tbaa !4
  %16 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr10 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr10, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %16, align 1, !tbaa !28
  %17 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %18 = load float, ptr %y2.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call11 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %17, float noundef %18, ptr noundef %19)
  store ptr %call11, ptr %pbuf, align 8, !tbaa !4
  %20 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr12 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr12, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %20, align 1, !tbaa !28
  %21 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %22 = load float, ptr %x3.addr, align 4, !tbaa !8
  %23 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call13 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %21, float noundef %22, ptr noundef %23)
  store ptr %call13, ptr %pbuf, align 8, !tbaa !4
  %24 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr14 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr14, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %24, align 1, !tbaa !28
  %25 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %26 = load float, ptr %y3.addr, align 4, !tbaa !8
  %27 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call15 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %25, float noundef %26, ptr noundef %27)
  store ptr %call15, ptr %pbuf, align 8, !tbaa !4
  %28 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %29 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call16 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %28, ptr noundef @.str.13, ptr noundef %29)
  %30 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %30, i32 0, i32 12
  %31 = load ptr, ptr %stream, align 8, !tbaa !18
  %arraydecay17 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call18 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %31, ptr noundef %arraydecay17)
  %cmp19 = icmp ne i64 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end
  %32 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %error, align 8, !tbaa !17
  %call21 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %33)
  store i64 %call21, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %34 = load float, ptr %x3.addr, align 4, !tbaa !8
  %35 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %35, i32 0, i32 7
  %x = getelementptr inbounds %struct._HPDF_Point, ptr %cur_pos, i32 0, i32 0
  store float %34, ptr %x, align 8, !tbaa !56
  %36 = load float, ptr %y3.addr, align 4, !tbaa !8
  %37 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos23 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %37, i32 0, i32 7
  %y = getelementptr inbounds %struct._HPDF_Point, ptr %cur_pos23, i32 0, i32 1
  store float %36, ptr %y, align 4, !tbaa !57
  %38 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %38, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then20, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %39 = load i64, ptr %retval, align 8
  ret i64 %39
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_CurveTo2(ptr noundef %page, float noundef %x2, float noundef %y2, float noundef %x3, float noundef %y3) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %x2.addr = alloca float, align 4
  %y2.addr = alloca float, align 4
  %x3.addr = alloca float, align 4
  %y3.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %buf = alloca [512 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %x2, ptr %x2.addr, align 4, !tbaa !8
  store float %y2, ptr %y2.addr, align 4, !tbaa !8
  store float %x3, ptr %x3.addr, align 4, !tbaa !8
  store float %y3, ptr %y3.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 2)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr3 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr3, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %arraydecay4 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call5 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay4, i8 noundef zeroext 0, i32 noundef 512)
  %5 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %6 = load float, ptr %x2.addr, align 4, !tbaa !8
  %7 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call6 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %5, float noundef %6, ptr noundef %7)
  store ptr %call6, ptr %pbuf, align 8, !tbaa !4
  %8 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %8, align 1, !tbaa !28
  %9 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %10 = load float, ptr %y2.addr, align 4, !tbaa !8
  %11 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call7 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %9, float noundef %10, ptr noundef %11)
  store ptr %call7, ptr %pbuf, align 8, !tbaa !4
  %12 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr8 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr8, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %12, align 1, !tbaa !28
  %13 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %14 = load float, ptr %x3.addr, align 4, !tbaa !8
  %15 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call9 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %13, float noundef %14, ptr noundef %15)
  store ptr %call9, ptr %pbuf, align 8, !tbaa !4
  %16 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr10 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr10, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %16, align 1, !tbaa !28
  %17 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %18 = load float, ptr %y3.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call11 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %17, float noundef %18, ptr noundef %19)
  store ptr %call11, ptr %pbuf, align 8, !tbaa !4
  %20 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %21 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call12 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %20, ptr noundef @.str.14, ptr noundef %21)
  %22 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %22, i32 0, i32 12
  %23 = load ptr, ptr %stream, align 8, !tbaa !18
  %arraydecay13 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call14 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %23, ptr noundef %arraydecay13)
  %cmp15 = icmp ne i64 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end
  %24 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %error, align 8, !tbaa !17
  %call17 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %25)
  store i64 %call17, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %26 = load float, ptr %x3.addr, align 4, !tbaa !8
  %27 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %27, i32 0, i32 7
  %x = getelementptr inbounds %struct._HPDF_Point, ptr %cur_pos, i32 0, i32 0
  store float %26, ptr %x, align 8, !tbaa !56
  %28 = load float, ptr %y3.addr, align 4, !tbaa !8
  %29 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos19 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %29, i32 0, i32 7
  %y = getelementptr inbounds %struct._HPDF_Point, ptr %cur_pos19, i32 0, i32 1
  store float %28, ptr %y, align 4, !tbaa !57
  %30 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %30, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %31 = load i64, ptr %retval, align 8
  ret i64 %31
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_CurveTo3(ptr noundef %page, float noundef %x1, float noundef %y1, float noundef %x3, float noundef %y3) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %x1.addr = alloca float, align 4
  %y1.addr = alloca float, align 4
  %x3.addr = alloca float, align 4
  %y3.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %buf = alloca [512 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %x1, ptr %x1.addr, align 4, !tbaa !8
  store float %y1, ptr %y1.addr, align 4, !tbaa !8
  store float %x3, ptr %x3.addr, align 4, !tbaa !8
  store float %y3, ptr %y3.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 2)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr3 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr3, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %arraydecay4 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call5 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay4, i8 noundef zeroext 0, i32 noundef 512)
  %5 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %6 = load float, ptr %x1.addr, align 4, !tbaa !8
  %7 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call6 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %5, float noundef %6, ptr noundef %7)
  store ptr %call6, ptr %pbuf, align 8, !tbaa !4
  %8 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %8, align 1, !tbaa !28
  %9 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %10 = load float, ptr %y1.addr, align 4, !tbaa !8
  %11 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call7 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %9, float noundef %10, ptr noundef %11)
  store ptr %call7, ptr %pbuf, align 8, !tbaa !4
  %12 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr8 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr8, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %12, align 1, !tbaa !28
  %13 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %14 = load float, ptr %x3.addr, align 4, !tbaa !8
  %15 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call9 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %13, float noundef %14, ptr noundef %15)
  store ptr %call9, ptr %pbuf, align 8, !tbaa !4
  %16 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr10 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr10, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %16, align 1, !tbaa !28
  %17 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %18 = load float, ptr %y3.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call11 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %17, float noundef %18, ptr noundef %19)
  store ptr %call11, ptr %pbuf, align 8, !tbaa !4
  %20 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %21 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call12 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %20, ptr noundef @.str.15, ptr noundef %21)
  %22 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %22, i32 0, i32 12
  %23 = load ptr, ptr %stream, align 8, !tbaa !18
  %arraydecay13 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call14 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %23, ptr noundef %arraydecay13)
  %cmp15 = icmp ne i64 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end
  %24 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %error, align 8, !tbaa !17
  %call17 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %25)
  store i64 %call17, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %26 = load float, ptr %x3.addr, align 4, !tbaa !8
  %27 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %27, i32 0, i32 7
  %x = getelementptr inbounds %struct._HPDF_Point, ptr %cur_pos, i32 0, i32 0
  store float %26, ptr %x, align 8, !tbaa !56
  %28 = load float, ptr %y3.addr, align 4, !tbaa !8
  %29 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos19 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %29, i32 0, i32 7
  %y = getelementptr inbounds %struct._HPDF_Point, ptr %cur_pos19, i32 0, i32 1
  store float %28, ptr %y, align 4, !tbaa !57
  %30 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %30, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %31 = load i64, ptr %retval, align 8
  ret i64 %31
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_ClosePath(ptr noundef %page) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 2)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %stream, align 8, !tbaa !18
  %call2 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %6, ptr noundef @.str.16)
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %8)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 7
  %10 = load ptr, ptr %attr, align 8, !tbaa !4
  %str_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %10, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cur_pos, ptr align 8 %str_pos, i64 8, i1 false), !tbaa.struct !58
  %11 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %12 = load i64, ptr %retval, align 8
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_Rectangle(ptr noundef %page, float noundef %x, float noundef %y, float noundef %width, float noundef %height) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %width.addr = alloca float, align 4
  %height.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %buf = alloca [512 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  store float %width, ptr %width.addr, align 4, !tbaa !8
  store float %height, ptr %height.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 3)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr3 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr3, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %arraydecay4 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call5 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay4, i8 noundef zeroext 0, i32 noundef 512)
  %5 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %6 = load float, ptr %x.addr, align 4, !tbaa !8
  %7 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call6 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %5, float noundef %6, ptr noundef %7)
  store ptr %call6, ptr %pbuf, align 8, !tbaa !4
  %8 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %8, align 1, !tbaa !28
  %9 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %10 = load float, ptr %y.addr, align 4, !tbaa !8
  %11 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call7 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %9, float noundef %10, ptr noundef %11)
  store ptr %call7, ptr %pbuf, align 8, !tbaa !4
  %12 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr8 = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr8, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %12, align 1, !tbaa !28
  %13 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %14 = load float, ptr %width.addr, align 4, !tbaa !8
  %15 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call9 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %13, float noundef %14, ptr noundef %15)
  store ptr %call9, ptr %pbuf, align 8, !tbaa !4
  %16 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr10 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr10, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %16, align 1, !tbaa !28
  %17 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %18 = load float, ptr %height.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call11 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %17, float noundef %18, ptr noundef %19)
  store ptr %call11, ptr %pbuf, align 8, !tbaa !4
  %20 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %21 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call12 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %20, ptr noundef @.str.17, ptr noundef %21)
  %22 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %22, i32 0, i32 12
  %23 = load ptr, ptr %stream, align 8, !tbaa !18
  %arraydecay13 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call14 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %23, ptr noundef %arraydecay13)
  %cmp15 = icmp ne i64 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end
  %24 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %error, align 8, !tbaa !17
  %call17 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %25)
  store i64 %call17, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %26 = load float, ptr %x.addr, align 4, !tbaa !8
  %27 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %27, i32 0, i32 7
  %x19 = getelementptr inbounds %struct._HPDF_Point, ptr %cur_pos, i32 0, i32 0
  store float %26, ptr %x19, align 8, !tbaa !56
  %28 = load float, ptr %y.addr, align 4, !tbaa !8
  %29 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos20 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %29, i32 0, i32 7
  %y21 = getelementptr inbounds %struct._HPDF_Point, ptr %cur_pos20, i32 0, i32 1
  store float %28, ptr %y21, align 4, !tbaa !57
  %30 = load ptr, ptr %attr, align 8, !tbaa !4
  %str_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %30, i32 0, i32 6
  %31 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos22 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %31, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %str_pos, ptr align 8 %cur_pos22, i64 8, i1 false), !tbaa.struct !58
  %32 = load ptr, ptr %attr, align 8, !tbaa !4
  %gmode = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %32, i32 0, i32 10
  store i16 2, ptr %gmode, align 8, !tbaa !59
  %33 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %33, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %34 = load i64, ptr %retval, align 8
  ret i64 %34
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_Stroke(ptr noundef %page) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 10)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %stream, align 8, !tbaa !18
  %call2 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %6, ptr noundef @.str.18)
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %8)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %gmode = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 10
  store i16 1, ptr %gmode, align 8, !tbaa !59
  %10 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %10, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cur_pos, ptr align 4 @INIT_POS, i64 8, i1 false), !tbaa.struct !58
  %11 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %12 = load i64, ptr %retval, align 8
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_ClosePathStroke(ptr noundef %page) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 10)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %stream, align 8, !tbaa !18
  %call2 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %6, ptr noundef @.str.19)
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %8)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %gmode = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 10
  store i16 1, ptr %gmode, align 8, !tbaa !59
  %10 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %10, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cur_pos, ptr align 4 @INIT_POS, i64 8, i1 false), !tbaa.struct !58
  %11 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %12 = load i64, ptr %retval, align 8
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_Fill(ptr noundef %page) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 10)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %stream, align 8, !tbaa !18
  %call2 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %6, ptr noundef @.str.20)
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %8)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %gmode = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 10
  store i16 1, ptr %gmode, align 8, !tbaa !59
  %10 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %10, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cur_pos, ptr align 4 @INIT_POS, i64 8, i1 false), !tbaa.struct !58
  %11 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %12 = load i64, ptr %retval, align 8
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_Eofill(ptr noundef %page) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 10)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %stream, align 8, !tbaa !18
  %call2 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %6, ptr noundef @.str.21)
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %8)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %gmode = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 10
  store i16 1, ptr %gmode, align 8, !tbaa !59
  %10 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %10, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cur_pos, ptr align 4 @INIT_POS, i64 8, i1 false), !tbaa.struct !58
  %11 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %12 = load i64, ptr %retval, align 8
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_FillStroke(ptr noundef %page) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 10)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %stream, align 8, !tbaa !18
  %call2 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %6, ptr noundef @.str.22)
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %8)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %gmode = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 10
  store i16 1, ptr %gmode, align 8, !tbaa !59
  %10 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %10, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cur_pos, ptr align 4 @INIT_POS, i64 8, i1 false), !tbaa.struct !58
  %11 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %12 = load i64, ptr %retval, align 8
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_EofillStroke(ptr noundef %page) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 10)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %stream, align 8, !tbaa !18
  %call2 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %6, ptr noundef @.str.23)
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %8)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %gmode = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 10
  store i16 1, ptr %gmode, align 8, !tbaa !59
  %10 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %11 = load i64, ptr %retval, align 8
  ret i64 %11
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_ClosePathFillStroke(ptr noundef %page) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 10)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %stream, align 8, !tbaa !18
  %call2 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %6, ptr noundef @.str.24)
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %8)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %gmode = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 10
  store i16 1, ptr %gmode, align 8, !tbaa !59
  %10 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %10, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cur_pos, ptr align 4 @INIT_POS, i64 8, i1 false), !tbaa.struct !58
  %11 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %12 = load i64, ptr %retval, align 8
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_ClosePathEofillStroke(ptr noundef %page) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 10)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %stream, align 8, !tbaa !18
  %call2 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %6, ptr noundef @.str.25)
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %8)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %gmode = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 10
  store i16 1, ptr %gmode, align 8, !tbaa !59
  %10 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %10, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cur_pos, ptr align 4 @INIT_POS, i64 8, i1 false), !tbaa.struct !58
  %11 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %12 = load i64, ptr %retval, align 8
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_EndPath(ptr noundef %page) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 10)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %stream, align 8, !tbaa !18
  %call2 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %6, ptr noundef @.str.26)
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %8)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %gmode = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 10
  store i16 1, ptr %gmode, align 8, !tbaa !59
  %10 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %10, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cur_pos, ptr align 4 @INIT_POS, i64 8, i1 false), !tbaa.struct !58
  %11 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %12 = load i64, ptr %retval, align 8
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_Clip(ptr noundef %page) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 2)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %stream, align 8, !tbaa !18
  %call2 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %6, ptr noundef @.str.27)
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %8)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %gmode = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 10
  store i16 8, ptr %gmode, align 8, !tbaa !59
  %10 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %11 = load i64, ptr %retval, align 8
  ret i64 %11
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_Eoclip(ptr noundef %page) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 2)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %stream, align 8, !tbaa !18
  %call2 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %6, ptr noundef @.str.28)
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %8)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %gmode = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 10
  store i16 8, ptr %gmode, align 8, !tbaa !59
  %10 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %11 = load i64, ptr %retval, align 8
  ret i64 %11
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_BeginText(ptr noundef %page) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %INIT_MATRIX = alloca %struct._HPDF_TransMatrix, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 1)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr %INIT_MATRIX) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %INIT_MATRIX, ptr align 4 @__const.vtklibharu_HPDF_Page_BeginText.INIT_MATRIX, i64 24, i1 false)
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %stream, align 8, !tbaa !18
  %call2 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %6, ptr noundef @.str.29)
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %8)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %gmode = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 10
  store i16 4, ptr %gmode, align 8, !tbaa !59
  %10 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %10, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %text_pos, ptr align 4 @INIT_POS, i64 8, i1 false), !tbaa.struct !58
  %11 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %11, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %text_matrix, ptr align 4 %INIT_MATRIX, i64 24, i1 false), !tbaa.struct !43
  %12 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %12, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %INIT_MATRIX) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %13 = load i64, ptr %retval, align 8
  ret i64 %13
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_EndText(ptr noundef %page) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 4)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %stream, align 8, !tbaa !18
  %call2 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %6, ptr noundef @.str.30)
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %8)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %text_pos, ptr align 4 @INIT_POS, i64 8, i1 false), !tbaa.struct !58
  %10 = load ptr, ptr %attr, align 8, !tbaa !4
  %gmode = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %10, i32 0, i32 10
  store i16 1, ptr %gmode, align 8, !tbaa !59
  %11 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %12 = load i64, ptr %retval, align 8
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetCharSpace(ptr noundef %page, float noundef %value) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %value.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %value, ptr %value.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load float, ptr %value.addr, align 4, !tbaa !8
  %cmp2 = fcmp olt float %5, -3.000000e+01
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load float, ptr %value.addr, align 4, !tbaa !8
  %cmp3 = fcmp ogt float %6, 3.000000e+02
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %8, i64 noundef 4182, i64 noundef 0)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %stream, align 8, !tbaa !18
  %11 = load float, ptr %value.addr, align 4, !tbaa !8
  %call7 = call i64 @vtklibharu_HPDF_Stream_WriteReal(ptr noundef %10, float noundef %11)
  %cmp8 = icmp ne i64 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  %12 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error10 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %error10, align 8, !tbaa !17
  %call11 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %13)
  store i64 %call11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %14 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream13 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %stream13, align 8, !tbaa !18
  %call14 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %15, ptr noundef @.str.31)
  %cmp15 = icmp ne i64 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  %16 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error17 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %error17, align 8, !tbaa !17
  %call18 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %17)
  store i64 %call18, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %18 = load float, ptr %value.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %gstate, align 8, !tbaa !22
  %char_space = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %20, i32 0, i32 7
  store float %18, ptr %char_space, align 4, !tbaa !60
  %21 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %21, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then16, %if.then9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %22 = load i64, ptr %retval, align 8
  ret i64 %22
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetWordSpace(ptr noundef %page, float noundef %value) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %value.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %value, ptr %value.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load float, ptr %value.addr, align 4, !tbaa !8
  %cmp2 = fcmp olt float %5, -3.000000e+01
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load float, ptr %value.addr, align 4, !tbaa !8
  %cmp3 = fcmp ogt float %6, 3.000000e+02
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %8, i64 noundef 4182, i64 noundef 0)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %stream, align 8, !tbaa !18
  %11 = load float, ptr %value.addr, align 4, !tbaa !8
  %call7 = call i64 @vtklibharu_HPDF_Stream_WriteReal(ptr noundef %10, float noundef %11)
  %cmp8 = icmp ne i64 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  %12 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error10 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %error10, align 8, !tbaa !17
  %call11 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %13)
  store i64 %call11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %14 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream13 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %stream13, align 8, !tbaa !18
  %call14 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %15, ptr noundef @.str.32)
  %cmp15 = icmp ne i64 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  %16 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error17 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %error17, align 8, !tbaa !17
  %call18 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %17)
  store i64 %call18, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %18 = load float, ptr %value.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %gstate, align 8, !tbaa !22
  %word_space = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %20, i32 0, i32 8
  store float %18, ptr %word_space, align 8, !tbaa !61
  %21 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %21, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then16, %if.then9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %22 = load i64, ptr %retval, align 8
  ret i64 %22
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetHorizontalScalling(ptr noundef %page, float noundef %value) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %value.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %value, ptr %value.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load float, ptr %value.addr, align 4, !tbaa !8
  %cmp2 = fcmp olt float %5, 1.000000e+01
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load float, ptr %value.addr, align 4, !tbaa !8
  %cmp3 = fcmp ogt float %6, 3.000000e+02
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %8, i64 noundef 4182, i64 noundef 0)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %stream, align 8, !tbaa !18
  %11 = load float, ptr %value.addr, align 4, !tbaa !8
  %call7 = call i64 @vtklibharu_HPDF_Stream_WriteReal(ptr noundef %10, float noundef %11)
  %cmp8 = icmp ne i64 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  %12 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error10 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %error10, align 8, !tbaa !17
  %call11 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %13)
  store i64 %call11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %14 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream13 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %stream13, align 8, !tbaa !18
  %call14 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %15, ptr noundef @.str.33)
  %cmp15 = icmp ne i64 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  %16 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error17 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %error17, align 8, !tbaa !17
  %call18 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %17)
  store i64 %call18, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %18 = load float, ptr %value.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %gstate, align 8, !tbaa !22
  %h_scalling = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %20, i32 0, i32 9
  store float %18, ptr %h_scalling, align 4, !tbaa !62
  %21 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %21, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then16, %if.then9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %22 = load i64, ptr %retval, align 8
  ret i64 %22
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetTextLeading(ptr noundef %page, float noundef %value) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %value.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %value, ptr %value.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %stream, align 8, !tbaa !18
  %7 = load float, ptr %value.addr, align 4, !tbaa !8
  %call2 = call i64 @vtklibharu_HPDF_Stream_WriteReal(ptr noundef %6, float noundef %7)
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %9)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream7 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %10, i32 0, i32 12
  %11 = load ptr, ptr %stream7, align 8, !tbaa !18
  %call8 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %11, ptr noundef @.str.34)
  %cmp9 = icmp ne i64 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  %12 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error11 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %error11, align 8, !tbaa !17
  %call12 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %13)
  store i64 %call12, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %14 = load float, ptr %value.addr, align 4, !tbaa !8
  %15 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %15, i32 0, i32 5
  %16 = load ptr, ptr %gstate, align 8, !tbaa !22
  %text_leading = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %16, i32 0, i32 10
  store float %14, ptr %text_leading, align 8, !tbaa !63
  %17 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %17, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then10, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %18 = load i64, ptr %retval, align 8
  ret i64 %18
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetFontAndSize(ptr noundef %page, ptr noundef %font, float noundef %size) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %font.addr = alloca ptr, align 8
  %size.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %buf = alloca [512 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %local_name = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store ptr %font, ptr %font.addr, align 8, !tbaa !4
  store float %size, ptr %size.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_name) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %font.addr, align 8, !tbaa !4
  %call3 = call i32 @vtklibharu_HPDF_Font_Validate(ptr noundef %3)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %5, i64 noundef 4175, i64 noundef 0)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = load float, ptr %size.addr, align 4, !tbaa !8
  %cmp7 = fcmp ole float %6, 0.000000e+00
  br i1 %cmp7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %7 = load float, ptr %size.addr, align 4, !tbaa !8
  %cmp8 = fcmp ogt float %7, 6.000000e+02
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %lor.lhs.false, %if.end6
  %8 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error10 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %error10, align 8, !tbaa !17
  %10 = load float, ptr %size.addr, align 4, !tbaa !8
  %conv = fptoui float %10 to i64
  %call11 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %9, i64 noundef 4176, i64 noundef %conv)
  store i64 %call11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %11 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %mmgr, align 8, !tbaa !40
  %13 = load ptr, ptr %font.addr, align 8, !tbaa !4
  %mmgr13 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %mmgr13, align 8, !tbaa !40
  %cmp14 = icmp ne ptr %12, %14
  br i1 %cmp14, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  %15 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error17 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %error17, align 8, !tbaa !17
  %call18 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %16, i64 noundef 4175, i64 noundef 0)
  store i64 %call18, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %17 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr20 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %17, i32 0, i32 11
  %18 = load ptr, ptr %attr20, align 8, !tbaa !12
  store ptr %18, ptr %attr, align 8, !tbaa !4
  %19 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %font.addr, align 8, !tbaa !4
  %call21 = call ptr @vtklibharu_HPDF_Page_GetLocalFontName(ptr noundef %19, ptr noundef %20)
  store ptr %call21, ptr %local_name, align 8, !tbaa !4
  %21 = load ptr, ptr %local_name, align 8, !tbaa !4
  %tobool22 = icmp ne ptr %21, null
  br i1 %tobool22, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.end19
  %22 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error24 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %error24, align 8, !tbaa !17
  %call25 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %23, i64 noundef 4175, i64 noundef 0)
  store i64 %call25, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %24 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %24, i32 0, i32 12
  %25 = load ptr, ptr %stream, align 8, !tbaa !18
  %26 = load ptr, ptr %local_name, align 8, !tbaa !4
  %call27 = call i64 @vtklibharu_HPDF_Stream_WriteEscapeName(ptr noundef %25, ptr noundef %26)
  %cmp28 = icmp ne i64 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end26
  %27 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error31 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %error31, align 8, !tbaa !17
  %call32 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %28)
  store i64 %call32, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  %arraydecay34 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call35 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay34, i8 noundef zeroext 0, i32 noundef 512)
  %29 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %29, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %29, align 1, !tbaa !28
  %30 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %31 = load float, ptr %size.addr, align 4, !tbaa !8
  %32 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call36 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %30, float noundef %31, ptr noundef %32)
  store ptr %call36, ptr %pbuf, align 8, !tbaa !4
  %33 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %34 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call37 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %33, ptr noundef @.str.35, ptr noundef %34)
  %35 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream38 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %35, i32 0, i32 12
  %36 = load ptr, ptr %stream38, align 8, !tbaa !18
  %arraydecay39 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call40 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %36, ptr noundef %arraydecay39)
  %cmp41 = icmp ne i64 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end33
  %37 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error44 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %error44, align 8, !tbaa !17
  %call45 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %38)
  store i64 %call45, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end46:                                         ; preds = %if.end33
  %39 = load ptr, ptr %font.addr, align 8, !tbaa !4
  %40 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %40, i32 0, i32 5
  %41 = load ptr, ptr %gstate, align 8, !tbaa !22
  %font47 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %41, i32 0, i32 21
  store ptr %39, ptr %font47, align 8, !tbaa !64
  %42 = load float, ptr %size.addr, align 4, !tbaa !8
  %43 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate48 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %43, i32 0, i32 5
  %44 = load ptr, ptr %gstate48, align 8, !tbaa !22
  %font_size = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %44, i32 0, i32 22
  store float %42, ptr %font_size, align 8, !tbaa !65
  %45 = load ptr, ptr %font.addr, align 8, !tbaa !4
  %attr49 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %45, i32 0, i32 11
  %46 = load ptr, ptr %attr49, align 8, !tbaa !12
  %writing_mode = getelementptr inbounds %struct._HPDF_FontAttr_Rec, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %writing_mode, align 4, !tbaa !66
  %48 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate50 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %48, i32 0, i32 5
  %49 = load ptr, ptr %gstate50, align 8, !tbaa !22
  %writing_mode51 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %49, i32 0, i32 23
  store i32 %47, ptr %writing_mode51, align 4, !tbaa !68
  %50 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %50, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then43, %if.then30, %if.then23, %if.then16, %if.then9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_name) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %51 = load i64, ptr %retval, align 8
  ret i64 %51
}

declare i32 @vtklibharu_HPDF_Font_Validate(ptr noundef) #2

declare ptr @vtklibharu_HPDF_Page_GetLocalFontName(ptr noundef, ptr noundef) #2

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetTextRenderingMode(ptr noundef %page, i32 noundef %mode) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %mode.addr, align 4, !tbaa !28
  %cmp1 = icmp uge i32 %3, 8
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %error, align 8, !tbaa !17
  %6 = load i32, ptr %mode.addr, align 4, !tbaa !28
  %conv = zext i32 %6 to i64
  %call3 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %5, i64 noundef 4182, i64 noundef %conv)
  store i64 %call3, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr5 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 11
  %8 = load ptr, ptr %attr5, align 8, !tbaa !12
  store ptr %8, ptr %attr, align 8, !tbaa !4
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %stream, align 8, !tbaa !18
  %11 = load i32, ptr %mode.addr, align 4, !tbaa !28
  %call6 = call i64 @vtklibharu_HPDF_Stream_WriteInt(ptr noundef %10, i32 noundef %11)
  %cmp7 = icmp ne i64 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end4
  %12 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error10 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %error10, align 8, !tbaa !17
  %call11 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %13)
  store i64 %call11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %14 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream13 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %stream13, align 8, !tbaa !18
  %call14 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %15, ptr noundef @.str.36)
  %cmp15 = icmp ne i64 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end12
  %16 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error18 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %error18, align 8, !tbaa !17
  %call19 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %17)
  store i64 %call19, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %18 = load i32, ptr %mode.addr, align 4, !tbaa !28
  %19 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %gstate, align 8, !tbaa !22
  %rendering_mode = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %20, i32 0, i32 11
  store i32 %18, ptr %rendering_mode, align 4, !tbaa !69
  %21 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %21, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then17, %if.then9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %22 = load i64, ptr %retval, align 8
  ret i64 %22
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetTextRaise(ptr noundef %page, float noundef %value) #0 {
entry:
  %page.addr = alloca ptr, align 8
  %value.addr = alloca float, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %value, ptr %value.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %1 = load float, ptr %value.addr, align 4, !tbaa !8
  %call = call i64 @vtklibharu_HPDF_Page_SetTextRise(ptr noundef %0, float noundef %1)
  ret i64 %call
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetTextRise(ptr noundef %page, float noundef %value) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %value.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %value, ptr %value.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %stream, align 8, !tbaa !18
  %7 = load float, ptr %value.addr, align 4, !tbaa !8
  %call2 = call i64 @vtklibharu_HPDF_Stream_WriteReal(ptr noundef %6, float noundef %7)
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %9)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream7 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %10, i32 0, i32 12
  %11 = load ptr, ptr %stream7, align 8, !tbaa !18
  %call8 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %11, ptr noundef @.str.37)
  %cmp9 = icmp ne i64 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  %12 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error11 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %error11, align 8, !tbaa !17
  %call12 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %13)
  store i64 %call12, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %14 = load float, ptr %value.addr, align 4, !tbaa !8
  %15 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %15, i32 0, i32 5
  %16 = load ptr, ptr %gstate, align 8, !tbaa !22
  %text_rise = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %16, i32 0, i32 12
  store float %14, ptr %text_rise, align 8, !tbaa !70
  %17 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %17, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then10, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %18 = load i64, ptr %retval, align 8
  ret i64 %18
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_MoveTextPos(ptr noundef %page, float noundef %x, float noundef %y) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %buf = alloca [512 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 4)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr3 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr3, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %arraydecay4 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call5 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay4, i8 noundef zeroext 0, i32 noundef 512)
  %5 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %6 = load float, ptr %x.addr, align 4, !tbaa !8
  %7 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call6 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %5, float noundef %6, ptr noundef %7)
  store ptr %call6, ptr %pbuf, align 8, !tbaa !4
  %8 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %8, align 1, !tbaa !28
  %9 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %10 = load float, ptr %y.addr, align 4, !tbaa !8
  %11 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call7 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %9, float noundef %10, ptr noundef %11)
  store ptr %call7, ptr %pbuf, align 8, !tbaa !4
  %12 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %13 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call8 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %12, ptr noundef @.str.38, ptr noundef %13)
  %14 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %stream, align 8, !tbaa !18
  %arraydecay9 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call10 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %15, ptr noundef %arraydecay9)
  %cmp11 = icmp ne i64 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  %16 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %error, align 8, !tbaa !17
  %call13 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %17)
  store i64 %call13, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %18 = load float, ptr %x.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %19, i32 0, i32 9
  %a = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 0
  %20 = load float, ptr %a, align 8, !tbaa !71
  %21 = load float, ptr %y.addr, align 4, !tbaa !8
  %22 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix15 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %22, i32 0, i32 9
  %c = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix15, i32 0, i32 2
  %23 = load float, ptr %c, align 8, !tbaa !72
  %mul16 = fmul float %21, %23
  %24 = call float @llvm.fmuladd.f32(float %18, float %20, float %mul16)
  %25 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix17 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %25, i32 0, i32 9
  %x18 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix17, i32 0, i32 4
  %26 = load float, ptr %x18, align 8, !tbaa !73
  %add = fadd float %26, %24
  store float %add, ptr %x18, align 8, !tbaa !73
  %27 = load float, ptr %y.addr, align 4, !tbaa !8
  %28 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix19 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %28, i32 0, i32 9
  %d = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix19, i32 0, i32 3
  %29 = load float, ptr %d, align 4, !tbaa !74
  %30 = load float, ptr %x.addr, align 4, !tbaa !8
  %31 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix20 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %31, i32 0, i32 9
  %b = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix20, i32 0, i32 1
  %32 = load float, ptr %b, align 4, !tbaa !75
  %mul21 = fmul float %30, %32
  %33 = call float @llvm.fmuladd.f32(float %27, float %29, float %mul21)
  %34 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix22 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %34, i32 0, i32 9
  %y23 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix22, i32 0, i32 5
  %35 = load float, ptr %y23, align 4, !tbaa !76
  %add24 = fadd float %35, %33
  store float %add24, ptr %y23, align 4, !tbaa !76
  %36 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix25 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %36, i32 0, i32 9
  %x26 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix25, i32 0, i32 4
  %37 = load float, ptr %x26, align 8, !tbaa !73
  %38 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %38, i32 0, i32 8
  %x27 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos, i32 0, i32 0
  store float %37, ptr %x27, align 8, !tbaa !77
  %39 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix28 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %39, i32 0, i32 9
  %y29 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix28, i32 0, i32 5
  %40 = load float, ptr %y29, align 4, !tbaa !76
  %41 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos30 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %41, i32 0, i32 8
  %y31 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos30, i32 0, i32 1
  store float %40, ptr %y31, align 4, !tbaa !78
  %42 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %42, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %43 = load i64, ptr %retval, align 8
  ret i64 %43
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_MoveTextPos2(ptr noundef %page, float noundef %x, float noundef %y) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %buf = alloca [512 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 4)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr3 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr3, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %arraydecay4 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call5 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay4, i8 noundef zeroext 0, i32 noundef 512)
  %5 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %6 = load float, ptr %x.addr, align 4, !tbaa !8
  %7 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call6 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %5, float noundef %6, ptr noundef %7)
  store ptr %call6, ptr %pbuf, align 8, !tbaa !4
  %8 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %8, align 1, !tbaa !28
  %9 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %10 = load float, ptr %y.addr, align 4, !tbaa !8
  %11 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call7 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %9, float noundef %10, ptr noundef %11)
  store ptr %call7, ptr %pbuf, align 8, !tbaa !4
  %12 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %13 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call8 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %12, ptr noundef @.str.39, ptr noundef %13)
  %14 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %stream, align 8, !tbaa !18
  %arraydecay9 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call10 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %15, ptr noundef %arraydecay9)
  %cmp11 = icmp ne i64 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  %16 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %error, align 8, !tbaa !17
  %call13 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %17)
  store i64 %call13, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %18 = load float, ptr %x.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %19, i32 0, i32 9
  %a = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 0
  %20 = load float, ptr %a, align 8, !tbaa !71
  %21 = load float, ptr %y.addr, align 4, !tbaa !8
  %22 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix15 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %22, i32 0, i32 9
  %c = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix15, i32 0, i32 2
  %23 = load float, ptr %c, align 8, !tbaa !72
  %mul16 = fmul float %21, %23
  %24 = call float @llvm.fmuladd.f32(float %18, float %20, float %mul16)
  %25 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix17 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %25, i32 0, i32 9
  %x18 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix17, i32 0, i32 4
  %26 = load float, ptr %x18, align 8, !tbaa !73
  %add = fadd float %26, %24
  store float %add, ptr %x18, align 8, !tbaa !73
  %27 = load float, ptr %y.addr, align 4, !tbaa !8
  %28 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix19 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %28, i32 0, i32 9
  %d = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix19, i32 0, i32 3
  %29 = load float, ptr %d, align 4, !tbaa !74
  %30 = load float, ptr %x.addr, align 4, !tbaa !8
  %31 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix20 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %31, i32 0, i32 9
  %b = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix20, i32 0, i32 1
  %32 = load float, ptr %b, align 4, !tbaa !75
  %mul21 = fmul float %30, %32
  %33 = call float @llvm.fmuladd.f32(float %27, float %29, float %mul21)
  %34 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix22 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %34, i32 0, i32 9
  %y23 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix22, i32 0, i32 5
  %35 = load float, ptr %y23, align 4, !tbaa !76
  %add24 = fadd float %35, %33
  store float %add24, ptr %y23, align 4, !tbaa !76
  %36 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix25 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %36, i32 0, i32 9
  %x26 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix25, i32 0, i32 4
  %37 = load float, ptr %x26, align 8, !tbaa !73
  %38 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %38, i32 0, i32 8
  %x27 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos, i32 0, i32 0
  store float %37, ptr %x27, align 8, !tbaa !77
  %39 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix28 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %39, i32 0, i32 9
  %y29 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix28, i32 0, i32 5
  %40 = load float, ptr %y29, align 4, !tbaa !76
  %41 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos30 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %41, i32 0, i32 8
  %y31 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos30, i32 0, i32 1
  store float %40, ptr %y31, align 4, !tbaa !78
  %42 = load float, ptr %y.addr, align 4, !tbaa !8
  %fneg = fneg float %42
  %43 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %43, i32 0, i32 5
  %44 = load ptr, ptr %gstate, align 8, !tbaa !22
  %text_leading = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %44, i32 0, i32 10
  store float %fneg, ptr %text_leading, align 8, !tbaa !63
  %45 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %45, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %46 = load i64, ptr %retval, align 8
  ret i64 %46
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetTextMatrix(ptr noundef %page, float noundef %a, float noundef %b, float noundef %c, float noundef %d, float noundef %x, float noundef %y) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %c.addr = alloca float, align 4
  %d.addr = alloca float, align 4
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %buf = alloca [512 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %a, ptr %a.addr, align 4, !tbaa !8
  store float %b, ptr %b.addr, align 4, !tbaa !8
  store float %c, ptr %c.addr, align 4, !tbaa !8
  store float %d, ptr %d.addr, align 4, !tbaa !8
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 4)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr3 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr3, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load float, ptr %a.addr, align 4, !tbaa !8
  %cmp4 = fcmp oeq float %5, 0.000000e+00
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load float, ptr %d.addr, align 4, !tbaa !8
  %cmp5 = fcmp oeq float %6, 0.000000e+00
  br i1 %cmp5, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %7 = load float, ptr %b.addr, align 4, !tbaa !8
  %cmp6 = fcmp oeq float %7, 0.000000e+00
  br i1 %cmp6, label %if.then9, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %land.lhs.true
  %8 = load float, ptr %c.addr, align 4, !tbaa !8
  %cmp8 = fcmp oeq float %8, 0.000000e+00
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %lor.lhs.false7, %land.lhs.true
  %9 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %error, align 8, !tbaa !17
  %call10 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %10, i64 noundef 4153, i64 noundef 0)
  store i64 %call10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false7, %lor.lhs.false
  %arraydecay12 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call13 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay12, i8 noundef zeroext 0, i32 noundef 512)
  %11 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %12 = load float, ptr %a.addr, align 4, !tbaa !8
  %13 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call14 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %11, float noundef %12, ptr noundef %13)
  store ptr %call14, ptr %pbuf, align 8, !tbaa !4
  %14 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %14, align 1, !tbaa !28
  %15 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %16 = load float, ptr %b.addr, align 4, !tbaa !8
  %17 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call15 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %15, float noundef %16, ptr noundef %17)
  store ptr %call15, ptr %pbuf, align 8, !tbaa !4
  %18 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr16 = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr16, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %18, align 1, !tbaa !28
  %19 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %20 = load float, ptr %c.addr, align 4, !tbaa !8
  %21 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call17 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %19, float noundef %20, ptr noundef %21)
  store ptr %call17, ptr %pbuf, align 8, !tbaa !4
  %22 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr18 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr18, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %22, align 1, !tbaa !28
  %23 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %24 = load float, ptr %d.addr, align 4, !tbaa !8
  %25 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call19 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %23, float noundef %24, ptr noundef %25)
  store ptr %call19, ptr %pbuf, align 8, !tbaa !4
  %26 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr20 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr20, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %26, align 1, !tbaa !28
  %27 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %28 = load float, ptr %x.addr, align 4, !tbaa !8
  %29 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call21 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %27, float noundef %28, ptr noundef %29)
  store ptr %call21, ptr %pbuf, align 8, !tbaa !4
  %30 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr22 = getelementptr inbounds i8, ptr %30, i32 1
  store ptr %incdec.ptr22, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %30, align 1, !tbaa !28
  %31 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %32 = load float, ptr %y.addr, align 4, !tbaa !8
  %33 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call23 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %31, float noundef %32, ptr noundef %33)
  store ptr %call23, ptr %pbuf, align 8, !tbaa !4
  %34 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %35 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call24 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %34, ptr noundef @.str.40, ptr noundef %35)
  %36 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %36, i32 0, i32 12
  %37 = load ptr, ptr %stream, align 8, !tbaa !18
  %arraydecay25 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call26 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %37, ptr noundef %arraydecay25)
  %cmp27 = icmp ne i64 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end11
  %38 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error29 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %error29, align 8, !tbaa !17
  %call30 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %39)
  store i64 %call30, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %if.end11
  %40 = load float, ptr %a.addr, align 4, !tbaa !8
  %41 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %41, i32 0, i32 9
  %a32 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 0
  store float %40, ptr %a32, align 8, !tbaa !71
  %42 = load float, ptr %b.addr, align 4, !tbaa !8
  %43 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix33 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %43, i32 0, i32 9
  %b34 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix33, i32 0, i32 1
  store float %42, ptr %b34, align 4, !tbaa !75
  %44 = load float, ptr %c.addr, align 4, !tbaa !8
  %45 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix35 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %45, i32 0, i32 9
  %c36 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix35, i32 0, i32 2
  store float %44, ptr %c36, align 8, !tbaa !72
  %46 = load float, ptr %d.addr, align 4, !tbaa !8
  %47 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix37 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %47, i32 0, i32 9
  %d38 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix37, i32 0, i32 3
  store float %46, ptr %d38, align 4, !tbaa !74
  %48 = load float, ptr %x.addr, align 4, !tbaa !8
  %49 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix39 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %49, i32 0, i32 9
  %x40 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix39, i32 0, i32 4
  store float %48, ptr %x40, align 8, !tbaa !73
  %50 = load float, ptr %y.addr, align 4, !tbaa !8
  %51 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix41 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %51, i32 0, i32 9
  %y42 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix41, i32 0, i32 5
  store float %50, ptr %y42, align 4, !tbaa !76
  %52 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix43 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %52, i32 0, i32 9
  %x44 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix43, i32 0, i32 4
  %53 = load float, ptr %x44, align 8, !tbaa !73
  %54 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %54, i32 0, i32 8
  %x45 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos, i32 0, i32 0
  store float %53, ptr %x45, align 8, !tbaa !77
  %55 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix46 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %55, i32 0, i32 9
  %y47 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix46, i32 0, i32 5
  %56 = load float, ptr %y47, align 4, !tbaa !76
  %57 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos48 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %57, i32 0, i32 8
  %y49 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos48, i32 0, i32 1
  store float %56, ptr %y49, align 4, !tbaa !78
  %58 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %58, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then28, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %59 = load i64, ptr %retval, align 8
  ret i64 %59
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_MoveToNextLine(ptr noundef %page) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 4)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %stream, align 8, !tbaa !18
  %call2 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %6, ptr noundef @.str.41)
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %8)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %gstate, align 8, !tbaa !22
  %text_leading = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %10, i32 0, i32 10
  %11 = load float, ptr %text_leading, align 8, !tbaa !63
  %12 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %12, i32 0, i32 9
  %c = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 2
  %13 = load float, ptr %c, align 8, !tbaa !72
  %14 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix7 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %14, i32 0, i32 9
  %x = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix7, i32 0, i32 4
  %15 = load float, ptr %x, align 8, !tbaa !73
  %neg = fneg float %11
  %16 = call float @llvm.fmuladd.f32(float %neg, float %13, float %15)
  store float %16, ptr %x, align 8, !tbaa !73
  %17 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate8 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %17, i32 0, i32 5
  %18 = load ptr, ptr %gstate8, align 8, !tbaa !22
  %text_leading9 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %18, i32 0, i32 10
  %19 = load float, ptr %text_leading9, align 8, !tbaa !63
  %20 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix10 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %20, i32 0, i32 9
  %d = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix10, i32 0, i32 3
  %21 = load float, ptr %d, align 4, !tbaa !74
  %22 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix11 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %22, i32 0, i32 9
  %y = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix11, i32 0, i32 5
  %23 = load float, ptr %y, align 4, !tbaa !76
  %neg12 = fneg float %19
  %24 = call float @llvm.fmuladd.f32(float %neg12, float %21, float %23)
  store float %24, ptr %y, align 4, !tbaa !76
  %25 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix13 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %25, i32 0, i32 9
  %x14 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix13, i32 0, i32 4
  %26 = load float, ptr %x14, align 8, !tbaa !73
  %27 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %27, i32 0, i32 8
  %x15 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos, i32 0, i32 0
  store float %26, ptr %x15, align 8, !tbaa !77
  %28 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix16 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %28, i32 0, i32 9
  %y17 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix16, i32 0, i32 5
  %29 = load float, ptr %y17, align 4, !tbaa !76
  %30 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos18 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %30, i32 0, i32 8
  %y19 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos18, i32 0, i32 1
  store float %29, ptr %y19, align 4, !tbaa !78
  %31 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %31, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %32 = load i64, ptr %retval, align 8
  ret i64 %32
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_ShowText(ptr noundef %page, ptr noundef %text) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %text.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %tw = alloca float, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store ptr %text, ptr %text.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 4)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %tw) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !28
  %conv = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %5 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr5 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %6, i32 0, i32 11
  %7 = load ptr, ptr %attr5, align 8, !tbaa !12
  store ptr %7, ptr %attr, align 8, !tbaa !4
  %8 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %gstate, align 8, !tbaa !22
  %font = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %9, i32 0, i32 21
  %10 = load ptr, ptr %font, align 8, !tbaa !64
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %error, align 8, !tbaa !17
  %call7 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %12, i64 noundef 4174, i64 noundef 0)
  store i64 %call7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %13 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %call9 = call float @vtklibharu_HPDF_Page_TextWidth(ptr noundef %13, ptr noundef %14)
  store float %call9, ptr %tw, align 4, !tbaa !8
  %15 = load float, ptr %tw, align 4, !tbaa !8
  %tobool10 = fcmp une float %15, 0.000000e+00
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  %16 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %16, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %17 = load ptr, ptr %attr, align 8, !tbaa !4
  %18 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %call13 = call i64 @InternalWriteText(ptr noundef %17, ptr noundef %18)
  %cmp14 = icmp ne i64 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  %19 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error17 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %error17, align 8, !tbaa !17
  %call18 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %20)
  store i64 %call18, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %21 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %21, i32 0, i32 12
  %22 = load ptr, ptr %stream, align 8, !tbaa !18
  %call20 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %22, ptr noundef @.str.42)
  %cmp21 = icmp ne i64 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end19
  %23 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error24 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %error24, align 8, !tbaa !17
  %call25 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %24)
  store i64 %call25, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %25 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate27 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %gstate27, align 8, !tbaa !22
  %writing_mode = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %26, i32 0, i32 23
  %27 = load i32, ptr %writing_mode, align 4, !tbaa !68
  %cmp28 = icmp eq i32 %27, 0
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end26
  %28 = load float, ptr %tw, align 4, !tbaa !8
  %29 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %29, i32 0, i32 9
  %a = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 0
  %30 = load float, ptr %a, align 8, !tbaa !71
  %31 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %31, i32 0, i32 8
  %x = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos, i32 0, i32 0
  %32 = load float, ptr %x, align 8, !tbaa !77
  %33 = call float @llvm.fmuladd.f32(float %28, float %30, float %32)
  store float %33, ptr %x, align 8, !tbaa !77
  %34 = load float, ptr %tw, align 4, !tbaa !8
  %35 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix31 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %35, i32 0, i32 9
  %b = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix31, i32 0, i32 1
  %36 = load float, ptr %b, align 4, !tbaa !75
  %37 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos32 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %37, i32 0, i32 8
  %y = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos32, i32 0, i32 1
  %38 = load float, ptr %y, align 4, !tbaa !78
  %39 = call float @llvm.fmuladd.f32(float %34, float %36, float %38)
  store float %39, ptr %y, align 4, !tbaa !78
  br label %if.end42

if.else:                                          ; preds = %if.end26
  %40 = load float, ptr %tw, align 4, !tbaa !8
  %41 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix33 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %41, i32 0, i32 9
  %b34 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix33, i32 0, i32 1
  %42 = load float, ptr %b34, align 4, !tbaa !75
  %43 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos35 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %43, i32 0, i32 8
  %x36 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos35, i32 0, i32 0
  %44 = load float, ptr %x36, align 8, !tbaa !77
  %neg = fneg float %40
  %45 = call float @llvm.fmuladd.f32(float %neg, float %42, float %44)
  store float %45, ptr %x36, align 8, !tbaa !77
  %46 = load float, ptr %tw, align 4, !tbaa !8
  %47 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix37 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %47, i32 0, i32 9
  %a38 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix37, i32 0, i32 0
  %48 = load float, ptr %a38, align 8, !tbaa !71
  %49 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos39 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %49, i32 0, i32 8
  %y40 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos39, i32 0, i32 1
  %50 = load float, ptr %y40, align 4, !tbaa !78
  %neg41 = fneg float %46
  %51 = call float @llvm.fmuladd.f32(float %neg41, float %48, float %50)
  store float %51, ptr %y40, align 4, !tbaa !78
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then30
  %52 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %52, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then23, %if.then16, %if.then11, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %tw) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %53 = load i64, ptr %retval, align 8
  ret i64 %53
}

declare float @vtklibharu_HPDF_Page_TextWidth(ptr noundef, ptr noundef) #2

; Function Attrs: uwtable
define internal i64 @InternalWriteText(ptr noundef %attr, ptr noundef %text) #0 {
entry:
  %retval = alloca i64, align 8
  %attr.addr = alloca ptr, align 8
  %text.addr = alloca ptr, align 8
  %font_attr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %encoder = alloca ptr, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %encoded = alloca ptr, align 8
  %length = alloca i32, align 4
  store ptr %attr, ptr %attr.addr, align 8, !tbaa !4
  store ptr %text, ptr %text.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %font_attr) #8
  %0 = load ptr, ptr %attr.addr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %gstate, align 8, !tbaa !22
  %font = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %1, i32 0, i32 21
  %2 = load ptr, ptr %font, align 8, !tbaa !64
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %2, i32 0, i32 11
  %3 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %3, ptr %font_attr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %4 = load ptr, ptr %font_attr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct._HPDF_FontAttr_Rec, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %type, align 8, !tbaa !79
  %cmp = icmp eq i32 %5, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %font_attr, align 8, !tbaa !4
  %type2 = getelementptr inbounds %struct._HPDF_FontAttr_Rec, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %type2, align 8, !tbaa !79
  %cmp3 = icmp eq i32 %7, 3
  br i1 %cmp3, label %if.then, label %if.end28

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %encoder) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #8
  %8 = load ptr, ptr %attr.addr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %8, i32 0, i32 12
  %9 = load ptr, ptr %stream, align 8, !tbaa !18
  %call = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %9, ptr noundef @.str.72)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  %cmp4 = icmp ne i64 %call, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %10 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26

if.end:                                           ; preds = %if.then
  %11 = load ptr, ptr %font_attr, align 8, !tbaa !4
  %encoder6 = getelementptr inbounds %struct._HPDF_FontAttr_Rec, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %encoder6, align 8, !tbaa !80
  store ptr %12, ptr %encoder, align 8, !tbaa !4
  %13 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %call7 = call i32 @vtklibharu_HPDF_StrLen(ptr noundef %13, i32 noundef 2147483646)
  store i32 %call7, ptr %len, align 4, !tbaa !32
  %14 = load ptr, ptr %encoder, align 8, !tbaa !4
  %encode_text_fn = getelementptr inbounds %struct._HPDF_Encoder_Rec, ptr %14, i32 0, i32 7
  %15 = load ptr, ptr %encode_text_fn, align 8, !tbaa !81
  %cmp8 = icmp eq ptr %15, null
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %16 = load ptr, ptr %attr.addr, align 8, !tbaa !4
  %stream10 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %stream10, align 8, !tbaa !18
  %18 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %19 = load i32, ptr %len, align 4, !tbaa !32
  %call11 = call i64 @vtklibharu_HPDF_Stream_WriteBinary(ptr noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef null)
  store i64 %call11, ptr %ret, align 8, !tbaa !10
  %cmp12 = icmp ne i64 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then9
  %20 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %20, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26

if.end14:                                         ; preds = %if.then9
  br label %if.end23

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %encoded) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #8
  %21 = load ptr, ptr %encoder, align 8, !tbaa !4
  %encode_text_fn15 = getelementptr inbounds %struct._HPDF_Encoder_Rec, ptr %21, i32 0, i32 7
  %22 = load ptr, ptr %encode_text_fn15, align 8, !tbaa !81
  %23 = load ptr, ptr %encoder, align 8, !tbaa !4
  %24 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %25 = load i32, ptr %len, align 4, !tbaa !32
  %call16 = call ptr %22(ptr noundef %23, ptr noundef %24, i32 noundef %25, ptr noundef %length)
  store ptr %call16, ptr %encoded, align 8, !tbaa !4
  %26 = load ptr, ptr %attr.addr, align 8, !tbaa !4
  %stream17 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %stream17, align 8, !tbaa !18
  %28 = load ptr, ptr %encoded, align 8, !tbaa !4
  %29 = load i32, ptr %length, align 4, !tbaa !32
  %call18 = call i64 @vtklibharu_HPDF_Stream_WriteBinary(ptr noundef %27, ptr noundef %28, i32 noundef %29, ptr noundef null)
  store i64 %call18, ptr %ret, align 8, !tbaa !10
  %30 = load ptr, ptr %encoded, align 8, !tbaa !4
  call void @free(ptr noundef %30) #8
  %31 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp19 = icmp ne i64 %31, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.else
  %32 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %32, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.else
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then20
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %encoded) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup26 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end23

if.end23:                                         ; preds = %cleanup.cont, %if.end14
  %33 = load ptr, ptr %attr.addr, align 8, !tbaa !4
  %stream24 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %33, i32 0, i32 12
  %34 = load ptr, ptr %stream24, align 8, !tbaa !18
  %call25 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %34, ptr noundef @.str.73)
  store i64 %call25, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26

cleanup26:                                        ; preds = %if.end23, %cleanup, %if.then13, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %encoder) #8
  br label %cleanup31

if.end28:                                         ; preds = %lor.lhs.false
  %35 = load ptr, ptr %attr.addr, align 8, !tbaa !4
  %stream29 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %35, i32 0, i32 12
  %36 = load ptr, ptr %stream29, align 8, !tbaa !18
  %37 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %call30 = call i64 @vtklibharu_HPDF_Stream_WriteEscapeText(ptr noundef %36, ptr noundef %37)
  store i64 %call30, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31

cleanup31:                                        ; preds = %if.end28, %cleanup26
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %font_attr) #8
  %38 = load i64, ptr %retval, align 8
  ret i64 %38
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_ShowTextNextLine(ptr noundef %page, ptr noundef %text) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %text.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %tw = alloca float, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store ptr %text, ptr %text.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 4)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %tw) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %gstate, align 8, !tbaa !22
  %font = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %6, i32 0, i32 21
  %7 = load ptr, ptr %font, align 8, !tbaa !64
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %error, align 8, !tbaa !17
  %call3 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %9, i64 noundef 4174, i64 noundef 0)
  store i64 %call3, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %10 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %10, null
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %11 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 0
  %12 = load i8, ptr %arrayidx, align 1, !tbaa !28
  %conv = sext i8 %12 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %lor.lhs.false, %if.end4
  %13 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call9 = call i64 @vtklibharu_HPDF_Page_MoveToNextLine(ptr noundef %13)
  store i64 %call9, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %14 = load ptr, ptr %attr, align 8, !tbaa !4
  %15 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %call11 = call i64 @InternalWriteText(ptr noundef %14, ptr noundef %15)
  %cmp12 = icmp ne i64 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  %16 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error15 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %error15, align 8, !tbaa !17
  %call16 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %17)
  store i64 %call16, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %18 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %18, i32 0, i32 12
  %19 = load ptr, ptr %stream, align 8, !tbaa !18
  %call18 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %19, ptr noundef @.str.43)
  %cmp19 = icmp ne i64 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end17
  %20 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error22 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %error22, align 8, !tbaa !17
  %call23 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %21)
  store i64 %call23, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %22 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %call25 = call float @vtklibharu_HPDF_Page_TextWidth(ptr noundef %22, ptr noundef %23)
  store float %call25, ptr %tw, align 4, !tbaa !8
  %24 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate26 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %24, i32 0, i32 5
  %25 = load ptr, ptr %gstate26, align 8, !tbaa !22
  %text_leading = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %25, i32 0, i32 10
  %26 = load float, ptr %text_leading, align 8, !tbaa !63
  %27 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %27, i32 0, i32 9
  %c = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 2
  %28 = load float, ptr %c, align 8, !tbaa !72
  %29 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix27 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %29, i32 0, i32 9
  %x = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix27, i32 0, i32 4
  %30 = load float, ptr %x, align 8, !tbaa !73
  %neg = fneg float %26
  %31 = call float @llvm.fmuladd.f32(float %neg, float %28, float %30)
  store float %31, ptr %x, align 8, !tbaa !73
  %32 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate28 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %32, i32 0, i32 5
  %33 = load ptr, ptr %gstate28, align 8, !tbaa !22
  %text_leading29 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %33, i32 0, i32 10
  %34 = load float, ptr %text_leading29, align 8, !tbaa !63
  %35 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix30 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %35, i32 0, i32 9
  %d = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix30, i32 0, i32 3
  %36 = load float, ptr %d, align 4, !tbaa !74
  %37 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix31 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %37, i32 0, i32 9
  %y = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix31, i32 0, i32 5
  %38 = load float, ptr %y, align 4, !tbaa !76
  %neg32 = fneg float %34
  %39 = call float @llvm.fmuladd.f32(float %neg32, float %36, float %38)
  store float %39, ptr %y, align 4, !tbaa !76
  %40 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix33 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %40, i32 0, i32 9
  %x34 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix33, i32 0, i32 4
  %41 = load float, ptr %x34, align 8, !tbaa !73
  %42 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %42, i32 0, i32 8
  %x35 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos, i32 0, i32 0
  store float %41, ptr %x35, align 8, !tbaa !77
  %43 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix36 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %43, i32 0, i32 9
  %y37 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix36, i32 0, i32 5
  %44 = load float, ptr %y37, align 4, !tbaa !76
  %45 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos38 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %45, i32 0, i32 8
  %y39 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos38, i32 0, i32 1
  store float %44, ptr %y39, align 4, !tbaa !78
  %46 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate40 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %46, i32 0, i32 5
  %47 = load ptr, ptr %gstate40, align 8, !tbaa !22
  %writing_mode = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %47, i32 0, i32 23
  %48 = load i32, ptr %writing_mode, align 4, !tbaa !68
  %cmp41 = icmp eq i32 %48, 0
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end24
  %49 = load float, ptr %tw, align 4, !tbaa !8
  %50 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix44 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %50, i32 0, i32 9
  %a = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix44, i32 0, i32 0
  %51 = load float, ptr %a, align 8, !tbaa !71
  %52 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos45 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %52, i32 0, i32 8
  %x46 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos45, i32 0, i32 0
  %53 = load float, ptr %x46, align 8, !tbaa !77
  %54 = call float @llvm.fmuladd.f32(float %49, float %51, float %53)
  store float %54, ptr %x46, align 8, !tbaa !77
  %55 = load float, ptr %tw, align 4, !tbaa !8
  %56 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix47 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %56, i32 0, i32 9
  %b = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix47, i32 0, i32 1
  %57 = load float, ptr %b, align 4, !tbaa !75
  %58 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos48 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %58, i32 0, i32 8
  %y49 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos48, i32 0, i32 1
  %59 = load float, ptr %y49, align 4, !tbaa !78
  %60 = call float @llvm.fmuladd.f32(float %55, float %57, float %59)
  store float %60, ptr %y49, align 4, !tbaa !78
  br label %if.end60

if.else:                                          ; preds = %if.end24
  %61 = load float, ptr %tw, align 4, !tbaa !8
  %62 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix50 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %62, i32 0, i32 9
  %b51 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix50, i32 0, i32 1
  %63 = load float, ptr %b51, align 4, !tbaa !75
  %64 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos52 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %64, i32 0, i32 8
  %x53 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos52, i32 0, i32 0
  %65 = load float, ptr %x53, align 8, !tbaa !77
  %neg54 = fneg float %61
  %66 = call float @llvm.fmuladd.f32(float %neg54, float %63, float %65)
  store float %66, ptr %x53, align 8, !tbaa !77
  %67 = load float, ptr %tw, align 4, !tbaa !8
  %68 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix55 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %68, i32 0, i32 9
  %a56 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix55, i32 0, i32 0
  %69 = load float, ptr %a56, align 8, !tbaa !71
  %70 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos57 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %70, i32 0, i32 8
  %y58 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos57, i32 0, i32 1
  %71 = load float, ptr %y58, align 4, !tbaa !78
  %neg59 = fneg float %67
  %72 = call float @llvm.fmuladd.f32(float %neg59, float %69, float %71)
  store float %72, ptr %y58, align 4, !tbaa !78
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then43
  %73 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %73, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then21, %if.then14, %if.then8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %tw) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %74 = load i64, ptr %retval, align 8
  ret i64 %74
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_ShowTextNextLineEx(ptr noundef %page, float noundef %word_space, float noundef %char_space, ptr noundef %text) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %word_space.addr = alloca float, align 4
  %char_space.addr = alloca float, align 4
  %text.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %tw = alloca float, align 4
  %buf = alloca [512 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %word_space, ptr %word_space.addr, align 4, !tbaa !8
  store float %char_space, ptr %char_space.addr, align 4, !tbaa !8
  store ptr %text, ptr %text.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 4)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %tw) #8
  call void @llvm.lifetime.start.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load float, ptr %word_space.addr, align 4, !tbaa !8
  %cmp3 = fcmp olt float %3, -3.000000e+01
  br i1 %cmp3, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load float, ptr %word_space.addr, align 4, !tbaa !8
  %cmp4 = fcmp ogt float %4, 3.000000e+02
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %error, align 8, !tbaa !17
  %call6 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %6, i64 noundef 4182, i64 noundef 0)
  store i64 %call6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %7 = load float, ptr %char_space.addr, align 4, !tbaa !8
  %cmp8 = fcmp olt float %7, -3.000000e+01
  br i1 %cmp8, label %if.then11, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end7
  %8 = load float, ptr %char_space.addr, align 4, !tbaa !8
  %cmp10 = fcmp ogt float %8, 3.000000e+02
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %lor.lhs.false9, %if.end7
  %9 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error12 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %error12, align 8, !tbaa !17
  %call13 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %10, i64 noundef 4182, i64 noundef 0)
  store i64 %call13, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false9
  %11 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr15 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %11, i32 0, i32 11
  %12 = load ptr, ptr %attr15, align 8, !tbaa !12
  store ptr %12, ptr %attr, align 8, !tbaa !4
  %13 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %gstate, align 8, !tbaa !22
  %font = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %14, i32 0, i32 21
  %15 = load ptr, ptr %font, align 8, !tbaa !64
  %tobool = icmp ne ptr %15, null
  br i1 %tobool, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end14
  %16 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error17 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %error17, align 8, !tbaa !17
  %call18 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %17, i64 noundef 4174, i64 noundef 0)
  store i64 %call18, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %18 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %cmp20 = icmp eq ptr %18, null
  br i1 %cmp20, label %if.then24, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.end19
  %19 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %19, i64 0
  %20 = load i8, ptr %arrayidx, align 1, !tbaa !28
  %conv = sext i8 %20 to i32
  %cmp22 = icmp eq i32 %conv, 0
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %lor.lhs.false21, %if.end19
  %21 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call25 = call i64 @vtklibharu_HPDF_Page_MoveToNextLine(ptr noundef %21)
  store i64 %call25, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false21
  %arraydecay27 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call28 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay27, i8 noundef zeroext 0, i32 noundef 512)
  %22 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %23 = load float, ptr %word_space.addr, align 4, !tbaa !8
  %24 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call29 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %22, float noundef %23, ptr noundef %24)
  store ptr %call29, ptr %pbuf, align 8, !tbaa !4
  %25 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %25, align 1, !tbaa !28
  %26 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %27 = load float, ptr %char_space.addr, align 4, !tbaa !8
  %28 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call30 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %26, float noundef %27, ptr noundef %28)
  store ptr %call30, ptr %pbuf, align 8, !tbaa !4
  %29 = load ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %29, align 1, !tbaa !28
  %30 = load ptr, ptr %attr, align 8, !tbaa !4
  %arraydecay31 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call32 = call i64 @InternalWriteText(ptr noundef %30, ptr noundef %arraydecay31)
  %cmp33 = icmp ne i64 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end26
  %31 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error36 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %error36, align 8, !tbaa !17
  %call37 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %32)
  store i64 %call37, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.end26
  %33 = load ptr, ptr %attr, align 8, !tbaa !4
  %34 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %call39 = call i64 @InternalWriteText(ptr noundef %33, ptr noundef %34)
  %cmp40 = icmp ne i64 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end38
  %35 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error43 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %error43, align 8, !tbaa !17
  %call44 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %36)
  store i64 %call44, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  %37 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %37, i32 0, i32 12
  %38 = load ptr, ptr %stream, align 8, !tbaa !18
  %call46 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %38, ptr noundef @.str.44)
  %cmp47 = icmp ne i64 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end45
  %39 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error50 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %39, i32 0, i32 2
  %40 = load ptr, ptr %error50, align 8, !tbaa !17
  %call51 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %40)
  store i64 %call51, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end52:                                         ; preds = %if.end45
  %41 = load float, ptr %word_space.addr, align 4, !tbaa !8
  %42 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate53 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %42, i32 0, i32 5
  %43 = load ptr, ptr %gstate53, align 8, !tbaa !22
  %word_space54 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %43, i32 0, i32 8
  store float %41, ptr %word_space54, align 8, !tbaa !61
  %44 = load float, ptr %char_space.addr, align 4, !tbaa !8
  %45 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate55 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %45, i32 0, i32 5
  %46 = load ptr, ptr %gstate55, align 8, !tbaa !22
  %char_space56 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %46, i32 0, i32 7
  store float %44, ptr %char_space56, align 4, !tbaa !60
  %47 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %48 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %call57 = call float @vtklibharu_HPDF_Page_TextWidth(ptr noundef %47, ptr noundef %48)
  store float %call57, ptr %tw, align 4, !tbaa !8
  %49 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate58 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %49, i32 0, i32 5
  %50 = load ptr, ptr %gstate58, align 8, !tbaa !22
  %text_leading = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %50, i32 0, i32 10
  %51 = load float, ptr %text_leading, align 8, !tbaa !63
  %52 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %52, i32 0, i32 9
  %b = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 1
  %53 = load float, ptr %b, align 4, !tbaa !75
  %54 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix59 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %54, i32 0, i32 9
  %x = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix59, i32 0, i32 4
  %55 = load float, ptr %x, align 8, !tbaa !73
  %56 = call float @llvm.fmuladd.f32(float %51, float %53, float %55)
  store float %56, ptr %x, align 8, !tbaa !73
  %57 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate60 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %57, i32 0, i32 5
  %58 = load ptr, ptr %gstate60, align 8, !tbaa !22
  %text_leading61 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %58, i32 0, i32 10
  %59 = load float, ptr %text_leading61, align 8, !tbaa !63
  %60 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix62 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %60, i32 0, i32 9
  %a = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix62, i32 0, i32 0
  %61 = load float, ptr %a, align 8, !tbaa !71
  %62 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix63 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %62, i32 0, i32 9
  %y = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix63, i32 0, i32 5
  %63 = load float, ptr %y, align 4, !tbaa !76
  %neg = fneg float %59
  %64 = call float @llvm.fmuladd.f32(float %neg, float %61, float %63)
  store float %64, ptr %y, align 4, !tbaa !76
  %65 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix64 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %65, i32 0, i32 9
  %x65 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix64, i32 0, i32 4
  %66 = load float, ptr %x65, align 8, !tbaa !73
  %67 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %67, i32 0, i32 8
  %x66 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos, i32 0, i32 0
  store float %66, ptr %x66, align 8, !tbaa !77
  %68 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix67 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %68, i32 0, i32 9
  %y68 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix67, i32 0, i32 5
  %69 = load float, ptr %y68, align 4, !tbaa !76
  %70 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos69 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %70, i32 0, i32 8
  %y70 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos69, i32 0, i32 1
  store float %69, ptr %y70, align 4, !tbaa !78
  %71 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate71 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %71, i32 0, i32 5
  %72 = load ptr, ptr %gstate71, align 8, !tbaa !22
  %writing_mode = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %72, i32 0, i32 23
  %73 = load i32, ptr %writing_mode, align 4, !tbaa !68
  %cmp72 = icmp eq i32 %73, 0
  br i1 %cmp72, label %if.then74, label %if.else

if.then74:                                        ; preds = %if.end52
  %74 = load float, ptr %tw, align 4, !tbaa !8
  %75 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix75 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %75, i32 0, i32 9
  %a76 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix75, i32 0, i32 0
  %76 = load float, ptr %a76, align 8, !tbaa !71
  %77 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos77 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %77, i32 0, i32 8
  %x78 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos77, i32 0, i32 0
  %78 = load float, ptr %x78, align 8, !tbaa !77
  %79 = call float @llvm.fmuladd.f32(float %74, float %76, float %78)
  store float %79, ptr %x78, align 8, !tbaa !77
  %80 = load float, ptr %tw, align 4, !tbaa !8
  %81 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix79 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %81, i32 0, i32 9
  %b80 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix79, i32 0, i32 1
  %82 = load float, ptr %b80, align 4, !tbaa !75
  %83 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos81 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %83, i32 0, i32 8
  %y82 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos81, i32 0, i32 1
  %84 = load float, ptr %y82, align 4, !tbaa !78
  %85 = call float @llvm.fmuladd.f32(float %80, float %82, float %84)
  store float %85, ptr %y82, align 4, !tbaa !78
  br label %if.end93

if.else:                                          ; preds = %if.end52
  %86 = load float, ptr %tw, align 4, !tbaa !8
  %87 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix83 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %87, i32 0, i32 9
  %b84 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix83, i32 0, i32 1
  %88 = load float, ptr %b84, align 4, !tbaa !75
  %89 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos85 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %89, i32 0, i32 8
  %x86 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos85, i32 0, i32 0
  %90 = load float, ptr %x86, align 8, !tbaa !77
  %neg87 = fneg float %86
  %91 = call float @llvm.fmuladd.f32(float %neg87, float %88, float %90)
  store float %91, ptr %x86, align 8, !tbaa !77
  %92 = load float, ptr %tw, align 4, !tbaa !8
  %93 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix88 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %93, i32 0, i32 9
  %a89 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix88, i32 0, i32 0
  %94 = load float, ptr %a89, align 8, !tbaa !71
  %95 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos90 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %95, i32 0, i32 8
  %y91 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos90, i32 0, i32 1
  %96 = load float, ptr %y91, align 4, !tbaa !78
  %neg92 = fneg float %92
  %97 = call float @llvm.fmuladd.f32(float %neg92, float %94, float %96)
  store float %97, ptr %y91, align 4, !tbaa !78
  br label %if.end93

if.end93:                                         ; preds = %if.else, %if.then74
  %98 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %98, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.then49, %if.then42, %if.then35, %if.then24, %if.then16, %if.then11, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tw) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %99 = load i64, ptr %retval, align 8
  ret i64 %99
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetGrayFill(ptr noundef %page, float noundef %gray) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %gray.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %gray, ptr %gray.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load float, ptr %gray.addr, align 4, !tbaa !8
  %cmp2 = fcmp olt float %5, 0.000000e+00
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load float, ptr %gray.addr, align 4, !tbaa !8
  %cmp3 = fcmp ogt float %6, 1.000000e+00
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %8, i64 noundef 4182, i64 noundef 0)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %stream, align 8, !tbaa !18
  %11 = load float, ptr %gray.addr, align 4, !tbaa !8
  %call7 = call i64 @vtklibharu_HPDF_Stream_WriteReal(ptr noundef %10, float noundef %11)
  %cmp8 = icmp ne i64 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  %12 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error10 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %error10, align 8, !tbaa !17
  %call11 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %13)
  store i64 %call11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %14 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream13 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %stream13, align 8, !tbaa !18
  %call14 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %15, ptr noundef @.str.45)
  %cmp15 = icmp ne i64 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  %16 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error17 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %error17, align 8, !tbaa !17
  %call18 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %17)
  store i64 %call18, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %18 = load float, ptr %gray.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %gstate, align 8, !tbaa !22
  %gray_fill = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %20, i32 0, i32 19
  store float %18, ptr %gray_fill, align 4, !tbaa !83
  %21 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate20 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %21, i32 0, i32 5
  %22 = load ptr, ptr %gstate20, align 8, !tbaa !22
  %cs_fill = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %22, i32 0, i32 13
  store i32 0, ptr %cs_fill, align 4, !tbaa !84
  %23 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %23, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then16, %if.then9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %24 = load i64, ptr %retval, align 8
  ret i64 %24
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetGrayStroke(ptr noundef %page, float noundef %gray) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %gray.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %gray, ptr %gray.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load float, ptr %gray.addr, align 4, !tbaa !8
  %cmp2 = fcmp olt float %5, 0.000000e+00
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load float, ptr %gray.addr, align 4, !tbaa !8
  %cmp3 = fcmp ogt float %6, 1.000000e+00
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %error, align 8, !tbaa !17
  %call5 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %8, i64 noundef 4182, i64 noundef 0)
  store i64 %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %stream, align 8, !tbaa !18
  %11 = load float, ptr %gray.addr, align 4, !tbaa !8
  %call7 = call i64 @vtklibharu_HPDF_Stream_WriteReal(ptr noundef %10, float noundef %11)
  %cmp8 = icmp ne i64 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  %12 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error10 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %error10, align 8, !tbaa !17
  %call11 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %13)
  store i64 %call11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %14 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream13 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %stream13, align 8, !tbaa !18
  %call14 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %15, ptr noundef @.str.46)
  %cmp15 = icmp ne i64 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  %16 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error17 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %error17, align 8, !tbaa !17
  %call18 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %17)
  store i64 %call18, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %18 = load float, ptr %gray.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %gstate, align 8, !tbaa !22
  %gray_stroke = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %20, i32 0, i32 20
  store float %18, ptr %gray_stroke, align 8, !tbaa !85
  %21 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate20 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %21, i32 0, i32 5
  %22 = load ptr, ptr %gstate20, align 8, !tbaa !22
  %cs_stroke = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %22, i32 0, i32 14
  store i32 0, ptr %cs_stroke, align 8, !tbaa !86
  %23 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %23, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then16, %if.then9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %24 = load i64, ptr %retval, align 8
  ret i64 %24
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetRGBFill(ptr noundef %page, float noundef %r, float noundef %g, float noundef %b) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %r.addr = alloca float, align 4
  %g.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %buf = alloca [512 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %r, ptr %r.addr, align 4, !tbaa !8
  store float %g, ptr %g.addr, align 4, !tbaa !8
  store float %b, ptr %b.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load float, ptr %r.addr, align 4, !tbaa !8
  %cmp3 = fcmp olt float %3, 0.000000e+00
  br i1 %cmp3, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load float, ptr %r.addr, align 4, !tbaa !8
  %cmp4 = fcmp ogt float %4, 1.000000e+00
  br i1 %cmp4, label %if.then13, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load float, ptr %g.addr, align 4, !tbaa !8
  %cmp6 = fcmp olt float %5, 0.000000e+00
  br i1 %cmp6, label %if.then13, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %6 = load float, ptr %g.addr, align 4, !tbaa !8
  %cmp8 = fcmp ogt float %6, 1.000000e+00
  br i1 %cmp8, label %if.then13, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %7 = load float, ptr %b.addr, align 4, !tbaa !8
  %cmp10 = fcmp olt float %7, 0.000000e+00
  br i1 %cmp10, label %if.then13, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %8 = load float, ptr %b.addr, align 4, !tbaa !8
  %cmp12 = fcmp ogt float %8, 1.000000e+00
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false, %if.end
  %9 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %error, align 8, !tbaa !17
  %call14 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %10, i64 noundef 4182, i64 noundef 0)
  store i64 %call14, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false11
  %11 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr16 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %11, i32 0, i32 11
  %12 = load ptr, ptr %attr16, align 8, !tbaa !12
  store ptr %12, ptr %attr, align 8, !tbaa !4
  %arraydecay17 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call18 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay17, i8 noundef zeroext 0, i32 noundef 512)
  %13 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %14 = load float, ptr %r.addr, align 4, !tbaa !8
  %15 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call19 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %13, float noundef %14, ptr noundef %15)
  store ptr %call19, ptr %pbuf, align 8, !tbaa !4
  %16 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %16, align 1, !tbaa !28
  %17 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %18 = load float, ptr %g.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call20 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %17, float noundef %18, ptr noundef %19)
  store ptr %call20, ptr %pbuf, align 8, !tbaa !4
  %20 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr21 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr21, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %20, align 1, !tbaa !28
  %21 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %22 = load float, ptr %b.addr, align 4, !tbaa !8
  %23 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call22 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %21, float noundef %22, ptr noundef %23)
  store ptr %call22, ptr %pbuf, align 8, !tbaa !4
  %24 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %25 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call23 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %24, ptr noundef @.str.47, ptr noundef %25)
  %26 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %stream, align 8, !tbaa !18
  %arraydecay24 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call25 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %27, ptr noundef %arraydecay24)
  %cmp26 = icmp ne i64 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end15
  %28 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error28 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %error28, align 8, !tbaa !17
  %call29 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %29)
  store i64 %call29, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end15
  %30 = load float, ptr %r.addr, align 4, !tbaa !8
  %31 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %31, i32 0, i32 5
  %32 = load ptr, ptr %gstate, align 8, !tbaa !22
  %rgb_fill = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %32, i32 0, i32 15
  %r31 = getelementptr inbounds %struct._HPDF_RGBColor, ptr %rgb_fill, i32 0, i32 0
  store float %30, ptr %r31, align 4, !tbaa !87
  %33 = load float, ptr %g.addr, align 4, !tbaa !8
  %34 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate32 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %34, i32 0, i32 5
  %35 = load ptr, ptr %gstate32, align 8, !tbaa !22
  %rgb_fill33 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %35, i32 0, i32 15
  %g34 = getelementptr inbounds %struct._HPDF_RGBColor, ptr %rgb_fill33, i32 0, i32 1
  store float %33, ptr %g34, align 4, !tbaa !88
  %36 = load float, ptr %b.addr, align 4, !tbaa !8
  %37 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate35 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %37, i32 0, i32 5
  %38 = load ptr, ptr %gstate35, align 8, !tbaa !22
  %rgb_fill36 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %38, i32 0, i32 15
  %b37 = getelementptr inbounds %struct._HPDF_RGBColor, ptr %rgb_fill36, i32 0, i32 2
  store float %36, ptr %b37, align 4, !tbaa !89
  %39 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate38 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %39, i32 0, i32 5
  %40 = load ptr, ptr %gstate38, align 8, !tbaa !22
  %cs_fill = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %40, i32 0, i32 13
  store i32 1, ptr %cs_fill, align 4, !tbaa !84
  %41 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %41, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then27, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %42 = load i64, ptr %retval, align 8
  ret i64 %42
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetRGBStroke(ptr noundef %page, float noundef %r, float noundef %g, float noundef %b) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %r.addr = alloca float, align 4
  %g.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %buf = alloca [512 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %r, ptr %r.addr, align 4, !tbaa !8
  store float %g, ptr %g.addr, align 4, !tbaa !8
  store float %b, ptr %b.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load float, ptr %r.addr, align 4, !tbaa !8
  %cmp3 = fcmp olt float %3, 0.000000e+00
  br i1 %cmp3, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load float, ptr %r.addr, align 4, !tbaa !8
  %cmp4 = fcmp ogt float %4, 1.000000e+00
  br i1 %cmp4, label %if.then13, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load float, ptr %g.addr, align 4, !tbaa !8
  %cmp6 = fcmp olt float %5, 0.000000e+00
  br i1 %cmp6, label %if.then13, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %6 = load float, ptr %g.addr, align 4, !tbaa !8
  %cmp8 = fcmp ogt float %6, 1.000000e+00
  br i1 %cmp8, label %if.then13, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %7 = load float, ptr %b.addr, align 4, !tbaa !8
  %cmp10 = fcmp olt float %7, 0.000000e+00
  br i1 %cmp10, label %if.then13, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %8 = load float, ptr %b.addr, align 4, !tbaa !8
  %cmp12 = fcmp ogt float %8, 1.000000e+00
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false, %if.end
  %9 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %error, align 8, !tbaa !17
  %call14 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %10, i64 noundef 4182, i64 noundef 0)
  store i64 %call14, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false11
  %11 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr16 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %11, i32 0, i32 11
  %12 = load ptr, ptr %attr16, align 8, !tbaa !12
  store ptr %12, ptr %attr, align 8, !tbaa !4
  %arraydecay17 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call18 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay17, i8 noundef zeroext 0, i32 noundef 512)
  %13 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %14 = load float, ptr %r.addr, align 4, !tbaa !8
  %15 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call19 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %13, float noundef %14, ptr noundef %15)
  store ptr %call19, ptr %pbuf, align 8, !tbaa !4
  %16 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %16, align 1, !tbaa !28
  %17 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %18 = load float, ptr %g.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call20 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %17, float noundef %18, ptr noundef %19)
  store ptr %call20, ptr %pbuf, align 8, !tbaa !4
  %20 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr21 = getelementptr inbounds i8, ptr %20, i32 1
  store ptr %incdec.ptr21, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %20, align 1, !tbaa !28
  %21 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %22 = load float, ptr %b.addr, align 4, !tbaa !8
  %23 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call22 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %21, float noundef %22, ptr noundef %23)
  store ptr %call22, ptr %pbuf, align 8, !tbaa !4
  %24 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %25 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call23 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %24, ptr noundef @.str.48, ptr noundef %25)
  %26 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %stream, align 8, !tbaa !18
  %arraydecay24 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call25 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %27, ptr noundef %arraydecay24)
  %cmp26 = icmp ne i64 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end15
  %28 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error28 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %error28, align 8, !tbaa !17
  %call29 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %29)
  store i64 %call29, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end15
  %30 = load float, ptr %r.addr, align 4, !tbaa !8
  %31 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %31, i32 0, i32 5
  %32 = load ptr, ptr %gstate, align 8, !tbaa !22
  %rgb_stroke = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %32, i32 0, i32 16
  %r31 = getelementptr inbounds %struct._HPDF_RGBColor, ptr %rgb_stroke, i32 0, i32 0
  store float %30, ptr %r31, align 8, !tbaa !90
  %33 = load float, ptr %g.addr, align 4, !tbaa !8
  %34 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate32 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %34, i32 0, i32 5
  %35 = load ptr, ptr %gstate32, align 8, !tbaa !22
  %rgb_stroke33 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %35, i32 0, i32 16
  %g34 = getelementptr inbounds %struct._HPDF_RGBColor, ptr %rgb_stroke33, i32 0, i32 1
  store float %33, ptr %g34, align 4, !tbaa !91
  %36 = load float, ptr %b.addr, align 4, !tbaa !8
  %37 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate35 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %37, i32 0, i32 5
  %38 = load ptr, ptr %gstate35, align 8, !tbaa !22
  %rgb_stroke36 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %38, i32 0, i32 16
  %b37 = getelementptr inbounds %struct._HPDF_RGBColor, ptr %rgb_stroke36, i32 0, i32 2
  store float %36, ptr %b37, align 8, !tbaa !92
  %39 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate38 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %39, i32 0, i32 5
  %40 = load ptr, ptr %gstate38, align 8, !tbaa !22
  %cs_stroke = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %40, i32 0, i32 14
  store i32 1, ptr %cs_stroke, align 8, !tbaa !86
  %41 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %41, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then27, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %42 = load i64, ptr %retval, align 8
  ret i64 %42
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetCMYKFill(ptr noundef %page, float noundef %c, float noundef %m, float noundef %y, float noundef %k) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %c.addr = alloca float, align 4
  %m.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %k.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %buf = alloca [512 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %c, ptr %c.addr, align 4, !tbaa !8
  store float %m, ptr %m.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  store float %k, ptr %k.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load float, ptr %c.addr, align 4, !tbaa !8
  %cmp3 = fcmp olt float %3, 0.000000e+00
  br i1 %cmp3, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load float, ptr %c.addr, align 4, !tbaa !8
  %cmp4 = fcmp ogt float %4, 1.000000e+00
  br i1 %cmp4, label %if.then17, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load float, ptr %m.addr, align 4, !tbaa !8
  %cmp6 = fcmp olt float %5, 0.000000e+00
  br i1 %cmp6, label %if.then17, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %6 = load float, ptr %m.addr, align 4, !tbaa !8
  %cmp8 = fcmp ogt float %6, 1.000000e+00
  br i1 %cmp8, label %if.then17, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %7 = load float, ptr %y.addr, align 4, !tbaa !8
  %cmp10 = fcmp olt float %7, 0.000000e+00
  br i1 %cmp10, label %if.then17, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %8 = load float, ptr %y.addr, align 4, !tbaa !8
  %cmp12 = fcmp ogt float %8, 1.000000e+00
  br i1 %cmp12, label %if.then17, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %9 = load float, ptr %k.addr, align 4, !tbaa !8
  %cmp14 = fcmp olt float %9, 0.000000e+00
  br i1 %cmp14, label %if.then17, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false13
  %10 = load float, ptr %k.addr, align 4, !tbaa !8
  %cmp16 = fcmp ogt float %10, 1.000000e+00
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %lor.lhs.false15, %lor.lhs.false13, %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false, %if.end
  %11 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %error, align 8, !tbaa !17
  %call18 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %12, i64 noundef 4182, i64 noundef 0)
  store i64 %call18, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false15
  %13 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr20 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %13, i32 0, i32 11
  %14 = load ptr, ptr %attr20, align 8, !tbaa !12
  store ptr %14, ptr %attr, align 8, !tbaa !4
  %arraydecay21 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call22 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay21, i8 noundef zeroext 0, i32 noundef 512)
  %15 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %16 = load float, ptr %c.addr, align 4, !tbaa !8
  %17 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call23 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %15, float noundef %16, ptr noundef %17)
  store ptr %call23, ptr %pbuf, align 8, !tbaa !4
  %18 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %18, align 1, !tbaa !28
  %19 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %20 = load float, ptr %m.addr, align 4, !tbaa !8
  %21 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call24 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %19, float noundef %20, ptr noundef %21)
  store ptr %call24, ptr %pbuf, align 8, !tbaa !4
  %22 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr25 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr25, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %22, align 1, !tbaa !28
  %23 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %24 = load float, ptr %y.addr, align 4, !tbaa !8
  %25 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call26 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %23, float noundef %24, ptr noundef %25)
  store ptr %call26, ptr %pbuf, align 8, !tbaa !4
  %26 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr27 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr27, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %26, align 1, !tbaa !28
  %27 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %28 = load float, ptr %k.addr, align 4, !tbaa !8
  %29 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call28 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %27, float noundef %28, ptr noundef %29)
  store ptr %call28, ptr %pbuf, align 8, !tbaa !4
  %30 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %31 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call29 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %30, ptr noundef @.str.49, ptr noundef %31)
  %32 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %32, i32 0, i32 12
  %33 = load ptr, ptr %stream, align 8, !tbaa !18
  %arraydecay30 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call31 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %33, ptr noundef %arraydecay30)
  %cmp32 = icmp ne i64 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end19
  %34 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error34 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %34, i32 0, i32 2
  %35 = load ptr, ptr %error34, align 8, !tbaa !17
  %call35 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %35)
  store i64 %call35, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end19
  %36 = load float, ptr %c.addr, align 4, !tbaa !8
  %37 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %37, i32 0, i32 5
  %38 = load ptr, ptr %gstate, align 8, !tbaa !22
  %cmyk_fill = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %38, i32 0, i32 17
  %c37 = getelementptr inbounds %struct._HPDF_CMYKColor, ptr %cmyk_fill, i32 0, i32 0
  store float %36, ptr %c37, align 4, !tbaa !93
  %39 = load float, ptr %m.addr, align 4, !tbaa !8
  %40 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate38 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %40, i32 0, i32 5
  %41 = load ptr, ptr %gstate38, align 8, !tbaa !22
  %cmyk_fill39 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %41, i32 0, i32 17
  %m40 = getelementptr inbounds %struct._HPDF_CMYKColor, ptr %cmyk_fill39, i32 0, i32 1
  store float %39, ptr %m40, align 4, !tbaa !94
  %42 = load float, ptr %y.addr, align 4, !tbaa !8
  %43 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate41 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %43, i32 0, i32 5
  %44 = load ptr, ptr %gstate41, align 8, !tbaa !22
  %cmyk_fill42 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %44, i32 0, i32 17
  %y43 = getelementptr inbounds %struct._HPDF_CMYKColor, ptr %cmyk_fill42, i32 0, i32 2
  store float %42, ptr %y43, align 4, !tbaa !95
  %45 = load float, ptr %k.addr, align 4, !tbaa !8
  %46 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate44 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %46, i32 0, i32 5
  %47 = load ptr, ptr %gstate44, align 8, !tbaa !22
  %cmyk_fill45 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %47, i32 0, i32 17
  %k46 = getelementptr inbounds %struct._HPDF_CMYKColor, ptr %cmyk_fill45, i32 0, i32 3
  store float %45, ptr %k46, align 4, !tbaa !96
  %48 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate47 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %48, i32 0, i32 5
  %49 = load ptr, ptr %gstate47, align 8, !tbaa !22
  %cs_fill = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %49, i32 0, i32 13
  store i32 2, ptr %cs_fill, align 4, !tbaa !84
  %50 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %50, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then33, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %51 = load i64, ptr %retval, align 8
  ret i64 %51
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetCMYKStroke(ptr noundef %page, float noundef %c, float noundef %m, float noundef %y, float noundef %k) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %c.addr = alloca float, align 4
  %m.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %k.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %buf = alloca [512 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %c, ptr %c.addr, align 4, !tbaa !8
  store float %m, ptr %m.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  store float %k, ptr %k.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load float, ptr %c.addr, align 4, !tbaa !8
  %cmp3 = fcmp olt float %3, 0.000000e+00
  br i1 %cmp3, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load float, ptr %c.addr, align 4, !tbaa !8
  %cmp4 = fcmp ogt float %4, 1.000000e+00
  br i1 %cmp4, label %if.then17, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load float, ptr %m.addr, align 4, !tbaa !8
  %cmp6 = fcmp olt float %5, 0.000000e+00
  br i1 %cmp6, label %if.then17, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %6 = load float, ptr %m.addr, align 4, !tbaa !8
  %cmp8 = fcmp ogt float %6, 1.000000e+00
  br i1 %cmp8, label %if.then17, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %7 = load float, ptr %y.addr, align 4, !tbaa !8
  %cmp10 = fcmp olt float %7, 0.000000e+00
  br i1 %cmp10, label %if.then17, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %8 = load float, ptr %y.addr, align 4, !tbaa !8
  %cmp12 = fcmp ogt float %8, 1.000000e+00
  br i1 %cmp12, label %if.then17, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %9 = load float, ptr %k.addr, align 4, !tbaa !8
  %cmp14 = fcmp olt float %9, 0.000000e+00
  br i1 %cmp14, label %if.then17, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false13
  %10 = load float, ptr %k.addr, align 4, !tbaa !8
  %cmp16 = fcmp ogt float %10, 1.000000e+00
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %lor.lhs.false15, %lor.lhs.false13, %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false, %if.end
  %11 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %error, align 8, !tbaa !17
  %call18 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %12, i64 noundef 4182, i64 noundef 0)
  store i64 %call18, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false15
  %13 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr20 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %13, i32 0, i32 11
  %14 = load ptr, ptr %attr20, align 8, !tbaa !12
  store ptr %14, ptr %attr, align 8, !tbaa !4
  %arraydecay21 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call22 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay21, i8 noundef zeroext 0, i32 noundef 512)
  %15 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %16 = load float, ptr %c.addr, align 4, !tbaa !8
  %17 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call23 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %15, float noundef %16, ptr noundef %17)
  store ptr %call23, ptr %pbuf, align 8, !tbaa !4
  %18 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %18, align 1, !tbaa !28
  %19 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %20 = load float, ptr %m.addr, align 4, !tbaa !8
  %21 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call24 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %19, float noundef %20, ptr noundef %21)
  store ptr %call24, ptr %pbuf, align 8, !tbaa !4
  %22 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr25 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr25, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %22, align 1, !tbaa !28
  %23 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %24 = load float, ptr %y.addr, align 4, !tbaa !8
  %25 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call26 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %23, float noundef %24, ptr noundef %25)
  store ptr %call26, ptr %pbuf, align 8, !tbaa !4
  %26 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr27 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr27, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %26, align 1, !tbaa !28
  %27 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %28 = load float, ptr %k.addr, align 4, !tbaa !8
  %29 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call28 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %27, float noundef %28, ptr noundef %29)
  store ptr %call28, ptr %pbuf, align 8, !tbaa !4
  %30 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %31 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call29 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %30, ptr noundef @.str.50, ptr noundef %31)
  %32 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %32, i32 0, i32 12
  %33 = load ptr, ptr %stream, align 8, !tbaa !18
  %arraydecay30 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call31 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %33, ptr noundef %arraydecay30)
  %cmp32 = icmp ne i64 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end19
  %34 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error34 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %34, i32 0, i32 2
  %35 = load ptr, ptr %error34, align 8, !tbaa !17
  %call35 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %35)
  store i64 %call35, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end19
  %36 = load float, ptr %c.addr, align 4, !tbaa !8
  %37 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %37, i32 0, i32 5
  %38 = load ptr, ptr %gstate, align 8, !tbaa !22
  %cmyk_stroke = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %38, i32 0, i32 18
  %c37 = getelementptr inbounds %struct._HPDF_CMYKColor, ptr %cmyk_stroke, i32 0, i32 0
  store float %36, ptr %c37, align 4, !tbaa !97
  %39 = load float, ptr %m.addr, align 4, !tbaa !8
  %40 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate38 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %40, i32 0, i32 5
  %41 = load ptr, ptr %gstate38, align 8, !tbaa !22
  %cmyk_stroke39 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %41, i32 0, i32 18
  %m40 = getelementptr inbounds %struct._HPDF_CMYKColor, ptr %cmyk_stroke39, i32 0, i32 1
  store float %39, ptr %m40, align 4, !tbaa !98
  %42 = load float, ptr %y.addr, align 4, !tbaa !8
  %43 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate41 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %43, i32 0, i32 5
  %44 = load ptr, ptr %gstate41, align 8, !tbaa !22
  %cmyk_stroke42 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %44, i32 0, i32 18
  %y43 = getelementptr inbounds %struct._HPDF_CMYKColor, ptr %cmyk_stroke42, i32 0, i32 2
  store float %42, ptr %y43, align 4, !tbaa !99
  %45 = load float, ptr %k.addr, align 4, !tbaa !8
  %46 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate44 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %46, i32 0, i32 5
  %47 = load ptr, ptr %gstate44, align 8, !tbaa !22
  %cmyk_stroke45 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %47, i32 0, i32 18
  %k46 = getelementptr inbounds %struct._HPDF_CMYKColor, ptr %cmyk_stroke45, i32 0, i32 3
  store float %45, ptr %k46, align 4, !tbaa !100
  %48 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate47 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %48, i32 0, i32 5
  %49 = load ptr, ptr %gstate47, align 8, !tbaa !22
  %cs_stroke = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %49, i32 0, i32 14
  store i32 2, ptr %cs_stroke, align 8, !tbaa !86
  %50 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %50, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then33, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %51 = load i64, ptr %retval, align 8
  ret i64 %51
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_ExecuteXObject(ptr noundef %page, ptr noundef %obj) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %local_name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 1)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_name) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %lor.lhs.false, label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %header = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %4, i32 0, i32 0
  %obj_class = getelementptr inbounds %struct._HPDF_Obj_Header, ptr %header, i32 0, i32 2
  %5 = load i16, ptr %obj_class, align 2, !tbaa !41
  %conv = zext i16 %5 to i32
  %cmp1 = icmp ne i32 %conv, 1297
  br i1 %cmp1, label %if.then3, label %if.end5

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %6 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %error, align 8, !tbaa !17
  %call4 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %7, i64 noundef 4147, i64 noundef 0)
  store i64 %call4, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %8 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %mmgr, align 8, !tbaa !40
  %10 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %mmgr6 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %mmgr6, align 8, !tbaa !40
  %cmp7 = icmp ne ptr %9, %11
  br i1 %cmp7, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  %12 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error10 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %error10, align 8, !tbaa !17
  %call11 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %13, i64 noundef 4181, i64 noundef 0)
  store i64 %call11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %14 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr13 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %14, i32 0, i32 11
  %15 = load ptr, ptr %attr13, align 8, !tbaa !12
  store ptr %15, ptr %attr, align 8, !tbaa !4
  %16 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call14 = call ptr @vtklibharu_HPDF_Page_GetXObjectName(ptr noundef %16, ptr noundef %17)
  store ptr %call14, ptr %local_name, align 8, !tbaa !4
  %18 = load ptr, ptr %local_name, align 8, !tbaa !4
  %tobool15 = icmp ne ptr %18, null
  br i1 %tobool15, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end12
  %19 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error17 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %error17, align 8, !tbaa !17
  %call18 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %20, i64 noundef 4181, i64 noundef 0)
  store i64 %call18, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %21 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %21, i32 0, i32 12
  %22 = load ptr, ptr %stream, align 8, !tbaa !18
  %23 = load ptr, ptr %local_name, align 8, !tbaa !4
  %call20 = call i64 @vtklibharu_HPDF_Stream_WriteEscapeName(ptr noundef %22, ptr noundef %23)
  %cmp21 = icmp ne i64 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end19
  %24 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error24 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %error24, align 8, !tbaa !17
  %call25 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %25)
  store i64 %call25, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %26 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream27 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %stream27, align 8, !tbaa !18
  %call28 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %27, ptr noundef @.str.51)
  %cmp29 = icmp ne i64 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end26
  %28 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error32 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %error32, align 8, !tbaa !17
  %call33 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %29)
  store i64 %call33, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %30 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %30, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then31, %if.then23, %if.then16, %if.then9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_name) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %31 = load i64, ptr %retval, align 8
  ret i64 %31
}

declare ptr @vtklibharu_HPDF_Page_GetXObjectName(ptr noundef, ptr noundef) #2

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_Circle(ptr noundef %page, float noundef %x, float noundef %y, float noundef %ray) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %ray.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %buf = alloca [1024 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  store float %ray, ptr %ray.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 3)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 1024, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr3 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr3, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %arraydecay4 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  %call5 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay4, i8 noundef zeroext 0, i32 noundef 512)
  %5 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %6 = load float, ptr %x.addr, align 4, !tbaa !8
  %7 = load float, ptr %ray.addr, align 4, !tbaa !8
  %sub = fsub float %6, %7
  %8 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call6 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %5, float noundef %sub, ptr noundef %8)
  store ptr %call6, ptr %pbuf, align 8, !tbaa !4
  %9 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %9, align 1, !tbaa !28
  %10 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %11 = load float, ptr %y.addr, align 4, !tbaa !8
  %12 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call7 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %10, float noundef %11, ptr noundef %12)
  store ptr %call7, ptr %pbuf, align 8, !tbaa !4
  %13 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %14 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call8 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %13, ptr noundef @.str.11, ptr noundef %14)
  store ptr %call8, ptr %pbuf, align 8, !tbaa !4
  %15 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %16 = load ptr, ptr %eptr, align 8, !tbaa !4
  %17 = load float, ptr %x.addr, align 4, !tbaa !8
  %18 = load float, ptr %y.addr, align 4, !tbaa !8
  %19 = load float, ptr %ray.addr, align 4, !tbaa !8
  %call9 = call ptr @QuarterCircleA(ptr noundef %15, ptr noundef %16, float noundef %17, float noundef %18, float noundef %19)
  store ptr %call9, ptr %pbuf, align 8, !tbaa !4
  %20 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %21 = load ptr, ptr %eptr, align 8, !tbaa !4
  %22 = load float, ptr %x.addr, align 4, !tbaa !8
  %23 = load float, ptr %y.addr, align 4, !tbaa !8
  %24 = load float, ptr %ray.addr, align 4, !tbaa !8
  %call10 = call ptr @QuarterCircleB(ptr noundef %20, ptr noundef %21, float noundef %22, float noundef %23, float noundef %24)
  store ptr %call10, ptr %pbuf, align 8, !tbaa !4
  %25 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %26 = load ptr, ptr %eptr, align 8, !tbaa !4
  %27 = load float, ptr %x.addr, align 4, !tbaa !8
  %28 = load float, ptr %y.addr, align 4, !tbaa !8
  %29 = load float, ptr %ray.addr, align 4, !tbaa !8
  %call11 = call ptr @QuarterCircleC(ptr noundef %25, ptr noundef %26, float noundef %27, float noundef %28, float noundef %29)
  store ptr %call11, ptr %pbuf, align 8, !tbaa !4
  %30 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %31 = load ptr, ptr %eptr, align 8, !tbaa !4
  %32 = load float, ptr %x.addr, align 4, !tbaa !8
  %33 = load float, ptr %y.addr, align 4, !tbaa !8
  %34 = load float, ptr %ray.addr, align 4, !tbaa !8
  %call12 = call ptr @QuarterCircleD(ptr noundef %30, ptr noundef %31, float noundef %32, float noundef %33, float noundef %34)
  %35 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %35, i32 0, i32 12
  %36 = load ptr, ptr %stream, align 8, !tbaa !18
  %arraydecay13 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  %call14 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %36, ptr noundef %arraydecay13)
  %cmp15 = icmp ne i64 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end
  %37 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %error, align 8, !tbaa !17
  %call17 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %38)
  store i64 %call17, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %39 = load float, ptr %x.addr, align 4, !tbaa !8
  %40 = load float, ptr %ray.addr, align 4, !tbaa !8
  %sub19 = fsub float %39, %40
  %41 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %41, i32 0, i32 7
  %x20 = getelementptr inbounds %struct._HPDF_Point, ptr %cur_pos, i32 0, i32 0
  store float %sub19, ptr %x20, align 8, !tbaa !56
  %42 = load float, ptr %y.addr, align 4, !tbaa !8
  %43 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos21 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %43, i32 0, i32 7
  %y22 = getelementptr inbounds %struct._HPDF_Point, ptr %cur_pos21, i32 0, i32 1
  store float %42, ptr %y22, align 4, !tbaa !57
  %44 = load ptr, ptr %attr, align 8, !tbaa !4
  %str_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %44, i32 0, i32 6
  %45 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos23 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %45, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %str_pos, ptr align 8 %cur_pos23, i64 8, i1 false), !tbaa.struct !58
  %46 = load ptr, ptr %attr, align 8, !tbaa !4
  %gmode = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %46, i32 0, i32 10
  store i16 2, ptr %gmode, align 8, !tbaa !59
  %47 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %47, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 1024, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %48 = load i64, ptr %retval, align 8
  ret i64 %48
}

; Function Attrs: uwtable
define internal ptr @QuarterCircleA(ptr noundef %pbuf, ptr noundef %eptr, float noundef %x, float noundef %y, float noundef %ray) #0 {
entry:
  %pbuf.addr = alloca ptr, align 8
  %eptr.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %ray.addr = alloca float, align 4
  store ptr %pbuf, ptr %pbuf.addr, align 8, !tbaa !4
  store ptr %eptr, ptr %eptr.addr, align 8, !tbaa !4
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  store float %ray, ptr %ray.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %1 = load float, ptr %x.addr, align 4, !tbaa !8
  %2 = load float, ptr %ray.addr, align 4, !tbaa !8
  %sub = fsub float %1, %2
  %3 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call = call ptr @vtklibharu_HPDF_FToA(ptr noundef %0, float noundef %sub, ptr noundef %3)
  store ptr %call, ptr %pbuf.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %4, align 1, !tbaa !28
  %5 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %6 = load float, ptr %y.addr, align 4, !tbaa !8
  %7 = load float, ptr %ray.addr, align 4, !tbaa !8
  %8 = call float @llvm.fmuladd.f32(float %7, float 0x3FE1A9FBE0000000, float %6)
  %9 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call1 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %5, float noundef %8, ptr noundef %9)
  store ptr %call1, ptr %pbuf.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr2, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %10, align 1, !tbaa !28
  %11 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %12 = load float, ptr %x.addr, align 4, !tbaa !8
  %13 = load float, ptr %ray.addr, align 4, !tbaa !8
  %neg = fneg float %13
  %14 = call float @llvm.fmuladd.f32(float %neg, float 0x3FE1A9FBE0000000, float %12)
  %15 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call3 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %11, float noundef %14, ptr noundef %15)
  store ptr %call3, ptr %pbuf.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr4 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr4, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %16, align 1, !tbaa !28
  %17 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %18 = load float, ptr %y.addr, align 4, !tbaa !8
  %19 = load float, ptr %ray.addr, align 4, !tbaa !8
  %add = fadd float %18, %19
  %20 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call5 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %17, float noundef %add, ptr noundef %20)
  store ptr %call5, ptr %pbuf.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr6 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr6, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %21, align 1, !tbaa !28
  %22 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %23 = load float, ptr %x.addr, align 4, !tbaa !8
  %24 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call7 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %22, float noundef %23, ptr noundef %24)
  store ptr %call7, ptr %pbuf.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr8 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr8, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %25, align 1, !tbaa !28
  %26 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %27 = load float, ptr %y.addr, align 4, !tbaa !8
  %28 = load float, ptr %ray.addr, align 4, !tbaa !8
  %add9 = fadd float %27, %28
  %29 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call10 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %26, float noundef %add9, ptr noundef %29)
  store ptr %call10, ptr %pbuf.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call11 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %30, ptr noundef @.str.13, ptr noundef %31)
  ret ptr %call11
}

; Function Attrs: uwtable
define internal ptr @QuarterCircleB(ptr noundef %pbuf, ptr noundef %eptr, float noundef %x, float noundef %y, float noundef %ray) #0 {
entry:
  %pbuf.addr = alloca ptr, align 8
  %eptr.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %ray.addr = alloca float, align 4
  store ptr %pbuf, ptr %pbuf.addr, align 8, !tbaa !4
  store ptr %eptr, ptr %eptr.addr, align 8, !tbaa !4
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  store float %ray, ptr %ray.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %1 = load float, ptr %x.addr, align 4, !tbaa !8
  %2 = load float, ptr %ray.addr, align 4, !tbaa !8
  %3 = call float @llvm.fmuladd.f32(float %2, float 0x3FE1A9FBE0000000, float %1)
  %4 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call = call ptr @vtklibharu_HPDF_FToA(ptr noundef %0, float noundef %3, ptr noundef %4)
  store ptr %call, ptr %pbuf.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %5, align 1, !tbaa !28
  %6 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %7 = load float, ptr %y.addr, align 4, !tbaa !8
  %8 = load float, ptr %ray.addr, align 4, !tbaa !8
  %add = fadd float %7, %8
  %9 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call1 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %6, float noundef %add, ptr noundef %9)
  store ptr %call1, ptr %pbuf.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr2, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %10, align 1, !tbaa !28
  %11 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %12 = load float, ptr %x.addr, align 4, !tbaa !8
  %13 = load float, ptr %ray.addr, align 4, !tbaa !8
  %add3 = fadd float %12, %13
  %14 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call4 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %11, float noundef %add3, ptr noundef %14)
  store ptr %call4, ptr %pbuf.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr5 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr5, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %15, align 1, !tbaa !28
  %16 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %17 = load float, ptr %y.addr, align 4, !tbaa !8
  %18 = load float, ptr %ray.addr, align 4, !tbaa !8
  %19 = call float @llvm.fmuladd.f32(float %18, float 0x3FE1A9FBE0000000, float %17)
  %20 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call6 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %16, float noundef %19, ptr noundef %20)
  store ptr %call6, ptr %pbuf.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr7 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr7, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %21, align 1, !tbaa !28
  %22 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %23 = load float, ptr %x.addr, align 4, !tbaa !8
  %24 = load float, ptr %ray.addr, align 4, !tbaa !8
  %add8 = fadd float %23, %24
  %25 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call9 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %22, float noundef %add8, ptr noundef %25)
  store ptr %call9, ptr %pbuf.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr10 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr10, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %26, align 1, !tbaa !28
  %27 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %28 = load float, ptr %y.addr, align 4, !tbaa !8
  %29 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call11 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %27, float noundef %28, ptr noundef %29)
  store ptr %call11, ptr %pbuf.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call12 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %30, ptr noundef @.str.13, ptr noundef %31)
  ret ptr %call12
}

; Function Attrs: uwtable
define internal ptr @QuarterCircleC(ptr noundef %pbuf, ptr noundef %eptr, float noundef %x, float noundef %y, float noundef %ray) #0 {
entry:
  %pbuf.addr = alloca ptr, align 8
  %eptr.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %ray.addr = alloca float, align 4
  store ptr %pbuf, ptr %pbuf.addr, align 8, !tbaa !4
  store ptr %eptr, ptr %eptr.addr, align 8, !tbaa !4
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  store float %ray, ptr %ray.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %1 = load float, ptr %x.addr, align 4, !tbaa !8
  %2 = load float, ptr %ray.addr, align 4, !tbaa !8
  %add = fadd float %1, %2
  %3 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call = call ptr @vtklibharu_HPDF_FToA(ptr noundef %0, float noundef %add, ptr noundef %3)
  store ptr %call, ptr %pbuf.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %4, align 1, !tbaa !28
  %5 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %6 = load float, ptr %y.addr, align 4, !tbaa !8
  %7 = load float, ptr %ray.addr, align 4, !tbaa !8
  %neg = fneg float %7
  %8 = call float @llvm.fmuladd.f32(float %neg, float 0x3FE1A9FBE0000000, float %6)
  %9 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call1 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %5, float noundef %8, ptr noundef %9)
  store ptr %call1, ptr %pbuf.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr2, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %10, align 1, !tbaa !28
  %11 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %12 = load float, ptr %x.addr, align 4, !tbaa !8
  %13 = load float, ptr %ray.addr, align 4, !tbaa !8
  %14 = call float @llvm.fmuladd.f32(float %13, float 0x3FE1A9FBE0000000, float %12)
  %15 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call3 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %11, float noundef %14, ptr noundef %15)
  store ptr %call3, ptr %pbuf.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr4 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr4, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %16, align 1, !tbaa !28
  %17 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %18 = load float, ptr %y.addr, align 4, !tbaa !8
  %19 = load float, ptr %ray.addr, align 4, !tbaa !8
  %sub = fsub float %18, %19
  %20 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call5 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %17, float noundef %sub, ptr noundef %20)
  store ptr %call5, ptr %pbuf.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr6 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr6, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %21, align 1, !tbaa !28
  %22 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %23 = load float, ptr %x.addr, align 4, !tbaa !8
  %24 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call7 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %22, float noundef %23, ptr noundef %24)
  store ptr %call7, ptr %pbuf.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr8 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr8, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %25, align 1, !tbaa !28
  %26 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %27 = load float, ptr %y.addr, align 4, !tbaa !8
  %28 = load float, ptr %ray.addr, align 4, !tbaa !8
  %sub9 = fsub float %27, %28
  %29 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call10 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %26, float noundef %sub9, ptr noundef %29)
  store ptr %call10, ptr %pbuf.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call11 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %30, ptr noundef @.str.13, ptr noundef %31)
  ret ptr %call11
}

; Function Attrs: uwtable
define internal ptr @QuarterCircleD(ptr noundef %pbuf, ptr noundef %eptr, float noundef %x, float noundef %y, float noundef %ray) #0 {
entry:
  %pbuf.addr = alloca ptr, align 8
  %eptr.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %ray.addr = alloca float, align 4
  store ptr %pbuf, ptr %pbuf.addr, align 8, !tbaa !4
  store ptr %eptr, ptr %eptr.addr, align 8, !tbaa !4
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  store float %ray, ptr %ray.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %1 = load float, ptr %x.addr, align 4, !tbaa !8
  %2 = load float, ptr %ray.addr, align 4, !tbaa !8
  %neg = fneg float %2
  %3 = call float @llvm.fmuladd.f32(float %neg, float 0x3FE1A9FBE0000000, float %1)
  %4 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call = call ptr @vtklibharu_HPDF_FToA(ptr noundef %0, float noundef %3, ptr noundef %4)
  store ptr %call, ptr %pbuf.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %5, align 1, !tbaa !28
  %6 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %7 = load float, ptr %y.addr, align 4, !tbaa !8
  %8 = load float, ptr %ray.addr, align 4, !tbaa !8
  %sub = fsub float %7, %8
  %9 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call1 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %6, float noundef %sub, ptr noundef %9)
  store ptr %call1, ptr %pbuf.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr2, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %10, align 1, !tbaa !28
  %11 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %12 = load float, ptr %x.addr, align 4, !tbaa !8
  %13 = load float, ptr %ray.addr, align 4, !tbaa !8
  %sub3 = fsub float %12, %13
  %14 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call4 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %11, float noundef %sub3, ptr noundef %14)
  store ptr %call4, ptr %pbuf.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr5 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr5, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %15, align 1, !tbaa !28
  %16 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %17 = load float, ptr %y.addr, align 4, !tbaa !8
  %18 = load float, ptr %ray.addr, align 4, !tbaa !8
  %neg6 = fneg float %18
  %19 = call float @llvm.fmuladd.f32(float %neg6, float 0x3FE1A9FBE0000000, float %17)
  %20 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call7 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %16, float noundef %19, ptr noundef %20)
  store ptr %call7, ptr %pbuf.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr8 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr8, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %21, align 1, !tbaa !28
  %22 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %23 = load float, ptr %x.addr, align 4, !tbaa !8
  %24 = load float, ptr %ray.addr, align 4, !tbaa !8
  %sub9 = fsub float %23, %24
  %25 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call10 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %22, float noundef %sub9, ptr noundef %25)
  store ptr %call10, ptr %pbuf.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr11 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr11, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %26, align 1, !tbaa !28
  %27 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %28 = load float, ptr %y.addr, align 4, !tbaa !8
  %29 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call12 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %27, float noundef %28, ptr noundef %29)
  store ptr %call12, ptr %pbuf.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call13 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %30, ptr noundef @.str.13, ptr noundef %31)
  ret ptr %call13
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_Ellipse(ptr noundef %page, float noundef %x, float noundef %y, float noundef %xray, float noundef %yray) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %xray.addr = alloca float, align 4
  %yray.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %buf = alloca [512 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  store float %xray, ptr %xray.addr, align 4, !tbaa !8
  store float %yray, ptr %yray.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 3)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr3 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr3, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %arraydecay4 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call5 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay4, i8 noundef zeroext 0, i32 noundef 512)
  %5 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %6 = load float, ptr %x.addr, align 4, !tbaa !8
  %7 = load float, ptr %xray.addr, align 4, !tbaa !8
  %sub = fsub float %6, %7
  %8 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call6 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %5, float noundef %sub, ptr noundef %8)
  store ptr %call6, ptr %pbuf, align 8, !tbaa !4
  %9 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %9, align 1, !tbaa !28
  %10 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %11 = load float, ptr %y.addr, align 4, !tbaa !8
  %12 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call7 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %10, float noundef %11, ptr noundef %12)
  store ptr %call7, ptr %pbuf, align 8, !tbaa !4
  %13 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %14 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call8 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %13, ptr noundef @.str.11, ptr noundef %14)
  store ptr %call8, ptr %pbuf, align 8, !tbaa !4
  %15 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %16 = load ptr, ptr %eptr, align 8, !tbaa !4
  %17 = load float, ptr %x.addr, align 4, !tbaa !8
  %18 = load float, ptr %y.addr, align 4, !tbaa !8
  %19 = load float, ptr %xray.addr, align 4, !tbaa !8
  %20 = load float, ptr %yray.addr, align 4, !tbaa !8
  %call9 = call ptr @QuarterEllipseA(ptr noundef %15, ptr noundef %16, float noundef %17, float noundef %18, float noundef %19, float noundef %20)
  store ptr %call9, ptr %pbuf, align 8, !tbaa !4
  %21 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %22 = load ptr, ptr %eptr, align 8, !tbaa !4
  %23 = load float, ptr %x.addr, align 4, !tbaa !8
  %24 = load float, ptr %y.addr, align 4, !tbaa !8
  %25 = load float, ptr %xray.addr, align 4, !tbaa !8
  %26 = load float, ptr %yray.addr, align 4, !tbaa !8
  %call10 = call ptr @QuarterEllipseB(ptr noundef %21, ptr noundef %22, float noundef %23, float noundef %24, float noundef %25, float noundef %26)
  store ptr %call10, ptr %pbuf, align 8, !tbaa !4
  %27 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %28 = load ptr, ptr %eptr, align 8, !tbaa !4
  %29 = load float, ptr %x.addr, align 4, !tbaa !8
  %30 = load float, ptr %y.addr, align 4, !tbaa !8
  %31 = load float, ptr %xray.addr, align 4, !tbaa !8
  %32 = load float, ptr %yray.addr, align 4, !tbaa !8
  %call11 = call ptr @QuarterEllipseC(ptr noundef %27, ptr noundef %28, float noundef %29, float noundef %30, float noundef %31, float noundef %32)
  store ptr %call11, ptr %pbuf, align 8, !tbaa !4
  %33 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %34 = load ptr, ptr %eptr, align 8, !tbaa !4
  %35 = load float, ptr %x.addr, align 4, !tbaa !8
  %36 = load float, ptr %y.addr, align 4, !tbaa !8
  %37 = load float, ptr %xray.addr, align 4, !tbaa !8
  %38 = load float, ptr %yray.addr, align 4, !tbaa !8
  %call12 = call ptr @QuarterEllipseD(ptr noundef %33, ptr noundef %34, float noundef %35, float noundef %36, float noundef %37, float noundef %38)
  %39 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %39, i32 0, i32 12
  %40 = load ptr, ptr %stream, align 8, !tbaa !18
  %arraydecay13 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call14 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %40, ptr noundef %arraydecay13)
  %cmp15 = icmp ne i64 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end
  %41 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %error, align 8, !tbaa !17
  %call17 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %42)
  store i64 %call17, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %43 = load float, ptr %x.addr, align 4, !tbaa !8
  %44 = load float, ptr %xray.addr, align 4, !tbaa !8
  %sub19 = fsub float %43, %44
  %45 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %45, i32 0, i32 7
  %x20 = getelementptr inbounds %struct._HPDF_Point, ptr %cur_pos, i32 0, i32 0
  store float %sub19, ptr %x20, align 8, !tbaa !56
  %46 = load float, ptr %y.addr, align 4, !tbaa !8
  %47 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos21 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %47, i32 0, i32 7
  %y22 = getelementptr inbounds %struct._HPDF_Point, ptr %cur_pos21, i32 0, i32 1
  store float %46, ptr %y22, align 4, !tbaa !57
  %48 = load ptr, ptr %attr, align 8, !tbaa !4
  %str_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %48, i32 0, i32 6
  %49 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos23 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %49, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %str_pos, ptr align 8 %cur_pos23, i64 8, i1 false), !tbaa.struct !58
  %50 = load ptr, ptr %attr, align 8, !tbaa !4
  %gmode = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %50, i32 0, i32 10
  store i16 2, ptr %gmode, align 8, !tbaa !59
  %51 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %51, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %52 = load i64, ptr %retval, align 8
  ret i64 %52
}

; Function Attrs: uwtable
define internal ptr @QuarterEllipseA(ptr noundef %pbuf, ptr noundef %eptr, float noundef %x, float noundef %y, float noundef %xray, float noundef %yray) #0 {
entry:
  %pbuf.addr = alloca ptr, align 8
  %eptr.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %xray.addr = alloca float, align 4
  %yray.addr = alloca float, align 4
  store ptr %pbuf, ptr %pbuf.addr, align 8, !tbaa !4
  store ptr %eptr, ptr %eptr.addr, align 8, !tbaa !4
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  store float %xray, ptr %xray.addr, align 4, !tbaa !8
  store float %yray, ptr %yray.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %1 = load float, ptr %x.addr, align 4, !tbaa !8
  %2 = load float, ptr %xray.addr, align 4, !tbaa !8
  %sub = fsub float %1, %2
  %3 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call = call ptr @vtklibharu_HPDF_FToA(ptr noundef %0, float noundef %sub, ptr noundef %3)
  store ptr %call, ptr %pbuf.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %4, align 1, !tbaa !28
  %5 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %6 = load float, ptr %y.addr, align 4, !tbaa !8
  %7 = load float, ptr %yray.addr, align 4, !tbaa !8
  %8 = call float @llvm.fmuladd.f32(float %7, float 0x3FE1A9FBE0000000, float %6)
  %9 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call1 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %5, float noundef %8, ptr noundef %9)
  store ptr %call1, ptr %pbuf.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr2, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %10, align 1, !tbaa !28
  %11 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %12 = load float, ptr %x.addr, align 4, !tbaa !8
  %13 = load float, ptr %xray.addr, align 4, !tbaa !8
  %neg = fneg float %13
  %14 = call float @llvm.fmuladd.f32(float %neg, float 0x3FE1A9FBE0000000, float %12)
  %15 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call3 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %11, float noundef %14, ptr noundef %15)
  store ptr %call3, ptr %pbuf.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr4 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr4, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %16, align 1, !tbaa !28
  %17 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %18 = load float, ptr %y.addr, align 4, !tbaa !8
  %19 = load float, ptr %yray.addr, align 4, !tbaa !8
  %add = fadd float %18, %19
  %20 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call5 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %17, float noundef %add, ptr noundef %20)
  store ptr %call5, ptr %pbuf.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr6 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr6, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %21, align 1, !tbaa !28
  %22 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %23 = load float, ptr %x.addr, align 4, !tbaa !8
  %24 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call7 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %22, float noundef %23, ptr noundef %24)
  store ptr %call7, ptr %pbuf.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr8 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr8, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %25, align 1, !tbaa !28
  %26 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %27 = load float, ptr %y.addr, align 4, !tbaa !8
  %28 = load float, ptr %yray.addr, align 4, !tbaa !8
  %add9 = fadd float %27, %28
  %29 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call10 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %26, float noundef %add9, ptr noundef %29)
  store ptr %call10, ptr %pbuf.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call11 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %30, ptr noundef @.str.13, ptr noundef %31)
  ret ptr %call11
}

; Function Attrs: uwtable
define internal ptr @QuarterEllipseB(ptr noundef %pbuf, ptr noundef %eptr, float noundef %x, float noundef %y, float noundef %xray, float noundef %yray) #0 {
entry:
  %pbuf.addr = alloca ptr, align 8
  %eptr.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %xray.addr = alloca float, align 4
  %yray.addr = alloca float, align 4
  store ptr %pbuf, ptr %pbuf.addr, align 8, !tbaa !4
  store ptr %eptr, ptr %eptr.addr, align 8, !tbaa !4
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  store float %xray, ptr %xray.addr, align 4, !tbaa !8
  store float %yray, ptr %yray.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %1 = load float, ptr %x.addr, align 4, !tbaa !8
  %2 = load float, ptr %xray.addr, align 4, !tbaa !8
  %3 = call float @llvm.fmuladd.f32(float %2, float 0x3FE1A9FBE0000000, float %1)
  %4 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call = call ptr @vtklibharu_HPDF_FToA(ptr noundef %0, float noundef %3, ptr noundef %4)
  store ptr %call, ptr %pbuf.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %5, align 1, !tbaa !28
  %6 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %7 = load float, ptr %y.addr, align 4, !tbaa !8
  %8 = load float, ptr %yray.addr, align 4, !tbaa !8
  %add = fadd float %7, %8
  %9 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call1 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %6, float noundef %add, ptr noundef %9)
  store ptr %call1, ptr %pbuf.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr2, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %10, align 1, !tbaa !28
  %11 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %12 = load float, ptr %x.addr, align 4, !tbaa !8
  %13 = load float, ptr %xray.addr, align 4, !tbaa !8
  %add3 = fadd float %12, %13
  %14 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call4 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %11, float noundef %add3, ptr noundef %14)
  store ptr %call4, ptr %pbuf.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr5 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr5, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %15, align 1, !tbaa !28
  %16 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %17 = load float, ptr %y.addr, align 4, !tbaa !8
  %18 = load float, ptr %yray.addr, align 4, !tbaa !8
  %19 = call float @llvm.fmuladd.f32(float %18, float 0x3FE1A9FBE0000000, float %17)
  %20 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call6 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %16, float noundef %19, ptr noundef %20)
  store ptr %call6, ptr %pbuf.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr7 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr7, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %21, align 1, !tbaa !28
  %22 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %23 = load float, ptr %x.addr, align 4, !tbaa !8
  %24 = load float, ptr %xray.addr, align 4, !tbaa !8
  %add8 = fadd float %23, %24
  %25 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call9 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %22, float noundef %add8, ptr noundef %25)
  store ptr %call9, ptr %pbuf.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr10 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr10, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %26, align 1, !tbaa !28
  %27 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %28 = load float, ptr %y.addr, align 4, !tbaa !8
  %29 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call11 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %27, float noundef %28, ptr noundef %29)
  store ptr %call11, ptr %pbuf.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call12 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %30, ptr noundef @.str.13, ptr noundef %31)
  ret ptr %call12
}

; Function Attrs: uwtable
define internal ptr @QuarterEllipseC(ptr noundef %pbuf, ptr noundef %eptr, float noundef %x, float noundef %y, float noundef %xray, float noundef %yray) #0 {
entry:
  %pbuf.addr = alloca ptr, align 8
  %eptr.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %xray.addr = alloca float, align 4
  %yray.addr = alloca float, align 4
  store ptr %pbuf, ptr %pbuf.addr, align 8, !tbaa !4
  store ptr %eptr, ptr %eptr.addr, align 8, !tbaa !4
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  store float %xray, ptr %xray.addr, align 4, !tbaa !8
  store float %yray, ptr %yray.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %1 = load float, ptr %x.addr, align 4, !tbaa !8
  %2 = load float, ptr %xray.addr, align 4, !tbaa !8
  %add = fadd float %1, %2
  %3 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call = call ptr @vtklibharu_HPDF_FToA(ptr noundef %0, float noundef %add, ptr noundef %3)
  store ptr %call, ptr %pbuf.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %4, align 1, !tbaa !28
  %5 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %6 = load float, ptr %y.addr, align 4, !tbaa !8
  %7 = load float, ptr %yray.addr, align 4, !tbaa !8
  %neg = fneg float %7
  %8 = call float @llvm.fmuladd.f32(float %neg, float 0x3FE1A9FBE0000000, float %6)
  %9 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call1 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %5, float noundef %8, ptr noundef %9)
  store ptr %call1, ptr %pbuf.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr2, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %10, align 1, !tbaa !28
  %11 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %12 = load float, ptr %x.addr, align 4, !tbaa !8
  %13 = load float, ptr %xray.addr, align 4, !tbaa !8
  %14 = call float @llvm.fmuladd.f32(float %13, float 0x3FE1A9FBE0000000, float %12)
  %15 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call3 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %11, float noundef %14, ptr noundef %15)
  store ptr %call3, ptr %pbuf.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr4 = getelementptr inbounds i8, ptr %16, i32 1
  store ptr %incdec.ptr4, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %16, align 1, !tbaa !28
  %17 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %18 = load float, ptr %y.addr, align 4, !tbaa !8
  %19 = load float, ptr %yray.addr, align 4, !tbaa !8
  %sub = fsub float %18, %19
  %20 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call5 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %17, float noundef %sub, ptr noundef %20)
  store ptr %call5, ptr %pbuf.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr6 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr6, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %21, align 1, !tbaa !28
  %22 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %23 = load float, ptr %x.addr, align 4, !tbaa !8
  %24 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call7 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %22, float noundef %23, ptr noundef %24)
  store ptr %call7, ptr %pbuf.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr8 = getelementptr inbounds i8, ptr %25, i32 1
  store ptr %incdec.ptr8, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %25, align 1, !tbaa !28
  %26 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %27 = load float, ptr %y.addr, align 4, !tbaa !8
  %28 = load float, ptr %yray.addr, align 4, !tbaa !8
  %sub9 = fsub float %27, %28
  %29 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call10 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %26, float noundef %sub9, ptr noundef %29)
  store ptr %call10, ptr %pbuf.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call11 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %30, ptr noundef @.str.13, ptr noundef %31)
  ret ptr %call11
}

; Function Attrs: uwtable
define internal ptr @QuarterEllipseD(ptr noundef %pbuf, ptr noundef %eptr, float noundef %x, float noundef %y, float noundef %xray, float noundef %yray) #0 {
entry:
  %pbuf.addr = alloca ptr, align 8
  %eptr.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %xray.addr = alloca float, align 4
  %yray.addr = alloca float, align 4
  store ptr %pbuf, ptr %pbuf.addr, align 8, !tbaa !4
  store ptr %eptr, ptr %eptr.addr, align 8, !tbaa !4
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  store float %xray, ptr %xray.addr, align 4, !tbaa !8
  store float %yray, ptr %yray.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %1 = load float, ptr %x.addr, align 4, !tbaa !8
  %2 = load float, ptr %xray.addr, align 4, !tbaa !8
  %neg = fneg float %2
  %3 = call float @llvm.fmuladd.f32(float %neg, float 0x3FE1A9FBE0000000, float %1)
  %4 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call = call ptr @vtklibharu_HPDF_FToA(ptr noundef %0, float noundef %3, ptr noundef %4)
  store ptr %call, ptr %pbuf.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %5, align 1, !tbaa !28
  %6 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %7 = load float, ptr %y.addr, align 4, !tbaa !8
  %8 = load float, ptr %yray.addr, align 4, !tbaa !8
  %sub = fsub float %7, %8
  %9 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call1 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %6, float noundef %sub, ptr noundef %9)
  store ptr %call1, ptr %pbuf.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr2, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %10, align 1, !tbaa !28
  %11 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %12 = load float, ptr %x.addr, align 4, !tbaa !8
  %13 = load float, ptr %xray.addr, align 4, !tbaa !8
  %sub3 = fsub float %12, %13
  %14 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call4 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %11, float noundef %sub3, ptr noundef %14)
  store ptr %call4, ptr %pbuf.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr5 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr5, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %15, align 1, !tbaa !28
  %16 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %17 = load float, ptr %y.addr, align 4, !tbaa !8
  %18 = load float, ptr %yray.addr, align 4, !tbaa !8
  %neg6 = fneg float %18
  %19 = call float @llvm.fmuladd.f32(float %neg6, float 0x3FE1A9FBE0000000, float %17)
  %20 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call7 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %16, float noundef %19, ptr noundef %20)
  store ptr %call7, ptr %pbuf.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr8 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr8, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %21, align 1, !tbaa !28
  %22 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %23 = load float, ptr %x.addr, align 4, !tbaa !8
  %24 = load float, ptr %xray.addr, align 4, !tbaa !8
  %sub9 = fsub float %23, %24
  %25 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call10 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %22, float noundef %sub9, ptr noundef %25)
  store ptr %call10, ptr %pbuf.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %incdec.ptr11 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr11, ptr %pbuf.addr, align 8, !tbaa !4
  store i8 32, ptr %26, align 1, !tbaa !28
  %27 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %28 = load float, ptr %y.addr, align 4, !tbaa !8
  %29 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call12 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %27, float noundef %28, ptr noundef %29)
  store ptr %call12, ptr %pbuf.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %pbuf.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %eptr.addr, align 8, !tbaa !4
  %call13 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %30, ptr noundef @.str.13, ptr noundef %31)
  ret ptr %call13
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_Arc(ptr noundef %page, float noundef %x, float noundef %y, float noundef %ray, float noundef %ang1, float noundef %ang2) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %ray.addr = alloca float, align 4
  %ang1.addr = alloca float, align 4
  %ang2.addr = alloca float, align 4
  %cont_flg = alloca i32, align 4
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp_ang = alloca float, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  store float %ray, ptr %ray.addr, align 4, !tbaa !8
  store float %ang1, ptr %ang1.addr, align 4, !tbaa !8
  store float %ang2, ptr %ang2.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %cont_flg) #8
  store i32 0, ptr %cont_flg, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 3)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  %1 = load float, ptr %ang2.addr, align 4, !tbaa !8
  %2 = load float, ptr %ang1.addr, align 4, !tbaa !8
  %sub = fsub float %1, %2
  %conv = fpext float %sub to double
  %3 = call double @llvm.fabs.f64(double %conv)
  %cmp = fcmp oge double %3, 3.600000e+02
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %error, align 8, !tbaa !17
  %call2 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %5, i64 noundef 4182, i64 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp3 = icmp ne i64 %6, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %7 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34

if.end6:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end6
  %8 = load float, ptr %ang1.addr, align 4, !tbaa !8
  %cmp7 = fcmp olt float %8, 0.000000e+00
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %9 = load float, ptr %ang2.addr, align 4, !tbaa !8
  %cmp9 = fcmp olt float %9, 0.000000e+00
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %10 = phi i1 [ true, %while.cond ], [ %cmp9, %lor.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %11 = load float, ptr %ang1.addr, align 4, !tbaa !8
  %add = fadd float %11, 3.600000e+02
  store float %add, ptr %ang1.addr, align 4, !tbaa !8
  %12 = load float, ptr %ang2.addr, align 4, !tbaa !8
  %add11 = fadd float %12, 3.600000e+02
  store float %add11, ptr %ang2.addr, align 4, !tbaa !8
  br label %while.cond, !llvm.loop !101

while.end:                                        ; preds = %lor.end
  br label %for.cond

for.cond:                                         ; preds = %if.end33, %while.end
  %13 = load float, ptr %ang2.addr, align 4, !tbaa !8
  %14 = load float, ptr %ang1.addr, align 4, !tbaa !8
  %sub12 = fsub float %13, %14
  %conv13 = fpext float %sub12 to double
  %15 = call double @llvm.fabs.f64(double %conv13)
  %cmp14 = fcmp ole double %15, 9.000000e+01
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %for.cond
  %16 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %17 = load float, ptr %x.addr, align 4, !tbaa !8
  %18 = load float, ptr %y.addr, align 4, !tbaa !8
  %19 = load float, ptr %ray.addr, align 4, !tbaa !8
  %20 = load float, ptr %ang1.addr, align 4, !tbaa !8
  %21 = load float, ptr %ang2.addr, align 4, !tbaa !8
  %22 = load i32, ptr %cont_flg, align 4, !tbaa !32
  %call17 = call i64 @InternalArc(ptr noundef %16, float noundef %17, float noundef %18, float noundef %19, float noundef %20, float noundef %21, i32 noundef %22)
  store i64 %call17, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34

if.else:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp_ang) #8
  %23 = load float, ptr %ang2.addr, align 4, !tbaa !8
  %24 = load float, ptr %ang1.addr, align 4, !tbaa !8
  %cmp18 = fcmp ogt float %23, %24
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %25 = load float, ptr %ang1.addr, align 4, !tbaa !8
  %add20 = fadd float %25, 9.000000e+01
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %26 = load float, ptr %ang1.addr, align 4, !tbaa !8
  %sub21 = fsub float %26, 9.000000e+01
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %add20, %cond.true ], [ %sub21, %cond.false ]
  store float %cond, ptr %tmp_ang, align 4, !tbaa !8
  %27 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %28 = load float, ptr %x.addr, align 4, !tbaa !8
  %29 = load float, ptr %y.addr, align 4, !tbaa !8
  %30 = load float, ptr %ray.addr, align 4, !tbaa !8
  %31 = load float, ptr %ang1.addr, align 4, !tbaa !8
  %32 = load float, ptr %tmp_ang, align 4, !tbaa !8
  %33 = load i32, ptr %cont_flg, align 4, !tbaa !32
  %call22 = call i64 @InternalArc(ptr noundef %27, float noundef %28, float noundef %29, float noundef %30, float noundef %31, float noundef %32, i32 noundef %33)
  store i64 %call22, ptr %ret, align 8, !tbaa !10
  %cmp23 = icmp ne i64 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %cond.end
  %34 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %34, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %cond.end
  %35 = load float, ptr %tmp_ang, align 4, !tbaa !8
  store float %35, ptr %ang1.addr, align 4, !tbaa !8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then25
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp_ang) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup34 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end27

if.end27:                                         ; preds = %cleanup.cont
  %36 = load float, ptr %ang1.addr, align 4, !tbaa !8
  %37 = load float, ptr %ang2.addr, align 4, !tbaa !8
  %sub28 = fsub float %36, %37
  %conv29 = fpext float %sub28 to double
  %38 = call double @llvm.fabs.f64(double %conv29)
  %cmp30 = fcmp olt double %38, 1.000000e-01
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end27
  br label %for.end

if.end33:                                         ; preds = %if.end27
  store i32 1, ptr %cont_flg, align 4, !tbaa !32
  br label %for.cond

for.end:                                          ; preds = %if.then32
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34

cleanup34:                                        ; preds = %for.end, %cleanup, %if.then16, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %cont_flg) #8
  %39 = load i64, ptr %retval, align 8
  ret i64 %39
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: uwtable
define internal i64 @InternalArc(ptr noundef %page, float noundef %x, float noundef %y, float noundef %ray, float noundef %ang1, float noundef %ang2, i32 noundef %cont_flg) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %ray.addr = alloca float, align 4
  %ang1.addr = alloca float, align 4
  %ang2.addr = alloca float, align 4
  %cont_flg.addr = alloca i32, align 4
  %PIE = alloca float, align 4
  %buf = alloca [512 x i8], align 16
  %pbuf = alloca ptr, align 8
  %eptr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %rx0 = alloca double, align 8
  %ry0 = alloca double, align 8
  %rx1 = alloca double, align 8
  %ry1 = alloca double, align 8
  %rx2 = alloca double, align 8
  %ry2 = alloca double, align 8
  %rx3 = alloca double, align 8
  %ry3 = alloca double, align 8
  %x0 = alloca double, align 8
  %y0 = alloca double, align 8
  %x1 = alloca double, align 8
  %y1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y2 = alloca double, align 8
  %x3 = alloca double, align 8
  %y3 = alloca double, align 8
  %delta_angle = alloca double, align 8
  %new_angle = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  store float %ray, ptr %ray.addr, align 4, !tbaa !8
  store float %ang1, ptr %ang1.addr, align 4, !tbaa !8
  store float %ang2, ptr %ang2.addr, align 4, !tbaa !8
  store i32 %cont_flg, ptr %cont_flg.addr, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr %PIE) #8
  store float 0x400921FA00000000, ptr %PIE, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pbuf) #8
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %pbuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eptr) #8
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 512
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %eptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rx0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ry0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rx1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ry1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rx2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ry2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rx3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ry3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %y0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %y2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %y3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta_angle) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_angle) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr3 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %0, i32 0, i32 11
  %1 = load ptr, ptr %attr3, align 8, !tbaa !12
  store ptr %1, ptr %attr, align 8, !tbaa !4
  %arraydecay4 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay4, i8 noundef zeroext 0, i32 noundef 512)
  %2 = load float, ptr %ang1.addr, align 4, !tbaa !8
  %3 = load float, ptr %ang2.addr, align 4, !tbaa !8
  %add = fadd float %2, %3
  %conv = fpext float %add to double
  %div = fdiv double %conv, 2.000000e+00
  %sub = fsub double 9.000000e+01, %div
  %div5 = fdiv double %sub, 1.800000e+02
  %mul = fmul double %div5, 0x400921FA00000000
  store double %mul, ptr %delta_angle, align 8, !tbaa !102
  %4 = load float, ptr %ang2.addr, align 4, !tbaa !8
  %5 = load float, ptr %ang1.addr, align 4, !tbaa !8
  %sub6 = fsub float %4, %5
  %conv7 = fpext float %sub6 to double
  %div8 = fdiv double %conv7, 2.000000e+00
  %div9 = fdiv double %div8, 1.800000e+02
  %mul10 = fmul double %div9, 0x400921FA00000000
  store double %mul10, ptr %new_angle, align 8, !tbaa !102
  %6 = load float, ptr %ray.addr, align 4, !tbaa !8
  %conv11 = fpext float %6 to double
  %7 = load double, ptr %new_angle, align 8, !tbaa !102
  %call12 = call double @cos(double noundef %7) #8
  %mul13 = fmul double %conv11, %call12
  store double %mul13, ptr %rx0, align 8, !tbaa !102
  %8 = load float, ptr %ray.addr, align 4, !tbaa !8
  %conv14 = fpext float %8 to double
  %9 = load double, ptr %new_angle, align 8, !tbaa !102
  %call15 = call double @sin(double noundef %9) #8
  %mul16 = fmul double %conv14, %call15
  store double %mul16, ptr %ry0, align 8, !tbaa !102
  %10 = load float, ptr %ray.addr, align 4, !tbaa !8
  %conv17 = fpext float %10 to double
  %11 = load double, ptr %rx0, align 8, !tbaa !102
  %neg = fneg double %11
  %12 = call double @llvm.fmuladd.f64(double %conv17, double 4.000000e+00, double %neg)
  %div19 = fdiv double %12, 3.000000e+00
  store double %div19, ptr %rx2, align 8, !tbaa !102
  %13 = load float, ptr %ray.addr, align 4, !tbaa !8
  %conv20 = fpext float %13 to double
  %14 = load double, ptr %rx0, align 8, !tbaa !102
  %neg22 = fneg double %14
  %15 = call double @llvm.fmuladd.f64(double %conv20, double 1.000000e+00, double %neg22)
  %16 = load double, ptr %rx0, align 8, !tbaa !102
  %17 = load float, ptr %ray.addr, align 4, !tbaa !8
  %conv23 = fpext float %17 to double
  %neg25 = fneg double %conv23
  %18 = call double @llvm.fmuladd.f64(double %neg25, double 3.000000e+00, double %16)
  %mul26 = fmul double %15, %18
  %19 = load double, ptr %ry0, align 8, !tbaa !102
  %mul27 = fmul double 3.000000e+00, %19
  %div28 = fdiv double %mul26, %mul27
  store double %div28, ptr %ry2, align 8, !tbaa !102
  %20 = load double, ptr %rx2, align 8, !tbaa !102
  store double %20, ptr %rx1, align 8, !tbaa !102
  %21 = load double, ptr %ry2, align 8, !tbaa !102
  %fneg = fneg double %21
  store double %fneg, ptr %ry1, align 8, !tbaa !102
  %22 = load double, ptr %rx0, align 8, !tbaa !102
  store double %22, ptr %rx3, align 8, !tbaa !102
  %23 = load double, ptr %ry0, align 8, !tbaa !102
  %fneg29 = fneg double %23
  store double %fneg29, ptr %ry3, align 8, !tbaa !102
  %24 = load double, ptr %rx0, align 8, !tbaa !102
  %25 = load double, ptr %delta_angle, align 8, !tbaa !102
  %call30 = call double @cos(double noundef %25) #8
  %26 = load double, ptr %ry0, align 8, !tbaa !102
  %27 = load double, ptr %delta_angle, align 8, !tbaa !102
  %call32 = call double @sin(double noundef %27) #8
  %mul33 = fmul double %26, %call32
  %neg34 = fneg double %mul33
  %28 = call double @llvm.fmuladd.f64(double %24, double %call30, double %neg34)
  %29 = load float, ptr %x.addr, align 4, !tbaa !8
  %conv35 = fpext float %29 to double
  %add36 = fadd double %28, %conv35
  store double %add36, ptr %x0, align 8, !tbaa !102
  %30 = load double, ptr %rx0, align 8, !tbaa !102
  %31 = load double, ptr %delta_angle, align 8, !tbaa !102
  %call37 = call double @sin(double noundef %31) #8
  %32 = load double, ptr %ry0, align 8, !tbaa !102
  %33 = load double, ptr %delta_angle, align 8, !tbaa !102
  %call39 = call double @cos(double noundef %33) #8
  %mul40 = fmul double %32, %call39
  %34 = call double @llvm.fmuladd.f64(double %30, double %call37, double %mul40)
  %35 = load float, ptr %y.addr, align 4, !tbaa !8
  %conv41 = fpext float %35 to double
  %add42 = fadd double %34, %conv41
  store double %add42, ptr %y0, align 8, !tbaa !102
  %36 = load double, ptr %rx1, align 8, !tbaa !102
  %37 = load double, ptr %delta_angle, align 8, !tbaa !102
  %call43 = call double @cos(double noundef %37) #8
  %38 = load double, ptr %ry1, align 8, !tbaa !102
  %39 = load double, ptr %delta_angle, align 8, !tbaa !102
  %call45 = call double @sin(double noundef %39) #8
  %mul46 = fmul double %38, %call45
  %neg47 = fneg double %mul46
  %40 = call double @llvm.fmuladd.f64(double %36, double %call43, double %neg47)
  %41 = load float, ptr %x.addr, align 4, !tbaa !8
  %conv48 = fpext float %41 to double
  %add49 = fadd double %40, %conv48
  store double %add49, ptr %x1, align 8, !tbaa !102
  %42 = load double, ptr %rx1, align 8, !tbaa !102
  %43 = load double, ptr %delta_angle, align 8, !tbaa !102
  %call50 = call double @sin(double noundef %43) #8
  %44 = load double, ptr %ry1, align 8, !tbaa !102
  %45 = load double, ptr %delta_angle, align 8, !tbaa !102
  %call52 = call double @cos(double noundef %45) #8
  %mul53 = fmul double %44, %call52
  %46 = call double @llvm.fmuladd.f64(double %42, double %call50, double %mul53)
  %47 = load float, ptr %y.addr, align 4, !tbaa !8
  %conv54 = fpext float %47 to double
  %add55 = fadd double %46, %conv54
  store double %add55, ptr %y1, align 8, !tbaa !102
  %48 = load double, ptr %rx2, align 8, !tbaa !102
  %49 = load double, ptr %delta_angle, align 8, !tbaa !102
  %call56 = call double @cos(double noundef %49) #8
  %50 = load double, ptr %ry2, align 8, !tbaa !102
  %51 = load double, ptr %delta_angle, align 8, !tbaa !102
  %call58 = call double @sin(double noundef %51) #8
  %mul59 = fmul double %50, %call58
  %neg60 = fneg double %mul59
  %52 = call double @llvm.fmuladd.f64(double %48, double %call56, double %neg60)
  %53 = load float, ptr %x.addr, align 4, !tbaa !8
  %conv61 = fpext float %53 to double
  %add62 = fadd double %52, %conv61
  store double %add62, ptr %x2, align 8, !tbaa !102
  %54 = load double, ptr %rx2, align 8, !tbaa !102
  %55 = load double, ptr %delta_angle, align 8, !tbaa !102
  %call63 = call double @sin(double noundef %55) #8
  %56 = load double, ptr %ry2, align 8, !tbaa !102
  %57 = load double, ptr %delta_angle, align 8, !tbaa !102
  %call65 = call double @cos(double noundef %57) #8
  %mul66 = fmul double %56, %call65
  %58 = call double @llvm.fmuladd.f64(double %54, double %call63, double %mul66)
  %59 = load float, ptr %y.addr, align 4, !tbaa !8
  %conv67 = fpext float %59 to double
  %add68 = fadd double %58, %conv67
  store double %add68, ptr %y2, align 8, !tbaa !102
  %60 = load double, ptr %rx3, align 8, !tbaa !102
  %61 = load double, ptr %delta_angle, align 8, !tbaa !102
  %call69 = call double @cos(double noundef %61) #8
  %62 = load double, ptr %ry3, align 8, !tbaa !102
  %63 = load double, ptr %delta_angle, align 8, !tbaa !102
  %call71 = call double @sin(double noundef %63) #8
  %mul72 = fmul double %62, %call71
  %neg73 = fneg double %mul72
  %64 = call double @llvm.fmuladd.f64(double %60, double %call69, double %neg73)
  %65 = load float, ptr %x.addr, align 4, !tbaa !8
  %conv74 = fpext float %65 to double
  %add75 = fadd double %64, %conv74
  store double %add75, ptr %x3, align 8, !tbaa !102
  %66 = load double, ptr %rx3, align 8, !tbaa !102
  %67 = load double, ptr %delta_angle, align 8, !tbaa !102
  %call76 = call double @sin(double noundef %67) #8
  %68 = load double, ptr %ry3, align 8, !tbaa !102
  %69 = load double, ptr %delta_angle, align 8, !tbaa !102
  %call78 = call double @cos(double noundef %69) #8
  %mul79 = fmul double %68, %call78
  %70 = call double @llvm.fmuladd.f64(double %66, double %call76, double %mul79)
  %71 = load float, ptr %y.addr, align 4, !tbaa !8
  %conv80 = fpext float %71 to double
  %add81 = fadd double %70, %conv80
  store double %add81, ptr %y3, align 8, !tbaa !102
  %72 = load i32, ptr %cont_flg.addr, align 4, !tbaa !32
  %tobool = icmp ne i32 %72, 0
  br i1 %tobool, label %if.end91, label %if.then

if.then:                                          ; preds = %entry
  %73 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %74 = load double, ptr %x0, align 8, !tbaa !102
  %conv82 = fptrunc double %74 to float
  %75 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call83 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %73, float noundef %conv82, ptr noundef %75)
  store ptr %call83, ptr %pbuf, align 8, !tbaa !4
  %76 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %76, i32 1
  store ptr %incdec.ptr, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %76, align 1, !tbaa !28
  %77 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %78 = load double, ptr %y0, align 8, !tbaa !102
  %conv84 = fptrunc double %78 to float
  %79 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call85 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %77, float noundef %conv84, ptr noundef %79)
  store ptr %call85, ptr %pbuf, align 8, !tbaa !4
  %80 = load ptr, ptr %attr, align 8, !tbaa !4
  %gmode = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %80, i32 0, i32 10
  %81 = load i16, ptr %gmode, align 8, !tbaa !59
  %conv86 = zext i16 %81 to i32
  %cmp = icmp eq i32 %conv86, 2
  br i1 %cmp, label %if.then88, label %if.else

if.then88:                                        ; preds = %if.then
  %82 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %83 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call89 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %82, ptr noundef @.str.12, ptr noundef %83)
  store ptr %call89, ptr %pbuf, align 8, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %if.then
  %84 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %85 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call90 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %84, ptr noundef @.str.11, ptr noundef %85)
  store ptr %call90, ptr %pbuf, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then88
  br label %if.end91

if.end91:                                         ; preds = %if.end, %entry
  %86 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %87 = load double, ptr %x1, align 8, !tbaa !102
  %conv92 = fptrunc double %87 to float
  %88 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call93 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %86, float noundef %conv92, ptr noundef %88)
  store ptr %call93, ptr %pbuf, align 8, !tbaa !4
  %89 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr94 = getelementptr inbounds i8, ptr %89, i32 1
  store ptr %incdec.ptr94, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %89, align 1, !tbaa !28
  %90 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %91 = load double, ptr %y1, align 8, !tbaa !102
  %conv95 = fptrunc double %91 to float
  %92 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call96 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %90, float noundef %conv95, ptr noundef %92)
  store ptr %call96, ptr %pbuf, align 8, !tbaa !4
  %93 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr97 = getelementptr inbounds i8, ptr %93, i32 1
  store ptr %incdec.ptr97, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %93, align 1, !tbaa !28
  %94 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %95 = load double, ptr %x2, align 8, !tbaa !102
  %conv98 = fptrunc double %95 to float
  %96 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call99 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %94, float noundef %conv98, ptr noundef %96)
  store ptr %call99, ptr %pbuf, align 8, !tbaa !4
  %97 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr100 = getelementptr inbounds i8, ptr %97, i32 1
  store ptr %incdec.ptr100, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %97, align 1, !tbaa !28
  %98 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %99 = load double, ptr %y2, align 8, !tbaa !102
  %conv101 = fptrunc double %99 to float
  %100 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call102 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %98, float noundef %conv101, ptr noundef %100)
  store ptr %call102, ptr %pbuf, align 8, !tbaa !4
  %101 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr103 = getelementptr inbounds i8, ptr %101, i32 1
  store ptr %incdec.ptr103, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %101, align 1, !tbaa !28
  %102 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %103 = load double, ptr %x3, align 8, !tbaa !102
  %conv104 = fptrunc double %103 to float
  %104 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call105 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %102, float noundef %conv104, ptr noundef %104)
  store ptr %call105, ptr %pbuf, align 8, !tbaa !4
  %105 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %incdec.ptr106 = getelementptr inbounds i8, ptr %105, i32 1
  store ptr %incdec.ptr106, ptr %pbuf, align 8, !tbaa !4
  store i8 32, ptr %105, align 1, !tbaa !28
  %106 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %107 = load double, ptr %y3, align 8, !tbaa !102
  %conv107 = fptrunc double %107 to float
  %108 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call108 = call ptr @vtklibharu_HPDF_FToA(ptr noundef %106, float noundef %conv107, ptr noundef %108)
  store ptr %call108, ptr %pbuf, align 8, !tbaa !4
  %109 = load ptr, ptr %pbuf, align 8, !tbaa !4
  %110 = load ptr, ptr %eptr, align 8, !tbaa !4
  %call109 = call ptr @vtklibharu_HPDF_StrCpy(ptr noundef %109, ptr noundef @.str.13, ptr noundef %110)
  %111 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %111, i32 0, i32 12
  %112 = load ptr, ptr %stream, align 8, !tbaa !18
  %arraydecay110 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %call111 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %112, ptr noundef %arraydecay110)
  store i64 %call111, ptr %ret, align 8, !tbaa !10
  %cmp112 = icmp ne i64 %call111, 0
  br i1 %cmp112, label %if.then114, label %if.end116

if.then114:                                       ; preds = %if.end91
  %113 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %113, i32 0, i32 2
  %114 = load ptr, ptr %error, align 8, !tbaa !17
  %call115 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %114)
  store i64 %call115, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end116:                                        ; preds = %if.end91
  %115 = load double, ptr %x3, align 8, !tbaa !102
  %conv117 = fptrunc double %115 to float
  %116 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %116, i32 0, i32 7
  %x118 = getelementptr inbounds %struct._HPDF_Point, ptr %cur_pos, i32 0, i32 0
  store float %conv117, ptr %x118, align 8, !tbaa !56
  %117 = load double, ptr %y3, align 8, !tbaa !102
  %conv119 = fptrunc double %117 to float
  %118 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos120 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %118, i32 0, i32 7
  %y121 = getelementptr inbounds %struct._HPDF_Point, ptr %cur_pos120, i32 0, i32 1
  store float %conv119, ptr %y121, align 4, !tbaa !57
  %119 = load ptr, ptr %attr, align 8, !tbaa !4
  %str_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %119, i32 0, i32 6
  %120 = load ptr, ptr %attr, align 8, !tbaa !4
  %cur_pos122 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %120, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %str_pos, ptr align 8 %cur_pos122, i64 8, i1 false), !tbaa.struct !58
  %121 = load ptr, ptr %attr, align 8, !tbaa !4
  %gmode123 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %121, i32 0, i32 10
  store i16 2, ptr %gmode123, align 8, !tbaa !59
  %122 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %122, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %if.then114
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_angle) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta_angle) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %x3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %x2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %x1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %x0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ry3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %rx3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ry2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %rx2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ry1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %rx1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ry0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %rx0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %eptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pbuf) #8
  call void @llvm.lifetime.end.p0(i64 512, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %PIE) #8
  %123 = load i64, ptr %retval, align 8
  ret i64 %123
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_DrawImage(ptr noundef %page, ptr noundef %image, float noundef %x, float noundef %y, float noundef %width, float noundef %height) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %image.addr = alloca ptr, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %width.addr = alloca float, align 4
  %height.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store ptr %image, ptr %image.addr, align 8, !tbaa !4
  store float %x, ptr %x.addr, align 4, !tbaa !8
  store float %y, ptr %y.addr, align 4, !tbaa !8
  store float %width, ptr %width.addr, align 4, !tbaa !8
  store float %height, ptr %height.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_GSave(ptr noundef %0)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %3 = load float, ptr %width.addr, align 4, !tbaa !8
  %4 = load float, ptr %height.addr, align 4, !tbaa !8
  %5 = load float, ptr %x.addr, align 4, !tbaa !8
  %6 = load float, ptr %y.addr, align 4, !tbaa !8
  %call1 = call i64 @vtklibharu_HPDF_Page_Concat(ptr noundef %2, float noundef %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %4, float noundef %5, float noundef %6)
  store i64 %call1, ptr %ret, align 8, !tbaa !10
  %cmp2 = icmp ne i64 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %7 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %image.addr, align 8, !tbaa !4
  %call5 = call i64 @vtklibharu_HPDF_Page_ExecuteXObject(ptr noundef %8, ptr noundef %9)
  store i64 %call5, ptr %ret, align 8, !tbaa !10
  %cmp6 = icmp ne i64 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %10 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %11 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call9 = call i64 @vtklibharu_HPDF_Page_GRestore(ptr noundef %11)
  store i64 %call9, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %12 = load i64, ptr %retval, align 8
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_TextOut(ptr noundef %page, float noundef %xpos, float noundef %ypos, ptr noundef %text) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %xpos.addr = alloca float, align 4
  %ypos.addr = alloca float, align 4
  %text.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %x = alloca float, align 4
  %y = alloca float, align 4
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %xpos, ptr %xpos.addr, align 4, !tbaa !8
  store float %ypos, ptr %ypos.addr, align 4, !tbaa !8
  store ptr %text, ptr %text.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 4)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %1 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %4, ptr %attr, align 8, !tbaa !4
  %5 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %5, i32 0, i32 9
  %6 = load float, ptr %xpos.addr, align 4, !tbaa !8
  %7 = load float, ptr %ypos.addr, align 4, !tbaa !8
  call void @TextPos_AbsToRel(ptr noundef byval(%struct._HPDF_TransMatrix) align 8 %text_matrix, float noundef %6, float noundef %7, ptr noundef %x, ptr noundef %y)
  %8 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %9 = load float, ptr %x, align 4, !tbaa !8
  %10 = load float, ptr %y, align 4, !tbaa !8
  %call2 = call i64 @vtklibharu_HPDF_Page_MoveTextPos(ptr noundef %8, float noundef %9, float noundef %10)
  store i64 %call2, ptr %ret, align 8, !tbaa !10
  %cmp3 = icmp ne i64 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %11 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %12 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %call6 = call i64 @vtklibharu_HPDF_Page_ShowText(ptr noundef %12, ptr noundef %13)
  store i64 %call6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %14 = load i64, ptr %retval, align 8
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define internal void @TextPos_AbsToRel(ptr noundef byval(%struct._HPDF_TransMatrix) align 8 %text_matrix, float noundef %xAbs, float noundef %yAbs, ptr noundef %xRel, ptr noundef %yRel) #5 {
entry:
  %xAbs.addr = alloca float, align 4
  %yAbs.addr = alloca float, align 4
  %xRel.addr = alloca ptr, align 8
  %yRel.addr = alloca ptr, align 8
  %y8 = alloca float, align 4
  store float %xAbs, ptr %xAbs.addr, align 4, !tbaa !8
  store float %yAbs, ptr %yAbs.addr, align 4, !tbaa !8
  store ptr %xRel, ptr %xRel.addr, align 8, !tbaa !4
  store ptr %yRel, ptr %yRel.addr, align 8, !tbaa !4
  %a = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 0
  %0 = load float, ptr %a, align 8, !tbaa !44
  %cmp = fcmp oeq float %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load float, ptr %yAbs.addr, align 4, !tbaa !8
  %y = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 5
  %2 = load float, ptr %y, align 4, !tbaa !54
  %sub = fsub float %1, %2
  %3 = load float, ptr %xAbs.addr, align 4, !tbaa !8
  %x = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 4
  %4 = load float, ptr %x, align 8, !tbaa !52
  %sub1 = fsub float %3, %4
  %d = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 3
  %5 = load float, ptr %d, align 4, !tbaa !49
  %mul = fmul float %sub1, %5
  %c = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 2
  %6 = load float, ptr %c, align 8, !tbaa !48
  %div = fdiv float %mul, %6
  %sub2 = fsub float %sub, %div
  %b = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 1
  %7 = load float, ptr %b, align 4, !tbaa !45
  %div3 = fdiv float %sub2, %7
  %8 = load ptr, ptr %xRel.addr, align 8, !tbaa !4
  store float %div3, ptr %8, align 4, !tbaa !8
  %9 = load float, ptr %xAbs.addr, align 4, !tbaa !8
  %x4 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 4
  %10 = load float, ptr %x4, align 8, !tbaa !52
  %sub5 = fsub float %9, %10
  %c6 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 2
  %11 = load float, ptr %c6, align 8, !tbaa !48
  %div7 = fdiv float %sub5, %11
  %12 = load ptr, ptr %yRel.addr, align 8, !tbaa !4
  store float %div7, ptr %12, align 4, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %y8) #8
  %13 = load float, ptr %yAbs.addr, align 4, !tbaa !8
  %y9 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 5
  %14 = load float, ptr %y9, align 4, !tbaa !54
  %sub10 = fsub float %13, %14
  %15 = load float, ptr %xAbs.addr, align 4, !tbaa !8
  %x11 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 4
  %16 = load float, ptr %x11, align 8, !tbaa !52
  %sub12 = fsub float %15, %16
  %b13 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 1
  %17 = load float, ptr %b13, align 4, !tbaa !45
  %mul14 = fmul float %sub12, %17
  %a15 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 0
  %18 = load float, ptr %a15, align 8, !tbaa !44
  %div16 = fdiv float %mul14, %18
  %sub17 = fsub float %sub10, %div16
  %d18 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 3
  %19 = load float, ptr %d18, align 4, !tbaa !49
  %c19 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 2
  %20 = load float, ptr %c19, align 8, !tbaa !48
  %b20 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 1
  %21 = load float, ptr %b20, align 4, !tbaa !45
  %mul21 = fmul float %20, %21
  %a22 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 0
  %22 = load float, ptr %a22, align 8, !tbaa !44
  %div23 = fdiv float %mul21, %22
  %sub24 = fsub float %19, %div23
  %div25 = fdiv float %sub17, %sub24
  store float %div25, ptr %y8, align 4, !tbaa !8
  %23 = load float, ptr %xAbs.addr, align 4, !tbaa !8
  %x26 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 4
  %24 = load float, ptr %x26, align 8, !tbaa !52
  %sub27 = fsub float %23, %24
  %25 = load float, ptr %y8, align 4, !tbaa !8
  %c28 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 2
  %26 = load float, ptr %c28, align 8, !tbaa !48
  %neg = fneg float %25
  %27 = call float @llvm.fmuladd.f32(float %neg, float %26, float %sub27)
  %a30 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 0
  %28 = load float, ptr %a30, align 8, !tbaa !44
  %div31 = fdiv float %27, %28
  %29 = load ptr, ptr %xRel.addr, align 8, !tbaa !4
  store float %div31, ptr %29, align 4, !tbaa !8
  %30 = load float, ptr %y8, align 4, !tbaa !8
  %31 = load ptr, ptr %yRel.addr, align 8, !tbaa !4
  store float %30, ptr %31, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %y8) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_TextRect(ptr noundef %page, float noundef %left, float noundef %top, float noundef %right, float noundef %bottom, ptr noundef %text, i32 noundef %align, ptr noundef %len) #6 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %left.addr = alloca float, align 4
  %top.addr = alloca float, align 4
  %right.addr = alloca float, align 4
  %bottom.addr = alloca float, align 4
  %text.addr = alloca ptr, align 8
  %align.addr = alloca i32, align 4
  %len.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %pos_initialized = alloca i32, align 4
  %save_char_space = alloca float, align 4
  %is_insufficient_space = alloca i32, align 4
  %num_rest = alloca i32, align 4
  %bbox = alloca %struct._HPDF_Rect, align 4
  %char_space_changed = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct._HPDF_Rect, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  %line_len = alloca i32, align 4
  %tmp_len = alloca i32, align 4
  %rw = alloca float, align 4
  %LineBreak = alloca i32, align 4
  %x_adjust = alloca float, align 4
  %state = alloca %struct._HPDF_ParseText_Rec, align 8
  %i = alloca i32, align 4
  %num_char = alloca i32, align 4
  %encoder = alloca ptr, align 8
  %tmp_ptr = alloca ptr, align 8
  %btype = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store float %left, ptr %left.addr, align 4, !tbaa !8
  store float %top, ptr %top.addr, align 4, !tbaa !8
  store float %right, ptr %right.addr, align 4, !tbaa !8
  store float %bottom, ptr %bottom.addr, align 4, !tbaa !8
  store ptr %text, ptr %text.addr, align 8, !tbaa !4
  store i32 %align, ptr %align.addr, align 4, !tbaa !28
  store ptr %len, ptr %len.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 4)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #8
  %1 = load ptr, ptr %text.addr, align 8, !tbaa !4
  store ptr %1, ptr %ptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos_initialized) #8
  store i32 0, ptr %pos_initialized, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr %save_char_space) #8
  store float 0.000000e+00, ptr %save_char_space, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_insufficient_space) #8
  store i32 0, ptr %is_insufficient_space, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_rest) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %bbox) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %char_space_changed) #8
  store i32 0, ptr %char_space_changed, align 4, !tbaa !32
  %2 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp ne i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %3, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %4, i32 0, i32 11
  %5 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %5, ptr %attr, align 8, !tbaa !4
  %6 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %gstate, align 8, !tbaa !22
  %font = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %7, i32 0, i32 21
  %8 = load ptr, ptr %font, align 8, !tbaa !64
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %error, align 8, !tbaa !17
  %call3 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %10, i64 noundef 4174, i64 noundef 0)
  store i64 %call3, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #8
  %11 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate5 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %gstate5, align 8, !tbaa !22
  %font6 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %12, i32 0, i32 21
  %13 = load ptr, ptr %font6, align 8, !tbaa !64
  %call7 = call { <2 x float>, <2 x float> } @vtklibharu_HPDF_Font_GetBBox(ptr noundef %13)
  %14 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %tmp, i32 0, i32 0
  %15 = extractvalue { <2 x float>, <2 x float> } %call7, 0
  store <2 x float> %15, ptr %14, align 4
  %16 = getelementptr inbounds { <2 x float>, <2 x float> }, ptr %tmp, i32 0, i32 1
  %17 = extractvalue { <2 x float>, <2 x float> } %call7, 1
  store <2 x float> %17, ptr %16, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %bbox, ptr align 4 %tmp, i64 16, i1 false), !tbaa.struct !104
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #8
  %18 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %tobool8 = icmp ne ptr %18, null
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end4
  %19 = load ptr, ptr %len.addr, align 8, !tbaa !4
  store i32 0, ptr %19, align 4, !tbaa !32
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end4
  %20 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %call11 = call i32 @vtklibharu_HPDF_StrLen(ptr noundef %20, i32 noundef 2147483647)
  store i32 %call11, ptr %num_rest, align 4, !tbaa !32
  %21 = load i32, ptr %num_rest, align 4, !tbaa !32
  %cmp12 = icmp ugt i32 %21, 2147483646
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  %22 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error14 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %error14, align 8, !tbaa !17
  %call15 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %23, i64 noundef 4187, i64 noundef 0)
  store i64 %call15, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

if.else:                                          ; preds = %if.end10
  %24 = load i32, ptr %num_rest, align 4, !tbaa !32
  %tobool16 = icmp ne i32 %24, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.else
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

if.end18:                                         ; preds = %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18
  %25 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate20 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %gstate20, align 8, !tbaa !22
  %text_leading = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %26, i32 0, i32 10
  %27 = load float, ptr %text_leading, align 8, !tbaa !63
  %cmp21 = fcmp oeq float %27, 0.000000e+00
  br i1 %cmp21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end19
  %28 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %top23 = getelementptr inbounds %struct._HPDF_Rect, ptr %bbox, i32 0, i32 3
  %29 = load float, ptr %top23, align 4, !tbaa !105
  %bottom24 = getelementptr inbounds %struct._HPDF_Rect, ptr %bbox, i32 0, i32 1
  %30 = load float, ptr %bottom24, align 4, !tbaa !107
  %sub = fsub float %29, %30
  %div = fdiv float %sub, 1.000000e+03
  %31 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate25 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %31, i32 0, i32 5
  %32 = load ptr, ptr %gstate25, align 8, !tbaa !22
  %font_size = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %32, i32 0, i32 22
  %33 = load float, ptr %font_size, align 8, !tbaa !65
  %mul = fmul float %div, %33
  %call26 = call i64 @vtklibharu_HPDF_Page_SetTextLeading(ptr noundef %28, float noundef %mul)
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end19
  %34 = load float, ptr %top.addr, align 4, !tbaa !8
  %top28 = getelementptr inbounds %struct._HPDF_Rect, ptr %bbox, i32 0, i32 3
  %35 = load float, ptr %top28, align 4, !tbaa !105
  %div29 = fdiv float %35, 1.000000e+03
  %36 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate30 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %36, i32 0, i32 5
  %37 = load ptr, ptr %gstate30, align 8, !tbaa !22
  %font_size31 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %37, i32 0, i32 22
  %38 = load float, ptr %font_size31, align 8, !tbaa !65
  %neg = fneg float %div29
  %39 = call float @llvm.fmuladd.f32(float %neg, float %38, float %34)
  %40 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate33 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %40, i32 0, i32 5
  %41 = load ptr, ptr %gstate33, align 8, !tbaa !22
  %text_leading34 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %41, i32 0, i32 10
  %42 = load float, ptr %text_leading34, align 8, !tbaa !63
  %add = fadd float %39, %42
  store float %add, ptr %top.addr, align 4, !tbaa !8
  %43 = load float, ptr %bottom.addr, align 4, !tbaa !8
  %bottom35 = getelementptr inbounds %struct._HPDF_Rect, ptr %bbox, i32 0, i32 1
  %44 = load float, ptr %bottom35, align 4, !tbaa !107
  %div36 = fdiv float %44, 1.000000e+03
  %45 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate37 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %45, i32 0, i32 5
  %46 = load ptr, ptr %gstate37, align 8, !tbaa !22
  %font_size38 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %46, i32 0, i32 22
  %47 = load float, ptr %font_size38, align 8, !tbaa !65
  %neg40 = fneg float %div36
  %48 = call float @llvm.fmuladd.f32(float %neg40, float %47, float %43)
  store float %48, ptr %bottom.addr, align 4, !tbaa !8
  %49 = load i32, ptr %align.addr, align 4, !tbaa !28
  %cmp41 = icmp eq i32 %49, 3
  br i1 %cmp41, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.end27
  %50 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate43 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %50, i32 0, i32 5
  %51 = load ptr, ptr %gstate43, align 8, !tbaa !22
  %char_space = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %51, i32 0, i32 7
  %52 = load float, ptr %char_space, align 4, !tbaa !60
  store float %52, ptr %save_char_space, align 4, !tbaa !8
  %53 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate44 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %53, i32 0, i32 5
  %54 = load ptr, ptr %gstate44, align 8, !tbaa !22
  %char_space45 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %54, i32 0, i32 7
  store float 0.000000e+00, ptr %char_space45, align 4, !tbaa !60
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end27
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont229, %if.end46
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %line_len) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp_len) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %rw) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %LineBreak) #8
  %55 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate47 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %55, i32 0, i32 5
  %56 = load ptr, ptr %gstate47, align 8, !tbaa !22
  %char_space48 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %56, i32 0, i32 7
  store float 0.000000e+00, ptr %char_space48, align 4, !tbaa !60
  %57 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %58 = load ptr, ptr %ptr, align 8, !tbaa !4
  %59 = load float, ptr %right.addr, align 4, !tbaa !8
  %60 = load float, ptr %left.addr, align 4, !tbaa !8
  %sub49 = fsub float %59, %60
  %call50 = call i32 @vtklibharu_HPDF_Page_MeasureText(ptr noundef %57, ptr noundef %58, float noundef %sub49, i32 noundef 1, ptr noundef %rw)
  store i32 %call50, ptr %tmp_len, align 4, !tbaa !32
  store i32 %call50, ptr %line_len, align 4, !tbaa !32
  %61 = load i32, ptr %line_len, align 4, !tbaa !32
  %cmp51 = icmp eq i32 %61, 0
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %for.cond
  store i32 1, ptr %is_insufficient_space, align 4, !tbaa !32
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup222

if.end53:                                         ; preds = %for.cond
  %62 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %tobool54 = icmp ne ptr %62, null
  br i1 %tobool54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end53
  %63 = load i32, ptr %line_len, align 4, !tbaa !32
  %64 = load ptr, ptr %len.addr, align 8, !tbaa !4
  %65 = load i32, ptr %64, align 4, !tbaa !32
  %add56 = add i32 %65, %63
  store i32 %add56, ptr %64, align 4, !tbaa !32
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end53
  %66 = load i32, ptr %line_len, align 4, !tbaa !32
  %67 = load i32, ptr %num_rest, align 4, !tbaa !32
  %sub58 = sub i32 %67, %66
  store i32 %sub58, ptr %num_rest, align 4, !tbaa !32
  store i32 0, ptr %LineBreak, align 4, !tbaa !32
  br label %while.cond

while.cond:                                       ; preds = %if.end108, %if.end57
  %68 = load i32, ptr %tmp_len, align 4, !tbaa !32
  %cmp59 = icmp ugt i32 %68, 0
  br i1 %cmp59, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %69 = load ptr, ptr %ptr, align 8, !tbaa !4
  %70 = load i32, ptr %tmp_len, align 4, !tbaa !32
  %sub60 = sub i32 %70, 1
  %idxprom = zext i32 %sub60 to i64
  %arrayidx = getelementptr inbounds i8, ptr %69, i64 %idxprom
  %71 = load i8, ptr %arrayidx, align 1, !tbaa !28
  %conv = sext i8 %71 to i32
  %cmp61 = icmp eq i32 %conv, 0
  br i1 %cmp61, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %72 = load ptr, ptr %ptr, align 8, !tbaa !4
  %73 = load i32, ptr %tmp_len, align 4, !tbaa !32
  %sub63 = sub i32 %73, 1
  %idxprom64 = zext i32 %sub63 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %72, i64 %idxprom64
  %74 = load i8, ptr %arrayidx65, align 1, !tbaa !28
  %conv66 = sext i8 %74 to i32
  %cmp67 = icmp eq i32 %conv66, 9
  br i1 %cmp67, label %lor.end, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %lor.lhs.false
  %75 = load ptr, ptr %ptr, align 8, !tbaa !4
  %76 = load i32, ptr %tmp_len, align 4, !tbaa !32
  %sub70 = sub i32 %76, 1
  %idxprom71 = zext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds i8, ptr %75, i64 %idxprom71
  %77 = load i8, ptr %arrayidx72, align 1, !tbaa !28
  %conv73 = sext i8 %77 to i32
  %cmp74 = icmp eq i32 %conv73, 10
  br i1 %cmp74, label %lor.end, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %lor.lhs.false69
  %78 = load ptr, ptr %ptr, align 8, !tbaa !4
  %79 = load i32, ptr %tmp_len, align 4, !tbaa !32
  %sub77 = sub i32 %79, 1
  %idxprom78 = zext i32 %sub77 to i64
  %arrayidx79 = getelementptr inbounds i8, ptr %78, i64 %idxprom78
  %80 = load i8, ptr %arrayidx79, align 1, !tbaa !28
  %conv80 = sext i8 %80 to i32
  %cmp81 = icmp eq i32 %conv80, 12
  br i1 %cmp81, label %lor.end, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %lor.lhs.false76
  %81 = load ptr, ptr %ptr, align 8, !tbaa !4
  %82 = load i32, ptr %tmp_len, align 4, !tbaa !32
  %sub84 = sub i32 %82, 1
  %idxprom85 = zext i32 %sub84 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %81, i64 %idxprom85
  %83 = load i8, ptr %arrayidx86, align 1, !tbaa !28
  %conv87 = sext i8 %83 to i32
  %cmp88 = icmp eq i32 %conv87, 13
  br i1 %cmp88, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false83
  %84 = load ptr, ptr %ptr, align 8, !tbaa !4
  %85 = load i32, ptr %tmp_len, align 4, !tbaa !32
  %sub90 = sub i32 %85, 1
  %idxprom91 = zext i32 %sub90 to i64
  %arrayidx92 = getelementptr inbounds i8, ptr %84, i64 %idxprom91
  %86 = load i8, ptr %arrayidx92, align 1, !tbaa !28
  %conv93 = sext i8 %86 to i32
  %cmp94 = icmp eq i32 %conv93, 32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false83, %lor.lhs.false76, %lor.lhs.false69, %lor.lhs.false, %land.rhs
  %87 = phi i1 [ true, %lor.lhs.false83 ], [ true, %lor.lhs.false76 ], [ true, %lor.lhs.false69 ], [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp94, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %88 = phi i1 [ false, %while.cond ], [ %87, %lor.end ]
  br i1 %88, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %89 = load i32, ptr %tmp_len, align 4, !tbaa !32
  %dec = add i32 %89, -1
  store i32 %dec, ptr %tmp_len, align 4, !tbaa !32
  %90 = load ptr, ptr %ptr, align 8, !tbaa !4
  %91 = load i32, ptr %tmp_len, align 4, !tbaa !32
  %idxprom96 = zext i32 %91 to i64
  %arrayidx97 = getelementptr inbounds i8, ptr %90, i64 %idxprom96
  %92 = load i8, ptr %arrayidx97, align 1, !tbaa !28
  %conv98 = sext i8 %92 to i32
  %cmp99 = icmp eq i32 %conv98, 10
  br i1 %cmp99, label %if.then107, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %while.body
  %93 = load ptr, ptr %ptr, align 8, !tbaa !4
  %94 = load i32, ptr %tmp_len, align 4, !tbaa !32
  %idxprom102 = zext i32 %94 to i64
  %arrayidx103 = getelementptr inbounds i8, ptr %93, i64 %idxprom102
  %95 = load i8, ptr %arrayidx103, align 1, !tbaa !28
  %conv104 = sext i8 %95 to i32
  %cmp105 = icmp eq i32 %conv104, 13
  br i1 %cmp105, label %if.then107, label %if.end108

if.then107:                                       ; preds = %lor.lhs.false101, %while.body
  store i32 1, ptr %LineBreak, align 4, !tbaa !32
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %lor.lhs.false101
  br label %while.cond, !llvm.loop !108

while.end:                                        ; preds = %land.end
  %96 = load i32, ptr %align.addr, align 4, !tbaa !28
  switch i32 %96, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb119
    i32 3, label %sw.bb134
  ]

sw.bb:                                            ; preds = %while.end
  %97 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %97, i32 0, i32 9
  %98 = load float, ptr %right.addr, align 4, !tbaa !8
  %99 = load float, ptr %rw, align 4, !tbaa !8
  %sub109 = fsub float %98, %99
  %100 = load float, ptr %top.addr, align 4, !tbaa !8
  call void @TextPos_AbsToRel(ptr noundef byval(%struct._HPDF_TransMatrix) align 8 %text_matrix, float noundef %sub109, float noundef %100, ptr noundef %x, ptr noundef %y)
  %101 = load i32, ptr %pos_initialized, align 4, !tbaa !32
  %tobool110 = icmp ne i32 %101, 0
  br i1 %tobool110, label %if.else112, label %if.then111

if.then111:                                       ; preds = %sw.bb
  store i32 1, ptr %pos_initialized, align 4, !tbaa !32
  br label %if.end113

if.else112:                                       ; preds = %sw.bb
  store float 0.000000e+00, ptr %y, align 4, !tbaa !8
  br label %if.end113

if.end113:                                        ; preds = %if.else112, %if.then111
  %102 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %103 = load float, ptr %x, align 4, !tbaa !8
  %104 = load float, ptr %y, align 4, !tbaa !8
  %call114 = call i64 @vtklibharu_HPDF_Page_MoveTextPos(ptr noundef %102, float noundef %103, float noundef %104)
  store i64 %call114, ptr %ret, align 8, !tbaa !10
  %cmp115 = icmp ne i64 %call114, 0
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.end113
  %105 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %105, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup222

if.end118:                                        ; preds = %if.end113
  br label %sw.epilog

sw.bb119:                                         ; preds = %while.end
  %106 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix120 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %106, i32 0, i32 9
  %107 = load float, ptr %left.addr, align 4, !tbaa !8
  %108 = load float, ptr %right.addr, align 4, !tbaa !8
  %109 = load float, ptr %left.addr, align 4, !tbaa !8
  %sub121 = fsub float %108, %109
  %110 = load float, ptr %rw, align 4, !tbaa !8
  %sub122 = fsub float %sub121, %110
  %div123 = fdiv float %sub122, 2.000000e+00
  %add124 = fadd float %107, %div123
  %111 = load float, ptr %top.addr, align 4, !tbaa !8
  call void @TextPos_AbsToRel(ptr noundef byval(%struct._HPDF_TransMatrix) align 8 %text_matrix120, float noundef %add124, float noundef %111, ptr noundef %x, ptr noundef %y)
  %112 = load i32, ptr %pos_initialized, align 4, !tbaa !32
  %tobool125 = icmp ne i32 %112, 0
  br i1 %tobool125, label %if.else127, label %if.then126

if.then126:                                       ; preds = %sw.bb119
  store i32 1, ptr %pos_initialized, align 4, !tbaa !32
  br label %if.end128

if.else127:                                       ; preds = %sw.bb119
  store float 0.000000e+00, ptr %y, align 4, !tbaa !8
  br label %if.end128

if.end128:                                        ; preds = %if.else127, %if.then126
  %113 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %114 = load float, ptr %x, align 4, !tbaa !8
  %115 = load float, ptr %y, align 4, !tbaa !8
  %call129 = call i64 @vtklibharu_HPDF_Page_MoveTextPos(ptr noundef %113, float noundef %114, float noundef %115)
  store i64 %call129, ptr %ret, align 8, !tbaa !10
  %cmp130 = icmp ne i64 %call129, 0
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.end128
  %116 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %116, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup222

if.end133:                                        ; preds = %if.end128
  br label %sw.epilog

sw.bb134:                                         ; preds = %while.end
  %117 = load i32, ptr %pos_initialized, align 4, !tbaa !32
  %tobool135 = icmp ne i32 %117, 0
  br i1 %tobool135, label %if.end143, label %if.then136

if.then136:                                       ; preds = %sw.bb134
  store i32 1, ptr %pos_initialized, align 4, !tbaa !32
  %118 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix137 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %118, i32 0, i32 9
  %119 = load float, ptr %left.addr, align 4, !tbaa !8
  %120 = load float, ptr %top.addr, align 4, !tbaa !8
  call void @TextPos_AbsToRel(ptr noundef byval(%struct._HPDF_TransMatrix) align 8 %text_matrix137, float noundef %119, float noundef %120, ptr noundef %x, ptr noundef %y)
  %121 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %122 = load float, ptr %x, align 4, !tbaa !8
  %123 = load float, ptr %y, align 4, !tbaa !8
  %call138 = call i64 @vtklibharu_HPDF_Page_MoveTextPos(ptr noundef %121, float noundef %122, float noundef %123)
  store i64 %call138, ptr %ret, align 8, !tbaa !10
  %cmp139 = icmp ne i64 %call138, 0
  br i1 %cmp139, label %if.then141, label %if.end142

if.then141:                                       ; preds = %if.then136
  %124 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %124, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup222

if.end142:                                        ; preds = %if.then136
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %sw.bb134
  %125 = load i32, ptr %LineBreak, align 4, !tbaa !32
  %tobool144 = icmp ne i32 %125, 0
  br i1 %tobool144, label %if.then148, label %lor.lhs.false145

lor.lhs.false145:                                 ; preds = %if.end143
  %126 = load i32, ptr %num_rest, align 4, !tbaa !32
  %cmp146 = icmp ule i32 %126, 0
  br i1 %cmp146, label %if.then148, label %if.else154

if.then148:                                       ; preds = %lor.lhs.false145, %if.end143
  %127 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %128 = load float, ptr %save_char_space, align 4, !tbaa !8
  %call149 = call i64 @vtklibharu_HPDF_Page_SetCharSpace(ptr noundef %127, float noundef %128)
  store i64 %call149, ptr %ret, align 8, !tbaa !10
  %cmp150 = icmp ne i64 %call149, 0
  br i1 %cmp150, label %if.then152, label %if.end153

if.then152:                                       ; preds = %if.then148
  %129 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %129, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup222

if.end153:                                        ; preds = %if.then148
  store i32 0, ptr %char_space_changed, align 4, !tbaa !32
  br label %if.end193

if.else154:                                       ; preds = %lor.lhs.false145
  call void @llvm.lifetime.start.p0(i64 4, ptr %x_adjust) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr %state) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 0, ptr %i, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_char) #8
  store i32 0, ptr %num_char, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %encoder) #8
  %130 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate155 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %130, i32 0, i32 5
  %131 = load ptr, ptr %gstate155, align 8, !tbaa !22
  %font156 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %131, i32 0, i32 21
  %132 = load ptr, ptr %font156, align 8, !tbaa !64
  %attr157 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %132, i32 0, i32 11
  %133 = load ptr, ptr %attr157, align 8, !tbaa !12
  %encoder158 = getelementptr inbounds %struct._HPDF_FontAttr_Rec, ptr %133, i32 0, i32 5
  %134 = load ptr, ptr %encoder158, align 8, !tbaa !80
  store ptr %134, ptr %encoder, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_ptr) #8
  %135 = load ptr, ptr %ptr, align 8, !tbaa !4
  store ptr %135, ptr %tmp_ptr, align 8, !tbaa !4
  %136 = load ptr, ptr %encoder, align 8, !tbaa !4
  %137 = load ptr, ptr %tmp_ptr, align 8, !tbaa !4
  %138 = load i32, ptr %tmp_len, align 4, !tbaa !32
  call void @vtklibharu_HPDF_Encoder_SetParseText(ptr noundef %136, ptr noundef %state, ptr noundef %137, i32 noundef %138)
  br label %while.cond159

while.cond159:                                    ; preds = %cleanup.cont, %if.else154
  %139 = load ptr, ptr %tmp_ptr, align 8, !tbaa !4
  %140 = load i8, ptr %139, align 1, !tbaa !28
  %tobool160 = icmp ne i8 %140, 0
  br i1 %tobool160, label %while.body161, label %while.end172

while.body161:                                    ; preds = %while.cond159
  call void @llvm.lifetime.start.p0(i64 4, ptr %btype) #8
  %141 = load ptr, ptr %encoder, align 8, !tbaa !4
  %call162 = call i32 @vtklibharu_HPDF_Encoder_ByteType(ptr noundef %141, ptr noundef %state)
  store i32 %call162, ptr %btype, align 4, !tbaa !28
  %142 = load i32, ptr %btype, align 4, !tbaa !28
  %cmp163 = icmp ne i32 %142, 2
  br i1 %cmp163, label %if.then165, label %if.end166

if.then165:                                       ; preds = %while.body161
  %143 = load i32, ptr %num_char, align 4, !tbaa !32
  %inc = add i32 %143, 1
  store i32 %inc, ptr %num_char, align 4, !tbaa !32
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %while.body161
  %144 = load i32, ptr %i, align 4, !tbaa !32
  %inc167 = add i32 %144, 1
  store i32 %inc167, ptr %i, align 4, !tbaa !32
  %145 = load i32, ptr %i, align 4, !tbaa !32
  %146 = load i32, ptr %tmp_len, align 4, !tbaa !32
  %cmp168 = icmp uge i32 %145, %146
  br i1 %cmp168, label %if.then170, label %if.end171

if.then170:                                       ; preds = %if.end166
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end171:                                        ; preds = %if.end166
  %147 = load ptr, ptr %tmp_ptr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %147, i32 1
  store ptr %incdec.ptr, ptr %tmp_ptr, align 8, !tbaa !4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end171, %if.then170
  call void @llvm.lifetime.end.p0(i64 4, ptr %btype) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 8, label %while.end172
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond159, !llvm.loop !109

while.end172:                                     ; preds = %cleanup, %while.cond159
  %148 = load i32, ptr %num_char, align 4, !tbaa !32
  %cmp173 = icmp eq i32 %148, 0
  br i1 %cmp173, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end172
  br label %cond.end

cond.false:                                       ; preds = %while.end172
  %149 = load float, ptr %right.addr, align 4, !tbaa !8
  %150 = load float, ptr %left.addr, align 4, !tbaa !8
  %sub175 = fsub float %149, %150
  %151 = load float, ptr %rw, align 4, !tbaa !8
  %sub176 = fsub float %sub175, %151
  %152 = load i32, ptr %num_char, align 4, !tbaa !32
  %sub177 = sub i32 %152, 1
  %conv178 = uitofp i32 %sub177 to float
  %div179 = fdiv float %sub176, %conv178
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ 0.000000e+00, %cond.true ], [ %div179, %cond.false ]
  store float %cond, ptr %x_adjust, align 4, !tbaa !8
  %153 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %154 = load float, ptr %x_adjust, align 4, !tbaa !8
  %call180 = call i64 @vtklibharu_HPDF_Page_SetCharSpace(ptr noundef %153, float noundef %154)
  store i64 %call180, ptr %ret, align 8, !tbaa !10
  %cmp181 = icmp ne i64 %call180, 0
  br i1 %cmp181, label %if.then183, label %if.end184

if.then183:                                       ; preds = %cond.end
  %155 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %155, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup185

if.end184:                                        ; preds = %cond.end
  store i32 1, ptr %char_space_changed, align 4, !tbaa !32
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup185

cleanup185:                                       ; preds = %if.end184, %if.then183
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_ptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %encoder) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_char) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr %state) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %x_adjust) #8
  %cleanup.dest191 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest191, label %cleanup222 [
    i32 0, label %cleanup.cont192
  ]

cleanup.cont192:                                  ; preds = %cleanup185
  br label %if.end193

if.end193:                                        ; preds = %cleanup.cont192, %if.end153
  br label %sw.epilog

sw.default:                                       ; preds = %while.end
  %156 = load i32, ptr %pos_initialized, align 4, !tbaa !32
  %tobool194 = icmp ne i32 %156, 0
  br i1 %tobool194, label %if.end202, label %if.then195

if.then195:                                       ; preds = %sw.default
  store i32 1, ptr %pos_initialized, align 4, !tbaa !32
  %157 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix196 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %157, i32 0, i32 9
  %158 = load float, ptr %left.addr, align 4, !tbaa !8
  %159 = load float, ptr %top.addr, align 4, !tbaa !8
  call void @TextPos_AbsToRel(ptr noundef byval(%struct._HPDF_TransMatrix) align 8 %text_matrix196, float noundef %158, float noundef %159, ptr noundef %x, ptr noundef %y)
  %160 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %161 = load float, ptr %x, align 4, !tbaa !8
  %162 = load float, ptr %y, align 4, !tbaa !8
  %call197 = call i64 @vtklibharu_HPDF_Page_MoveTextPos(ptr noundef %160, float noundef %161, float noundef %162)
  store i64 %call197, ptr %ret, align 8, !tbaa !10
  %cmp198 = icmp ne i64 %call197, 0
  br i1 %cmp198, label %if.then200, label %if.end201

if.then200:                                       ; preds = %if.then195
  %163 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %163, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup222

if.end201:                                        ; preds = %if.then195
  br label %if.end202

if.end202:                                        ; preds = %if.end201, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end202, %if.end193, %if.end133, %if.end118
  %164 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %165 = load ptr, ptr %ptr, align 8, !tbaa !4
  %166 = load i32, ptr %tmp_len, align 4, !tbaa !32
  %call203 = call i64 @InternalShowTextNextLine(ptr noundef %164, ptr noundef %165, i32 noundef %166)
  %cmp204 = icmp ne i64 %call203, 0
  br i1 %cmp204, label %if.then206, label %if.end209

if.then206:                                       ; preds = %sw.epilog
  %167 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error207 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %167, i32 0, i32 2
  %168 = load ptr, ptr %error207, align 8, !tbaa !17
  %call208 = call i64 @vtklibharu_HPDF_CheckError(ptr noundef %168)
  store i64 %call208, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup222

if.end209:                                        ; preds = %sw.epilog
  %169 = load i32, ptr %num_rest, align 4, !tbaa !32
  %cmp210 = icmp ule i32 %169, 0
  br i1 %cmp210, label %if.then212, label %if.end213

if.then212:                                       ; preds = %if.end209
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup222

if.end213:                                        ; preds = %if.end209
  %170 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %170, i32 0, i32 8
  %y214 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos, i32 0, i32 1
  %171 = load float, ptr %y214, align 4, !tbaa !78
  %172 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate215 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %172, i32 0, i32 5
  %173 = load ptr, ptr %gstate215, align 8, !tbaa !22
  %text_leading216 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %173, i32 0, i32 10
  %174 = load float, ptr %text_leading216, align 8, !tbaa !63
  %sub217 = fsub float %171, %174
  %175 = load float, ptr %bottom.addr, align 4, !tbaa !8
  %cmp218 = fcmp olt float %sub217, %175
  br i1 %cmp218, label %if.then220, label %if.end221

if.then220:                                       ; preds = %if.end213
  store i32 1, ptr %is_insufficient_space, align 4, !tbaa !32
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup222

if.end221:                                        ; preds = %if.end213
  %176 = load i32, ptr %line_len, align 4, !tbaa !32
  %177 = load ptr, ptr %ptr, align 8, !tbaa !4
  %idx.ext = zext i32 %176 to i64
  %add.ptr = getelementptr inbounds i8, ptr %177, i64 %idx.ext
  store ptr %add.ptr, ptr %ptr, align 8, !tbaa !4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup222

cleanup222:                                       ; preds = %if.end221, %if.then220, %if.then212, %if.then206, %if.then200, %cleanup185, %if.then152, %if.then141, %if.then132, %if.then117, %if.then52
  call void @llvm.lifetime.end.p0(i64 4, ptr %LineBreak) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %rw) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %line_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #8
  %cleanup.dest228 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest228, label %cleanup245 [
    i32 0, label %cleanup.cont229
    i32 2, label %for.end
  ]

cleanup.cont229:                                  ; preds = %cleanup222
  br label %for.cond

for.end:                                          ; preds = %cleanup222
  %178 = load i32, ptr %char_space_changed, align 4, !tbaa !32
  %tobool230 = icmp ne i32 %178, 0
  br i1 %tobool230, label %land.lhs.true, label %if.end241

land.lhs.true:                                    ; preds = %for.end
  %179 = load float, ptr %save_char_space, align 4, !tbaa !8
  %180 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate231 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %180, i32 0, i32 5
  %181 = load ptr, ptr %gstate231, align 8, !tbaa !22
  %char_space232 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %181, i32 0, i32 7
  %182 = load float, ptr %char_space232, align 4, !tbaa !60
  %cmp233 = fcmp une float %179, %182
  br i1 %cmp233, label %if.then235, label %if.end241

if.then235:                                       ; preds = %land.lhs.true
  %183 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %184 = load float, ptr %save_char_space, align 4, !tbaa !8
  %call236 = call i64 @vtklibharu_HPDF_Page_SetCharSpace(ptr noundef %183, float noundef %184)
  store i64 %call236, ptr %ret, align 8, !tbaa !10
  %cmp237 = icmp ne i64 %call236, 0
  br i1 %cmp237, label %if.then239, label %if.end240

if.then239:                                       ; preds = %if.then235
  %185 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %185, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

if.end240:                                        ; preds = %if.then235
  br label %if.end241

if.end241:                                        ; preds = %if.end240, %land.lhs.true, %for.end
  %186 = load i32, ptr %is_insufficient_space, align 4, !tbaa !32
  %tobool242 = icmp ne i32 %186, 0
  br i1 %tobool242, label %if.then243, label %if.else244

if.then243:                                       ; preds = %if.end241
  store i64 4214, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

if.else244:                                       ; preds = %if.end241
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

cleanup245:                                       ; preds = %if.else244, %if.then243, %if.then239, %cleanup222, %if.then17, %if.then13, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %char_space_changed) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %bbox) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_rest) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_insufficient_space) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %save_char_space) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos_initialized) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %187 = load i64, ptr %retval, align 8
  ret i64 %187

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare { <2 x float>, <2 x float> } @vtklibharu_HPDF_Font_GetBBox(ptr noundef) #2

declare i32 @vtklibharu_HPDF_StrLen(ptr noundef, i32 noundef) #2

declare i32 @vtklibharu_HPDF_Page_MeasureText(ptr noundef, ptr noundef, float noundef, i32 noundef, ptr noundef) #2

declare void @vtklibharu_HPDF_Encoder_SetParseText(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @vtklibharu_HPDF_Encoder_ByteType(ptr noundef, ptr noundef) #2

; Function Attrs: uwtable
define internal i64 @InternalShowTextNextLine(ptr noundef %page, ptr noundef %text, i32 noundef %len) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %text.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %tw = alloca float, align 4
  %font_attr = alloca ptr, align 8
  %encoder = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %encoded = alloca ptr, align 8
  %length = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store ptr %text, ptr %text.addr, align 8, !tbaa !4
  store i32 %len, ptr %len.addr, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %tw) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %font_attr) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %0, i32 0, i32 11
  %1 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %1, ptr %attr, align 8, !tbaa !4
  %2 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %gstate, align 8, !tbaa !22
  %font = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %3, i32 0, i32 21
  %4 = load ptr, ptr %font, align 8, !tbaa !64
  %attr2 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %4, i32 0, i32 11
  %5 = load ptr, ptr %attr2, align 8, !tbaa !12
  store ptr %5, ptr %font_attr, align 8, !tbaa !4
  %6 = load ptr, ptr %font_attr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct._HPDF_FontAttr_Rec, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %type, align 8, !tbaa !79
  %cmp = icmp eq i32 %7, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load ptr, ptr %font_attr, align 8, !tbaa !4
  %type3 = getelementptr inbounds %struct._HPDF_FontAttr_Rec, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %type3, align 8, !tbaa !79
  %cmp4 = icmp eq i32 %9, 3
  br i1 %cmp4, label %if.then, label %if.else32

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %encoder) #8
  %10 = load ptr, ptr %font_attr, align 8, !tbaa !4
  %encoder5 = getelementptr inbounds %struct._HPDF_FontAttr_Rec, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %encoder5, align 8, !tbaa !80
  store ptr %11, ptr %encoder, align 8, !tbaa !4
  %12 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %12, i32 0, i32 12
  %13 = load ptr, ptr %stream, align 8, !tbaa !18
  %call = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %13, ptr noundef @.str.72)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  %cmp6 = icmp ne i64 %call, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %14 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %14, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

if.end:                                           ; preds = %if.then
  %15 = load ptr, ptr %encoder, align 8, !tbaa !4
  %encode_text_fn = getelementptr inbounds %struct._HPDF_Encoder_Rec, ptr %15, i32 0, i32 7
  %16 = load ptr, ptr %encode_text_fn, align 8, !tbaa !81
  %cmp8 = icmp eq ptr %16, null
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %17 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream10 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %stream10, align 8, !tbaa !18
  %19 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %20 = load i32, ptr %len.addr, align 4, !tbaa !32
  %call11 = call i64 @vtklibharu_HPDF_Stream_WriteBinary(ptr noundef %18, ptr noundef %19, i32 noundef %20, ptr noundef null)
  store i64 %call11, ptr %ret, align 8, !tbaa !10
  %cmp12 = icmp ne i64 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then9
  %21 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %21, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

if.end14:                                         ; preds = %if.then9
  br label %if.end23

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %encoded) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #8
  %22 = load ptr, ptr %encoder, align 8, !tbaa !4
  %encode_text_fn15 = getelementptr inbounds %struct._HPDF_Encoder_Rec, ptr %22, i32 0, i32 7
  %23 = load ptr, ptr %encode_text_fn15, align 8, !tbaa !81
  %24 = load ptr, ptr %encoder, align 8, !tbaa !4
  %25 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %26 = load i32, ptr %len.addr, align 4, !tbaa !32
  %call16 = call ptr %23(ptr noundef %24, ptr noundef %25, i32 noundef %26, ptr noundef %length)
  store ptr %call16, ptr %encoded, align 8, !tbaa !4
  %27 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream17 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %stream17, align 8, !tbaa !18
  %29 = load ptr, ptr %encoded, align 8, !tbaa !4
  %30 = load i32, ptr %length, align 4, !tbaa !32
  %call18 = call i64 @vtklibharu_HPDF_Stream_WriteBinary(ptr noundef %28, ptr noundef %29, i32 noundef %30, ptr noundef null)
  store i64 %call18, ptr %ret, align 8, !tbaa !10
  %31 = load ptr, ptr %encoded, align 8, !tbaa !4
  call void @free(ptr noundef %31) #8
  %32 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp19 = icmp ne i64 %32, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.else
  %33 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %33, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.else
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then20
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %encoded) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end23

if.end23:                                         ; preds = %cleanup.cont, %if.end14
  %34 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream24 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %34, i32 0, i32 12
  %35 = load ptr, ptr %stream24, align 8, !tbaa !18
  %call25 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %35, ptr noundef @.str.73)
  store i64 %call25, ptr %ret, align 8, !tbaa !10
  %cmp26 = icmp ne i64 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  %36 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %36, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

if.end28:                                         ; preds = %if.end23
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

cleanup29:                                        ; preds = %if.end28, %if.then27, %cleanup, %if.then13, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %encoder) #8
  %cleanup.dest30 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest30, label %cleanup80 [
    i32 0, label %cleanup.cont31
  ]

cleanup.cont31:                                   ; preds = %cleanup29
  br label %if.end38

if.else32:                                        ; preds = %lor.lhs.false
  %37 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream33 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %37, i32 0, i32 12
  %38 = load ptr, ptr %stream33, align 8, !tbaa !18
  %39 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %40 = load i32, ptr %len.addr, align 4, !tbaa !32
  %call34 = call i64 @vtklibharu_HPDF_Stream_WriteEscapeText2(ptr noundef %38, ptr noundef %39, i32 noundef %40)
  store i64 %call34, ptr %ret, align 8, !tbaa !10
  %cmp35 = icmp ne i64 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.else32
  %41 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %41, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end37:                                         ; preds = %if.else32
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %cleanup.cont31
  %42 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream39 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %42, i32 0, i32 12
  %43 = load ptr, ptr %stream39, align 8, !tbaa !18
  %call40 = call i64 @vtklibharu_HPDF_Stream_WriteStr(ptr noundef %43, ptr noundef @.str.43)
  store i64 %call40, ptr %ret, align 8, !tbaa !10
  %cmp41 = icmp ne i64 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end38
  %44 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %44, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

if.end43:                                         ; preds = %if.end38
  %45 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %46 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %call44 = call float @vtklibharu_HPDF_Page_TextWidth(ptr noundef %45, ptr noundef %46)
  store float %call44, ptr %tw, align 4, !tbaa !8
  %47 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate45 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %47, i32 0, i32 5
  %48 = load ptr, ptr %gstate45, align 8, !tbaa !22
  %text_leading = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %48, i32 0, i32 10
  %49 = load float, ptr %text_leading, align 8, !tbaa !63
  %50 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %50, i32 0, i32 9
  %c = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix, i32 0, i32 2
  %51 = load float, ptr %c, align 8, !tbaa !72
  %52 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix46 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %52, i32 0, i32 9
  %x = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix46, i32 0, i32 4
  %53 = load float, ptr %x, align 8, !tbaa !73
  %neg = fneg float %49
  %54 = call float @llvm.fmuladd.f32(float %neg, float %51, float %53)
  store float %54, ptr %x, align 8, !tbaa !73
  %55 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate47 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %55, i32 0, i32 5
  %56 = load ptr, ptr %gstate47, align 8, !tbaa !22
  %text_leading48 = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %56, i32 0, i32 10
  %57 = load float, ptr %text_leading48, align 8, !tbaa !63
  %58 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix49 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %58, i32 0, i32 9
  %d = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix49, i32 0, i32 3
  %59 = load float, ptr %d, align 4, !tbaa !74
  %60 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix50 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %60, i32 0, i32 9
  %y = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix50, i32 0, i32 5
  %61 = load float, ptr %y, align 4, !tbaa !76
  %neg51 = fneg float %57
  %62 = call float @llvm.fmuladd.f32(float %neg51, float %59, float %61)
  store float %62, ptr %y, align 4, !tbaa !76
  %63 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix52 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %63, i32 0, i32 9
  %x53 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix52, i32 0, i32 4
  %64 = load float, ptr %x53, align 8, !tbaa !73
  %65 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %65, i32 0, i32 8
  %x54 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos, i32 0, i32 0
  store float %64, ptr %x54, align 8, !tbaa !77
  %66 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix55 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %66, i32 0, i32 9
  %y56 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix55, i32 0, i32 5
  %67 = load float, ptr %y56, align 4, !tbaa !76
  %68 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos57 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %68, i32 0, i32 8
  %y58 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos57, i32 0, i32 1
  store float %67, ptr %y58, align 4, !tbaa !78
  %69 = load ptr, ptr %attr, align 8, !tbaa !4
  %gstate59 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %69, i32 0, i32 5
  %70 = load ptr, ptr %gstate59, align 8, !tbaa !22
  %writing_mode = getelementptr inbounds %struct._HPDF_GState_Rec, ptr %70, i32 0, i32 23
  %71 = load i32, ptr %writing_mode, align 4, !tbaa !68
  %cmp60 = icmp eq i32 %71, 0
  br i1 %cmp60, label %if.then61, label %if.else68

if.then61:                                        ; preds = %if.end43
  %72 = load float, ptr %tw, align 4, !tbaa !8
  %73 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix62 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %73, i32 0, i32 9
  %a = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix62, i32 0, i32 0
  %74 = load float, ptr %a, align 8, !tbaa !71
  %75 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos63 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %75, i32 0, i32 8
  %x64 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos63, i32 0, i32 0
  %76 = load float, ptr %x64, align 8, !tbaa !77
  %77 = call float @llvm.fmuladd.f32(float %72, float %74, float %76)
  store float %77, ptr %x64, align 8, !tbaa !77
  %78 = load float, ptr %tw, align 4, !tbaa !8
  %79 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix65 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %79, i32 0, i32 9
  %b = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix65, i32 0, i32 1
  %80 = load float, ptr %b, align 4, !tbaa !75
  %81 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos66 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %81, i32 0, i32 8
  %y67 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos66, i32 0, i32 1
  %82 = load float, ptr %y67, align 4, !tbaa !78
  %83 = call float @llvm.fmuladd.f32(float %78, float %80, float %82)
  store float %83, ptr %y67, align 4, !tbaa !78
  br label %if.end79

if.else68:                                        ; preds = %if.end43
  %84 = load float, ptr %tw, align 4, !tbaa !8
  %85 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix69 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %85, i32 0, i32 9
  %b70 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix69, i32 0, i32 1
  %86 = load float, ptr %b70, align 4, !tbaa !75
  %87 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos71 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %87, i32 0, i32 8
  %x72 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos71, i32 0, i32 0
  %88 = load float, ptr %x72, align 8, !tbaa !77
  %neg73 = fneg float %84
  %89 = call float @llvm.fmuladd.f32(float %neg73, float %86, float %88)
  store float %89, ptr %x72, align 8, !tbaa !77
  %90 = load float, ptr %tw, align 4, !tbaa !8
  %91 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_matrix74 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %91, i32 0, i32 9
  %a75 = getelementptr inbounds %struct._HPDF_TransMatrix, ptr %text_matrix74, i32 0, i32 0
  %92 = load float, ptr %a75, align 8, !tbaa !71
  %93 = load ptr, ptr %attr, align 8, !tbaa !4
  %text_pos76 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %93, i32 0, i32 8
  %y77 = getelementptr inbounds %struct._HPDF_Point, ptr %text_pos76, i32 0, i32 1
  %94 = load float, ptr %y77, align 4, !tbaa !78
  %neg78 = fneg float %90
  %95 = call float @llvm.fmuladd.f32(float %neg78, float %92, float %94)
  store float %95, ptr %y77, align 4, !tbaa !78
  br label %if.end79

if.end79:                                         ; preds = %if.else68, %if.then61
  %96 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %96, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup80

cleanup80:                                        ; preds = %if.end79, %if.then42, %if.then36, %cleanup29
  call void @llvm.lifetime.end.p0(i64 8, ptr %font_attr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tw) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %97 = load i64, ptr %retval, align 8
  ret i64 %97
}

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_SetSlideShow(ptr noundef %page, i32 noundef %type, float noundef %disp_time, float noundef %trans_time) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %disp_time.addr = alloca float, align 4
  %trans_time.addr = alloca float, align 4
  %ret = alloca i64, align 8
  %dict = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store i32 %type, ptr %type.addr, align 4, !tbaa !28
  store float %disp_time, ptr %disp_time.addr, align 4, !tbaa !8
  store float %trans_time, ptr %trans_time.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  store i64 0, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %dict) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i32 @vtklibharu_HPDF_Page_Validate(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 4151, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load float, ptr %disp_time.addr, align 4, !tbaa !8
  %cmp = fcmp olt float %1, 0.000000e+00
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %error, align 8, !tbaa !17
  %4 = load float, ptr %disp_time.addr, align 4, !tbaa !8
  %conv = fptoui float %4 to i64
  %call2 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %3, i64 noundef 4215, i64 noundef %conv)
  store i64 %call2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = load float, ptr %trans_time.addr, align 4, !tbaa !8
  %cmp4 = fcmp olt float %5, 0.000000e+00
  br i1 %cmp4, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end3
  %6 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error7 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %error7, align 8, !tbaa !17
  %8 = load float, ptr %trans_time.addr, align 4, !tbaa !8
  %conv8 = fptoui float %8 to i64
  %call9 = call i64 @vtklibharu_HPDF_RaiseError(ptr noundef %7, i64 noundef 4216, i64 noundef %conv8)
  store i64 %call9, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %9 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %mmgr, align 8, !tbaa !40
  %call11 = call ptr @vtklibharu_HPDF_Dict_New(ptr noundef %10)
  store ptr %call11, ptr %dict, align 8, !tbaa !4
  %11 = load ptr, ptr %dict, align 8, !tbaa !4
  %tobool12 = icmp ne ptr %11, null
  br i1 %tobool12, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end10
  %12 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error14 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %error14, align 8, !tbaa !17
  %call15 = call i64 @vtklibharu_HPDF_Error_GetCode(ptr noundef %13)
  store i64 %call15, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %14 = load ptr, ptr %dict, align 8, !tbaa !4
  %call17 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %14, ptr noundef @.str.52, ptr noundef @.str.53)
  %cmp18 = icmp ne i64 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  br label %Fail

if.end21:                                         ; preds = %if.end16
  %15 = load ptr, ptr %dict, align 8, !tbaa !4
  %16 = load float, ptr %trans_time.addr, align 4, !tbaa !8
  %call22 = call i64 @vtklibharu_HPDF_Dict_AddReal(ptr noundef %15, ptr noundef @.str.54, float noundef %16)
  %cmp23 = icmp ne i64 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end21
  br label %Fail

if.end26:                                         ; preds = %if.end21
  %17 = load i32, ptr %type.addr, align 4, !tbaa !28
  switch i32 %17, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
    i32 2, label %sw.bb35
    i32 3, label %sw.bb40
    i32 4, label %sw.bb45
    i32 5, label %sw.bb52
    i32 6, label %sw.bb59
    i32 7, label %sw.bb66
    i32 8, label %sw.bb73
    i32 9, label %sw.bb78
    i32 10, label %sw.bb83
    i32 11, label %sw.bb88
    i32 12, label %sw.bb93
    i32 13, label %sw.bb96
    i32 14, label %sw.bb101
    i32 15, label %sw.bb106
    i32 16, label %sw.bb111
  ]

sw.bb:                                            ; preds = %if.end26
  %18 = load ptr, ptr %dict, align 8, !tbaa !4
  %call27 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %18, ptr noundef @.str.55, ptr noundef @.str.56)
  %19 = load i64, ptr %ret, align 8, !tbaa !10
  %add = add i64 %19, %call27
  store i64 %add, ptr %ret, align 8, !tbaa !10
  %20 = load ptr, ptr %dict, align 8, !tbaa !4
  %call28 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %20, ptr noundef @.str.57, i32 noundef 0)
  %21 = load i64, ptr %ret, align 8, !tbaa !10
  %add29 = add i64 %21, %call28
  store i64 %add29, ptr %ret, align 8, !tbaa !10
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end26
  %22 = load ptr, ptr %dict, align 8, !tbaa !4
  %call31 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %22, ptr noundef @.str.55, ptr noundef @.str.56)
  %23 = load i64, ptr %ret, align 8, !tbaa !10
  %add32 = add i64 %23, %call31
  store i64 %add32, ptr %ret, align 8, !tbaa !10
  %24 = load ptr, ptr %dict, align 8, !tbaa !4
  %call33 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %24, ptr noundef @.str.57, i32 noundef 90)
  %25 = load i64, ptr %ret, align 8, !tbaa !10
  %add34 = add i64 %25, %call33
  store i64 %add34, ptr %ret, align 8, !tbaa !10
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end26
  %26 = load ptr, ptr %dict, align 8, !tbaa !4
  %call36 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %26, ptr noundef @.str.55, ptr noundef @.str.56)
  %27 = load i64, ptr %ret, align 8, !tbaa !10
  %add37 = add i64 %27, %call36
  store i64 %add37, ptr %ret, align 8, !tbaa !10
  %28 = load ptr, ptr %dict, align 8, !tbaa !4
  %call38 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %28, ptr noundef @.str.57, i32 noundef 180)
  %29 = load i64, ptr %ret, align 8, !tbaa !10
  %add39 = add i64 %29, %call38
  store i64 %add39, ptr %ret, align 8, !tbaa !10
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end26
  %30 = load ptr, ptr %dict, align 8, !tbaa !4
  %call41 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %30, ptr noundef @.str.55, ptr noundef @.str.56)
  %31 = load i64, ptr %ret, align 8, !tbaa !10
  %add42 = add i64 %31, %call41
  store i64 %add42, ptr %ret, align 8, !tbaa !10
  %32 = load ptr, ptr %dict, align 8, !tbaa !4
  %call43 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %32, ptr noundef @.str.57, i32 noundef 270)
  %33 = load i64, ptr %ret, align 8, !tbaa !10
  %add44 = add i64 %33, %call43
  store i64 %add44, ptr %ret, align 8, !tbaa !10
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end26
  %34 = load ptr, ptr %dict, align 8, !tbaa !4
  %call46 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %34, ptr noundef @.str.55, ptr noundef @.str.58)
  %35 = load i64, ptr %ret, align 8, !tbaa !10
  %add47 = add i64 %35, %call46
  store i64 %add47, ptr %ret, align 8, !tbaa !10
  %36 = load ptr, ptr %dict, align 8, !tbaa !4
  %call48 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %36, ptr noundef @.str.59, ptr noundef @.str.60)
  %37 = load i64, ptr %ret, align 8, !tbaa !10
  %add49 = add i64 %37, %call48
  store i64 %add49, ptr %ret, align 8, !tbaa !10
  %38 = load ptr, ptr %dict, align 8, !tbaa !4
  %call50 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %38, ptr noundef @.str.61, ptr noundef @.str.62)
  %39 = load i64, ptr %ret, align 8, !tbaa !10
  %add51 = add i64 %39, %call50
  store i64 %add51, ptr %ret, align 8, !tbaa !10
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end26
  %40 = load ptr, ptr %dict, align 8, !tbaa !4
  %call53 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %40, ptr noundef @.str.55, ptr noundef @.str.58)
  %41 = load i64, ptr %ret, align 8, !tbaa !10
  %add54 = add i64 %41, %call53
  store i64 %add54, ptr %ret, align 8, !tbaa !10
  %42 = load ptr, ptr %dict, align 8, !tbaa !4
  %call55 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %42, ptr noundef @.str.59, ptr noundef @.str.60)
  %43 = load i64, ptr %ret, align 8, !tbaa !10
  %add56 = add i64 %43, %call55
  store i64 %add56, ptr %ret, align 8, !tbaa !10
  %44 = load ptr, ptr %dict, align 8, !tbaa !4
  %call57 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %44, ptr noundef @.str.61, ptr noundef @.str.63)
  %45 = load i64, ptr %ret, align 8, !tbaa !10
  %add58 = add i64 %45, %call57
  store i64 %add58, ptr %ret, align 8, !tbaa !10
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end26
  %46 = load ptr, ptr %dict, align 8, !tbaa !4
  %call60 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %46, ptr noundef @.str.55, ptr noundef @.str.58)
  %47 = load i64, ptr %ret, align 8, !tbaa !10
  %add61 = add i64 %47, %call60
  store i64 %add61, ptr %ret, align 8, !tbaa !10
  %48 = load ptr, ptr %dict, align 8, !tbaa !4
  %call62 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %48, ptr noundef @.str.59, ptr noundef @.str.64)
  %49 = load i64, ptr %ret, align 8, !tbaa !10
  %add63 = add i64 %49, %call62
  store i64 %add63, ptr %ret, align 8, !tbaa !10
  %50 = load ptr, ptr %dict, align 8, !tbaa !4
  %call64 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %50, ptr noundef @.str.61, ptr noundef @.str.62)
  %51 = load i64, ptr %ret, align 8, !tbaa !10
  %add65 = add i64 %51, %call64
  store i64 %add65, ptr %ret, align 8, !tbaa !10
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end26
  %52 = load ptr, ptr %dict, align 8, !tbaa !4
  %call67 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %52, ptr noundef @.str.55, ptr noundef @.str.58)
  %53 = load i64, ptr %ret, align 8, !tbaa !10
  %add68 = add i64 %53, %call67
  store i64 %add68, ptr %ret, align 8, !tbaa !10
  %54 = load ptr, ptr %dict, align 8, !tbaa !4
  %call69 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %54, ptr noundef @.str.59, ptr noundef @.str.64)
  %55 = load i64, ptr %ret, align 8, !tbaa !10
  %add70 = add i64 %55, %call69
  store i64 %add70, ptr %ret, align 8, !tbaa !10
  %56 = load ptr, ptr %dict, align 8, !tbaa !4
  %call71 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %56, ptr noundef @.str.61, ptr noundef @.str.63)
  %57 = load i64, ptr %ret, align 8, !tbaa !10
  %add72 = add i64 %57, %call71
  store i64 %add72, ptr %ret, align 8, !tbaa !10
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end26
  %58 = load ptr, ptr %dict, align 8, !tbaa !4
  %call74 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %58, ptr noundef @.str.55, ptr noundef @.str.65)
  %59 = load i64, ptr %ret, align 8, !tbaa !10
  %add75 = add i64 %59, %call74
  store i64 %add75, ptr %ret, align 8, !tbaa !10
  %60 = load ptr, ptr %dict, align 8, !tbaa !4
  %call76 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %60, ptr noundef @.str.61, ptr noundef @.str.62)
  %61 = load i64, ptr %ret, align 8, !tbaa !10
  %add77 = add i64 %61, %call76
  store i64 %add77, ptr %ret, align 8, !tbaa !10
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end26
  %62 = load ptr, ptr %dict, align 8, !tbaa !4
  %call79 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %62, ptr noundef @.str.55, ptr noundef @.str.65)
  %63 = load i64, ptr %ret, align 8, !tbaa !10
  %add80 = add i64 %63, %call79
  store i64 %add80, ptr %ret, align 8, !tbaa !10
  %64 = load ptr, ptr %dict, align 8, !tbaa !4
  %call81 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %64, ptr noundef @.str.61, ptr noundef @.str.63)
  %65 = load i64, ptr %ret, align 8, !tbaa !10
  %add82 = add i64 %65, %call81
  store i64 %add82, ptr %ret, align 8, !tbaa !10
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end26
  %66 = load ptr, ptr %dict, align 8, !tbaa !4
  %call84 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %66, ptr noundef @.str.55, ptr noundef @.str.66)
  %67 = load i64, ptr %ret, align 8, !tbaa !10
  %add85 = add i64 %67, %call84
  store i64 %add85, ptr %ret, align 8, !tbaa !10
  %68 = load ptr, ptr %dict, align 8, !tbaa !4
  %call86 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %68, ptr noundef @.str.59, ptr noundef @.str.60)
  %69 = load i64, ptr %ret, align 8, !tbaa !10
  %add87 = add i64 %69, %call86
  store i64 %add87, ptr %ret, align 8, !tbaa !10
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.end26
  %70 = load ptr, ptr %dict, align 8, !tbaa !4
  %call89 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %70, ptr noundef @.str.55, ptr noundef @.str.66)
  %71 = load i64, ptr %ret, align 8, !tbaa !10
  %add90 = add i64 %71, %call89
  store i64 %add90, ptr %ret, align 8, !tbaa !10
  %72 = load ptr, ptr %dict, align 8, !tbaa !4
  %call91 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %72, ptr noundef @.str.59, ptr noundef @.str.64)
  %73 = load i64, ptr %ret, align 8, !tbaa !10
  %add92 = add i64 %73, %call91
  store i64 %add92, ptr %ret, align 8, !tbaa !10
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.end26
  %74 = load ptr, ptr %dict, align 8, !tbaa !4
  %call94 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %74, ptr noundef @.str.55, ptr noundef @.str.67)
  %75 = load i64, ptr %ret, align 8, !tbaa !10
  %add95 = add i64 %75, %call94
  store i64 %add95, ptr %ret, align 8, !tbaa !10
  br label %sw.epilog

sw.bb96:                                          ; preds = %if.end26
  %76 = load ptr, ptr %dict, align 8, !tbaa !4
  %call97 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %76, ptr noundef @.str.55, ptr noundef @.str.68)
  %77 = load i64, ptr %ret, align 8, !tbaa !10
  %add98 = add i64 %77, %call97
  store i64 %add98, ptr %ret, align 8, !tbaa !10
  %78 = load ptr, ptr %dict, align 8, !tbaa !4
  %call99 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %78, ptr noundef @.str.57, i32 noundef 0)
  %79 = load i64, ptr %ret, align 8, !tbaa !10
  %add100 = add i64 %79, %call99
  store i64 %add100, ptr %ret, align 8, !tbaa !10
  br label %sw.epilog

sw.bb101:                                         ; preds = %if.end26
  %80 = load ptr, ptr %dict, align 8, !tbaa !4
  %call102 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %80, ptr noundef @.str.55, ptr noundef @.str.68)
  %81 = load i64, ptr %ret, align 8, !tbaa !10
  %add103 = add i64 %81, %call102
  store i64 %add103, ptr %ret, align 8, !tbaa !10
  %82 = load ptr, ptr %dict, align 8, !tbaa !4
  %call104 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %82, ptr noundef @.str.57, i32 noundef 270)
  %83 = load i64, ptr %ret, align 8, !tbaa !10
  %add105 = add i64 %83, %call104
  store i64 %add105, ptr %ret, align 8, !tbaa !10
  br label %sw.epilog

sw.bb106:                                         ; preds = %if.end26
  %84 = load ptr, ptr %dict, align 8, !tbaa !4
  %call107 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %84, ptr noundef @.str.55, ptr noundef @.str.68)
  %85 = load i64, ptr %ret, align 8, !tbaa !10
  %add108 = add i64 %85, %call107
  store i64 %add108, ptr %ret, align 8, !tbaa !10
  %86 = load ptr, ptr %dict, align 8, !tbaa !4
  %call109 = call i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef %86, ptr noundef @.str.57, i32 noundef 315)
  %87 = load i64, ptr %ret, align 8, !tbaa !10
  %add110 = add i64 %87, %call109
  store i64 %add110, ptr %ret, align 8, !tbaa !10
  br label %sw.epilog

sw.bb111:                                         ; preds = %if.end26
  %88 = load ptr, ptr %dict, align 8, !tbaa !4
  %call112 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %88, ptr noundef @.str.55, ptr noundef @.str.69)
  %89 = load i64, ptr %ret, align 8, !tbaa !10
  %add113 = add i64 %89, %call112
  store i64 %add113, ptr %ret, align 8, !tbaa !10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end26
  %90 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error114 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %90, i32 0, i32 2
  %91 = load ptr, ptr %error114, align 8, !tbaa !17
  %call115 = call i64 @vtklibharu_HPDF_SetError(ptr noundef %91, i64 noundef 4217, i64 noundef 0)
  %92 = load i64, ptr %ret, align 8, !tbaa !10
  %add116 = add i64 %92, %call115
  store i64 %add116, ptr %ret, align 8, !tbaa !10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb111, %sw.bb106, %sw.bb101, %sw.bb96, %sw.bb93, %sw.bb88, %sw.bb83, %sw.bb78, %sw.bb73, %sw.bb66, %sw.bb59, %sw.bb52, %sw.bb45, %sw.bb40, %sw.bb35, %sw.bb30, %sw.bb
  %93 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp117 = icmp ne i64 %93, 0
  br i1 %cmp117, label %if.then119, label %if.end120

if.then119:                                       ; preds = %sw.epilog
  br label %Fail

if.end120:                                        ; preds = %sw.epilog
  %94 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %95 = load float, ptr %disp_time.addr, align 4, !tbaa !8
  %call121 = call i64 @vtklibharu_HPDF_Dict_AddReal(ptr noundef %94, ptr noundef @.str.70, float noundef %95)
  %cmp122 = icmp ne i64 %call121, 0
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %if.end120
  br label %Fail

if.end125:                                        ; preds = %if.end120
  %96 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %97 = load ptr, ptr %dict, align 8, !tbaa !4
  %call126 = call i64 @vtklibharu_HPDF_Dict_Add(ptr noundef %96, ptr noundef @.str.53, ptr noundef %97)
  store i64 %call126, ptr %ret, align 8, !tbaa !10
  %cmp127 = icmp ne i64 %call126, 0
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.end125
  %98 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %98, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end130:                                        ; preds = %if.end125
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

Fail:                                             ; preds = %if.then124, %if.then119, %if.then25, %if.then20
  %99 = load ptr, ptr %dict, align 8, !tbaa !4
  call void @vtklibharu_HPDF_Dict_Free(ptr noundef %99)
  %100 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error131 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %100, i32 0, i32 2
  %101 = load ptr, ptr %error131, align 8, !tbaa !17
  %call132 = call i64 @vtklibharu_HPDF_Error_GetCode(ptr noundef %101)
  store i64 %call132, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %Fail, %if.end130, %if.then129, %if.then13, %if.then6, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dict) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %102 = load i64, ptr %retval, align 8
  ret i64 %102
}

declare i32 @vtklibharu_HPDF_Page_Validate(ptr noundef) #2

declare ptr @vtklibharu_HPDF_Dict_New(ptr noundef) #2

declare i64 @vtklibharu_HPDF_Error_GetCode(ptr noundef) #2

declare i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @vtklibharu_HPDF_Dict_AddReal(ptr noundef, ptr noundef, float noundef) #2

declare i64 @vtklibharu_HPDF_Dict_AddNumber(ptr noundef, ptr noundef, i32 noundef) #2

declare i64 @vtklibharu_HPDF_SetError(ptr noundef, i64 noundef, i64 noundef) #2

declare i64 @vtklibharu_HPDF_Dict_Add(ptr noundef, ptr noundef, ptr noundef) #2

declare void @vtklibharu_HPDF_Dict_Free(ptr noundef) #2

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_New_Content_Stream(ptr noundef %page, ptr noundef %new_stream) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %new_stream.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %attr = alloca ptr, align 8
  %filter = alloca i32, align 4
  %contents_array = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store ptr %new_stream, ptr %new_stream.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %filter) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %contents_array) #8
  %1 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr1 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %1, i32 0, i32 11
  %2 = load ptr, ptr %attr1, align 8, !tbaa !12
  store ptr %2, ptr %attr, align 8, !tbaa !4
  %3 = load ptr, ptr %attr, align 8, !tbaa !4
  %contents = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %contents, align 8, !tbaa !110
  %filter2 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %4, i32 0, i32 9
  %5 = load i32, ptr %filter2, align 8, !tbaa !111
  store i32 %5, ptr %filter, align 4, !tbaa !32
  %6 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call3 = call ptr @vtklibharu_HPDF_Dict_GetItem(ptr noundef %6, ptr noundef @.str.71, i16 noundef zeroext 16)
  store ptr %call3, ptr %contents_array, align 8, !tbaa !4
  %7 = load ptr, ptr %contents_array, align 8, !tbaa !4
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.end13, label %if.then

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %error, align 8, !tbaa !17
  call void @vtklibharu_HPDF_Error_Reset(ptr noundef %9)
  %10 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %mmgr, align 8, !tbaa !40
  %call4 = call ptr @vtklibharu_HPDF_Array_New(ptr noundef %11)
  store ptr %call4, ptr %contents_array, align 8, !tbaa !4
  %12 = load ptr, ptr %contents_array, align 8, !tbaa !4
  %tobool5 = icmp ne ptr %12, null
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  %13 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error7 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %error7, align 8, !tbaa !17
  %call8 = call i64 @vtklibharu_HPDF_Error_GetCode(ptr noundef %14)
  store i64 %call8, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = load ptr, ptr %contents_array, align 8, !tbaa !4
  %16 = load ptr, ptr %attr, align 8, !tbaa !4
  %contents9 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %16, i32 0, i32 11
  %17 = load ptr, ptr %contents9, align 8, !tbaa !110
  %call10 = call i64 @vtklibharu_HPDF_Array_Add(ptr noundef %15, ptr noundef %17)
  %18 = load i64, ptr %ret, align 8, !tbaa !10
  %add = add i64 %18, %call10
  store i64 %add, ptr %ret, align 8, !tbaa !10
  %19 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %contents_array, align 8, !tbaa !4
  %call11 = call i64 @vtklibharu_HPDF_Dict_Add(ptr noundef %19, ptr noundef @.str.71, ptr noundef %20)
  %21 = load i64, ptr %ret, align 8, !tbaa !10
  %add12 = add i64 %21, %call11
  store i64 %add12, ptr %ret, align 8, !tbaa !10
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry
  %22 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %mmgr14 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %mmgr14, align 8, !tbaa !40
  %24 = load ptr, ptr %attr, align 8, !tbaa !4
  %xref = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %24, i32 0, i32 13
  %25 = load ptr, ptr %xref, align 8, !tbaa !112
  %call15 = call ptr @vtklibharu_HPDF_DictStream_New(ptr noundef %23, ptr noundef %25)
  %26 = load ptr, ptr %attr, align 8, !tbaa !4
  %contents16 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %26, i32 0, i32 11
  store ptr %call15, ptr %contents16, align 8, !tbaa !110
  %27 = load i32, ptr %filter, align 4, !tbaa !32
  %28 = load ptr, ptr %attr, align 8, !tbaa !4
  %contents17 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %28, i32 0, i32 11
  %29 = load ptr, ptr %contents17, align 8, !tbaa !110
  %filter18 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %29, i32 0, i32 9
  store i32 %27, ptr %filter18, align 8, !tbaa !111
  %30 = load ptr, ptr %attr, align 8, !tbaa !4
  %contents19 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %30, i32 0, i32 11
  %31 = load ptr, ptr %contents19, align 8, !tbaa !110
  %stream = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %31, i32 0, i32 8
  %32 = load ptr, ptr %stream, align 8, !tbaa !113
  %33 = load ptr, ptr %attr, align 8, !tbaa !4
  %stream20 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %33, i32 0, i32 12
  store ptr %32, ptr %stream20, align 8, !tbaa !18
  %34 = load ptr, ptr %attr, align 8, !tbaa !4
  %contents21 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %34, i32 0, i32 11
  %35 = load ptr, ptr %contents21, align 8, !tbaa !110
  %tobool22 = icmp ne ptr %35, null
  br i1 %tobool22, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.end13
  %36 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error24 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %error24, align 8, !tbaa !17
  %call25 = call i64 @vtklibharu_HPDF_Error_GetCode(ptr noundef %37)
  store i64 %call25, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end13
  %38 = load ptr, ptr %contents_array, align 8, !tbaa !4
  %39 = load ptr, ptr %attr, align 8, !tbaa !4
  %contents27 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %39, i32 0, i32 11
  %40 = load ptr, ptr %contents27, align 8, !tbaa !110
  %call28 = call i64 @vtklibharu_HPDF_Array_Add(ptr noundef %38, ptr noundef %40)
  %41 = load i64, ptr %ret, align 8, !tbaa !10
  %add29 = add i64 %41, %call28
  store i64 %add29, ptr %ret, align 8, !tbaa !10
  %42 = load i64, ptr %ret, align 8, !tbaa !10
  %cmp = icmp eq i64 %42, 0
  br i1 %cmp, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.end26
  %43 = load ptr, ptr %new_stream.addr, align 8, !tbaa !4
  %cmp30 = icmp ne ptr %43, null
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %land.lhs.true
  %44 = load ptr, ptr %attr, align 8, !tbaa !4
  %contents32 = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %44, i32 0, i32 11
  %45 = load ptr, ptr %contents32, align 8, !tbaa !110
  %46 = load ptr, ptr %new_stream.addr, align 8, !tbaa !4
  store ptr %45, ptr %46, align 8, !tbaa !4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %land.lhs.true, %if.end26
  %47 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %47, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then23, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %contents_array) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %filter) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %48 = load i64, ptr %retval, align 8
  ret i64 %48
}

declare ptr @vtklibharu_HPDF_Dict_GetItem(ptr noundef, ptr noundef, i16 noundef zeroext) #2

declare void @vtklibharu_HPDF_Error_Reset(ptr noundef) #2

declare ptr @vtklibharu_HPDF_Array_New(ptr noundef) #2

declare i64 @vtklibharu_HPDF_Array_Add(ptr noundef, ptr noundef) #2

declare ptr @vtklibharu_HPDF_DictStream_New(ptr noundef, ptr noundef) #2

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Page_Insert_Shared_Content_Stream(ptr noundef %page, ptr noundef %shared_stream) #0 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %shared_stream.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %contents_array = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store ptr %shared_stream, ptr %shared_stream.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @vtklibharu_HPDF_Page_CheckState(ptr noundef %0, i32 noundef 5)
  store i64 %call, ptr %ret, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %contents_array) #8
  %1 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call1 = call ptr @vtklibharu_HPDF_Dict_GetItem(ptr noundef %1, ptr noundef @.str.71, i16 noundef zeroext 16)
  store ptr %call1, ptr %contents_array, align 8, !tbaa !4
  %2 = load ptr, ptr %contents_array, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #8
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %error, align 8, !tbaa !17
  call void @vtklibharu_HPDF_Error_Reset(ptr noundef %4)
  %5 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %mmgr, align 8, !tbaa !40
  %call2 = call ptr @vtklibharu_HPDF_Array_New(ptr noundef %6)
  store ptr %call2, ptr %contents_array, align 8, !tbaa !4
  %7 = load ptr, ptr %contents_array, align 8, !tbaa !4
  %tobool3 = icmp ne ptr %7, null
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %8 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %error5 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %error5, align 8, !tbaa !17
  %call6 = call i64 @vtklibharu_HPDF_Error_GetCode(ptr noundef %9)
  store i64 %call6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %attr7 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %10, i32 0, i32 11
  %11 = load ptr, ptr %attr7, align 8, !tbaa !12
  store ptr %11, ptr %attr, align 8, !tbaa !4
  %12 = load ptr, ptr %contents_array, align 8, !tbaa !4
  %13 = load ptr, ptr %attr, align 8, !tbaa !4
  %contents = getelementptr inbounds %struct._HPDF_PageAttr_Rec, ptr %13, i32 0, i32 11
  %14 = load ptr, ptr %contents, align 8, !tbaa !110
  %call8 = call i64 @vtklibharu_HPDF_Array_Add(ptr noundef %12, ptr noundef %14)
  %15 = load i64, ptr %ret, align 8, !tbaa !10
  %add = add i64 %15, %call8
  store i64 %add, ptr %ret, align 8, !tbaa !10
  %16 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %contents_array, align 8, !tbaa !4
  %call9 = call i64 @vtklibharu_HPDF_Dict_Add(ptr noundef %16, ptr noundef @.str.71, ptr noundef %17)
  %18 = load i64, ptr %ret, align 8, !tbaa !10
  %add10 = add i64 %18, %call9
  store i64 %add10, ptr %ret, align 8, !tbaa !10
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end11

if.end11:                                         ; preds = %cleanup.cont, %entry
  %19 = load ptr, ptr %contents_array, align 8, !tbaa !4
  %20 = load ptr, ptr %shared_stream.addr, align 8, !tbaa !4
  %call12 = call i64 @vtklibharu_HPDF_Array_Add(ptr noundef %19, ptr noundef %20)
  %21 = load i64, ptr %ret, align 8, !tbaa !10
  %add13 = add i64 %21, %call12
  store i64 %add13, ptr %ret, align 8, !tbaa !10
  %22 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call14 = call i64 @vtklibharu_HPDF_Page_New_Content_Stream(ptr noundef %22, ptr noundef null)
  %23 = load i64, ptr %ret, align 8, !tbaa !10
  %add15 = add i64 %23, %call14
  store i64 %add15, ptr %ret, align 8, !tbaa !10
  %24 = load i64, ptr %ret, align 8, !tbaa !10
  store i64 %24, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %if.end11, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %contents_array) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8
  %25 = load i64, ptr %retval, align 8
  ret i64 %25
}

; Function Attrs: nounwind
declare double @cos(double noundef) #7

; Function Attrs: nounwind
declare double @sin(double noundef) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i64 @vtklibharu_HPDF_Stream_WriteBinary(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #7

declare i64 @vtklibharu_HPDF_Stream_WriteEscapeText(ptr noundef, ptr noundef) #2

declare i64 @vtklibharu_HPDF_Stream_WriteEscapeText2(ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

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
!9 = !{!"float", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !5, i64 88}
!13 = !{!"_HPDF_Dict_Rec", !14, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !15, i64 72, !5, i64 80, !5, i64 88}
!14 = !{!"_HPDF_Obj_Header", !15, i64 0, !16, i64 4, !16, i64 6}
!15 = !{!"int", !6, i64 0}
!16 = !{!"short", !6, i64 0}
!17 = !{!13, !5, i64 16}
!18 = !{!19, !5, i64 112}
!19 = !{!"_HPDF_PageAttr_Rec", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !21, i64 72, !16, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !15, i64 128, !5, i64 136}
!20 = !{!"_HPDF_Point", !9, i64 0, !9, i64 4}
!21 = !{!"_HPDF_TransMatrix", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!22 = !{!19, !5, i64 40}
!23 = !{!24, !9, i64 24}
!24 = !{!"_HPDF_GState_Rec", !21, i64 0, !9, i64 24, !6, i64 28, !6, i64 32, !9, i64 36, !25, i64 40, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !6, i64 100, !9, i64 104, !6, i64 108, !6, i64 112, !26, i64 116, !26, i64 128, !27, i64 140, !27, i64 156, !9, i64 172, !9, i64 176, !5, i64 184, !9, i64 192, !6, i64 196, !5, i64 200, !15, i64 208}
!25 = !{!"_HPDF_DashMode", !6, i64 0, !15, i64 32, !9, i64 36}
!26 = !{!"_HPDF_RGBColor", !9, i64 0, !9, i64 4, !9, i64 8}
!27 = !{!"_HPDF_CMYKColor", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!28 = !{!6, !6, i64 0}
!29 = !{!24, !6, i64 28}
!30 = !{!24, !6, i64 32}
!31 = !{!24, !9, i64 36}
!32 = !{!15, !15, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{i64 0, i64 32, !28, i64 32, i64 4, !32, i64 36, i64 4, !8}
!36 = !{!24, !15, i64 72}
!37 = !{!24, !9, i64 76}
!38 = distinct !{!38, !34}
!39 = !{!24, !9, i64 80}
!40 = !{!13, !5, i64 8}
!41 = !{!13, !16, i64 6}
!42 = !{!24, !5, i64 200}
!43 = !{i64 0, i64 4, !8, i64 4, i64 4, !8, i64 8, i64 4, !8, i64 12, i64 4, !8, i64 16, i64 4, !8, i64 20, i64 4, !8}
!44 = !{!21, !9, i64 0}
!45 = !{!21, !9, i64 4}
!46 = !{!24, !9, i64 0}
!47 = !{!24, !9, i64 4}
!48 = !{!21, !9, i64 8}
!49 = !{!21, !9, i64 12}
!50 = !{!24, !9, i64 8}
!51 = !{!24, !9, i64 12}
!52 = !{!21, !9, i64 16}
!53 = !{!24, !9, i64 16}
!54 = !{!21, !9, i64 20}
!55 = !{!24, !9, i64 20}
!56 = !{!19, !9, i64 56}
!57 = !{!19, !9, i64 60}
!58 = !{i64 0, i64 4, !8, i64 4, i64 4, !8}
!59 = !{!19, !16, i64 96}
!60 = !{!24, !9, i64 84}
!61 = !{!24, !9, i64 88}
!62 = !{!24, !9, i64 92}
!63 = !{!24, !9, i64 96}
!64 = !{!24, !5, i64 184}
!65 = !{!24, !9, i64 192}
!66 = !{!67, !6, i64 4}
!67 = !{!"_HPDF_FontAttr_Rec", !6, i64 0, !6, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80}
!68 = !{!24, !6, i64 196}
!69 = !{!24, !6, i64 100}
!70 = !{!24, !9, i64 104}
!71 = !{!19, !9, i64 72}
!72 = !{!19, !9, i64 80}
!73 = !{!19, !9, i64 88}
!74 = !{!19, !9, i64 84}
!75 = !{!19, !9, i64 76}
!76 = !{!19, !9, i64 92}
!77 = !{!19, !9, i64 64}
!78 = !{!19, !9, i64 68}
!79 = !{!67, !6, i64 0}
!80 = !{!67, !5, i64 32}
!81 = !{!82, !5, i64 176}
!82 = !{!"_HPDF_Encoder_Rec", !15, i64 0, !6, i64 4, !5, i64 136, !5, i64 144, !6, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208}
!83 = !{!24, !9, i64 172}
!84 = !{!24, !6, i64 108}
!85 = !{!24, !9, i64 176}
!86 = !{!24, !6, i64 112}
!87 = !{!24, !9, i64 116}
!88 = !{!24, !9, i64 120}
!89 = !{!24, !9, i64 124}
!90 = !{!24, !9, i64 128}
!91 = !{!24, !9, i64 132}
!92 = !{!24, !9, i64 136}
!93 = !{!24, !9, i64 140}
!94 = !{!24, !9, i64 144}
!95 = !{!24, !9, i64 148}
!96 = !{!24, !9, i64 152}
!97 = !{!24, !9, i64 156}
!98 = !{!24, !9, i64 160}
!99 = !{!24, !9, i64 164}
!100 = !{!24, !9, i64 168}
!101 = distinct !{!101, !34}
!102 = !{!103, !103, i64 0}
!103 = !{!"double", !6, i64 0}
!104 = !{i64 0, i64 4, !8, i64 4, i64 4, !8, i64 8, i64 4, !8, i64 12, i64 4, !8}
!105 = !{!106, !9, i64 12}
!106 = !{!"_HPDF_Rect", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!107 = !{!106, !9, i64 4}
!108 = distinct !{!108, !34}
!109 = distinct !{!109, !34}
!110 = !{!19, !5, i64 104}
!111 = !{!13, !15, i64 72}
!112 = !{!19, !5, i64 120}
!113 = !{!13, !5, i64 64}
