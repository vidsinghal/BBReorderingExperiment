; ModuleID = 'samples/650.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/base/flamec/main/FLA_Misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }
%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

@FLA_ZERO = external global %struct.FLA_Obj_view, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"integer      = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"float    = %e\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"double   = %e\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"scomplex = %e + %e\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"dcomplex = %e + %e\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@stdout = external global ptr, align 8

; Function Attrs: nounwind uwtable
define i32 @FLA_Obj_copy_view(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %B) #0 {
entry:
  %B.addr = alloca ptr, align 8
  %A_view = alloca %struct.FLA_Obj_view, align 8
  store ptr %B, ptr %B.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 56, ptr %A_view) #4
  %call = call i32 @FLA_Check_error_level()
  %cmp = icmp uge i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %B.addr, align 8, !tbaa !4
  %call1 = call i32 @FLA_Obj_copy_view_check(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %A_view, ptr align 8 %A, i64 56, i1 false), !tbaa.struct !8
  %call2 = call i64 @FLASH_Obj_scalar_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %m_inner = getelementptr inbounds %struct.FLA_Obj_view, ptr %A_view, i32 0, i32 4
  store i64 %call2, ptr %m_inner, align 8, !tbaa !11
  %call3 = call i64 @FLASH_Obj_scalar_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %n_inner = getelementptr inbounds %struct.FLA_Obj_view, ptr %A_view, i32 0, i32 5
  store i64 %call3, ptr %n_inner, align 8, !tbaa !13
  %1 = load ptr, ptr %B.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %A_view, i64 56, i1 false), !tbaa.struct !8
  call void @llvm.lifetime.end.p0(i64 56, ptr %A_view) #4
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Check_error_level() #2

declare i32 @FLA_Obj_copy_view_check(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i64 @FLASH_Obj_scalar_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLASH_Obj_scalar_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @FLA_Obj_extract_real_scalar(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef %alpha_value) #0 {
entry:
  %alpha_value.addr = alloca ptr, align 8
  store ptr %alpha_value, ptr %alpha_value.addr, align 8, !tbaa !4
  %call = call i32 @FLA_Check_error_level()
  %cmp = icmp uge i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %alpha_value.addr, align 8, !tbaa !4
  %call1 = call i32 @FLA_Obj_extract_real_scalar_check(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @FLA_Obj_is_single_precision(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8, !tbaa !14
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype, align 8, !tbaa !15
  %cmp4 = icmp eq i32 %2, 105
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then3
  %base5 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %3 = load ptr, ptr %base5, align 8, !tbaa !14
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8, !tbaa !18
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 8
  br label %cond.end

cond.false:                                       ; preds = %if.then3
  %base6 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %5 = load ptr, ptr %base6, align 8, !tbaa !14
  %buffer7 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer7, align 8, !tbaa !18
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8, !tbaa !19
  %base8 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %8 = load ptr, ptr %base8, align 8, !tbaa !14
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8, !tbaa !20
  %mul = mul i64 %7, %9
  %add.ptr9 = getelementptr inbounds float, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8, !tbaa !21
  %base10 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %11 = load ptr, ptr %base10, align 8, !tbaa !14
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8, !tbaa !22
  %mul11 = mul i64 %10, %12
  %add.ptr12 = getelementptr inbounds float, ptr %add.ptr9, i64 %mul11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr12, %cond.false ]
  %13 = load float, ptr %cond, align 4, !tbaa !23
  %conv = fpext float %13 to double
  %14 = load ptr, ptr %alpha_value.addr, align 8, !tbaa !4
  store double %conv, ptr %14, align 8, !tbaa !25
  br label %if.end36

if.else:                                          ; preds = %if.end
  %base13 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %15 = load ptr, ptr %base13, align 8, !tbaa !14
  %datatype14 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %datatype14, align 8, !tbaa !15
  %cmp15 = icmp eq i32 %16, 105
  br i1 %cmp15, label %cond.true17, label %cond.false21

cond.true17:                                      ; preds = %if.else
  %base18 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %17 = load ptr, ptr %base18, align 8, !tbaa !14
  %buffer19 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %buffer19, align 8, !tbaa !18
  %add.ptr20 = getelementptr inbounds i8, ptr %18, i64 16
  br label %cond.end34

cond.false21:                                     ; preds = %if.else
  %base22 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %19 = load ptr, ptr %base22, align 8, !tbaa !14
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 12
  %20 = load ptr, ptr %buffer23, align 8, !tbaa !18
  %offn24 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 1
  %21 = load i64, ptr %offn24, align 8, !tbaa !19
  %base25 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %22 = load ptr, ptr %base25, align 8, !tbaa !14
  %cs26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 5
  %23 = load i64, ptr %cs26, align 8, !tbaa !20
  %mul27 = mul i64 %21, %23
  %add.ptr28 = getelementptr inbounds double, ptr %20, i64 %mul27
  %offm29 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 0
  %24 = load i64, ptr %offm29, align 8, !tbaa !21
  %base30 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %25 = load ptr, ptr %base30, align 8, !tbaa !14
  %rs31 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %25, i32 0, i32 4
  %26 = load i64, ptr %rs31, align 8, !tbaa !22
  %mul32 = mul i64 %24, %26
  %add.ptr33 = getelementptr inbounds double, ptr %add.ptr28, i64 %mul32
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false21, %cond.true17
  %cond35 = phi ptr [ %add.ptr20, %cond.true17 ], [ %add.ptr33, %cond.false21 ]
  %27 = load double, ptr %cond35, align 8, !tbaa !25
  %28 = load ptr, ptr %alpha_value.addr, align 8, !tbaa !4
  store double %27, ptr %28, align 8, !tbaa !25
  br label %if.end36

if.end36:                                         ; preds = %cond.end34, %cond.end
  ret void
}

declare i32 @FLA_Obj_extract_real_scalar_check(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Obj_is_single_precision(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

; Function Attrs: nounwind uwtable
define void @FLA_Obj_extract_complex_scalar(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef %alpha_value) #0 {
entry:
  %alpha_value.addr = alloca ptr, align 8
  %temp = alloca %struct.scomplex, align 4
  store ptr %alpha_value, ptr %alpha_value.addr, align 8, !tbaa !4
  %call = call i32 @FLA_Check_error_level()
  %cmp = icmp uge i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %alpha_value.addr, align 8, !tbaa !4
  %call1 = call i32 @FLA_Obj_extract_complex_scalar_check(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @FLA_Obj_is_single_precision(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #4
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8, !tbaa !14
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype, align 8, !tbaa !15
  %cmp4 = icmp eq i32 %2, 105
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then3
  %base5 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %3 = load ptr, ptr %base5, align 8, !tbaa !14
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8, !tbaa !18
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 24
  br label %cond.end

cond.false:                                       ; preds = %if.then3
  %base6 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %5 = load ptr, ptr %base6, align 8, !tbaa !14
  %buffer7 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer7, align 8, !tbaa !18
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8, !tbaa !19
  %base8 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %8 = load ptr, ptr %base8, align 8, !tbaa !14
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8, !tbaa !20
  %mul = mul i64 %7, %9
  %add.ptr9 = getelementptr inbounds %struct.scomplex, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8, !tbaa !21
  %base10 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %11 = load ptr, ptr %base10, align 8, !tbaa !14
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8, !tbaa !22
  %mul11 = mul i64 %10, %12
  %add.ptr12 = getelementptr inbounds %struct.scomplex, ptr %add.ptr9, i64 %mul11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr12, %cond.false ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %temp, ptr align 4 %cond, i64 8, i1 false), !tbaa.struct !27
  %real = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 0
  %13 = load float, ptr %real, align 4, !tbaa !28
  %conv = fpext float %13 to double
  %14 = load ptr, ptr %alpha_value.addr, align 8, !tbaa !4
  %real13 = getelementptr inbounds %struct.dcomplex, ptr %14, i32 0, i32 0
  store double %conv, ptr %real13, align 8, !tbaa !30
  %imag = getelementptr inbounds %struct.scomplex, ptr %temp, i32 0, i32 1
  %15 = load float, ptr %imag, align 4, !tbaa !32
  %conv14 = fpext float %15 to double
  %16 = load ptr, ptr %alpha_value.addr, align 8, !tbaa !4
  %imag15 = getelementptr inbounds %struct.dcomplex, ptr %16, i32 0, i32 1
  store double %conv14, ptr %imag15, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #4
  br label %if.end39

if.else:                                          ; preds = %if.end
  %17 = load ptr, ptr %alpha_value.addr, align 8, !tbaa !4
  %base16 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %18 = load ptr, ptr %base16, align 8, !tbaa !14
  %datatype17 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %datatype17, align 8, !tbaa !15
  %cmp18 = icmp eq i32 %19, 105
  br i1 %cmp18, label %cond.true20, label %cond.false24

cond.true20:                                      ; preds = %if.else
  %base21 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %20 = load ptr, ptr %base21, align 8, !tbaa !14
  %buffer22 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %20, i32 0, i32 12
  %21 = load ptr, ptr %buffer22, align 8, !tbaa !18
  %add.ptr23 = getelementptr inbounds i8, ptr %21, i64 32
  br label %cond.end37

cond.false24:                                     ; preds = %if.else
  %base25 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %22 = load ptr, ptr %base25, align 8, !tbaa !14
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 12
  %23 = load ptr, ptr %buffer26, align 8, !tbaa !18
  %offn27 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 1
  %24 = load i64, ptr %offn27, align 8, !tbaa !19
  %base28 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %25 = load ptr, ptr %base28, align 8, !tbaa !14
  %cs29 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %25, i32 0, i32 5
  %26 = load i64, ptr %cs29, align 8, !tbaa !20
  %mul30 = mul i64 %24, %26
  %add.ptr31 = getelementptr inbounds %struct.dcomplex, ptr %23, i64 %mul30
  %offm32 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 0
  %27 = load i64, ptr %offm32, align 8, !tbaa !21
  %base33 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %28 = load ptr, ptr %base33, align 8, !tbaa !14
  %rs34 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 4
  %29 = load i64, ptr %rs34, align 8, !tbaa !22
  %mul35 = mul i64 %27, %29
  %add.ptr36 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr31, i64 %mul35
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false24, %cond.true20
  %cond38 = phi ptr [ %add.ptr23, %cond.true20 ], [ %add.ptr36, %cond.false24 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %17, ptr align 8 %cond38, i64 16, i1 false), !tbaa.struct !34
  br label %if.end39

if.end39:                                         ; preds = %cond.end37, %cond.end
  ret void
}

declare i32 @FLA_Obj_extract_complex_scalar_check(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @FLA_Obj_extract_real_part(ptr noundef byval(%struct.FLA_Obj_view) align 8 %a, ptr noundef byval(%struct.FLA_Obj_view) align 8 %b) #0 {
entry:
  %datatype = alloca i32, align 4
  %m = alloca i32, align 4
  %inc_a = alloca i32, align 4
  %inc_b = alloca i32, align 4
  %buff_a = alloca ptr, align 8
  %buff_b = alloca ptr, align 8
  %buff_a43 = alloca ptr, align 8
  %buff_b67 = alloca ptr, align 8
  %buff_a92 = alloca ptr, align 8
  %buff_b116 = alloca ptr, align 8
  %buff_a142 = alloca ptr, align 8
  %buff_b166 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_b) #4
  %call = call i32 @FLA_Check_error_level()
  %cmp = icmp uge i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @FLA_Obj_extract_real_part_check(ptr noundef byval(%struct.FLA_Obj_view) align 8 %a, ptr noundef byval(%struct.FLA_Obj_view) align 8 %b)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %a)
  store i32 %call2, ptr %datatype, align 4, !tbaa !35
  %call3 = call i64 @FLA_Obj_vector_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %a)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %m, align 4, !tbaa !35
  %call4 = call i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %a)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, ptr %inc_a, align 4, !tbaa !35
  %call6 = call i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %b)
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %inc_b, align 4, !tbaa !35
  %0 = load i32, ptr %datatype, align 4, !tbaa !35
  switch i32 %0, label %sw.epilog [
    i32 100, label %sw.bb
    i32 101, label %sw.bb42
    i32 102, label %sw.bb91
    i32 103, label %sw.bb141
  ]

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_a) #4
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8, !tbaa !14
  %datatype8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype8, align 8, !tbaa !15
  %cmp9 = icmp eq i32 %2, 105
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base11 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %3 = load ptr, ptr %base11, align 8, !tbaa !14
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8, !tbaa !18
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base12 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %5 = load ptr, ptr %base12, align 8, !tbaa !14
  %buffer13 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer13, align 8, !tbaa !18
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8, !tbaa !19
  %base14 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %8 = load ptr, ptr %base14, align 8, !tbaa !14
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8, !tbaa !20
  %mul = mul i64 %7, %9
  %add.ptr15 = getelementptr inbounds float, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8, !tbaa !21
  %base16 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %11 = load ptr, ptr %base16, align 8, !tbaa !14
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8, !tbaa !22
  %mul17 = mul i64 %10, %12
  %add.ptr18 = getelementptr inbounds float, ptr %add.ptr15, i64 %mul17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr18, %cond.false ]
  store ptr %cond, ptr %buff_a, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_b) #4
  %base19 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %13 = load ptr, ptr %base19, align 8, !tbaa !14
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %datatype20, align 8, !tbaa !15
  %cmp21 = icmp eq i32 %14, 105
  br i1 %cmp21, label %cond.true23, label %cond.false27

cond.true23:                                      ; preds = %cond.end
  %base24 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %15 = load ptr, ptr %base24, align 8, !tbaa !14
  %buffer25 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %buffer25, align 8, !tbaa !18
  %add.ptr26 = getelementptr inbounds i8, ptr %16, i64 8
  br label %cond.end40

cond.false27:                                     ; preds = %cond.end
  %base28 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %17 = load ptr, ptr %base28, align 8, !tbaa !14
  %buffer29 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %buffer29, align 8, !tbaa !18
  %offn30 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 1
  %19 = load i64, ptr %offn30, align 8, !tbaa !19
  %base31 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %20 = load ptr, ptr %base31, align 8, !tbaa !14
  %cs32 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %20, i32 0, i32 5
  %21 = load i64, ptr %cs32, align 8, !tbaa !20
  %mul33 = mul i64 %19, %21
  %add.ptr34 = getelementptr inbounds float, ptr %18, i64 %mul33
  %offm35 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 0
  %22 = load i64, ptr %offm35, align 8, !tbaa !21
  %base36 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %23 = load ptr, ptr %base36, align 8, !tbaa !14
  %rs37 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %23, i32 0, i32 4
  %24 = load i64, ptr %rs37, align 8, !tbaa !22
  %mul38 = mul i64 %22, %24
  %add.ptr39 = getelementptr inbounds float, ptr %add.ptr34, i64 %mul38
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false27, %cond.true23
  %cond41 = phi ptr [ %add.ptr26, %cond.true23 ], [ %add.ptr39, %cond.false27 ]
  store ptr %cond41, ptr %buff_b, align 8, !tbaa !4
  %25 = load i32, ptr %m, align 4, !tbaa !35
  %26 = load ptr, ptr %buff_a, align 8, !tbaa !4
  %27 = load i32, ptr %inc_a, align 4, !tbaa !35
  %28 = load ptr, ptr %buff_b, align 8, !tbaa !4
  %29 = load i32, ptr %inc_b, align 4, !tbaa !35
  call void @bl1_scopy(i32 noundef %25, ptr noundef %26, i32 noundef %27, ptr noundef %28, i32 noundef %29)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_b) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_a) #4
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_a43) #4
  %base44 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %30 = load ptr, ptr %base44, align 8, !tbaa !14
  %datatype45 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %30, i32 0, i32 0
  %31 = load i32, ptr %datatype45, align 8, !tbaa !15
  %cmp46 = icmp eq i32 %31, 105
  br i1 %cmp46, label %cond.true48, label %cond.false52

cond.true48:                                      ; preds = %sw.bb42
  %base49 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %32 = load ptr, ptr %base49, align 8, !tbaa !14
  %buffer50 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %32, i32 0, i32 12
  %33 = load ptr, ptr %buffer50, align 8, !tbaa !18
  %add.ptr51 = getelementptr inbounds i8, ptr %33, i64 16
  br label %cond.end65

cond.false52:                                     ; preds = %sw.bb42
  %base53 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %34 = load ptr, ptr %base53, align 8, !tbaa !14
  %buffer54 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 12
  %35 = load ptr, ptr %buffer54, align 8, !tbaa !18
  %offn55 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 1
  %36 = load i64, ptr %offn55, align 8, !tbaa !19
  %base56 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %37 = load ptr, ptr %base56, align 8, !tbaa !14
  %cs57 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %37, i32 0, i32 5
  %38 = load i64, ptr %cs57, align 8, !tbaa !20
  %mul58 = mul i64 %36, %38
  %add.ptr59 = getelementptr inbounds double, ptr %35, i64 %mul58
  %offm60 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 0
  %39 = load i64, ptr %offm60, align 8, !tbaa !21
  %base61 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %40 = load ptr, ptr %base61, align 8, !tbaa !14
  %rs62 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %40, i32 0, i32 4
  %41 = load i64, ptr %rs62, align 8, !tbaa !22
  %mul63 = mul i64 %39, %41
  %add.ptr64 = getelementptr inbounds double, ptr %add.ptr59, i64 %mul63
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false52, %cond.true48
  %cond66 = phi ptr [ %add.ptr51, %cond.true48 ], [ %add.ptr64, %cond.false52 ]
  store ptr %cond66, ptr %buff_a43, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_b67) #4
  %base68 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %42 = load ptr, ptr %base68, align 8, !tbaa !14
  %datatype69 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %42, i32 0, i32 0
  %43 = load i32, ptr %datatype69, align 8, !tbaa !15
  %cmp70 = icmp eq i32 %43, 105
  br i1 %cmp70, label %cond.true72, label %cond.false76

cond.true72:                                      ; preds = %cond.end65
  %base73 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %44 = load ptr, ptr %base73, align 8, !tbaa !14
  %buffer74 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %44, i32 0, i32 12
  %45 = load ptr, ptr %buffer74, align 8, !tbaa !18
  %add.ptr75 = getelementptr inbounds i8, ptr %45, i64 16
  br label %cond.end89

cond.false76:                                     ; preds = %cond.end65
  %base77 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %46 = load ptr, ptr %base77, align 8, !tbaa !14
  %buffer78 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %46, i32 0, i32 12
  %47 = load ptr, ptr %buffer78, align 8, !tbaa !18
  %offn79 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 1
  %48 = load i64, ptr %offn79, align 8, !tbaa !19
  %base80 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %49 = load ptr, ptr %base80, align 8, !tbaa !14
  %cs81 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %49, i32 0, i32 5
  %50 = load i64, ptr %cs81, align 8, !tbaa !20
  %mul82 = mul i64 %48, %50
  %add.ptr83 = getelementptr inbounds double, ptr %47, i64 %mul82
  %offm84 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 0
  %51 = load i64, ptr %offm84, align 8, !tbaa !21
  %base85 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %52 = load ptr, ptr %base85, align 8, !tbaa !14
  %rs86 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %52, i32 0, i32 4
  %53 = load i64, ptr %rs86, align 8, !tbaa !22
  %mul87 = mul i64 %51, %53
  %add.ptr88 = getelementptr inbounds double, ptr %add.ptr83, i64 %mul87
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false76, %cond.true72
  %cond90 = phi ptr [ %add.ptr75, %cond.true72 ], [ %add.ptr88, %cond.false76 ]
  store ptr %cond90, ptr %buff_b67, align 8, !tbaa !4
  %54 = load i32, ptr %m, align 4, !tbaa !35
  %55 = load ptr, ptr %buff_a43, align 8, !tbaa !4
  %56 = load i32, ptr %inc_a, align 4, !tbaa !35
  %57 = load ptr, ptr %buff_b67, align 8, !tbaa !4
  %58 = load i32, ptr %inc_b, align 4, !tbaa !35
  call void @bl1_dcopy(i32 noundef %54, ptr noundef %55, i32 noundef %56, ptr noundef %57, i32 noundef %58)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_b67) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_a43) #4
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_a92) #4
  %base93 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %59 = load ptr, ptr %base93, align 8, !tbaa !14
  %datatype94 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %59, i32 0, i32 0
  %60 = load i32, ptr %datatype94, align 8, !tbaa !15
  %cmp95 = icmp eq i32 %60, 105
  br i1 %cmp95, label %cond.true97, label %cond.false101

cond.true97:                                      ; preds = %sw.bb91
  %base98 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %61 = load ptr, ptr %base98, align 8, !tbaa !14
  %buffer99 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %61, i32 0, i32 12
  %62 = load ptr, ptr %buffer99, align 8, !tbaa !18
  %add.ptr100 = getelementptr inbounds i8, ptr %62, i64 8
  br label %cond.end114

cond.false101:                                    ; preds = %sw.bb91
  %base102 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %63 = load ptr, ptr %base102, align 8, !tbaa !14
  %buffer103 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %63, i32 0, i32 12
  %64 = load ptr, ptr %buffer103, align 8, !tbaa !18
  %offn104 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 1
  %65 = load i64, ptr %offn104, align 8, !tbaa !19
  %base105 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %66 = load ptr, ptr %base105, align 8, !tbaa !14
  %cs106 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %66, i32 0, i32 5
  %67 = load i64, ptr %cs106, align 8, !tbaa !20
  %mul107 = mul i64 %65, %67
  %add.ptr108 = getelementptr inbounds float, ptr %64, i64 %mul107
  %offm109 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 0
  %68 = load i64, ptr %offm109, align 8, !tbaa !21
  %base110 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %69 = load ptr, ptr %base110, align 8, !tbaa !14
  %rs111 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %69, i32 0, i32 4
  %70 = load i64, ptr %rs111, align 8, !tbaa !22
  %mul112 = mul i64 %68, %70
  %add.ptr113 = getelementptr inbounds float, ptr %add.ptr108, i64 %mul112
  br label %cond.end114

cond.end114:                                      ; preds = %cond.false101, %cond.true97
  %cond115 = phi ptr [ %add.ptr100, %cond.true97 ], [ %add.ptr113, %cond.false101 ]
  store ptr %cond115, ptr %buff_a92, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_b116) #4
  %base117 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %71 = load ptr, ptr %base117, align 8, !tbaa !14
  %datatype118 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %71, i32 0, i32 0
  %72 = load i32, ptr %datatype118, align 8, !tbaa !15
  %cmp119 = icmp eq i32 %72, 105
  br i1 %cmp119, label %cond.true121, label %cond.false125

cond.true121:                                     ; preds = %cond.end114
  %base122 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %73 = load ptr, ptr %base122, align 8, !tbaa !14
  %buffer123 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %73, i32 0, i32 12
  %74 = load ptr, ptr %buffer123, align 8, !tbaa !18
  %add.ptr124 = getelementptr inbounds i8, ptr %74, i64 8
  br label %cond.end138

cond.false125:                                    ; preds = %cond.end114
  %base126 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %75 = load ptr, ptr %base126, align 8, !tbaa !14
  %buffer127 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %75, i32 0, i32 12
  %76 = load ptr, ptr %buffer127, align 8, !tbaa !18
  %offn128 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 1
  %77 = load i64, ptr %offn128, align 8, !tbaa !19
  %base129 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %78 = load ptr, ptr %base129, align 8, !tbaa !14
  %cs130 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %78, i32 0, i32 5
  %79 = load i64, ptr %cs130, align 8, !tbaa !20
  %mul131 = mul i64 %77, %79
  %add.ptr132 = getelementptr inbounds float, ptr %76, i64 %mul131
  %offm133 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 0
  %80 = load i64, ptr %offm133, align 8, !tbaa !21
  %base134 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %81 = load ptr, ptr %base134, align 8, !tbaa !14
  %rs135 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %81, i32 0, i32 4
  %82 = load i64, ptr %rs135, align 8, !tbaa !22
  %mul136 = mul i64 %80, %82
  %add.ptr137 = getelementptr inbounds float, ptr %add.ptr132, i64 %mul136
  br label %cond.end138

cond.end138:                                      ; preds = %cond.false125, %cond.true121
  %cond139 = phi ptr [ %add.ptr124, %cond.true121 ], [ %add.ptr137, %cond.false125 ]
  store ptr %cond139, ptr %buff_b116, align 8, !tbaa !4
  %83 = load i32, ptr %m, align 4, !tbaa !35
  %84 = load ptr, ptr %buff_a92, align 8, !tbaa !4
  %85 = load i32, ptr %inc_a, align 4, !tbaa !35
  %mul140 = mul nsw i32 %85, 2
  %86 = load ptr, ptr %buff_b116, align 8, !tbaa !4
  %87 = load i32, ptr %inc_b, align 4, !tbaa !35
  call void @bl1_scopy(i32 noundef %83, ptr noundef %84, i32 noundef %mul140, ptr noundef %86, i32 noundef %87)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_b116) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_a92) #4
  br label %sw.epilog

sw.bb141:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_a142) #4
  %base143 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %88 = load ptr, ptr %base143, align 8, !tbaa !14
  %datatype144 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %88, i32 0, i32 0
  %89 = load i32, ptr %datatype144, align 8, !tbaa !15
  %cmp145 = icmp eq i32 %89, 105
  br i1 %cmp145, label %cond.true147, label %cond.false151

cond.true147:                                     ; preds = %sw.bb141
  %base148 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %90 = load ptr, ptr %base148, align 8, !tbaa !14
  %buffer149 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %90, i32 0, i32 12
  %91 = load ptr, ptr %buffer149, align 8, !tbaa !18
  %add.ptr150 = getelementptr inbounds i8, ptr %91, i64 16
  br label %cond.end164

cond.false151:                                    ; preds = %sw.bb141
  %base152 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %92 = load ptr, ptr %base152, align 8, !tbaa !14
  %buffer153 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %92, i32 0, i32 12
  %93 = load ptr, ptr %buffer153, align 8, !tbaa !18
  %offn154 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 1
  %94 = load i64, ptr %offn154, align 8, !tbaa !19
  %base155 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %95 = load ptr, ptr %base155, align 8, !tbaa !14
  %cs156 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %95, i32 0, i32 5
  %96 = load i64, ptr %cs156, align 8, !tbaa !20
  %mul157 = mul i64 %94, %96
  %add.ptr158 = getelementptr inbounds double, ptr %93, i64 %mul157
  %offm159 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 0
  %97 = load i64, ptr %offm159, align 8, !tbaa !21
  %base160 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %98 = load ptr, ptr %base160, align 8, !tbaa !14
  %rs161 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %98, i32 0, i32 4
  %99 = load i64, ptr %rs161, align 8, !tbaa !22
  %mul162 = mul i64 %97, %99
  %add.ptr163 = getelementptr inbounds double, ptr %add.ptr158, i64 %mul162
  br label %cond.end164

cond.end164:                                      ; preds = %cond.false151, %cond.true147
  %cond165 = phi ptr [ %add.ptr150, %cond.true147 ], [ %add.ptr163, %cond.false151 ]
  store ptr %cond165, ptr %buff_a142, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_b166) #4
  %base167 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %100 = load ptr, ptr %base167, align 8, !tbaa !14
  %datatype168 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %100, i32 0, i32 0
  %101 = load i32, ptr %datatype168, align 8, !tbaa !15
  %cmp169 = icmp eq i32 %101, 105
  br i1 %cmp169, label %cond.true171, label %cond.false175

cond.true171:                                     ; preds = %cond.end164
  %base172 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %102 = load ptr, ptr %base172, align 8, !tbaa !14
  %buffer173 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %102, i32 0, i32 12
  %103 = load ptr, ptr %buffer173, align 8, !tbaa !18
  %add.ptr174 = getelementptr inbounds i8, ptr %103, i64 16
  br label %cond.end188

cond.false175:                                    ; preds = %cond.end164
  %base176 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %104 = load ptr, ptr %base176, align 8, !tbaa !14
  %buffer177 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %104, i32 0, i32 12
  %105 = load ptr, ptr %buffer177, align 8, !tbaa !18
  %offn178 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 1
  %106 = load i64, ptr %offn178, align 8, !tbaa !19
  %base179 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %107 = load ptr, ptr %base179, align 8, !tbaa !14
  %cs180 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %107, i32 0, i32 5
  %108 = load i64, ptr %cs180, align 8, !tbaa !20
  %mul181 = mul i64 %106, %108
  %add.ptr182 = getelementptr inbounds double, ptr %105, i64 %mul181
  %offm183 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 0
  %109 = load i64, ptr %offm183, align 8, !tbaa !21
  %base184 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %110 = load ptr, ptr %base184, align 8, !tbaa !14
  %rs185 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %110, i32 0, i32 4
  %111 = load i64, ptr %rs185, align 8, !tbaa !22
  %mul186 = mul i64 %109, %111
  %add.ptr187 = getelementptr inbounds double, ptr %add.ptr182, i64 %mul186
  br label %cond.end188

cond.end188:                                      ; preds = %cond.false175, %cond.true171
  %cond189 = phi ptr [ %add.ptr174, %cond.true171 ], [ %add.ptr187, %cond.false175 ]
  store ptr %cond189, ptr %buff_b166, align 8, !tbaa !4
  %112 = load i32, ptr %m, align 4, !tbaa !35
  %113 = load ptr, ptr %buff_a142, align 8, !tbaa !4
  %114 = load i32, ptr %inc_a, align 4, !tbaa !35
  %mul190 = mul nsw i32 %114, 2
  %115 = load ptr, ptr %buff_b166, align 8, !tbaa !4
  %116 = load i32, ptr %inc_b, align 4, !tbaa !35
  call void @bl1_dcopy(i32 noundef %112, ptr noundef %113, i32 noundef %mul190, ptr noundef %115, i32 noundef %116)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_b166) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_a142) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %cond.end188, %cond.end138, %cond.end89, %cond.end40
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #4
  ret void
}

declare i32 @FLA_Obj_extract_real_part_check(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_vector_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare void @bl1_scopy(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_dcopy(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @FLA_Obj_extract_imag_part(ptr noundef byval(%struct.FLA_Obj_view) align 8 %a, ptr noundef byval(%struct.FLA_Obj_view) align 8 %b) #0 {
entry:
  %datatype = alloca i32, align 4
  %m = alloca i32, align 4
  %inc_a = alloca i32, align 4
  %inc_b = alloca i32, align 4
  %buff_b = alloca ptr, align 8
  %buff_0 = alloca ptr, align 8
  %buff_b36 = alloca ptr, align 8
  %buff_060 = alloca ptr, align 8
  %buff_a = alloca ptr, align 8
  %buff_b101 = alloca ptr, align 8
  %buff_a127 = alloca ptr, align 8
  %buff_b151 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_b) #4
  %call = call i32 @FLA_Check_error_level()
  %cmp = icmp uge i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @FLA_Obj_extract_imag_part_check(ptr noundef byval(%struct.FLA_Obj_view) align 8 %a, ptr noundef byval(%struct.FLA_Obj_view) align 8 %b)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %a)
  store i32 %call2, ptr %datatype, align 4, !tbaa !35
  %call3 = call i64 @FLA_Obj_vector_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %a)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %m, align 4, !tbaa !35
  %call4 = call i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %a)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, ptr %inc_a, align 4, !tbaa !35
  %call6 = call i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %b)
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %inc_b, align 4, !tbaa !35
  %0 = load i32, ptr %datatype, align 4, !tbaa !35
  switch i32 %0, label %sw.epilog [
    i32 100, label %sw.bb
    i32 101, label %sw.bb35
    i32 102, label %sw.bb77
    i32 103, label %sw.bb126
  ]

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_b) #4
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8, !tbaa !14
  %datatype8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype8, align 8, !tbaa !15
  %cmp9 = icmp eq i32 %2, 105
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base11 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %3 = load ptr, ptr %base11, align 8, !tbaa !14
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8, !tbaa !18
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base12 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %5 = load ptr, ptr %base12, align 8, !tbaa !14
  %buffer13 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer13, align 8, !tbaa !18
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8, !tbaa !19
  %base14 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %8 = load ptr, ptr %base14, align 8, !tbaa !14
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8, !tbaa !20
  %mul = mul i64 %7, %9
  %add.ptr15 = getelementptr inbounds float, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8, !tbaa !21
  %base16 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %11 = load ptr, ptr %base16, align 8, !tbaa !14
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8, !tbaa !22
  %mul17 = mul i64 %10, %12
  %add.ptr18 = getelementptr inbounds float, ptr %add.ptr15, i64 %mul17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr18, %cond.false ]
  store ptr %cond, ptr %buff_b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_0) #4
  %13 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !14
  %datatype19 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %datatype19, align 8, !tbaa !15
  %cmp20 = icmp eq i32 %14, 105
  br i1 %cmp20, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end
  %15 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !14
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %buffer23, align 8, !tbaa !18
  %add.ptr24 = getelementptr inbounds i8, ptr %16, i64 8
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end
  %17 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !14
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %buffer26, align 8, !tbaa !18
  %19 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8, !tbaa !19
  %20 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !14
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %20, i32 0, i32 5
  %21 = load i64, ptr %cs27, align 8, !tbaa !20
  %mul28 = mul i64 %19, %21
  %add.ptr29 = getelementptr inbounds float, ptr %18, i64 %mul28
  %22 = load i64, ptr @FLA_ZERO, align 8, !tbaa !21
  %23 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !14
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %23, i32 0, i32 4
  %24 = load i64, ptr %rs30, align 8, !tbaa !22
  %mul31 = mul i64 %22, %24
  %add.ptr32 = getelementptr inbounds float, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_0, align 8, !tbaa !4
  %25 = load i32, ptr %m, align 4, !tbaa !35
  %26 = load ptr, ptr %buff_0, align 8, !tbaa !4
  %27 = load ptr, ptr %buff_b, align 8, !tbaa !4
  %28 = load i32, ptr %inc_b, align 4, !tbaa !35
  call void @bl1_ssetv(i32 noundef %25, ptr noundef %26, ptr noundef %27, i32 noundef %28)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_b) #4
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_b36) #4
  %base37 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %29 = load ptr, ptr %base37, align 8, !tbaa !14
  %datatype38 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %29, i32 0, i32 0
  %30 = load i32, ptr %datatype38, align 8, !tbaa !15
  %cmp39 = icmp eq i32 %30, 105
  br i1 %cmp39, label %cond.true41, label %cond.false45

cond.true41:                                      ; preds = %sw.bb35
  %base42 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %31 = load ptr, ptr %base42, align 8, !tbaa !14
  %buffer43 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 12
  %32 = load ptr, ptr %buffer43, align 8, !tbaa !18
  %add.ptr44 = getelementptr inbounds i8, ptr %32, i64 16
  br label %cond.end58

cond.false45:                                     ; preds = %sw.bb35
  %base46 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %33 = load ptr, ptr %base46, align 8, !tbaa !14
  %buffer47 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %33, i32 0, i32 12
  %34 = load ptr, ptr %buffer47, align 8, !tbaa !18
  %offn48 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 1
  %35 = load i64, ptr %offn48, align 8, !tbaa !19
  %base49 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %36 = load ptr, ptr %base49, align 8, !tbaa !14
  %cs50 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %36, i32 0, i32 5
  %37 = load i64, ptr %cs50, align 8, !tbaa !20
  %mul51 = mul i64 %35, %37
  %add.ptr52 = getelementptr inbounds double, ptr %34, i64 %mul51
  %offm53 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 0
  %38 = load i64, ptr %offm53, align 8, !tbaa !21
  %base54 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %39 = load ptr, ptr %base54, align 8, !tbaa !14
  %rs55 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %39, i32 0, i32 4
  %40 = load i64, ptr %rs55, align 8, !tbaa !22
  %mul56 = mul i64 %38, %40
  %add.ptr57 = getelementptr inbounds double, ptr %add.ptr52, i64 %mul56
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false45, %cond.true41
  %cond59 = phi ptr [ %add.ptr44, %cond.true41 ], [ %add.ptr57, %cond.false45 ]
  store ptr %cond59, ptr %buff_b36, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_060) #4
  %41 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !14
  %datatype61 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %41, i32 0, i32 0
  %42 = load i32, ptr %datatype61, align 8, !tbaa !15
  %cmp62 = icmp eq i32 %42, 105
  br i1 %cmp62, label %cond.true64, label %cond.false67

cond.true64:                                      ; preds = %cond.end58
  %43 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !14
  %buffer65 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %43, i32 0, i32 12
  %44 = load ptr, ptr %buffer65, align 8, !tbaa !18
  %add.ptr66 = getelementptr inbounds i8, ptr %44, i64 16
  br label %cond.end75

cond.false67:                                     ; preds = %cond.end58
  %45 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !14
  %buffer68 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %45, i32 0, i32 12
  %46 = load ptr, ptr %buffer68, align 8, !tbaa !18
  %47 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8, !tbaa !19
  %48 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !14
  %cs69 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %48, i32 0, i32 5
  %49 = load i64, ptr %cs69, align 8, !tbaa !20
  %mul70 = mul i64 %47, %49
  %add.ptr71 = getelementptr inbounds double, ptr %46, i64 %mul70
  %50 = load i64, ptr @FLA_ZERO, align 8, !tbaa !21
  %51 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !14
  %rs72 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %51, i32 0, i32 4
  %52 = load i64, ptr %rs72, align 8, !tbaa !22
  %mul73 = mul i64 %50, %52
  %add.ptr74 = getelementptr inbounds double, ptr %add.ptr71, i64 %mul73
  br label %cond.end75

cond.end75:                                       ; preds = %cond.false67, %cond.true64
  %cond76 = phi ptr [ %add.ptr66, %cond.true64 ], [ %add.ptr74, %cond.false67 ]
  store ptr %cond76, ptr %buff_060, align 8, !tbaa !4
  %53 = load i32, ptr %m, align 4, !tbaa !35
  %54 = load ptr, ptr %buff_060, align 8, !tbaa !4
  %55 = load ptr, ptr %buff_b36, align 8, !tbaa !4
  %56 = load i32, ptr %inc_b, align 4, !tbaa !35
  call void @bl1_dsetv(i32 noundef %53, ptr noundef %54, ptr noundef %55, i32 noundef %56)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_060) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_b36) #4
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_a) #4
  %base78 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %57 = load ptr, ptr %base78, align 8, !tbaa !14
  %datatype79 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %57, i32 0, i32 0
  %58 = load i32, ptr %datatype79, align 8, !tbaa !15
  %cmp80 = icmp eq i32 %58, 105
  br i1 %cmp80, label %cond.true82, label %cond.false86

cond.true82:                                      ; preds = %sw.bb77
  %base83 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %59 = load ptr, ptr %base83, align 8, !tbaa !14
  %buffer84 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %59, i32 0, i32 12
  %60 = load ptr, ptr %buffer84, align 8, !tbaa !18
  %add.ptr85 = getelementptr inbounds i8, ptr %60, i64 8
  br label %cond.end99

cond.false86:                                     ; preds = %sw.bb77
  %base87 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %61 = load ptr, ptr %base87, align 8, !tbaa !14
  %buffer88 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %61, i32 0, i32 12
  %62 = load ptr, ptr %buffer88, align 8, !tbaa !18
  %offn89 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 1
  %63 = load i64, ptr %offn89, align 8, !tbaa !19
  %base90 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %64 = load ptr, ptr %base90, align 8, !tbaa !14
  %cs91 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %64, i32 0, i32 5
  %65 = load i64, ptr %cs91, align 8, !tbaa !20
  %mul92 = mul i64 %63, %65
  %add.ptr93 = getelementptr inbounds float, ptr %62, i64 %mul92
  %offm94 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 0
  %66 = load i64, ptr %offm94, align 8, !tbaa !21
  %base95 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %67 = load ptr, ptr %base95, align 8, !tbaa !14
  %rs96 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %67, i32 0, i32 4
  %68 = load i64, ptr %rs96, align 8, !tbaa !22
  %mul97 = mul i64 %66, %68
  %add.ptr98 = getelementptr inbounds float, ptr %add.ptr93, i64 %mul97
  br label %cond.end99

cond.end99:                                       ; preds = %cond.false86, %cond.true82
  %cond100 = phi ptr [ %add.ptr85, %cond.true82 ], [ %add.ptr98, %cond.false86 ]
  store ptr %cond100, ptr %buff_a, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_b101) #4
  %base102 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %69 = load ptr, ptr %base102, align 8, !tbaa !14
  %datatype103 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %69, i32 0, i32 0
  %70 = load i32, ptr %datatype103, align 8, !tbaa !15
  %cmp104 = icmp eq i32 %70, 105
  br i1 %cmp104, label %cond.true106, label %cond.false110

cond.true106:                                     ; preds = %cond.end99
  %base107 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %71 = load ptr, ptr %base107, align 8, !tbaa !14
  %buffer108 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %71, i32 0, i32 12
  %72 = load ptr, ptr %buffer108, align 8, !tbaa !18
  %add.ptr109 = getelementptr inbounds i8, ptr %72, i64 8
  br label %cond.end123

cond.false110:                                    ; preds = %cond.end99
  %base111 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %73 = load ptr, ptr %base111, align 8, !tbaa !14
  %buffer112 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %73, i32 0, i32 12
  %74 = load ptr, ptr %buffer112, align 8, !tbaa !18
  %offn113 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 1
  %75 = load i64, ptr %offn113, align 8, !tbaa !19
  %base114 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %76 = load ptr, ptr %base114, align 8, !tbaa !14
  %cs115 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %76, i32 0, i32 5
  %77 = load i64, ptr %cs115, align 8, !tbaa !20
  %mul116 = mul i64 %75, %77
  %add.ptr117 = getelementptr inbounds float, ptr %74, i64 %mul116
  %offm118 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 0
  %78 = load i64, ptr %offm118, align 8, !tbaa !21
  %base119 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %79 = load ptr, ptr %base119, align 8, !tbaa !14
  %rs120 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %79, i32 0, i32 4
  %80 = load i64, ptr %rs120, align 8, !tbaa !22
  %mul121 = mul i64 %78, %80
  %add.ptr122 = getelementptr inbounds float, ptr %add.ptr117, i64 %mul121
  br label %cond.end123

cond.end123:                                      ; preds = %cond.false110, %cond.true106
  %cond124 = phi ptr [ %add.ptr109, %cond.true106 ], [ %add.ptr122, %cond.false110 ]
  store ptr %cond124, ptr %buff_b101, align 8, !tbaa !4
  %81 = load i32, ptr %m, align 4, !tbaa !35
  %82 = load ptr, ptr %buff_a, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds float, ptr %82, i32 1
  store ptr %incdec.ptr, ptr %buff_a, align 8, !tbaa !4
  %83 = load i32, ptr %inc_a, align 4, !tbaa !35
  %mul125 = mul nsw i32 %83, 2
  %84 = load ptr, ptr %buff_b101, align 8, !tbaa !4
  %85 = load i32, ptr %inc_b, align 4, !tbaa !35
  call void @bl1_scopy(i32 noundef %81, ptr noundef %incdec.ptr, i32 noundef %mul125, ptr noundef %84, i32 noundef %85)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_b101) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_a) #4
  br label %sw.epilog

sw.bb126:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_a127) #4
  %base128 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %86 = load ptr, ptr %base128, align 8, !tbaa !14
  %datatype129 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %86, i32 0, i32 0
  %87 = load i32, ptr %datatype129, align 8, !tbaa !15
  %cmp130 = icmp eq i32 %87, 105
  br i1 %cmp130, label %cond.true132, label %cond.false136

cond.true132:                                     ; preds = %sw.bb126
  %base133 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %88 = load ptr, ptr %base133, align 8, !tbaa !14
  %buffer134 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %88, i32 0, i32 12
  %89 = load ptr, ptr %buffer134, align 8, !tbaa !18
  %add.ptr135 = getelementptr inbounds i8, ptr %89, i64 16
  br label %cond.end149

cond.false136:                                    ; preds = %sw.bb126
  %base137 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %90 = load ptr, ptr %base137, align 8, !tbaa !14
  %buffer138 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %90, i32 0, i32 12
  %91 = load ptr, ptr %buffer138, align 8, !tbaa !18
  %offn139 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 1
  %92 = load i64, ptr %offn139, align 8, !tbaa !19
  %base140 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %93 = load ptr, ptr %base140, align 8, !tbaa !14
  %cs141 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %93, i32 0, i32 5
  %94 = load i64, ptr %cs141, align 8, !tbaa !20
  %mul142 = mul i64 %92, %94
  %add.ptr143 = getelementptr inbounds double, ptr %91, i64 %mul142
  %offm144 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 0
  %95 = load i64, ptr %offm144, align 8, !tbaa !21
  %base145 = getelementptr inbounds %struct.FLA_Obj_view, ptr %a, i32 0, i32 6
  %96 = load ptr, ptr %base145, align 8, !tbaa !14
  %rs146 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %96, i32 0, i32 4
  %97 = load i64, ptr %rs146, align 8, !tbaa !22
  %mul147 = mul i64 %95, %97
  %add.ptr148 = getelementptr inbounds double, ptr %add.ptr143, i64 %mul147
  br label %cond.end149

cond.end149:                                      ; preds = %cond.false136, %cond.true132
  %cond150 = phi ptr [ %add.ptr135, %cond.true132 ], [ %add.ptr148, %cond.false136 ]
  store ptr %cond150, ptr %buff_a127, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_b151) #4
  %base152 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %98 = load ptr, ptr %base152, align 8, !tbaa !14
  %datatype153 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %98, i32 0, i32 0
  %99 = load i32, ptr %datatype153, align 8, !tbaa !15
  %cmp154 = icmp eq i32 %99, 105
  br i1 %cmp154, label %cond.true156, label %cond.false160

cond.true156:                                     ; preds = %cond.end149
  %base157 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %100 = load ptr, ptr %base157, align 8, !tbaa !14
  %buffer158 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %100, i32 0, i32 12
  %101 = load ptr, ptr %buffer158, align 8, !tbaa !18
  %add.ptr159 = getelementptr inbounds i8, ptr %101, i64 16
  br label %cond.end173

cond.false160:                                    ; preds = %cond.end149
  %base161 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %102 = load ptr, ptr %base161, align 8, !tbaa !14
  %buffer162 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %102, i32 0, i32 12
  %103 = load ptr, ptr %buffer162, align 8, !tbaa !18
  %offn163 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 1
  %104 = load i64, ptr %offn163, align 8, !tbaa !19
  %base164 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %105 = load ptr, ptr %base164, align 8, !tbaa !14
  %cs165 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %105, i32 0, i32 5
  %106 = load i64, ptr %cs165, align 8, !tbaa !20
  %mul166 = mul i64 %104, %106
  %add.ptr167 = getelementptr inbounds double, ptr %103, i64 %mul166
  %offm168 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 0
  %107 = load i64, ptr %offm168, align 8, !tbaa !21
  %base169 = getelementptr inbounds %struct.FLA_Obj_view, ptr %b, i32 0, i32 6
  %108 = load ptr, ptr %base169, align 8, !tbaa !14
  %rs170 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %108, i32 0, i32 4
  %109 = load i64, ptr %rs170, align 8, !tbaa !22
  %mul171 = mul i64 %107, %109
  %add.ptr172 = getelementptr inbounds double, ptr %add.ptr167, i64 %mul171
  br label %cond.end173

cond.end173:                                      ; preds = %cond.false160, %cond.true156
  %cond174 = phi ptr [ %add.ptr159, %cond.true156 ], [ %add.ptr172, %cond.false160 ]
  store ptr %cond174, ptr %buff_b151, align 8, !tbaa !4
  %110 = load i32, ptr %m, align 4, !tbaa !35
  %111 = load ptr, ptr %buff_a127, align 8, !tbaa !4
  %incdec.ptr175 = getelementptr inbounds double, ptr %111, i32 1
  store ptr %incdec.ptr175, ptr %buff_a127, align 8, !tbaa !4
  %112 = load i32, ptr %inc_a, align 4, !tbaa !35
  %mul176 = mul nsw i32 %112, 2
  %113 = load ptr, ptr %buff_b151, align 8, !tbaa !4
  %114 = load i32, ptr %inc_b, align 4, !tbaa !35
  call void @bl1_dcopy(i32 noundef %110, ptr noundef %incdec.ptr175, i32 noundef %mul176, ptr noundef %113, i32 noundef %114)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_b151) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_a127) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %cond.end173, %cond.end123, %cond.end75, %cond.end33
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #4
  ret void
}

declare i32 @FLA_Obj_extract_imag_part_check(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare void @bl1_ssetv(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_dsetv(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @FLA_Obj_set_real_part(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B) #0 {
entry:
  %m_B = alloca i64, align 8
  %n_B = alloca i64, align 8
  %rs_B = alloca i64, align 8
  %cs_B = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %buff_alpha = alloca ptr, align 8
  %buff_B = alloca ptr, align 8
  %beta11 = alloca ptr, align 8
  %buff_alpha56 = alloca ptr, align 8
  %buff_B79 = alloca ptr, align 8
  %beta11108 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %m_B) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_B) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_B) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_B) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #4
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  store i64 %call, ptr %m_B, align 8, !tbaa !9
  %call1 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  store i64 %call1, ptr %n_B, align 8, !tbaa !9
  %call2 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  store i64 %call2, ptr %rs_B, align 8, !tbaa !9
  %call3 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  store i64 %call3, ptr %cs_B, align 8, !tbaa !9
  %call4 = call i32 @FLA_Check_error_level()
  %cmp = icmp uge i32 %call4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call5 = call i32 @FLA_Obj_set_real_part_check(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call6 = call i32 @FLA_Obj_is_complex(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then7, label %if.end122

if.then7:                                         ; preds = %if.end
  %call8 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %cmp9 = icmp eq i32 %call8, 102
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_alpha) #4
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %0 = load ptr, ptr %base, align 8, !tbaa !14
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8, !tbaa !15
  %cmp11 = icmp eq i32 %1, 105
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then10
  %base12 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %2 = load ptr, ptr %base12, align 8, !tbaa !14
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8, !tbaa !18
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 8
  br label %cond.end

cond.false:                                       ; preds = %if.then10
  %base13 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %4 = load ptr, ptr %base13, align 8, !tbaa !14
  %buffer14 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer14, align 8, !tbaa !18
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 1
  %6 = load i64, ptr %offn, align 8, !tbaa !19
  %base15 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %7 = load ptr, ptr %base15, align 8, !tbaa !14
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8, !tbaa !20
  %mul = mul i64 %6, %8
  %add.ptr16 = getelementptr inbounds float, ptr %5, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 0
  %9 = load i64, ptr %offm, align 8, !tbaa !21
  %base17 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %10 = load ptr, ptr %base17, align 8, !tbaa !14
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8, !tbaa !22
  %mul18 = mul i64 %9, %11
  %add.ptr19 = getelementptr inbounds float, ptr %add.ptr16, i64 %mul18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr19, %cond.false ]
  store ptr %cond, ptr %buff_alpha, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_B) #4
  %base20 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %12 = load ptr, ptr %base20, align 8, !tbaa !14
  %datatype21 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype21, align 8, !tbaa !15
  %cmp22 = icmp eq i32 %13, 105
  br i1 %cmp22, label %cond.true23, label %cond.false27

cond.true23:                                      ; preds = %cond.end
  %base24 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %14 = load ptr, ptr %base24, align 8, !tbaa !14
  %buffer25 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer25, align 8, !tbaa !18
  %add.ptr26 = getelementptr inbounds i8, ptr %15, i64 24
  br label %cond.end40

cond.false27:                                     ; preds = %cond.end
  %base28 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %16 = load ptr, ptr %base28, align 8, !tbaa !14
  %buffer29 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer29, align 8, !tbaa !18
  %offn30 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 1
  %18 = load i64, ptr %offn30, align 8, !tbaa !19
  %base31 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %19 = load ptr, ptr %base31, align 8, !tbaa !14
  %cs32 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs32, align 8, !tbaa !20
  %mul33 = mul i64 %18, %20
  %add.ptr34 = getelementptr inbounds %struct.scomplex, ptr %17, i64 %mul33
  %offm35 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 0
  %21 = load i64, ptr %offm35, align 8, !tbaa !21
  %base36 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %22 = load ptr, ptr %base36, align 8, !tbaa !14
  %rs37 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs37, align 8, !tbaa !22
  %mul38 = mul i64 %21, %23
  %add.ptr39 = getelementptr inbounds %struct.scomplex, ptr %add.ptr34, i64 %mul38
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false27, %cond.true23
  %cond41 = phi ptr [ %add.ptr26, %cond.true23 ], [ %add.ptr39, %cond.false27 ]
  store ptr %cond41, ptr %buff_B, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc50, %cond.end40
  %24 = load i64, ptr %j, align 8, !tbaa !9
  %25 = load i64, ptr %n_B, align 8, !tbaa !9
  %cmp42 = icmp ult i64 %24, %25
  br i1 %cmp42, label %for.body, label %for.end52

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %i, align 8, !tbaa !9
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc, %for.body
  %26 = load i64, ptr %i, align 8, !tbaa !9
  %27 = load i64, ptr %m_B, align 8, !tbaa !9
  %cmp44 = icmp ult i64 %26, %27
  br i1 %cmp44, label %for.body45, label %for.end

for.body45:                                       ; preds = %for.cond43
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta11) #4
  %28 = load ptr, ptr %buff_B, align 8, !tbaa !4
  %29 = load i64, ptr %rs_B, align 8, !tbaa !9
  %30 = load i64, ptr %i, align 8, !tbaa !9
  %mul46 = mul i64 %29, %30
  %add.ptr47 = getelementptr inbounds %struct.scomplex, ptr %28, i64 %mul46
  %31 = load i64, ptr %cs_B, align 8, !tbaa !9
  %32 = load i64, ptr %j, align 8, !tbaa !9
  %mul48 = mul i64 %31, %32
  %add.ptr49 = getelementptr inbounds %struct.scomplex, ptr %add.ptr47, i64 %mul48
  store ptr %add.ptr49, ptr %beta11, align 8, !tbaa !4
  %33 = load ptr, ptr %buff_alpha, align 8, !tbaa !4
  %34 = load float, ptr %33, align 4, !tbaa !23
  %35 = load ptr, ptr %beta11, align 8, !tbaa !4
  %real = getelementptr inbounds %struct.scomplex, ptr %35, i32 0, i32 0
  store float %34, ptr %real, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta11) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %36 = load i64, ptr %i, align 8, !tbaa !9
  %inc = add i64 %36, 1
  store i64 %inc, ptr %i, align 8, !tbaa !9
  br label %for.cond43, !llvm.loop !36

for.end:                                          ; preds = %for.cond43
  br label %for.inc50

for.inc50:                                        ; preds = %for.end
  %37 = load i64, ptr %j, align 8, !tbaa !9
  %inc51 = add i64 %37, 1
  store i64 %inc51, ptr %j, align 8, !tbaa !9
  br label %for.cond, !llvm.loop !38

for.end52:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_B) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_alpha) #4
  br label %if.end121

if.else:                                          ; preds = %if.then7
  %call53 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %cmp54 = icmp eq i32 %call53, 103
  br i1 %cmp54, label %if.then55, label %if.end120

if.then55:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_alpha56) #4
  %base57 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %38 = load ptr, ptr %base57, align 8, !tbaa !14
  %datatype58 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %38, i32 0, i32 0
  %39 = load i32, ptr %datatype58, align 8, !tbaa !15
  %cmp59 = icmp eq i32 %39, 105
  br i1 %cmp59, label %cond.true60, label %cond.false64

cond.true60:                                      ; preds = %if.then55
  %base61 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %40 = load ptr, ptr %base61, align 8, !tbaa !14
  %buffer62 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %40, i32 0, i32 12
  %41 = load ptr, ptr %buffer62, align 8, !tbaa !18
  %add.ptr63 = getelementptr inbounds i8, ptr %41, i64 16
  br label %cond.end77

cond.false64:                                     ; preds = %if.then55
  %base65 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %42 = load ptr, ptr %base65, align 8, !tbaa !14
  %buffer66 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %42, i32 0, i32 12
  %43 = load ptr, ptr %buffer66, align 8, !tbaa !18
  %offn67 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 1
  %44 = load i64, ptr %offn67, align 8, !tbaa !19
  %base68 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %45 = load ptr, ptr %base68, align 8, !tbaa !14
  %cs69 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %45, i32 0, i32 5
  %46 = load i64, ptr %cs69, align 8, !tbaa !20
  %mul70 = mul i64 %44, %46
  %add.ptr71 = getelementptr inbounds double, ptr %43, i64 %mul70
  %offm72 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 0
  %47 = load i64, ptr %offm72, align 8, !tbaa !21
  %base73 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %48 = load ptr, ptr %base73, align 8, !tbaa !14
  %rs74 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %48, i32 0, i32 4
  %49 = load i64, ptr %rs74, align 8, !tbaa !22
  %mul75 = mul i64 %47, %49
  %add.ptr76 = getelementptr inbounds double, ptr %add.ptr71, i64 %mul75
  br label %cond.end77

cond.end77:                                       ; preds = %cond.false64, %cond.true60
  %cond78 = phi ptr [ %add.ptr63, %cond.true60 ], [ %add.ptr76, %cond.false64 ]
  store ptr %cond78, ptr %buff_alpha56, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_B79) #4
  %base80 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %50 = load ptr, ptr %base80, align 8, !tbaa !14
  %datatype81 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %50, i32 0, i32 0
  %51 = load i32, ptr %datatype81, align 8, !tbaa !15
  %cmp82 = icmp eq i32 %51, 105
  br i1 %cmp82, label %cond.true83, label %cond.false87

cond.true83:                                      ; preds = %cond.end77
  %base84 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %52 = load ptr, ptr %base84, align 8, !tbaa !14
  %buffer85 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %52, i32 0, i32 12
  %53 = load ptr, ptr %buffer85, align 8, !tbaa !18
  %add.ptr86 = getelementptr inbounds i8, ptr %53, i64 32
  br label %cond.end100

cond.false87:                                     ; preds = %cond.end77
  %base88 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %54 = load ptr, ptr %base88, align 8, !tbaa !14
  %buffer89 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %54, i32 0, i32 12
  %55 = load ptr, ptr %buffer89, align 8, !tbaa !18
  %offn90 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 1
  %56 = load i64, ptr %offn90, align 8, !tbaa !19
  %base91 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %57 = load ptr, ptr %base91, align 8, !tbaa !14
  %cs92 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %57, i32 0, i32 5
  %58 = load i64, ptr %cs92, align 8, !tbaa !20
  %mul93 = mul i64 %56, %58
  %add.ptr94 = getelementptr inbounds %struct.dcomplex, ptr %55, i64 %mul93
  %offm95 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 0
  %59 = load i64, ptr %offm95, align 8, !tbaa !21
  %base96 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %60 = load ptr, ptr %base96, align 8, !tbaa !14
  %rs97 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %60, i32 0, i32 4
  %61 = load i64, ptr %rs97, align 8, !tbaa !22
  %mul98 = mul i64 %59, %61
  %add.ptr99 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr94, i64 %mul98
  br label %cond.end100

cond.end100:                                      ; preds = %cond.false87, %cond.true83
  %cond101 = phi ptr [ %add.ptr86, %cond.true83 ], [ %add.ptr99, %cond.false87 ]
  store ptr %cond101, ptr %buff_B79, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !9
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc117, %cond.end100
  %62 = load i64, ptr %j, align 8, !tbaa !9
  %63 = load i64, ptr %n_B, align 8, !tbaa !9
  %cmp103 = icmp ult i64 %62, %63
  br i1 %cmp103, label %for.body104, label %for.end119

for.body104:                                      ; preds = %for.cond102
  store i64 0, ptr %i, align 8, !tbaa !9
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc114, %for.body104
  %64 = load i64, ptr %i, align 8, !tbaa !9
  %65 = load i64, ptr %m_B, align 8, !tbaa !9
  %cmp106 = icmp ult i64 %64, %65
  br i1 %cmp106, label %for.body107, label %for.end116

for.body107:                                      ; preds = %for.cond105
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta11108) #4
  %66 = load ptr, ptr %buff_B79, align 8, !tbaa !4
  %67 = load i64, ptr %rs_B, align 8, !tbaa !9
  %68 = load i64, ptr %i, align 8, !tbaa !9
  %mul109 = mul i64 %67, %68
  %add.ptr110 = getelementptr inbounds %struct.dcomplex, ptr %66, i64 %mul109
  %69 = load i64, ptr %cs_B, align 8, !tbaa !9
  %70 = load i64, ptr %j, align 8, !tbaa !9
  %mul111 = mul i64 %69, %70
  %add.ptr112 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr110, i64 %mul111
  store ptr %add.ptr112, ptr %beta11108, align 8, !tbaa !4
  %71 = load ptr, ptr %buff_alpha56, align 8, !tbaa !4
  %72 = load double, ptr %71, align 8, !tbaa !25
  %73 = load ptr, ptr %beta11108, align 8, !tbaa !4
  %real113 = getelementptr inbounds %struct.dcomplex, ptr %73, i32 0, i32 0
  store double %72, ptr %real113, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta11108) #4
  br label %for.inc114

for.inc114:                                       ; preds = %for.body107
  %74 = load i64, ptr %i, align 8, !tbaa !9
  %inc115 = add i64 %74, 1
  store i64 %inc115, ptr %i, align 8, !tbaa !9
  br label %for.cond105, !llvm.loop !39

for.end116:                                       ; preds = %for.cond105
  br label %for.inc117

for.inc117:                                       ; preds = %for.end116
  %75 = load i64, ptr %j, align 8, !tbaa !9
  %inc118 = add i64 %75, 1
  store i64 %inc118, ptr %j, align 8, !tbaa !9
  br label %for.cond102, !llvm.loop !40

for.end119:                                       ; preds = %for.cond102
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_B79) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_alpha56) #4
  br label %if.end120

if.end120:                                        ; preds = %for.end119, %if.else
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %for.end52
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_B) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_B) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_B) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %m_B) #4
  ret void
}

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Obj_set_real_part_check(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Obj_is_complex(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

; Function Attrs: nounwind uwtable
define void @FLA_Obj_set_imag_part(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B) #0 {
entry:
  %m_B = alloca i64, align 8
  %n_B = alloca i64, align 8
  %rs_B = alloca i64, align 8
  %cs_B = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %buff_alpha = alloca ptr, align 8
  %buff_B = alloca ptr, align 8
  %beta11 = alloca ptr, align 8
  %buff_alpha56 = alloca ptr, align 8
  %buff_B79 = alloca ptr, align 8
  %beta11108 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %m_B) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_B) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_B) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_B) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #4
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  store i64 %call, ptr %m_B, align 8, !tbaa !9
  %call1 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  store i64 %call1, ptr %n_B, align 8, !tbaa !9
  %call2 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  store i64 %call2, ptr %rs_B, align 8, !tbaa !9
  %call3 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  store i64 %call3, ptr %cs_B, align 8, !tbaa !9
  %call4 = call i32 @FLA_Check_error_level()
  %cmp = icmp uge i32 %call4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call5 = call i32 @FLA_Obj_set_imag_part_check(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call6 = call i32 @FLA_Obj_is_complex(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then7, label %if.end122

if.then7:                                         ; preds = %if.end
  %call8 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %cmp9 = icmp eq i32 %call8, 102
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_alpha) #4
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %0 = load ptr, ptr %base, align 8, !tbaa !14
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8, !tbaa !15
  %cmp11 = icmp eq i32 %1, 105
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then10
  %base12 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %2 = load ptr, ptr %base12, align 8, !tbaa !14
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8, !tbaa !18
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 8
  br label %cond.end

cond.false:                                       ; preds = %if.then10
  %base13 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %4 = load ptr, ptr %base13, align 8, !tbaa !14
  %buffer14 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer14, align 8, !tbaa !18
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 1
  %6 = load i64, ptr %offn, align 8, !tbaa !19
  %base15 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %7 = load ptr, ptr %base15, align 8, !tbaa !14
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8, !tbaa !20
  %mul = mul i64 %6, %8
  %add.ptr16 = getelementptr inbounds float, ptr %5, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 0
  %9 = load i64, ptr %offm, align 8, !tbaa !21
  %base17 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %10 = load ptr, ptr %base17, align 8, !tbaa !14
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8, !tbaa !22
  %mul18 = mul i64 %9, %11
  %add.ptr19 = getelementptr inbounds float, ptr %add.ptr16, i64 %mul18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr19, %cond.false ]
  store ptr %cond, ptr %buff_alpha, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_B) #4
  %base20 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %12 = load ptr, ptr %base20, align 8, !tbaa !14
  %datatype21 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype21, align 8, !tbaa !15
  %cmp22 = icmp eq i32 %13, 105
  br i1 %cmp22, label %cond.true23, label %cond.false27

cond.true23:                                      ; preds = %cond.end
  %base24 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %14 = load ptr, ptr %base24, align 8, !tbaa !14
  %buffer25 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer25, align 8, !tbaa !18
  %add.ptr26 = getelementptr inbounds i8, ptr %15, i64 24
  br label %cond.end40

cond.false27:                                     ; preds = %cond.end
  %base28 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %16 = load ptr, ptr %base28, align 8, !tbaa !14
  %buffer29 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer29, align 8, !tbaa !18
  %offn30 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 1
  %18 = load i64, ptr %offn30, align 8, !tbaa !19
  %base31 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %19 = load ptr, ptr %base31, align 8, !tbaa !14
  %cs32 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs32, align 8, !tbaa !20
  %mul33 = mul i64 %18, %20
  %add.ptr34 = getelementptr inbounds %struct.scomplex, ptr %17, i64 %mul33
  %offm35 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 0
  %21 = load i64, ptr %offm35, align 8, !tbaa !21
  %base36 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %22 = load ptr, ptr %base36, align 8, !tbaa !14
  %rs37 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs37, align 8, !tbaa !22
  %mul38 = mul i64 %21, %23
  %add.ptr39 = getelementptr inbounds %struct.scomplex, ptr %add.ptr34, i64 %mul38
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false27, %cond.true23
  %cond41 = phi ptr [ %add.ptr26, %cond.true23 ], [ %add.ptr39, %cond.false27 ]
  store ptr %cond41, ptr %buff_B, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc50, %cond.end40
  %24 = load i64, ptr %j, align 8, !tbaa !9
  %25 = load i64, ptr %n_B, align 8, !tbaa !9
  %cmp42 = icmp ult i64 %24, %25
  br i1 %cmp42, label %for.body, label %for.end52

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %i, align 8, !tbaa !9
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc, %for.body
  %26 = load i64, ptr %i, align 8, !tbaa !9
  %27 = load i64, ptr %m_B, align 8, !tbaa !9
  %cmp44 = icmp ult i64 %26, %27
  br i1 %cmp44, label %for.body45, label %for.end

for.body45:                                       ; preds = %for.cond43
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta11) #4
  %28 = load ptr, ptr %buff_B, align 8, !tbaa !4
  %29 = load i64, ptr %rs_B, align 8, !tbaa !9
  %30 = load i64, ptr %i, align 8, !tbaa !9
  %mul46 = mul i64 %29, %30
  %add.ptr47 = getelementptr inbounds %struct.scomplex, ptr %28, i64 %mul46
  %31 = load i64, ptr %cs_B, align 8, !tbaa !9
  %32 = load i64, ptr %j, align 8, !tbaa !9
  %mul48 = mul i64 %31, %32
  %add.ptr49 = getelementptr inbounds %struct.scomplex, ptr %add.ptr47, i64 %mul48
  store ptr %add.ptr49, ptr %beta11, align 8, !tbaa !4
  %33 = load ptr, ptr %buff_alpha, align 8, !tbaa !4
  %34 = load float, ptr %33, align 4, !tbaa !23
  %35 = load ptr, ptr %beta11, align 8, !tbaa !4
  %imag = getelementptr inbounds %struct.scomplex, ptr %35, i32 0, i32 1
  store float %34, ptr %imag, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta11) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %36 = load i64, ptr %i, align 8, !tbaa !9
  %inc = add i64 %36, 1
  store i64 %inc, ptr %i, align 8, !tbaa !9
  br label %for.cond43, !llvm.loop !41

for.end:                                          ; preds = %for.cond43
  br label %for.inc50

for.inc50:                                        ; preds = %for.end
  %37 = load i64, ptr %j, align 8, !tbaa !9
  %inc51 = add i64 %37, 1
  store i64 %inc51, ptr %j, align 8, !tbaa !9
  br label %for.cond, !llvm.loop !42

for.end52:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_B) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_alpha) #4
  br label %if.end121

if.else:                                          ; preds = %if.then7
  %call53 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %cmp54 = icmp eq i32 %call53, 103
  br i1 %cmp54, label %if.then55, label %if.end120

if.then55:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_alpha56) #4
  %base57 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %38 = load ptr, ptr %base57, align 8, !tbaa !14
  %datatype58 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %38, i32 0, i32 0
  %39 = load i32, ptr %datatype58, align 8, !tbaa !15
  %cmp59 = icmp eq i32 %39, 105
  br i1 %cmp59, label %cond.true60, label %cond.false64

cond.true60:                                      ; preds = %if.then55
  %base61 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %40 = load ptr, ptr %base61, align 8, !tbaa !14
  %buffer62 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %40, i32 0, i32 12
  %41 = load ptr, ptr %buffer62, align 8, !tbaa !18
  %add.ptr63 = getelementptr inbounds i8, ptr %41, i64 16
  br label %cond.end77

cond.false64:                                     ; preds = %if.then55
  %base65 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %42 = load ptr, ptr %base65, align 8, !tbaa !14
  %buffer66 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %42, i32 0, i32 12
  %43 = load ptr, ptr %buffer66, align 8, !tbaa !18
  %offn67 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 1
  %44 = load i64, ptr %offn67, align 8, !tbaa !19
  %base68 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %45 = load ptr, ptr %base68, align 8, !tbaa !14
  %cs69 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %45, i32 0, i32 5
  %46 = load i64, ptr %cs69, align 8, !tbaa !20
  %mul70 = mul i64 %44, %46
  %add.ptr71 = getelementptr inbounds double, ptr %43, i64 %mul70
  %offm72 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 0
  %47 = load i64, ptr %offm72, align 8, !tbaa !21
  %base73 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %48 = load ptr, ptr %base73, align 8, !tbaa !14
  %rs74 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %48, i32 0, i32 4
  %49 = load i64, ptr %rs74, align 8, !tbaa !22
  %mul75 = mul i64 %47, %49
  %add.ptr76 = getelementptr inbounds double, ptr %add.ptr71, i64 %mul75
  br label %cond.end77

cond.end77:                                       ; preds = %cond.false64, %cond.true60
  %cond78 = phi ptr [ %add.ptr63, %cond.true60 ], [ %add.ptr76, %cond.false64 ]
  store ptr %cond78, ptr %buff_alpha56, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_B79) #4
  %base80 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %50 = load ptr, ptr %base80, align 8, !tbaa !14
  %datatype81 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %50, i32 0, i32 0
  %51 = load i32, ptr %datatype81, align 8, !tbaa !15
  %cmp82 = icmp eq i32 %51, 105
  br i1 %cmp82, label %cond.true83, label %cond.false87

cond.true83:                                      ; preds = %cond.end77
  %base84 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %52 = load ptr, ptr %base84, align 8, !tbaa !14
  %buffer85 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %52, i32 0, i32 12
  %53 = load ptr, ptr %buffer85, align 8, !tbaa !18
  %add.ptr86 = getelementptr inbounds i8, ptr %53, i64 32
  br label %cond.end100

cond.false87:                                     ; preds = %cond.end77
  %base88 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %54 = load ptr, ptr %base88, align 8, !tbaa !14
  %buffer89 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %54, i32 0, i32 12
  %55 = load ptr, ptr %buffer89, align 8, !tbaa !18
  %offn90 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 1
  %56 = load i64, ptr %offn90, align 8, !tbaa !19
  %base91 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %57 = load ptr, ptr %base91, align 8, !tbaa !14
  %cs92 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %57, i32 0, i32 5
  %58 = load i64, ptr %cs92, align 8, !tbaa !20
  %mul93 = mul i64 %56, %58
  %add.ptr94 = getelementptr inbounds %struct.dcomplex, ptr %55, i64 %mul93
  %offm95 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 0
  %59 = load i64, ptr %offm95, align 8, !tbaa !21
  %base96 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %60 = load ptr, ptr %base96, align 8, !tbaa !14
  %rs97 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %60, i32 0, i32 4
  %61 = load i64, ptr %rs97, align 8, !tbaa !22
  %mul98 = mul i64 %59, %61
  %add.ptr99 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr94, i64 %mul98
  br label %cond.end100

cond.end100:                                      ; preds = %cond.false87, %cond.true83
  %cond101 = phi ptr [ %add.ptr86, %cond.true83 ], [ %add.ptr99, %cond.false87 ]
  store ptr %cond101, ptr %buff_B79, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !9
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc117, %cond.end100
  %62 = load i64, ptr %j, align 8, !tbaa !9
  %63 = load i64, ptr %n_B, align 8, !tbaa !9
  %cmp103 = icmp ult i64 %62, %63
  br i1 %cmp103, label %for.body104, label %for.end119

for.body104:                                      ; preds = %for.cond102
  store i64 0, ptr %i, align 8, !tbaa !9
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc114, %for.body104
  %64 = load i64, ptr %i, align 8, !tbaa !9
  %65 = load i64, ptr %m_B, align 8, !tbaa !9
  %cmp106 = icmp ult i64 %64, %65
  br i1 %cmp106, label %for.body107, label %for.end116

for.body107:                                      ; preds = %for.cond105
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta11108) #4
  %66 = load ptr, ptr %buff_B79, align 8, !tbaa !4
  %67 = load i64, ptr %rs_B, align 8, !tbaa !9
  %68 = load i64, ptr %i, align 8, !tbaa !9
  %mul109 = mul i64 %67, %68
  %add.ptr110 = getelementptr inbounds %struct.dcomplex, ptr %66, i64 %mul109
  %69 = load i64, ptr %cs_B, align 8, !tbaa !9
  %70 = load i64, ptr %j, align 8, !tbaa !9
  %mul111 = mul i64 %69, %70
  %add.ptr112 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr110, i64 %mul111
  store ptr %add.ptr112, ptr %beta11108, align 8, !tbaa !4
  %71 = load ptr, ptr %buff_alpha56, align 8, !tbaa !4
  %72 = load double, ptr %71, align 8, !tbaa !25
  %73 = load ptr, ptr %beta11108, align 8, !tbaa !4
  %imag113 = getelementptr inbounds %struct.dcomplex, ptr %73, i32 0, i32 1
  store double %72, ptr %imag113, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta11108) #4
  br label %for.inc114

for.inc114:                                       ; preds = %for.body107
  %74 = load i64, ptr %i, align 8, !tbaa !9
  %inc115 = add i64 %74, 1
  store i64 %inc115, ptr %i, align 8, !tbaa !9
  br label %for.cond105, !llvm.loop !43

for.end116:                                       ; preds = %for.cond105
  br label %for.inc117

for.inc117:                                       ; preds = %for.end116
  %75 = load i64, ptr %j, align 8, !tbaa !9
  %inc118 = add i64 %75, 1
  store i64 %inc118, ptr %j, align 8, !tbaa !9
  br label %for.cond102, !llvm.loop !44

for.end119:                                       ; preds = %for.cond102
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_B79) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_alpha56) #4
  br label %if.end120

if.end120:                                        ; preds = %for.end119, %if.else
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %for.end52
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_B) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_B) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_B) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %m_B) #4
  ret void
}

declare i32 @FLA_Obj_set_imag_part_check(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

; Function Attrs: nounwind uwtable
define i32 @FLA_Obj_fshow(ptr noundef %file, ptr noundef %s1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %format, ptr noundef %s2) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %s1.addr = alloca ptr, align 8
  %format.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  %datatype = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  %rs = alloca i64, align 8
  %cs = alloca i64, align 8
  %consti = alloca ptr, align 8
  %consts = alloca ptr, align 8
  %constd = alloca ptr, align 8
  %constc = alloca ptr, align 8
  %constz = alloca ptr, align 8
  %buffer119 = alloca ptr, align 8
  %buffer159 = alloca ptr, align 8
  %buffer205 = alloca ptr, align 8
  %buffer261 = alloca ptr, align 8
  %buffer315 = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8, !tbaa !4
  store ptr %s1, ptr %s1.addr, align 8, !tbaa !4
  store ptr %format, ptr %format.addr, align 8, !tbaa !4
  store ptr %s2, ptr %s2.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs) #4
  %call = call i32 @FLA_Check_error_level()
  %cmp = icmp uge i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %s1.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %s2.addr, align 8, !tbaa !4
  %call1 = call i32 @FLA_Obj_fshow_check(ptr noundef %0, ptr noundef %1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %2, ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call2, ptr %datatype, align 4, !tbaa !35
  %call3 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i64 %call3, ptr %m, align 8, !tbaa !9
  %call4 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i64 %call4, ptr %n, align 8, !tbaa !9
  %call5 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i64 %call5, ptr %rs, align 8, !tbaa !9
  %call6 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i64 %call6, ptr %cs, align 8, !tbaa !9
  %4 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %s1.addr, align 8, !tbaa !4
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str, ptr noundef %5)
  %6 = load i32, ptr %datatype, align 4, !tbaa !35
  switch i32 %6, label %sw.epilog [
    i32 105, label %sw.bb
    i32 100, label %sw.bb118
    i32 101, label %sw.bb158
    i32 102, label %sw.bb204
    i32 103, label %sw.bb260
    i32 104, label %sw.bb314
  ]

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %consti) #4
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %7 = load ptr, ptr %base, align 8, !tbaa !14
  %datatype8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %datatype8, align 8, !tbaa !15
  %cmp9 = icmp eq i32 %8, 105
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base10 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %9 = load ptr, ptr %base10, align 8, !tbaa !14
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %buffer, align 8, !tbaa !18
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 0
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base11 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %11 = load ptr, ptr %base11, align 8, !tbaa !14
  %buffer12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 12
  %12 = load ptr, ptr %buffer12, align 8, !tbaa !18
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %13 = load i64, ptr %offn, align 8, !tbaa !19
  %base13 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %14 = load ptr, ptr %base13, align 8, !tbaa !14
  %cs14 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 5
  %15 = load i64, ptr %cs14, align 8, !tbaa !20
  %mul = mul i64 %13, %15
  %add.ptr15 = getelementptr inbounds i32, ptr %12, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %16 = load i64, ptr %offm, align 8, !tbaa !21
  %base16 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %17 = load ptr, ptr %base16, align 8, !tbaa !14
  %rs17 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 4
  %18 = load i64, ptr %rs17, align 8, !tbaa !22
  %mul18 = mul i64 %16, %18
  %add.ptr19 = getelementptr inbounds i32, ptr %add.ptr15, i64 %mul18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr19, %cond.false ]
  store ptr %cond, ptr %consti, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %consts) #4
  %base20 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %19 = load ptr, ptr %base20, align 8, !tbaa !14
  %datatype21 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %datatype21, align 8, !tbaa !15
  %cmp22 = icmp eq i32 %20, 105
  br i1 %cmp22, label %cond.true23, label %cond.false27

cond.true23:                                      ; preds = %cond.end
  %base24 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %21 = load ptr, ptr %base24, align 8, !tbaa !14
  %buffer25 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %21, i32 0, i32 12
  %22 = load ptr, ptr %buffer25, align 8, !tbaa !18
  %add.ptr26 = getelementptr inbounds i8, ptr %22, i64 8
  br label %cond.end40

cond.false27:                                     ; preds = %cond.end
  %base28 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %23 = load ptr, ptr %base28, align 8, !tbaa !14
  %buffer29 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %23, i32 0, i32 12
  %24 = load ptr, ptr %buffer29, align 8, !tbaa !18
  %offn30 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %25 = load i64, ptr %offn30, align 8, !tbaa !19
  %base31 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %26 = load ptr, ptr %base31, align 8, !tbaa !14
  %cs32 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 5
  %27 = load i64, ptr %cs32, align 8, !tbaa !20
  %mul33 = mul i64 %25, %27
  %add.ptr34 = getelementptr inbounds float, ptr %24, i64 %mul33
  %offm35 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %28 = load i64, ptr %offm35, align 8, !tbaa !21
  %base36 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %29 = load ptr, ptr %base36, align 8, !tbaa !14
  %rs37 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %29, i32 0, i32 4
  %30 = load i64, ptr %rs37, align 8, !tbaa !22
  %mul38 = mul i64 %28, %30
  %add.ptr39 = getelementptr inbounds float, ptr %add.ptr34, i64 %mul38
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false27, %cond.true23
  %cond41 = phi ptr [ %add.ptr26, %cond.true23 ], [ %add.ptr39, %cond.false27 ]
  store ptr %cond41, ptr %consts, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %constd) #4
  %base42 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %31 = load ptr, ptr %base42, align 8, !tbaa !14
  %datatype43 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 0
  %32 = load i32, ptr %datatype43, align 8, !tbaa !15
  %cmp44 = icmp eq i32 %32, 105
  br i1 %cmp44, label %cond.true45, label %cond.false49

cond.true45:                                      ; preds = %cond.end40
  %base46 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %33 = load ptr, ptr %base46, align 8, !tbaa !14
  %buffer47 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %33, i32 0, i32 12
  %34 = load ptr, ptr %buffer47, align 8, !tbaa !18
  %add.ptr48 = getelementptr inbounds i8, ptr %34, i64 16
  br label %cond.end62

cond.false49:                                     ; preds = %cond.end40
  %base50 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %35 = load ptr, ptr %base50, align 8, !tbaa !14
  %buffer51 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %35, i32 0, i32 12
  %36 = load ptr, ptr %buffer51, align 8, !tbaa !18
  %offn52 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %37 = load i64, ptr %offn52, align 8, !tbaa !19
  %base53 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %38 = load ptr, ptr %base53, align 8, !tbaa !14
  %cs54 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %38, i32 0, i32 5
  %39 = load i64, ptr %cs54, align 8, !tbaa !20
  %mul55 = mul i64 %37, %39
  %add.ptr56 = getelementptr inbounds double, ptr %36, i64 %mul55
  %offm57 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %40 = load i64, ptr %offm57, align 8, !tbaa !21
  %base58 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %41 = load ptr, ptr %base58, align 8, !tbaa !14
  %rs59 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %41, i32 0, i32 4
  %42 = load i64, ptr %rs59, align 8, !tbaa !22
  %mul60 = mul i64 %40, %42
  %add.ptr61 = getelementptr inbounds double, ptr %add.ptr56, i64 %mul60
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false49, %cond.true45
  %cond63 = phi ptr [ %add.ptr48, %cond.true45 ], [ %add.ptr61, %cond.false49 ]
  store ptr %cond63, ptr %constd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %constc) #4
  %base64 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %43 = load ptr, ptr %base64, align 8, !tbaa !14
  %datatype65 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %43, i32 0, i32 0
  %44 = load i32, ptr %datatype65, align 8, !tbaa !15
  %cmp66 = icmp eq i32 %44, 105
  br i1 %cmp66, label %cond.true67, label %cond.false71

cond.true67:                                      ; preds = %cond.end62
  %base68 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %45 = load ptr, ptr %base68, align 8, !tbaa !14
  %buffer69 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %45, i32 0, i32 12
  %46 = load ptr, ptr %buffer69, align 8, !tbaa !18
  %add.ptr70 = getelementptr inbounds i8, ptr %46, i64 24
  br label %cond.end84

cond.false71:                                     ; preds = %cond.end62
  %base72 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %47 = load ptr, ptr %base72, align 8, !tbaa !14
  %buffer73 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %47, i32 0, i32 12
  %48 = load ptr, ptr %buffer73, align 8, !tbaa !18
  %offn74 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %49 = load i64, ptr %offn74, align 8, !tbaa !19
  %base75 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %50 = load ptr, ptr %base75, align 8, !tbaa !14
  %cs76 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %50, i32 0, i32 5
  %51 = load i64, ptr %cs76, align 8, !tbaa !20
  %mul77 = mul i64 %49, %51
  %add.ptr78 = getelementptr inbounds %struct.scomplex, ptr %48, i64 %mul77
  %offm79 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %52 = load i64, ptr %offm79, align 8, !tbaa !21
  %base80 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %53 = load ptr, ptr %base80, align 8, !tbaa !14
  %rs81 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %53, i32 0, i32 4
  %54 = load i64, ptr %rs81, align 8, !tbaa !22
  %mul82 = mul i64 %52, %54
  %add.ptr83 = getelementptr inbounds %struct.scomplex, ptr %add.ptr78, i64 %mul82
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false71, %cond.true67
  %cond85 = phi ptr [ %add.ptr70, %cond.true67 ], [ %add.ptr83, %cond.false71 ]
  store ptr %cond85, ptr %constc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %constz) #4
  %base86 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %55 = load ptr, ptr %base86, align 8, !tbaa !14
  %datatype87 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %55, i32 0, i32 0
  %56 = load i32, ptr %datatype87, align 8, !tbaa !15
  %cmp88 = icmp eq i32 %56, 105
  br i1 %cmp88, label %cond.true89, label %cond.false93

cond.true89:                                      ; preds = %cond.end84
  %base90 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %57 = load ptr, ptr %base90, align 8, !tbaa !14
  %buffer91 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %57, i32 0, i32 12
  %58 = load ptr, ptr %buffer91, align 8, !tbaa !18
  %add.ptr92 = getelementptr inbounds i8, ptr %58, i64 32
  br label %cond.end106

cond.false93:                                     ; preds = %cond.end84
  %base94 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %59 = load ptr, ptr %base94, align 8, !tbaa !14
  %buffer95 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %59, i32 0, i32 12
  %60 = load ptr, ptr %buffer95, align 8, !tbaa !18
  %offn96 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %61 = load i64, ptr %offn96, align 8, !tbaa !19
  %base97 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %62 = load ptr, ptr %base97, align 8, !tbaa !14
  %cs98 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %62, i32 0, i32 5
  %63 = load i64, ptr %cs98, align 8, !tbaa !20
  %mul99 = mul i64 %61, %63
  %add.ptr100 = getelementptr inbounds %struct.dcomplex, ptr %60, i64 %mul99
  %offm101 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %64 = load i64, ptr %offm101, align 8, !tbaa !21
  %base102 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %65 = load ptr, ptr %base102, align 8, !tbaa !14
  %rs103 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %65, i32 0, i32 4
  %66 = load i64, ptr %rs103, align 8, !tbaa !22
  %mul104 = mul i64 %64, %66
  %add.ptr105 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr100, i64 %mul104
  br label %cond.end106

cond.end106:                                      ; preds = %cond.false93, %cond.true89
  %cond107 = phi ptr [ %add.ptr92, %cond.true89 ], [ %add.ptr105, %cond.false93 ]
  store ptr %cond107, ptr %constz, align 8, !tbaa !4
  %67 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %68 = load ptr, ptr %consti, align 8, !tbaa !4
  %69 = load i32, ptr %68, align 4, !tbaa !35
  %call108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef @.str.1, i32 noundef %69)
  %70 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %71 = load ptr, ptr %consts, align 8, !tbaa !4
  %72 = load float, ptr %71, align 4, !tbaa !23
  %conv = fpext float %72 to double
  %call109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef @.str.2, double noundef %conv)
  %73 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %74 = load ptr, ptr %constd, align 8, !tbaa !4
  %75 = load double, ptr %74, align 8, !tbaa !25
  %call110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef @.str.3, double noundef %75)
  %76 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %77 = load ptr, ptr %constc, align 8, !tbaa !4
  %real = getelementptr inbounds %struct.scomplex, ptr %77, i32 0, i32 0
  %78 = load float, ptr %real, align 4, !tbaa !28
  %conv111 = fpext float %78 to double
  %79 = load ptr, ptr %constc, align 8, !tbaa !4
  %imag = getelementptr inbounds %struct.scomplex, ptr %79, i32 0, i32 1
  %80 = load float, ptr %imag, align 4, !tbaa !32
  %conv112 = fpext float %80 to double
  %call113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef @.str.4, double noundef %conv111, double noundef %conv112)
  %81 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %82 = load ptr, ptr %constz, align 8, !tbaa !4
  %real114 = getelementptr inbounds %struct.dcomplex, ptr %82, i32 0, i32 0
  %83 = load double, ptr %real114, align 8, !tbaa !30
  %84 = load ptr, ptr %constc, align 8, !tbaa !4
  %imag115 = getelementptr inbounds %struct.scomplex, ptr %84, i32 0, i32 1
  %85 = load float, ptr %imag115, align 4, !tbaa !32
  %conv116 = fpext float %85 to double
  %call117 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef @.str.5, double noundef %83, double noundef %conv116)
  call void @llvm.lifetime.end.p0(i64 8, ptr %constz) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %constc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %constd) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %consts) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %consti) #4
  br label %sw.epilog

sw.bb118:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer119) #4
  %base120 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %86 = load ptr, ptr %base120, align 8, !tbaa !14
  %datatype121 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %86, i32 0, i32 0
  %87 = load i32, ptr %datatype121, align 8, !tbaa !15
  %cmp122 = icmp eq i32 %87, 105
  br i1 %cmp122, label %cond.true124, label %cond.false128

cond.true124:                                     ; preds = %sw.bb118
  %base125 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %88 = load ptr, ptr %base125, align 8, !tbaa !14
  %buffer126 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %88, i32 0, i32 12
  %89 = load ptr, ptr %buffer126, align 8, !tbaa !18
  %add.ptr127 = getelementptr inbounds i8, ptr %89, i64 8
  br label %cond.end141

cond.false128:                                    ; preds = %sw.bb118
  %base129 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %90 = load ptr, ptr %base129, align 8, !tbaa !14
  %buffer130 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %90, i32 0, i32 12
  %91 = load ptr, ptr %buffer130, align 8, !tbaa !18
  %offn131 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %92 = load i64, ptr %offn131, align 8, !tbaa !19
  %base132 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %93 = load ptr, ptr %base132, align 8, !tbaa !14
  %cs133 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %93, i32 0, i32 5
  %94 = load i64, ptr %cs133, align 8, !tbaa !20
  %mul134 = mul i64 %92, %94
  %add.ptr135 = getelementptr inbounds float, ptr %91, i64 %mul134
  %offm136 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %95 = load i64, ptr %offm136, align 8, !tbaa !21
  %base137 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %96 = load ptr, ptr %base137, align 8, !tbaa !14
  %rs138 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %96, i32 0, i32 4
  %97 = load i64, ptr %rs138, align 8, !tbaa !22
  %mul139 = mul i64 %95, %97
  %add.ptr140 = getelementptr inbounds float, ptr %add.ptr135, i64 %mul139
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false128, %cond.true124
  %cond142 = phi ptr [ %add.ptr127, %cond.true124 ], [ %add.ptr140, %cond.false128 ]
  store ptr %cond142, ptr %buffer119, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc155, %cond.end141
  %98 = load i64, ptr %i, align 8, !tbaa !9
  %99 = load i64, ptr %m, align 8, !tbaa !9
  %cmp143 = icmp ult i64 %98, %99
  br i1 %cmp143, label %for.body, label %for.end157

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %j, align 8, !tbaa !9
  br label %for.cond145

for.cond145:                                      ; preds = %for.inc, %for.body
  %100 = load i64, ptr %j, align 8, !tbaa !9
  %101 = load i64, ptr %n, align 8, !tbaa !9
  %cmp146 = icmp ult i64 %100, %101
  br i1 %cmp146, label %for.body148, label %for.end

for.body148:                                      ; preds = %for.cond145
  %102 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %103 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %104 = load ptr, ptr %buffer119, align 8, !tbaa !4
  %105 = load i64, ptr %j, align 8, !tbaa !9
  %106 = load i64, ptr %cs, align 8, !tbaa !9
  %mul149 = mul i64 %105, %106
  %107 = load i64, ptr %i, align 8, !tbaa !9
  %108 = load i64, ptr %rs, align 8, !tbaa !9
  %mul150 = mul i64 %107, %108
  %add = add i64 %mul149, %mul150
  %arrayidx = getelementptr inbounds float, ptr %104, i64 %add
  %109 = load float, ptr %arrayidx, align 4, !tbaa !23
  %conv151 = fpext float %109 to double
  %call152 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef %103, double noundef %conv151)
  %110 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %call153 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef @.str.6)
  br label %for.inc

for.inc:                                          ; preds = %for.body148
  %111 = load i64, ptr %j, align 8, !tbaa !9
  %inc = add i64 %111, 1
  store i64 %inc, ptr %j, align 8, !tbaa !9
  br label %for.cond145, !llvm.loop !45

for.end:                                          ; preds = %for.cond145
  %112 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %call154 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef @.str.7)
  br label %for.inc155

for.inc155:                                       ; preds = %for.end
  %113 = load i64, ptr %i, align 8, !tbaa !9
  %inc156 = add i64 %113, 1
  store i64 %inc156, ptr %i, align 8, !tbaa !9
  br label %for.cond, !llvm.loop !46

for.end157:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer119) #4
  br label %sw.epilog

sw.bb158:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer159) #4
  %base160 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %114 = load ptr, ptr %base160, align 8, !tbaa !14
  %datatype161 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %114, i32 0, i32 0
  %115 = load i32, ptr %datatype161, align 8, !tbaa !15
  %cmp162 = icmp eq i32 %115, 105
  br i1 %cmp162, label %cond.true164, label %cond.false168

cond.true164:                                     ; preds = %sw.bb158
  %base165 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %116 = load ptr, ptr %base165, align 8, !tbaa !14
  %buffer166 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %116, i32 0, i32 12
  %117 = load ptr, ptr %buffer166, align 8, !tbaa !18
  %add.ptr167 = getelementptr inbounds i8, ptr %117, i64 16
  br label %cond.end181

cond.false168:                                    ; preds = %sw.bb158
  %base169 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %118 = load ptr, ptr %base169, align 8, !tbaa !14
  %buffer170 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %118, i32 0, i32 12
  %119 = load ptr, ptr %buffer170, align 8, !tbaa !18
  %offn171 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %120 = load i64, ptr %offn171, align 8, !tbaa !19
  %base172 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %121 = load ptr, ptr %base172, align 8, !tbaa !14
  %cs173 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %121, i32 0, i32 5
  %122 = load i64, ptr %cs173, align 8, !tbaa !20
  %mul174 = mul i64 %120, %122
  %add.ptr175 = getelementptr inbounds double, ptr %119, i64 %mul174
  %offm176 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %123 = load i64, ptr %offm176, align 8, !tbaa !21
  %base177 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %124 = load ptr, ptr %base177, align 8, !tbaa !14
  %rs178 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %124, i32 0, i32 4
  %125 = load i64, ptr %rs178, align 8, !tbaa !22
  %mul179 = mul i64 %123, %125
  %add.ptr180 = getelementptr inbounds double, ptr %add.ptr175, i64 %mul179
  br label %cond.end181

cond.end181:                                      ; preds = %cond.false168, %cond.true164
  %cond182 = phi ptr [ %add.ptr167, %cond.true164 ], [ %add.ptr180, %cond.false168 ]
  store ptr %cond182, ptr %buffer159, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !9
  br label %for.cond183

for.cond183:                                      ; preds = %for.inc201, %cond.end181
  %126 = load i64, ptr %i, align 8, !tbaa !9
  %127 = load i64, ptr %m, align 8, !tbaa !9
  %cmp184 = icmp ult i64 %126, %127
  br i1 %cmp184, label %for.body186, label %for.end203

for.body186:                                      ; preds = %for.cond183
  store i64 0, ptr %j, align 8, !tbaa !9
  br label %for.cond187

for.cond187:                                      ; preds = %for.inc197, %for.body186
  %128 = load i64, ptr %j, align 8, !tbaa !9
  %129 = load i64, ptr %n, align 8, !tbaa !9
  %cmp188 = icmp ult i64 %128, %129
  br i1 %cmp188, label %for.body190, label %for.end199

for.body190:                                      ; preds = %for.cond187
  %130 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %131 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %132 = load ptr, ptr %buffer159, align 8, !tbaa !4
  %133 = load i64, ptr %j, align 8, !tbaa !9
  %134 = load i64, ptr %cs, align 8, !tbaa !9
  %mul191 = mul i64 %133, %134
  %135 = load i64, ptr %i, align 8, !tbaa !9
  %136 = load i64, ptr %rs, align 8, !tbaa !9
  %mul192 = mul i64 %135, %136
  %add193 = add i64 %mul191, %mul192
  %arrayidx194 = getelementptr inbounds double, ptr %132, i64 %add193
  %137 = load double, ptr %arrayidx194, align 8, !tbaa !25
  %call195 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef %131, double noundef %137)
  %138 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %call196 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %138, ptr noundef @.str.6)
  br label %for.inc197

for.inc197:                                       ; preds = %for.body190
  %139 = load i64, ptr %j, align 8, !tbaa !9
  %inc198 = add i64 %139, 1
  store i64 %inc198, ptr %j, align 8, !tbaa !9
  br label %for.cond187, !llvm.loop !47

for.end199:                                       ; preds = %for.cond187
  %140 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %call200 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef @.str.7)
  br label %for.inc201

for.inc201:                                       ; preds = %for.end199
  %141 = load i64, ptr %i, align 8, !tbaa !9
  %inc202 = add i64 %141, 1
  store i64 %inc202, ptr %i, align 8, !tbaa !9
  br label %for.cond183, !llvm.loop !48

for.end203:                                       ; preds = %for.cond183
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer159) #4
  br label %sw.epilog

sw.bb204:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer205) #4
  %base206 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %142 = load ptr, ptr %base206, align 8, !tbaa !14
  %datatype207 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %142, i32 0, i32 0
  %143 = load i32, ptr %datatype207, align 8, !tbaa !15
  %cmp208 = icmp eq i32 %143, 105
  br i1 %cmp208, label %cond.true210, label %cond.false214

cond.true210:                                     ; preds = %sw.bb204
  %base211 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %144 = load ptr, ptr %base211, align 8, !tbaa !14
  %buffer212 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %144, i32 0, i32 12
  %145 = load ptr, ptr %buffer212, align 8, !tbaa !18
  %add.ptr213 = getelementptr inbounds i8, ptr %145, i64 24
  br label %cond.end227

cond.false214:                                    ; preds = %sw.bb204
  %base215 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %146 = load ptr, ptr %base215, align 8, !tbaa !14
  %buffer216 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %146, i32 0, i32 12
  %147 = load ptr, ptr %buffer216, align 8, !tbaa !18
  %offn217 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %148 = load i64, ptr %offn217, align 8, !tbaa !19
  %base218 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %149 = load ptr, ptr %base218, align 8, !tbaa !14
  %cs219 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %149, i32 0, i32 5
  %150 = load i64, ptr %cs219, align 8, !tbaa !20
  %mul220 = mul i64 %148, %150
  %add.ptr221 = getelementptr inbounds %struct.scomplex, ptr %147, i64 %mul220
  %offm222 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %151 = load i64, ptr %offm222, align 8, !tbaa !21
  %base223 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %152 = load ptr, ptr %base223, align 8, !tbaa !14
  %rs224 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %152, i32 0, i32 4
  %153 = load i64, ptr %rs224, align 8, !tbaa !22
  %mul225 = mul i64 %151, %153
  %add.ptr226 = getelementptr inbounds %struct.scomplex, ptr %add.ptr221, i64 %mul225
  br label %cond.end227

cond.end227:                                      ; preds = %cond.false214, %cond.true210
  %cond228 = phi ptr [ %add.ptr213, %cond.true210 ], [ %add.ptr226, %cond.false214 ]
  store ptr %cond228, ptr %buffer205, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !9
  br label %for.cond229

for.cond229:                                      ; preds = %for.inc257, %cond.end227
  %154 = load i64, ptr %i, align 8, !tbaa !9
  %155 = load i64, ptr %m, align 8, !tbaa !9
  %cmp230 = icmp ult i64 %154, %155
  br i1 %cmp230, label %for.body232, label %for.end259

for.body232:                                      ; preds = %for.cond229
  store i64 0, ptr %j, align 8, !tbaa !9
  br label %for.cond233

for.cond233:                                      ; preds = %for.inc253, %for.body232
  %156 = load i64, ptr %j, align 8, !tbaa !9
  %157 = load i64, ptr %n, align 8, !tbaa !9
  %cmp234 = icmp ult i64 %156, %157
  br i1 %cmp234, label %for.body236, label %for.end255

for.body236:                                      ; preds = %for.cond233
  %158 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %159 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %160 = load ptr, ptr %buffer205, align 8, !tbaa !4
  %161 = load i64, ptr %j, align 8, !tbaa !9
  %162 = load i64, ptr %cs, align 8, !tbaa !9
  %mul237 = mul i64 %161, %162
  %163 = load i64, ptr %i, align 8, !tbaa !9
  %164 = load i64, ptr %rs, align 8, !tbaa !9
  %mul238 = mul i64 %163, %164
  %add239 = add i64 %mul237, %mul238
  %arrayidx240 = getelementptr inbounds %struct.scomplex, ptr %160, i64 %add239
  %real241 = getelementptr inbounds %struct.scomplex, ptr %arrayidx240, i32 0, i32 0
  %165 = load float, ptr %real241, align 4, !tbaa !28
  %conv242 = fpext float %165 to double
  %call243 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef %159, double noundef %conv242)
  %166 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %call244 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %166, ptr noundef @.str.8)
  %167 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %168 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %169 = load ptr, ptr %buffer205, align 8, !tbaa !4
  %170 = load i64, ptr %j, align 8, !tbaa !9
  %171 = load i64, ptr %cs, align 8, !tbaa !9
  %mul245 = mul i64 %170, %171
  %172 = load i64, ptr %i, align 8, !tbaa !9
  %173 = load i64, ptr %rs, align 8, !tbaa !9
  %mul246 = mul i64 %172, %173
  %add247 = add i64 %mul245, %mul246
  %arrayidx248 = getelementptr inbounds %struct.scomplex, ptr %169, i64 %add247
  %imag249 = getelementptr inbounds %struct.scomplex, ptr %arrayidx248, i32 0, i32 1
  %174 = load float, ptr %imag249, align 4, !tbaa !32
  %conv250 = fpext float %174 to double
  %call251 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef %168, double noundef %conv250)
  %175 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %call252 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %175, ptr noundef @.str.9)
  br label %for.inc253

for.inc253:                                       ; preds = %for.body236
  %176 = load i64, ptr %j, align 8, !tbaa !9
  %inc254 = add i64 %176, 1
  store i64 %inc254, ptr %j, align 8, !tbaa !9
  br label %for.cond233, !llvm.loop !49

for.end255:                                       ; preds = %for.cond233
  %177 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %call256 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef @.str.7)
  br label %for.inc257

for.inc257:                                       ; preds = %for.end255
  %178 = load i64, ptr %i, align 8, !tbaa !9
  %inc258 = add i64 %178, 1
  store i64 %inc258, ptr %i, align 8, !tbaa !9
  br label %for.cond229, !llvm.loop !50

for.end259:                                       ; preds = %for.cond229
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer205) #4
  br label %sw.epilog

sw.bb260:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer261) #4
  %base262 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %179 = load ptr, ptr %base262, align 8, !tbaa !14
  %datatype263 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %179, i32 0, i32 0
  %180 = load i32, ptr %datatype263, align 8, !tbaa !15
  %cmp264 = icmp eq i32 %180, 105
  br i1 %cmp264, label %cond.true266, label %cond.false270

cond.true266:                                     ; preds = %sw.bb260
  %base267 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %181 = load ptr, ptr %base267, align 8, !tbaa !14
  %buffer268 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %181, i32 0, i32 12
  %182 = load ptr, ptr %buffer268, align 8, !tbaa !18
  %add.ptr269 = getelementptr inbounds i8, ptr %182, i64 32
  br label %cond.end283

cond.false270:                                    ; preds = %sw.bb260
  %base271 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %183 = load ptr, ptr %base271, align 8, !tbaa !14
  %buffer272 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %183, i32 0, i32 12
  %184 = load ptr, ptr %buffer272, align 8, !tbaa !18
  %offn273 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %185 = load i64, ptr %offn273, align 8, !tbaa !19
  %base274 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %186 = load ptr, ptr %base274, align 8, !tbaa !14
  %cs275 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %186, i32 0, i32 5
  %187 = load i64, ptr %cs275, align 8, !tbaa !20
  %mul276 = mul i64 %185, %187
  %add.ptr277 = getelementptr inbounds %struct.dcomplex, ptr %184, i64 %mul276
  %offm278 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %188 = load i64, ptr %offm278, align 8, !tbaa !21
  %base279 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %189 = load ptr, ptr %base279, align 8, !tbaa !14
  %rs280 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %189, i32 0, i32 4
  %190 = load i64, ptr %rs280, align 8, !tbaa !22
  %mul281 = mul i64 %188, %190
  %add.ptr282 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr277, i64 %mul281
  br label %cond.end283

cond.end283:                                      ; preds = %cond.false270, %cond.true266
  %cond284 = phi ptr [ %add.ptr269, %cond.true266 ], [ %add.ptr282, %cond.false270 ]
  store ptr %cond284, ptr %buffer261, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !9
  br label %for.cond285

for.cond285:                                      ; preds = %for.inc311, %cond.end283
  %191 = load i64, ptr %i, align 8, !tbaa !9
  %192 = load i64, ptr %m, align 8, !tbaa !9
  %cmp286 = icmp ult i64 %191, %192
  br i1 %cmp286, label %for.body288, label %for.end313

for.body288:                                      ; preds = %for.cond285
  store i64 0, ptr %j, align 8, !tbaa !9
  br label %for.cond289

for.cond289:                                      ; preds = %for.inc307, %for.body288
  %193 = load i64, ptr %j, align 8, !tbaa !9
  %194 = load i64, ptr %n, align 8, !tbaa !9
  %cmp290 = icmp ult i64 %193, %194
  br i1 %cmp290, label %for.body292, label %for.end309

for.body292:                                      ; preds = %for.cond289
  %195 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %196 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %197 = load ptr, ptr %buffer261, align 8, !tbaa !4
  %198 = load i64, ptr %j, align 8, !tbaa !9
  %199 = load i64, ptr %cs, align 8, !tbaa !9
  %mul293 = mul i64 %198, %199
  %200 = load i64, ptr %i, align 8, !tbaa !9
  %201 = load i64, ptr %rs, align 8, !tbaa !9
  %mul294 = mul i64 %200, %201
  %add295 = add i64 %mul293, %mul294
  %arrayidx296 = getelementptr inbounds %struct.dcomplex, ptr %197, i64 %add295
  %real297 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx296, i32 0, i32 0
  %202 = load double, ptr %real297, align 8, !tbaa !30
  %call298 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %195, ptr noundef %196, double noundef %202)
  %203 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %call299 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef @.str.8)
  %204 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %205 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %206 = load ptr, ptr %buffer261, align 8, !tbaa !4
  %207 = load i64, ptr %j, align 8, !tbaa !9
  %208 = load i64, ptr %cs, align 8, !tbaa !9
  %mul300 = mul i64 %207, %208
  %209 = load i64, ptr %i, align 8, !tbaa !9
  %210 = load i64, ptr %rs, align 8, !tbaa !9
  %mul301 = mul i64 %209, %210
  %add302 = add i64 %mul300, %mul301
  %arrayidx303 = getelementptr inbounds %struct.dcomplex, ptr %206, i64 %add302
  %imag304 = getelementptr inbounds %struct.dcomplex, ptr %arrayidx303, i32 0, i32 1
  %211 = load double, ptr %imag304, align 8, !tbaa !33
  %call305 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %204, ptr noundef %205, double noundef %211)
  %212 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %call306 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef @.str.9)
  br label %for.inc307

for.inc307:                                       ; preds = %for.body292
  %213 = load i64, ptr %j, align 8, !tbaa !9
  %inc308 = add i64 %213, 1
  store i64 %inc308, ptr %j, align 8, !tbaa !9
  br label %for.cond289, !llvm.loop !51

for.end309:                                       ; preds = %for.cond289
  %214 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %call310 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %214, ptr noundef @.str.7)
  br label %for.inc311

for.inc311:                                       ; preds = %for.end309
  %215 = load i64, ptr %i, align 8, !tbaa !9
  %inc312 = add i64 %215, 1
  store i64 %inc312, ptr %i, align 8, !tbaa !9
  br label %for.cond285, !llvm.loop !52

for.end313:                                       ; preds = %for.cond285
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer261) #4
  br label %sw.epilog

sw.bb314:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer315) #4
  %base316 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %216 = load ptr, ptr %base316, align 8, !tbaa !14
  %datatype317 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %216, i32 0, i32 0
  %217 = load i32, ptr %datatype317, align 8, !tbaa !15
  %cmp318 = icmp eq i32 %217, 105
  br i1 %cmp318, label %cond.true320, label %cond.false324

cond.true320:                                     ; preds = %sw.bb314
  %base321 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %218 = load ptr, ptr %base321, align 8, !tbaa !14
  %buffer322 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %218, i32 0, i32 12
  %219 = load ptr, ptr %buffer322, align 8, !tbaa !18
  %add.ptr323 = getelementptr inbounds i8, ptr %219, i64 0
  br label %cond.end337

cond.false324:                                    ; preds = %sw.bb314
  %base325 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %220 = load ptr, ptr %base325, align 8, !tbaa !14
  %buffer326 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %220, i32 0, i32 12
  %221 = load ptr, ptr %buffer326, align 8, !tbaa !18
  %offn327 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %222 = load i64, ptr %offn327, align 8, !tbaa !19
  %base328 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %223 = load ptr, ptr %base328, align 8, !tbaa !14
  %cs329 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %223, i32 0, i32 5
  %224 = load i64, ptr %cs329, align 8, !tbaa !20
  %mul330 = mul i64 %222, %224
  %add.ptr331 = getelementptr inbounds i32, ptr %221, i64 %mul330
  %offm332 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %225 = load i64, ptr %offm332, align 8, !tbaa !21
  %base333 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %226 = load ptr, ptr %base333, align 8, !tbaa !14
  %rs334 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %226, i32 0, i32 4
  %227 = load i64, ptr %rs334, align 8, !tbaa !22
  %mul335 = mul i64 %225, %227
  %add.ptr336 = getelementptr inbounds i32, ptr %add.ptr331, i64 %mul335
  br label %cond.end337

cond.end337:                                      ; preds = %cond.false324, %cond.true320
  %cond338 = phi ptr [ %add.ptr323, %cond.true320 ], [ %add.ptr336, %cond.false324 ]
  store ptr %cond338, ptr %buffer315, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !9
  br label %for.cond339

for.cond339:                                      ; preds = %for.inc357, %cond.end337
  %228 = load i64, ptr %i, align 8, !tbaa !9
  %229 = load i64, ptr %m, align 8, !tbaa !9
  %cmp340 = icmp ult i64 %228, %229
  br i1 %cmp340, label %for.body342, label %for.end359

for.body342:                                      ; preds = %for.cond339
  store i64 0, ptr %j, align 8, !tbaa !9
  br label %for.cond343

for.cond343:                                      ; preds = %for.inc353, %for.body342
  %230 = load i64, ptr %j, align 8, !tbaa !9
  %231 = load i64, ptr %n, align 8, !tbaa !9
  %cmp344 = icmp ult i64 %230, %231
  br i1 %cmp344, label %for.body346, label %for.end355

for.body346:                                      ; preds = %for.cond343
  %232 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %233 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %234 = load ptr, ptr %buffer315, align 8, !tbaa !4
  %235 = load i64, ptr %j, align 8, !tbaa !9
  %236 = load i64, ptr %cs, align 8, !tbaa !9
  %mul347 = mul i64 %235, %236
  %237 = load i64, ptr %i, align 8, !tbaa !9
  %238 = load i64, ptr %rs, align 8, !tbaa !9
  %mul348 = mul i64 %237, %238
  %add349 = add i64 %mul347, %mul348
  %arrayidx350 = getelementptr inbounds i32, ptr %234, i64 %add349
  %239 = load i32, ptr %arrayidx350, align 4, !tbaa !35
  %call351 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %232, ptr noundef %233, i32 noundef %239)
  %240 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %call352 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %240, ptr noundef @.str.6)
  br label %for.inc353

for.inc353:                                       ; preds = %for.body346
  %241 = load i64, ptr %j, align 8, !tbaa !9
  %inc354 = add i64 %241, 1
  store i64 %inc354, ptr %j, align 8, !tbaa !9
  br label %for.cond343, !llvm.loop !53

for.end355:                                       ; preds = %for.cond343
  %242 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %call356 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %242, ptr noundef @.str.7)
  br label %for.inc357

for.inc357:                                       ; preds = %for.end355
  %243 = load i64, ptr %i, align 8, !tbaa !9
  %inc358 = add i64 %243, 1
  store i64 %inc358, ptr %i, align 8, !tbaa !9
  br label %for.cond339, !llvm.loop !54

for.end359:                                       ; preds = %for.cond339
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer315) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %for.end359, %for.end313, %for.end259, %for.end203, %for.end157, %cond.end106
  %244 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %245 = load ptr, ptr %s2.addr, align 8, !tbaa !4
  %call360 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %244, ptr noundef @.str, ptr noundef %245)
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #4
  ret i32 -1
}

declare i32 @FLA_Obj_fshow_check(ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define i32 @FLA_Obj_show(ptr noundef %s1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %format, ptr noundef %s2) #0 {
entry:
  %s1.addr = alloca ptr, align 8
  %format.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  store ptr %s1, ptr %s1.addr, align 8, !tbaa !4
  store ptr %format, ptr %format.addr, align 8, !tbaa !4
  store ptr %s2, ptr %s2.addr, align 8, !tbaa !4
  %call = call i32 @FLA_Check_error_level()
  %cmp = icmp uge i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %s1.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %s2.addr, align 8, !tbaa !4
  %call1 = call i32 @FLA_Obj_show_check(ptr noundef %0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %1, ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr @stdout, align 8, !tbaa !4
  %4 = load ptr, ptr %s1.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %format.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %s2.addr, align 8, !tbaa !4
  %call2 = call i32 @FLA_Obj_fshow(ptr noundef %3, ptr noundef %4, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %5, ptr noundef %6)
  ret i32 %call2
}

declare i32 @FLA_Obj_show_check(ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
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
!8 = !{i64 0, i64 8, !9, i64 8, i64 8, !9, i64 16, i64 8, !9, i64 24, i64 8, !9, i64 32, i64 8, !9, i64 40, i64 8, !9, i64 48, i64 8, !4}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!12, !10, i64 32}
!12 = !{!"FLA_Obj_view", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !5, i64 48}
!13 = !{!12, !10, i64 40}
!14 = !{!12, !5, i64 48}
!15 = !{!16, !17, i64 0}
!16 = !{!"FLA_Obj_struct", !17, i64 0, !17, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !5, i64 88, !17, i64 96, !17, i64 100}
!17 = !{!"int", !6, i64 0}
!18 = !{!16, !5, i64 88}
!19 = !{!12, !10, i64 8}
!20 = !{!16, !10, i64 32}
!21 = !{!12, !10, i64 0}
!22 = !{!16, !10, i64 24}
!23 = !{!24, !24, i64 0}
!24 = !{!"float", !6, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"double", !6, i64 0}
!27 = !{i64 0, i64 4, !23, i64 4, i64 4, !23}
!28 = !{!29, !24, i64 0}
!29 = !{!"scomplex", !24, i64 0, !24, i64 4}
!30 = !{!31, !26, i64 0}
!31 = !{!"dcomplex", !26, i64 0, !26, i64 8}
!32 = !{!29, !24, i64 4}
!33 = !{!31, !26, i64 8}
!34 = !{i64 0, i64 8, !25, i64 8, i64 8, !25}
!35 = !{!17, !17, i64 0}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = distinct !{!38, !37}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !37}
!41 = distinct !{!41, !37}
!42 = distinct !{!42, !37}
!43 = distinct !{!43, !37}
!44 = distinct !{!44, !37}
!45 = distinct !{!45, !37}
!46 = distinct !{!46, !37}
!47 = distinct !{!47, !37}
!48 = distinct !{!48, !37}
!49 = distinct !{!49, !37}
!50 = distinct !{!50, !37}
!51 = distinct !{!51, !37}
!52 = distinct !{!52, !37}
!53 = distinct !{!53, !37}
!54 = distinct !{!54, !37}
