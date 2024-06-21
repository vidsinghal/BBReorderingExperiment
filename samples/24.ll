; ModuleID = 'samples/24.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/blas/3/gemm/front/flamec/FLA_Gemm_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.fla_gemm_s = type { i32, i32, ptr, ptr, ptr }

@flash_gemm_cntl_mm_op = external global ptr, align 8
@.str = private unnamed_addr constant [191 x i8] c"/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/blas/3/gemm/front/flamec/FLA_Gemm_internal.c\00", align 1
@flash_gemm_cntl_blas = external global ptr, align 8

; Function Attrs: nounwind uwtable
define i32 @FLA_Gemm_internal(i32 noundef %transa, i32 noundef %transb, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %cntl) #0 {
entry:
  %transa.addr = alloca i32, align 4
  %transb.addr = alloca i32, align 4
  %cntl.addr = alloca ptr, align 8
  %r_val = alloca i32, align 4
  store i32 %transa, ptr %transa.addr, align 4, !tbaa !4
  store i32 %transb, ptr %transb.addr, align 4, !tbaa !4
  store ptr %cntl, ptr %cntl.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  store i32 -1, ptr %r_val, align 4, !tbaa !4
  %call = call i32 @FLA_Check_error_level()
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %transa.addr, align 4, !tbaa !4
  %1 = load i32, ptr %transb.addr, align 4, !tbaa !4
  %2 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call1 = call i32 @FLA_Gemm_internal_check(i32 noundef %0, i32 noundef %1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %matrix_type = getelementptr inbounds %struct.fla_gemm_s, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %matrix_type, align 8, !tbaa !10
  %cmp2 = icmp eq i32 %4, 1001
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp4 = icmp eq i32 %call3, 150
  br i1 %cmp4, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %variant = getelementptr inbounds %struct.fla_gemm_s, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %variant, align 4, !tbaa !12
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true5
  %7 = load i32, ptr %transa.addr, align 4, !tbaa !4
  %8 = load i32, ptr %transb.addr, align 4, !tbaa !4
  %call8 = call ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call9 = call ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %call10 = call ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8 %C)
  %9 = load ptr, ptr @flash_gemm_cntl_mm_op, align 8, !tbaa !8
  %call11 = call i32 @FLA_Gemm_internal(i32 noundef %7, i32 noundef %8, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %call8, ptr noundef byval(%struct.FLA_Obj_view) align 8 %call9, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %call10, ptr noundef %9)
  store i32 %call11, ptr %r_val, align 4, !tbaa !4
  br label %if.end124

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true, %if.end
  %10 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %matrix_type12 = getelementptr inbounds %struct.fla_gemm_s, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %matrix_type12, align 8, !tbaa !10
  %cmp13 = icmp eq i32 %11, 1001
  br i1 %cmp13, label %land.lhs.true14, label %if.else21

land.lhs.true14:                                  ; preds = %if.else
  %call15 = call i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp16 = icmp eq i32 %call15, 151
  br i1 %cmp16, label %land.lhs.true17, label %if.else21

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %call18 = call i32 @FLASH_Queue_get_enabled()
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then19, label %if.else21

if.then19:                                        ; preds = %land.lhs.true17
  %call20 = call i32 @FLA_Check_error_code_helper(i32 noundef -56, ptr noundef @.str, i32 noundef 42)
  br label %if.end123

if.else21:                                        ; preds = %land.lhs.true17, %land.lhs.true14, %if.else
  %12 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %matrix_type22 = getelementptr inbounds %struct.fla_gemm_s, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %matrix_type22, align 8, !tbaa !10
  %cmp23 = icmp eq i32 %13, 1001
  br i1 %cmp23, label %land.lhs.true24, label %if.end31

land.lhs.true24:                                  ; preds = %if.else21
  %call25 = call i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp26 = icmp eq i32 %call25, 151
  br i1 %cmp26, label %land.lhs.true27, label %if.end31

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %call28 = call i32 @FLASH_Queue_get_enabled()
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %land.lhs.true27
  %14 = load ptr, ptr @flash_gemm_cntl_blas, align 8, !tbaa !8
  store ptr %14, ptr %cntl.addr, align 8, !tbaa !8
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %land.lhs.true27, %land.lhs.true24, %if.else21
  %15 = load i32, ptr %transa.addr, align 4, !tbaa !4
  %cmp32 = icmp eq i32 %15, 400
  br i1 %cmp32, label %if.then33, label %if.else53

if.then33:                                        ; preds = %if.end31
  %16 = load i32, ptr %transb.addr, align 4, !tbaa !4
  %cmp34 = icmp eq i32 %16, 400
  br i1 %cmp34, label %if.then35, label %if.else37

if.then35:                                        ; preds = %if.then33
  %17 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call36 = call i32 @FLA_Gemm_nn(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %17)
  store i32 %call36, ptr %r_val, align 4, !tbaa !4
  br label %if.end52

if.else37:                                        ; preds = %if.then33
  %18 = load i32, ptr %transb.addr, align 4, !tbaa !4
  %cmp38 = icmp eq i32 %18, 401
  br i1 %cmp38, label %if.then39, label %if.else41

if.then39:                                        ; preds = %if.else37
  %19 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call40 = call i32 @FLA_Gemm_nt(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %19)
  store i32 %call40, ptr %r_val, align 4, !tbaa !4
  br label %if.end51

if.else41:                                        ; preds = %if.else37
  %20 = load i32, ptr %transb.addr, align 4, !tbaa !4
  %cmp42 = icmp eq i32 %20, 403
  br i1 %cmp42, label %if.then43, label %if.else45

if.then43:                                        ; preds = %if.else41
  %21 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call44 = call i32 @FLA_Gemm_nc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %21)
  store i32 %call44, ptr %r_val, align 4, !tbaa !4
  br label %if.end50

if.else45:                                        ; preds = %if.else41
  %22 = load i32, ptr %transb.addr, align 4, !tbaa !4
  %cmp46 = icmp eq i32 %22, 402
  br i1 %cmp46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.else45
  %23 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call48 = call i32 @FLA_Gemm_nh(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %23)
  store i32 %call48, ptr %r_val, align 4, !tbaa !4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.else45
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then43
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then39
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then35
  br label %if.end122

if.else53:                                        ; preds = %if.end31
  %24 = load i32, ptr %transa.addr, align 4, !tbaa !4
  %cmp54 = icmp eq i32 %24, 401
  br i1 %cmp54, label %if.then55, label %if.else75

if.then55:                                        ; preds = %if.else53
  %25 = load i32, ptr %transb.addr, align 4, !tbaa !4
  %cmp56 = icmp eq i32 %25, 400
  br i1 %cmp56, label %if.then57, label %if.else59

if.then57:                                        ; preds = %if.then55
  %26 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call58 = call i32 @FLA_Gemm_tn(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %26)
  store i32 %call58, ptr %r_val, align 4, !tbaa !4
  br label %if.end74

if.else59:                                        ; preds = %if.then55
  %27 = load i32, ptr %transb.addr, align 4, !tbaa !4
  %cmp60 = icmp eq i32 %27, 401
  br i1 %cmp60, label %if.then61, label %if.else63

if.then61:                                        ; preds = %if.else59
  %28 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call62 = call i32 @FLA_Gemm_tt(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %28)
  store i32 %call62, ptr %r_val, align 4, !tbaa !4
  br label %if.end73

if.else63:                                        ; preds = %if.else59
  %29 = load i32, ptr %transb.addr, align 4, !tbaa !4
  %cmp64 = icmp eq i32 %29, 403
  br i1 %cmp64, label %if.then65, label %if.else67

if.then65:                                        ; preds = %if.else63
  %30 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call66 = call i32 @FLA_Gemm_tc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %30)
  store i32 %call66, ptr %r_val, align 4, !tbaa !4
  br label %if.end72

if.else67:                                        ; preds = %if.else63
  %31 = load i32, ptr %transb.addr, align 4, !tbaa !4
  %cmp68 = icmp eq i32 %31, 402
  br i1 %cmp68, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.else67
  %32 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call70 = call i32 @FLA_Gemm_th(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %32)
  store i32 %call70, ptr %r_val, align 4, !tbaa !4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.else67
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then65
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then61
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then57
  br label %if.end121

if.else75:                                        ; preds = %if.else53
  %33 = load i32, ptr %transa.addr, align 4, !tbaa !4
  %cmp76 = icmp eq i32 %33, 403
  br i1 %cmp76, label %if.then77, label %if.else97

if.then77:                                        ; preds = %if.else75
  %34 = load i32, ptr %transb.addr, align 4, !tbaa !4
  %cmp78 = icmp eq i32 %34, 400
  br i1 %cmp78, label %if.then79, label %if.else81

if.then79:                                        ; preds = %if.then77
  %35 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call80 = call i32 @FLA_Gemm_cn(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %35)
  store i32 %call80, ptr %r_val, align 4, !tbaa !4
  br label %if.end96

if.else81:                                        ; preds = %if.then77
  %36 = load i32, ptr %transb.addr, align 4, !tbaa !4
  %cmp82 = icmp eq i32 %36, 401
  br i1 %cmp82, label %if.then83, label %if.else85

if.then83:                                        ; preds = %if.else81
  %37 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call84 = call i32 @FLA_Gemm_ct(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %37)
  store i32 %call84, ptr %r_val, align 4, !tbaa !4
  br label %if.end95

if.else85:                                        ; preds = %if.else81
  %38 = load i32, ptr %transb.addr, align 4, !tbaa !4
  %cmp86 = icmp eq i32 %38, 403
  br i1 %cmp86, label %if.then87, label %if.else89

if.then87:                                        ; preds = %if.else85
  %39 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call88 = call i32 @FLA_Gemm_cc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %39)
  store i32 %call88, ptr %r_val, align 4, !tbaa !4
  br label %if.end94

if.else89:                                        ; preds = %if.else85
  %40 = load i32, ptr %transb.addr, align 4, !tbaa !4
  %cmp90 = icmp eq i32 %40, 402
  br i1 %cmp90, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.else89
  %41 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call92 = call i32 @FLA_Gemm_ch(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %41)
  store i32 %call92, ptr %r_val, align 4, !tbaa !4
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.else89
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.then87
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then83
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then79
  br label %if.end120

if.else97:                                        ; preds = %if.else75
  %42 = load i32, ptr %transa.addr, align 4, !tbaa !4
  %cmp98 = icmp eq i32 %42, 402
  br i1 %cmp98, label %if.then99, label %if.end119

if.then99:                                        ; preds = %if.else97
  %43 = load i32, ptr %transb.addr, align 4, !tbaa !4
  %cmp100 = icmp eq i32 %43, 400
  br i1 %cmp100, label %if.then101, label %if.else103

if.then101:                                       ; preds = %if.then99
  %44 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call102 = call i32 @FLA_Gemm_hn(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %44)
  store i32 %call102, ptr %r_val, align 4, !tbaa !4
  br label %if.end118

if.else103:                                       ; preds = %if.then99
  %45 = load i32, ptr %transb.addr, align 4, !tbaa !4
  %cmp104 = icmp eq i32 %45, 401
  br i1 %cmp104, label %if.then105, label %if.else107

if.then105:                                       ; preds = %if.else103
  %46 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call106 = call i32 @FLA_Gemm_ht(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %46)
  store i32 %call106, ptr %r_val, align 4, !tbaa !4
  br label %if.end117

if.else107:                                       ; preds = %if.else103
  %47 = load i32, ptr %transb.addr, align 4, !tbaa !4
  %cmp108 = icmp eq i32 %47, 403
  br i1 %cmp108, label %if.then109, label %if.else111

if.then109:                                       ; preds = %if.else107
  %48 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call110 = call i32 @FLA_Gemm_hc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %48)
  store i32 %call110, ptr %r_val, align 4, !tbaa !4
  br label %if.end116

if.else111:                                       ; preds = %if.else107
  %49 = load i32, ptr %transb.addr, align 4, !tbaa !4
  %cmp112 = icmp eq i32 %49, 402
  br i1 %cmp112, label %if.then113, label %if.end115

if.then113:                                       ; preds = %if.else111
  %50 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call114 = call i32 @FLA_Gemm_hh(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %50)
  store i32 %call114, ptr %r_val, align 4, !tbaa !4
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.else111
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.then109
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then105
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.then101
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %if.else97
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.end96
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.end74
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.end52
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.then19
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.then7
  %51 = load i32, ptr %r_val, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  ret i32 %51
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Check_error_level() #2

declare i32 @FLA_Gemm_internal_check(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLASH_Queue_get_enabled() #2

declare i32 @FLA_Check_error_code_helper(i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Gemm_nn(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Gemm_nt(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Gemm_nc(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Gemm_nh(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Gemm_tn(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Gemm_tt(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Gemm_tc(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Gemm_th(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Gemm_cn(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Gemm_ct(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Gemm_cc(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Gemm_ch(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Gemm_hn(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Gemm_ht(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Gemm_hc(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Gemm_hh(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 0}
!11 = !{!"fla_gemm_s", !5, i64 0, !5, i64 4, !9, i64 8, !9, i64 16, !9, i64 24}
!12 = !{!11, !5, i64 4}
