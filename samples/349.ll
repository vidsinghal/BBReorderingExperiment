; ModuleID = 'samples/349.bc'
source_filename = "/local-ssd/vtk-kb2jughcg3bneb23yemli5qgcptmb7ii-build/aidengro/spack-stage-vtk-9.2.6-kb2jughcg3bneb23yemli5qgcptmb7ii/spack-src/ThirdParty/libharu/vtklibharu/src/hpdf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._HPDF_Dict_Rec = type { %struct._HPDF_Obj_Header, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct._HPDF_Obj_Header = type { i32, i16, i16 }
%struct._HPDF_String_Rec = type { %struct._HPDF_Obj_Header, ptr, ptr, ptr, ptr, i32 }
%struct._HPDF_Date = type { i32, i32, i32, i32, i32, i32, i8, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"D:\00", align 1
@HPDF_INFO_ATTR_NAMES = internal constant [11 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr null], align 16
@.str.1 = private unnamed_addr constant [13 x i8] c"CreationDate\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ModDate\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Author\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Creator\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Producer\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Subject\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Keywords\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Trapped\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"GTS_PDFXVersion\00", align 1

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Info_SetInfoAttr(ptr noundef %info, i32 noundef %type, ptr noundef %value, ptr noundef %encoder) #0 {
entry:
  %retval = alloca i64, align 8
  %info.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %encoder.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  store i32 %type, ptr %type.addr, align 4, !tbaa !8
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  store ptr %encoder, ptr %encoder.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #4
  %0 = load i32, ptr %type.addr, align 4, !tbaa !8
  %call = call ptr @InfoTypeToName(i32 noundef %0)
  store ptr %call, ptr %name, align 8, !tbaa !4
  %1 = load i32, ptr %type.addr, align 4, !tbaa !8
  %cmp = icmp ule i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %error, align 8, !tbaa !9
  %call1 = call i64 @vtklibharu_HPDF_SetError(ptr noundef %3, i64 noundef 4153, i64 noundef 0)
  store i64 %call1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %type.addr, align 4, !tbaa !8
  %cmp2 = icmp eq i32 %4, 8
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %name, align 8, !tbaa !4
  %7 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %call4 = call i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store i64 %call4, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %name, align 8, !tbaa !4
  %10 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %mmgr, align 8, !tbaa !14
  %12 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %encoder.addr, align 8, !tbaa !4
  %call6 = call ptr @vtklibharu_HPDF_String_New(ptr noundef %11, ptr noundef %12, ptr noundef %13)
  %call7 = call i64 @vtklibharu_HPDF_Dict_Add(ptr noundef %8, ptr noundef %9, ptr noundef %call6)
  store i64 %call7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #4
  %14 = load i64, ptr %retval, align 8
  ret i64 %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal ptr @InfoTypeToName(i32 noundef %type) #2 {
entry:
  %type.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #4
  %0 = load i32, ptr %type.addr, align 4, !tbaa !8
  store i32 %0, ptr %idx, align 4, !tbaa !15
  %1 = load i32, ptr %idx, align 4, !tbaa !15
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [11 x ptr], ptr @HPDF_INFO_ATTR_NAMES, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #4
  ret ptr %2
}

declare i64 @vtklibharu_HPDF_SetError(ptr noundef, i64 noundef, i64 noundef) #3

declare i64 @vtklibharu_HPDF_Dict_AddName(ptr noundef, ptr noundef, ptr noundef) #3

declare i64 @vtklibharu_HPDF_Dict_Add(ptr noundef, ptr noundef, ptr noundef) #3

declare ptr @vtklibharu_HPDF_String_New(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: uwtable
define ptr @vtklibharu_HPDF_Info_GetInfoAttr(ptr noundef %info, i32 noundef %type) #0 {
entry:
  %retval = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %name = alloca ptr, align 8
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  store i32 %type, ptr %type.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #4
  %0 = load i32, ptr %type.addr, align 4, !tbaa !8
  %call = call ptr @InfoTypeToName(i32 noundef %0)
  store ptr %call, ptr %name, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #4
  %1 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %name, align 8, !tbaa !4
  %call1 = call ptr @vtklibharu_HPDF_Dict_GetItem(ptr noundef %2, ptr noundef %3, i16 noundef zeroext 7)
  store ptr %call1, ptr %s, align 8, !tbaa !4
  %4 = load ptr, ptr %s, align 8, !tbaa !4
  %tobool2 = icmp ne ptr %4, null
  br i1 %tobool2, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %5 = load ptr, ptr %s, align 8, !tbaa !4
  %value = getelementptr inbounds %struct._HPDF_String_Rec, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %value, align 8, !tbaa !16
  store ptr %6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #4
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

declare ptr @vtklibharu_HPDF_Dict_GetItem(ptr noundef, ptr noundef, i16 noundef zeroext) #3

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Info_SetInfoDateAttr(ptr noundef %info, i32 noundef %type, ptr noundef byval(%struct._HPDF_Date) align 8 %value) #0 {
entry:
  %retval = alloca i64, align 8
  %info.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %tmp = alloca [24 x i8], align 16
  %ptmp = alloca ptr, align 8
  %name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  store i32 %type, ptr %type.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptmp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #4
  %0 = load i32, ptr %type.addr, align 4, !tbaa !8
  %call = call ptr @InfoTypeToName(i32 noundef %0)
  store ptr %call, ptr %name, align 8, !tbaa !4
  %1 = load i32, ptr %type.addr, align 4, !tbaa !8
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %error, align 8, !tbaa !9
  %call1 = call i64 @vtklibharu_HPDF_SetError(ptr noundef %3, i64 noundef 4153, i64 noundef 0)
  store i64 %call1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [24 x i8], ptr %tmp, i64 0, i64 0
  %call2 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %arraydecay, i8 noundef zeroext 0, i32 noundef 24)
  %month = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 1
  %4 = load i32, ptr %month, align 4, !tbaa !18
  %cmp3 = icmp slt i32 %4, 1
  br i1 %cmp3, label %if.then37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %month4 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 1
  %5 = load i32, ptr %month4, align 4, !tbaa !18
  %cmp5 = icmp slt i32 12, %5
  br i1 %cmp5, label %if.then37, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %day = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 2
  %6 = load i32, ptr %day, align 8, !tbaa !20
  %cmp7 = icmp slt i32 %6, 1
  br i1 %cmp7, label %if.then37, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %hour = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 3
  %7 = load i32, ptr %hour, align 4, !tbaa !21
  %cmp9 = icmp slt i32 23, %7
  br i1 %cmp9, label %if.then37, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %minutes = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 4
  %8 = load i32, ptr %minutes, align 8, !tbaa !22
  %cmp11 = icmp slt i32 59, %8
  br i1 %cmp11, label %if.then37, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %seconds = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 5
  %9 = load i32, ptr %seconds, align 4, !tbaa !23
  %cmp13 = icmp slt i32 59, %9
  br i1 %cmp13, label %if.then37, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %ind = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 6
  %10 = load i8, ptr %ind, align 8, !tbaa !24
  %conv = sext i8 %10 to i32
  %cmp15 = icmp ne i32 %conv, 43
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false31

land.lhs.true:                                    ; preds = %lor.lhs.false14
  %ind17 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 6
  %11 = load i8, ptr %ind17, align 8, !tbaa !24
  %conv18 = sext i8 %11 to i32
  %cmp19 = icmp ne i32 %conv18, 45
  br i1 %cmp19, label %land.lhs.true21, label %lor.lhs.false31

land.lhs.true21:                                  ; preds = %land.lhs.true
  %ind22 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 6
  %12 = load i8, ptr %ind22, align 8, !tbaa !24
  %conv23 = sext i8 %12 to i32
  %cmp24 = icmp ne i32 %conv23, 90
  br i1 %cmp24, label %land.lhs.true26, label %lor.lhs.false31

land.lhs.true26:                                  ; preds = %land.lhs.true21
  %ind27 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 6
  %13 = load i8, ptr %ind27, align 8, !tbaa !24
  %conv28 = sext i8 %13 to i32
  %cmp29 = icmp ne i32 %conv28, 32
  br i1 %cmp29, label %if.then37, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %land.lhs.true26, %land.lhs.true21, %land.lhs.true, %lor.lhs.false14
  %off_hour = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 7
  %14 = load i32, ptr %off_hour, align 4, !tbaa !25
  %cmp32 = icmp slt i32 23, %14
  br i1 %cmp32, label %if.then37, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false31
  %off_minutes = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 8
  %15 = load i32, ptr %off_minutes, align 8, !tbaa !26
  %cmp35 = icmp slt i32 59, %15
  br i1 %cmp35, label %if.then37, label %if.end40

if.then37:                                        ; preds = %lor.lhs.false34, %lor.lhs.false31, %land.lhs.true26, %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false, %if.end
  %16 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %error38 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %error38, align 8, !tbaa !9
  %call39 = call i64 @vtklibharu_HPDF_SetError(ptr noundef %17, i64 noundef 4130, i64 noundef 0)
  store i64 %call39, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %lor.lhs.false34
  %month41 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 1
  %18 = load i32, ptr %month41, align 4, !tbaa !18
  switch i32 %18, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 5, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 10, label %sw.bb
    i32 12, label %sw.bb
    i32 4, label %sw.bb49
    i32 6, label %sw.bb49
    i32 9, label %sw.bb49
    i32 11, label %sw.bb49
    i32 2, label %sw.bb57
  ]

sw.bb:                                            ; preds = %if.end40, %if.end40, %if.end40, %if.end40, %if.end40, %if.end40, %if.end40
  %day42 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 2
  %19 = load i32, ptr %day42, align 8, !tbaa !20
  %cmp43 = icmp sgt i32 %19, 31
  br i1 %cmp43, label %if.then45, label %if.end48

if.then45:                                        ; preds = %sw.bb
  %20 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %error46 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %error46, align 8, !tbaa !9
  %call47 = call i64 @vtklibharu_HPDF_SetError(ptr noundef %21, i64 noundef 4130, i64 noundef 0)
  store i64 %call47, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end48:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end40, %if.end40, %if.end40, %if.end40
  %day50 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 2
  %22 = load i32, ptr %day50, align 8, !tbaa !20
  %cmp51 = icmp sgt i32 %22, 30
  br i1 %cmp51, label %if.then53, label %if.end56

if.then53:                                        ; preds = %sw.bb49
  %23 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %error54 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %error54, align 8, !tbaa !9
  %call55 = call i64 @vtklibharu_HPDF_SetError(ptr noundef %24, i64 noundef 4130, i64 noundef 0)
  store i64 %call55, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %sw.bb49
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end40
  %day58 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 2
  %25 = load i32, ptr %day58, align 8, !tbaa !20
  %cmp59 = icmp sgt i32 %25, 29
  br i1 %cmp59, label %if.then78, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %sw.bb57
  %day62 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 2
  %26 = load i32, ptr %day62, align 8, !tbaa !20
  %cmp63 = icmp eq i32 %26, 29
  br i1 %cmp63, label %land.lhs.true65, label %if.end81

land.lhs.true65:                                  ; preds = %lor.lhs.false61
  %year = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 0
  %27 = load i32, ptr %year, align 8, !tbaa !27
  %rem = srem i32 %27, 4
  %cmp66 = icmp ne i32 %rem, 0
  br i1 %cmp66, label %if.then78, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %land.lhs.true65
  %year69 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 0
  %28 = load i32, ptr %year69, align 8, !tbaa !27
  %rem70 = srem i32 %28, 100
  %cmp71 = icmp eq i32 %rem70, 0
  br i1 %cmp71, label %land.lhs.true73, label %if.end81

land.lhs.true73:                                  ; preds = %lor.lhs.false68
  %year74 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 0
  %29 = load i32, ptr %year74, align 8, !tbaa !27
  %rem75 = srem i32 %29, 400
  %cmp76 = icmp ne i32 %rem75, 0
  br i1 %cmp76, label %if.then78, label %if.end81

if.then78:                                        ; preds = %land.lhs.true73, %land.lhs.true65, %sw.bb57
  %30 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %error79 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %error79, align 8, !tbaa !9
  %call80 = call i64 @vtklibharu_HPDF_SetError(ptr noundef %31, i64 noundef 4130, i64 noundef 0)
  store i64 %call80, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end81:                                         ; preds = %land.lhs.true73, %lor.lhs.false68, %lor.lhs.false61
  br label %sw.epilog

sw.default:                                       ; preds = %if.end40
  %32 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %error82 = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %error82, align 8, !tbaa !9
  %call83 = call i64 @vtklibharu_HPDF_SetError(ptr noundef %33, i64 noundef 4130, i64 noundef 0)
  store i64 %call83, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.end81, %if.end56, %if.end48
  %arraydecay84 = getelementptr inbounds [24 x i8], ptr %tmp, i64 0, i64 0
  %call85 = call ptr @vtklibharu_HPDF_MemCpy(ptr noundef %arraydecay84, ptr noundef @.str, i32 noundef 2)
  store ptr %call85, ptr %ptmp, align 8, !tbaa !4
  %34 = load ptr, ptr %ptmp, align 8, !tbaa !4
  %year86 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 0
  %35 = load i32, ptr %year86, align 8, !tbaa !27
  %call87 = call ptr @vtklibharu_HPDF_IToA2(ptr noundef %34, i32 noundef %35, i32 noundef 5)
  store ptr %call87, ptr %ptmp, align 8, !tbaa !4
  %36 = load ptr, ptr %ptmp, align 8, !tbaa !4
  %month88 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 1
  %37 = load i32, ptr %month88, align 4, !tbaa !18
  %call89 = call ptr @vtklibharu_HPDF_IToA2(ptr noundef %36, i32 noundef %37, i32 noundef 3)
  store ptr %call89, ptr %ptmp, align 8, !tbaa !4
  %38 = load ptr, ptr %ptmp, align 8, !tbaa !4
  %day90 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 2
  %39 = load i32, ptr %day90, align 8, !tbaa !20
  %call91 = call ptr @vtklibharu_HPDF_IToA2(ptr noundef %38, i32 noundef %39, i32 noundef 3)
  store ptr %call91, ptr %ptmp, align 8, !tbaa !4
  %40 = load ptr, ptr %ptmp, align 8, !tbaa !4
  %hour92 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 3
  %41 = load i32, ptr %hour92, align 4, !tbaa !21
  %call93 = call ptr @vtklibharu_HPDF_IToA2(ptr noundef %40, i32 noundef %41, i32 noundef 3)
  store ptr %call93, ptr %ptmp, align 8, !tbaa !4
  %42 = load ptr, ptr %ptmp, align 8, !tbaa !4
  %minutes94 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 4
  %43 = load i32, ptr %minutes94, align 8, !tbaa !22
  %call95 = call ptr @vtklibharu_HPDF_IToA2(ptr noundef %42, i32 noundef %43, i32 noundef 3)
  store ptr %call95, ptr %ptmp, align 8, !tbaa !4
  %44 = load ptr, ptr %ptmp, align 8, !tbaa !4
  %seconds96 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 5
  %45 = load i32, ptr %seconds96, align 4, !tbaa !23
  %call97 = call ptr @vtklibharu_HPDF_IToA2(ptr noundef %44, i32 noundef %45, i32 noundef 3)
  store ptr %call97, ptr %ptmp, align 8, !tbaa !4
  %ind98 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 6
  %46 = load i8, ptr %ind98, align 8, !tbaa !24
  %conv99 = sext i8 %46 to i32
  %cmp100 = icmp ne i32 %conv99, 32
  br i1 %cmp100, label %if.then102, label %if.end110

if.then102:                                       ; preds = %sw.epilog
  %ind103 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 6
  %47 = load i8, ptr %ind103, align 8, !tbaa !24
  %48 = load ptr, ptr %ptmp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %48, i32 1
  store ptr %incdec.ptr, ptr %ptmp, align 8, !tbaa !4
  store i8 %47, ptr %48, align 1, !tbaa !8
  %49 = load ptr, ptr %ptmp, align 8, !tbaa !4
  %off_hour104 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 7
  %50 = load i32, ptr %off_hour104, align 4, !tbaa !25
  %call105 = call ptr @vtklibharu_HPDF_IToA2(ptr noundef %49, i32 noundef %50, i32 noundef 3)
  store ptr %call105, ptr %ptmp, align 8, !tbaa !4
  %51 = load ptr, ptr %ptmp, align 8, !tbaa !4
  %incdec.ptr106 = getelementptr inbounds i8, ptr %51, i32 1
  store ptr %incdec.ptr106, ptr %ptmp, align 8, !tbaa !4
  store i8 39, ptr %51, align 1, !tbaa !8
  %52 = load ptr, ptr %ptmp, align 8, !tbaa !4
  %off_minutes107 = getelementptr inbounds %struct._HPDF_Date, ptr %value, i32 0, i32 8
  %53 = load i32, ptr %off_minutes107, align 8, !tbaa !26
  %call108 = call ptr @vtklibharu_HPDF_IToA2(ptr noundef %52, i32 noundef %53, i32 noundef 3)
  store ptr %call108, ptr %ptmp, align 8, !tbaa !4
  %54 = load ptr, ptr %ptmp, align 8, !tbaa !4
  %incdec.ptr109 = getelementptr inbounds i8, ptr %54, i32 1
  store ptr %incdec.ptr109, ptr %ptmp, align 8, !tbaa !4
  store i8 39, ptr %54, align 1, !tbaa !8
  br label %if.end110

if.end110:                                        ; preds = %if.then102, %sw.epilog
  %55 = load ptr, ptr %ptmp, align 8, !tbaa !4
  store i8 0, ptr %55, align 1, !tbaa !8
  %56 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %57 = load ptr, ptr %name, align 8, !tbaa !4
  %58 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Dict_Rec, ptr %58, i32 0, i32 1
  %59 = load ptr, ptr %mmgr, align 8, !tbaa !14
  %arraydecay111 = getelementptr inbounds [24 x i8], ptr %tmp, i64 0, i64 0
  %call112 = call ptr @vtklibharu_HPDF_String_New(ptr noundef %59, ptr noundef %arraydecay111, ptr noundef null)
  %call113 = call i64 @vtklibharu_HPDF_Dict_Add(ptr noundef %56, ptr noundef %57, ptr noundef %call112)
  store i64 %call113, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %sw.default, %if.then78, %if.then53, %if.then45, %if.then37, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptmp) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp) #4
  %60 = load i64, ptr %retval, align 8
  ret i64 %60
}

declare ptr @vtklibharu_HPDF_MemSet(ptr noundef, i8 noundef zeroext, i32 noundef) #3

declare ptr @vtklibharu_HPDF_MemCpy(ptr noundef, ptr noundef, i32 noundef) #3

declare ptr @vtklibharu_HPDF_IToA2(ptr noundef, i32 noundef, i32 noundef) #3

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !5, i64 16}
!10 = !{!"_HPDF_Dict_Rec", !11, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !12, i64 72, !5, i64 80, !5, i64 88}
!11 = !{!"_HPDF_Obj_Header", !12, i64 0, !13, i64 4, !13, i64 6}
!12 = !{!"int", !6, i64 0}
!13 = !{!"short", !6, i64 0}
!14 = !{!10, !5, i64 8}
!15 = !{!12, !12, i64 0}
!16 = !{!17, !5, i64 32}
!17 = !{!"_HPDF_String_Rec", !11, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !12, i64 40}
!18 = !{!19, !12, i64 4}
!19 = !{!"_HPDF_Date", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !6, i64 24, !12, i64 28, !12, i64 32}
!20 = !{!19, !12, i64 8}
!21 = !{!19, !12, i64 12}
!22 = !{!19, !12, i64 16}
!23 = !{!19, !12, i64 20}
!24 = !{!19, !6, i64 24}
!25 = !{!19, !12, i64 28}
!26 = !{!19, !12, i64 32}
!27 = !{!19, !12, i64 0}
