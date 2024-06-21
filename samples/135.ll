; ModuleID = 'samples/135.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/util/base/FLA_Triangularize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }
%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

@FLA_ZERO = external global %struct.FLA_Obj_view, align 8
@FLA_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Triangularize(i32 noundef %uplo, i32 noundef %diag, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %uplo.addr = alloca i32, align 4
  %diag.addr = alloca i32, align 4
  %datatype = alloca i32, align 4
  %m_A = alloca i32, align 4
  %n_A = alloca i32, align 4
  %rs_A = alloca i32, align 4
  %cs_A = alloca i32, align 4
  %blis_uplo = alloca i32, align 4
  %buff_A = alloca ptr, align 8
  %buff_0 = alloca ptr, align 8
  %buff_1 = alloca ptr, align 8
  %buff_A67 = alloca ptr, align 8
  %buff_091 = alloca ptr, align 8
  %buff_1108 = alloca ptr, align 8
  %buff_A135 = alloca ptr, align 8
  %buff_0159 = alloca ptr, align 8
  %buff_1176 = alloca ptr, align 8
  %buff_A203 = alloca ptr, align 8
  %buff_0227 = alloca ptr, align 8
  %buff_1244 = alloca ptr, align 8
  store i32 %uplo, ptr %uplo.addr, align 4
  store i32 %diag, ptr %diag.addr, align 4
  %call = call i32 @FLA_Check_error_level()
  %cmp = icmp uge i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %uplo.addr, align 4
  %1 = load i32, ptr %diag.addr, align 4
  %call1 = call i32 @FLA_Triangularize_check(i32 noundef %0, i32 noundef %1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call2, ptr %datatype, align 4
  %call3 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %m_A, align 4
  %call4 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, ptr %n_A, align 4
  %call6 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %rs_A, align 4
  %call8 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %cs_A, align 4
  %2 = load i32, ptr %uplo.addr, align 4
  %cmp10 = icmp eq i32 %2, 300
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  store i32 301, ptr %uplo.addr, align 4
  br label %if.end13

if.else:                                          ; preds = %if.end
  store i32 300, ptr %uplo.addr, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then12
  %3 = load i32, ptr %uplo.addr, align 4
  call void @FLA_Param_map_flame_to_blis_uplo(i32 noundef %3, ptr noundef %blis_uplo)
  %4 = load i32, ptr %datatype, align 4
  switch i32 %4, label %sw.epilog [
    i32 100, label %sw.bb
    i32 101, label %sw.bb66
    i32 102, label %sw.bb134
    i32 103, label %sw.bb202
  ]

sw.bb:                                            ; preds = %if.end13
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %5 = load ptr, ptr %base, align 8
  %datatype14 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %datatype14, align 8
  %cmp15 = icmp eq i32 %6, 105
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base17 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %7 = load ptr, ptr %base17, align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 12
  %8 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base18 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %9 = load ptr, ptr %base18, align 8
  %buffer19 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %buffer19, align 8
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %11 = load i64, ptr %offn, align 8
  %base20 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %12 = load ptr, ptr %base20, align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 5
  %13 = load i64, ptr %cs, align 8
  %mul = mul i64 %11, %13
  %add.ptr21 = getelementptr inbounds float, ptr %10, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %14 = load i64, ptr %offm, align 8
  %base22 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %15 = load ptr, ptr %base22, align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %15, i32 0, i32 4
  %16 = load i64, ptr %rs, align 8
  %mul23 = mul i64 %14, %16
  %add.ptr24 = getelementptr inbounds float, ptr %add.ptr21, i64 %mul23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr24, %cond.false ]
  store ptr %cond, ptr %buff_A, align 8
  %17 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %datatype25 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %datatype25, align 8
  %cmp26 = icmp eq i32 %18, 105
  br i1 %cmp26, label %cond.true28, label %cond.false31

cond.true28:                                      ; preds = %cond.end
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer29 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 12
  %20 = load ptr, ptr %buffer29, align 8
  %add.ptr30 = getelementptr inbounds i8, ptr %20, i64 8
  br label %cond.end39

cond.false31:                                     ; preds = %cond.end
  %21 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer32 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %21, i32 0, i32 12
  %22 = load ptr, ptr %buffer32, align 8
  %23 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %cs33 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 5
  %25 = load i64, ptr %cs33, align 8
  %mul34 = mul i64 %23, %25
  %add.ptr35 = getelementptr inbounds float, ptr %22, i64 %mul34
  %26 = load i64, ptr @FLA_ZERO, align 8
  %27 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %rs36 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %27, i32 0, i32 4
  %28 = load i64, ptr %rs36, align 8
  %mul37 = mul i64 %26, %28
  %add.ptr38 = getelementptr inbounds float, ptr %add.ptr35, i64 %mul37
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false31, %cond.true28
  %cond40 = phi ptr [ %add.ptr30, %cond.true28 ], [ %add.ptr38, %cond.false31 ]
  store ptr %cond40, ptr %buff_0, align 8
  %29 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %datatype41 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %29, i32 0, i32 0
  %30 = load i32, ptr %datatype41, align 8
  %cmp42 = icmp eq i32 %30, 105
  br i1 %cmp42, label %cond.true44, label %cond.false47

cond.true44:                                      ; preds = %cond.end39
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer45 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 12
  %32 = load ptr, ptr %buffer45, align 8
  %add.ptr46 = getelementptr inbounds i8, ptr %32, i64 8
  br label %cond.end55

cond.false47:                                     ; preds = %cond.end39
  %33 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer48 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %33, i32 0, i32 12
  %34 = load ptr, ptr %buffer48, align 8
  %35 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8
  %36 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %cs49 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %36, i32 0, i32 5
  %37 = load i64, ptr %cs49, align 8
  %mul50 = mul i64 %35, %37
  %add.ptr51 = getelementptr inbounds float, ptr %34, i64 %mul50
  %38 = load i64, ptr @FLA_ONE, align 8
  %39 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %rs52 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %39, i32 0, i32 4
  %40 = load i64, ptr %rs52, align 8
  %mul53 = mul i64 %38, %40
  %add.ptr54 = getelementptr inbounds float, ptr %add.ptr51, i64 %mul53
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false47, %cond.true44
  %cond56 = phi ptr [ %add.ptr46, %cond.true44 ], [ %add.ptr54, %cond.false47 ]
  store ptr %cond56, ptr %buff_1, align 8
  %41 = load i32, ptr %blis_uplo, align 4
  %42 = load i32, ptr %m_A, align 4
  %43 = load i32, ptr %n_A, align 4
  %44 = load ptr, ptr %buff_0, align 8
  %45 = load ptr, ptr %buff_A, align 8
  %46 = load i32, ptr %rs_A, align 4
  %47 = load i32, ptr %cs_A, align 4
  call void @bl1_ssetmr(i32 noundef %41, i32 noundef %42, i32 noundef %43, ptr noundef %44, ptr noundef %45, i32 noundef %46, i32 noundef %47)
  %48 = load i32, ptr %diag.addr, align 4
  %cmp57 = icmp eq i32 %48, 500
  br i1 %cmp57, label %if.then59, label %if.else60

if.then59:                                        ; preds = %cond.end55
  %49 = load i32, ptr %m_A, align 4
  %50 = load i32, ptr %n_A, align 4
  %51 = load ptr, ptr %buff_1, align 8
  %52 = load ptr, ptr %buff_A, align 8
  %53 = load i32, ptr %rs_A, align 4
  %54 = load i32, ptr %cs_A, align 4
  call void @bl1_ssetdiag(i32 noundef 0, i32 noundef %49, i32 noundef %50, ptr noundef %51, ptr noundef %52, i32 noundef %53, i32 noundef %54)
  br label %if.end65

if.else60:                                        ; preds = %cond.end55
  %55 = load i32, ptr %diag.addr, align 4
  %cmp61 = icmp eq i32 %55, 502
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.else60
  %56 = load i32, ptr %m_A, align 4
  %57 = load i32, ptr %n_A, align 4
  %58 = load ptr, ptr %buff_0, align 8
  %59 = load ptr, ptr %buff_A, align 8
  %60 = load i32, ptr %rs_A, align 4
  %61 = load i32, ptr %cs_A, align 4
  call void @bl1_ssetdiag(i32 noundef 0, i32 noundef %56, i32 noundef %57, ptr noundef %58, ptr noundef %59, i32 noundef %60, i32 noundef %61)
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.else60
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then59
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end13
  %base68 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %62 = load ptr, ptr %base68, align 8
  %datatype69 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %62, i32 0, i32 0
  %63 = load i32, ptr %datatype69, align 8
  %cmp70 = icmp eq i32 %63, 105
  br i1 %cmp70, label %cond.true72, label %cond.false76

cond.true72:                                      ; preds = %sw.bb66
  %base73 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %64 = load ptr, ptr %base73, align 8
  %buffer74 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %64, i32 0, i32 12
  %65 = load ptr, ptr %buffer74, align 8
  %add.ptr75 = getelementptr inbounds i8, ptr %65, i64 16
  br label %cond.end89

cond.false76:                                     ; preds = %sw.bb66
  %base77 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %66 = load ptr, ptr %base77, align 8
  %buffer78 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %66, i32 0, i32 12
  %67 = load ptr, ptr %buffer78, align 8
  %offn79 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %68 = load i64, ptr %offn79, align 8
  %base80 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %69 = load ptr, ptr %base80, align 8
  %cs81 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %69, i32 0, i32 5
  %70 = load i64, ptr %cs81, align 8
  %mul82 = mul i64 %68, %70
  %add.ptr83 = getelementptr inbounds double, ptr %67, i64 %mul82
  %offm84 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %71 = load i64, ptr %offm84, align 8
  %base85 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %72 = load ptr, ptr %base85, align 8
  %rs86 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %72, i32 0, i32 4
  %73 = load i64, ptr %rs86, align 8
  %mul87 = mul i64 %71, %73
  %add.ptr88 = getelementptr inbounds double, ptr %add.ptr83, i64 %mul87
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false76, %cond.true72
  %cond90 = phi ptr [ %add.ptr75, %cond.true72 ], [ %add.ptr88, %cond.false76 ]
  store ptr %cond90, ptr %buff_A67, align 8
  %74 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %datatype92 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %74, i32 0, i32 0
  %75 = load i32, ptr %datatype92, align 8
  %cmp93 = icmp eq i32 %75, 105
  br i1 %cmp93, label %cond.true95, label %cond.false98

cond.true95:                                      ; preds = %cond.end89
  %76 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer96 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %76, i32 0, i32 12
  %77 = load ptr, ptr %buffer96, align 8
  %add.ptr97 = getelementptr inbounds i8, ptr %77, i64 16
  br label %cond.end106

cond.false98:                                     ; preds = %cond.end89
  %78 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer99 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %78, i32 0, i32 12
  %79 = load ptr, ptr %buffer99, align 8
  %80 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8
  %81 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %cs100 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %81, i32 0, i32 5
  %82 = load i64, ptr %cs100, align 8
  %mul101 = mul i64 %80, %82
  %add.ptr102 = getelementptr inbounds double, ptr %79, i64 %mul101
  %83 = load i64, ptr @FLA_ZERO, align 8
  %84 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %rs103 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %84, i32 0, i32 4
  %85 = load i64, ptr %rs103, align 8
  %mul104 = mul i64 %83, %85
  %add.ptr105 = getelementptr inbounds double, ptr %add.ptr102, i64 %mul104
  br label %cond.end106

cond.end106:                                      ; preds = %cond.false98, %cond.true95
  %cond107 = phi ptr [ %add.ptr97, %cond.true95 ], [ %add.ptr105, %cond.false98 ]
  store ptr %cond107, ptr %buff_091, align 8
  %86 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %datatype109 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %86, i32 0, i32 0
  %87 = load i32, ptr %datatype109, align 8
  %cmp110 = icmp eq i32 %87, 105
  br i1 %cmp110, label %cond.true112, label %cond.false115

cond.true112:                                     ; preds = %cond.end106
  %88 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer113 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %88, i32 0, i32 12
  %89 = load ptr, ptr %buffer113, align 8
  %add.ptr114 = getelementptr inbounds i8, ptr %89, i64 16
  br label %cond.end123

cond.false115:                                    ; preds = %cond.end106
  %90 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer116 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %90, i32 0, i32 12
  %91 = load ptr, ptr %buffer116, align 8
  %92 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8
  %93 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %cs117 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %93, i32 0, i32 5
  %94 = load i64, ptr %cs117, align 8
  %mul118 = mul i64 %92, %94
  %add.ptr119 = getelementptr inbounds double, ptr %91, i64 %mul118
  %95 = load i64, ptr @FLA_ONE, align 8
  %96 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %rs120 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %96, i32 0, i32 4
  %97 = load i64, ptr %rs120, align 8
  %mul121 = mul i64 %95, %97
  %add.ptr122 = getelementptr inbounds double, ptr %add.ptr119, i64 %mul121
  br label %cond.end123

cond.end123:                                      ; preds = %cond.false115, %cond.true112
  %cond124 = phi ptr [ %add.ptr114, %cond.true112 ], [ %add.ptr122, %cond.false115 ]
  store ptr %cond124, ptr %buff_1108, align 8
  %98 = load i32, ptr %blis_uplo, align 4
  %99 = load i32, ptr %m_A, align 4
  %100 = load i32, ptr %n_A, align 4
  %101 = load ptr, ptr %buff_091, align 8
  %102 = load ptr, ptr %buff_A67, align 8
  %103 = load i32, ptr %rs_A, align 4
  %104 = load i32, ptr %cs_A, align 4
  call void @bl1_dsetmr(i32 noundef %98, i32 noundef %99, i32 noundef %100, ptr noundef %101, ptr noundef %102, i32 noundef %103, i32 noundef %104)
  %105 = load i32, ptr %diag.addr, align 4
  %cmp125 = icmp eq i32 %105, 500
  br i1 %cmp125, label %if.then127, label %if.else128

if.then127:                                       ; preds = %cond.end123
  %106 = load i32, ptr %m_A, align 4
  %107 = load i32, ptr %n_A, align 4
  %108 = load ptr, ptr %buff_1108, align 8
  %109 = load ptr, ptr %buff_A67, align 8
  %110 = load i32, ptr %rs_A, align 4
  %111 = load i32, ptr %cs_A, align 4
  call void @bl1_dsetdiag(i32 noundef 0, i32 noundef %106, i32 noundef %107, ptr noundef %108, ptr noundef %109, i32 noundef %110, i32 noundef %111)
  br label %if.end133

if.else128:                                       ; preds = %cond.end123
  %112 = load i32, ptr %diag.addr, align 4
  %cmp129 = icmp eq i32 %112, 502
  br i1 %cmp129, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.else128
  %113 = load i32, ptr %m_A, align 4
  %114 = load i32, ptr %n_A, align 4
  %115 = load ptr, ptr %buff_091, align 8
  %116 = load ptr, ptr %buff_A67, align 8
  %117 = load i32, ptr %rs_A, align 4
  %118 = load i32, ptr %cs_A, align 4
  call void @bl1_dsetdiag(i32 noundef 0, i32 noundef %113, i32 noundef %114, ptr noundef %115, ptr noundef %116, i32 noundef %117, i32 noundef %118)
  br label %if.end132

if.end132:                                        ; preds = %if.then131, %if.else128
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.then127
  br label %sw.epilog

sw.bb134:                                         ; preds = %if.end13
  %base136 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %119 = load ptr, ptr %base136, align 8
  %datatype137 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %119, i32 0, i32 0
  %120 = load i32, ptr %datatype137, align 8
  %cmp138 = icmp eq i32 %120, 105
  br i1 %cmp138, label %cond.true140, label %cond.false144

cond.true140:                                     ; preds = %sw.bb134
  %base141 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %121 = load ptr, ptr %base141, align 8
  %buffer142 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %121, i32 0, i32 12
  %122 = load ptr, ptr %buffer142, align 8
  %add.ptr143 = getelementptr inbounds i8, ptr %122, i64 24
  br label %cond.end157

cond.false144:                                    ; preds = %sw.bb134
  %base145 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %123 = load ptr, ptr %base145, align 8
  %buffer146 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %123, i32 0, i32 12
  %124 = load ptr, ptr %buffer146, align 8
  %offn147 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %125 = load i64, ptr %offn147, align 8
  %base148 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %126 = load ptr, ptr %base148, align 8
  %cs149 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %126, i32 0, i32 5
  %127 = load i64, ptr %cs149, align 8
  %mul150 = mul i64 %125, %127
  %add.ptr151 = getelementptr inbounds %struct.scomplex, ptr %124, i64 %mul150
  %offm152 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %128 = load i64, ptr %offm152, align 8
  %base153 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %129 = load ptr, ptr %base153, align 8
  %rs154 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %129, i32 0, i32 4
  %130 = load i64, ptr %rs154, align 8
  %mul155 = mul i64 %128, %130
  %add.ptr156 = getelementptr inbounds %struct.scomplex, ptr %add.ptr151, i64 %mul155
  br label %cond.end157

cond.end157:                                      ; preds = %cond.false144, %cond.true140
  %cond158 = phi ptr [ %add.ptr143, %cond.true140 ], [ %add.ptr156, %cond.false144 ]
  store ptr %cond158, ptr %buff_A135, align 8
  %131 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %datatype160 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %131, i32 0, i32 0
  %132 = load i32, ptr %datatype160, align 8
  %cmp161 = icmp eq i32 %132, 105
  br i1 %cmp161, label %cond.true163, label %cond.false166

cond.true163:                                     ; preds = %cond.end157
  %133 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer164 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %133, i32 0, i32 12
  %134 = load ptr, ptr %buffer164, align 8
  %add.ptr165 = getelementptr inbounds i8, ptr %134, i64 24
  br label %cond.end174

cond.false166:                                    ; preds = %cond.end157
  %135 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer167 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %135, i32 0, i32 12
  %136 = load ptr, ptr %buffer167, align 8
  %137 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8
  %138 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %cs168 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %138, i32 0, i32 5
  %139 = load i64, ptr %cs168, align 8
  %mul169 = mul i64 %137, %139
  %add.ptr170 = getelementptr inbounds %struct.scomplex, ptr %136, i64 %mul169
  %140 = load i64, ptr @FLA_ZERO, align 8
  %141 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %rs171 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %141, i32 0, i32 4
  %142 = load i64, ptr %rs171, align 8
  %mul172 = mul i64 %140, %142
  %add.ptr173 = getelementptr inbounds %struct.scomplex, ptr %add.ptr170, i64 %mul172
  br label %cond.end174

cond.end174:                                      ; preds = %cond.false166, %cond.true163
  %cond175 = phi ptr [ %add.ptr165, %cond.true163 ], [ %add.ptr173, %cond.false166 ]
  store ptr %cond175, ptr %buff_0159, align 8
  %143 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %datatype177 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %143, i32 0, i32 0
  %144 = load i32, ptr %datatype177, align 8
  %cmp178 = icmp eq i32 %144, 105
  br i1 %cmp178, label %cond.true180, label %cond.false183

cond.true180:                                     ; preds = %cond.end174
  %145 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer181 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %145, i32 0, i32 12
  %146 = load ptr, ptr %buffer181, align 8
  %add.ptr182 = getelementptr inbounds i8, ptr %146, i64 24
  br label %cond.end191

cond.false183:                                    ; preds = %cond.end174
  %147 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer184 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %147, i32 0, i32 12
  %148 = load ptr, ptr %buffer184, align 8
  %149 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8
  %150 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %cs185 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %150, i32 0, i32 5
  %151 = load i64, ptr %cs185, align 8
  %mul186 = mul i64 %149, %151
  %add.ptr187 = getelementptr inbounds %struct.scomplex, ptr %148, i64 %mul186
  %152 = load i64, ptr @FLA_ONE, align 8
  %153 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %rs188 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %153, i32 0, i32 4
  %154 = load i64, ptr %rs188, align 8
  %mul189 = mul i64 %152, %154
  %add.ptr190 = getelementptr inbounds %struct.scomplex, ptr %add.ptr187, i64 %mul189
  br label %cond.end191

cond.end191:                                      ; preds = %cond.false183, %cond.true180
  %cond192 = phi ptr [ %add.ptr182, %cond.true180 ], [ %add.ptr190, %cond.false183 ]
  store ptr %cond192, ptr %buff_1176, align 8
  %155 = load i32, ptr %blis_uplo, align 4
  %156 = load i32, ptr %m_A, align 4
  %157 = load i32, ptr %n_A, align 4
  %158 = load ptr, ptr %buff_0159, align 8
  %159 = load ptr, ptr %buff_A135, align 8
  %160 = load i32, ptr %rs_A, align 4
  %161 = load i32, ptr %cs_A, align 4
  call void @bl1_csetmr(i32 noundef %155, i32 noundef %156, i32 noundef %157, ptr noundef %158, ptr noundef %159, i32 noundef %160, i32 noundef %161)
  %162 = load i32, ptr %diag.addr, align 4
  %cmp193 = icmp eq i32 %162, 500
  br i1 %cmp193, label %if.then195, label %if.else196

if.then195:                                       ; preds = %cond.end191
  %163 = load i32, ptr %m_A, align 4
  %164 = load i32, ptr %n_A, align 4
  %165 = load ptr, ptr %buff_1176, align 8
  %166 = load ptr, ptr %buff_A135, align 8
  %167 = load i32, ptr %rs_A, align 4
  %168 = load i32, ptr %cs_A, align 4
  call void @bl1_csetdiag(i32 noundef 0, i32 noundef %163, i32 noundef %164, ptr noundef %165, ptr noundef %166, i32 noundef %167, i32 noundef %168)
  br label %if.end201

if.else196:                                       ; preds = %cond.end191
  %169 = load i32, ptr %diag.addr, align 4
  %cmp197 = icmp eq i32 %169, 502
  br i1 %cmp197, label %if.then199, label %if.end200

if.then199:                                       ; preds = %if.else196
  %170 = load i32, ptr %m_A, align 4
  %171 = load i32, ptr %n_A, align 4
  %172 = load ptr, ptr %buff_0159, align 8
  %173 = load ptr, ptr %buff_A135, align 8
  %174 = load i32, ptr %rs_A, align 4
  %175 = load i32, ptr %cs_A, align 4
  call void @bl1_csetdiag(i32 noundef 0, i32 noundef %170, i32 noundef %171, ptr noundef %172, ptr noundef %173, i32 noundef %174, i32 noundef %175)
  br label %if.end200

if.end200:                                        ; preds = %if.then199, %if.else196
  br label %if.end201

if.end201:                                        ; preds = %if.end200, %if.then195
  br label %sw.epilog

sw.bb202:                                         ; preds = %if.end13
  %base204 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %176 = load ptr, ptr %base204, align 8
  %datatype205 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %176, i32 0, i32 0
  %177 = load i32, ptr %datatype205, align 8
  %cmp206 = icmp eq i32 %177, 105
  br i1 %cmp206, label %cond.true208, label %cond.false212

cond.true208:                                     ; preds = %sw.bb202
  %base209 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %178 = load ptr, ptr %base209, align 8
  %buffer210 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %178, i32 0, i32 12
  %179 = load ptr, ptr %buffer210, align 8
  %add.ptr211 = getelementptr inbounds i8, ptr %179, i64 32
  br label %cond.end225

cond.false212:                                    ; preds = %sw.bb202
  %base213 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %180 = load ptr, ptr %base213, align 8
  %buffer214 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %180, i32 0, i32 12
  %181 = load ptr, ptr %buffer214, align 8
  %offn215 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %182 = load i64, ptr %offn215, align 8
  %base216 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %183 = load ptr, ptr %base216, align 8
  %cs217 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %183, i32 0, i32 5
  %184 = load i64, ptr %cs217, align 8
  %mul218 = mul i64 %182, %184
  %add.ptr219 = getelementptr inbounds %struct.dcomplex, ptr %181, i64 %mul218
  %offm220 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %185 = load i64, ptr %offm220, align 8
  %base221 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %186 = load ptr, ptr %base221, align 8
  %rs222 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %186, i32 0, i32 4
  %187 = load i64, ptr %rs222, align 8
  %mul223 = mul i64 %185, %187
  %add.ptr224 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr219, i64 %mul223
  br label %cond.end225

cond.end225:                                      ; preds = %cond.false212, %cond.true208
  %cond226 = phi ptr [ %add.ptr211, %cond.true208 ], [ %add.ptr224, %cond.false212 ]
  store ptr %cond226, ptr %buff_A203, align 8
  %188 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %datatype228 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %188, i32 0, i32 0
  %189 = load i32, ptr %datatype228, align 8
  %cmp229 = icmp eq i32 %189, 105
  br i1 %cmp229, label %cond.true231, label %cond.false234

cond.true231:                                     ; preds = %cond.end225
  %190 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer232 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %190, i32 0, i32 12
  %191 = load ptr, ptr %buffer232, align 8
  %add.ptr233 = getelementptr inbounds i8, ptr %191, i64 32
  br label %cond.end242

cond.false234:                                    ; preds = %cond.end225
  %192 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer235 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %192, i32 0, i32 12
  %193 = load ptr, ptr %buffer235, align 8
  %194 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8
  %195 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %cs236 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %195, i32 0, i32 5
  %196 = load i64, ptr %cs236, align 8
  %mul237 = mul i64 %194, %196
  %add.ptr238 = getelementptr inbounds %struct.dcomplex, ptr %193, i64 %mul237
  %197 = load i64, ptr @FLA_ZERO, align 8
  %198 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %rs239 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %198, i32 0, i32 4
  %199 = load i64, ptr %rs239, align 8
  %mul240 = mul i64 %197, %199
  %add.ptr241 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr238, i64 %mul240
  br label %cond.end242

cond.end242:                                      ; preds = %cond.false234, %cond.true231
  %cond243 = phi ptr [ %add.ptr233, %cond.true231 ], [ %add.ptr241, %cond.false234 ]
  store ptr %cond243, ptr %buff_0227, align 8
  %200 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %datatype245 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %200, i32 0, i32 0
  %201 = load i32, ptr %datatype245, align 8
  %cmp246 = icmp eq i32 %201, 105
  br i1 %cmp246, label %cond.true248, label %cond.false251

cond.true248:                                     ; preds = %cond.end242
  %202 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer249 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %202, i32 0, i32 12
  %203 = load ptr, ptr %buffer249, align 8
  %add.ptr250 = getelementptr inbounds i8, ptr %203, i64 32
  br label %cond.end259

cond.false251:                                    ; preds = %cond.end242
  %204 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer252 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %204, i32 0, i32 12
  %205 = load ptr, ptr %buffer252, align 8
  %206 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8
  %207 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %cs253 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %207, i32 0, i32 5
  %208 = load i64, ptr %cs253, align 8
  %mul254 = mul i64 %206, %208
  %add.ptr255 = getelementptr inbounds %struct.dcomplex, ptr %205, i64 %mul254
  %209 = load i64, ptr @FLA_ONE, align 8
  %210 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %rs256 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %210, i32 0, i32 4
  %211 = load i64, ptr %rs256, align 8
  %mul257 = mul i64 %209, %211
  %add.ptr258 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr255, i64 %mul257
  br label %cond.end259

cond.end259:                                      ; preds = %cond.false251, %cond.true248
  %cond260 = phi ptr [ %add.ptr250, %cond.true248 ], [ %add.ptr258, %cond.false251 ]
  store ptr %cond260, ptr %buff_1244, align 8
  %212 = load i32, ptr %blis_uplo, align 4
  %213 = load i32, ptr %m_A, align 4
  %214 = load i32, ptr %n_A, align 4
  %215 = load ptr, ptr %buff_0227, align 8
  %216 = load ptr, ptr %buff_A203, align 8
  %217 = load i32, ptr %rs_A, align 4
  %218 = load i32, ptr %cs_A, align 4
  call void @bl1_zsetmr(i32 noundef %212, i32 noundef %213, i32 noundef %214, ptr noundef %215, ptr noundef %216, i32 noundef %217, i32 noundef %218)
  %219 = load i32, ptr %diag.addr, align 4
  %cmp261 = icmp eq i32 %219, 500
  br i1 %cmp261, label %if.then263, label %if.else264

if.then263:                                       ; preds = %cond.end259
  %220 = load i32, ptr %m_A, align 4
  %221 = load i32, ptr %n_A, align 4
  %222 = load ptr, ptr %buff_1244, align 8
  %223 = load ptr, ptr %buff_A203, align 8
  %224 = load i32, ptr %rs_A, align 4
  %225 = load i32, ptr %cs_A, align 4
  call void @bl1_zsetdiag(i32 noundef 0, i32 noundef %220, i32 noundef %221, ptr noundef %222, ptr noundef %223, i32 noundef %224, i32 noundef %225)
  br label %if.end269

if.else264:                                       ; preds = %cond.end259
  %226 = load i32, ptr %diag.addr, align 4
  %cmp265 = icmp eq i32 %226, 502
  br i1 %cmp265, label %if.then267, label %if.end268

if.then267:                                       ; preds = %if.else264
  %227 = load i32, ptr %m_A, align 4
  %228 = load i32, ptr %n_A, align 4
  %229 = load ptr, ptr %buff_0227, align 8
  %230 = load ptr, ptr %buff_A203, align 8
  %231 = load i32, ptr %rs_A, align 4
  %232 = load i32, ptr %cs_A, align 4
  call void @bl1_zsetdiag(i32 noundef 0, i32 noundef %227, i32 noundef %228, ptr noundef %229, ptr noundef %230, i32 noundef %231, i32 noundef %232)
  br label %if.end268

if.end268:                                        ; preds = %if.then267, %if.else264
  br label %if.end269

if.end269:                                        ; preds = %if.end268, %if.then263
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end13, %if.end269, %if.end201, %if.end133, %if.end65
  ret i32 -1
}

declare i32 @FLA_Check_error_level() #1

declare i32 @FLA_Triangularize_check(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare void @FLA_Param_map_flame_to_blis_uplo(i32 noundef, ptr noundef) #1

declare void @bl1_ssetmr(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_ssetdiag(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_dsetmr(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_dsetdiag(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_csetmr(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_csetdiag(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_zsetmr(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_zsetdiag(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
