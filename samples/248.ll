; ModuleID = 'samples/248.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/lapack/red/bidiagut/u/flamec/FLA_Bidiag_UT_u_opt_var5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }
%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

@FLA_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_ZERO = external global %struct.FLA_Obj_view, align 8
@FLA_MINUS_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Bidiag_UT_u_opt_var5(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TU, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TV) #0 {
entry:
  %r_val = alloca i32, align 4
  %Y = alloca %struct.FLA_Obj_view, align 8
  %Z = alloca %struct.FLA_Obj_view, align 8
  %datatype_A = alloca i32, align 4
  %m_A = alloca i64, align 8
  %n_A = alloca i64, align 8
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %datatype_A, align 4
  %call1 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i64 %call1, ptr %m_A, align 8
  %call2 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i64 %call2, ptr %n_A, align 8
  %0 = load i32, ptr %datatype_A, align 4
  %1 = load i64, ptr %n_A, align 8
  %2 = load i64, ptr %n_A, align 8
  %call3 = call i32 @FLA_Obj_create(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 0, i64 noundef 0, ptr noundef %Y)
  %3 = load i32, ptr %datatype_A, align 4
  %4 = load i64, ptr %m_A, align 8
  %5 = load i64, ptr %n_A, align 8
  %call4 = call i32 @FLA_Obj_create(i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 0, i64 noundef 0, ptr noundef %Z)
  %call5 = call i32 @FLA_Bidiag_UT_u_step_opt_var5(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TU, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TV)
  store i32 %call5, ptr %r_val, align 4
  %call6 = call i32 @FLA_Obj_free(ptr noundef %Y)
  %call7 = call i32 @FLA_Obj_free(ptr noundef %Z)
  %6 = load i32, ptr %r_val, align 4
  ret i32 %6
}

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Obj_create(i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Bidiag_UT_u_step_opt_var5(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %S) #0 {
entry:
  %datatype = alloca i32, align 4
  %m_A = alloca i32, align 4
  %n_A = alloca i32, align 4
  %m_TS = alloca i32, align 4
  %rs_A = alloca i32, align 4
  %cs_A = alloca i32, align 4
  %rs_Y = alloca i32, align 4
  %cs_Y = alloca i32, align 4
  %rs_Z = alloca i32, align 4
  %cs_Z = alloca i32, align 4
  %rs_T = alloca i32, align 4
  %cs_T = alloca i32, align 4
  %rs_S = alloca i32, align 4
  %cs_S = alloca i32, align 4
  %buff_A = alloca ptr, align 8
  %buff_Y = alloca ptr, align 8
  %buff_Z = alloca ptr, align 8
  %buff_T = alloca ptr, align 8
  %buff_S = alloca ptr, align 8
  %buff_A130 = alloca ptr, align 8
  %buff_Y154 = alloca ptr, align 8
  %buff_Z178 = alloca ptr, align 8
  %buff_T202 = alloca ptr, align 8
  %buff_S226 = alloca ptr, align 8
  %buff_A252 = alloca ptr, align 8
  %buff_Y276 = alloca ptr, align 8
  %buff_Z300 = alloca ptr, align 8
  %buff_T324 = alloca ptr, align 8
  %buff_S348 = alloca ptr, align 8
  %buff_A374 = alloca ptr, align 8
  %buff_Y398 = alloca ptr, align 8
  %buff_Z422 = alloca ptr, align 8
  %buff_T446 = alloca ptr, align 8
  %buff_S470 = alloca ptr, align 8
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %datatype, align 4
  %call1 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr %m_A, align 4
  %call2 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, ptr %n_A, align 4
  %call4 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, ptr %m_TS, align 4
  %call6 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %rs_A, align 4
  %call8 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %cs_A, align 4
  %call10 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y)
  %conv11 = trunc i64 %call10 to i32
  store i32 %conv11, ptr %rs_Y, align 4
  %call12 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y)
  %conv13 = trunc i64 %call12 to i32
  store i32 %conv13, ptr %cs_Y, align 4
  %call14 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z)
  %conv15 = trunc i64 %call14 to i32
  store i32 %conv15, ptr %rs_Z, align 4
  %call16 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z)
  %conv17 = trunc i64 %call16 to i32
  store i32 %conv17, ptr %cs_Z, align 4
  %call18 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %conv19 = trunc i64 %call18 to i32
  store i32 %conv19, ptr %rs_T, align 4
  %call20 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %conv21 = trunc i64 %call20 to i32
  store i32 %conv21, ptr %cs_T, align 4
  %call22 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %S)
  %conv23 = trunc i64 %call22 to i32
  store i32 %conv23, ptr %rs_S, align 4
  %call24 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %S)
  %conv25 = trunc i64 %call24 to i32
  store i32 %conv25, ptr %cs_S, align 4
  %0 = load i32, ptr %datatype, align 4
  switch i32 %0, label %sw.epilog [
    i32 100, label %sw.bb
    i32 101, label %sw.bb129
    i32 102, label %sw.bb251
    i32 103, label %sw.bb373
  ]

sw.bb:                                            ; preds = %entry
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8
  %datatype26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype26, align 8
  %cmp = icmp eq i32 %2, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base28 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %3 = load ptr, ptr %base28, align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base29 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %5 = load ptr, ptr %base29, align 8
  %buffer30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer30, align 8
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8
  %base31 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %8 = load ptr, ptr %base31, align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8
  %mul = mul i64 %7, %9
  %add.ptr32 = getelementptr inbounds float, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8
  %base33 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %11 = load ptr, ptr %base33, align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8
  %mul34 = mul i64 %10, %12
  %add.ptr35 = getelementptr inbounds float, ptr %add.ptr32, i64 %mul34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr35, %cond.false ]
  store ptr %cond, ptr %buff_A, align 8
  %base36 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %13 = load ptr, ptr %base36, align 8
  %datatype37 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %datatype37, align 8
  %cmp38 = icmp eq i32 %14, 105
  br i1 %cmp38, label %cond.true40, label %cond.false44

cond.true40:                                      ; preds = %cond.end
  %base41 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %15 = load ptr, ptr %base41, align 8
  %buffer42 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %buffer42, align 8
  %add.ptr43 = getelementptr inbounds i8, ptr %16, i64 8
  br label %cond.end57

cond.false44:                                     ; preds = %cond.end
  %base45 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %17 = load ptr, ptr %base45, align 8
  %buffer46 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %buffer46, align 8
  %offn47 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 1
  %19 = load i64, ptr %offn47, align 8
  %base48 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %20 = load ptr, ptr %base48, align 8
  %cs49 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %20, i32 0, i32 5
  %21 = load i64, ptr %cs49, align 8
  %mul50 = mul i64 %19, %21
  %add.ptr51 = getelementptr inbounds float, ptr %18, i64 %mul50
  %offm52 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 0
  %22 = load i64, ptr %offm52, align 8
  %base53 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %23 = load ptr, ptr %base53, align 8
  %rs54 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %23, i32 0, i32 4
  %24 = load i64, ptr %rs54, align 8
  %mul55 = mul i64 %22, %24
  %add.ptr56 = getelementptr inbounds float, ptr %add.ptr51, i64 %mul55
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false44, %cond.true40
  %cond58 = phi ptr [ %add.ptr43, %cond.true40 ], [ %add.ptr56, %cond.false44 ]
  store ptr %cond58, ptr %buff_Y, align 8
  %base59 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %25 = load ptr, ptr %base59, align 8
  %datatype60 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %datatype60, align 8
  %cmp61 = icmp eq i32 %26, 105
  br i1 %cmp61, label %cond.true63, label %cond.false67

cond.true63:                                      ; preds = %cond.end57
  %base64 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %27 = load ptr, ptr %base64, align 8
  %buffer65 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %buffer65, align 8
  %add.ptr66 = getelementptr inbounds i8, ptr %28, i64 8
  br label %cond.end80

cond.false67:                                     ; preds = %cond.end57
  %base68 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %29 = load ptr, ptr %base68, align 8
  %buffer69 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %buffer69, align 8
  %offn70 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 1
  %31 = load i64, ptr %offn70, align 8
  %base71 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %32 = load ptr, ptr %base71, align 8
  %cs72 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %32, i32 0, i32 5
  %33 = load i64, ptr %cs72, align 8
  %mul73 = mul i64 %31, %33
  %add.ptr74 = getelementptr inbounds float, ptr %30, i64 %mul73
  %offm75 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 0
  %34 = load i64, ptr %offm75, align 8
  %base76 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %35 = load ptr, ptr %base76, align 8
  %rs77 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %35, i32 0, i32 4
  %36 = load i64, ptr %rs77, align 8
  %mul78 = mul i64 %34, %36
  %add.ptr79 = getelementptr inbounds float, ptr %add.ptr74, i64 %mul78
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false67, %cond.true63
  %cond81 = phi ptr [ %add.ptr66, %cond.true63 ], [ %add.ptr79, %cond.false67 ]
  store ptr %cond81, ptr %buff_Z, align 8
  %base82 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %37 = load ptr, ptr %base82, align 8
  %datatype83 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %37, i32 0, i32 0
  %38 = load i32, ptr %datatype83, align 8
  %cmp84 = icmp eq i32 %38, 105
  br i1 %cmp84, label %cond.true86, label %cond.false90

cond.true86:                                      ; preds = %cond.end80
  %base87 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %39 = load ptr, ptr %base87, align 8
  %buffer88 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %39, i32 0, i32 12
  %40 = load ptr, ptr %buffer88, align 8
  %add.ptr89 = getelementptr inbounds i8, ptr %40, i64 8
  br label %cond.end103

cond.false90:                                     ; preds = %cond.end80
  %base91 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %41 = load ptr, ptr %base91, align 8
  %buffer92 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %41, i32 0, i32 12
  %42 = load ptr, ptr %buffer92, align 8
  %offn93 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 1
  %43 = load i64, ptr %offn93, align 8
  %base94 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %44 = load ptr, ptr %base94, align 8
  %cs95 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %44, i32 0, i32 5
  %45 = load i64, ptr %cs95, align 8
  %mul96 = mul i64 %43, %45
  %add.ptr97 = getelementptr inbounds float, ptr %42, i64 %mul96
  %offm98 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 0
  %46 = load i64, ptr %offm98, align 8
  %base99 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %47 = load ptr, ptr %base99, align 8
  %rs100 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %47, i32 0, i32 4
  %48 = load i64, ptr %rs100, align 8
  %mul101 = mul i64 %46, %48
  %add.ptr102 = getelementptr inbounds float, ptr %add.ptr97, i64 %mul101
  br label %cond.end103

cond.end103:                                      ; preds = %cond.false90, %cond.true86
  %cond104 = phi ptr [ %add.ptr89, %cond.true86 ], [ %add.ptr102, %cond.false90 ]
  store ptr %cond104, ptr %buff_T, align 8
  %base105 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %49 = load ptr, ptr %base105, align 8
  %datatype106 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %49, i32 0, i32 0
  %50 = load i32, ptr %datatype106, align 8
  %cmp107 = icmp eq i32 %50, 105
  br i1 %cmp107, label %cond.true109, label %cond.false113

cond.true109:                                     ; preds = %cond.end103
  %base110 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %51 = load ptr, ptr %base110, align 8
  %buffer111 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %51, i32 0, i32 12
  %52 = load ptr, ptr %buffer111, align 8
  %add.ptr112 = getelementptr inbounds i8, ptr %52, i64 8
  br label %cond.end126

cond.false113:                                    ; preds = %cond.end103
  %base114 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %53 = load ptr, ptr %base114, align 8
  %buffer115 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %53, i32 0, i32 12
  %54 = load ptr, ptr %buffer115, align 8
  %offn116 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 1
  %55 = load i64, ptr %offn116, align 8
  %base117 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %56 = load ptr, ptr %base117, align 8
  %cs118 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %56, i32 0, i32 5
  %57 = load i64, ptr %cs118, align 8
  %mul119 = mul i64 %55, %57
  %add.ptr120 = getelementptr inbounds float, ptr %54, i64 %mul119
  %offm121 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 0
  %58 = load i64, ptr %offm121, align 8
  %base122 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %59 = load ptr, ptr %base122, align 8
  %rs123 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %59, i32 0, i32 4
  %60 = load i64, ptr %rs123, align 8
  %mul124 = mul i64 %58, %60
  %add.ptr125 = getelementptr inbounds float, ptr %add.ptr120, i64 %mul124
  br label %cond.end126

cond.end126:                                      ; preds = %cond.false113, %cond.true109
  %cond127 = phi ptr [ %add.ptr112, %cond.true109 ], [ %add.ptr125, %cond.false113 ]
  store ptr %cond127, ptr %buff_S, align 8
  %61 = load i32, ptr %m_A, align 4
  %62 = load i32, ptr %n_A, align 4
  %63 = load i32, ptr %m_TS, align 4
  %64 = load ptr, ptr %buff_A, align 8
  %65 = load i32, ptr %rs_A, align 4
  %66 = load i32, ptr %cs_A, align 4
  %67 = load ptr, ptr %buff_Y, align 8
  %68 = load i32, ptr %rs_Y, align 4
  %69 = load i32, ptr %cs_Y, align 4
  %70 = load ptr, ptr %buff_Z, align 8
  %71 = load i32, ptr %rs_Z, align 4
  %72 = load i32, ptr %cs_Z, align 4
  %73 = load ptr, ptr %buff_T, align 8
  %74 = load i32, ptr %rs_T, align 4
  %75 = load i32, ptr %cs_T, align 4
  %76 = load ptr, ptr %buff_S, align 8
  %77 = load i32, ptr %rs_S, align 4
  %78 = load i32, ptr %cs_S, align 4
  %call128 = call i32 @FLA_Bidiag_UT_u_step_ops_var5(i32 noundef %61, i32 noundef %62, i32 noundef %63, ptr noundef %64, i32 noundef %65, i32 noundef %66, ptr noundef %67, i32 noundef %68, i32 noundef %69, ptr noundef %70, i32 noundef %71, i32 noundef %72, ptr noundef %73, i32 noundef %74, i32 noundef %75, ptr noundef %76, i32 noundef %77, i32 noundef %78)
  br label %sw.epilog

sw.bb129:                                         ; preds = %entry
  %base131 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %79 = load ptr, ptr %base131, align 8
  %datatype132 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %79, i32 0, i32 0
  %80 = load i32, ptr %datatype132, align 8
  %cmp133 = icmp eq i32 %80, 105
  br i1 %cmp133, label %cond.true135, label %cond.false139

cond.true135:                                     ; preds = %sw.bb129
  %base136 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %81 = load ptr, ptr %base136, align 8
  %buffer137 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %81, i32 0, i32 12
  %82 = load ptr, ptr %buffer137, align 8
  %add.ptr138 = getelementptr inbounds i8, ptr %82, i64 16
  br label %cond.end152

cond.false139:                                    ; preds = %sw.bb129
  %base140 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %83 = load ptr, ptr %base140, align 8
  %buffer141 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %83, i32 0, i32 12
  %84 = load ptr, ptr %buffer141, align 8
  %offn142 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %85 = load i64, ptr %offn142, align 8
  %base143 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %86 = load ptr, ptr %base143, align 8
  %cs144 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %86, i32 0, i32 5
  %87 = load i64, ptr %cs144, align 8
  %mul145 = mul i64 %85, %87
  %add.ptr146 = getelementptr inbounds double, ptr %84, i64 %mul145
  %offm147 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %88 = load i64, ptr %offm147, align 8
  %base148 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %89 = load ptr, ptr %base148, align 8
  %rs149 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %89, i32 0, i32 4
  %90 = load i64, ptr %rs149, align 8
  %mul150 = mul i64 %88, %90
  %add.ptr151 = getelementptr inbounds double, ptr %add.ptr146, i64 %mul150
  br label %cond.end152

cond.end152:                                      ; preds = %cond.false139, %cond.true135
  %cond153 = phi ptr [ %add.ptr138, %cond.true135 ], [ %add.ptr151, %cond.false139 ]
  store ptr %cond153, ptr %buff_A130, align 8
  %base155 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %91 = load ptr, ptr %base155, align 8
  %datatype156 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %91, i32 0, i32 0
  %92 = load i32, ptr %datatype156, align 8
  %cmp157 = icmp eq i32 %92, 105
  br i1 %cmp157, label %cond.true159, label %cond.false163

cond.true159:                                     ; preds = %cond.end152
  %base160 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %93 = load ptr, ptr %base160, align 8
  %buffer161 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %93, i32 0, i32 12
  %94 = load ptr, ptr %buffer161, align 8
  %add.ptr162 = getelementptr inbounds i8, ptr %94, i64 16
  br label %cond.end176

cond.false163:                                    ; preds = %cond.end152
  %base164 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %95 = load ptr, ptr %base164, align 8
  %buffer165 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %95, i32 0, i32 12
  %96 = load ptr, ptr %buffer165, align 8
  %offn166 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 1
  %97 = load i64, ptr %offn166, align 8
  %base167 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %98 = load ptr, ptr %base167, align 8
  %cs168 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %98, i32 0, i32 5
  %99 = load i64, ptr %cs168, align 8
  %mul169 = mul i64 %97, %99
  %add.ptr170 = getelementptr inbounds double, ptr %96, i64 %mul169
  %offm171 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 0
  %100 = load i64, ptr %offm171, align 8
  %base172 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %101 = load ptr, ptr %base172, align 8
  %rs173 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %101, i32 0, i32 4
  %102 = load i64, ptr %rs173, align 8
  %mul174 = mul i64 %100, %102
  %add.ptr175 = getelementptr inbounds double, ptr %add.ptr170, i64 %mul174
  br label %cond.end176

cond.end176:                                      ; preds = %cond.false163, %cond.true159
  %cond177 = phi ptr [ %add.ptr162, %cond.true159 ], [ %add.ptr175, %cond.false163 ]
  store ptr %cond177, ptr %buff_Y154, align 8
  %base179 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %103 = load ptr, ptr %base179, align 8
  %datatype180 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %103, i32 0, i32 0
  %104 = load i32, ptr %datatype180, align 8
  %cmp181 = icmp eq i32 %104, 105
  br i1 %cmp181, label %cond.true183, label %cond.false187

cond.true183:                                     ; preds = %cond.end176
  %base184 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %105 = load ptr, ptr %base184, align 8
  %buffer185 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %105, i32 0, i32 12
  %106 = load ptr, ptr %buffer185, align 8
  %add.ptr186 = getelementptr inbounds i8, ptr %106, i64 16
  br label %cond.end200

cond.false187:                                    ; preds = %cond.end176
  %base188 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %107 = load ptr, ptr %base188, align 8
  %buffer189 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %107, i32 0, i32 12
  %108 = load ptr, ptr %buffer189, align 8
  %offn190 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 1
  %109 = load i64, ptr %offn190, align 8
  %base191 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %110 = load ptr, ptr %base191, align 8
  %cs192 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %110, i32 0, i32 5
  %111 = load i64, ptr %cs192, align 8
  %mul193 = mul i64 %109, %111
  %add.ptr194 = getelementptr inbounds double, ptr %108, i64 %mul193
  %offm195 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 0
  %112 = load i64, ptr %offm195, align 8
  %base196 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %113 = load ptr, ptr %base196, align 8
  %rs197 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %113, i32 0, i32 4
  %114 = load i64, ptr %rs197, align 8
  %mul198 = mul i64 %112, %114
  %add.ptr199 = getelementptr inbounds double, ptr %add.ptr194, i64 %mul198
  br label %cond.end200

cond.end200:                                      ; preds = %cond.false187, %cond.true183
  %cond201 = phi ptr [ %add.ptr186, %cond.true183 ], [ %add.ptr199, %cond.false187 ]
  store ptr %cond201, ptr %buff_Z178, align 8
  %base203 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %115 = load ptr, ptr %base203, align 8
  %datatype204 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %115, i32 0, i32 0
  %116 = load i32, ptr %datatype204, align 8
  %cmp205 = icmp eq i32 %116, 105
  br i1 %cmp205, label %cond.true207, label %cond.false211

cond.true207:                                     ; preds = %cond.end200
  %base208 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %117 = load ptr, ptr %base208, align 8
  %buffer209 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %117, i32 0, i32 12
  %118 = load ptr, ptr %buffer209, align 8
  %add.ptr210 = getelementptr inbounds i8, ptr %118, i64 16
  br label %cond.end224

cond.false211:                                    ; preds = %cond.end200
  %base212 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %119 = load ptr, ptr %base212, align 8
  %buffer213 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %119, i32 0, i32 12
  %120 = load ptr, ptr %buffer213, align 8
  %offn214 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 1
  %121 = load i64, ptr %offn214, align 8
  %base215 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %122 = load ptr, ptr %base215, align 8
  %cs216 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %122, i32 0, i32 5
  %123 = load i64, ptr %cs216, align 8
  %mul217 = mul i64 %121, %123
  %add.ptr218 = getelementptr inbounds double, ptr %120, i64 %mul217
  %offm219 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 0
  %124 = load i64, ptr %offm219, align 8
  %base220 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %125 = load ptr, ptr %base220, align 8
  %rs221 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %125, i32 0, i32 4
  %126 = load i64, ptr %rs221, align 8
  %mul222 = mul i64 %124, %126
  %add.ptr223 = getelementptr inbounds double, ptr %add.ptr218, i64 %mul222
  br label %cond.end224

cond.end224:                                      ; preds = %cond.false211, %cond.true207
  %cond225 = phi ptr [ %add.ptr210, %cond.true207 ], [ %add.ptr223, %cond.false211 ]
  store ptr %cond225, ptr %buff_T202, align 8
  %base227 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %127 = load ptr, ptr %base227, align 8
  %datatype228 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %127, i32 0, i32 0
  %128 = load i32, ptr %datatype228, align 8
  %cmp229 = icmp eq i32 %128, 105
  br i1 %cmp229, label %cond.true231, label %cond.false235

cond.true231:                                     ; preds = %cond.end224
  %base232 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %129 = load ptr, ptr %base232, align 8
  %buffer233 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %129, i32 0, i32 12
  %130 = load ptr, ptr %buffer233, align 8
  %add.ptr234 = getelementptr inbounds i8, ptr %130, i64 16
  br label %cond.end248

cond.false235:                                    ; preds = %cond.end224
  %base236 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %131 = load ptr, ptr %base236, align 8
  %buffer237 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %131, i32 0, i32 12
  %132 = load ptr, ptr %buffer237, align 8
  %offn238 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 1
  %133 = load i64, ptr %offn238, align 8
  %base239 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %134 = load ptr, ptr %base239, align 8
  %cs240 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %134, i32 0, i32 5
  %135 = load i64, ptr %cs240, align 8
  %mul241 = mul i64 %133, %135
  %add.ptr242 = getelementptr inbounds double, ptr %132, i64 %mul241
  %offm243 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 0
  %136 = load i64, ptr %offm243, align 8
  %base244 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %137 = load ptr, ptr %base244, align 8
  %rs245 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %137, i32 0, i32 4
  %138 = load i64, ptr %rs245, align 8
  %mul246 = mul i64 %136, %138
  %add.ptr247 = getelementptr inbounds double, ptr %add.ptr242, i64 %mul246
  br label %cond.end248

cond.end248:                                      ; preds = %cond.false235, %cond.true231
  %cond249 = phi ptr [ %add.ptr234, %cond.true231 ], [ %add.ptr247, %cond.false235 ]
  store ptr %cond249, ptr %buff_S226, align 8
  %139 = load i32, ptr %m_A, align 4
  %140 = load i32, ptr %n_A, align 4
  %141 = load i32, ptr %m_TS, align 4
  %142 = load ptr, ptr %buff_A130, align 8
  %143 = load i32, ptr %rs_A, align 4
  %144 = load i32, ptr %cs_A, align 4
  %145 = load ptr, ptr %buff_Y154, align 8
  %146 = load i32, ptr %rs_Y, align 4
  %147 = load i32, ptr %cs_Y, align 4
  %148 = load ptr, ptr %buff_Z178, align 8
  %149 = load i32, ptr %rs_Z, align 4
  %150 = load i32, ptr %cs_Z, align 4
  %151 = load ptr, ptr %buff_T202, align 8
  %152 = load i32, ptr %rs_T, align 4
  %153 = load i32, ptr %cs_T, align 4
  %154 = load ptr, ptr %buff_S226, align 8
  %155 = load i32, ptr %rs_S, align 4
  %156 = load i32, ptr %cs_S, align 4
  %call250 = call i32 @FLA_Bidiag_UT_u_step_opd_var5(i32 noundef %139, i32 noundef %140, i32 noundef %141, ptr noundef %142, i32 noundef %143, i32 noundef %144, ptr noundef %145, i32 noundef %146, i32 noundef %147, ptr noundef %148, i32 noundef %149, i32 noundef %150, ptr noundef %151, i32 noundef %152, i32 noundef %153, ptr noundef %154, i32 noundef %155, i32 noundef %156)
  br label %sw.epilog

sw.bb251:                                         ; preds = %entry
  %base253 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %157 = load ptr, ptr %base253, align 8
  %datatype254 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %157, i32 0, i32 0
  %158 = load i32, ptr %datatype254, align 8
  %cmp255 = icmp eq i32 %158, 105
  br i1 %cmp255, label %cond.true257, label %cond.false261

cond.true257:                                     ; preds = %sw.bb251
  %base258 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %159 = load ptr, ptr %base258, align 8
  %buffer259 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %159, i32 0, i32 12
  %160 = load ptr, ptr %buffer259, align 8
  %add.ptr260 = getelementptr inbounds i8, ptr %160, i64 24
  br label %cond.end274

cond.false261:                                    ; preds = %sw.bb251
  %base262 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %161 = load ptr, ptr %base262, align 8
  %buffer263 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %161, i32 0, i32 12
  %162 = load ptr, ptr %buffer263, align 8
  %offn264 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %163 = load i64, ptr %offn264, align 8
  %base265 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %164 = load ptr, ptr %base265, align 8
  %cs266 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %164, i32 0, i32 5
  %165 = load i64, ptr %cs266, align 8
  %mul267 = mul i64 %163, %165
  %add.ptr268 = getelementptr inbounds %struct.scomplex, ptr %162, i64 %mul267
  %offm269 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %166 = load i64, ptr %offm269, align 8
  %base270 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %167 = load ptr, ptr %base270, align 8
  %rs271 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %167, i32 0, i32 4
  %168 = load i64, ptr %rs271, align 8
  %mul272 = mul i64 %166, %168
  %add.ptr273 = getelementptr inbounds %struct.scomplex, ptr %add.ptr268, i64 %mul272
  br label %cond.end274

cond.end274:                                      ; preds = %cond.false261, %cond.true257
  %cond275 = phi ptr [ %add.ptr260, %cond.true257 ], [ %add.ptr273, %cond.false261 ]
  store ptr %cond275, ptr %buff_A252, align 8
  %base277 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %169 = load ptr, ptr %base277, align 8
  %datatype278 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %169, i32 0, i32 0
  %170 = load i32, ptr %datatype278, align 8
  %cmp279 = icmp eq i32 %170, 105
  br i1 %cmp279, label %cond.true281, label %cond.false285

cond.true281:                                     ; preds = %cond.end274
  %base282 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %171 = load ptr, ptr %base282, align 8
  %buffer283 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %171, i32 0, i32 12
  %172 = load ptr, ptr %buffer283, align 8
  %add.ptr284 = getelementptr inbounds i8, ptr %172, i64 24
  br label %cond.end298

cond.false285:                                    ; preds = %cond.end274
  %base286 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %173 = load ptr, ptr %base286, align 8
  %buffer287 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %173, i32 0, i32 12
  %174 = load ptr, ptr %buffer287, align 8
  %offn288 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 1
  %175 = load i64, ptr %offn288, align 8
  %base289 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %176 = load ptr, ptr %base289, align 8
  %cs290 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %176, i32 0, i32 5
  %177 = load i64, ptr %cs290, align 8
  %mul291 = mul i64 %175, %177
  %add.ptr292 = getelementptr inbounds %struct.scomplex, ptr %174, i64 %mul291
  %offm293 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 0
  %178 = load i64, ptr %offm293, align 8
  %base294 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %179 = load ptr, ptr %base294, align 8
  %rs295 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %179, i32 0, i32 4
  %180 = load i64, ptr %rs295, align 8
  %mul296 = mul i64 %178, %180
  %add.ptr297 = getelementptr inbounds %struct.scomplex, ptr %add.ptr292, i64 %mul296
  br label %cond.end298

cond.end298:                                      ; preds = %cond.false285, %cond.true281
  %cond299 = phi ptr [ %add.ptr284, %cond.true281 ], [ %add.ptr297, %cond.false285 ]
  store ptr %cond299, ptr %buff_Y276, align 8
  %base301 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %181 = load ptr, ptr %base301, align 8
  %datatype302 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %181, i32 0, i32 0
  %182 = load i32, ptr %datatype302, align 8
  %cmp303 = icmp eq i32 %182, 105
  br i1 %cmp303, label %cond.true305, label %cond.false309

cond.true305:                                     ; preds = %cond.end298
  %base306 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %183 = load ptr, ptr %base306, align 8
  %buffer307 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %183, i32 0, i32 12
  %184 = load ptr, ptr %buffer307, align 8
  %add.ptr308 = getelementptr inbounds i8, ptr %184, i64 24
  br label %cond.end322

cond.false309:                                    ; preds = %cond.end298
  %base310 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %185 = load ptr, ptr %base310, align 8
  %buffer311 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %185, i32 0, i32 12
  %186 = load ptr, ptr %buffer311, align 8
  %offn312 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 1
  %187 = load i64, ptr %offn312, align 8
  %base313 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %188 = load ptr, ptr %base313, align 8
  %cs314 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %188, i32 0, i32 5
  %189 = load i64, ptr %cs314, align 8
  %mul315 = mul i64 %187, %189
  %add.ptr316 = getelementptr inbounds %struct.scomplex, ptr %186, i64 %mul315
  %offm317 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 0
  %190 = load i64, ptr %offm317, align 8
  %base318 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %191 = load ptr, ptr %base318, align 8
  %rs319 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %191, i32 0, i32 4
  %192 = load i64, ptr %rs319, align 8
  %mul320 = mul i64 %190, %192
  %add.ptr321 = getelementptr inbounds %struct.scomplex, ptr %add.ptr316, i64 %mul320
  br label %cond.end322

cond.end322:                                      ; preds = %cond.false309, %cond.true305
  %cond323 = phi ptr [ %add.ptr308, %cond.true305 ], [ %add.ptr321, %cond.false309 ]
  store ptr %cond323, ptr %buff_Z300, align 8
  %base325 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %193 = load ptr, ptr %base325, align 8
  %datatype326 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %193, i32 0, i32 0
  %194 = load i32, ptr %datatype326, align 8
  %cmp327 = icmp eq i32 %194, 105
  br i1 %cmp327, label %cond.true329, label %cond.false333

cond.true329:                                     ; preds = %cond.end322
  %base330 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %195 = load ptr, ptr %base330, align 8
  %buffer331 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %195, i32 0, i32 12
  %196 = load ptr, ptr %buffer331, align 8
  %add.ptr332 = getelementptr inbounds i8, ptr %196, i64 24
  br label %cond.end346

cond.false333:                                    ; preds = %cond.end322
  %base334 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %197 = load ptr, ptr %base334, align 8
  %buffer335 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %197, i32 0, i32 12
  %198 = load ptr, ptr %buffer335, align 8
  %offn336 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 1
  %199 = load i64, ptr %offn336, align 8
  %base337 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %200 = load ptr, ptr %base337, align 8
  %cs338 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %200, i32 0, i32 5
  %201 = load i64, ptr %cs338, align 8
  %mul339 = mul i64 %199, %201
  %add.ptr340 = getelementptr inbounds %struct.scomplex, ptr %198, i64 %mul339
  %offm341 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 0
  %202 = load i64, ptr %offm341, align 8
  %base342 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %203 = load ptr, ptr %base342, align 8
  %rs343 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %203, i32 0, i32 4
  %204 = load i64, ptr %rs343, align 8
  %mul344 = mul i64 %202, %204
  %add.ptr345 = getelementptr inbounds %struct.scomplex, ptr %add.ptr340, i64 %mul344
  br label %cond.end346

cond.end346:                                      ; preds = %cond.false333, %cond.true329
  %cond347 = phi ptr [ %add.ptr332, %cond.true329 ], [ %add.ptr345, %cond.false333 ]
  store ptr %cond347, ptr %buff_T324, align 8
  %base349 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %205 = load ptr, ptr %base349, align 8
  %datatype350 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %205, i32 0, i32 0
  %206 = load i32, ptr %datatype350, align 8
  %cmp351 = icmp eq i32 %206, 105
  br i1 %cmp351, label %cond.true353, label %cond.false357

cond.true353:                                     ; preds = %cond.end346
  %base354 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %207 = load ptr, ptr %base354, align 8
  %buffer355 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %207, i32 0, i32 12
  %208 = load ptr, ptr %buffer355, align 8
  %add.ptr356 = getelementptr inbounds i8, ptr %208, i64 24
  br label %cond.end370

cond.false357:                                    ; preds = %cond.end346
  %base358 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %209 = load ptr, ptr %base358, align 8
  %buffer359 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %209, i32 0, i32 12
  %210 = load ptr, ptr %buffer359, align 8
  %offn360 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 1
  %211 = load i64, ptr %offn360, align 8
  %base361 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %212 = load ptr, ptr %base361, align 8
  %cs362 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %212, i32 0, i32 5
  %213 = load i64, ptr %cs362, align 8
  %mul363 = mul i64 %211, %213
  %add.ptr364 = getelementptr inbounds %struct.scomplex, ptr %210, i64 %mul363
  %offm365 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 0
  %214 = load i64, ptr %offm365, align 8
  %base366 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %215 = load ptr, ptr %base366, align 8
  %rs367 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %215, i32 0, i32 4
  %216 = load i64, ptr %rs367, align 8
  %mul368 = mul i64 %214, %216
  %add.ptr369 = getelementptr inbounds %struct.scomplex, ptr %add.ptr364, i64 %mul368
  br label %cond.end370

cond.end370:                                      ; preds = %cond.false357, %cond.true353
  %cond371 = phi ptr [ %add.ptr356, %cond.true353 ], [ %add.ptr369, %cond.false357 ]
  store ptr %cond371, ptr %buff_S348, align 8
  %217 = load i32, ptr %m_A, align 4
  %218 = load i32, ptr %n_A, align 4
  %219 = load i32, ptr %m_TS, align 4
  %220 = load ptr, ptr %buff_A252, align 8
  %221 = load i32, ptr %rs_A, align 4
  %222 = load i32, ptr %cs_A, align 4
  %223 = load ptr, ptr %buff_Y276, align 8
  %224 = load i32, ptr %rs_Y, align 4
  %225 = load i32, ptr %cs_Y, align 4
  %226 = load ptr, ptr %buff_Z300, align 8
  %227 = load i32, ptr %rs_Z, align 4
  %228 = load i32, ptr %cs_Z, align 4
  %229 = load ptr, ptr %buff_T324, align 8
  %230 = load i32, ptr %rs_T, align 4
  %231 = load i32, ptr %cs_T, align 4
  %232 = load ptr, ptr %buff_S348, align 8
  %233 = load i32, ptr %rs_S, align 4
  %234 = load i32, ptr %cs_S, align 4
  %call372 = call i32 @FLA_Bidiag_UT_u_step_opc_var5(i32 noundef %217, i32 noundef %218, i32 noundef %219, ptr noundef %220, i32 noundef %221, i32 noundef %222, ptr noundef %223, i32 noundef %224, i32 noundef %225, ptr noundef %226, i32 noundef %227, i32 noundef %228, ptr noundef %229, i32 noundef %230, i32 noundef %231, ptr noundef %232, i32 noundef %233, i32 noundef %234)
  br label %sw.epilog

sw.bb373:                                         ; preds = %entry
  %base375 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %235 = load ptr, ptr %base375, align 8
  %datatype376 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %235, i32 0, i32 0
  %236 = load i32, ptr %datatype376, align 8
  %cmp377 = icmp eq i32 %236, 105
  br i1 %cmp377, label %cond.true379, label %cond.false383

cond.true379:                                     ; preds = %sw.bb373
  %base380 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %237 = load ptr, ptr %base380, align 8
  %buffer381 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %237, i32 0, i32 12
  %238 = load ptr, ptr %buffer381, align 8
  %add.ptr382 = getelementptr inbounds i8, ptr %238, i64 32
  br label %cond.end396

cond.false383:                                    ; preds = %sw.bb373
  %base384 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %239 = load ptr, ptr %base384, align 8
  %buffer385 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %239, i32 0, i32 12
  %240 = load ptr, ptr %buffer385, align 8
  %offn386 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %241 = load i64, ptr %offn386, align 8
  %base387 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %242 = load ptr, ptr %base387, align 8
  %cs388 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %242, i32 0, i32 5
  %243 = load i64, ptr %cs388, align 8
  %mul389 = mul i64 %241, %243
  %add.ptr390 = getelementptr inbounds %struct.dcomplex, ptr %240, i64 %mul389
  %offm391 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %244 = load i64, ptr %offm391, align 8
  %base392 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %245 = load ptr, ptr %base392, align 8
  %rs393 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %245, i32 0, i32 4
  %246 = load i64, ptr %rs393, align 8
  %mul394 = mul i64 %244, %246
  %add.ptr395 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr390, i64 %mul394
  br label %cond.end396

cond.end396:                                      ; preds = %cond.false383, %cond.true379
  %cond397 = phi ptr [ %add.ptr382, %cond.true379 ], [ %add.ptr395, %cond.false383 ]
  store ptr %cond397, ptr %buff_A374, align 8
  %base399 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %247 = load ptr, ptr %base399, align 8
  %datatype400 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %247, i32 0, i32 0
  %248 = load i32, ptr %datatype400, align 8
  %cmp401 = icmp eq i32 %248, 105
  br i1 %cmp401, label %cond.true403, label %cond.false407

cond.true403:                                     ; preds = %cond.end396
  %base404 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %249 = load ptr, ptr %base404, align 8
  %buffer405 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %249, i32 0, i32 12
  %250 = load ptr, ptr %buffer405, align 8
  %add.ptr406 = getelementptr inbounds i8, ptr %250, i64 32
  br label %cond.end420

cond.false407:                                    ; preds = %cond.end396
  %base408 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %251 = load ptr, ptr %base408, align 8
  %buffer409 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %251, i32 0, i32 12
  %252 = load ptr, ptr %buffer409, align 8
  %offn410 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 1
  %253 = load i64, ptr %offn410, align 8
  %base411 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %254 = load ptr, ptr %base411, align 8
  %cs412 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %254, i32 0, i32 5
  %255 = load i64, ptr %cs412, align 8
  %mul413 = mul i64 %253, %255
  %add.ptr414 = getelementptr inbounds %struct.dcomplex, ptr %252, i64 %mul413
  %offm415 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 0
  %256 = load i64, ptr %offm415, align 8
  %base416 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %257 = load ptr, ptr %base416, align 8
  %rs417 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %257, i32 0, i32 4
  %258 = load i64, ptr %rs417, align 8
  %mul418 = mul i64 %256, %258
  %add.ptr419 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr414, i64 %mul418
  br label %cond.end420

cond.end420:                                      ; preds = %cond.false407, %cond.true403
  %cond421 = phi ptr [ %add.ptr406, %cond.true403 ], [ %add.ptr419, %cond.false407 ]
  store ptr %cond421, ptr %buff_Y398, align 8
  %base423 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %259 = load ptr, ptr %base423, align 8
  %datatype424 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %259, i32 0, i32 0
  %260 = load i32, ptr %datatype424, align 8
  %cmp425 = icmp eq i32 %260, 105
  br i1 %cmp425, label %cond.true427, label %cond.false431

cond.true427:                                     ; preds = %cond.end420
  %base428 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %261 = load ptr, ptr %base428, align 8
  %buffer429 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %261, i32 0, i32 12
  %262 = load ptr, ptr %buffer429, align 8
  %add.ptr430 = getelementptr inbounds i8, ptr %262, i64 32
  br label %cond.end444

cond.false431:                                    ; preds = %cond.end420
  %base432 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %263 = load ptr, ptr %base432, align 8
  %buffer433 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %263, i32 0, i32 12
  %264 = load ptr, ptr %buffer433, align 8
  %offn434 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 1
  %265 = load i64, ptr %offn434, align 8
  %base435 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %266 = load ptr, ptr %base435, align 8
  %cs436 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %266, i32 0, i32 5
  %267 = load i64, ptr %cs436, align 8
  %mul437 = mul i64 %265, %267
  %add.ptr438 = getelementptr inbounds %struct.dcomplex, ptr %264, i64 %mul437
  %offm439 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 0
  %268 = load i64, ptr %offm439, align 8
  %base440 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Z, i32 0, i32 6
  %269 = load ptr, ptr %base440, align 8
  %rs441 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %269, i32 0, i32 4
  %270 = load i64, ptr %rs441, align 8
  %mul442 = mul i64 %268, %270
  %add.ptr443 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr438, i64 %mul442
  br label %cond.end444

cond.end444:                                      ; preds = %cond.false431, %cond.true427
  %cond445 = phi ptr [ %add.ptr430, %cond.true427 ], [ %add.ptr443, %cond.false431 ]
  store ptr %cond445, ptr %buff_Z422, align 8
  %base447 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %271 = load ptr, ptr %base447, align 8
  %datatype448 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %271, i32 0, i32 0
  %272 = load i32, ptr %datatype448, align 8
  %cmp449 = icmp eq i32 %272, 105
  br i1 %cmp449, label %cond.true451, label %cond.false455

cond.true451:                                     ; preds = %cond.end444
  %base452 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %273 = load ptr, ptr %base452, align 8
  %buffer453 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %273, i32 0, i32 12
  %274 = load ptr, ptr %buffer453, align 8
  %add.ptr454 = getelementptr inbounds i8, ptr %274, i64 32
  br label %cond.end468

cond.false455:                                    ; preds = %cond.end444
  %base456 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %275 = load ptr, ptr %base456, align 8
  %buffer457 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %275, i32 0, i32 12
  %276 = load ptr, ptr %buffer457, align 8
  %offn458 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 1
  %277 = load i64, ptr %offn458, align 8
  %base459 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %278 = load ptr, ptr %base459, align 8
  %cs460 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %278, i32 0, i32 5
  %279 = load i64, ptr %cs460, align 8
  %mul461 = mul i64 %277, %279
  %add.ptr462 = getelementptr inbounds %struct.dcomplex, ptr %276, i64 %mul461
  %offm463 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 0
  %280 = load i64, ptr %offm463, align 8
  %base464 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %281 = load ptr, ptr %base464, align 8
  %rs465 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %281, i32 0, i32 4
  %282 = load i64, ptr %rs465, align 8
  %mul466 = mul i64 %280, %282
  %add.ptr467 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr462, i64 %mul466
  br label %cond.end468

cond.end468:                                      ; preds = %cond.false455, %cond.true451
  %cond469 = phi ptr [ %add.ptr454, %cond.true451 ], [ %add.ptr467, %cond.false455 ]
  store ptr %cond469, ptr %buff_T446, align 8
  %base471 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %283 = load ptr, ptr %base471, align 8
  %datatype472 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %283, i32 0, i32 0
  %284 = load i32, ptr %datatype472, align 8
  %cmp473 = icmp eq i32 %284, 105
  br i1 %cmp473, label %cond.true475, label %cond.false479

cond.true475:                                     ; preds = %cond.end468
  %base476 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %285 = load ptr, ptr %base476, align 8
  %buffer477 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %285, i32 0, i32 12
  %286 = load ptr, ptr %buffer477, align 8
  %add.ptr478 = getelementptr inbounds i8, ptr %286, i64 32
  br label %cond.end492

cond.false479:                                    ; preds = %cond.end468
  %base480 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %287 = load ptr, ptr %base480, align 8
  %buffer481 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %287, i32 0, i32 12
  %288 = load ptr, ptr %buffer481, align 8
  %offn482 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 1
  %289 = load i64, ptr %offn482, align 8
  %base483 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %290 = load ptr, ptr %base483, align 8
  %cs484 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %290, i32 0, i32 5
  %291 = load i64, ptr %cs484, align 8
  %mul485 = mul i64 %289, %291
  %add.ptr486 = getelementptr inbounds %struct.dcomplex, ptr %288, i64 %mul485
  %offm487 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 0
  %292 = load i64, ptr %offm487, align 8
  %base488 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %293 = load ptr, ptr %base488, align 8
  %rs489 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %293, i32 0, i32 4
  %294 = load i64, ptr %rs489, align 8
  %mul490 = mul i64 %292, %294
  %add.ptr491 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr486, i64 %mul490
  br label %cond.end492

cond.end492:                                      ; preds = %cond.false479, %cond.true475
  %cond493 = phi ptr [ %add.ptr478, %cond.true475 ], [ %add.ptr491, %cond.false479 ]
  store ptr %cond493, ptr %buff_S470, align 8
  %295 = load i32, ptr %m_A, align 4
  %296 = load i32, ptr %n_A, align 4
  %297 = load i32, ptr %m_TS, align 4
  %298 = load ptr, ptr %buff_A374, align 8
  %299 = load i32, ptr %rs_A, align 4
  %300 = load i32, ptr %cs_A, align 4
  %301 = load ptr, ptr %buff_Y398, align 8
  %302 = load i32, ptr %rs_Y, align 4
  %303 = load i32, ptr %cs_Y, align 4
  %304 = load ptr, ptr %buff_Z422, align 8
  %305 = load i32, ptr %rs_Z, align 4
  %306 = load i32, ptr %cs_Z, align 4
  %307 = load ptr, ptr %buff_T446, align 8
  %308 = load i32, ptr %rs_T, align 4
  %309 = load i32, ptr %cs_T, align 4
  %310 = load ptr, ptr %buff_S470, align 8
  %311 = load i32, ptr %rs_S, align 4
  %312 = load i32, ptr %cs_S, align 4
  %call494 = call i32 @FLA_Bidiag_UT_u_step_opz_var5(i32 noundef %295, i32 noundef %296, i32 noundef %297, ptr noundef %298, i32 noundef %299, i32 noundef %300, ptr noundef %301, i32 noundef %302, i32 noundef %303, ptr noundef %304, i32 noundef %305, i32 noundef %306, ptr noundef %307, i32 noundef %308, i32 noundef %309, ptr noundef %310, i32 noundef %311, i32 noundef %312)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end492, %cond.end370, %cond.end248, %cond.end126
  ret i32 -1
}

declare i32 @FLA_Obj_free(ptr noundef) #1

declare i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Bidiag_UT_u_step_ops_var5(i32 noundef %m_A, i32 noundef %n_A, i32 noundef %m_TS, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_Y, i32 noundef %rs_Y, i32 noundef %cs_Y, ptr noundef %buff_Z, i32 noundef %rs_Z, i32 noundef %cs_Z, ptr noundef %buff_T, i32 noundef %rs_T, i32 noundef %cs_T, ptr noundef %buff_S, i32 noundef %rs_S, i32 noundef %cs_S) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %m_TS.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_Y.addr = alloca ptr, align 8
  %rs_Y.addr = alloca i32, align 4
  %cs_Y.addr = alloca i32, align 4
  %buff_Z.addr = alloca ptr, align 8
  %rs_Z.addr = alloca i32, align 4
  %cs_Z.addr = alloca i32, align 4
  %buff_T.addr = alloca ptr, align 8
  %rs_T.addr = alloca i32, align 4
  %cs_T.addr = alloca i32, align 4
  %buff_S.addr = alloca ptr, align 8
  %rs_S.addr = alloca i32, align 4
  %cs_S.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_0 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %beta = alloca float, align 4
  %last_elem = alloca float, align 4
  %i = alloca i32, align 4
  %b_alg = alloca i32, align 4
  %buff_u = alloca ptr, align 8
  %buff_v = alloca ptr, align 8
  %buff_d = alloca ptr, align 8
  %buff_e = alloca ptr, align 8
  %buff_f = alloca ptr, align 8
  %buff_g = alloca ptr, align 8
  %inc_u = alloca i32, align 4
  %inc_v = alloca i32, align 4
  %inc_d = alloca i32, align 4
  %inc_e = alloca i32, align 4
  %inc_f = alloca i32, align 4
  %inc_g = alloca i32, align 4
  %a10t = alloca ptr, align 8
  %A20 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %y10t = alloca ptr, align 8
  %Y20 = alloca ptr, align 8
  %y21 = alloca ptr, align 8
  %z10t = alloca ptr, align 8
  %Z20 = alloca ptr, align 8
  %z21 = alloca ptr, align 8
  %t01 = alloca ptr, align 8
  %tau11 = alloca ptr, align 8
  %s01 = alloca ptr, align 8
  %sigma11 = alloca ptr, align 8
  %u21 = alloca ptr, align 8
  %v21 = alloca ptr, align 8
  %d0 = alloca ptr, align 8
  %e0 = alloca ptr, align 8
  %f0 = alloca ptr, align 8
  %g0 = alloca ptr, align 8
  %v21_t = alloca ptr, align 8
  %v21_b = alloca ptr, align 8
  %a01_b = alloca ptr, align 8
  %a12t_l = alloca ptr, align 8
  %a12t_r = alloca ptr, align 8
  %ABL = alloca ptr, align 8
  %ZBL = alloca ptr, align 8
  %a2 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %n_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  %n_behind = alloca i32, align 4
  store i32 %m_A, ptr %m_A.addr, align 4
  store i32 %n_A, ptr %n_A.addr, align 4
  store i32 %m_TS, ptr %m_TS.addr, align 4
  store ptr %buff_A, ptr %buff_A.addr, align 8
  store i32 %rs_A, ptr %rs_A.addr, align 4
  store i32 %cs_A, ptr %cs_A.addr, align 4
  store ptr %buff_Y, ptr %buff_Y.addr, align 8
  store i32 %rs_Y, ptr %rs_Y.addr, align 4
  store i32 %cs_Y, ptr %cs_Y.addr, align 4
  store ptr %buff_Z, ptr %buff_Z.addr, align 8
  store i32 %rs_Z, ptr %rs_Z.addr, align 4
  store i32 %cs_Z, ptr %cs_Z.addr, align 4
  store ptr %buff_T, ptr %buff_T.addr, align 8
  store i32 %rs_T, ptr %rs_T.addr, align 4
  store i32 %cs_T, ptr %cs_T.addr, align 4
  store ptr %buff_S, ptr %buff_S.addr, align 8
  store i32 %rs_S, ptr %rs_S.addr, align 4
  store i32 %cs_S, ptr %cs_S.addr, align 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds float, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ONE, align 8
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds float, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_1, align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 8
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds float, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ZERO, align 8
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds float, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_0, align 8
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 8
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds float, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_MINUS_ONE, align 8
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds float, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_m1, align 8
  %36 = load i32, ptr %m_TS.addr, align 4
  store i32 %36, ptr %b_alg, align 4
  %37 = load i32, ptr %m_A.addr, align 4
  %conv = sext i32 %37 to i64
  %mul35 = mul i64 %conv, 4
  %call = call ptr @FLA_malloc(i64 noundef %mul35)
  store ptr %call, ptr %buff_u, align 8
  %38 = load i32, ptr %n_A.addr, align 4
  %conv36 = sext i32 %38 to i64
  %mul37 = mul i64 %conv36, 4
  %call38 = call ptr @FLA_malloc(i64 noundef %mul37)
  store ptr %call38, ptr %buff_v, align 8
  %39 = load i32, ptr %n_A.addr, align 4
  %conv39 = sext i32 %39 to i64
  %mul40 = mul i64 %conv39, 4
  %call41 = call ptr @FLA_malloc(i64 noundef %mul40)
  store ptr %call41, ptr %buff_d, align 8
  %40 = load i32, ptr %n_A.addr, align 4
  %conv42 = sext i32 %40 to i64
  %mul43 = mul i64 %conv42, 4
  %call44 = call ptr @FLA_malloc(i64 noundef %mul43)
  store ptr %call44, ptr %buff_e, align 8
  %41 = load i32, ptr %m_A.addr, align 4
  %conv45 = sext i32 %41 to i64
  %mul46 = mul i64 %conv45, 4
  %call47 = call ptr @FLA_malloc(i64 noundef %mul46)
  store ptr %call47, ptr %buff_f, align 8
  %42 = load i32, ptr %m_A.addr, align 4
  %conv48 = sext i32 %42 to i64
  %mul49 = mul i64 %conv48, 4
  %call50 = call ptr @FLA_malloc(i64 noundef %mul49)
  store ptr %call50, ptr %buff_g, align 8
  store i32 1, ptr %inc_u, align 4
  store i32 1, ptr %inc_v, align 4
  store i32 1, ptr %inc_d, align 4
  store i32 1, ptr %inc_e, align 4
  store i32 1, ptr %inc_f, align 4
  store i32 1, ptr %inc_g, align 4
  %43 = load i32, ptr %n_A.addr, align 4
  %44 = load i32, ptr %b_alg, align 4
  %45 = load ptr, ptr %buff_0, align 8
  %46 = load ptr, ptr %buff_Y.addr, align 8
  %47 = load i32, ptr %rs_Y.addr, align 4
  %48 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_ssetm(i32 noundef %43, i32 noundef %44, ptr noundef %45, ptr noundef %46, i32 noundef %47, i32 noundef %48)
  %49 = load i32, ptr %m_A.addr, align 4
  %50 = load i32, ptr %b_alg, align 4
  %51 = load ptr, ptr %buff_0, align 8
  %52 = load ptr, ptr %buff_Z.addr, align 8
  %53 = load i32, ptr %rs_Z.addr, align 4
  %54 = load i32, ptr %cs_Z.addr, align 4
  call void @bl1_ssetm(i32 noundef %49, i32 noundef %50, ptr noundef %51, ptr noundef %52, i32 noundef %53, i32 noundef %54)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end33
  %55 = load i32, ptr %i, align 4
  %56 = load i32, ptr %b_alg, align 4
  %cmp51 = icmp slt i32 %55, %56
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load ptr, ptr %buff_A.addr, align 8
  %58 = load i32, ptr %cs_A.addr, align 4
  %mul53 = mul nsw i32 0, %58
  %idx.ext = sext i32 %mul53 to i64
  %add.ptr54 = getelementptr inbounds float, ptr %57, i64 %idx.ext
  %59 = load i32, ptr %i, align 4
  %60 = load i32, ptr %rs_A.addr, align 4
  %mul55 = mul nsw i32 %59, %60
  %idx.ext56 = sext i32 %mul55 to i64
  %add.ptr57 = getelementptr inbounds float, ptr %add.ptr54, i64 %idx.ext56
  store ptr %add.ptr57, ptr %a10t, align 8
  %61 = load ptr, ptr %buff_A.addr, align 8
  %62 = load i32, ptr %cs_A.addr, align 4
  %mul58 = mul nsw i32 0, %62
  %idx.ext59 = sext i32 %mul58 to i64
  %add.ptr60 = getelementptr inbounds float, ptr %61, i64 %idx.ext59
  %63 = load i32, ptr %i, align 4
  %add = add nsw i32 %63, 1
  %64 = load i32, ptr %rs_A.addr, align 4
  %mul61 = mul nsw i32 %add, %64
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds float, ptr %add.ptr60, i64 %idx.ext62
  store ptr %add.ptr63, ptr %A20, align 8
  %65 = load ptr, ptr %buff_A.addr, align 8
  %66 = load i32, ptr %i, align 4
  %67 = load i32, ptr %cs_A.addr, align 4
  %mul64 = mul nsw i32 %66, %67
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds float, ptr %65, i64 %idx.ext65
  %68 = load i32, ptr %rs_A.addr, align 4
  %mul67 = mul nsw i32 0, %68
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds float, ptr %add.ptr66, i64 %idx.ext68
  store ptr %add.ptr69, ptr %a01, align 8
  %69 = load ptr, ptr %buff_A.addr, align 8
  %70 = load i32, ptr %i, align 4
  %71 = load i32, ptr %cs_A.addr, align 4
  %mul70 = mul nsw i32 %70, %71
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds float, ptr %69, i64 %idx.ext71
  %72 = load i32, ptr %i, align 4
  %73 = load i32, ptr %rs_A.addr, align 4
  %mul73 = mul nsw i32 %72, %73
  %idx.ext74 = sext i32 %mul73 to i64
  %add.ptr75 = getelementptr inbounds float, ptr %add.ptr72, i64 %idx.ext74
  store ptr %add.ptr75, ptr %alpha11, align 8
  %74 = load ptr, ptr %buff_A.addr, align 8
  %75 = load i32, ptr %i, align 4
  %76 = load i32, ptr %cs_A.addr, align 4
  %mul76 = mul nsw i32 %75, %76
  %idx.ext77 = sext i32 %mul76 to i64
  %add.ptr78 = getelementptr inbounds float, ptr %74, i64 %idx.ext77
  %77 = load i32, ptr %i, align 4
  %add79 = add nsw i32 %77, 1
  %78 = load i32, ptr %rs_A.addr, align 4
  %mul80 = mul nsw i32 %add79, %78
  %idx.ext81 = sext i32 %mul80 to i64
  %add.ptr82 = getelementptr inbounds float, ptr %add.ptr78, i64 %idx.ext81
  store ptr %add.ptr82, ptr %a21, align 8
  %79 = load ptr, ptr %buff_A.addr, align 8
  %80 = load i32, ptr %i, align 4
  %add83 = add nsw i32 %80, 1
  %81 = load i32, ptr %cs_A.addr, align 4
  %mul84 = mul nsw i32 %add83, %81
  %idx.ext85 = sext i32 %mul84 to i64
  %add.ptr86 = getelementptr inbounds float, ptr %79, i64 %idx.ext85
  %82 = load i32, ptr %rs_A.addr, align 4
  %mul87 = mul nsw i32 0, %82
  %idx.ext88 = sext i32 %mul87 to i64
  %add.ptr89 = getelementptr inbounds float, ptr %add.ptr86, i64 %idx.ext88
  store ptr %add.ptr89, ptr %A02, align 8
  %83 = load ptr, ptr %buff_A.addr, align 8
  %84 = load i32, ptr %i, align 4
  %add90 = add nsw i32 %84, 1
  %85 = load i32, ptr %cs_A.addr, align 4
  %mul91 = mul nsw i32 %add90, %85
  %idx.ext92 = sext i32 %mul91 to i64
  %add.ptr93 = getelementptr inbounds float, ptr %83, i64 %idx.ext92
  %86 = load i32, ptr %i, align 4
  %87 = load i32, ptr %rs_A.addr, align 4
  %mul94 = mul nsw i32 %86, %87
  %idx.ext95 = sext i32 %mul94 to i64
  %add.ptr96 = getelementptr inbounds float, ptr %add.ptr93, i64 %idx.ext95
  store ptr %add.ptr96, ptr %a12t, align 8
  %88 = load ptr, ptr %buff_A.addr, align 8
  %89 = load i32, ptr %i, align 4
  %add97 = add nsw i32 %89, 1
  %90 = load i32, ptr %cs_A.addr, align 4
  %mul98 = mul nsw i32 %add97, %90
  %idx.ext99 = sext i32 %mul98 to i64
  %add.ptr100 = getelementptr inbounds float, ptr %88, i64 %idx.ext99
  %91 = load i32, ptr %i, align 4
  %add101 = add nsw i32 %91, 1
  %92 = load i32, ptr %rs_A.addr, align 4
  %mul102 = mul nsw i32 %add101, %92
  %idx.ext103 = sext i32 %mul102 to i64
  %add.ptr104 = getelementptr inbounds float, ptr %add.ptr100, i64 %idx.ext103
  store ptr %add.ptr104, ptr %A22, align 8
  %93 = load ptr, ptr %buff_Y.addr, align 8
  %94 = load i32, ptr %cs_Y.addr, align 4
  %mul105 = mul nsw i32 0, %94
  %idx.ext106 = sext i32 %mul105 to i64
  %add.ptr107 = getelementptr inbounds float, ptr %93, i64 %idx.ext106
  %95 = load i32, ptr %i, align 4
  %96 = load i32, ptr %rs_Y.addr, align 4
  %mul108 = mul nsw i32 %95, %96
  %idx.ext109 = sext i32 %mul108 to i64
  %add.ptr110 = getelementptr inbounds float, ptr %add.ptr107, i64 %idx.ext109
  store ptr %add.ptr110, ptr %y10t, align 8
  %97 = load ptr, ptr %buff_Y.addr, align 8
  %98 = load i32, ptr %cs_Y.addr, align 4
  %mul111 = mul nsw i32 0, %98
  %idx.ext112 = sext i32 %mul111 to i64
  %add.ptr113 = getelementptr inbounds float, ptr %97, i64 %idx.ext112
  %99 = load i32, ptr %i, align 4
  %add114 = add nsw i32 %99, 1
  %100 = load i32, ptr %rs_Y.addr, align 4
  %mul115 = mul nsw i32 %add114, %100
  %idx.ext116 = sext i32 %mul115 to i64
  %add.ptr117 = getelementptr inbounds float, ptr %add.ptr113, i64 %idx.ext116
  store ptr %add.ptr117, ptr %Y20, align 8
  %101 = load ptr, ptr %buff_Y.addr, align 8
  %102 = load i32, ptr %i, align 4
  %103 = load i32, ptr %cs_Y.addr, align 4
  %mul118 = mul nsw i32 %102, %103
  %idx.ext119 = sext i32 %mul118 to i64
  %add.ptr120 = getelementptr inbounds float, ptr %101, i64 %idx.ext119
  %104 = load i32, ptr %i, align 4
  %add121 = add nsw i32 %104, 1
  %105 = load i32, ptr %rs_Y.addr, align 4
  %mul122 = mul nsw i32 %add121, %105
  %idx.ext123 = sext i32 %mul122 to i64
  %add.ptr124 = getelementptr inbounds float, ptr %add.ptr120, i64 %idx.ext123
  store ptr %add.ptr124, ptr %y21, align 8
  %106 = load ptr, ptr %buff_Z.addr, align 8
  %107 = load i32, ptr %cs_Z.addr, align 4
  %mul125 = mul nsw i32 0, %107
  %idx.ext126 = sext i32 %mul125 to i64
  %add.ptr127 = getelementptr inbounds float, ptr %106, i64 %idx.ext126
  %108 = load i32, ptr %i, align 4
  %109 = load i32, ptr %rs_Z.addr, align 4
  %mul128 = mul nsw i32 %108, %109
  %idx.ext129 = sext i32 %mul128 to i64
  %add.ptr130 = getelementptr inbounds float, ptr %add.ptr127, i64 %idx.ext129
  store ptr %add.ptr130, ptr %z10t, align 8
  %110 = load ptr, ptr %buff_Z.addr, align 8
  %111 = load i32, ptr %cs_Z.addr, align 4
  %mul131 = mul nsw i32 0, %111
  %idx.ext132 = sext i32 %mul131 to i64
  %add.ptr133 = getelementptr inbounds float, ptr %110, i64 %idx.ext132
  %112 = load i32, ptr %i, align 4
  %add134 = add nsw i32 %112, 1
  %113 = load i32, ptr %rs_Z.addr, align 4
  %mul135 = mul nsw i32 %add134, %113
  %idx.ext136 = sext i32 %mul135 to i64
  %add.ptr137 = getelementptr inbounds float, ptr %add.ptr133, i64 %idx.ext136
  store ptr %add.ptr137, ptr %Z20, align 8
  %114 = load ptr, ptr %buff_Z.addr, align 8
  %115 = load i32, ptr %i, align 4
  %116 = load i32, ptr %cs_Z.addr, align 4
  %mul138 = mul nsw i32 %115, %116
  %idx.ext139 = sext i32 %mul138 to i64
  %add.ptr140 = getelementptr inbounds float, ptr %114, i64 %idx.ext139
  %117 = load i32, ptr %i, align 4
  %add141 = add nsw i32 %117, 1
  %118 = load i32, ptr %rs_Z.addr, align 4
  %mul142 = mul nsw i32 %add141, %118
  %idx.ext143 = sext i32 %mul142 to i64
  %add.ptr144 = getelementptr inbounds float, ptr %add.ptr140, i64 %idx.ext143
  store ptr %add.ptr144, ptr %z21, align 8
  %119 = load ptr, ptr %buff_T.addr, align 8
  %120 = load i32, ptr %i, align 4
  %121 = load i32, ptr %cs_T.addr, align 4
  %mul145 = mul nsw i32 %120, %121
  %idx.ext146 = sext i32 %mul145 to i64
  %add.ptr147 = getelementptr inbounds float, ptr %119, i64 %idx.ext146
  %122 = load i32, ptr %rs_T.addr, align 4
  %mul148 = mul nsw i32 0, %122
  %idx.ext149 = sext i32 %mul148 to i64
  %add.ptr150 = getelementptr inbounds float, ptr %add.ptr147, i64 %idx.ext149
  store ptr %add.ptr150, ptr %t01, align 8
  %123 = load ptr, ptr %buff_T.addr, align 8
  %124 = load i32, ptr %i, align 4
  %125 = load i32, ptr %cs_T.addr, align 4
  %mul151 = mul nsw i32 %124, %125
  %idx.ext152 = sext i32 %mul151 to i64
  %add.ptr153 = getelementptr inbounds float, ptr %123, i64 %idx.ext152
  %126 = load i32, ptr %i, align 4
  %127 = load i32, ptr %rs_T.addr, align 4
  %mul154 = mul nsw i32 %126, %127
  %idx.ext155 = sext i32 %mul154 to i64
  %add.ptr156 = getelementptr inbounds float, ptr %add.ptr153, i64 %idx.ext155
  store ptr %add.ptr156, ptr %tau11, align 8
  %128 = load ptr, ptr %buff_S.addr, align 8
  %129 = load i32, ptr %i, align 4
  %130 = load i32, ptr %cs_S.addr, align 4
  %mul157 = mul nsw i32 %129, %130
  %idx.ext158 = sext i32 %mul157 to i64
  %add.ptr159 = getelementptr inbounds float, ptr %128, i64 %idx.ext158
  %131 = load i32, ptr %rs_S.addr, align 4
  %mul160 = mul nsw i32 0, %131
  %idx.ext161 = sext i32 %mul160 to i64
  %add.ptr162 = getelementptr inbounds float, ptr %add.ptr159, i64 %idx.ext161
  store ptr %add.ptr162, ptr %s01, align 8
  %132 = load ptr, ptr %buff_S.addr, align 8
  %133 = load i32, ptr %i, align 4
  %134 = load i32, ptr %cs_S.addr, align 4
  %mul163 = mul nsw i32 %133, %134
  %idx.ext164 = sext i32 %mul163 to i64
  %add.ptr165 = getelementptr inbounds float, ptr %132, i64 %idx.ext164
  %135 = load i32, ptr %i, align 4
  %136 = load i32, ptr %rs_S.addr, align 4
  %mul166 = mul nsw i32 %135, %136
  %idx.ext167 = sext i32 %mul166 to i64
  %add.ptr168 = getelementptr inbounds float, ptr %add.ptr165, i64 %idx.ext167
  store ptr %add.ptr168, ptr %sigma11, align 8
  %137 = load ptr, ptr %buff_u, align 8
  %138 = load i32, ptr %i, align 4
  %add169 = add nsw i32 %138, 1
  %139 = load i32, ptr %inc_u, align 4
  %mul170 = mul nsw i32 %add169, %139
  %idx.ext171 = sext i32 %mul170 to i64
  %add.ptr172 = getelementptr inbounds float, ptr %137, i64 %idx.ext171
  store ptr %add.ptr172, ptr %u21, align 8
  %140 = load ptr, ptr %buff_v, align 8
  %141 = load i32, ptr %i, align 4
  %add173 = add nsw i32 %141, 1
  %142 = load i32, ptr %inc_v, align 4
  %mul174 = mul nsw i32 %add173, %142
  %idx.ext175 = sext i32 %mul174 to i64
  %add.ptr176 = getelementptr inbounds float, ptr %140, i64 %idx.ext175
  store ptr %add.ptr176, ptr %v21, align 8
  %143 = load ptr, ptr %buff_d, align 8
  %144 = load i32, ptr %inc_d, align 4
  %mul177 = mul nsw i32 0, %144
  %idx.ext178 = sext i32 %mul177 to i64
  %add.ptr179 = getelementptr inbounds float, ptr %143, i64 %idx.ext178
  store ptr %add.ptr179, ptr %d0, align 8
  %145 = load ptr, ptr %buff_e, align 8
  %146 = load i32, ptr %inc_e, align 4
  %mul180 = mul nsw i32 0, %146
  %idx.ext181 = sext i32 %mul180 to i64
  %add.ptr182 = getelementptr inbounds float, ptr %145, i64 %idx.ext181
  store ptr %add.ptr182, ptr %e0, align 8
  %147 = load ptr, ptr %buff_f, align 8
  %148 = load i32, ptr %inc_f, align 4
  %mul183 = mul nsw i32 0, %148
  %idx.ext184 = sext i32 %mul183 to i64
  %add.ptr185 = getelementptr inbounds float, ptr %147, i64 %idx.ext184
  store ptr %add.ptr185, ptr %f0, align 8
  %149 = load ptr, ptr %buff_g, align 8
  %150 = load i32, ptr %inc_g, align 4
  %mul186 = mul nsw i32 0, %150
  %idx.ext187 = sext i32 %mul186 to i64
  %add.ptr188 = getelementptr inbounds float, ptr %149, i64 %idx.ext187
  store ptr %add.ptr188, ptr %g0, align 8
  %151 = load ptr, ptr %v21, align 8
  %152 = load i32, ptr %inc_v, align 4
  %mul189 = mul nsw i32 0, %152
  %idx.ext190 = sext i32 %mul189 to i64
  %add.ptr191 = getelementptr inbounds float, ptr %151, i64 %idx.ext190
  store ptr %add.ptr191, ptr %v21_t, align 8
  %153 = load ptr, ptr %v21, align 8
  %154 = load i32, ptr %inc_v, align 4
  %mul192 = mul nsw i32 1, %154
  %idx.ext193 = sext i32 %mul192 to i64
  %add.ptr194 = getelementptr inbounds float, ptr %153, i64 %idx.ext193
  store ptr %add.ptr194, ptr %v21_b, align 8
  %155 = load ptr, ptr %a01, align 8
  %156 = load i32, ptr %cs_A.addr, align 4
  %mul195 = mul nsw i32 0, %156
  %idx.ext196 = sext i32 %mul195 to i64
  %add.ptr197 = getelementptr inbounds float, ptr %155, i64 %idx.ext196
  %157 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %157, 1
  %158 = load i32, ptr %rs_A.addr, align 4
  %mul198 = mul nsw i32 %sub, %158
  %idx.ext199 = sext i32 %mul198 to i64
  %add.ptr200 = getelementptr inbounds float, ptr %add.ptr197, i64 %idx.ext199
  store ptr %add.ptr200, ptr %a01_b, align 8
  %159 = load ptr, ptr %a12t, align 8
  %160 = load i32, ptr %cs_A.addr, align 4
  %mul201 = mul nsw i32 0, %160
  %idx.ext202 = sext i32 %mul201 to i64
  %add.ptr203 = getelementptr inbounds float, ptr %159, i64 %idx.ext202
  %161 = load i32, ptr %rs_A.addr, align 4
  %mul204 = mul nsw i32 0, %161
  %idx.ext205 = sext i32 %mul204 to i64
  %add.ptr206 = getelementptr inbounds float, ptr %add.ptr203, i64 %idx.ext205
  store ptr %add.ptr206, ptr %a12t_l, align 8
  %162 = load ptr, ptr %a12t, align 8
  %163 = load i32, ptr %cs_A.addr, align 4
  %mul207 = mul nsw i32 1, %163
  %idx.ext208 = sext i32 %mul207 to i64
  %add.ptr209 = getelementptr inbounds float, ptr %162, i64 %idx.ext208
  %164 = load i32, ptr %rs_A.addr, align 4
  %mul210 = mul nsw i32 0, %164
  %idx.ext211 = sext i32 %mul210 to i64
  %add.ptr212 = getelementptr inbounds float, ptr %add.ptr209, i64 %idx.ext211
  store ptr %add.ptr212, ptr %a12t_r, align 8
  %165 = load ptr, ptr %a10t, align 8
  store ptr %165, ptr %ABL, align 8
  %166 = load ptr, ptr %z10t, align 8
  store ptr %166, ptr %ZBL, align 8
  %167 = load ptr, ptr %alpha11, align 8
  store ptr %167, ptr %a2, align 8
  %168 = load i32, ptr %m_A.addr, align 4
  %169 = load i32, ptr %i, align 4
  %sub213 = sub nsw i32 %168, %169
  %sub214 = sub nsw i32 %sub213, 1
  store i32 %sub214, ptr %m_ahead, align 4
  %170 = load i32, ptr %n_A.addr, align 4
  %171 = load i32, ptr %i, align 4
  %sub215 = sub nsw i32 %170, %171
  %sub216 = sub nsw i32 %sub215, 1
  store i32 %sub216, ptr %n_ahead, align 4
  %172 = load i32, ptr %i, align 4
  store i32 %172, ptr %m_behind, align 4
  %173 = load i32, ptr %i, align 4
  store i32 %173, ptr %n_behind, align 4
  %174 = load i32, ptr %m_behind, align 4
  %cmp217 = icmp sgt i32 %174, 0
  br i1 %cmp217, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %175 = load ptr, ptr %a01_b, align 8
  %176 = load float, ptr %175, align 4
  store float %176, ptr %last_elem, align 4
  %177 = load ptr, ptr %buff_1, align 8
  %178 = load float, ptr %177, align 4
  %179 = load ptr, ptr %a01_b, align 8
  store float %178, ptr %179, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %180 = load i32, ptr %m_ahead, align 4
  %add219 = add nsw i32 %180, 1
  %181 = load i32, ptr %n_behind, align 4
  %182 = load ptr, ptr %buff_m1, align 8
  %183 = load ptr, ptr %ABL, align 8
  %184 = load i32, ptr %rs_A.addr, align 4
  %185 = load i32, ptr %cs_A.addr, align 4
  %186 = load ptr, ptr %y10t, align 8
  %187 = load i32, ptr %cs_Y.addr, align 4
  %188 = load ptr, ptr %buff_1, align 8
  %189 = load ptr, ptr %a2, align 8
  %190 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_sgemv(i32 noundef 100, i32 noundef 501, i32 noundef %add219, i32 noundef %181, ptr noundef %182, ptr noundef %183, i32 noundef %184, i32 noundef %185, ptr noundef %186, i32 noundef %187, ptr noundef %188, ptr noundef %189, i32 noundef %190)
  %191 = load i32, ptr %m_ahead, align 4
  %add220 = add nsw i32 %191, 1
  %192 = load i32, ptr %n_behind, align 4
  %193 = load ptr, ptr %buff_m1, align 8
  %194 = load ptr, ptr %ZBL, align 8
  %195 = load i32, ptr %rs_Z.addr, align 4
  %196 = load i32, ptr %cs_Z.addr, align 4
  %197 = load ptr, ptr %a01, align 8
  %198 = load i32, ptr %rs_A.addr, align 4
  %199 = load ptr, ptr %buff_1, align 8
  %200 = load ptr, ptr %a2, align 8
  %201 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_sgemv(i32 noundef 100, i32 noundef 501, i32 noundef %add220, i32 noundef %192, ptr noundef %193, ptr noundef %194, i32 noundef %195, i32 noundef %196, ptr noundef %197, i32 noundef %198, ptr noundef %199, ptr noundef %200, i32 noundef %201)
  %202 = load i32, ptr %n_ahead, align 4
  %203 = load i32, ptr %n_behind, align 4
  %204 = load ptr, ptr %buff_m1, align 8
  %205 = load ptr, ptr %Y20, align 8
  %206 = load i32, ptr %rs_Y.addr, align 4
  %207 = load i32, ptr %cs_Y.addr, align 4
  %208 = load ptr, ptr %a10t, align 8
  %209 = load i32, ptr %cs_A.addr, align 4
  %210 = load ptr, ptr %buff_1, align 8
  %211 = load ptr, ptr %a12t, align 8
  %212 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_sgemv(i32 noundef 102, i32 noundef 500, i32 noundef %202, i32 noundef %203, ptr noundef %204, ptr noundef %205, i32 noundef %206, i32 noundef %207, ptr noundef %208, i32 noundef %209, ptr noundef %210, ptr noundef %211, i32 noundef %212)
  %213 = load i32, ptr %m_behind, align 4
  %214 = load i32, ptr %n_ahead, align 4
  %215 = load ptr, ptr %buff_m1, align 8
  %216 = load ptr, ptr %A02, align 8
  %217 = load i32, ptr %rs_A.addr, align 4
  %218 = load i32, ptr %cs_A.addr, align 4
  %219 = load ptr, ptr %z10t, align 8
  %220 = load i32, ptr %cs_Z.addr, align 4
  %221 = load ptr, ptr %buff_1, align 8
  %222 = load ptr, ptr %a12t, align 8
  %223 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_sgemv(i32 noundef 103, i32 noundef 500, i32 noundef %213, i32 noundef %214, ptr noundef %215, ptr noundef %216, i32 noundef %217, i32 noundef %218, ptr noundef %219, i32 noundef %220, ptr noundef %221, ptr noundef %222, i32 noundef %223)
  %224 = load i32, ptr %m_behind, align 4
  %cmp221 = icmp sgt i32 %224, 0
  br i1 %cmp221, label %if.then223, label %if.end224

if.then223:                                       ; preds = %if.end
  %225 = load float, ptr %last_elem, align 4
  %226 = load ptr, ptr %a01_b, align 8
  store float %225, ptr %226, align 4
  br label %if.end224

if.end224:                                        ; preds = %if.then223, %if.end
  %227 = load i32, ptr %m_ahead, align 4
  %228 = load ptr, ptr %alpha11, align 8
  %229 = load ptr, ptr %a21, align 8
  %230 = load i32, ptr %rs_A.addr, align 4
  %231 = load ptr, ptr %tau11, align 8
  %call225 = call i32 @FLA_Househ2_UT_l_ops(i32 noundef %227, ptr noundef %228, ptr noundef %229, i32 noundef %230, ptr noundef %231)
  %232 = load i32, ptr %m_ahead, align 4
  %233 = load ptr, ptr %a21, align 8
  %234 = load i32, ptr %rs_A.addr, align 4
  %235 = load ptr, ptr %u21, align 8
  %236 = load i32, ptr %inc_u, align 4
  call void @bl1_scopyv(i32 noundef 500, i32 noundef %232, ptr noundef %233, i32 noundef %234, ptr noundef %235, i32 noundef %236)
  %237 = load i32, ptr %n_ahead, align 4
  %cmp226 = icmp sgt i32 %237, 0
  br i1 %cmp226, label %if.then228, label %if.else

if.then228:                                       ; preds = %if.end224
  %238 = load i32, ptr %n_ahead, align 4
  %239 = load ptr, ptr %a12t, align 8
  %240 = load i32, ptr %cs_A.addr, align 4
  %241 = load ptr, ptr %y21, align 8
  %242 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_scopyv(i32 noundef 501, i32 noundef %238, ptr noundef %239, i32 noundef %240, ptr noundef %241, i32 noundef %242)
  %243 = load i32, ptr %m_ahead, align 4
  %244 = load i32, ptr %n_ahead, align 4
  %245 = load ptr, ptr %buff_1, align 8
  %246 = load ptr, ptr %A22, align 8
  %247 = load i32, ptr %rs_A.addr, align 4
  %248 = load i32, ptr %cs_A.addr, align 4
  %249 = load ptr, ptr %u21, align 8
  %250 = load i32, ptr %inc_u, align 4
  %251 = load ptr, ptr %buff_1, align 8
  %252 = load ptr, ptr %y21, align 8
  %253 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_sgemv(i32 noundef 103, i32 noundef 500, i32 noundef %243, i32 noundef %244, ptr noundef %245, ptr noundef %246, i32 noundef %247, i32 noundef %248, ptr noundef %249, i32 noundef %250, ptr noundef %251, ptr noundef %252, i32 noundef %253)
  %254 = load i32, ptr %m_ahead, align 4
  %255 = load i32, ptr %n_behind, align 4
  %256 = load ptr, ptr %buff_1, align 8
  %257 = load ptr, ptr %A20, align 8
  %258 = load i32, ptr %rs_A.addr, align 4
  %259 = load i32, ptr %cs_A.addr, align 4
  %260 = load ptr, ptr %u21, align 8
  %261 = load i32, ptr %inc_u, align 4
  %262 = load ptr, ptr %buff_0, align 8
  %263 = load ptr, ptr %d0, align 8
  %264 = load i32, ptr %inc_d, align 4
  call void @bl1_sgemv(i32 noundef 103, i32 noundef 500, i32 noundef %254, i32 noundef %255, ptr noundef %256, ptr noundef %257, i32 noundef %258, i32 noundef %259, ptr noundef %260, i32 noundef %261, ptr noundef %262, ptr noundef %263, i32 noundef %264)
  %265 = load i32, ptr %m_ahead, align 4
  %266 = load i32, ptr %n_behind, align 4
  %267 = load ptr, ptr %buff_1, align 8
  %268 = load ptr, ptr %Z20, align 8
  %269 = load i32, ptr %rs_Z.addr, align 4
  %270 = load i32, ptr %cs_Z.addr, align 4
  %271 = load ptr, ptr %u21, align 8
  %272 = load i32, ptr %inc_u, align 4
  %273 = load ptr, ptr %buff_0, align 8
  %274 = load ptr, ptr %e0, align 8
  %275 = load i32, ptr %inc_e, align 4
  call void @bl1_sgemv(i32 noundef 103, i32 noundef 500, i32 noundef %265, i32 noundef %266, ptr noundef %267, ptr noundef %268, i32 noundef %269, i32 noundef %270, ptr noundef %271, i32 noundef %272, ptr noundef %273, ptr noundef %274, i32 noundef %275)
  %276 = load i32, ptr %n_behind, align 4
  %277 = load ptr, ptr %a10t, align 8
  %278 = load i32, ptr %cs_A.addr, align 4
  %279 = load ptr, ptr %t01, align 8
  %280 = load i32, ptr %rs_T.addr, align 4
  call void @bl1_scopyv(i32 noundef 501, i32 noundef %276, ptr noundef %277, i32 noundef %278, ptr noundef %279, i32 noundef %280)
  %281 = load i32, ptr %n_behind, align 4
  %282 = load ptr, ptr %buff_1, align 8
  %283 = load ptr, ptr %d0, align 8
  %284 = load i32, ptr %inc_d, align 4
  %285 = load ptr, ptr %t01, align 8
  %286 = load i32, ptr %rs_T.addr, align 4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %281, ptr noundef %282, ptr noundef %283, i32 noundef %284, ptr noundef %285, i32 noundef %286)
  %287 = load i32, ptr %n_ahead, align 4
  %288 = load i32, ptr %n_behind, align 4
  %289 = load ptr, ptr %buff_m1, align 8
  %290 = load ptr, ptr %Y20, align 8
  %291 = load i32, ptr %rs_Y.addr, align 4
  %292 = load i32, ptr %cs_Y.addr, align 4
  %293 = load ptr, ptr %d0, align 8
  %294 = load i32, ptr %inc_d, align 4
  %295 = load ptr, ptr %buff_1, align 8
  %296 = load ptr, ptr %y21, align 8
  %297 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_sgemv(i32 noundef 100, i32 noundef 500, i32 noundef %287, i32 noundef %288, ptr noundef %289, ptr noundef %290, i32 noundef %291, i32 noundef %292, ptr noundef %293, i32 noundef %294, ptr noundef %295, ptr noundef %296, i32 noundef %297)
  %298 = load i32, ptr %m_behind, align 4
  %299 = load i32, ptr %n_ahead, align 4
  %300 = load ptr, ptr %buff_m1, align 8
  %301 = load ptr, ptr %A02, align 8
  %302 = load i32, ptr %rs_A.addr, align 4
  %303 = load i32, ptr %cs_A.addr, align 4
  %304 = load ptr, ptr %e0, align 8
  %305 = load i32, ptr %inc_e, align 4
  %306 = load ptr, ptr %buff_1, align 8
  %307 = load ptr, ptr %y21, align 8
  %308 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_sgemv(i32 noundef 101, i32 noundef 500, i32 noundef %298, i32 noundef %299, ptr noundef %300, ptr noundef %301, i32 noundef %302, i32 noundef %303, ptr noundef %304, i32 noundef %305, ptr noundef %306, ptr noundef %307, i32 noundef %308)
  %309 = load i32, ptr %n_ahead, align 4
  %310 = load ptr, ptr %tau11, align 8
  %311 = load ptr, ptr %y21, align 8
  %312 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_sinvscalv(i32 noundef 500, i32 noundef %309, ptr noundef %310, ptr noundef %311, i32 noundef %312)
  %313 = load i32, ptr %n_ahead, align 4
  %314 = load ptr, ptr %buff_m1, align 8
  %315 = load ptr, ptr %y21, align 8
  %316 = load i32, ptr %rs_Y.addr, align 4
  %317 = load ptr, ptr %a12t, align 8
  %318 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_saxpyv(i32 noundef 501, i32 noundef %313, ptr noundef %314, ptr noundef %315, i32 noundef %316, ptr noundef %317, i32 noundef %318)
  %319 = load i32, ptr %n_ahead, align 4
  %sub229 = sub nsw i32 %319, 1
  %320 = load ptr, ptr %a12t_l, align 8
  %321 = load ptr, ptr %a12t_r, align 8
  %322 = load i32, ptr %cs_A.addr, align 4
  %323 = load ptr, ptr %sigma11, align 8
  %call230 = call i32 @FLA_Househ2_UT_r_ops(i32 noundef %sub229, ptr noundef %320, ptr noundef %321, i32 noundef %322, ptr noundef %323)
  %324 = load ptr, ptr %buff_1, align 8
  %325 = load float, ptr %324, align 4
  %326 = load ptr, ptr %v21_t, align 8
  store float %325, ptr %326, align 4
  %327 = load i32, ptr %n_ahead, align 4
  %sub231 = sub nsw i32 %327, 1
  %328 = load ptr, ptr %a12t_r, align 8
  %329 = load i32, ptr %cs_A.addr, align 4
  %330 = load ptr, ptr %v21_b, align 8
  %331 = load i32, ptr %inc_v, align 4
  call void @bl1_scopyv(i32 noundef 500, i32 noundef %sub231, ptr noundef %328, i32 noundef %329, ptr noundef %330, i32 noundef %331)
  %332 = load i32, ptr %n_ahead, align 4
  %333 = load ptr, ptr %y21, align 8
  %334 = load i32, ptr %rs_Y.addr, align 4
  %335 = load ptr, ptr %v21, align 8
  %336 = load i32, ptr %inc_v, align 4
  call void @bl1_sdot(i32 noundef 501, i32 noundef %332, ptr noundef %333, i32 noundef %334, ptr noundef %335, i32 noundef %336, ptr noundef %beta)
  %337 = load ptr, ptr %buff_m1, align 8
  %338 = load float, ptr %337, align 4
  %339 = load float, ptr %beta, align 4
  %mul232 = fmul float %338, %339
  store float %mul232, ptr %beta, align 4
  %340 = load i32, ptr %m_ahead, align 4
  %341 = load ptr, ptr %u21, align 8
  %342 = load i32, ptr %inc_u, align 4
  %343 = load ptr, ptr %z21, align 8
  %344 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_scopyv(i32 noundef 500, i32 noundef %340, ptr noundef %341, i32 noundef %342, ptr noundef %343, i32 noundef %344)
  %345 = load i32, ptr %m_ahead, align 4
  %346 = load i32, ptr %n_ahead, align 4
  %347 = load ptr, ptr %buff_1, align 8
  %348 = load ptr, ptr %A22, align 8
  %349 = load i32, ptr %rs_A.addr, align 4
  %350 = load i32, ptr %cs_A.addr, align 4
  %351 = load ptr, ptr %v21, align 8
  %352 = load i32, ptr %inc_v, align 4
  %353 = load ptr, ptr %z21, align 8
  %354 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_sgemv(i32 noundef 100, i32 noundef 500, i32 noundef %345, i32 noundef %346, ptr noundef %347, ptr noundef %348, i32 noundef %349, i32 noundef %350, ptr noundef %351, i32 noundef %352, ptr noundef %beta, ptr noundef %353, i32 noundef %354)
  %355 = load i32, ptr %n_ahead, align 4
  %356 = load i32, ptr %m_behind, align 4
  %357 = load ptr, ptr %buff_1, align 8
  %358 = load ptr, ptr %Y20, align 8
  %359 = load i32, ptr %rs_Y.addr, align 4
  %360 = load i32, ptr %cs_Y.addr, align 4
  %361 = load ptr, ptr %v21, align 8
  %362 = load i32, ptr %inc_v, align 4
  %363 = load ptr, ptr %buff_0, align 8
  %364 = load ptr, ptr %f0, align 8
  %365 = load i32, ptr %inc_f, align 4
  call void @bl1_sgemv(i32 noundef 103, i32 noundef 500, i32 noundef %355, i32 noundef %356, ptr noundef %357, ptr noundef %358, i32 noundef %359, i32 noundef %360, ptr noundef %361, i32 noundef %362, ptr noundef %363, ptr noundef %364, i32 noundef %365)
  %366 = load i32, ptr %m_behind, align 4
  %367 = load i32, ptr %n_ahead, align 4
  %368 = load ptr, ptr %buff_1, align 8
  %369 = load ptr, ptr %A02, align 8
  %370 = load i32, ptr %rs_A.addr, align 4
  %371 = load i32, ptr %cs_A.addr, align 4
  %372 = load ptr, ptr %v21, align 8
  %373 = load i32, ptr %inc_v, align 4
  %374 = load ptr, ptr %buff_0, align 8
  %375 = load ptr, ptr %g0, align 8
  %376 = load i32, ptr %inc_g, align 4
  call void @bl1_sgemv(i32 noundef 102, i32 noundef 500, i32 noundef %366, i32 noundef %367, ptr noundef %368, ptr noundef %369, i32 noundef %370, i32 noundef %371, ptr noundef %372, i32 noundef %373, ptr noundef %374, ptr noundef %375, i32 noundef %376)
  %377 = load i32, ptr %m_ahead, align 4
  %378 = load i32, ptr %n_behind, align 4
  %379 = load ptr, ptr %buff_m1, align 8
  %380 = load ptr, ptr %A20, align 8
  %381 = load i32, ptr %rs_A.addr, align 4
  %382 = load i32, ptr %cs_A.addr, align 4
  %383 = load ptr, ptr %f0, align 8
  %384 = load i32, ptr %inc_f, align 4
  %385 = load ptr, ptr %buff_1, align 8
  %386 = load ptr, ptr %z21, align 8
  %387 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_sgemv(i32 noundef 100, i32 noundef 500, i32 noundef %377, i32 noundef %378, ptr noundef %379, ptr noundef %380, i32 noundef %381, i32 noundef %382, ptr noundef %383, i32 noundef %384, ptr noundef %385, ptr noundef %386, i32 noundef %387)
  %388 = load i32, ptr %m_ahead, align 4
  %389 = load i32, ptr %n_behind, align 4
  %390 = load ptr, ptr %buff_m1, align 8
  %391 = load ptr, ptr %Z20, align 8
  %392 = load i32, ptr %rs_Z.addr, align 4
  %393 = load i32, ptr %cs_Z.addr, align 4
  %394 = load ptr, ptr %g0, align 8
  %395 = load i32, ptr %inc_g, align 4
  %396 = load ptr, ptr %buff_1, align 8
  %397 = load ptr, ptr %z21, align 8
  %398 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_sgemv(i32 noundef 100, i32 noundef 500, i32 noundef %388, i32 noundef %389, ptr noundef %390, ptr noundef %391, i32 noundef %392, i32 noundef %393, ptr noundef %394, i32 noundef %395, ptr noundef %396, ptr noundef %397, i32 noundef %398)
  %399 = load i32, ptr %m_ahead, align 4
  %400 = load ptr, ptr %sigma11, align 8
  %401 = load ptr, ptr %z21, align 8
  %402 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_sinvscalv(i32 noundef 500, i32 noundef %399, ptr noundef %400, ptr noundef %401, i32 noundef %402)
  %403 = load i32, ptr %n_behind, align 4
  %404 = load ptr, ptr %g0, align 8
  %405 = load i32, ptr %inc_g, align 4
  %406 = load ptr, ptr %s01, align 8
  %407 = load i32, ptr %rs_S.addr, align 4
  call void @bl1_scopyv(i32 noundef 500, i32 noundef %403, ptr noundef %404, i32 noundef %405, ptr noundef %406, i32 noundef %407)
  br label %if.end233

if.else:                                          ; preds = %if.end224
  %408 = load i32, ptr %n_behind, align 4
  %409 = load ptr, ptr %a10t, align 8
  %410 = load i32, ptr %cs_A.addr, align 4
  %411 = load ptr, ptr %t01, align 8
  %412 = load i32, ptr %rs_T.addr, align 4
  call void @bl1_scopyv(i32 noundef 501, i32 noundef %408, ptr noundef %409, i32 noundef %410, ptr noundef %411, i32 noundef %412)
  %413 = load i32, ptr %m_ahead, align 4
  %414 = load i32, ptr %n_behind, align 4
  %415 = load ptr, ptr %buff_1, align 8
  %416 = load ptr, ptr %A20, align 8
  %417 = load i32, ptr %rs_A.addr, align 4
  %418 = load i32, ptr %cs_A.addr, align 4
  %419 = load ptr, ptr %u21, align 8
  %420 = load i32, ptr %inc_u, align 4
  %421 = load ptr, ptr %buff_1, align 8
  %422 = load ptr, ptr %t01, align 8
  %423 = load i32, ptr %rs_T.addr, align 4
  call void @bl1_sgemv(i32 noundef 103, i32 noundef 500, i32 noundef %413, i32 noundef %414, ptr noundef %415, ptr noundef %416, i32 noundef %417, i32 noundef %418, ptr noundef %419, i32 noundef %420, ptr noundef %421, ptr noundef %422, i32 noundef %423)
  br label %if.end233

if.end233:                                        ; preds = %if.else, %if.then228
  br label %for.inc

for.inc:                                          ; preds = %if.end233
  %424 = load i32, ptr %i, align 4
  %inc = add nsw i32 %424, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %425 = load ptr, ptr %buff_u, align 8
  call void @FLA_free(ptr noundef %425)
  %426 = load ptr, ptr %buff_v, align 8
  call void @FLA_free(ptr noundef %426)
  %427 = load ptr, ptr %buff_d, align 8
  call void @FLA_free(ptr noundef %427)
  %428 = load ptr, ptr %buff_e, align 8
  call void @FLA_free(ptr noundef %428)
  %429 = load ptr, ptr %buff_f, align 8
  call void @FLA_free(ptr noundef %429)
  %430 = load ptr, ptr %buff_g, align 8
  call void @FLA_free(ptr noundef %430)
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Bidiag_UT_u_step_opd_var5(i32 noundef %m_A, i32 noundef %n_A, i32 noundef %m_TS, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_Y, i32 noundef %rs_Y, i32 noundef %cs_Y, ptr noundef %buff_Z, i32 noundef %rs_Z, i32 noundef %cs_Z, ptr noundef %buff_T, i32 noundef %rs_T, i32 noundef %cs_T, ptr noundef %buff_S, i32 noundef %rs_S, i32 noundef %cs_S) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %m_TS.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_Y.addr = alloca ptr, align 8
  %rs_Y.addr = alloca i32, align 4
  %cs_Y.addr = alloca i32, align 4
  %buff_Z.addr = alloca ptr, align 8
  %rs_Z.addr = alloca i32, align 4
  %cs_Z.addr = alloca i32, align 4
  %buff_T.addr = alloca ptr, align 8
  %rs_T.addr = alloca i32, align 4
  %cs_T.addr = alloca i32, align 4
  %buff_S.addr = alloca ptr, align 8
  %rs_S.addr = alloca i32, align 4
  %cs_S.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_0 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %beta = alloca double, align 8
  %last_elem = alloca double, align 8
  %i = alloca i32, align 4
  %b_alg = alloca i32, align 4
  %buff_u = alloca ptr, align 8
  %buff_v = alloca ptr, align 8
  %buff_d = alloca ptr, align 8
  %buff_e = alloca ptr, align 8
  %buff_f = alloca ptr, align 8
  %buff_g = alloca ptr, align 8
  %inc_u = alloca i32, align 4
  %inc_v = alloca i32, align 4
  %inc_d = alloca i32, align 4
  %inc_e = alloca i32, align 4
  %inc_f = alloca i32, align 4
  %inc_g = alloca i32, align 4
  %a10t = alloca ptr, align 8
  %A20 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %y10t = alloca ptr, align 8
  %Y20 = alloca ptr, align 8
  %y21 = alloca ptr, align 8
  %z10t = alloca ptr, align 8
  %Z20 = alloca ptr, align 8
  %z21 = alloca ptr, align 8
  %t01 = alloca ptr, align 8
  %tau11 = alloca ptr, align 8
  %s01 = alloca ptr, align 8
  %sigma11 = alloca ptr, align 8
  %u21 = alloca ptr, align 8
  %v21 = alloca ptr, align 8
  %d0 = alloca ptr, align 8
  %e0 = alloca ptr, align 8
  %f0 = alloca ptr, align 8
  %g0 = alloca ptr, align 8
  %v21_t = alloca ptr, align 8
  %v21_b = alloca ptr, align 8
  %a01_b = alloca ptr, align 8
  %a12t_l = alloca ptr, align 8
  %a12t_r = alloca ptr, align 8
  %ABL = alloca ptr, align 8
  %ZBL = alloca ptr, align 8
  %a2 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %n_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  %n_behind = alloca i32, align 4
  store i32 %m_A, ptr %m_A.addr, align 4
  store i32 %n_A, ptr %n_A.addr, align 4
  store i32 %m_TS, ptr %m_TS.addr, align 4
  store ptr %buff_A, ptr %buff_A.addr, align 8
  store i32 %rs_A, ptr %rs_A.addr, align 4
  store i32 %cs_A, ptr %cs_A.addr, align 4
  store ptr %buff_Y, ptr %buff_Y.addr, align 8
  store i32 %rs_Y, ptr %rs_Y.addr, align 4
  store i32 %cs_Y, ptr %cs_Y.addr, align 4
  store ptr %buff_Z, ptr %buff_Z.addr, align 8
  store i32 %rs_Z, ptr %rs_Z.addr, align 4
  store i32 %cs_Z, ptr %cs_Z.addr, align 4
  store ptr %buff_T, ptr %buff_T.addr, align 8
  store i32 %rs_T, ptr %rs_T.addr, align 4
  store i32 %cs_T, ptr %cs_T.addr, align 4
  store ptr %buff_S, ptr %buff_S.addr, align 8
  store i32 %rs_S, ptr %rs_S.addr, align 4
  store i32 %cs_S, ptr %cs_S.addr, align 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 16
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds double, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ONE, align 8
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds double, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_1, align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 16
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds double, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ZERO, align 8
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds double, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_0, align 8
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 16
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds double, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_MINUS_ONE, align 8
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds double, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_m1, align 8
  %36 = load i32, ptr %m_TS.addr, align 4
  store i32 %36, ptr %b_alg, align 4
  %37 = load i32, ptr %m_A.addr, align 4
  %conv = sext i32 %37 to i64
  %mul35 = mul i64 %conv, 8
  %call = call ptr @FLA_malloc(i64 noundef %mul35)
  store ptr %call, ptr %buff_u, align 8
  %38 = load i32, ptr %n_A.addr, align 4
  %conv36 = sext i32 %38 to i64
  %mul37 = mul i64 %conv36, 8
  %call38 = call ptr @FLA_malloc(i64 noundef %mul37)
  store ptr %call38, ptr %buff_v, align 8
  %39 = load i32, ptr %n_A.addr, align 4
  %conv39 = sext i32 %39 to i64
  %mul40 = mul i64 %conv39, 8
  %call41 = call ptr @FLA_malloc(i64 noundef %mul40)
  store ptr %call41, ptr %buff_d, align 8
  %40 = load i32, ptr %n_A.addr, align 4
  %conv42 = sext i32 %40 to i64
  %mul43 = mul i64 %conv42, 8
  %call44 = call ptr @FLA_malloc(i64 noundef %mul43)
  store ptr %call44, ptr %buff_e, align 8
  %41 = load i32, ptr %m_A.addr, align 4
  %conv45 = sext i32 %41 to i64
  %mul46 = mul i64 %conv45, 8
  %call47 = call ptr @FLA_malloc(i64 noundef %mul46)
  store ptr %call47, ptr %buff_f, align 8
  %42 = load i32, ptr %m_A.addr, align 4
  %conv48 = sext i32 %42 to i64
  %mul49 = mul i64 %conv48, 8
  %call50 = call ptr @FLA_malloc(i64 noundef %mul49)
  store ptr %call50, ptr %buff_g, align 8
  store i32 1, ptr %inc_u, align 4
  store i32 1, ptr %inc_v, align 4
  store i32 1, ptr %inc_d, align 4
  store i32 1, ptr %inc_e, align 4
  store i32 1, ptr %inc_f, align 4
  store i32 1, ptr %inc_g, align 4
  %43 = load i32, ptr %n_A.addr, align 4
  %44 = load i32, ptr %b_alg, align 4
  %45 = load ptr, ptr %buff_0, align 8
  %46 = load ptr, ptr %buff_Y.addr, align 8
  %47 = load i32, ptr %rs_Y.addr, align 4
  %48 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_dsetm(i32 noundef %43, i32 noundef %44, ptr noundef %45, ptr noundef %46, i32 noundef %47, i32 noundef %48)
  %49 = load i32, ptr %m_A.addr, align 4
  %50 = load i32, ptr %b_alg, align 4
  %51 = load ptr, ptr %buff_0, align 8
  %52 = load ptr, ptr %buff_Z.addr, align 8
  %53 = load i32, ptr %rs_Z.addr, align 4
  %54 = load i32, ptr %cs_Z.addr, align 4
  call void @bl1_dsetm(i32 noundef %49, i32 noundef %50, ptr noundef %51, ptr noundef %52, i32 noundef %53, i32 noundef %54)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end33
  %55 = load i32, ptr %i, align 4
  %56 = load i32, ptr %b_alg, align 4
  %cmp51 = icmp slt i32 %55, %56
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load ptr, ptr %buff_A.addr, align 8
  %58 = load i32, ptr %cs_A.addr, align 4
  %mul53 = mul nsw i32 0, %58
  %idx.ext = sext i32 %mul53 to i64
  %add.ptr54 = getelementptr inbounds double, ptr %57, i64 %idx.ext
  %59 = load i32, ptr %i, align 4
  %60 = load i32, ptr %rs_A.addr, align 4
  %mul55 = mul nsw i32 %59, %60
  %idx.ext56 = sext i32 %mul55 to i64
  %add.ptr57 = getelementptr inbounds double, ptr %add.ptr54, i64 %idx.ext56
  store ptr %add.ptr57, ptr %a10t, align 8
  %61 = load ptr, ptr %buff_A.addr, align 8
  %62 = load i32, ptr %cs_A.addr, align 4
  %mul58 = mul nsw i32 0, %62
  %idx.ext59 = sext i32 %mul58 to i64
  %add.ptr60 = getelementptr inbounds double, ptr %61, i64 %idx.ext59
  %63 = load i32, ptr %i, align 4
  %add = add nsw i32 %63, 1
  %64 = load i32, ptr %rs_A.addr, align 4
  %mul61 = mul nsw i32 %add, %64
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds double, ptr %add.ptr60, i64 %idx.ext62
  store ptr %add.ptr63, ptr %A20, align 8
  %65 = load ptr, ptr %buff_A.addr, align 8
  %66 = load i32, ptr %i, align 4
  %67 = load i32, ptr %cs_A.addr, align 4
  %mul64 = mul nsw i32 %66, %67
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds double, ptr %65, i64 %idx.ext65
  %68 = load i32, ptr %rs_A.addr, align 4
  %mul67 = mul nsw i32 0, %68
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds double, ptr %add.ptr66, i64 %idx.ext68
  store ptr %add.ptr69, ptr %a01, align 8
  %69 = load ptr, ptr %buff_A.addr, align 8
  %70 = load i32, ptr %i, align 4
  %71 = load i32, ptr %cs_A.addr, align 4
  %mul70 = mul nsw i32 %70, %71
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds double, ptr %69, i64 %idx.ext71
  %72 = load i32, ptr %i, align 4
  %73 = load i32, ptr %rs_A.addr, align 4
  %mul73 = mul nsw i32 %72, %73
  %idx.ext74 = sext i32 %mul73 to i64
  %add.ptr75 = getelementptr inbounds double, ptr %add.ptr72, i64 %idx.ext74
  store ptr %add.ptr75, ptr %alpha11, align 8
  %74 = load ptr, ptr %buff_A.addr, align 8
  %75 = load i32, ptr %i, align 4
  %76 = load i32, ptr %cs_A.addr, align 4
  %mul76 = mul nsw i32 %75, %76
  %idx.ext77 = sext i32 %mul76 to i64
  %add.ptr78 = getelementptr inbounds double, ptr %74, i64 %idx.ext77
  %77 = load i32, ptr %i, align 4
  %add79 = add nsw i32 %77, 1
  %78 = load i32, ptr %rs_A.addr, align 4
  %mul80 = mul nsw i32 %add79, %78
  %idx.ext81 = sext i32 %mul80 to i64
  %add.ptr82 = getelementptr inbounds double, ptr %add.ptr78, i64 %idx.ext81
  store ptr %add.ptr82, ptr %a21, align 8
  %79 = load ptr, ptr %buff_A.addr, align 8
  %80 = load i32, ptr %i, align 4
  %add83 = add nsw i32 %80, 1
  %81 = load i32, ptr %cs_A.addr, align 4
  %mul84 = mul nsw i32 %add83, %81
  %idx.ext85 = sext i32 %mul84 to i64
  %add.ptr86 = getelementptr inbounds double, ptr %79, i64 %idx.ext85
  %82 = load i32, ptr %rs_A.addr, align 4
  %mul87 = mul nsw i32 0, %82
  %idx.ext88 = sext i32 %mul87 to i64
  %add.ptr89 = getelementptr inbounds double, ptr %add.ptr86, i64 %idx.ext88
  store ptr %add.ptr89, ptr %A02, align 8
  %83 = load ptr, ptr %buff_A.addr, align 8
  %84 = load i32, ptr %i, align 4
  %add90 = add nsw i32 %84, 1
  %85 = load i32, ptr %cs_A.addr, align 4
  %mul91 = mul nsw i32 %add90, %85
  %idx.ext92 = sext i32 %mul91 to i64
  %add.ptr93 = getelementptr inbounds double, ptr %83, i64 %idx.ext92
  %86 = load i32, ptr %i, align 4
  %87 = load i32, ptr %rs_A.addr, align 4
  %mul94 = mul nsw i32 %86, %87
  %idx.ext95 = sext i32 %mul94 to i64
  %add.ptr96 = getelementptr inbounds double, ptr %add.ptr93, i64 %idx.ext95
  store ptr %add.ptr96, ptr %a12t, align 8
  %88 = load ptr, ptr %buff_A.addr, align 8
  %89 = load i32, ptr %i, align 4
  %add97 = add nsw i32 %89, 1
  %90 = load i32, ptr %cs_A.addr, align 4
  %mul98 = mul nsw i32 %add97, %90
  %idx.ext99 = sext i32 %mul98 to i64
  %add.ptr100 = getelementptr inbounds double, ptr %88, i64 %idx.ext99
  %91 = load i32, ptr %i, align 4
  %add101 = add nsw i32 %91, 1
  %92 = load i32, ptr %rs_A.addr, align 4
  %mul102 = mul nsw i32 %add101, %92
  %idx.ext103 = sext i32 %mul102 to i64
  %add.ptr104 = getelementptr inbounds double, ptr %add.ptr100, i64 %idx.ext103
  store ptr %add.ptr104, ptr %A22, align 8
  %93 = load ptr, ptr %buff_Y.addr, align 8
  %94 = load i32, ptr %cs_Y.addr, align 4
  %mul105 = mul nsw i32 0, %94
  %idx.ext106 = sext i32 %mul105 to i64
  %add.ptr107 = getelementptr inbounds double, ptr %93, i64 %idx.ext106
  %95 = load i32, ptr %i, align 4
  %96 = load i32, ptr %rs_Y.addr, align 4
  %mul108 = mul nsw i32 %95, %96
  %idx.ext109 = sext i32 %mul108 to i64
  %add.ptr110 = getelementptr inbounds double, ptr %add.ptr107, i64 %idx.ext109
  store ptr %add.ptr110, ptr %y10t, align 8
  %97 = load ptr, ptr %buff_Y.addr, align 8
  %98 = load i32, ptr %cs_Y.addr, align 4
  %mul111 = mul nsw i32 0, %98
  %idx.ext112 = sext i32 %mul111 to i64
  %add.ptr113 = getelementptr inbounds double, ptr %97, i64 %idx.ext112
  %99 = load i32, ptr %i, align 4
  %add114 = add nsw i32 %99, 1
  %100 = load i32, ptr %rs_Y.addr, align 4
  %mul115 = mul nsw i32 %add114, %100
  %idx.ext116 = sext i32 %mul115 to i64
  %add.ptr117 = getelementptr inbounds double, ptr %add.ptr113, i64 %idx.ext116
  store ptr %add.ptr117, ptr %Y20, align 8
  %101 = load ptr, ptr %buff_Y.addr, align 8
  %102 = load i32, ptr %i, align 4
  %103 = load i32, ptr %cs_Y.addr, align 4
  %mul118 = mul nsw i32 %102, %103
  %idx.ext119 = sext i32 %mul118 to i64
  %add.ptr120 = getelementptr inbounds double, ptr %101, i64 %idx.ext119
  %104 = load i32, ptr %i, align 4
  %add121 = add nsw i32 %104, 1
  %105 = load i32, ptr %rs_Y.addr, align 4
  %mul122 = mul nsw i32 %add121, %105
  %idx.ext123 = sext i32 %mul122 to i64
  %add.ptr124 = getelementptr inbounds double, ptr %add.ptr120, i64 %idx.ext123
  store ptr %add.ptr124, ptr %y21, align 8
  %106 = load ptr, ptr %buff_Z.addr, align 8
  %107 = load i32, ptr %cs_Z.addr, align 4
  %mul125 = mul nsw i32 0, %107
  %idx.ext126 = sext i32 %mul125 to i64
  %add.ptr127 = getelementptr inbounds double, ptr %106, i64 %idx.ext126
  %108 = load i32, ptr %i, align 4
  %109 = load i32, ptr %rs_Z.addr, align 4
  %mul128 = mul nsw i32 %108, %109
  %idx.ext129 = sext i32 %mul128 to i64
  %add.ptr130 = getelementptr inbounds double, ptr %add.ptr127, i64 %idx.ext129
  store ptr %add.ptr130, ptr %z10t, align 8
  %110 = load ptr, ptr %buff_Z.addr, align 8
  %111 = load i32, ptr %cs_Z.addr, align 4
  %mul131 = mul nsw i32 0, %111
  %idx.ext132 = sext i32 %mul131 to i64
  %add.ptr133 = getelementptr inbounds double, ptr %110, i64 %idx.ext132
  %112 = load i32, ptr %i, align 4
  %add134 = add nsw i32 %112, 1
  %113 = load i32, ptr %rs_Z.addr, align 4
  %mul135 = mul nsw i32 %add134, %113
  %idx.ext136 = sext i32 %mul135 to i64
  %add.ptr137 = getelementptr inbounds double, ptr %add.ptr133, i64 %idx.ext136
  store ptr %add.ptr137, ptr %Z20, align 8
  %114 = load ptr, ptr %buff_Z.addr, align 8
  %115 = load i32, ptr %i, align 4
  %116 = load i32, ptr %cs_Z.addr, align 4
  %mul138 = mul nsw i32 %115, %116
  %idx.ext139 = sext i32 %mul138 to i64
  %add.ptr140 = getelementptr inbounds double, ptr %114, i64 %idx.ext139
  %117 = load i32, ptr %i, align 4
  %add141 = add nsw i32 %117, 1
  %118 = load i32, ptr %rs_Z.addr, align 4
  %mul142 = mul nsw i32 %add141, %118
  %idx.ext143 = sext i32 %mul142 to i64
  %add.ptr144 = getelementptr inbounds double, ptr %add.ptr140, i64 %idx.ext143
  store ptr %add.ptr144, ptr %z21, align 8
  %119 = load ptr, ptr %buff_T.addr, align 8
  %120 = load i32, ptr %i, align 4
  %121 = load i32, ptr %cs_T.addr, align 4
  %mul145 = mul nsw i32 %120, %121
  %idx.ext146 = sext i32 %mul145 to i64
  %add.ptr147 = getelementptr inbounds double, ptr %119, i64 %idx.ext146
  %122 = load i32, ptr %rs_T.addr, align 4
  %mul148 = mul nsw i32 0, %122
  %idx.ext149 = sext i32 %mul148 to i64
  %add.ptr150 = getelementptr inbounds double, ptr %add.ptr147, i64 %idx.ext149
  store ptr %add.ptr150, ptr %t01, align 8
  %123 = load ptr, ptr %buff_T.addr, align 8
  %124 = load i32, ptr %i, align 4
  %125 = load i32, ptr %cs_T.addr, align 4
  %mul151 = mul nsw i32 %124, %125
  %idx.ext152 = sext i32 %mul151 to i64
  %add.ptr153 = getelementptr inbounds double, ptr %123, i64 %idx.ext152
  %126 = load i32, ptr %i, align 4
  %127 = load i32, ptr %rs_T.addr, align 4
  %mul154 = mul nsw i32 %126, %127
  %idx.ext155 = sext i32 %mul154 to i64
  %add.ptr156 = getelementptr inbounds double, ptr %add.ptr153, i64 %idx.ext155
  store ptr %add.ptr156, ptr %tau11, align 8
  %128 = load ptr, ptr %buff_S.addr, align 8
  %129 = load i32, ptr %i, align 4
  %130 = load i32, ptr %cs_S.addr, align 4
  %mul157 = mul nsw i32 %129, %130
  %idx.ext158 = sext i32 %mul157 to i64
  %add.ptr159 = getelementptr inbounds double, ptr %128, i64 %idx.ext158
  %131 = load i32, ptr %rs_S.addr, align 4
  %mul160 = mul nsw i32 0, %131
  %idx.ext161 = sext i32 %mul160 to i64
  %add.ptr162 = getelementptr inbounds double, ptr %add.ptr159, i64 %idx.ext161
  store ptr %add.ptr162, ptr %s01, align 8
  %132 = load ptr, ptr %buff_S.addr, align 8
  %133 = load i32, ptr %i, align 4
  %134 = load i32, ptr %cs_S.addr, align 4
  %mul163 = mul nsw i32 %133, %134
  %idx.ext164 = sext i32 %mul163 to i64
  %add.ptr165 = getelementptr inbounds double, ptr %132, i64 %idx.ext164
  %135 = load i32, ptr %i, align 4
  %136 = load i32, ptr %rs_S.addr, align 4
  %mul166 = mul nsw i32 %135, %136
  %idx.ext167 = sext i32 %mul166 to i64
  %add.ptr168 = getelementptr inbounds double, ptr %add.ptr165, i64 %idx.ext167
  store ptr %add.ptr168, ptr %sigma11, align 8
  %137 = load ptr, ptr %buff_u, align 8
  %138 = load i32, ptr %i, align 4
  %add169 = add nsw i32 %138, 1
  %139 = load i32, ptr %inc_u, align 4
  %mul170 = mul nsw i32 %add169, %139
  %idx.ext171 = sext i32 %mul170 to i64
  %add.ptr172 = getelementptr inbounds double, ptr %137, i64 %idx.ext171
  store ptr %add.ptr172, ptr %u21, align 8
  %140 = load ptr, ptr %buff_v, align 8
  %141 = load i32, ptr %i, align 4
  %add173 = add nsw i32 %141, 1
  %142 = load i32, ptr %inc_v, align 4
  %mul174 = mul nsw i32 %add173, %142
  %idx.ext175 = sext i32 %mul174 to i64
  %add.ptr176 = getelementptr inbounds double, ptr %140, i64 %idx.ext175
  store ptr %add.ptr176, ptr %v21, align 8
  %143 = load ptr, ptr %buff_d, align 8
  %144 = load i32, ptr %inc_d, align 4
  %mul177 = mul nsw i32 0, %144
  %idx.ext178 = sext i32 %mul177 to i64
  %add.ptr179 = getelementptr inbounds double, ptr %143, i64 %idx.ext178
  store ptr %add.ptr179, ptr %d0, align 8
  %145 = load ptr, ptr %buff_e, align 8
  %146 = load i32, ptr %inc_e, align 4
  %mul180 = mul nsw i32 0, %146
  %idx.ext181 = sext i32 %mul180 to i64
  %add.ptr182 = getelementptr inbounds double, ptr %145, i64 %idx.ext181
  store ptr %add.ptr182, ptr %e0, align 8
  %147 = load ptr, ptr %buff_f, align 8
  %148 = load i32, ptr %inc_f, align 4
  %mul183 = mul nsw i32 0, %148
  %idx.ext184 = sext i32 %mul183 to i64
  %add.ptr185 = getelementptr inbounds double, ptr %147, i64 %idx.ext184
  store ptr %add.ptr185, ptr %f0, align 8
  %149 = load ptr, ptr %buff_g, align 8
  %150 = load i32, ptr %inc_g, align 4
  %mul186 = mul nsw i32 0, %150
  %idx.ext187 = sext i32 %mul186 to i64
  %add.ptr188 = getelementptr inbounds double, ptr %149, i64 %idx.ext187
  store ptr %add.ptr188, ptr %g0, align 8
  %151 = load ptr, ptr %v21, align 8
  %152 = load i32, ptr %inc_v, align 4
  %mul189 = mul nsw i32 0, %152
  %idx.ext190 = sext i32 %mul189 to i64
  %add.ptr191 = getelementptr inbounds double, ptr %151, i64 %idx.ext190
  store ptr %add.ptr191, ptr %v21_t, align 8
  %153 = load ptr, ptr %v21, align 8
  %154 = load i32, ptr %inc_v, align 4
  %mul192 = mul nsw i32 1, %154
  %idx.ext193 = sext i32 %mul192 to i64
  %add.ptr194 = getelementptr inbounds double, ptr %153, i64 %idx.ext193
  store ptr %add.ptr194, ptr %v21_b, align 8
  %155 = load ptr, ptr %a01, align 8
  %156 = load i32, ptr %cs_A.addr, align 4
  %mul195 = mul nsw i32 0, %156
  %idx.ext196 = sext i32 %mul195 to i64
  %add.ptr197 = getelementptr inbounds double, ptr %155, i64 %idx.ext196
  %157 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %157, 1
  %158 = load i32, ptr %rs_A.addr, align 4
  %mul198 = mul nsw i32 %sub, %158
  %idx.ext199 = sext i32 %mul198 to i64
  %add.ptr200 = getelementptr inbounds double, ptr %add.ptr197, i64 %idx.ext199
  store ptr %add.ptr200, ptr %a01_b, align 8
  %159 = load ptr, ptr %a12t, align 8
  %160 = load i32, ptr %cs_A.addr, align 4
  %mul201 = mul nsw i32 0, %160
  %idx.ext202 = sext i32 %mul201 to i64
  %add.ptr203 = getelementptr inbounds double, ptr %159, i64 %idx.ext202
  %161 = load i32, ptr %rs_A.addr, align 4
  %mul204 = mul nsw i32 0, %161
  %idx.ext205 = sext i32 %mul204 to i64
  %add.ptr206 = getelementptr inbounds double, ptr %add.ptr203, i64 %idx.ext205
  store ptr %add.ptr206, ptr %a12t_l, align 8
  %162 = load ptr, ptr %a12t, align 8
  %163 = load i32, ptr %cs_A.addr, align 4
  %mul207 = mul nsw i32 1, %163
  %idx.ext208 = sext i32 %mul207 to i64
  %add.ptr209 = getelementptr inbounds double, ptr %162, i64 %idx.ext208
  %164 = load i32, ptr %rs_A.addr, align 4
  %mul210 = mul nsw i32 0, %164
  %idx.ext211 = sext i32 %mul210 to i64
  %add.ptr212 = getelementptr inbounds double, ptr %add.ptr209, i64 %idx.ext211
  store ptr %add.ptr212, ptr %a12t_r, align 8
  %165 = load ptr, ptr %a10t, align 8
  store ptr %165, ptr %ABL, align 8
  %166 = load ptr, ptr %z10t, align 8
  store ptr %166, ptr %ZBL, align 8
  %167 = load ptr, ptr %alpha11, align 8
  store ptr %167, ptr %a2, align 8
  %168 = load i32, ptr %m_A.addr, align 4
  %169 = load i32, ptr %i, align 4
  %sub213 = sub nsw i32 %168, %169
  %sub214 = sub nsw i32 %sub213, 1
  store i32 %sub214, ptr %m_ahead, align 4
  %170 = load i32, ptr %n_A.addr, align 4
  %171 = load i32, ptr %i, align 4
  %sub215 = sub nsw i32 %170, %171
  %sub216 = sub nsw i32 %sub215, 1
  store i32 %sub216, ptr %n_ahead, align 4
  %172 = load i32, ptr %i, align 4
  store i32 %172, ptr %m_behind, align 4
  %173 = load i32, ptr %i, align 4
  store i32 %173, ptr %n_behind, align 4
  %174 = load i32, ptr %m_behind, align 4
  %cmp217 = icmp sgt i32 %174, 0
  br i1 %cmp217, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %175 = load ptr, ptr %a01_b, align 8
  %176 = load double, ptr %175, align 8
  store double %176, ptr %last_elem, align 8
  %177 = load ptr, ptr %buff_1, align 8
  %178 = load double, ptr %177, align 8
  %179 = load ptr, ptr %a01_b, align 8
  store double %178, ptr %179, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %180 = load i32, ptr %m_ahead, align 4
  %add219 = add nsw i32 %180, 1
  %181 = load i32, ptr %n_behind, align 4
  %182 = load ptr, ptr %buff_m1, align 8
  %183 = load ptr, ptr %ABL, align 8
  %184 = load i32, ptr %rs_A.addr, align 4
  %185 = load i32, ptr %cs_A.addr, align 4
  %186 = load ptr, ptr %y10t, align 8
  %187 = load i32, ptr %cs_Y.addr, align 4
  %188 = load ptr, ptr %buff_1, align 8
  %189 = load ptr, ptr %a2, align 8
  %190 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_dgemv(i32 noundef 100, i32 noundef 501, i32 noundef %add219, i32 noundef %181, ptr noundef %182, ptr noundef %183, i32 noundef %184, i32 noundef %185, ptr noundef %186, i32 noundef %187, ptr noundef %188, ptr noundef %189, i32 noundef %190)
  %191 = load i32, ptr %m_ahead, align 4
  %add220 = add nsw i32 %191, 1
  %192 = load i32, ptr %n_behind, align 4
  %193 = load ptr, ptr %buff_m1, align 8
  %194 = load ptr, ptr %ZBL, align 8
  %195 = load i32, ptr %rs_Z.addr, align 4
  %196 = load i32, ptr %cs_Z.addr, align 4
  %197 = load ptr, ptr %a01, align 8
  %198 = load i32, ptr %rs_A.addr, align 4
  %199 = load ptr, ptr %buff_1, align 8
  %200 = load ptr, ptr %a2, align 8
  %201 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_dgemv(i32 noundef 100, i32 noundef 501, i32 noundef %add220, i32 noundef %192, ptr noundef %193, ptr noundef %194, i32 noundef %195, i32 noundef %196, ptr noundef %197, i32 noundef %198, ptr noundef %199, ptr noundef %200, i32 noundef %201)
  %202 = load i32, ptr %n_ahead, align 4
  %203 = load i32, ptr %n_behind, align 4
  %204 = load ptr, ptr %buff_m1, align 8
  %205 = load ptr, ptr %Y20, align 8
  %206 = load i32, ptr %rs_Y.addr, align 4
  %207 = load i32, ptr %cs_Y.addr, align 4
  %208 = load ptr, ptr %a10t, align 8
  %209 = load i32, ptr %cs_A.addr, align 4
  %210 = load ptr, ptr %buff_1, align 8
  %211 = load ptr, ptr %a12t, align 8
  %212 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_dgemv(i32 noundef 102, i32 noundef 500, i32 noundef %202, i32 noundef %203, ptr noundef %204, ptr noundef %205, i32 noundef %206, i32 noundef %207, ptr noundef %208, i32 noundef %209, ptr noundef %210, ptr noundef %211, i32 noundef %212)
  %213 = load i32, ptr %m_behind, align 4
  %214 = load i32, ptr %n_ahead, align 4
  %215 = load ptr, ptr %buff_m1, align 8
  %216 = load ptr, ptr %A02, align 8
  %217 = load i32, ptr %rs_A.addr, align 4
  %218 = load i32, ptr %cs_A.addr, align 4
  %219 = load ptr, ptr %z10t, align 8
  %220 = load i32, ptr %cs_Z.addr, align 4
  %221 = load ptr, ptr %buff_1, align 8
  %222 = load ptr, ptr %a12t, align 8
  %223 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_dgemv(i32 noundef 103, i32 noundef 500, i32 noundef %213, i32 noundef %214, ptr noundef %215, ptr noundef %216, i32 noundef %217, i32 noundef %218, ptr noundef %219, i32 noundef %220, ptr noundef %221, ptr noundef %222, i32 noundef %223)
  %224 = load i32, ptr %m_behind, align 4
  %cmp221 = icmp sgt i32 %224, 0
  br i1 %cmp221, label %if.then223, label %if.end224

if.then223:                                       ; preds = %if.end
  %225 = load double, ptr %last_elem, align 8
  %226 = load ptr, ptr %a01_b, align 8
  store double %225, ptr %226, align 8
  br label %if.end224

if.end224:                                        ; preds = %if.then223, %if.end
  %227 = load i32, ptr %m_ahead, align 4
  %228 = load ptr, ptr %alpha11, align 8
  %229 = load ptr, ptr %a21, align 8
  %230 = load i32, ptr %rs_A.addr, align 4
  %231 = load ptr, ptr %tau11, align 8
  %call225 = call i32 @FLA_Househ2_UT_l_opd(i32 noundef %227, ptr noundef %228, ptr noundef %229, i32 noundef %230, ptr noundef %231)
  %232 = load i32, ptr %m_ahead, align 4
  %233 = load ptr, ptr %a21, align 8
  %234 = load i32, ptr %rs_A.addr, align 4
  %235 = load ptr, ptr %u21, align 8
  %236 = load i32, ptr %inc_u, align 4
  call void @bl1_dcopyv(i32 noundef 500, i32 noundef %232, ptr noundef %233, i32 noundef %234, ptr noundef %235, i32 noundef %236)
  %237 = load i32, ptr %n_ahead, align 4
  %cmp226 = icmp sgt i32 %237, 0
  br i1 %cmp226, label %if.then228, label %if.else

if.then228:                                       ; preds = %if.end224
  %238 = load i32, ptr %n_ahead, align 4
  %239 = load ptr, ptr %a12t, align 8
  %240 = load i32, ptr %cs_A.addr, align 4
  %241 = load ptr, ptr %y21, align 8
  %242 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_dcopyv(i32 noundef 501, i32 noundef %238, ptr noundef %239, i32 noundef %240, ptr noundef %241, i32 noundef %242)
  %243 = load i32, ptr %m_ahead, align 4
  %244 = load i32, ptr %n_ahead, align 4
  %245 = load ptr, ptr %buff_1, align 8
  %246 = load ptr, ptr %A22, align 8
  %247 = load i32, ptr %rs_A.addr, align 4
  %248 = load i32, ptr %cs_A.addr, align 4
  %249 = load ptr, ptr %u21, align 8
  %250 = load i32, ptr %inc_u, align 4
  %251 = load ptr, ptr %buff_1, align 8
  %252 = load ptr, ptr %y21, align 8
  %253 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_dgemv(i32 noundef 103, i32 noundef 500, i32 noundef %243, i32 noundef %244, ptr noundef %245, ptr noundef %246, i32 noundef %247, i32 noundef %248, ptr noundef %249, i32 noundef %250, ptr noundef %251, ptr noundef %252, i32 noundef %253)
  %254 = load i32, ptr %m_ahead, align 4
  %255 = load i32, ptr %n_behind, align 4
  %256 = load ptr, ptr %buff_1, align 8
  %257 = load ptr, ptr %A20, align 8
  %258 = load i32, ptr %rs_A.addr, align 4
  %259 = load i32, ptr %cs_A.addr, align 4
  %260 = load ptr, ptr %u21, align 8
  %261 = load i32, ptr %inc_u, align 4
  %262 = load ptr, ptr %buff_0, align 8
  %263 = load ptr, ptr %d0, align 8
  %264 = load i32, ptr %inc_d, align 4
  call void @bl1_dgemv(i32 noundef 103, i32 noundef 500, i32 noundef %254, i32 noundef %255, ptr noundef %256, ptr noundef %257, i32 noundef %258, i32 noundef %259, ptr noundef %260, i32 noundef %261, ptr noundef %262, ptr noundef %263, i32 noundef %264)
  %265 = load i32, ptr %m_ahead, align 4
  %266 = load i32, ptr %n_behind, align 4
  %267 = load ptr, ptr %buff_1, align 8
  %268 = load ptr, ptr %Z20, align 8
  %269 = load i32, ptr %rs_Z.addr, align 4
  %270 = load i32, ptr %cs_Z.addr, align 4
  %271 = load ptr, ptr %u21, align 8
  %272 = load i32, ptr %inc_u, align 4
  %273 = load ptr, ptr %buff_0, align 8
  %274 = load ptr, ptr %e0, align 8
  %275 = load i32, ptr %inc_e, align 4
  call void @bl1_dgemv(i32 noundef 103, i32 noundef 500, i32 noundef %265, i32 noundef %266, ptr noundef %267, ptr noundef %268, i32 noundef %269, i32 noundef %270, ptr noundef %271, i32 noundef %272, ptr noundef %273, ptr noundef %274, i32 noundef %275)
  %276 = load i32, ptr %n_behind, align 4
  %277 = load ptr, ptr %a10t, align 8
  %278 = load i32, ptr %cs_A.addr, align 4
  %279 = load ptr, ptr %t01, align 8
  %280 = load i32, ptr %rs_T.addr, align 4
  call void @bl1_dcopyv(i32 noundef 501, i32 noundef %276, ptr noundef %277, i32 noundef %278, ptr noundef %279, i32 noundef %280)
  %281 = load i32, ptr %n_behind, align 4
  %282 = load ptr, ptr %buff_1, align 8
  %283 = load ptr, ptr %d0, align 8
  %284 = load i32, ptr %inc_d, align 4
  %285 = load ptr, ptr %t01, align 8
  %286 = load i32, ptr %rs_T.addr, align 4
  call void @bl1_daxpyv(i32 noundef 500, i32 noundef %281, ptr noundef %282, ptr noundef %283, i32 noundef %284, ptr noundef %285, i32 noundef %286)
  %287 = load i32, ptr %n_ahead, align 4
  %288 = load i32, ptr %n_behind, align 4
  %289 = load ptr, ptr %buff_m1, align 8
  %290 = load ptr, ptr %Y20, align 8
  %291 = load i32, ptr %rs_Y.addr, align 4
  %292 = load i32, ptr %cs_Y.addr, align 4
  %293 = load ptr, ptr %d0, align 8
  %294 = load i32, ptr %inc_d, align 4
  %295 = load ptr, ptr %buff_1, align 8
  %296 = load ptr, ptr %y21, align 8
  %297 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_dgemv(i32 noundef 100, i32 noundef 500, i32 noundef %287, i32 noundef %288, ptr noundef %289, ptr noundef %290, i32 noundef %291, i32 noundef %292, ptr noundef %293, i32 noundef %294, ptr noundef %295, ptr noundef %296, i32 noundef %297)
  %298 = load i32, ptr %m_behind, align 4
  %299 = load i32, ptr %n_ahead, align 4
  %300 = load ptr, ptr %buff_m1, align 8
  %301 = load ptr, ptr %A02, align 8
  %302 = load i32, ptr %rs_A.addr, align 4
  %303 = load i32, ptr %cs_A.addr, align 4
  %304 = load ptr, ptr %e0, align 8
  %305 = load i32, ptr %inc_e, align 4
  %306 = load ptr, ptr %buff_1, align 8
  %307 = load ptr, ptr %y21, align 8
  %308 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_dgemv(i32 noundef 101, i32 noundef 500, i32 noundef %298, i32 noundef %299, ptr noundef %300, ptr noundef %301, i32 noundef %302, i32 noundef %303, ptr noundef %304, i32 noundef %305, ptr noundef %306, ptr noundef %307, i32 noundef %308)
  %309 = load i32, ptr %n_ahead, align 4
  %310 = load ptr, ptr %tau11, align 8
  %311 = load ptr, ptr %y21, align 8
  %312 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_dinvscalv(i32 noundef 500, i32 noundef %309, ptr noundef %310, ptr noundef %311, i32 noundef %312)
  %313 = load i32, ptr %n_ahead, align 4
  %314 = load ptr, ptr %buff_m1, align 8
  %315 = load ptr, ptr %y21, align 8
  %316 = load i32, ptr %rs_Y.addr, align 4
  %317 = load ptr, ptr %a12t, align 8
  %318 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_daxpyv(i32 noundef 501, i32 noundef %313, ptr noundef %314, ptr noundef %315, i32 noundef %316, ptr noundef %317, i32 noundef %318)
  %319 = load i32, ptr %n_ahead, align 4
  %sub229 = sub nsw i32 %319, 1
  %320 = load ptr, ptr %a12t_l, align 8
  %321 = load ptr, ptr %a12t_r, align 8
  %322 = load i32, ptr %cs_A.addr, align 4
  %323 = load ptr, ptr %sigma11, align 8
  %call230 = call i32 @FLA_Househ2_UT_r_opd(i32 noundef %sub229, ptr noundef %320, ptr noundef %321, i32 noundef %322, ptr noundef %323)
  %324 = load ptr, ptr %buff_1, align 8
  %325 = load double, ptr %324, align 8
  %326 = load ptr, ptr %v21_t, align 8
  store double %325, ptr %326, align 8
  %327 = load i32, ptr %n_ahead, align 4
  %sub231 = sub nsw i32 %327, 1
  %328 = load ptr, ptr %a12t_r, align 8
  %329 = load i32, ptr %cs_A.addr, align 4
  %330 = load ptr, ptr %v21_b, align 8
  %331 = load i32, ptr %inc_v, align 4
  call void @bl1_dcopyv(i32 noundef 500, i32 noundef %sub231, ptr noundef %328, i32 noundef %329, ptr noundef %330, i32 noundef %331)
  %332 = load i32, ptr %n_ahead, align 4
  %333 = load ptr, ptr %y21, align 8
  %334 = load i32, ptr %rs_Y.addr, align 4
  %335 = load ptr, ptr %v21, align 8
  %336 = load i32, ptr %inc_v, align 4
  call void @bl1_ddot(i32 noundef 501, i32 noundef %332, ptr noundef %333, i32 noundef %334, ptr noundef %335, i32 noundef %336, ptr noundef %beta)
  %337 = load ptr, ptr %buff_m1, align 8
  %338 = load double, ptr %337, align 8
  %339 = load double, ptr %beta, align 8
  %mul232 = fmul double %338, %339
  store double %mul232, ptr %beta, align 8
  %340 = load i32, ptr %m_ahead, align 4
  %341 = load ptr, ptr %u21, align 8
  %342 = load i32, ptr %inc_u, align 4
  %343 = load ptr, ptr %z21, align 8
  %344 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_dcopyv(i32 noundef 500, i32 noundef %340, ptr noundef %341, i32 noundef %342, ptr noundef %343, i32 noundef %344)
  %345 = load i32, ptr %m_ahead, align 4
  %346 = load i32, ptr %n_ahead, align 4
  %347 = load ptr, ptr %buff_1, align 8
  %348 = load ptr, ptr %A22, align 8
  %349 = load i32, ptr %rs_A.addr, align 4
  %350 = load i32, ptr %cs_A.addr, align 4
  %351 = load ptr, ptr %v21, align 8
  %352 = load i32, ptr %inc_v, align 4
  %353 = load ptr, ptr %z21, align 8
  %354 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_dgemv(i32 noundef 100, i32 noundef 500, i32 noundef %345, i32 noundef %346, ptr noundef %347, ptr noundef %348, i32 noundef %349, i32 noundef %350, ptr noundef %351, i32 noundef %352, ptr noundef %beta, ptr noundef %353, i32 noundef %354)
  %355 = load i32, ptr %n_ahead, align 4
  %356 = load i32, ptr %m_behind, align 4
  %357 = load ptr, ptr %buff_1, align 8
  %358 = load ptr, ptr %Y20, align 8
  %359 = load i32, ptr %rs_Y.addr, align 4
  %360 = load i32, ptr %cs_Y.addr, align 4
  %361 = load ptr, ptr %v21, align 8
  %362 = load i32, ptr %inc_v, align 4
  %363 = load ptr, ptr %buff_0, align 8
  %364 = load ptr, ptr %f0, align 8
  %365 = load i32, ptr %inc_f, align 4
  call void @bl1_dgemv(i32 noundef 103, i32 noundef 500, i32 noundef %355, i32 noundef %356, ptr noundef %357, ptr noundef %358, i32 noundef %359, i32 noundef %360, ptr noundef %361, i32 noundef %362, ptr noundef %363, ptr noundef %364, i32 noundef %365)
  %366 = load i32, ptr %m_behind, align 4
  %367 = load i32, ptr %n_ahead, align 4
  %368 = load ptr, ptr %buff_1, align 8
  %369 = load ptr, ptr %A02, align 8
  %370 = load i32, ptr %rs_A.addr, align 4
  %371 = load i32, ptr %cs_A.addr, align 4
  %372 = load ptr, ptr %v21, align 8
  %373 = load i32, ptr %inc_v, align 4
  %374 = load ptr, ptr %buff_0, align 8
  %375 = load ptr, ptr %g0, align 8
  %376 = load i32, ptr %inc_g, align 4
  call void @bl1_dgemv(i32 noundef 102, i32 noundef 500, i32 noundef %366, i32 noundef %367, ptr noundef %368, ptr noundef %369, i32 noundef %370, i32 noundef %371, ptr noundef %372, i32 noundef %373, ptr noundef %374, ptr noundef %375, i32 noundef %376)
  %377 = load i32, ptr %m_ahead, align 4
  %378 = load i32, ptr %n_behind, align 4
  %379 = load ptr, ptr %buff_m1, align 8
  %380 = load ptr, ptr %A20, align 8
  %381 = load i32, ptr %rs_A.addr, align 4
  %382 = load i32, ptr %cs_A.addr, align 4
  %383 = load ptr, ptr %f0, align 8
  %384 = load i32, ptr %inc_f, align 4
  %385 = load ptr, ptr %buff_1, align 8
  %386 = load ptr, ptr %z21, align 8
  %387 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_dgemv(i32 noundef 100, i32 noundef 500, i32 noundef %377, i32 noundef %378, ptr noundef %379, ptr noundef %380, i32 noundef %381, i32 noundef %382, ptr noundef %383, i32 noundef %384, ptr noundef %385, ptr noundef %386, i32 noundef %387)
  %388 = load i32, ptr %m_ahead, align 4
  %389 = load i32, ptr %n_behind, align 4
  %390 = load ptr, ptr %buff_m1, align 8
  %391 = load ptr, ptr %Z20, align 8
  %392 = load i32, ptr %rs_Z.addr, align 4
  %393 = load i32, ptr %cs_Z.addr, align 4
  %394 = load ptr, ptr %g0, align 8
  %395 = load i32, ptr %inc_g, align 4
  %396 = load ptr, ptr %buff_1, align 8
  %397 = load ptr, ptr %z21, align 8
  %398 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_dgemv(i32 noundef 100, i32 noundef 500, i32 noundef %388, i32 noundef %389, ptr noundef %390, ptr noundef %391, i32 noundef %392, i32 noundef %393, ptr noundef %394, i32 noundef %395, ptr noundef %396, ptr noundef %397, i32 noundef %398)
  %399 = load i32, ptr %m_ahead, align 4
  %400 = load ptr, ptr %sigma11, align 8
  %401 = load ptr, ptr %z21, align 8
  %402 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_dinvscalv(i32 noundef 500, i32 noundef %399, ptr noundef %400, ptr noundef %401, i32 noundef %402)
  %403 = load i32, ptr %n_behind, align 4
  %404 = load ptr, ptr %g0, align 8
  %405 = load i32, ptr %inc_g, align 4
  %406 = load ptr, ptr %s01, align 8
  %407 = load i32, ptr %rs_S.addr, align 4
  call void @bl1_dcopyv(i32 noundef 500, i32 noundef %403, ptr noundef %404, i32 noundef %405, ptr noundef %406, i32 noundef %407)
  br label %if.end233

if.else:                                          ; preds = %if.end224
  %408 = load i32, ptr %n_behind, align 4
  %409 = load ptr, ptr %a10t, align 8
  %410 = load i32, ptr %cs_A.addr, align 4
  %411 = load ptr, ptr %t01, align 8
  %412 = load i32, ptr %rs_T.addr, align 4
  call void @bl1_dcopyv(i32 noundef 501, i32 noundef %408, ptr noundef %409, i32 noundef %410, ptr noundef %411, i32 noundef %412)
  %413 = load i32, ptr %m_ahead, align 4
  %414 = load i32, ptr %n_behind, align 4
  %415 = load ptr, ptr %buff_1, align 8
  %416 = load ptr, ptr %A20, align 8
  %417 = load i32, ptr %rs_A.addr, align 4
  %418 = load i32, ptr %cs_A.addr, align 4
  %419 = load ptr, ptr %u21, align 8
  %420 = load i32, ptr %inc_u, align 4
  %421 = load ptr, ptr %buff_1, align 8
  %422 = load ptr, ptr %t01, align 8
  %423 = load i32, ptr %rs_T.addr, align 4
  call void @bl1_dgemv(i32 noundef 103, i32 noundef 500, i32 noundef %413, i32 noundef %414, ptr noundef %415, ptr noundef %416, i32 noundef %417, i32 noundef %418, ptr noundef %419, i32 noundef %420, ptr noundef %421, ptr noundef %422, i32 noundef %423)
  br label %if.end233

if.end233:                                        ; preds = %if.else, %if.then228
  br label %for.inc

for.inc:                                          ; preds = %if.end233
  %424 = load i32, ptr %i, align 4
  %inc = add nsw i32 %424, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %425 = load ptr, ptr %buff_u, align 8
  call void @FLA_free(ptr noundef %425)
  %426 = load ptr, ptr %buff_v, align 8
  call void @FLA_free(ptr noundef %426)
  %427 = load ptr, ptr %buff_d, align 8
  call void @FLA_free(ptr noundef %427)
  %428 = load ptr, ptr %buff_e, align 8
  call void @FLA_free(ptr noundef %428)
  %429 = load ptr, ptr %buff_f, align 8
  call void @FLA_free(ptr noundef %429)
  %430 = load ptr, ptr %buff_g, align 8
  call void @FLA_free(ptr noundef %430)
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Bidiag_UT_u_step_opc_var5(i32 noundef %m_A, i32 noundef %n_A, i32 noundef %m_TS, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_Y, i32 noundef %rs_Y, i32 noundef %cs_Y, ptr noundef %buff_Z, i32 noundef %rs_Z, i32 noundef %cs_Z, ptr noundef %buff_T, i32 noundef %rs_T, i32 noundef %cs_T, ptr noundef %buff_S, i32 noundef %rs_S, i32 noundef %cs_S) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %m_TS.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_Y.addr = alloca ptr, align 8
  %rs_Y.addr = alloca i32, align 4
  %cs_Y.addr = alloca i32, align 4
  %buff_Z.addr = alloca ptr, align 8
  %rs_Z.addr = alloca i32, align 4
  %cs_Z.addr = alloca i32, align 4
  %buff_T.addr = alloca ptr, align 8
  %rs_T.addr = alloca i32, align 4
  %cs_T.addr = alloca i32, align 4
  %buff_S.addr = alloca ptr, align 8
  %rs_S.addr = alloca i32, align 4
  %cs_S.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_0 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %beta = alloca %struct.scomplex, align 4
  %last_elem = alloca %struct.scomplex, align 4
  %i = alloca i32, align 4
  %b_alg = alloca i32, align 4
  %buff_u = alloca ptr, align 8
  %buff_v = alloca ptr, align 8
  %buff_d = alloca ptr, align 8
  %buff_e = alloca ptr, align 8
  %buff_f = alloca ptr, align 8
  %buff_g = alloca ptr, align 8
  %inc_u = alloca i32, align 4
  %inc_v = alloca i32, align 4
  %inc_d = alloca i32, align 4
  %inc_e = alloca i32, align 4
  %inc_f = alloca i32, align 4
  %inc_g = alloca i32, align 4
  %a10t = alloca ptr, align 8
  %A20 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %y10t = alloca ptr, align 8
  %Y20 = alloca ptr, align 8
  %y21 = alloca ptr, align 8
  %z10t = alloca ptr, align 8
  %Z20 = alloca ptr, align 8
  %z21 = alloca ptr, align 8
  %t01 = alloca ptr, align 8
  %tau11 = alloca ptr, align 8
  %s01 = alloca ptr, align 8
  %sigma11 = alloca ptr, align 8
  %u21 = alloca ptr, align 8
  %v21 = alloca ptr, align 8
  %d0 = alloca ptr, align 8
  %e0 = alloca ptr, align 8
  %f0 = alloca ptr, align 8
  %g0 = alloca ptr, align 8
  %v21_t = alloca ptr, align 8
  %v21_b = alloca ptr, align 8
  %a01_b = alloca ptr, align 8
  %a12t_l = alloca ptr, align 8
  %a12t_r = alloca ptr, align 8
  %ABL = alloca ptr, align 8
  %ZBL = alloca ptr, align 8
  %a2 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %n_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  %n_behind = alloca i32, align 4
  %tempr = alloca float, align 4
  %tempi = alloca float, align 4
  store i32 %m_A, ptr %m_A.addr, align 4
  store i32 %n_A, ptr %n_A.addr, align 4
  store i32 %m_TS, ptr %m_TS.addr, align 4
  store ptr %buff_A, ptr %buff_A.addr, align 8
  store i32 %rs_A, ptr %rs_A.addr, align 4
  store i32 %cs_A, ptr %cs_A.addr, align 4
  store ptr %buff_Y, ptr %buff_Y.addr, align 8
  store i32 %rs_Y, ptr %rs_Y.addr, align 4
  store i32 %cs_Y, ptr %cs_Y.addr, align 4
  store ptr %buff_Z, ptr %buff_Z.addr, align 8
  store i32 %rs_Z, ptr %rs_Z.addr, align 4
  store i32 %cs_Z, ptr %cs_Z.addr, align 4
  store ptr %buff_T, ptr %buff_T.addr, align 8
  store i32 %rs_T, ptr %rs_T.addr, align 4
  store i32 %cs_T, ptr %cs_T.addr, align 4
  store ptr %buff_S, ptr %buff_S.addr, align 8
  store i32 %rs_S, ptr %rs_S.addr, align 4
  store i32 %cs_S, ptr %cs_S.addr, align 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 24
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds %struct.scomplex, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ONE, align 8
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds %struct.scomplex, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_1, align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 24
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds %struct.scomplex, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ZERO, align 8
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds %struct.scomplex, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_0, align 8
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 24
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds %struct.scomplex, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_MINUS_ONE, align 8
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds %struct.scomplex, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_m1, align 8
  %36 = load i32, ptr %m_TS.addr, align 4
  store i32 %36, ptr %b_alg, align 4
  %37 = load i32, ptr %m_A.addr, align 4
  %conv = sext i32 %37 to i64
  %mul35 = mul i64 %conv, 8
  %call = call ptr @FLA_malloc(i64 noundef %mul35)
  store ptr %call, ptr %buff_u, align 8
  %38 = load i32, ptr %n_A.addr, align 4
  %conv36 = sext i32 %38 to i64
  %mul37 = mul i64 %conv36, 8
  %call38 = call ptr @FLA_malloc(i64 noundef %mul37)
  store ptr %call38, ptr %buff_v, align 8
  %39 = load i32, ptr %n_A.addr, align 4
  %conv39 = sext i32 %39 to i64
  %mul40 = mul i64 %conv39, 8
  %call41 = call ptr @FLA_malloc(i64 noundef %mul40)
  store ptr %call41, ptr %buff_d, align 8
  %40 = load i32, ptr %n_A.addr, align 4
  %conv42 = sext i32 %40 to i64
  %mul43 = mul i64 %conv42, 8
  %call44 = call ptr @FLA_malloc(i64 noundef %mul43)
  store ptr %call44, ptr %buff_e, align 8
  %41 = load i32, ptr %m_A.addr, align 4
  %conv45 = sext i32 %41 to i64
  %mul46 = mul i64 %conv45, 8
  %call47 = call ptr @FLA_malloc(i64 noundef %mul46)
  store ptr %call47, ptr %buff_f, align 8
  %42 = load i32, ptr %m_A.addr, align 4
  %conv48 = sext i32 %42 to i64
  %mul49 = mul i64 %conv48, 8
  %call50 = call ptr @FLA_malloc(i64 noundef %mul49)
  store ptr %call50, ptr %buff_g, align 8
  store i32 1, ptr %inc_u, align 4
  store i32 1, ptr %inc_v, align 4
  store i32 1, ptr %inc_d, align 4
  store i32 1, ptr %inc_e, align 4
  store i32 1, ptr %inc_f, align 4
  store i32 1, ptr %inc_g, align 4
  %43 = load i32, ptr %n_A.addr, align 4
  %44 = load i32, ptr %b_alg, align 4
  %45 = load ptr, ptr %buff_0, align 8
  %46 = load ptr, ptr %buff_Y.addr, align 8
  %47 = load i32, ptr %rs_Y.addr, align 4
  %48 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_csetm(i32 noundef %43, i32 noundef %44, ptr noundef %45, ptr noundef %46, i32 noundef %47, i32 noundef %48)
  %49 = load i32, ptr %m_A.addr, align 4
  %50 = load i32, ptr %b_alg, align 4
  %51 = load ptr, ptr %buff_0, align 8
  %52 = load ptr, ptr %buff_Z.addr, align 8
  %53 = load i32, ptr %rs_Z.addr, align 4
  %54 = load i32, ptr %cs_Z.addr, align 4
  call void @bl1_csetm(i32 noundef %49, i32 noundef %50, ptr noundef %51, ptr noundef %52, i32 noundef %53, i32 noundef %54)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end33
  %55 = load i32, ptr %i, align 4
  %56 = load i32, ptr %b_alg, align 4
  %cmp51 = icmp slt i32 %55, %56
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load ptr, ptr %buff_A.addr, align 8
  %58 = load i32, ptr %cs_A.addr, align 4
  %mul53 = mul nsw i32 0, %58
  %idx.ext = sext i32 %mul53 to i64
  %add.ptr54 = getelementptr inbounds %struct.scomplex, ptr %57, i64 %idx.ext
  %59 = load i32, ptr %i, align 4
  %60 = load i32, ptr %rs_A.addr, align 4
  %mul55 = mul nsw i32 %59, %60
  %idx.ext56 = sext i32 %mul55 to i64
  %add.ptr57 = getelementptr inbounds %struct.scomplex, ptr %add.ptr54, i64 %idx.ext56
  store ptr %add.ptr57, ptr %a10t, align 8
  %61 = load ptr, ptr %buff_A.addr, align 8
  %62 = load i32, ptr %cs_A.addr, align 4
  %mul58 = mul nsw i32 0, %62
  %idx.ext59 = sext i32 %mul58 to i64
  %add.ptr60 = getelementptr inbounds %struct.scomplex, ptr %61, i64 %idx.ext59
  %63 = load i32, ptr %i, align 4
  %add = add nsw i32 %63, 1
  %64 = load i32, ptr %rs_A.addr, align 4
  %mul61 = mul nsw i32 %add, %64
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds %struct.scomplex, ptr %add.ptr60, i64 %idx.ext62
  store ptr %add.ptr63, ptr %A20, align 8
  %65 = load ptr, ptr %buff_A.addr, align 8
  %66 = load i32, ptr %i, align 4
  %67 = load i32, ptr %cs_A.addr, align 4
  %mul64 = mul nsw i32 %66, %67
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds %struct.scomplex, ptr %65, i64 %idx.ext65
  %68 = load i32, ptr %rs_A.addr, align 4
  %mul67 = mul nsw i32 0, %68
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds %struct.scomplex, ptr %add.ptr66, i64 %idx.ext68
  store ptr %add.ptr69, ptr %a01, align 8
  %69 = load ptr, ptr %buff_A.addr, align 8
  %70 = load i32, ptr %i, align 4
  %71 = load i32, ptr %cs_A.addr, align 4
  %mul70 = mul nsw i32 %70, %71
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds %struct.scomplex, ptr %69, i64 %idx.ext71
  %72 = load i32, ptr %i, align 4
  %73 = load i32, ptr %rs_A.addr, align 4
  %mul73 = mul nsw i32 %72, %73
  %idx.ext74 = sext i32 %mul73 to i64
  %add.ptr75 = getelementptr inbounds %struct.scomplex, ptr %add.ptr72, i64 %idx.ext74
  store ptr %add.ptr75, ptr %alpha11, align 8
  %74 = load ptr, ptr %buff_A.addr, align 8
  %75 = load i32, ptr %i, align 4
  %76 = load i32, ptr %cs_A.addr, align 4
  %mul76 = mul nsw i32 %75, %76
  %idx.ext77 = sext i32 %mul76 to i64
  %add.ptr78 = getelementptr inbounds %struct.scomplex, ptr %74, i64 %idx.ext77
  %77 = load i32, ptr %i, align 4
  %add79 = add nsw i32 %77, 1
  %78 = load i32, ptr %rs_A.addr, align 4
  %mul80 = mul nsw i32 %add79, %78
  %idx.ext81 = sext i32 %mul80 to i64
  %add.ptr82 = getelementptr inbounds %struct.scomplex, ptr %add.ptr78, i64 %idx.ext81
  store ptr %add.ptr82, ptr %a21, align 8
  %79 = load ptr, ptr %buff_A.addr, align 8
  %80 = load i32, ptr %i, align 4
  %add83 = add nsw i32 %80, 1
  %81 = load i32, ptr %cs_A.addr, align 4
  %mul84 = mul nsw i32 %add83, %81
  %idx.ext85 = sext i32 %mul84 to i64
  %add.ptr86 = getelementptr inbounds %struct.scomplex, ptr %79, i64 %idx.ext85
  %82 = load i32, ptr %rs_A.addr, align 4
  %mul87 = mul nsw i32 0, %82
  %idx.ext88 = sext i32 %mul87 to i64
  %add.ptr89 = getelementptr inbounds %struct.scomplex, ptr %add.ptr86, i64 %idx.ext88
  store ptr %add.ptr89, ptr %A02, align 8
  %83 = load ptr, ptr %buff_A.addr, align 8
  %84 = load i32, ptr %i, align 4
  %add90 = add nsw i32 %84, 1
  %85 = load i32, ptr %cs_A.addr, align 4
  %mul91 = mul nsw i32 %add90, %85
  %idx.ext92 = sext i32 %mul91 to i64
  %add.ptr93 = getelementptr inbounds %struct.scomplex, ptr %83, i64 %idx.ext92
  %86 = load i32, ptr %i, align 4
  %87 = load i32, ptr %rs_A.addr, align 4
  %mul94 = mul nsw i32 %86, %87
  %idx.ext95 = sext i32 %mul94 to i64
  %add.ptr96 = getelementptr inbounds %struct.scomplex, ptr %add.ptr93, i64 %idx.ext95
  store ptr %add.ptr96, ptr %a12t, align 8
  %88 = load ptr, ptr %buff_A.addr, align 8
  %89 = load i32, ptr %i, align 4
  %add97 = add nsw i32 %89, 1
  %90 = load i32, ptr %cs_A.addr, align 4
  %mul98 = mul nsw i32 %add97, %90
  %idx.ext99 = sext i32 %mul98 to i64
  %add.ptr100 = getelementptr inbounds %struct.scomplex, ptr %88, i64 %idx.ext99
  %91 = load i32, ptr %i, align 4
  %add101 = add nsw i32 %91, 1
  %92 = load i32, ptr %rs_A.addr, align 4
  %mul102 = mul nsw i32 %add101, %92
  %idx.ext103 = sext i32 %mul102 to i64
  %add.ptr104 = getelementptr inbounds %struct.scomplex, ptr %add.ptr100, i64 %idx.ext103
  store ptr %add.ptr104, ptr %A22, align 8
  %93 = load ptr, ptr %buff_Y.addr, align 8
  %94 = load i32, ptr %cs_Y.addr, align 4
  %mul105 = mul nsw i32 0, %94
  %idx.ext106 = sext i32 %mul105 to i64
  %add.ptr107 = getelementptr inbounds %struct.scomplex, ptr %93, i64 %idx.ext106
  %95 = load i32, ptr %i, align 4
  %96 = load i32, ptr %rs_Y.addr, align 4
  %mul108 = mul nsw i32 %95, %96
  %idx.ext109 = sext i32 %mul108 to i64
  %add.ptr110 = getelementptr inbounds %struct.scomplex, ptr %add.ptr107, i64 %idx.ext109
  store ptr %add.ptr110, ptr %y10t, align 8
  %97 = load ptr, ptr %buff_Y.addr, align 8
  %98 = load i32, ptr %cs_Y.addr, align 4
  %mul111 = mul nsw i32 0, %98
  %idx.ext112 = sext i32 %mul111 to i64
  %add.ptr113 = getelementptr inbounds %struct.scomplex, ptr %97, i64 %idx.ext112
  %99 = load i32, ptr %i, align 4
  %add114 = add nsw i32 %99, 1
  %100 = load i32, ptr %rs_Y.addr, align 4
  %mul115 = mul nsw i32 %add114, %100
  %idx.ext116 = sext i32 %mul115 to i64
  %add.ptr117 = getelementptr inbounds %struct.scomplex, ptr %add.ptr113, i64 %idx.ext116
  store ptr %add.ptr117, ptr %Y20, align 8
  %101 = load ptr, ptr %buff_Y.addr, align 8
  %102 = load i32, ptr %i, align 4
  %103 = load i32, ptr %cs_Y.addr, align 4
  %mul118 = mul nsw i32 %102, %103
  %idx.ext119 = sext i32 %mul118 to i64
  %add.ptr120 = getelementptr inbounds %struct.scomplex, ptr %101, i64 %idx.ext119
  %104 = load i32, ptr %i, align 4
  %add121 = add nsw i32 %104, 1
  %105 = load i32, ptr %rs_Y.addr, align 4
  %mul122 = mul nsw i32 %add121, %105
  %idx.ext123 = sext i32 %mul122 to i64
  %add.ptr124 = getelementptr inbounds %struct.scomplex, ptr %add.ptr120, i64 %idx.ext123
  store ptr %add.ptr124, ptr %y21, align 8
  %106 = load ptr, ptr %buff_Z.addr, align 8
  %107 = load i32, ptr %cs_Z.addr, align 4
  %mul125 = mul nsw i32 0, %107
  %idx.ext126 = sext i32 %mul125 to i64
  %add.ptr127 = getelementptr inbounds %struct.scomplex, ptr %106, i64 %idx.ext126
  %108 = load i32, ptr %i, align 4
  %109 = load i32, ptr %rs_Z.addr, align 4
  %mul128 = mul nsw i32 %108, %109
  %idx.ext129 = sext i32 %mul128 to i64
  %add.ptr130 = getelementptr inbounds %struct.scomplex, ptr %add.ptr127, i64 %idx.ext129
  store ptr %add.ptr130, ptr %z10t, align 8
  %110 = load ptr, ptr %buff_Z.addr, align 8
  %111 = load i32, ptr %cs_Z.addr, align 4
  %mul131 = mul nsw i32 0, %111
  %idx.ext132 = sext i32 %mul131 to i64
  %add.ptr133 = getelementptr inbounds %struct.scomplex, ptr %110, i64 %idx.ext132
  %112 = load i32, ptr %i, align 4
  %add134 = add nsw i32 %112, 1
  %113 = load i32, ptr %rs_Z.addr, align 4
  %mul135 = mul nsw i32 %add134, %113
  %idx.ext136 = sext i32 %mul135 to i64
  %add.ptr137 = getelementptr inbounds %struct.scomplex, ptr %add.ptr133, i64 %idx.ext136
  store ptr %add.ptr137, ptr %Z20, align 8
  %114 = load ptr, ptr %buff_Z.addr, align 8
  %115 = load i32, ptr %i, align 4
  %116 = load i32, ptr %cs_Z.addr, align 4
  %mul138 = mul nsw i32 %115, %116
  %idx.ext139 = sext i32 %mul138 to i64
  %add.ptr140 = getelementptr inbounds %struct.scomplex, ptr %114, i64 %idx.ext139
  %117 = load i32, ptr %i, align 4
  %add141 = add nsw i32 %117, 1
  %118 = load i32, ptr %rs_Z.addr, align 4
  %mul142 = mul nsw i32 %add141, %118
  %idx.ext143 = sext i32 %mul142 to i64
  %add.ptr144 = getelementptr inbounds %struct.scomplex, ptr %add.ptr140, i64 %idx.ext143
  store ptr %add.ptr144, ptr %z21, align 8
  %119 = load ptr, ptr %buff_T.addr, align 8
  %120 = load i32, ptr %i, align 4
  %121 = load i32, ptr %cs_T.addr, align 4
  %mul145 = mul nsw i32 %120, %121
  %idx.ext146 = sext i32 %mul145 to i64
  %add.ptr147 = getelementptr inbounds %struct.scomplex, ptr %119, i64 %idx.ext146
  %122 = load i32, ptr %rs_T.addr, align 4
  %mul148 = mul nsw i32 0, %122
  %idx.ext149 = sext i32 %mul148 to i64
  %add.ptr150 = getelementptr inbounds %struct.scomplex, ptr %add.ptr147, i64 %idx.ext149
  store ptr %add.ptr150, ptr %t01, align 8
  %123 = load ptr, ptr %buff_T.addr, align 8
  %124 = load i32, ptr %i, align 4
  %125 = load i32, ptr %cs_T.addr, align 4
  %mul151 = mul nsw i32 %124, %125
  %idx.ext152 = sext i32 %mul151 to i64
  %add.ptr153 = getelementptr inbounds %struct.scomplex, ptr %123, i64 %idx.ext152
  %126 = load i32, ptr %i, align 4
  %127 = load i32, ptr %rs_T.addr, align 4
  %mul154 = mul nsw i32 %126, %127
  %idx.ext155 = sext i32 %mul154 to i64
  %add.ptr156 = getelementptr inbounds %struct.scomplex, ptr %add.ptr153, i64 %idx.ext155
  store ptr %add.ptr156, ptr %tau11, align 8
  %128 = load ptr, ptr %buff_S.addr, align 8
  %129 = load i32, ptr %i, align 4
  %130 = load i32, ptr %cs_S.addr, align 4
  %mul157 = mul nsw i32 %129, %130
  %idx.ext158 = sext i32 %mul157 to i64
  %add.ptr159 = getelementptr inbounds %struct.scomplex, ptr %128, i64 %idx.ext158
  %131 = load i32, ptr %rs_S.addr, align 4
  %mul160 = mul nsw i32 0, %131
  %idx.ext161 = sext i32 %mul160 to i64
  %add.ptr162 = getelementptr inbounds %struct.scomplex, ptr %add.ptr159, i64 %idx.ext161
  store ptr %add.ptr162, ptr %s01, align 8
  %132 = load ptr, ptr %buff_S.addr, align 8
  %133 = load i32, ptr %i, align 4
  %134 = load i32, ptr %cs_S.addr, align 4
  %mul163 = mul nsw i32 %133, %134
  %idx.ext164 = sext i32 %mul163 to i64
  %add.ptr165 = getelementptr inbounds %struct.scomplex, ptr %132, i64 %idx.ext164
  %135 = load i32, ptr %i, align 4
  %136 = load i32, ptr %rs_S.addr, align 4
  %mul166 = mul nsw i32 %135, %136
  %idx.ext167 = sext i32 %mul166 to i64
  %add.ptr168 = getelementptr inbounds %struct.scomplex, ptr %add.ptr165, i64 %idx.ext167
  store ptr %add.ptr168, ptr %sigma11, align 8
  %137 = load ptr, ptr %buff_u, align 8
  %138 = load i32, ptr %i, align 4
  %add169 = add nsw i32 %138, 1
  %139 = load i32, ptr %inc_u, align 4
  %mul170 = mul nsw i32 %add169, %139
  %idx.ext171 = sext i32 %mul170 to i64
  %add.ptr172 = getelementptr inbounds %struct.scomplex, ptr %137, i64 %idx.ext171
  store ptr %add.ptr172, ptr %u21, align 8
  %140 = load ptr, ptr %buff_v, align 8
  %141 = load i32, ptr %i, align 4
  %add173 = add nsw i32 %141, 1
  %142 = load i32, ptr %inc_v, align 4
  %mul174 = mul nsw i32 %add173, %142
  %idx.ext175 = sext i32 %mul174 to i64
  %add.ptr176 = getelementptr inbounds %struct.scomplex, ptr %140, i64 %idx.ext175
  store ptr %add.ptr176, ptr %v21, align 8
  %143 = load ptr, ptr %buff_d, align 8
  %144 = load i32, ptr %inc_d, align 4
  %mul177 = mul nsw i32 0, %144
  %idx.ext178 = sext i32 %mul177 to i64
  %add.ptr179 = getelementptr inbounds %struct.scomplex, ptr %143, i64 %idx.ext178
  store ptr %add.ptr179, ptr %d0, align 8
  %145 = load ptr, ptr %buff_e, align 8
  %146 = load i32, ptr %inc_e, align 4
  %mul180 = mul nsw i32 0, %146
  %idx.ext181 = sext i32 %mul180 to i64
  %add.ptr182 = getelementptr inbounds %struct.scomplex, ptr %145, i64 %idx.ext181
  store ptr %add.ptr182, ptr %e0, align 8
  %147 = load ptr, ptr %buff_f, align 8
  %148 = load i32, ptr %inc_f, align 4
  %mul183 = mul nsw i32 0, %148
  %idx.ext184 = sext i32 %mul183 to i64
  %add.ptr185 = getelementptr inbounds %struct.scomplex, ptr %147, i64 %idx.ext184
  store ptr %add.ptr185, ptr %f0, align 8
  %149 = load ptr, ptr %buff_g, align 8
  %150 = load i32, ptr %inc_g, align 4
  %mul186 = mul nsw i32 0, %150
  %idx.ext187 = sext i32 %mul186 to i64
  %add.ptr188 = getelementptr inbounds %struct.scomplex, ptr %149, i64 %idx.ext187
  store ptr %add.ptr188, ptr %g0, align 8
  %151 = load ptr, ptr %v21, align 8
  %152 = load i32, ptr %inc_v, align 4
  %mul189 = mul nsw i32 0, %152
  %idx.ext190 = sext i32 %mul189 to i64
  %add.ptr191 = getelementptr inbounds %struct.scomplex, ptr %151, i64 %idx.ext190
  store ptr %add.ptr191, ptr %v21_t, align 8
  %153 = load ptr, ptr %v21, align 8
  %154 = load i32, ptr %inc_v, align 4
  %mul192 = mul nsw i32 1, %154
  %idx.ext193 = sext i32 %mul192 to i64
  %add.ptr194 = getelementptr inbounds %struct.scomplex, ptr %153, i64 %idx.ext193
  store ptr %add.ptr194, ptr %v21_b, align 8
  %155 = load ptr, ptr %a01, align 8
  %156 = load i32, ptr %cs_A.addr, align 4
  %mul195 = mul nsw i32 0, %156
  %idx.ext196 = sext i32 %mul195 to i64
  %add.ptr197 = getelementptr inbounds %struct.scomplex, ptr %155, i64 %idx.ext196
  %157 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %157, 1
  %158 = load i32, ptr %rs_A.addr, align 4
  %mul198 = mul nsw i32 %sub, %158
  %idx.ext199 = sext i32 %mul198 to i64
  %add.ptr200 = getelementptr inbounds %struct.scomplex, ptr %add.ptr197, i64 %idx.ext199
  store ptr %add.ptr200, ptr %a01_b, align 8
  %159 = load ptr, ptr %a12t, align 8
  %160 = load i32, ptr %cs_A.addr, align 4
  %mul201 = mul nsw i32 0, %160
  %idx.ext202 = sext i32 %mul201 to i64
  %add.ptr203 = getelementptr inbounds %struct.scomplex, ptr %159, i64 %idx.ext202
  %161 = load i32, ptr %rs_A.addr, align 4
  %mul204 = mul nsw i32 0, %161
  %idx.ext205 = sext i32 %mul204 to i64
  %add.ptr206 = getelementptr inbounds %struct.scomplex, ptr %add.ptr203, i64 %idx.ext205
  store ptr %add.ptr206, ptr %a12t_l, align 8
  %162 = load ptr, ptr %a12t, align 8
  %163 = load i32, ptr %cs_A.addr, align 4
  %mul207 = mul nsw i32 1, %163
  %idx.ext208 = sext i32 %mul207 to i64
  %add.ptr209 = getelementptr inbounds %struct.scomplex, ptr %162, i64 %idx.ext208
  %164 = load i32, ptr %rs_A.addr, align 4
  %mul210 = mul nsw i32 0, %164
  %idx.ext211 = sext i32 %mul210 to i64
  %add.ptr212 = getelementptr inbounds %struct.scomplex, ptr %add.ptr209, i64 %idx.ext211
  store ptr %add.ptr212, ptr %a12t_r, align 8
  %165 = load ptr, ptr %a10t, align 8
  store ptr %165, ptr %ABL, align 8
  %166 = load ptr, ptr %z10t, align 8
  store ptr %166, ptr %ZBL, align 8
  %167 = load ptr, ptr %alpha11, align 8
  store ptr %167, ptr %a2, align 8
  %168 = load i32, ptr %m_A.addr, align 4
  %169 = load i32, ptr %i, align 4
  %sub213 = sub nsw i32 %168, %169
  %sub214 = sub nsw i32 %sub213, 1
  store i32 %sub214, ptr %m_ahead, align 4
  %170 = load i32, ptr %n_A.addr, align 4
  %171 = load i32, ptr %i, align 4
  %sub215 = sub nsw i32 %170, %171
  %sub216 = sub nsw i32 %sub215, 1
  store i32 %sub216, ptr %n_ahead, align 4
  %172 = load i32, ptr %i, align 4
  store i32 %172, ptr %m_behind, align 4
  %173 = load i32, ptr %i, align 4
  store i32 %173, ptr %n_behind, align 4
  %174 = load i32, ptr %m_behind, align 4
  %cmp217 = icmp sgt i32 %174, 0
  br i1 %cmp217, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %175 = load ptr, ptr %a01_b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %last_elem, ptr align 4 %175, i64 8, i1 false)
  %176 = load ptr, ptr %a01_b, align 8
  %177 = load ptr, ptr %buff_1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %176, ptr align 4 %177, i64 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %178 = load i32, ptr %m_ahead, align 4
  %add219 = add nsw i32 %178, 1
  %179 = load i32, ptr %n_behind, align 4
  %180 = load ptr, ptr %buff_m1, align 8
  %181 = load ptr, ptr %ABL, align 8
  %182 = load i32, ptr %rs_A.addr, align 4
  %183 = load i32, ptr %cs_A.addr, align 4
  %184 = load ptr, ptr %y10t, align 8
  %185 = load i32, ptr %cs_Y.addr, align 4
  %186 = load ptr, ptr %buff_1, align 8
  %187 = load ptr, ptr %a2, align 8
  %188 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_cgemv(i32 noundef 100, i32 noundef 501, i32 noundef %add219, i32 noundef %179, ptr noundef %180, ptr noundef %181, i32 noundef %182, i32 noundef %183, ptr noundef %184, i32 noundef %185, ptr noundef %186, ptr noundef %187, i32 noundef %188)
  %189 = load i32, ptr %m_ahead, align 4
  %add220 = add nsw i32 %189, 1
  %190 = load i32, ptr %n_behind, align 4
  %191 = load ptr, ptr %buff_m1, align 8
  %192 = load ptr, ptr %ZBL, align 8
  %193 = load i32, ptr %rs_Z.addr, align 4
  %194 = load i32, ptr %cs_Z.addr, align 4
  %195 = load ptr, ptr %a01, align 8
  %196 = load i32, ptr %rs_A.addr, align 4
  %197 = load ptr, ptr %buff_1, align 8
  %198 = load ptr, ptr %a2, align 8
  %199 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_cgemv(i32 noundef 100, i32 noundef 501, i32 noundef %add220, i32 noundef %190, ptr noundef %191, ptr noundef %192, i32 noundef %193, i32 noundef %194, ptr noundef %195, i32 noundef %196, ptr noundef %197, ptr noundef %198, i32 noundef %199)
  %200 = load i32, ptr %n_ahead, align 4
  %201 = load i32, ptr %n_behind, align 4
  %202 = load ptr, ptr %buff_m1, align 8
  %203 = load ptr, ptr %Y20, align 8
  %204 = load i32, ptr %rs_Y.addr, align 4
  %205 = load i32, ptr %cs_Y.addr, align 4
  %206 = load ptr, ptr %a10t, align 8
  %207 = load i32, ptr %cs_A.addr, align 4
  %208 = load ptr, ptr %buff_1, align 8
  %209 = load ptr, ptr %a12t, align 8
  %210 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_cgemv(i32 noundef 102, i32 noundef 500, i32 noundef %200, i32 noundef %201, ptr noundef %202, ptr noundef %203, i32 noundef %204, i32 noundef %205, ptr noundef %206, i32 noundef %207, ptr noundef %208, ptr noundef %209, i32 noundef %210)
  %211 = load i32, ptr %m_behind, align 4
  %212 = load i32, ptr %n_ahead, align 4
  %213 = load ptr, ptr %buff_m1, align 8
  %214 = load ptr, ptr %A02, align 8
  %215 = load i32, ptr %rs_A.addr, align 4
  %216 = load i32, ptr %cs_A.addr, align 4
  %217 = load ptr, ptr %z10t, align 8
  %218 = load i32, ptr %cs_Z.addr, align 4
  %219 = load ptr, ptr %buff_1, align 8
  %220 = load ptr, ptr %a12t, align 8
  %221 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_cgemv(i32 noundef 103, i32 noundef 500, i32 noundef %211, i32 noundef %212, ptr noundef %213, ptr noundef %214, i32 noundef %215, i32 noundef %216, ptr noundef %217, i32 noundef %218, ptr noundef %219, ptr noundef %220, i32 noundef %221)
  %222 = load i32, ptr %m_behind, align 4
  %cmp221 = icmp sgt i32 %222, 0
  br i1 %cmp221, label %if.then223, label %if.end224

if.then223:                                       ; preds = %if.end
  %223 = load ptr, ptr %a01_b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %223, ptr align 4 %last_elem, i64 8, i1 false)
  br label %if.end224

if.end224:                                        ; preds = %if.then223, %if.end
  %224 = load i32, ptr %m_ahead, align 4
  %225 = load ptr, ptr %alpha11, align 8
  %226 = load ptr, ptr %a21, align 8
  %227 = load i32, ptr %rs_A.addr, align 4
  %228 = load ptr, ptr %tau11, align 8
  %call225 = call i32 @FLA_Househ2_UT_l_opc(i32 noundef %224, ptr noundef %225, ptr noundef %226, i32 noundef %227, ptr noundef %228)
  %229 = load i32, ptr %m_ahead, align 4
  %230 = load ptr, ptr %a21, align 8
  %231 = load i32, ptr %rs_A.addr, align 4
  %232 = load ptr, ptr %u21, align 8
  %233 = load i32, ptr %inc_u, align 4
  call void @bl1_ccopyv(i32 noundef 500, i32 noundef %229, ptr noundef %230, i32 noundef %231, ptr noundef %232, i32 noundef %233)
  %234 = load i32, ptr %n_ahead, align 4
  %cmp226 = icmp sgt i32 %234, 0
  br i1 %cmp226, label %if.then228, label %if.else

if.then228:                                       ; preds = %if.end224
  %235 = load i32, ptr %n_ahead, align 4
  %236 = load ptr, ptr %a12t, align 8
  %237 = load i32, ptr %cs_A.addr, align 4
  %238 = load ptr, ptr %y21, align 8
  %239 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_ccopyv(i32 noundef 501, i32 noundef %235, ptr noundef %236, i32 noundef %237, ptr noundef %238, i32 noundef %239)
  %240 = load i32, ptr %m_ahead, align 4
  %241 = load i32, ptr %n_ahead, align 4
  %242 = load ptr, ptr %buff_1, align 8
  %243 = load ptr, ptr %A22, align 8
  %244 = load i32, ptr %rs_A.addr, align 4
  %245 = load i32, ptr %cs_A.addr, align 4
  %246 = load ptr, ptr %u21, align 8
  %247 = load i32, ptr %inc_u, align 4
  %248 = load ptr, ptr %buff_1, align 8
  %249 = load ptr, ptr %y21, align 8
  %250 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_cgemv(i32 noundef 103, i32 noundef 500, i32 noundef %240, i32 noundef %241, ptr noundef %242, ptr noundef %243, i32 noundef %244, i32 noundef %245, ptr noundef %246, i32 noundef %247, ptr noundef %248, ptr noundef %249, i32 noundef %250)
  %251 = load i32, ptr %m_ahead, align 4
  %252 = load i32, ptr %n_behind, align 4
  %253 = load ptr, ptr %buff_1, align 8
  %254 = load ptr, ptr %A20, align 8
  %255 = load i32, ptr %rs_A.addr, align 4
  %256 = load i32, ptr %cs_A.addr, align 4
  %257 = load ptr, ptr %u21, align 8
  %258 = load i32, ptr %inc_u, align 4
  %259 = load ptr, ptr %buff_0, align 8
  %260 = load ptr, ptr %d0, align 8
  %261 = load i32, ptr %inc_d, align 4
  call void @bl1_cgemv(i32 noundef 103, i32 noundef 500, i32 noundef %251, i32 noundef %252, ptr noundef %253, ptr noundef %254, i32 noundef %255, i32 noundef %256, ptr noundef %257, i32 noundef %258, ptr noundef %259, ptr noundef %260, i32 noundef %261)
  %262 = load i32, ptr %m_ahead, align 4
  %263 = load i32, ptr %n_behind, align 4
  %264 = load ptr, ptr %buff_1, align 8
  %265 = load ptr, ptr %Z20, align 8
  %266 = load i32, ptr %rs_Z.addr, align 4
  %267 = load i32, ptr %cs_Z.addr, align 4
  %268 = load ptr, ptr %u21, align 8
  %269 = load i32, ptr %inc_u, align 4
  %270 = load ptr, ptr %buff_0, align 8
  %271 = load ptr, ptr %e0, align 8
  %272 = load i32, ptr %inc_e, align 4
  call void @bl1_cgemv(i32 noundef 103, i32 noundef 500, i32 noundef %262, i32 noundef %263, ptr noundef %264, ptr noundef %265, i32 noundef %266, i32 noundef %267, ptr noundef %268, i32 noundef %269, ptr noundef %270, ptr noundef %271, i32 noundef %272)
  %273 = load i32, ptr %n_behind, align 4
  %274 = load ptr, ptr %a10t, align 8
  %275 = load i32, ptr %cs_A.addr, align 4
  %276 = load ptr, ptr %t01, align 8
  %277 = load i32, ptr %rs_T.addr, align 4
  call void @bl1_ccopyv(i32 noundef 501, i32 noundef %273, ptr noundef %274, i32 noundef %275, ptr noundef %276, i32 noundef %277)
  %278 = load i32, ptr %n_behind, align 4
  %279 = load ptr, ptr %buff_1, align 8
  %280 = load ptr, ptr %d0, align 8
  %281 = load i32, ptr %inc_d, align 4
  %282 = load ptr, ptr %t01, align 8
  %283 = load i32, ptr %rs_T.addr, align 4
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef %278, ptr noundef %279, ptr noundef %280, i32 noundef %281, ptr noundef %282, i32 noundef %283)
  %284 = load i32, ptr %n_ahead, align 4
  %285 = load i32, ptr %n_behind, align 4
  %286 = load ptr, ptr %buff_m1, align 8
  %287 = load ptr, ptr %Y20, align 8
  %288 = load i32, ptr %rs_Y.addr, align 4
  %289 = load i32, ptr %cs_Y.addr, align 4
  %290 = load ptr, ptr %d0, align 8
  %291 = load i32, ptr %inc_d, align 4
  %292 = load ptr, ptr %buff_1, align 8
  %293 = load ptr, ptr %y21, align 8
  %294 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_cgemv(i32 noundef 100, i32 noundef 500, i32 noundef %284, i32 noundef %285, ptr noundef %286, ptr noundef %287, i32 noundef %288, i32 noundef %289, ptr noundef %290, i32 noundef %291, ptr noundef %292, ptr noundef %293, i32 noundef %294)
  %295 = load i32, ptr %m_behind, align 4
  %296 = load i32, ptr %n_ahead, align 4
  %297 = load ptr, ptr %buff_m1, align 8
  %298 = load ptr, ptr %A02, align 8
  %299 = load i32, ptr %rs_A.addr, align 4
  %300 = load i32, ptr %cs_A.addr, align 4
  %301 = load ptr, ptr %e0, align 8
  %302 = load i32, ptr %inc_e, align 4
  %303 = load ptr, ptr %buff_1, align 8
  %304 = load ptr, ptr %y21, align 8
  %305 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_cgemv(i32 noundef 101, i32 noundef 500, i32 noundef %295, i32 noundef %296, ptr noundef %297, ptr noundef %298, i32 noundef %299, i32 noundef %300, ptr noundef %301, i32 noundef %302, ptr noundef %303, ptr noundef %304, i32 noundef %305)
  %306 = load i32, ptr %n_ahead, align 4
  %307 = load ptr, ptr %tau11, align 8
  %308 = load ptr, ptr %y21, align 8
  %309 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_cinvscalv(i32 noundef 500, i32 noundef %306, ptr noundef %307, ptr noundef %308, i32 noundef %309)
  %310 = load i32, ptr %n_ahead, align 4
  %311 = load ptr, ptr %buff_m1, align 8
  %312 = load ptr, ptr %y21, align 8
  %313 = load i32, ptr %rs_Y.addr, align 4
  %314 = load ptr, ptr %a12t, align 8
  %315 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_caxpyv(i32 noundef 501, i32 noundef %310, ptr noundef %311, ptr noundef %312, i32 noundef %313, ptr noundef %314, i32 noundef %315)
  %316 = load i32, ptr %n_ahead, align 4
  %sub229 = sub nsw i32 %316, 1
  %317 = load ptr, ptr %a12t_l, align 8
  %318 = load ptr, ptr %a12t_r, align 8
  %319 = load i32, ptr %cs_A.addr, align 4
  %320 = load ptr, ptr %sigma11, align 8
  %call230 = call i32 @FLA_Househ2_UT_r_opc(i32 noundef %sub229, ptr noundef %317, ptr noundef %318, i32 noundef %319, ptr noundef %320)
  %321 = load ptr, ptr %v21_t, align 8
  %322 = load ptr, ptr %buff_1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %321, ptr align 4 %322, i64 8, i1 false)
  %323 = load i32, ptr %n_ahead, align 4
  %sub231 = sub nsw i32 %323, 1
  %324 = load ptr, ptr %a12t_r, align 8
  %325 = load i32, ptr %cs_A.addr, align 4
  %326 = load ptr, ptr %v21_b, align 8
  %327 = load i32, ptr %inc_v, align 4
  call void @bl1_ccopyv(i32 noundef 500, i32 noundef %sub231, ptr noundef %324, i32 noundef %325, ptr noundef %326, i32 noundef %327)
  %328 = load i32, ptr %n_ahead, align 4
  %329 = load ptr, ptr %y21, align 8
  %330 = load i32, ptr %rs_Y.addr, align 4
  %331 = load ptr, ptr %v21, align 8
  %332 = load i32, ptr %inc_v, align 4
  call void @bl1_cdot(i32 noundef 501, i32 noundef %328, ptr noundef %329, i32 noundef %330, ptr noundef %331, i32 noundef %332, ptr noundef %beta)
  %333 = load ptr, ptr %buff_m1, align 8
  %real = getelementptr inbounds %struct.scomplex, ptr %333, i32 0, i32 0
  %334 = load float, ptr %real, align 4
  %real232 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 0
  %335 = load float, ptr %real232, align 4
  %336 = load ptr, ptr %buff_m1, align 8
  %imag = getelementptr inbounds %struct.scomplex, ptr %336, i32 0, i32 1
  %337 = load float, ptr %imag, align 4
  %imag234 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 1
  %338 = load float, ptr %imag234, align 4
  %mul235 = fmul float %337, %338
  %neg = fneg float %mul235
  %339 = call float @llvm.fmuladd.f32(float %334, float %335, float %neg)
  store float %339, ptr %tempr, align 4
  %340 = load ptr, ptr %buff_m1, align 8
  %imag236 = getelementptr inbounds %struct.scomplex, ptr %340, i32 0, i32 1
  %341 = load float, ptr %imag236, align 4
  %real237 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 0
  %342 = load float, ptr %real237, align 4
  %343 = load ptr, ptr %buff_m1, align 8
  %real239 = getelementptr inbounds %struct.scomplex, ptr %343, i32 0, i32 0
  %344 = load float, ptr %real239, align 4
  %imag240 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 1
  %345 = load float, ptr %imag240, align 4
  %mul241 = fmul float %344, %345
  %346 = call float @llvm.fmuladd.f32(float %341, float %342, float %mul241)
  store float %346, ptr %tempi, align 4
  %347 = load float, ptr %tempr, align 4
  %real242 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 0
  store float %347, ptr %real242, align 4
  %348 = load float, ptr %tempi, align 4
  %imag243 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 1
  store float %348, ptr %imag243, align 4
  %349 = load i32, ptr %m_ahead, align 4
  %350 = load ptr, ptr %u21, align 8
  %351 = load i32, ptr %inc_u, align 4
  %352 = load ptr, ptr %z21, align 8
  %353 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_ccopyv(i32 noundef 500, i32 noundef %349, ptr noundef %350, i32 noundef %351, ptr noundef %352, i32 noundef %353)
  %354 = load i32, ptr %m_ahead, align 4
  %355 = load i32, ptr %n_ahead, align 4
  %356 = load ptr, ptr %buff_1, align 8
  %357 = load ptr, ptr %A22, align 8
  %358 = load i32, ptr %rs_A.addr, align 4
  %359 = load i32, ptr %cs_A.addr, align 4
  %360 = load ptr, ptr %v21, align 8
  %361 = load i32, ptr %inc_v, align 4
  %362 = load ptr, ptr %z21, align 8
  %363 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_cgemv(i32 noundef 100, i32 noundef 500, i32 noundef %354, i32 noundef %355, ptr noundef %356, ptr noundef %357, i32 noundef %358, i32 noundef %359, ptr noundef %360, i32 noundef %361, ptr noundef %beta, ptr noundef %362, i32 noundef %363)
  %364 = load i32, ptr %n_ahead, align 4
  %365 = load i32, ptr %m_behind, align 4
  %366 = load ptr, ptr %buff_1, align 8
  %367 = load ptr, ptr %Y20, align 8
  %368 = load i32, ptr %rs_Y.addr, align 4
  %369 = load i32, ptr %cs_Y.addr, align 4
  %370 = load ptr, ptr %v21, align 8
  %371 = load i32, ptr %inc_v, align 4
  %372 = load ptr, ptr %buff_0, align 8
  %373 = load ptr, ptr %f0, align 8
  %374 = load i32, ptr %inc_f, align 4
  call void @bl1_cgemv(i32 noundef 103, i32 noundef 500, i32 noundef %364, i32 noundef %365, ptr noundef %366, ptr noundef %367, i32 noundef %368, i32 noundef %369, ptr noundef %370, i32 noundef %371, ptr noundef %372, ptr noundef %373, i32 noundef %374)
  %375 = load i32, ptr %m_behind, align 4
  %376 = load i32, ptr %n_ahead, align 4
  %377 = load ptr, ptr %buff_1, align 8
  %378 = load ptr, ptr %A02, align 8
  %379 = load i32, ptr %rs_A.addr, align 4
  %380 = load i32, ptr %cs_A.addr, align 4
  %381 = load ptr, ptr %v21, align 8
  %382 = load i32, ptr %inc_v, align 4
  %383 = load ptr, ptr %buff_0, align 8
  %384 = load ptr, ptr %g0, align 8
  %385 = load i32, ptr %inc_g, align 4
  call void @bl1_cgemv(i32 noundef 102, i32 noundef 500, i32 noundef %375, i32 noundef %376, ptr noundef %377, ptr noundef %378, i32 noundef %379, i32 noundef %380, ptr noundef %381, i32 noundef %382, ptr noundef %383, ptr noundef %384, i32 noundef %385)
  %386 = load i32, ptr %m_ahead, align 4
  %387 = load i32, ptr %n_behind, align 4
  %388 = load ptr, ptr %buff_m1, align 8
  %389 = load ptr, ptr %A20, align 8
  %390 = load i32, ptr %rs_A.addr, align 4
  %391 = load i32, ptr %cs_A.addr, align 4
  %392 = load ptr, ptr %f0, align 8
  %393 = load i32, ptr %inc_f, align 4
  %394 = load ptr, ptr %buff_1, align 8
  %395 = load ptr, ptr %z21, align 8
  %396 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_cgemv(i32 noundef 100, i32 noundef 500, i32 noundef %386, i32 noundef %387, ptr noundef %388, ptr noundef %389, i32 noundef %390, i32 noundef %391, ptr noundef %392, i32 noundef %393, ptr noundef %394, ptr noundef %395, i32 noundef %396)
  %397 = load i32, ptr %m_ahead, align 4
  %398 = load i32, ptr %n_behind, align 4
  %399 = load ptr, ptr %buff_m1, align 8
  %400 = load ptr, ptr %Z20, align 8
  %401 = load i32, ptr %rs_Z.addr, align 4
  %402 = load i32, ptr %cs_Z.addr, align 4
  %403 = load ptr, ptr %g0, align 8
  %404 = load i32, ptr %inc_g, align 4
  %405 = load ptr, ptr %buff_1, align 8
  %406 = load ptr, ptr %z21, align 8
  %407 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_cgemv(i32 noundef 100, i32 noundef 500, i32 noundef %397, i32 noundef %398, ptr noundef %399, ptr noundef %400, i32 noundef %401, i32 noundef %402, ptr noundef %403, i32 noundef %404, ptr noundef %405, ptr noundef %406, i32 noundef %407)
  %408 = load i32, ptr %m_ahead, align 4
  %409 = load ptr, ptr %sigma11, align 8
  %410 = load ptr, ptr %z21, align 8
  %411 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_cinvscalv(i32 noundef 500, i32 noundef %408, ptr noundef %409, ptr noundef %410, i32 noundef %411)
  %412 = load i32, ptr %n_behind, align 4
  %413 = load ptr, ptr %g0, align 8
  %414 = load i32, ptr %inc_g, align 4
  %415 = load ptr, ptr %s01, align 8
  %416 = load i32, ptr %rs_S.addr, align 4
  call void @bl1_ccopyv(i32 noundef 500, i32 noundef %412, ptr noundef %413, i32 noundef %414, ptr noundef %415, i32 noundef %416)
  br label %if.end244

if.else:                                          ; preds = %if.end224
  %417 = load i32, ptr %n_behind, align 4
  %418 = load ptr, ptr %a10t, align 8
  %419 = load i32, ptr %cs_A.addr, align 4
  %420 = load ptr, ptr %t01, align 8
  %421 = load i32, ptr %rs_T.addr, align 4
  call void @bl1_ccopyv(i32 noundef 501, i32 noundef %417, ptr noundef %418, i32 noundef %419, ptr noundef %420, i32 noundef %421)
  %422 = load i32, ptr %m_ahead, align 4
  %423 = load i32, ptr %n_behind, align 4
  %424 = load ptr, ptr %buff_1, align 8
  %425 = load ptr, ptr %A20, align 8
  %426 = load i32, ptr %rs_A.addr, align 4
  %427 = load i32, ptr %cs_A.addr, align 4
  %428 = load ptr, ptr %u21, align 8
  %429 = load i32, ptr %inc_u, align 4
  %430 = load ptr, ptr %buff_1, align 8
  %431 = load ptr, ptr %t01, align 8
  %432 = load i32, ptr %rs_T.addr, align 4
  call void @bl1_cgemv(i32 noundef 103, i32 noundef 500, i32 noundef %422, i32 noundef %423, ptr noundef %424, ptr noundef %425, i32 noundef %426, i32 noundef %427, ptr noundef %428, i32 noundef %429, ptr noundef %430, ptr noundef %431, i32 noundef %432)
  br label %if.end244

if.end244:                                        ; preds = %if.else, %if.then228
  br label %for.inc

for.inc:                                          ; preds = %if.end244
  %433 = load i32, ptr %i, align 4
  %inc = add nsw i32 %433, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %434 = load ptr, ptr %buff_u, align 8
  call void @FLA_free(ptr noundef %434)
  %435 = load ptr, ptr %buff_v, align 8
  call void @FLA_free(ptr noundef %435)
  %436 = load ptr, ptr %buff_d, align 8
  call void @FLA_free(ptr noundef %436)
  %437 = load ptr, ptr %buff_e, align 8
  call void @FLA_free(ptr noundef %437)
  %438 = load ptr, ptr %buff_f, align 8
  call void @FLA_free(ptr noundef %438)
  %439 = load ptr, ptr %buff_g, align 8
  call void @FLA_free(ptr noundef %439)
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Bidiag_UT_u_step_opz_var5(i32 noundef %m_A, i32 noundef %n_A, i32 noundef %m_TS, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_Y, i32 noundef %rs_Y, i32 noundef %cs_Y, ptr noundef %buff_Z, i32 noundef %rs_Z, i32 noundef %cs_Z, ptr noundef %buff_T, i32 noundef %rs_T, i32 noundef %cs_T, ptr noundef %buff_S, i32 noundef %rs_S, i32 noundef %cs_S) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %m_TS.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_Y.addr = alloca ptr, align 8
  %rs_Y.addr = alloca i32, align 4
  %cs_Y.addr = alloca i32, align 4
  %buff_Z.addr = alloca ptr, align 8
  %rs_Z.addr = alloca i32, align 4
  %cs_Z.addr = alloca i32, align 4
  %buff_T.addr = alloca ptr, align 8
  %rs_T.addr = alloca i32, align 4
  %cs_T.addr = alloca i32, align 4
  %buff_S.addr = alloca ptr, align 8
  %rs_S.addr = alloca i32, align 4
  %cs_S.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_0 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %beta = alloca %struct.dcomplex, align 8
  %last_elem = alloca %struct.dcomplex, align 8
  %i = alloca i32, align 4
  %b_alg = alloca i32, align 4
  %buff_u = alloca ptr, align 8
  %buff_v = alloca ptr, align 8
  %buff_d = alloca ptr, align 8
  %buff_e = alloca ptr, align 8
  %buff_f = alloca ptr, align 8
  %buff_g = alloca ptr, align 8
  %inc_u = alloca i32, align 4
  %inc_v = alloca i32, align 4
  %inc_d = alloca i32, align 4
  %inc_e = alloca i32, align 4
  %inc_f = alloca i32, align 4
  %inc_g = alloca i32, align 4
  %a10t = alloca ptr, align 8
  %A20 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %y10t = alloca ptr, align 8
  %Y20 = alloca ptr, align 8
  %y21 = alloca ptr, align 8
  %z10t = alloca ptr, align 8
  %Z20 = alloca ptr, align 8
  %z21 = alloca ptr, align 8
  %t01 = alloca ptr, align 8
  %tau11 = alloca ptr, align 8
  %s01 = alloca ptr, align 8
  %sigma11 = alloca ptr, align 8
  %u21 = alloca ptr, align 8
  %v21 = alloca ptr, align 8
  %d0 = alloca ptr, align 8
  %e0 = alloca ptr, align 8
  %f0 = alloca ptr, align 8
  %g0 = alloca ptr, align 8
  %v21_t = alloca ptr, align 8
  %v21_b = alloca ptr, align 8
  %a01_b = alloca ptr, align 8
  %a12t_l = alloca ptr, align 8
  %a12t_r = alloca ptr, align 8
  %ABL = alloca ptr, align 8
  %ZBL = alloca ptr, align 8
  %a2 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %n_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  %n_behind = alloca i32, align 4
  %tempr = alloca double, align 8
  %tempi = alloca double, align 8
  store i32 %m_A, ptr %m_A.addr, align 4
  store i32 %n_A, ptr %n_A.addr, align 4
  store i32 %m_TS, ptr %m_TS.addr, align 4
  store ptr %buff_A, ptr %buff_A.addr, align 8
  store i32 %rs_A, ptr %rs_A.addr, align 4
  store i32 %cs_A, ptr %cs_A.addr, align 4
  store ptr %buff_Y, ptr %buff_Y.addr, align 8
  store i32 %rs_Y, ptr %rs_Y.addr, align 4
  store i32 %cs_Y, ptr %cs_Y.addr, align 4
  store ptr %buff_Z, ptr %buff_Z.addr, align 8
  store i32 %rs_Z, ptr %rs_Z.addr, align 4
  store i32 %cs_Z, ptr %cs_Z.addr, align 4
  store ptr %buff_T, ptr %buff_T.addr, align 8
  store i32 %rs_T, ptr %rs_T.addr, align 4
  store i32 %cs_T, ptr %cs_T.addr, align 4
  store ptr %buff_S, ptr %buff_S.addr, align 8
  store i32 %rs_S, ptr %rs_S.addr, align 4
  store i32 %cs_S, ptr %cs_S.addr, align 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds %struct.dcomplex, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ONE, align 8
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_1, align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 32
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds %struct.dcomplex, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ZERO, align 8
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_0, align 8
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 32
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds %struct.dcomplex, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_MINUS_ONE, align 8
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_m1, align 8
  %36 = load i32, ptr %m_TS.addr, align 4
  store i32 %36, ptr %b_alg, align 4
  %37 = load i32, ptr %m_A.addr, align 4
  %conv = sext i32 %37 to i64
  %mul35 = mul i64 %conv, 16
  %call = call ptr @FLA_malloc(i64 noundef %mul35)
  store ptr %call, ptr %buff_u, align 8
  %38 = load i32, ptr %n_A.addr, align 4
  %conv36 = sext i32 %38 to i64
  %mul37 = mul i64 %conv36, 16
  %call38 = call ptr @FLA_malloc(i64 noundef %mul37)
  store ptr %call38, ptr %buff_v, align 8
  %39 = load i32, ptr %n_A.addr, align 4
  %conv39 = sext i32 %39 to i64
  %mul40 = mul i64 %conv39, 16
  %call41 = call ptr @FLA_malloc(i64 noundef %mul40)
  store ptr %call41, ptr %buff_d, align 8
  %40 = load i32, ptr %n_A.addr, align 4
  %conv42 = sext i32 %40 to i64
  %mul43 = mul i64 %conv42, 16
  %call44 = call ptr @FLA_malloc(i64 noundef %mul43)
  store ptr %call44, ptr %buff_e, align 8
  %41 = load i32, ptr %m_A.addr, align 4
  %conv45 = sext i32 %41 to i64
  %mul46 = mul i64 %conv45, 16
  %call47 = call ptr @FLA_malloc(i64 noundef %mul46)
  store ptr %call47, ptr %buff_f, align 8
  %42 = load i32, ptr %m_A.addr, align 4
  %conv48 = sext i32 %42 to i64
  %mul49 = mul i64 %conv48, 16
  %call50 = call ptr @FLA_malloc(i64 noundef %mul49)
  store ptr %call50, ptr %buff_g, align 8
  store i32 1, ptr %inc_u, align 4
  store i32 1, ptr %inc_v, align 4
  store i32 1, ptr %inc_d, align 4
  store i32 1, ptr %inc_e, align 4
  store i32 1, ptr %inc_f, align 4
  store i32 1, ptr %inc_g, align 4
  %43 = load i32, ptr %n_A.addr, align 4
  %44 = load i32, ptr %b_alg, align 4
  %45 = load ptr, ptr %buff_0, align 8
  %46 = load ptr, ptr %buff_Y.addr, align 8
  %47 = load i32, ptr %rs_Y.addr, align 4
  %48 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_zsetm(i32 noundef %43, i32 noundef %44, ptr noundef %45, ptr noundef %46, i32 noundef %47, i32 noundef %48)
  %49 = load i32, ptr %m_A.addr, align 4
  %50 = load i32, ptr %b_alg, align 4
  %51 = load ptr, ptr %buff_0, align 8
  %52 = load ptr, ptr %buff_Z.addr, align 8
  %53 = load i32, ptr %rs_Z.addr, align 4
  %54 = load i32, ptr %cs_Z.addr, align 4
  call void @bl1_zsetm(i32 noundef %49, i32 noundef %50, ptr noundef %51, ptr noundef %52, i32 noundef %53, i32 noundef %54)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end33
  %55 = load i32, ptr %i, align 4
  %56 = load i32, ptr %b_alg, align 4
  %cmp51 = icmp slt i32 %55, %56
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load ptr, ptr %buff_A.addr, align 8
  %58 = load i32, ptr %cs_A.addr, align 4
  %mul53 = mul nsw i32 0, %58
  %idx.ext = sext i32 %mul53 to i64
  %add.ptr54 = getelementptr inbounds %struct.dcomplex, ptr %57, i64 %idx.ext
  %59 = load i32, ptr %i, align 4
  %60 = load i32, ptr %rs_A.addr, align 4
  %mul55 = mul nsw i32 %59, %60
  %idx.ext56 = sext i32 %mul55 to i64
  %add.ptr57 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr54, i64 %idx.ext56
  store ptr %add.ptr57, ptr %a10t, align 8
  %61 = load ptr, ptr %buff_A.addr, align 8
  %62 = load i32, ptr %cs_A.addr, align 4
  %mul58 = mul nsw i32 0, %62
  %idx.ext59 = sext i32 %mul58 to i64
  %add.ptr60 = getelementptr inbounds %struct.dcomplex, ptr %61, i64 %idx.ext59
  %63 = load i32, ptr %i, align 4
  %add = add nsw i32 %63, 1
  %64 = load i32, ptr %rs_A.addr, align 4
  %mul61 = mul nsw i32 %add, %64
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr60, i64 %idx.ext62
  store ptr %add.ptr63, ptr %A20, align 8
  %65 = load ptr, ptr %buff_A.addr, align 8
  %66 = load i32, ptr %i, align 4
  %67 = load i32, ptr %cs_A.addr, align 4
  %mul64 = mul nsw i32 %66, %67
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds %struct.dcomplex, ptr %65, i64 %idx.ext65
  %68 = load i32, ptr %rs_A.addr, align 4
  %mul67 = mul nsw i32 0, %68
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr66, i64 %idx.ext68
  store ptr %add.ptr69, ptr %a01, align 8
  %69 = load ptr, ptr %buff_A.addr, align 8
  %70 = load i32, ptr %i, align 4
  %71 = load i32, ptr %cs_A.addr, align 4
  %mul70 = mul nsw i32 %70, %71
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds %struct.dcomplex, ptr %69, i64 %idx.ext71
  %72 = load i32, ptr %i, align 4
  %73 = load i32, ptr %rs_A.addr, align 4
  %mul73 = mul nsw i32 %72, %73
  %idx.ext74 = sext i32 %mul73 to i64
  %add.ptr75 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr72, i64 %idx.ext74
  store ptr %add.ptr75, ptr %alpha11, align 8
  %74 = load ptr, ptr %buff_A.addr, align 8
  %75 = load i32, ptr %i, align 4
  %76 = load i32, ptr %cs_A.addr, align 4
  %mul76 = mul nsw i32 %75, %76
  %idx.ext77 = sext i32 %mul76 to i64
  %add.ptr78 = getelementptr inbounds %struct.dcomplex, ptr %74, i64 %idx.ext77
  %77 = load i32, ptr %i, align 4
  %add79 = add nsw i32 %77, 1
  %78 = load i32, ptr %rs_A.addr, align 4
  %mul80 = mul nsw i32 %add79, %78
  %idx.ext81 = sext i32 %mul80 to i64
  %add.ptr82 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr78, i64 %idx.ext81
  store ptr %add.ptr82, ptr %a21, align 8
  %79 = load ptr, ptr %buff_A.addr, align 8
  %80 = load i32, ptr %i, align 4
  %add83 = add nsw i32 %80, 1
  %81 = load i32, ptr %cs_A.addr, align 4
  %mul84 = mul nsw i32 %add83, %81
  %idx.ext85 = sext i32 %mul84 to i64
  %add.ptr86 = getelementptr inbounds %struct.dcomplex, ptr %79, i64 %idx.ext85
  %82 = load i32, ptr %rs_A.addr, align 4
  %mul87 = mul nsw i32 0, %82
  %idx.ext88 = sext i32 %mul87 to i64
  %add.ptr89 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr86, i64 %idx.ext88
  store ptr %add.ptr89, ptr %A02, align 8
  %83 = load ptr, ptr %buff_A.addr, align 8
  %84 = load i32, ptr %i, align 4
  %add90 = add nsw i32 %84, 1
  %85 = load i32, ptr %cs_A.addr, align 4
  %mul91 = mul nsw i32 %add90, %85
  %idx.ext92 = sext i32 %mul91 to i64
  %add.ptr93 = getelementptr inbounds %struct.dcomplex, ptr %83, i64 %idx.ext92
  %86 = load i32, ptr %i, align 4
  %87 = load i32, ptr %rs_A.addr, align 4
  %mul94 = mul nsw i32 %86, %87
  %idx.ext95 = sext i32 %mul94 to i64
  %add.ptr96 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr93, i64 %idx.ext95
  store ptr %add.ptr96, ptr %a12t, align 8
  %88 = load ptr, ptr %buff_A.addr, align 8
  %89 = load i32, ptr %i, align 4
  %add97 = add nsw i32 %89, 1
  %90 = load i32, ptr %cs_A.addr, align 4
  %mul98 = mul nsw i32 %add97, %90
  %idx.ext99 = sext i32 %mul98 to i64
  %add.ptr100 = getelementptr inbounds %struct.dcomplex, ptr %88, i64 %idx.ext99
  %91 = load i32, ptr %i, align 4
  %add101 = add nsw i32 %91, 1
  %92 = load i32, ptr %rs_A.addr, align 4
  %mul102 = mul nsw i32 %add101, %92
  %idx.ext103 = sext i32 %mul102 to i64
  %add.ptr104 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr100, i64 %idx.ext103
  store ptr %add.ptr104, ptr %A22, align 8
  %93 = load ptr, ptr %buff_Y.addr, align 8
  %94 = load i32, ptr %cs_Y.addr, align 4
  %mul105 = mul nsw i32 0, %94
  %idx.ext106 = sext i32 %mul105 to i64
  %add.ptr107 = getelementptr inbounds %struct.dcomplex, ptr %93, i64 %idx.ext106
  %95 = load i32, ptr %i, align 4
  %96 = load i32, ptr %rs_Y.addr, align 4
  %mul108 = mul nsw i32 %95, %96
  %idx.ext109 = sext i32 %mul108 to i64
  %add.ptr110 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr107, i64 %idx.ext109
  store ptr %add.ptr110, ptr %y10t, align 8
  %97 = load ptr, ptr %buff_Y.addr, align 8
  %98 = load i32, ptr %cs_Y.addr, align 4
  %mul111 = mul nsw i32 0, %98
  %idx.ext112 = sext i32 %mul111 to i64
  %add.ptr113 = getelementptr inbounds %struct.dcomplex, ptr %97, i64 %idx.ext112
  %99 = load i32, ptr %i, align 4
  %add114 = add nsw i32 %99, 1
  %100 = load i32, ptr %rs_Y.addr, align 4
  %mul115 = mul nsw i32 %add114, %100
  %idx.ext116 = sext i32 %mul115 to i64
  %add.ptr117 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr113, i64 %idx.ext116
  store ptr %add.ptr117, ptr %Y20, align 8
  %101 = load ptr, ptr %buff_Y.addr, align 8
  %102 = load i32, ptr %i, align 4
  %103 = load i32, ptr %cs_Y.addr, align 4
  %mul118 = mul nsw i32 %102, %103
  %idx.ext119 = sext i32 %mul118 to i64
  %add.ptr120 = getelementptr inbounds %struct.dcomplex, ptr %101, i64 %idx.ext119
  %104 = load i32, ptr %i, align 4
  %add121 = add nsw i32 %104, 1
  %105 = load i32, ptr %rs_Y.addr, align 4
  %mul122 = mul nsw i32 %add121, %105
  %idx.ext123 = sext i32 %mul122 to i64
  %add.ptr124 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr120, i64 %idx.ext123
  store ptr %add.ptr124, ptr %y21, align 8
  %106 = load ptr, ptr %buff_Z.addr, align 8
  %107 = load i32, ptr %cs_Z.addr, align 4
  %mul125 = mul nsw i32 0, %107
  %idx.ext126 = sext i32 %mul125 to i64
  %add.ptr127 = getelementptr inbounds %struct.dcomplex, ptr %106, i64 %idx.ext126
  %108 = load i32, ptr %i, align 4
  %109 = load i32, ptr %rs_Z.addr, align 4
  %mul128 = mul nsw i32 %108, %109
  %idx.ext129 = sext i32 %mul128 to i64
  %add.ptr130 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr127, i64 %idx.ext129
  store ptr %add.ptr130, ptr %z10t, align 8
  %110 = load ptr, ptr %buff_Z.addr, align 8
  %111 = load i32, ptr %cs_Z.addr, align 4
  %mul131 = mul nsw i32 0, %111
  %idx.ext132 = sext i32 %mul131 to i64
  %add.ptr133 = getelementptr inbounds %struct.dcomplex, ptr %110, i64 %idx.ext132
  %112 = load i32, ptr %i, align 4
  %add134 = add nsw i32 %112, 1
  %113 = load i32, ptr %rs_Z.addr, align 4
  %mul135 = mul nsw i32 %add134, %113
  %idx.ext136 = sext i32 %mul135 to i64
  %add.ptr137 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr133, i64 %idx.ext136
  store ptr %add.ptr137, ptr %Z20, align 8
  %114 = load ptr, ptr %buff_Z.addr, align 8
  %115 = load i32, ptr %i, align 4
  %116 = load i32, ptr %cs_Z.addr, align 4
  %mul138 = mul nsw i32 %115, %116
  %idx.ext139 = sext i32 %mul138 to i64
  %add.ptr140 = getelementptr inbounds %struct.dcomplex, ptr %114, i64 %idx.ext139
  %117 = load i32, ptr %i, align 4
  %add141 = add nsw i32 %117, 1
  %118 = load i32, ptr %rs_Z.addr, align 4
  %mul142 = mul nsw i32 %add141, %118
  %idx.ext143 = sext i32 %mul142 to i64
  %add.ptr144 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr140, i64 %idx.ext143
  store ptr %add.ptr144, ptr %z21, align 8
  %119 = load ptr, ptr %buff_T.addr, align 8
  %120 = load i32, ptr %i, align 4
  %121 = load i32, ptr %cs_T.addr, align 4
  %mul145 = mul nsw i32 %120, %121
  %idx.ext146 = sext i32 %mul145 to i64
  %add.ptr147 = getelementptr inbounds %struct.dcomplex, ptr %119, i64 %idx.ext146
  %122 = load i32, ptr %rs_T.addr, align 4
  %mul148 = mul nsw i32 0, %122
  %idx.ext149 = sext i32 %mul148 to i64
  %add.ptr150 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr147, i64 %idx.ext149
  store ptr %add.ptr150, ptr %t01, align 8
  %123 = load ptr, ptr %buff_T.addr, align 8
  %124 = load i32, ptr %i, align 4
  %125 = load i32, ptr %cs_T.addr, align 4
  %mul151 = mul nsw i32 %124, %125
  %idx.ext152 = sext i32 %mul151 to i64
  %add.ptr153 = getelementptr inbounds %struct.dcomplex, ptr %123, i64 %idx.ext152
  %126 = load i32, ptr %i, align 4
  %127 = load i32, ptr %rs_T.addr, align 4
  %mul154 = mul nsw i32 %126, %127
  %idx.ext155 = sext i32 %mul154 to i64
  %add.ptr156 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr153, i64 %idx.ext155
  store ptr %add.ptr156, ptr %tau11, align 8
  %128 = load ptr, ptr %buff_S.addr, align 8
  %129 = load i32, ptr %i, align 4
  %130 = load i32, ptr %cs_S.addr, align 4
  %mul157 = mul nsw i32 %129, %130
  %idx.ext158 = sext i32 %mul157 to i64
  %add.ptr159 = getelementptr inbounds %struct.dcomplex, ptr %128, i64 %idx.ext158
  %131 = load i32, ptr %rs_S.addr, align 4
  %mul160 = mul nsw i32 0, %131
  %idx.ext161 = sext i32 %mul160 to i64
  %add.ptr162 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr159, i64 %idx.ext161
  store ptr %add.ptr162, ptr %s01, align 8
  %132 = load ptr, ptr %buff_S.addr, align 8
  %133 = load i32, ptr %i, align 4
  %134 = load i32, ptr %cs_S.addr, align 4
  %mul163 = mul nsw i32 %133, %134
  %idx.ext164 = sext i32 %mul163 to i64
  %add.ptr165 = getelementptr inbounds %struct.dcomplex, ptr %132, i64 %idx.ext164
  %135 = load i32, ptr %i, align 4
  %136 = load i32, ptr %rs_S.addr, align 4
  %mul166 = mul nsw i32 %135, %136
  %idx.ext167 = sext i32 %mul166 to i64
  %add.ptr168 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr165, i64 %idx.ext167
  store ptr %add.ptr168, ptr %sigma11, align 8
  %137 = load ptr, ptr %buff_u, align 8
  %138 = load i32, ptr %i, align 4
  %add169 = add nsw i32 %138, 1
  %139 = load i32, ptr %inc_u, align 4
  %mul170 = mul nsw i32 %add169, %139
  %idx.ext171 = sext i32 %mul170 to i64
  %add.ptr172 = getelementptr inbounds %struct.dcomplex, ptr %137, i64 %idx.ext171
  store ptr %add.ptr172, ptr %u21, align 8
  %140 = load ptr, ptr %buff_v, align 8
  %141 = load i32, ptr %i, align 4
  %add173 = add nsw i32 %141, 1
  %142 = load i32, ptr %inc_v, align 4
  %mul174 = mul nsw i32 %add173, %142
  %idx.ext175 = sext i32 %mul174 to i64
  %add.ptr176 = getelementptr inbounds %struct.dcomplex, ptr %140, i64 %idx.ext175
  store ptr %add.ptr176, ptr %v21, align 8
  %143 = load ptr, ptr %buff_d, align 8
  %144 = load i32, ptr %inc_d, align 4
  %mul177 = mul nsw i32 0, %144
  %idx.ext178 = sext i32 %mul177 to i64
  %add.ptr179 = getelementptr inbounds %struct.dcomplex, ptr %143, i64 %idx.ext178
  store ptr %add.ptr179, ptr %d0, align 8
  %145 = load ptr, ptr %buff_e, align 8
  %146 = load i32, ptr %inc_e, align 4
  %mul180 = mul nsw i32 0, %146
  %idx.ext181 = sext i32 %mul180 to i64
  %add.ptr182 = getelementptr inbounds %struct.dcomplex, ptr %145, i64 %idx.ext181
  store ptr %add.ptr182, ptr %e0, align 8
  %147 = load ptr, ptr %buff_f, align 8
  %148 = load i32, ptr %inc_f, align 4
  %mul183 = mul nsw i32 0, %148
  %idx.ext184 = sext i32 %mul183 to i64
  %add.ptr185 = getelementptr inbounds %struct.dcomplex, ptr %147, i64 %idx.ext184
  store ptr %add.ptr185, ptr %f0, align 8
  %149 = load ptr, ptr %buff_g, align 8
  %150 = load i32, ptr %inc_g, align 4
  %mul186 = mul nsw i32 0, %150
  %idx.ext187 = sext i32 %mul186 to i64
  %add.ptr188 = getelementptr inbounds %struct.dcomplex, ptr %149, i64 %idx.ext187
  store ptr %add.ptr188, ptr %g0, align 8
  %151 = load ptr, ptr %v21, align 8
  %152 = load i32, ptr %inc_v, align 4
  %mul189 = mul nsw i32 0, %152
  %idx.ext190 = sext i32 %mul189 to i64
  %add.ptr191 = getelementptr inbounds %struct.dcomplex, ptr %151, i64 %idx.ext190
  store ptr %add.ptr191, ptr %v21_t, align 8
  %153 = load ptr, ptr %v21, align 8
  %154 = load i32, ptr %inc_v, align 4
  %mul192 = mul nsw i32 1, %154
  %idx.ext193 = sext i32 %mul192 to i64
  %add.ptr194 = getelementptr inbounds %struct.dcomplex, ptr %153, i64 %idx.ext193
  store ptr %add.ptr194, ptr %v21_b, align 8
  %155 = load ptr, ptr %a01, align 8
  %156 = load i32, ptr %cs_A.addr, align 4
  %mul195 = mul nsw i32 0, %156
  %idx.ext196 = sext i32 %mul195 to i64
  %add.ptr197 = getelementptr inbounds %struct.dcomplex, ptr %155, i64 %idx.ext196
  %157 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %157, 1
  %158 = load i32, ptr %rs_A.addr, align 4
  %mul198 = mul nsw i32 %sub, %158
  %idx.ext199 = sext i32 %mul198 to i64
  %add.ptr200 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr197, i64 %idx.ext199
  store ptr %add.ptr200, ptr %a01_b, align 8
  %159 = load ptr, ptr %a12t, align 8
  %160 = load i32, ptr %cs_A.addr, align 4
  %mul201 = mul nsw i32 0, %160
  %idx.ext202 = sext i32 %mul201 to i64
  %add.ptr203 = getelementptr inbounds %struct.dcomplex, ptr %159, i64 %idx.ext202
  %161 = load i32, ptr %rs_A.addr, align 4
  %mul204 = mul nsw i32 0, %161
  %idx.ext205 = sext i32 %mul204 to i64
  %add.ptr206 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr203, i64 %idx.ext205
  store ptr %add.ptr206, ptr %a12t_l, align 8
  %162 = load ptr, ptr %a12t, align 8
  %163 = load i32, ptr %cs_A.addr, align 4
  %mul207 = mul nsw i32 1, %163
  %idx.ext208 = sext i32 %mul207 to i64
  %add.ptr209 = getelementptr inbounds %struct.dcomplex, ptr %162, i64 %idx.ext208
  %164 = load i32, ptr %rs_A.addr, align 4
  %mul210 = mul nsw i32 0, %164
  %idx.ext211 = sext i32 %mul210 to i64
  %add.ptr212 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr209, i64 %idx.ext211
  store ptr %add.ptr212, ptr %a12t_r, align 8
  %165 = load ptr, ptr %a10t, align 8
  store ptr %165, ptr %ABL, align 8
  %166 = load ptr, ptr %z10t, align 8
  store ptr %166, ptr %ZBL, align 8
  %167 = load ptr, ptr %alpha11, align 8
  store ptr %167, ptr %a2, align 8
  %168 = load i32, ptr %m_A.addr, align 4
  %169 = load i32, ptr %i, align 4
  %sub213 = sub nsw i32 %168, %169
  %sub214 = sub nsw i32 %sub213, 1
  store i32 %sub214, ptr %m_ahead, align 4
  %170 = load i32, ptr %n_A.addr, align 4
  %171 = load i32, ptr %i, align 4
  %sub215 = sub nsw i32 %170, %171
  %sub216 = sub nsw i32 %sub215, 1
  store i32 %sub216, ptr %n_ahead, align 4
  %172 = load i32, ptr %i, align 4
  store i32 %172, ptr %m_behind, align 4
  %173 = load i32, ptr %i, align 4
  store i32 %173, ptr %n_behind, align 4
  %174 = load i32, ptr %m_behind, align 4
  %cmp217 = icmp sgt i32 %174, 0
  br i1 %cmp217, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %175 = load ptr, ptr %a01_b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %last_elem, ptr align 8 %175, i64 16, i1 false)
  %176 = load ptr, ptr %a01_b, align 8
  %177 = load ptr, ptr %buff_1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %176, ptr align 8 %177, i64 16, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %178 = load i32, ptr %m_ahead, align 4
  %add219 = add nsw i32 %178, 1
  %179 = load i32, ptr %n_behind, align 4
  %180 = load ptr, ptr %buff_m1, align 8
  %181 = load ptr, ptr %ABL, align 8
  %182 = load i32, ptr %rs_A.addr, align 4
  %183 = load i32, ptr %cs_A.addr, align 4
  %184 = load ptr, ptr %y10t, align 8
  %185 = load i32, ptr %cs_Y.addr, align 4
  %186 = load ptr, ptr %buff_1, align 8
  %187 = load ptr, ptr %a2, align 8
  %188 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_zgemv(i32 noundef 100, i32 noundef 501, i32 noundef %add219, i32 noundef %179, ptr noundef %180, ptr noundef %181, i32 noundef %182, i32 noundef %183, ptr noundef %184, i32 noundef %185, ptr noundef %186, ptr noundef %187, i32 noundef %188)
  %189 = load i32, ptr %m_ahead, align 4
  %add220 = add nsw i32 %189, 1
  %190 = load i32, ptr %n_behind, align 4
  %191 = load ptr, ptr %buff_m1, align 8
  %192 = load ptr, ptr %ZBL, align 8
  %193 = load i32, ptr %rs_Z.addr, align 4
  %194 = load i32, ptr %cs_Z.addr, align 4
  %195 = load ptr, ptr %a01, align 8
  %196 = load i32, ptr %rs_A.addr, align 4
  %197 = load ptr, ptr %buff_1, align 8
  %198 = load ptr, ptr %a2, align 8
  %199 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_zgemv(i32 noundef 100, i32 noundef 501, i32 noundef %add220, i32 noundef %190, ptr noundef %191, ptr noundef %192, i32 noundef %193, i32 noundef %194, ptr noundef %195, i32 noundef %196, ptr noundef %197, ptr noundef %198, i32 noundef %199)
  %200 = load i32, ptr %n_ahead, align 4
  %201 = load i32, ptr %n_behind, align 4
  %202 = load ptr, ptr %buff_m1, align 8
  %203 = load ptr, ptr %Y20, align 8
  %204 = load i32, ptr %rs_Y.addr, align 4
  %205 = load i32, ptr %cs_Y.addr, align 4
  %206 = load ptr, ptr %a10t, align 8
  %207 = load i32, ptr %cs_A.addr, align 4
  %208 = load ptr, ptr %buff_1, align 8
  %209 = load ptr, ptr %a12t, align 8
  %210 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_zgemv(i32 noundef 102, i32 noundef 500, i32 noundef %200, i32 noundef %201, ptr noundef %202, ptr noundef %203, i32 noundef %204, i32 noundef %205, ptr noundef %206, i32 noundef %207, ptr noundef %208, ptr noundef %209, i32 noundef %210)
  %211 = load i32, ptr %m_behind, align 4
  %212 = load i32, ptr %n_ahead, align 4
  %213 = load ptr, ptr %buff_m1, align 8
  %214 = load ptr, ptr %A02, align 8
  %215 = load i32, ptr %rs_A.addr, align 4
  %216 = load i32, ptr %cs_A.addr, align 4
  %217 = load ptr, ptr %z10t, align 8
  %218 = load i32, ptr %cs_Z.addr, align 4
  %219 = load ptr, ptr %buff_1, align 8
  %220 = load ptr, ptr %a12t, align 8
  %221 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_zgemv(i32 noundef 103, i32 noundef 500, i32 noundef %211, i32 noundef %212, ptr noundef %213, ptr noundef %214, i32 noundef %215, i32 noundef %216, ptr noundef %217, i32 noundef %218, ptr noundef %219, ptr noundef %220, i32 noundef %221)
  %222 = load i32, ptr %m_behind, align 4
  %cmp221 = icmp sgt i32 %222, 0
  br i1 %cmp221, label %if.then223, label %if.end224

if.then223:                                       ; preds = %if.end
  %223 = load ptr, ptr %a01_b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %223, ptr align 8 %last_elem, i64 16, i1 false)
  br label %if.end224

if.end224:                                        ; preds = %if.then223, %if.end
  %224 = load i32, ptr %m_ahead, align 4
  %225 = load ptr, ptr %alpha11, align 8
  %226 = load ptr, ptr %a21, align 8
  %227 = load i32, ptr %rs_A.addr, align 4
  %228 = load ptr, ptr %tau11, align 8
  %call225 = call i32 @FLA_Househ2_UT_l_opz(i32 noundef %224, ptr noundef %225, ptr noundef %226, i32 noundef %227, ptr noundef %228)
  %229 = load i32, ptr %m_ahead, align 4
  %230 = load ptr, ptr %a21, align 8
  %231 = load i32, ptr %rs_A.addr, align 4
  %232 = load ptr, ptr %u21, align 8
  %233 = load i32, ptr %inc_u, align 4
  call void @bl1_zcopyv(i32 noundef 500, i32 noundef %229, ptr noundef %230, i32 noundef %231, ptr noundef %232, i32 noundef %233)
  %234 = load i32, ptr %n_ahead, align 4
  %cmp226 = icmp sgt i32 %234, 0
  br i1 %cmp226, label %if.then228, label %if.else

if.then228:                                       ; preds = %if.end224
  %235 = load i32, ptr %n_ahead, align 4
  %236 = load ptr, ptr %a12t, align 8
  %237 = load i32, ptr %cs_A.addr, align 4
  %238 = load ptr, ptr %y21, align 8
  %239 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_zcopyv(i32 noundef 501, i32 noundef %235, ptr noundef %236, i32 noundef %237, ptr noundef %238, i32 noundef %239)
  %240 = load i32, ptr %m_ahead, align 4
  %241 = load i32, ptr %n_ahead, align 4
  %242 = load ptr, ptr %buff_1, align 8
  %243 = load ptr, ptr %A22, align 8
  %244 = load i32, ptr %rs_A.addr, align 4
  %245 = load i32, ptr %cs_A.addr, align 4
  %246 = load ptr, ptr %u21, align 8
  %247 = load i32, ptr %inc_u, align 4
  %248 = load ptr, ptr %buff_1, align 8
  %249 = load ptr, ptr %y21, align 8
  %250 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_zgemv(i32 noundef 103, i32 noundef 500, i32 noundef %240, i32 noundef %241, ptr noundef %242, ptr noundef %243, i32 noundef %244, i32 noundef %245, ptr noundef %246, i32 noundef %247, ptr noundef %248, ptr noundef %249, i32 noundef %250)
  %251 = load i32, ptr %m_ahead, align 4
  %252 = load i32, ptr %n_behind, align 4
  %253 = load ptr, ptr %buff_1, align 8
  %254 = load ptr, ptr %A20, align 8
  %255 = load i32, ptr %rs_A.addr, align 4
  %256 = load i32, ptr %cs_A.addr, align 4
  %257 = load ptr, ptr %u21, align 8
  %258 = load i32, ptr %inc_u, align 4
  %259 = load ptr, ptr %buff_0, align 8
  %260 = load ptr, ptr %d0, align 8
  %261 = load i32, ptr %inc_d, align 4
  call void @bl1_zgemv(i32 noundef 103, i32 noundef 500, i32 noundef %251, i32 noundef %252, ptr noundef %253, ptr noundef %254, i32 noundef %255, i32 noundef %256, ptr noundef %257, i32 noundef %258, ptr noundef %259, ptr noundef %260, i32 noundef %261)
  %262 = load i32, ptr %m_ahead, align 4
  %263 = load i32, ptr %n_behind, align 4
  %264 = load ptr, ptr %buff_1, align 8
  %265 = load ptr, ptr %Z20, align 8
  %266 = load i32, ptr %rs_Z.addr, align 4
  %267 = load i32, ptr %cs_Z.addr, align 4
  %268 = load ptr, ptr %u21, align 8
  %269 = load i32, ptr %inc_u, align 4
  %270 = load ptr, ptr %buff_0, align 8
  %271 = load ptr, ptr %e0, align 8
  %272 = load i32, ptr %inc_e, align 4
  call void @bl1_zgemv(i32 noundef 103, i32 noundef 500, i32 noundef %262, i32 noundef %263, ptr noundef %264, ptr noundef %265, i32 noundef %266, i32 noundef %267, ptr noundef %268, i32 noundef %269, ptr noundef %270, ptr noundef %271, i32 noundef %272)
  %273 = load i32, ptr %n_behind, align 4
  %274 = load ptr, ptr %a10t, align 8
  %275 = load i32, ptr %cs_A.addr, align 4
  %276 = load ptr, ptr %t01, align 8
  %277 = load i32, ptr %rs_T.addr, align 4
  call void @bl1_zcopyv(i32 noundef 501, i32 noundef %273, ptr noundef %274, i32 noundef %275, ptr noundef %276, i32 noundef %277)
  %278 = load i32, ptr %n_behind, align 4
  %279 = load ptr, ptr %buff_1, align 8
  %280 = load ptr, ptr %d0, align 8
  %281 = load i32, ptr %inc_d, align 4
  %282 = load ptr, ptr %t01, align 8
  %283 = load i32, ptr %rs_T.addr, align 4
  call void @bl1_zaxpyv(i32 noundef 500, i32 noundef %278, ptr noundef %279, ptr noundef %280, i32 noundef %281, ptr noundef %282, i32 noundef %283)
  %284 = load i32, ptr %n_ahead, align 4
  %285 = load i32, ptr %n_behind, align 4
  %286 = load ptr, ptr %buff_m1, align 8
  %287 = load ptr, ptr %Y20, align 8
  %288 = load i32, ptr %rs_Y.addr, align 4
  %289 = load i32, ptr %cs_Y.addr, align 4
  %290 = load ptr, ptr %d0, align 8
  %291 = load i32, ptr %inc_d, align 4
  %292 = load ptr, ptr %buff_1, align 8
  %293 = load ptr, ptr %y21, align 8
  %294 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_zgemv(i32 noundef 100, i32 noundef 500, i32 noundef %284, i32 noundef %285, ptr noundef %286, ptr noundef %287, i32 noundef %288, i32 noundef %289, ptr noundef %290, i32 noundef %291, ptr noundef %292, ptr noundef %293, i32 noundef %294)
  %295 = load i32, ptr %m_behind, align 4
  %296 = load i32, ptr %n_ahead, align 4
  %297 = load ptr, ptr %buff_m1, align 8
  %298 = load ptr, ptr %A02, align 8
  %299 = load i32, ptr %rs_A.addr, align 4
  %300 = load i32, ptr %cs_A.addr, align 4
  %301 = load ptr, ptr %e0, align 8
  %302 = load i32, ptr %inc_e, align 4
  %303 = load ptr, ptr %buff_1, align 8
  %304 = load ptr, ptr %y21, align 8
  %305 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_zgemv(i32 noundef 101, i32 noundef 500, i32 noundef %295, i32 noundef %296, ptr noundef %297, ptr noundef %298, i32 noundef %299, i32 noundef %300, ptr noundef %301, i32 noundef %302, ptr noundef %303, ptr noundef %304, i32 noundef %305)
  %306 = load i32, ptr %n_ahead, align 4
  %307 = load ptr, ptr %tau11, align 8
  %308 = load ptr, ptr %y21, align 8
  %309 = load i32, ptr %rs_Y.addr, align 4
  call void @bl1_zinvscalv(i32 noundef 500, i32 noundef %306, ptr noundef %307, ptr noundef %308, i32 noundef %309)
  %310 = load i32, ptr %n_ahead, align 4
  %311 = load ptr, ptr %buff_m1, align 8
  %312 = load ptr, ptr %y21, align 8
  %313 = load i32, ptr %rs_Y.addr, align 4
  %314 = load ptr, ptr %a12t, align 8
  %315 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_zaxpyv(i32 noundef 501, i32 noundef %310, ptr noundef %311, ptr noundef %312, i32 noundef %313, ptr noundef %314, i32 noundef %315)
  %316 = load i32, ptr %n_ahead, align 4
  %sub229 = sub nsw i32 %316, 1
  %317 = load ptr, ptr %a12t_l, align 8
  %318 = load ptr, ptr %a12t_r, align 8
  %319 = load i32, ptr %cs_A.addr, align 4
  %320 = load ptr, ptr %sigma11, align 8
  %call230 = call i32 @FLA_Househ2_UT_r_opz(i32 noundef %sub229, ptr noundef %317, ptr noundef %318, i32 noundef %319, ptr noundef %320)
  %321 = load ptr, ptr %v21_t, align 8
  %322 = load ptr, ptr %buff_1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %321, ptr align 8 %322, i64 16, i1 false)
  %323 = load i32, ptr %n_ahead, align 4
  %sub231 = sub nsw i32 %323, 1
  %324 = load ptr, ptr %a12t_r, align 8
  %325 = load i32, ptr %cs_A.addr, align 4
  %326 = load ptr, ptr %v21_b, align 8
  %327 = load i32, ptr %inc_v, align 4
  call void @bl1_zcopyv(i32 noundef 500, i32 noundef %sub231, ptr noundef %324, i32 noundef %325, ptr noundef %326, i32 noundef %327)
  %328 = load i32, ptr %n_ahead, align 4
  %329 = load ptr, ptr %y21, align 8
  %330 = load i32, ptr %rs_Y.addr, align 4
  %331 = load ptr, ptr %v21, align 8
  %332 = load i32, ptr %inc_v, align 4
  call void @bl1_zdot(i32 noundef 501, i32 noundef %328, ptr noundef %329, i32 noundef %330, ptr noundef %331, i32 noundef %332, ptr noundef %beta)
  %333 = load ptr, ptr %buff_m1, align 8
  %real = getelementptr inbounds %struct.dcomplex, ptr %333, i32 0, i32 0
  %334 = load double, ptr %real, align 8
  %real232 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 0
  %335 = load double, ptr %real232, align 8
  %336 = load ptr, ptr %buff_m1, align 8
  %imag = getelementptr inbounds %struct.dcomplex, ptr %336, i32 0, i32 1
  %337 = load double, ptr %imag, align 8
  %imag234 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 1
  %338 = load double, ptr %imag234, align 8
  %mul235 = fmul double %337, %338
  %neg = fneg double %mul235
  %339 = call double @llvm.fmuladd.f64(double %334, double %335, double %neg)
  store double %339, ptr %tempr, align 8
  %340 = load ptr, ptr %buff_m1, align 8
  %imag236 = getelementptr inbounds %struct.dcomplex, ptr %340, i32 0, i32 1
  %341 = load double, ptr %imag236, align 8
  %real237 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 0
  %342 = load double, ptr %real237, align 8
  %343 = load ptr, ptr %buff_m1, align 8
  %real239 = getelementptr inbounds %struct.dcomplex, ptr %343, i32 0, i32 0
  %344 = load double, ptr %real239, align 8
  %imag240 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 1
  %345 = load double, ptr %imag240, align 8
  %mul241 = fmul double %344, %345
  %346 = call double @llvm.fmuladd.f64(double %341, double %342, double %mul241)
  store double %346, ptr %tempi, align 8
  %347 = load double, ptr %tempr, align 8
  %real242 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 0
  store double %347, ptr %real242, align 8
  %348 = load double, ptr %tempi, align 8
  %imag243 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 1
  store double %348, ptr %imag243, align 8
  %349 = load i32, ptr %m_ahead, align 4
  %350 = load ptr, ptr %u21, align 8
  %351 = load i32, ptr %inc_u, align 4
  %352 = load ptr, ptr %z21, align 8
  %353 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_zcopyv(i32 noundef 500, i32 noundef %349, ptr noundef %350, i32 noundef %351, ptr noundef %352, i32 noundef %353)
  %354 = load i32, ptr %m_ahead, align 4
  %355 = load i32, ptr %n_ahead, align 4
  %356 = load ptr, ptr %buff_1, align 8
  %357 = load ptr, ptr %A22, align 8
  %358 = load i32, ptr %rs_A.addr, align 4
  %359 = load i32, ptr %cs_A.addr, align 4
  %360 = load ptr, ptr %v21, align 8
  %361 = load i32, ptr %inc_v, align 4
  %362 = load ptr, ptr %z21, align 8
  %363 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_zgemv(i32 noundef 100, i32 noundef 500, i32 noundef %354, i32 noundef %355, ptr noundef %356, ptr noundef %357, i32 noundef %358, i32 noundef %359, ptr noundef %360, i32 noundef %361, ptr noundef %beta, ptr noundef %362, i32 noundef %363)
  %364 = load i32, ptr %n_ahead, align 4
  %365 = load i32, ptr %m_behind, align 4
  %366 = load ptr, ptr %buff_1, align 8
  %367 = load ptr, ptr %Y20, align 8
  %368 = load i32, ptr %rs_Y.addr, align 4
  %369 = load i32, ptr %cs_Y.addr, align 4
  %370 = load ptr, ptr %v21, align 8
  %371 = load i32, ptr %inc_v, align 4
  %372 = load ptr, ptr %buff_0, align 8
  %373 = load ptr, ptr %f0, align 8
  %374 = load i32, ptr %inc_f, align 4
  call void @bl1_zgemv(i32 noundef 103, i32 noundef 500, i32 noundef %364, i32 noundef %365, ptr noundef %366, ptr noundef %367, i32 noundef %368, i32 noundef %369, ptr noundef %370, i32 noundef %371, ptr noundef %372, ptr noundef %373, i32 noundef %374)
  %375 = load i32, ptr %m_behind, align 4
  %376 = load i32, ptr %n_ahead, align 4
  %377 = load ptr, ptr %buff_1, align 8
  %378 = load ptr, ptr %A02, align 8
  %379 = load i32, ptr %rs_A.addr, align 4
  %380 = load i32, ptr %cs_A.addr, align 4
  %381 = load ptr, ptr %v21, align 8
  %382 = load i32, ptr %inc_v, align 4
  %383 = load ptr, ptr %buff_0, align 8
  %384 = load ptr, ptr %g0, align 8
  %385 = load i32, ptr %inc_g, align 4
  call void @bl1_zgemv(i32 noundef 102, i32 noundef 500, i32 noundef %375, i32 noundef %376, ptr noundef %377, ptr noundef %378, i32 noundef %379, i32 noundef %380, ptr noundef %381, i32 noundef %382, ptr noundef %383, ptr noundef %384, i32 noundef %385)
  %386 = load i32, ptr %m_ahead, align 4
  %387 = load i32, ptr %n_behind, align 4
  %388 = load ptr, ptr %buff_m1, align 8
  %389 = load ptr, ptr %A20, align 8
  %390 = load i32, ptr %rs_A.addr, align 4
  %391 = load i32, ptr %cs_A.addr, align 4
  %392 = load ptr, ptr %f0, align 8
  %393 = load i32, ptr %inc_f, align 4
  %394 = load ptr, ptr %buff_1, align 8
  %395 = load ptr, ptr %z21, align 8
  %396 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_zgemv(i32 noundef 100, i32 noundef 500, i32 noundef %386, i32 noundef %387, ptr noundef %388, ptr noundef %389, i32 noundef %390, i32 noundef %391, ptr noundef %392, i32 noundef %393, ptr noundef %394, ptr noundef %395, i32 noundef %396)
  %397 = load i32, ptr %m_ahead, align 4
  %398 = load i32, ptr %n_behind, align 4
  %399 = load ptr, ptr %buff_m1, align 8
  %400 = load ptr, ptr %Z20, align 8
  %401 = load i32, ptr %rs_Z.addr, align 4
  %402 = load i32, ptr %cs_Z.addr, align 4
  %403 = load ptr, ptr %g0, align 8
  %404 = load i32, ptr %inc_g, align 4
  %405 = load ptr, ptr %buff_1, align 8
  %406 = load ptr, ptr %z21, align 8
  %407 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_zgemv(i32 noundef 100, i32 noundef 500, i32 noundef %397, i32 noundef %398, ptr noundef %399, ptr noundef %400, i32 noundef %401, i32 noundef %402, ptr noundef %403, i32 noundef %404, ptr noundef %405, ptr noundef %406, i32 noundef %407)
  %408 = load i32, ptr %m_ahead, align 4
  %409 = load ptr, ptr %sigma11, align 8
  %410 = load ptr, ptr %z21, align 8
  %411 = load i32, ptr %rs_Z.addr, align 4
  call void @bl1_zinvscalv(i32 noundef 500, i32 noundef %408, ptr noundef %409, ptr noundef %410, i32 noundef %411)
  %412 = load i32, ptr %n_behind, align 4
  %413 = load ptr, ptr %g0, align 8
  %414 = load i32, ptr %inc_g, align 4
  %415 = load ptr, ptr %s01, align 8
  %416 = load i32, ptr %rs_S.addr, align 4
  call void @bl1_zcopyv(i32 noundef 500, i32 noundef %412, ptr noundef %413, i32 noundef %414, ptr noundef %415, i32 noundef %416)
  br label %if.end244

if.else:                                          ; preds = %if.end224
  %417 = load i32, ptr %n_behind, align 4
  %418 = load ptr, ptr %a10t, align 8
  %419 = load i32, ptr %cs_A.addr, align 4
  %420 = load ptr, ptr %t01, align 8
  %421 = load i32, ptr %rs_T.addr, align 4
  call void @bl1_zcopyv(i32 noundef 501, i32 noundef %417, ptr noundef %418, i32 noundef %419, ptr noundef %420, i32 noundef %421)
  %422 = load i32, ptr %m_ahead, align 4
  %423 = load i32, ptr %n_behind, align 4
  %424 = load ptr, ptr %buff_1, align 8
  %425 = load ptr, ptr %A20, align 8
  %426 = load i32, ptr %rs_A.addr, align 4
  %427 = load i32, ptr %cs_A.addr, align 4
  %428 = load ptr, ptr %u21, align 8
  %429 = load i32, ptr %inc_u, align 4
  %430 = load ptr, ptr %buff_1, align 8
  %431 = load ptr, ptr %t01, align 8
  %432 = load i32, ptr %rs_T.addr, align 4
  call void @bl1_zgemv(i32 noundef 103, i32 noundef 500, i32 noundef %422, i32 noundef %423, ptr noundef %424, ptr noundef %425, i32 noundef %426, i32 noundef %427, ptr noundef %428, i32 noundef %429, ptr noundef %430, ptr noundef %431, i32 noundef %432)
  br label %if.end244

if.end244:                                        ; preds = %if.else, %if.then228
  br label %for.inc

for.inc:                                          ; preds = %if.end244
  %433 = load i32, ptr %i, align 4
  %inc = add nsw i32 %433, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %434 = load ptr, ptr %buff_u, align 8
  call void @FLA_free(ptr noundef %434)
  %435 = load ptr, ptr %buff_v, align 8
  call void @FLA_free(ptr noundef %435)
  %436 = load ptr, ptr %buff_d, align 8
  call void @FLA_free(ptr noundef %436)
  %437 = load ptr, ptr %buff_e, align 8
  call void @FLA_free(ptr noundef %437)
  %438 = load ptr, ptr %buff_f, align 8
  call void @FLA_free(ptr noundef %438)
  %439 = load ptr, ptr %buff_g, align 8
  call void @FLA_free(ptr noundef %439)
  ret i32 -1
}

declare ptr @FLA_malloc(i64 noundef) #1

declare void @bl1_ssetm(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_sgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @FLA_Househ2_UT_l_ops(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @bl1_scopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_saxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_sinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @FLA_Househ2_UT_r_ops(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @bl1_sdot(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @FLA_free(ptr noundef) #1

declare void @bl1_dsetm(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_dgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @FLA_Househ2_UT_l_opd(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @bl1_dcopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_daxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_dinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @FLA_Househ2_UT_r_opd(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @bl1_ddot(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @bl1_csetm(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @bl1_cgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @FLA_Househ2_UT_l_opc(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @bl1_ccopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_caxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_cinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @FLA_Househ2_UT_r_opc(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @bl1_cdot(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @bl1_zsetm(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_zgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @FLA_Househ2_UT_l_opz(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @bl1_zcopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_zaxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_zinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @FLA_Househ2_UT_r_opz(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @bl1_zdot(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
