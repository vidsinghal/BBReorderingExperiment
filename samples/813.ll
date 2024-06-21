; ModuleID = 'samples/813.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/util/app/qudut/front/flamec/FLA_Apply_QUD_UT_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.fla_apqudut_s = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@flash_apqudut_cntl = external global ptr, align 8
@.str = private unnamed_addr constant [209 x i8] c"/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/util/app/qudut/front/flamec/FLA_Apply_QUD_UT_internal.c\00", align 1
@fla_apqudut_cntl_leaf = external global ptr, align 8

; Function Attrs: nounwind uwtable
define i32 @FLA_Apply_QUD_UT_internal(i32 noundef %side, i32 noundef %trans, i32 noundef %direct, i32 noundef %storev, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %R, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef byval(%struct.FLA_Obj_view) align 8 %V, ptr noundef byval(%struct.FLA_Obj_view) align 8 %D, ptr noundef %cntl) #0 {
entry:
  %side.addr = alloca i32, align 4
  %trans.addr = alloca i32, align 4
  %direct.addr = alloca i32, align 4
  %storev.addr = alloca i32, align 4
  %cntl.addr = alloca ptr, align 8
  %r_val = alloca i32, align 4
  store i32 %side, ptr %side.addr, align 4, !tbaa !4
  store i32 %trans, ptr %trans.addr, align 4, !tbaa !4
  store i32 %direct, ptr %direct.addr, align 4, !tbaa !4
  store i32 %storev, ptr %storev.addr, align 4, !tbaa !4
  store ptr %cntl, ptr %cntl.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  store i32 -1, ptr %r_val, align 4, !tbaa !4
  %call = call i32 @FLA_Check_error_level()
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %side.addr, align 4, !tbaa !4
  %1 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %2 = load i32, ptr %direct.addr, align 4, !tbaa !4
  %3 = load i32, ptr %storev.addr, align 4, !tbaa !4
  %4 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call1 = call i32 @FLA_Apply_QUD_UT_internal_check(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %R, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef byval(%struct.FLA_Obj_view) align 8 %V, ptr noundef byval(%struct.FLA_Obj_view) align 8 %D, ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %matrix_type = getelementptr inbounds %struct.fla_apqudut_s, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %matrix_type, align 8, !tbaa !10
  %cmp2 = icmp eq i32 %6, 1001
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %call3 = call i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %R)
  %cmp4 = icmp eq i32 %call3, 150
  br i1 %cmp4, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %variant = getelementptr inbounds %struct.fla_apqudut_s, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %variant, align 4, !tbaa !12
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true5
  %9 = load i32, ptr %side.addr, align 4, !tbaa !4
  %10 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %11 = load i32, ptr %direct.addr, align 4, !tbaa !4
  %12 = load i32, ptr %storev.addr, align 4, !tbaa !4
  %call8 = call ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %call9 = call ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8 %W)
  %call10 = call ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8 %R)
  %call11 = call ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8 %U)
  %call12 = call ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8 %C)
  %call13 = call ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8 %V)
  %call14 = call ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8 %D)
  %13 = load ptr, ptr @flash_apqudut_cntl, align 8, !tbaa !8
  %call15 = call i32 @FLA_Apply_QUD_UT_internal(i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %call8, ptr noundef byval(%struct.FLA_Obj_view) align 8 %call9, ptr noundef byval(%struct.FLA_Obj_view) align 8 %call10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %call11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %call12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %call13, ptr noundef byval(%struct.FLA_Obj_view) align 8 %call14, ptr noundef %13)
  store i32 %call15, ptr %r_val, align 4, !tbaa !4
  br label %if.end161

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true, %if.end
  %14 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %matrix_type16 = getelementptr inbounds %struct.fla_apqudut_s, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %matrix_type16, align 8, !tbaa !10
  %cmp17 = icmp eq i32 %15, 1001
  br i1 %cmp17, label %land.lhs.true18, label %if.else25

land.lhs.true18:                                  ; preds = %if.else
  %call19 = call i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %R)
  %cmp20 = icmp eq i32 %call19, 151
  br i1 %cmp20, label %land.lhs.true21, label %if.else25

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %call22 = call i32 @FLASH_Queue_get_enabled()
  %tobool = icmp ne i32 %call22, 0
  br i1 %tobool, label %if.then23, label %if.else25

if.then23:                                        ; preds = %land.lhs.true21
  %call24 = call i32 @FLA_Check_error_code_helper(i32 noundef -56, ptr noundef @.str, i32 noundef 53)
  br label %if.end160

if.else25:                                        ; preds = %land.lhs.true21, %land.lhs.true18, %if.else
  %16 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %matrix_type26 = getelementptr inbounds %struct.fla_apqudut_s, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %matrix_type26, align 8, !tbaa !10
  %cmp27 = icmp eq i32 %17, 1001
  br i1 %cmp27, label %land.lhs.true28, label %if.end35

land.lhs.true28:                                  ; preds = %if.else25
  %call29 = call i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %R)
  %cmp30 = icmp eq i32 %call29, 151
  br i1 %cmp30, label %land.lhs.true31, label %if.end35

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %call32 = call i32 @FLASH_Queue_get_enabled()
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end35, label %if.then34

if.then34:                                        ; preds = %land.lhs.true31
  %18 = load ptr, ptr @fla_apqudut_cntl_leaf, align 8, !tbaa !8
  store ptr %18, ptr %cntl.addr, align 8, !tbaa !8
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %land.lhs.true31, %land.lhs.true28, %if.else25
  %19 = load i32, ptr %side.addr, align 4, !tbaa !4
  %cmp36 = icmp eq i32 %19, 210
  br i1 %cmp36, label %if.then37, label %if.else96

if.then37:                                        ; preds = %if.end35
  %20 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %cmp38 = icmp eq i32 %20, 400
  br i1 %cmp38, label %if.then39, label %if.else65

if.then39:                                        ; preds = %if.then37
  %21 = load i32, ptr %direct.addr, align 4, !tbaa !4
  %cmp40 = icmp eq i32 %21, 800
  br i1 %cmp40, label %if.then41, label %if.else51

if.then41:                                        ; preds = %if.then39
  %22 = load i32, ptr %storev.addr, align 4, !tbaa !4
  %cmp42 = icmp eq i32 %22, 900
  br i1 %cmp42, label %if.then43, label %if.else45

if.then43:                                        ; preds = %if.then41
  %call44 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 72)
  br label %if.end50

if.else45:                                        ; preds = %if.then41
  %23 = load i32, ptr %storev.addr, align 4, !tbaa !4
  %cmp46 = icmp eq i32 %23, 901
  br i1 %cmp46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.else45
  %call48 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 74)
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.else45
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then43
  br label %if.end64

if.else51:                                        ; preds = %if.then39
  %24 = load i32, ptr %direct.addr, align 4, !tbaa !4
  %cmp52 = icmp eq i32 %24, 801
  br i1 %cmp52, label %if.then53, label %if.end63

if.then53:                                        ; preds = %if.else51
  %25 = load i32, ptr %storev.addr, align 4, !tbaa !4
  %cmp54 = icmp eq i32 %25, 900
  br i1 %cmp54, label %if.then55, label %if.else57

if.then55:                                        ; preds = %if.then53
  %call56 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 79)
  br label %if.end62

if.else57:                                        ; preds = %if.then53
  %26 = load i32, ptr %storev.addr, align 4, !tbaa !4
  %cmp58 = icmp eq i32 %26, 901
  br i1 %cmp58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.else57
  %call60 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 81)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.else57
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then55
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.else51
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end50
  br label %if.end95

if.else65:                                        ; preds = %if.then37
  %27 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %cmp66 = icmp eq i32 %27, 401
  br i1 %cmp66, label %if.then68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else65
  %28 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %cmp67 = icmp eq i32 %28, 402
  br i1 %cmp67, label %if.then68, label %if.end94

if.then68:                                        ; preds = %lor.lhs.false, %if.else65
  %29 = load i32, ptr %direct.addr, align 4, !tbaa !4
  %cmp69 = icmp eq i32 %29, 800
  br i1 %cmp69, label %if.then70, label %if.else80

if.then70:                                        ; preds = %if.then68
  %30 = load i32, ptr %storev.addr, align 4, !tbaa !4
  %cmp71 = icmp eq i32 %30, 900
  br i1 %cmp71, label %if.then72, label %if.else74

if.then72:                                        ; preds = %if.then70
  %31 = load ptr, ptr %cntl.addr, align 8, !tbaa !8
  %call73 = call i32 @FLA_Apply_QUD_UT_lhfc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W, ptr noundef byval(%struct.FLA_Obj_view) align 8 %R, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef byval(%struct.FLA_Obj_view) align 8 %V, ptr noundef byval(%struct.FLA_Obj_view) align 8 %D, ptr noundef %31)
  store i32 %call73, ptr %r_val, align 4, !tbaa !4
  br label %if.end79

if.else74:                                        ; preds = %if.then70
  %32 = load i32, ptr %storev.addr, align 4, !tbaa !4
  %cmp75 = icmp eq i32 %32, 901
  br i1 %cmp75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.else74
  %call77 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 91)
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.else74
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then72
  br label %if.end93

if.else80:                                        ; preds = %if.then68
  %33 = load i32, ptr %direct.addr, align 4, !tbaa !4
  %cmp81 = icmp eq i32 %33, 801
  br i1 %cmp81, label %if.then82, label %if.end92

if.then82:                                        ; preds = %if.else80
  %34 = load i32, ptr %storev.addr, align 4, !tbaa !4
  %cmp83 = icmp eq i32 %34, 900
  br i1 %cmp83, label %if.then84, label %if.else86

if.then84:                                        ; preds = %if.then82
  %call85 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 96)
  br label %if.end91

if.else86:                                        ; preds = %if.then82
  %35 = load i32, ptr %storev.addr, align 4, !tbaa !4
  %cmp87 = icmp eq i32 %35, 901
  br i1 %cmp87, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.else86
  %call89 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 98)
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.else86
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then84
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.else80
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.end79
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %lor.lhs.false
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end64
  br label %if.end159

if.else96:                                        ; preds = %if.end35
  %36 = load i32, ptr %side.addr, align 4, !tbaa !4
  %cmp97 = icmp eq i32 %36, 211
  br i1 %cmp97, label %if.then98, label %if.end158

if.then98:                                        ; preds = %if.else96
  %37 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %cmp99 = icmp eq i32 %37, 400
  br i1 %cmp99, label %if.then100, label %if.else126

if.then100:                                       ; preds = %if.then98
  %38 = load i32, ptr %direct.addr, align 4, !tbaa !4
  %cmp101 = icmp eq i32 %38, 800
  br i1 %cmp101, label %if.then102, label %if.else112

if.then102:                                       ; preds = %if.then100
  %39 = load i32, ptr %storev.addr, align 4, !tbaa !4
  %cmp103 = icmp eq i32 %39, 900
  br i1 %cmp103, label %if.then104, label %if.else106

if.then104:                                       ; preds = %if.then102
  %call105 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 109)
  br label %if.end111

if.else106:                                       ; preds = %if.then102
  %40 = load i32, ptr %storev.addr, align 4, !tbaa !4
  %cmp107 = icmp eq i32 %40, 901
  br i1 %cmp107, label %if.then108, label %if.end110

if.then108:                                       ; preds = %if.else106
  %call109 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 111)
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.else106
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.then104
  br label %if.end125

if.else112:                                       ; preds = %if.then100
  %41 = load i32, ptr %direct.addr, align 4, !tbaa !4
  %cmp113 = icmp eq i32 %41, 801
  br i1 %cmp113, label %if.then114, label %if.end124

if.then114:                                       ; preds = %if.else112
  %42 = load i32, ptr %storev.addr, align 4, !tbaa !4
  %cmp115 = icmp eq i32 %42, 900
  br i1 %cmp115, label %if.then116, label %if.else118

if.then116:                                       ; preds = %if.then114
  %call117 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 116)
  br label %if.end123

if.else118:                                       ; preds = %if.then114
  %43 = load i32, ptr %storev.addr, align 4, !tbaa !4
  %cmp119 = icmp eq i32 %43, 901
  br i1 %cmp119, label %if.then120, label %if.end122

if.then120:                                       ; preds = %if.else118
  %call121 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 118)
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.else118
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.then116
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.else112
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.end111
  br label %if.end157

if.else126:                                       ; preds = %if.then98
  %44 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %cmp127 = icmp eq i32 %44, 401
  br i1 %cmp127, label %if.then130, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %if.else126
  %45 = load i32, ptr %trans.addr, align 4, !tbaa !4
  %cmp129 = icmp eq i32 %45, 402
  br i1 %cmp129, label %if.then130, label %if.end156

if.then130:                                       ; preds = %lor.lhs.false128, %if.else126
  %46 = load i32, ptr %direct.addr, align 4, !tbaa !4
  %cmp131 = icmp eq i32 %46, 800
  br i1 %cmp131, label %if.then132, label %if.else142

if.then132:                                       ; preds = %if.then130
  %47 = load i32, ptr %storev.addr, align 4, !tbaa !4
  %cmp133 = icmp eq i32 %47, 900
  br i1 %cmp133, label %if.then134, label %if.else136

if.then134:                                       ; preds = %if.then132
  %call135 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 126)
  br label %if.end141

if.else136:                                       ; preds = %if.then132
  %48 = load i32, ptr %storev.addr, align 4, !tbaa !4
  %cmp137 = icmp eq i32 %48, 901
  br i1 %cmp137, label %if.then138, label %if.end140

if.then138:                                       ; preds = %if.else136
  %call139 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 128)
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.else136
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.then134
  br label %if.end155

if.else142:                                       ; preds = %if.then130
  %49 = load i32, ptr %direct.addr, align 4, !tbaa !4
  %cmp143 = icmp eq i32 %49, 801
  br i1 %cmp143, label %if.then144, label %if.end154

if.then144:                                       ; preds = %if.else142
  %50 = load i32, ptr %storev.addr, align 4, !tbaa !4
  %cmp145 = icmp eq i32 %50, 900
  br i1 %cmp145, label %if.then146, label %if.else148

if.then146:                                       ; preds = %if.then144
  %call147 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 133)
  br label %if.end153

if.else148:                                       ; preds = %if.then144
  %51 = load i32, ptr %storev.addr, align 4, !tbaa !4
  %cmp149 = icmp eq i32 %51, 901
  br i1 %cmp149, label %if.then150, label %if.end152

if.then150:                                       ; preds = %if.else148
  %call151 = call i32 @FLA_Check_error_code_helper(i32 noundef -54, ptr noundef @.str, i32 noundef 135)
  br label %if.end152

if.end152:                                        ; preds = %if.then150, %if.else148
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.then146
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %if.else142
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.end141
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %lor.lhs.false128
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.end125
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %if.else96
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.end95
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %if.then23
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.then7
  %52 = load i32, ptr %r_val, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  ret i32 %52
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Check_error_level() #2

declare i32 @FLA_Apply_QUD_UT_internal_check(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Obj_elemtype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare ptr @FLA_Obj_buffer_at_view(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLASH_Queue_get_enabled() #2

declare i32 @FLA_Check_error_code_helper(i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Apply_QUD_UT_lhfc(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

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
!11 = !{!"fla_apqudut_s", !5, i64 0, !5, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72}
!12 = !{!11, !5, i64 4}
