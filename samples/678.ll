; ModuleID = 'samples/678.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/lapack/red/eig/gest/iu/flamec/FLA_Eig_gest_iu_opt_var3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }
%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

@FLA_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_MINUS_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_MINUS_ONE_HALF = external global %struct.FLA_Obj_view, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Eig_gest_iu_opt_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B) #0 {
entry:
  %datatype = alloca i32, align 4
  %m_AB = alloca i32, align 4
  %rs_A = alloca i32, align 4
  %cs_A = alloca i32, align 4
  %rs_B = alloca i32, align 4
  %cs_B = alloca i32, align 4
  %rs_Y = alloca i32, align 4
  %cs_Y = alloca i32, align 4
  %buff_A = alloca ptr, align 8
  %buff_Y = alloca ptr, align 8
  %buff_B = alloca ptr, align 8
  %buff_A72 = alloca ptr, align 8
  %buff_Y96 = alloca ptr, align 8
  %buff_B120 = alloca ptr, align 8
  %buff_A146 = alloca ptr, align 8
  %buff_Y170 = alloca ptr, align 8
  %buff_B194 = alloca ptr, align 8
  %buff_A220 = alloca ptr, align 8
  %buff_Y244 = alloca ptr, align 8
  %buff_B268 = alloca ptr, align 8
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %datatype, align 4
  %call1 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr %m_AB, align 4
  %call2 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, ptr %rs_A, align 4
  %call4 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, ptr %cs_A, align 4
  %call6 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %rs_B, align 4
  %call8 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %cs_B, align 4
  %call10 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y)
  %conv11 = trunc i64 %call10 to i32
  store i32 %conv11, ptr %rs_Y, align 4
  %call12 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y)
  %conv13 = trunc i64 %call12 to i32
  store i32 %conv13, ptr %cs_Y, align 4
  %0 = load i32, ptr %datatype, align 4
  switch i32 %0, label %sw.epilog [
    i32 100, label %sw.bb
    i32 101, label %sw.bb71
    i32 102, label %sw.bb145
    i32 103, label %sw.bb219
  ]

sw.bb:                                            ; preds = %entry
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8
  %datatype14 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype14, align 8
  %cmp = icmp eq i32 %2, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base16 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %3 = load ptr, ptr %base16, align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base17 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %5 = load ptr, ptr %base17, align 8
  %buffer18 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer18, align 8
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8
  %base19 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %8 = load ptr, ptr %base19, align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8
  %mul = mul i64 %7, %9
  %add.ptr20 = getelementptr inbounds float, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8
  %base21 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %11 = load ptr, ptr %base21, align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8
  %mul22 = mul i64 %10, %12
  %add.ptr23 = getelementptr inbounds float, ptr %add.ptr20, i64 %mul22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr23, %cond.false ]
  store ptr %cond, ptr %buff_A, align 8
  %base24 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %13 = load ptr, ptr %base24, align 8
  %datatype25 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %datatype25, align 8
  %cmp26 = icmp eq i32 %14, 105
  br i1 %cmp26, label %cond.true28, label %cond.false32

cond.true28:                                      ; preds = %cond.end
  %base29 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %15 = load ptr, ptr %base29, align 8
  %buffer30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %buffer30, align 8
  %add.ptr31 = getelementptr inbounds i8, ptr %16, i64 8
  br label %cond.end45

cond.false32:                                     ; preds = %cond.end
  %base33 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %17 = load ptr, ptr %base33, align 8
  %buffer34 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %buffer34, align 8
  %offn35 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 1
  %19 = load i64, ptr %offn35, align 8
  %base36 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %20 = load ptr, ptr %base36, align 8
  %cs37 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %20, i32 0, i32 5
  %21 = load i64, ptr %cs37, align 8
  %mul38 = mul i64 %19, %21
  %add.ptr39 = getelementptr inbounds float, ptr %18, i64 %mul38
  %offm40 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 0
  %22 = load i64, ptr %offm40, align 8
  %base41 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %23 = load ptr, ptr %base41, align 8
  %rs42 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %23, i32 0, i32 4
  %24 = load i64, ptr %rs42, align 8
  %mul43 = mul i64 %22, %24
  %add.ptr44 = getelementptr inbounds float, ptr %add.ptr39, i64 %mul43
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false32, %cond.true28
  %cond46 = phi ptr [ %add.ptr31, %cond.true28 ], [ %add.ptr44, %cond.false32 ]
  store ptr %cond46, ptr %buff_Y, align 8
  %base47 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %25 = load ptr, ptr %base47, align 8
  %datatype48 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %datatype48, align 8
  %cmp49 = icmp eq i32 %26, 105
  br i1 %cmp49, label %cond.true51, label %cond.false55

cond.true51:                                      ; preds = %cond.end45
  %base52 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %27 = load ptr, ptr %base52, align 8
  %buffer53 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %buffer53, align 8
  %add.ptr54 = getelementptr inbounds i8, ptr %28, i64 8
  br label %cond.end68

cond.false55:                                     ; preds = %cond.end45
  %base56 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %29 = load ptr, ptr %base56, align 8
  %buffer57 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %buffer57, align 8
  %offn58 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 1
  %31 = load i64, ptr %offn58, align 8
  %base59 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %32 = load ptr, ptr %base59, align 8
  %cs60 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %32, i32 0, i32 5
  %33 = load i64, ptr %cs60, align 8
  %mul61 = mul i64 %31, %33
  %add.ptr62 = getelementptr inbounds float, ptr %30, i64 %mul61
  %offm63 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 0
  %34 = load i64, ptr %offm63, align 8
  %base64 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %35 = load ptr, ptr %base64, align 8
  %rs65 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %35, i32 0, i32 4
  %36 = load i64, ptr %rs65, align 8
  %mul66 = mul i64 %34, %36
  %add.ptr67 = getelementptr inbounds float, ptr %add.ptr62, i64 %mul66
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false55, %cond.true51
  %cond69 = phi ptr [ %add.ptr54, %cond.true51 ], [ %add.ptr67, %cond.false55 ]
  store ptr %cond69, ptr %buff_B, align 8
  %37 = load i32, ptr %m_AB, align 4
  %38 = load ptr, ptr %buff_A, align 8
  %39 = load i32, ptr %rs_A, align 4
  %40 = load i32, ptr %cs_A, align 4
  %41 = load ptr, ptr %buff_Y, align 8
  %42 = load i32, ptr %rs_Y, align 4
  %43 = load i32, ptr %cs_Y, align 4
  %44 = load ptr, ptr %buff_B, align 8
  %45 = load i32, ptr %rs_B, align 4
  %46 = load i32, ptr %cs_B, align 4
  %call70 = call i32 @FLA_Eig_gest_iu_ops_var3(i32 noundef %37, ptr noundef %38, i32 noundef %39, i32 noundef %40, ptr noundef %41, i32 noundef %42, i32 noundef %43, ptr noundef %44, i32 noundef %45, i32 noundef %46)
  br label %sw.epilog

sw.bb71:                                          ; preds = %entry
  %base73 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %47 = load ptr, ptr %base73, align 8
  %datatype74 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %47, i32 0, i32 0
  %48 = load i32, ptr %datatype74, align 8
  %cmp75 = icmp eq i32 %48, 105
  br i1 %cmp75, label %cond.true77, label %cond.false81

cond.true77:                                      ; preds = %sw.bb71
  %base78 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %49 = load ptr, ptr %base78, align 8
  %buffer79 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %49, i32 0, i32 12
  %50 = load ptr, ptr %buffer79, align 8
  %add.ptr80 = getelementptr inbounds i8, ptr %50, i64 16
  br label %cond.end94

cond.false81:                                     ; preds = %sw.bb71
  %base82 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %51 = load ptr, ptr %base82, align 8
  %buffer83 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %51, i32 0, i32 12
  %52 = load ptr, ptr %buffer83, align 8
  %offn84 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %53 = load i64, ptr %offn84, align 8
  %base85 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %54 = load ptr, ptr %base85, align 8
  %cs86 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %54, i32 0, i32 5
  %55 = load i64, ptr %cs86, align 8
  %mul87 = mul i64 %53, %55
  %add.ptr88 = getelementptr inbounds double, ptr %52, i64 %mul87
  %offm89 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %56 = load i64, ptr %offm89, align 8
  %base90 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %57 = load ptr, ptr %base90, align 8
  %rs91 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %57, i32 0, i32 4
  %58 = load i64, ptr %rs91, align 8
  %mul92 = mul i64 %56, %58
  %add.ptr93 = getelementptr inbounds double, ptr %add.ptr88, i64 %mul92
  br label %cond.end94

cond.end94:                                       ; preds = %cond.false81, %cond.true77
  %cond95 = phi ptr [ %add.ptr80, %cond.true77 ], [ %add.ptr93, %cond.false81 ]
  store ptr %cond95, ptr %buff_A72, align 8
  %base97 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %59 = load ptr, ptr %base97, align 8
  %datatype98 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %59, i32 0, i32 0
  %60 = load i32, ptr %datatype98, align 8
  %cmp99 = icmp eq i32 %60, 105
  br i1 %cmp99, label %cond.true101, label %cond.false105

cond.true101:                                     ; preds = %cond.end94
  %base102 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %61 = load ptr, ptr %base102, align 8
  %buffer103 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %61, i32 0, i32 12
  %62 = load ptr, ptr %buffer103, align 8
  %add.ptr104 = getelementptr inbounds i8, ptr %62, i64 16
  br label %cond.end118

cond.false105:                                    ; preds = %cond.end94
  %base106 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %63 = load ptr, ptr %base106, align 8
  %buffer107 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %63, i32 0, i32 12
  %64 = load ptr, ptr %buffer107, align 8
  %offn108 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 1
  %65 = load i64, ptr %offn108, align 8
  %base109 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %66 = load ptr, ptr %base109, align 8
  %cs110 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %66, i32 0, i32 5
  %67 = load i64, ptr %cs110, align 8
  %mul111 = mul i64 %65, %67
  %add.ptr112 = getelementptr inbounds double, ptr %64, i64 %mul111
  %offm113 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 0
  %68 = load i64, ptr %offm113, align 8
  %base114 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %69 = load ptr, ptr %base114, align 8
  %rs115 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %69, i32 0, i32 4
  %70 = load i64, ptr %rs115, align 8
  %mul116 = mul i64 %68, %70
  %add.ptr117 = getelementptr inbounds double, ptr %add.ptr112, i64 %mul116
  br label %cond.end118

cond.end118:                                      ; preds = %cond.false105, %cond.true101
  %cond119 = phi ptr [ %add.ptr104, %cond.true101 ], [ %add.ptr117, %cond.false105 ]
  store ptr %cond119, ptr %buff_Y96, align 8
  %base121 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %71 = load ptr, ptr %base121, align 8
  %datatype122 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %71, i32 0, i32 0
  %72 = load i32, ptr %datatype122, align 8
  %cmp123 = icmp eq i32 %72, 105
  br i1 %cmp123, label %cond.true125, label %cond.false129

cond.true125:                                     ; preds = %cond.end118
  %base126 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %73 = load ptr, ptr %base126, align 8
  %buffer127 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %73, i32 0, i32 12
  %74 = load ptr, ptr %buffer127, align 8
  %add.ptr128 = getelementptr inbounds i8, ptr %74, i64 16
  br label %cond.end142

cond.false129:                                    ; preds = %cond.end118
  %base130 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %75 = load ptr, ptr %base130, align 8
  %buffer131 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %75, i32 0, i32 12
  %76 = load ptr, ptr %buffer131, align 8
  %offn132 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 1
  %77 = load i64, ptr %offn132, align 8
  %base133 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %78 = load ptr, ptr %base133, align 8
  %cs134 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %78, i32 0, i32 5
  %79 = load i64, ptr %cs134, align 8
  %mul135 = mul i64 %77, %79
  %add.ptr136 = getelementptr inbounds double, ptr %76, i64 %mul135
  %offm137 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 0
  %80 = load i64, ptr %offm137, align 8
  %base138 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %81 = load ptr, ptr %base138, align 8
  %rs139 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %81, i32 0, i32 4
  %82 = load i64, ptr %rs139, align 8
  %mul140 = mul i64 %80, %82
  %add.ptr141 = getelementptr inbounds double, ptr %add.ptr136, i64 %mul140
  br label %cond.end142

cond.end142:                                      ; preds = %cond.false129, %cond.true125
  %cond143 = phi ptr [ %add.ptr128, %cond.true125 ], [ %add.ptr141, %cond.false129 ]
  store ptr %cond143, ptr %buff_B120, align 8
  %83 = load i32, ptr %m_AB, align 4
  %84 = load ptr, ptr %buff_A72, align 8
  %85 = load i32, ptr %rs_A, align 4
  %86 = load i32, ptr %cs_A, align 4
  %87 = load ptr, ptr %buff_Y96, align 8
  %88 = load i32, ptr %rs_Y, align 4
  %89 = load i32, ptr %cs_Y, align 4
  %90 = load ptr, ptr %buff_B120, align 8
  %91 = load i32, ptr %rs_B, align 4
  %92 = load i32, ptr %cs_B, align 4
  %call144 = call i32 @FLA_Eig_gest_iu_opd_var3(i32 noundef %83, ptr noundef %84, i32 noundef %85, i32 noundef %86, ptr noundef %87, i32 noundef %88, i32 noundef %89, ptr noundef %90, i32 noundef %91, i32 noundef %92)
  br label %sw.epilog

sw.bb145:                                         ; preds = %entry
  %base147 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %93 = load ptr, ptr %base147, align 8
  %datatype148 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %93, i32 0, i32 0
  %94 = load i32, ptr %datatype148, align 8
  %cmp149 = icmp eq i32 %94, 105
  br i1 %cmp149, label %cond.true151, label %cond.false155

cond.true151:                                     ; preds = %sw.bb145
  %base152 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %95 = load ptr, ptr %base152, align 8
  %buffer153 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %95, i32 0, i32 12
  %96 = load ptr, ptr %buffer153, align 8
  %add.ptr154 = getelementptr inbounds i8, ptr %96, i64 24
  br label %cond.end168

cond.false155:                                    ; preds = %sw.bb145
  %base156 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %97 = load ptr, ptr %base156, align 8
  %buffer157 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %97, i32 0, i32 12
  %98 = load ptr, ptr %buffer157, align 8
  %offn158 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %99 = load i64, ptr %offn158, align 8
  %base159 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %100 = load ptr, ptr %base159, align 8
  %cs160 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %100, i32 0, i32 5
  %101 = load i64, ptr %cs160, align 8
  %mul161 = mul i64 %99, %101
  %add.ptr162 = getelementptr inbounds %struct.scomplex, ptr %98, i64 %mul161
  %offm163 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %102 = load i64, ptr %offm163, align 8
  %base164 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %103 = load ptr, ptr %base164, align 8
  %rs165 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %103, i32 0, i32 4
  %104 = load i64, ptr %rs165, align 8
  %mul166 = mul i64 %102, %104
  %add.ptr167 = getelementptr inbounds %struct.scomplex, ptr %add.ptr162, i64 %mul166
  br label %cond.end168

cond.end168:                                      ; preds = %cond.false155, %cond.true151
  %cond169 = phi ptr [ %add.ptr154, %cond.true151 ], [ %add.ptr167, %cond.false155 ]
  store ptr %cond169, ptr %buff_A146, align 8
  %base171 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %105 = load ptr, ptr %base171, align 8
  %datatype172 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %105, i32 0, i32 0
  %106 = load i32, ptr %datatype172, align 8
  %cmp173 = icmp eq i32 %106, 105
  br i1 %cmp173, label %cond.true175, label %cond.false179

cond.true175:                                     ; preds = %cond.end168
  %base176 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %107 = load ptr, ptr %base176, align 8
  %buffer177 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %107, i32 0, i32 12
  %108 = load ptr, ptr %buffer177, align 8
  %add.ptr178 = getelementptr inbounds i8, ptr %108, i64 24
  br label %cond.end192

cond.false179:                                    ; preds = %cond.end168
  %base180 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %109 = load ptr, ptr %base180, align 8
  %buffer181 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %109, i32 0, i32 12
  %110 = load ptr, ptr %buffer181, align 8
  %offn182 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 1
  %111 = load i64, ptr %offn182, align 8
  %base183 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %112 = load ptr, ptr %base183, align 8
  %cs184 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %112, i32 0, i32 5
  %113 = load i64, ptr %cs184, align 8
  %mul185 = mul i64 %111, %113
  %add.ptr186 = getelementptr inbounds %struct.scomplex, ptr %110, i64 %mul185
  %offm187 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 0
  %114 = load i64, ptr %offm187, align 8
  %base188 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %115 = load ptr, ptr %base188, align 8
  %rs189 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %115, i32 0, i32 4
  %116 = load i64, ptr %rs189, align 8
  %mul190 = mul i64 %114, %116
  %add.ptr191 = getelementptr inbounds %struct.scomplex, ptr %add.ptr186, i64 %mul190
  br label %cond.end192

cond.end192:                                      ; preds = %cond.false179, %cond.true175
  %cond193 = phi ptr [ %add.ptr178, %cond.true175 ], [ %add.ptr191, %cond.false179 ]
  store ptr %cond193, ptr %buff_Y170, align 8
  %base195 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %117 = load ptr, ptr %base195, align 8
  %datatype196 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %117, i32 0, i32 0
  %118 = load i32, ptr %datatype196, align 8
  %cmp197 = icmp eq i32 %118, 105
  br i1 %cmp197, label %cond.true199, label %cond.false203

cond.true199:                                     ; preds = %cond.end192
  %base200 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %119 = load ptr, ptr %base200, align 8
  %buffer201 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %119, i32 0, i32 12
  %120 = load ptr, ptr %buffer201, align 8
  %add.ptr202 = getelementptr inbounds i8, ptr %120, i64 24
  br label %cond.end216

cond.false203:                                    ; preds = %cond.end192
  %base204 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %121 = load ptr, ptr %base204, align 8
  %buffer205 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %121, i32 0, i32 12
  %122 = load ptr, ptr %buffer205, align 8
  %offn206 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 1
  %123 = load i64, ptr %offn206, align 8
  %base207 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %124 = load ptr, ptr %base207, align 8
  %cs208 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %124, i32 0, i32 5
  %125 = load i64, ptr %cs208, align 8
  %mul209 = mul i64 %123, %125
  %add.ptr210 = getelementptr inbounds %struct.scomplex, ptr %122, i64 %mul209
  %offm211 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 0
  %126 = load i64, ptr %offm211, align 8
  %base212 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %127 = load ptr, ptr %base212, align 8
  %rs213 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %127, i32 0, i32 4
  %128 = load i64, ptr %rs213, align 8
  %mul214 = mul i64 %126, %128
  %add.ptr215 = getelementptr inbounds %struct.scomplex, ptr %add.ptr210, i64 %mul214
  br label %cond.end216

cond.end216:                                      ; preds = %cond.false203, %cond.true199
  %cond217 = phi ptr [ %add.ptr202, %cond.true199 ], [ %add.ptr215, %cond.false203 ]
  store ptr %cond217, ptr %buff_B194, align 8
  %129 = load i32, ptr %m_AB, align 4
  %130 = load ptr, ptr %buff_A146, align 8
  %131 = load i32, ptr %rs_A, align 4
  %132 = load i32, ptr %cs_A, align 4
  %133 = load ptr, ptr %buff_Y170, align 8
  %134 = load i32, ptr %rs_Y, align 4
  %135 = load i32, ptr %cs_Y, align 4
  %136 = load ptr, ptr %buff_B194, align 8
  %137 = load i32, ptr %rs_B, align 4
  %138 = load i32, ptr %cs_B, align 4
  %call218 = call i32 @FLA_Eig_gest_iu_opc_var3(i32 noundef %129, ptr noundef %130, i32 noundef %131, i32 noundef %132, ptr noundef %133, i32 noundef %134, i32 noundef %135, ptr noundef %136, i32 noundef %137, i32 noundef %138)
  br label %sw.epilog

sw.bb219:                                         ; preds = %entry
  %base221 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %139 = load ptr, ptr %base221, align 8
  %datatype222 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %139, i32 0, i32 0
  %140 = load i32, ptr %datatype222, align 8
  %cmp223 = icmp eq i32 %140, 105
  br i1 %cmp223, label %cond.true225, label %cond.false229

cond.true225:                                     ; preds = %sw.bb219
  %base226 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %141 = load ptr, ptr %base226, align 8
  %buffer227 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %141, i32 0, i32 12
  %142 = load ptr, ptr %buffer227, align 8
  %add.ptr228 = getelementptr inbounds i8, ptr %142, i64 32
  br label %cond.end242

cond.false229:                                    ; preds = %sw.bb219
  %base230 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %143 = load ptr, ptr %base230, align 8
  %buffer231 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %143, i32 0, i32 12
  %144 = load ptr, ptr %buffer231, align 8
  %offn232 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %145 = load i64, ptr %offn232, align 8
  %base233 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %146 = load ptr, ptr %base233, align 8
  %cs234 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %146, i32 0, i32 5
  %147 = load i64, ptr %cs234, align 8
  %mul235 = mul i64 %145, %147
  %add.ptr236 = getelementptr inbounds %struct.dcomplex, ptr %144, i64 %mul235
  %offm237 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %148 = load i64, ptr %offm237, align 8
  %base238 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %149 = load ptr, ptr %base238, align 8
  %rs239 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %149, i32 0, i32 4
  %150 = load i64, ptr %rs239, align 8
  %mul240 = mul i64 %148, %150
  %add.ptr241 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr236, i64 %mul240
  br label %cond.end242

cond.end242:                                      ; preds = %cond.false229, %cond.true225
  %cond243 = phi ptr [ %add.ptr228, %cond.true225 ], [ %add.ptr241, %cond.false229 ]
  store ptr %cond243, ptr %buff_A220, align 8
  %base245 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %151 = load ptr, ptr %base245, align 8
  %datatype246 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %151, i32 0, i32 0
  %152 = load i32, ptr %datatype246, align 8
  %cmp247 = icmp eq i32 %152, 105
  br i1 %cmp247, label %cond.true249, label %cond.false253

cond.true249:                                     ; preds = %cond.end242
  %base250 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %153 = load ptr, ptr %base250, align 8
  %buffer251 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %153, i32 0, i32 12
  %154 = load ptr, ptr %buffer251, align 8
  %add.ptr252 = getelementptr inbounds i8, ptr %154, i64 32
  br label %cond.end266

cond.false253:                                    ; preds = %cond.end242
  %base254 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %155 = load ptr, ptr %base254, align 8
  %buffer255 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %155, i32 0, i32 12
  %156 = load ptr, ptr %buffer255, align 8
  %offn256 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 1
  %157 = load i64, ptr %offn256, align 8
  %base257 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %158 = load ptr, ptr %base257, align 8
  %cs258 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %158, i32 0, i32 5
  %159 = load i64, ptr %cs258, align 8
  %mul259 = mul i64 %157, %159
  %add.ptr260 = getelementptr inbounds %struct.dcomplex, ptr %156, i64 %mul259
  %offm261 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 0
  %160 = load i64, ptr %offm261, align 8
  %base262 = getelementptr inbounds %struct.FLA_Obj_view, ptr %Y, i32 0, i32 6
  %161 = load ptr, ptr %base262, align 8
  %rs263 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %161, i32 0, i32 4
  %162 = load i64, ptr %rs263, align 8
  %mul264 = mul i64 %160, %162
  %add.ptr265 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr260, i64 %mul264
  br label %cond.end266

cond.end266:                                      ; preds = %cond.false253, %cond.true249
  %cond267 = phi ptr [ %add.ptr252, %cond.true249 ], [ %add.ptr265, %cond.false253 ]
  store ptr %cond267, ptr %buff_Y244, align 8
  %base269 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %163 = load ptr, ptr %base269, align 8
  %datatype270 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %163, i32 0, i32 0
  %164 = load i32, ptr %datatype270, align 8
  %cmp271 = icmp eq i32 %164, 105
  br i1 %cmp271, label %cond.true273, label %cond.false277

cond.true273:                                     ; preds = %cond.end266
  %base274 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %165 = load ptr, ptr %base274, align 8
  %buffer275 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %165, i32 0, i32 12
  %166 = load ptr, ptr %buffer275, align 8
  %add.ptr276 = getelementptr inbounds i8, ptr %166, i64 32
  br label %cond.end290

cond.false277:                                    ; preds = %cond.end266
  %base278 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %167 = load ptr, ptr %base278, align 8
  %buffer279 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %167, i32 0, i32 12
  %168 = load ptr, ptr %buffer279, align 8
  %offn280 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 1
  %169 = load i64, ptr %offn280, align 8
  %base281 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %170 = load ptr, ptr %base281, align 8
  %cs282 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %170, i32 0, i32 5
  %171 = load i64, ptr %cs282, align 8
  %mul283 = mul i64 %169, %171
  %add.ptr284 = getelementptr inbounds %struct.dcomplex, ptr %168, i64 %mul283
  %offm285 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 0
  %172 = load i64, ptr %offm285, align 8
  %base286 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %173 = load ptr, ptr %base286, align 8
  %rs287 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %173, i32 0, i32 4
  %174 = load i64, ptr %rs287, align 8
  %mul288 = mul i64 %172, %174
  %add.ptr289 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr284, i64 %mul288
  br label %cond.end290

cond.end290:                                      ; preds = %cond.false277, %cond.true273
  %cond291 = phi ptr [ %add.ptr276, %cond.true273 ], [ %add.ptr289, %cond.false277 ]
  store ptr %cond291, ptr %buff_B268, align 8
  %175 = load i32, ptr %m_AB, align 4
  %176 = load ptr, ptr %buff_A220, align 8
  %177 = load i32, ptr %rs_A, align 4
  %178 = load i32, ptr %cs_A, align 4
  %179 = load ptr, ptr %buff_Y244, align 8
  %180 = load i32, ptr %rs_Y, align 4
  %181 = load i32, ptr %cs_Y, align 4
  %182 = load ptr, ptr %buff_B268, align 8
  %183 = load i32, ptr %rs_B, align 4
  %184 = load i32, ptr %cs_B, align 4
  %call292 = call i32 @FLA_Eig_gest_iu_opz_var3(i32 noundef %175, ptr noundef %176, i32 noundef %177, i32 noundef %178, ptr noundef %179, i32 noundef %180, i32 noundef %181, ptr noundef %182, i32 noundef %183, i32 noundef %184)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end290, %cond.end216, %cond.end142, %cond.end68
  ret i32 -1
}

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Eig_gest_iu_ops_var3(i32 noundef %m_AB, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_Y, i32 noundef %rs_Y, i32 noundef %cs_Y, ptr noundef %buff_B, i32 noundef %rs_B, i32 noundef %cs_B) #0 {
entry:
  %m_AB.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_Y.addr = alloca ptr, align 8
  %rs_Y.addr = alloca i32, align 4
  %cs_Y.addr = alloca i32, align 4
  %buff_B.addr = alloca ptr, align 8
  %rs_B.addr = alloca i32, align 4
  %cs_B.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %buff_m1h = alloca ptr, align 8
  %i = alloca i32, align 4
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %y01 = alloca ptr, align 8
  %Y02 = alloca ptr, align 8
  %y12t = alloca ptr, align 8
  %b01 = alloca ptr, align 8
  %beta11 = alloca ptr, align 8
  %B02 = alloca ptr, align 8
  %b12t = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  store i32 %m_AB, ptr %m_AB.addr, align 4
  store ptr %buff_A, ptr %buff_A.addr, align 8
  store i32 %rs_A, ptr %rs_A.addr, align 4
  store i32 %cs_A, ptr %cs_A.addr, align 4
  store ptr %buff_Y, ptr %buff_Y.addr, align 8
  store i32 %rs_Y, ptr %rs_Y.addr, align 4
  store i32 %cs_Y, ptr %cs_Y.addr, align 4
  store ptr %buff_B, ptr %buff_B.addr, align 8
  store i32 %rs_B, ptr %rs_B.addr, align 4
  store i32 %cs_B, ptr %cs_B.addr, align 4
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
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 8
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds float, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_MINUS_ONE, align 8
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds float, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_m1, align 8
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 8
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 1), align 8
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds float, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_MINUS_ONE_HALF, align 8
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds float, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_m1h, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end33
  %36 = load i32, ptr %i, align 4
  %37 = load i32, ptr %m_AB.addr, align 4
  %cmp35 = icmp slt i32 %36, %37
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load ptr, ptr %buff_A.addr, align 8
  %39 = load i32, ptr %i, align 4
  %40 = load i32, ptr %cs_A.addr, align 4
  %mul36 = mul nsw i32 %39, %40
  %idx.ext = sext i32 %mul36 to i64
  %add.ptr37 = getelementptr inbounds float, ptr %38, i64 %idx.ext
  %41 = load i32, ptr %rs_A.addr, align 4
  %mul38 = mul nsw i32 0, %41
  %idx.ext39 = sext i32 %mul38 to i64
  %add.ptr40 = getelementptr inbounds float, ptr %add.ptr37, i64 %idx.ext39
  store ptr %add.ptr40, ptr %a01, align 8
  %42 = load ptr, ptr %buff_A.addr, align 8
  %43 = load i32, ptr %i, align 4
  %44 = load i32, ptr %cs_A.addr, align 4
  %mul41 = mul nsw i32 %43, %44
  %idx.ext42 = sext i32 %mul41 to i64
  %add.ptr43 = getelementptr inbounds float, ptr %42, i64 %idx.ext42
  %45 = load i32, ptr %i, align 4
  %46 = load i32, ptr %rs_A.addr, align 4
  %mul44 = mul nsw i32 %45, %46
  %idx.ext45 = sext i32 %mul44 to i64
  %add.ptr46 = getelementptr inbounds float, ptr %add.ptr43, i64 %idx.ext45
  store ptr %add.ptr46, ptr %alpha11, align 8
  %47 = load ptr, ptr %buff_A.addr, align 8
  %48 = load i32, ptr %i, align 4
  %add = add nsw i32 %48, 1
  %49 = load i32, ptr %cs_A.addr, align 4
  %mul47 = mul nsw i32 %add, %49
  %idx.ext48 = sext i32 %mul47 to i64
  %add.ptr49 = getelementptr inbounds float, ptr %47, i64 %idx.ext48
  %50 = load i32, ptr %rs_A.addr, align 4
  %mul50 = mul nsw i32 0, %50
  %idx.ext51 = sext i32 %mul50 to i64
  %add.ptr52 = getelementptr inbounds float, ptr %add.ptr49, i64 %idx.ext51
  store ptr %add.ptr52, ptr %A02, align 8
  %51 = load ptr, ptr %buff_A.addr, align 8
  %52 = load i32, ptr %i, align 4
  %add53 = add nsw i32 %52, 1
  %53 = load i32, ptr %cs_A.addr, align 4
  %mul54 = mul nsw i32 %add53, %53
  %idx.ext55 = sext i32 %mul54 to i64
  %add.ptr56 = getelementptr inbounds float, ptr %51, i64 %idx.ext55
  %54 = load i32, ptr %i, align 4
  %55 = load i32, ptr %rs_A.addr, align 4
  %mul57 = mul nsw i32 %54, %55
  %idx.ext58 = sext i32 %mul57 to i64
  %add.ptr59 = getelementptr inbounds float, ptr %add.ptr56, i64 %idx.ext58
  store ptr %add.ptr59, ptr %a12t, align 8
  %56 = load ptr, ptr %buff_Y.addr, align 8
  %57 = load i32, ptr %i, align 4
  %58 = load i32, ptr %cs_Y.addr, align 4
  %mul60 = mul nsw i32 %57, %58
  %idx.ext61 = sext i32 %mul60 to i64
  %add.ptr62 = getelementptr inbounds float, ptr %56, i64 %idx.ext61
  %59 = load i32, ptr %rs_Y.addr, align 4
  %mul63 = mul nsw i32 0, %59
  %idx.ext64 = sext i32 %mul63 to i64
  %add.ptr65 = getelementptr inbounds float, ptr %add.ptr62, i64 %idx.ext64
  store ptr %add.ptr65, ptr %y01, align 8
  %60 = load ptr, ptr %buff_Y.addr, align 8
  %61 = load i32, ptr %i, align 4
  %add66 = add nsw i32 %61, 1
  %62 = load i32, ptr %cs_Y.addr, align 4
  %mul67 = mul nsw i32 %add66, %62
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds float, ptr %60, i64 %idx.ext68
  %63 = load i32, ptr %rs_Y.addr, align 4
  %mul70 = mul nsw i32 0, %63
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds float, ptr %add.ptr69, i64 %idx.ext71
  store ptr %add.ptr72, ptr %Y02, align 8
  %64 = load ptr, ptr %buff_Y.addr, align 8
  %65 = load i32, ptr %i, align 4
  %add73 = add nsw i32 %65, 1
  %66 = load i32, ptr %cs_Y.addr, align 4
  %mul74 = mul nsw i32 %add73, %66
  %idx.ext75 = sext i32 %mul74 to i64
  %add.ptr76 = getelementptr inbounds float, ptr %64, i64 %idx.ext75
  %67 = load i32, ptr %i, align 4
  %68 = load i32, ptr %rs_Y.addr, align 4
  %mul77 = mul nsw i32 %67, %68
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds float, ptr %add.ptr76, i64 %idx.ext78
  store ptr %add.ptr79, ptr %y12t, align 8
  %69 = load ptr, ptr %buff_B.addr, align 8
  %70 = load i32, ptr %i, align 4
  %71 = load i32, ptr %cs_B.addr, align 4
  %mul80 = mul nsw i32 %70, %71
  %idx.ext81 = sext i32 %mul80 to i64
  %add.ptr82 = getelementptr inbounds float, ptr %69, i64 %idx.ext81
  %72 = load i32, ptr %rs_B.addr, align 4
  %mul83 = mul nsw i32 0, %72
  %idx.ext84 = sext i32 %mul83 to i64
  %add.ptr85 = getelementptr inbounds float, ptr %add.ptr82, i64 %idx.ext84
  store ptr %add.ptr85, ptr %b01, align 8
  %73 = load ptr, ptr %buff_B.addr, align 8
  %74 = load i32, ptr %i, align 4
  %75 = load i32, ptr %cs_B.addr, align 4
  %mul86 = mul nsw i32 %74, %75
  %idx.ext87 = sext i32 %mul86 to i64
  %add.ptr88 = getelementptr inbounds float, ptr %73, i64 %idx.ext87
  %76 = load i32, ptr %i, align 4
  %77 = load i32, ptr %rs_B.addr, align 4
  %mul89 = mul nsw i32 %76, %77
  %idx.ext90 = sext i32 %mul89 to i64
  %add.ptr91 = getelementptr inbounds float, ptr %add.ptr88, i64 %idx.ext90
  store ptr %add.ptr91, ptr %beta11, align 8
  %78 = load ptr, ptr %buff_B.addr, align 8
  %79 = load i32, ptr %i, align 4
  %add92 = add nsw i32 %79, 1
  %80 = load i32, ptr %cs_B.addr, align 4
  %mul93 = mul nsw i32 %add92, %80
  %idx.ext94 = sext i32 %mul93 to i64
  %add.ptr95 = getelementptr inbounds float, ptr %78, i64 %idx.ext94
  %81 = load i32, ptr %rs_B.addr, align 4
  %mul96 = mul nsw i32 0, %81
  %idx.ext97 = sext i32 %mul96 to i64
  %add.ptr98 = getelementptr inbounds float, ptr %add.ptr95, i64 %idx.ext97
  store ptr %add.ptr98, ptr %B02, align 8
  %82 = load ptr, ptr %buff_B.addr, align 8
  %83 = load i32, ptr %i, align 4
  %add99 = add nsw i32 %83, 1
  %84 = load i32, ptr %cs_B.addr, align 4
  %mul100 = mul nsw i32 %add99, %84
  %idx.ext101 = sext i32 %mul100 to i64
  %add.ptr102 = getelementptr inbounds float, ptr %82, i64 %idx.ext101
  %85 = load i32, ptr %i, align 4
  %86 = load i32, ptr %rs_B.addr, align 4
  %mul103 = mul nsw i32 %85, %86
  %idx.ext104 = sext i32 %mul103 to i64
  %add.ptr105 = getelementptr inbounds float, ptr %add.ptr102, i64 %idx.ext104
  store ptr %add.ptr105, ptr %b12t, align 8
  %87 = load i32, ptr %m_AB.addr, align 4
  %88 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %87, %88
  %sub106 = sub nsw i32 %sub, 1
  store i32 %sub106, ptr %m_ahead, align 4
  %89 = load i32, ptr %i, align 4
  store i32 %89, ptr %m_behind, align 4
  %90 = load i32, ptr %m_behind, align 4
  %91 = load ptr, ptr %buff_m1h, align 8
  %92 = load ptr, ptr %y01, align 8
  %93 = load i32, ptr %rs_Y.addr, align 4
  %94 = load ptr, ptr %a01, align 8
  %95 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %90, ptr noundef %91, ptr noundef %92, i32 noundef %93, ptr noundef %94, i32 noundef %95)
  %96 = load i32, ptr %m_behind, align 4
  %97 = load ptr, ptr %buff_m1, align 8
  %98 = load ptr, ptr %a01, align 8
  %99 = load i32, ptr %rs_A.addr, align 4
  %100 = load ptr, ptr %b01, align 8
  %101 = load i32, ptr %rs_B.addr, align 4
  %102 = load ptr, ptr %buff_1, align 8
  %103 = load ptr, ptr %alpha11, align 8
  call void @bl1_sdot2s(i32 noundef 501, i32 noundef %96, ptr noundef %97, ptr noundef %98, i32 noundef %99, ptr noundef %100, i32 noundef %101, ptr noundef %102, ptr noundef %103)
  %104 = load ptr, ptr %alpha11, align 8
  %105 = load float, ptr %104, align 4
  %106 = load ptr, ptr %beta11, align 8
  %107 = load float, ptr %106, align 4
  %div = fdiv float %105, %107
  %108 = load ptr, ptr %alpha11, align 8
  store float %div, ptr %108, align 4
  %109 = load ptr, ptr %alpha11, align 8
  %110 = load float, ptr %109, align 4
  %111 = load ptr, ptr %beta11, align 8
  %112 = load float, ptr %111, align 4
  %div107 = fdiv float %110, %112
  %113 = load ptr, ptr %alpha11, align 8
  store float %div107, ptr %113, align 4
  %114 = load i32, ptr %m_behind, align 4
  %115 = load i32, ptr %m_ahead, align 4
  %116 = load ptr, ptr %buff_m1, align 8
  %117 = load ptr, ptr %A02, align 8
  %118 = load i32, ptr %rs_A.addr, align 4
  %119 = load i32, ptr %cs_A.addr, align 4
  %120 = load ptr, ptr %b01, align 8
  %121 = load i32, ptr %rs_B.addr, align 4
  %122 = load ptr, ptr %buff_1, align 8
  %123 = load ptr, ptr %a12t, align 8
  %124 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_sgemv(i32 noundef 101, i32 noundef 501, i32 noundef %114, i32 noundef %115, ptr noundef %116, ptr noundef %117, i32 noundef %118, i32 noundef %119, ptr noundef %120, i32 noundef %121, ptr noundef %122, ptr noundef %123, i32 noundef %124)
  %125 = load i32, ptr %m_ahead, align 4
  %126 = load ptr, ptr %beta11, align 8
  %127 = load ptr, ptr %a12t, align 8
  %128 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_sinvscalv(i32 noundef 500, i32 noundef %125, ptr noundef %126, ptr noundef %127, i32 noundef %128)
  %129 = load i32, ptr %m_behind, align 4
  %130 = load ptr, ptr %buff_m1h, align 8
  %131 = load ptr, ptr %y01, align 8
  %132 = load i32, ptr %rs_Y.addr, align 4
  %133 = load ptr, ptr %a01, align 8
  %134 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %129, ptr noundef %130, ptr noundef %131, i32 noundef %132, ptr noundef %133, i32 noundef %134)
  %135 = load i32, ptr %m_behind, align 4
  %136 = load ptr, ptr %beta11, align 8
  %137 = load ptr, ptr %a01, align 8
  %138 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_sinvscalv(i32 noundef 500, i32 noundef %135, ptr noundef %136, ptr noundef %137, i32 noundef %138)
  %139 = load i32, ptr %m_behind, align 4
  %140 = load i32, ptr %m_ahead, align 4
  %141 = load ptr, ptr %buff_1, align 8
  %142 = load ptr, ptr %a01, align 8
  %143 = load i32, ptr %rs_A.addr, align 4
  %144 = load ptr, ptr %b12t, align 8
  %145 = load i32, ptr %cs_B.addr, align 4
  %146 = load ptr, ptr %Y02, align 8
  %147 = load i32, ptr %rs_Y.addr, align 4
  %148 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_sger(i32 noundef 500, i32 noundef 500, i32 noundef %139, i32 noundef %140, ptr noundef %141, ptr noundef %142, i32 noundef %143, ptr noundef %144, i32 noundef %145, ptr noundef %146, i32 noundef %147, i32 noundef %148)
  %149 = load i32, ptr %m_ahead, align 4
  %150 = load ptr, ptr %b12t, align 8
  %151 = load i32, ptr %cs_B.addr, align 4
  %152 = load ptr, ptr %y12t, align 8
  %153 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_scopyv(i32 noundef 500, i32 noundef %149, ptr noundef %150, i32 noundef %151, ptr noundef %152, i32 noundef %153)
  %154 = load i32, ptr %m_ahead, align 4
  %155 = load ptr, ptr %alpha11, align 8
  %156 = load ptr, ptr %y12t, align 8
  %157 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_sscalv(i32 noundef 500, i32 noundef %154, ptr noundef %155, ptr noundef %156, i32 noundef %157)
  %158 = load i32, ptr %m_behind, align 4
  %159 = load i32, ptr %m_ahead, align 4
  %160 = load ptr, ptr %buff_1, align 8
  %161 = load ptr, ptr %B02, align 8
  %162 = load i32, ptr %rs_B.addr, align 4
  %163 = load i32, ptr %cs_B.addr, align 4
  %164 = load ptr, ptr %a01, align 8
  %165 = load i32, ptr %rs_A.addr, align 4
  %166 = load ptr, ptr %buff_1, align 8
  %167 = load ptr, ptr %y12t, align 8
  %168 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_sgemv(i32 noundef 101, i32 noundef 501, i32 noundef %158, i32 noundef %159, ptr noundef %160, ptr noundef %161, i32 noundef %162, i32 noundef %163, ptr noundef %164, i32 noundef %165, ptr noundef %166, ptr noundef %167, i32 noundef %168)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %169 = load i32, ptr %i, align 4
  %inc = add nsw i32 %169, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Eig_gest_iu_opd_var3(i32 noundef %m_AB, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_Y, i32 noundef %rs_Y, i32 noundef %cs_Y, ptr noundef %buff_B, i32 noundef %rs_B, i32 noundef %cs_B) #0 {
entry:
  %m_AB.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_Y.addr = alloca ptr, align 8
  %rs_Y.addr = alloca i32, align 4
  %cs_Y.addr = alloca i32, align 4
  %buff_B.addr = alloca ptr, align 8
  %rs_B.addr = alloca i32, align 4
  %cs_B.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %buff_m1h = alloca ptr, align 8
  %i = alloca i32, align 4
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %y01 = alloca ptr, align 8
  %Y02 = alloca ptr, align 8
  %y12t = alloca ptr, align 8
  %b01 = alloca ptr, align 8
  %beta11 = alloca ptr, align 8
  %B02 = alloca ptr, align 8
  %b12t = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  store i32 %m_AB, ptr %m_AB.addr, align 4
  store ptr %buff_A, ptr %buff_A.addr, align 8
  store i32 %rs_A, ptr %rs_A.addr, align 4
  store i32 %cs_A, ptr %cs_A.addr, align 4
  store ptr %buff_Y, ptr %buff_Y.addr, align 8
  store i32 %rs_Y, ptr %rs_Y.addr, align 4
  store i32 %cs_Y, ptr %cs_Y.addr, align 4
  store ptr %buff_B, ptr %buff_B.addr, align 8
  store i32 %rs_B, ptr %rs_B.addr, align 4
  store i32 %cs_B, ptr %cs_B.addr, align 4
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
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 16
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds double, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_MINUS_ONE, align 8
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds double, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_m1, align 8
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 16
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 1), align 8
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds double, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_MINUS_ONE_HALF, align 8
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds double, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_m1h, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end33
  %36 = load i32, ptr %i, align 4
  %37 = load i32, ptr %m_AB.addr, align 4
  %cmp35 = icmp slt i32 %36, %37
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load ptr, ptr %buff_A.addr, align 8
  %39 = load i32, ptr %i, align 4
  %40 = load i32, ptr %cs_A.addr, align 4
  %mul36 = mul nsw i32 %39, %40
  %idx.ext = sext i32 %mul36 to i64
  %add.ptr37 = getelementptr inbounds double, ptr %38, i64 %idx.ext
  %41 = load i32, ptr %rs_A.addr, align 4
  %mul38 = mul nsw i32 0, %41
  %idx.ext39 = sext i32 %mul38 to i64
  %add.ptr40 = getelementptr inbounds double, ptr %add.ptr37, i64 %idx.ext39
  store ptr %add.ptr40, ptr %a01, align 8
  %42 = load ptr, ptr %buff_A.addr, align 8
  %43 = load i32, ptr %i, align 4
  %44 = load i32, ptr %cs_A.addr, align 4
  %mul41 = mul nsw i32 %43, %44
  %idx.ext42 = sext i32 %mul41 to i64
  %add.ptr43 = getelementptr inbounds double, ptr %42, i64 %idx.ext42
  %45 = load i32, ptr %i, align 4
  %46 = load i32, ptr %rs_A.addr, align 4
  %mul44 = mul nsw i32 %45, %46
  %idx.ext45 = sext i32 %mul44 to i64
  %add.ptr46 = getelementptr inbounds double, ptr %add.ptr43, i64 %idx.ext45
  store ptr %add.ptr46, ptr %alpha11, align 8
  %47 = load ptr, ptr %buff_A.addr, align 8
  %48 = load i32, ptr %i, align 4
  %add = add nsw i32 %48, 1
  %49 = load i32, ptr %cs_A.addr, align 4
  %mul47 = mul nsw i32 %add, %49
  %idx.ext48 = sext i32 %mul47 to i64
  %add.ptr49 = getelementptr inbounds double, ptr %47, i64 %idx.ext48
  %50 = load i32, ptr %rs_A.addr, align 4
  %mul50 = mul nsw i32 0, %50
  %idx.ext51 = sext i32 %mul50 to i64
  %add.ptr52 = getelementptr inbounds double, ptr %add.ptr49, i64 %idx.ext51
  store ptr %add.ptr52, ptr %A02, align 8
  %51 = load ptr, ptr %buff_A.addr, align 8
  %52 = load i32, ptr %i, align 4
  %add53 = add nsw i32 %52, 1
  %53 = load i32, ptr %cs_A.addr, align 4
  %mul54 = mul nsw i32 %add53, %53
  %idx.ext55 = sext i32 %mul54 to i64
  %add.ptr56 = getelementptr inbounds double, ptr %51, i64 %idx.ext55
  %54 = load i32, ptr %i, align 4
  %55 = load i32, ptr %rs_A.addr, align 4
  %mul57 = mul nsw i32 %54, %55
  %idx.ext58 = sext i32 %mul57 to i64
  %add.ptr59 = getelementptr inbounds double, ptr %add.ptr56, i64 %idx.ext58
  store ptr %add.ptr59, ptr %a12t, align 8
  %56 = load ptr, ptr %buff_Y.addr, align 8
  %57 = load i32, ptr %i, align 4
  %58 = load i32, ptr %cs_Y.addr, align 4
  %mul60 = mul nsw i32 %57, %58
  %idx.ext61 = sext i32 %mul60 to i64
  %add.ptr62 = getelementptr inbounds double, ptr %56, i64 %idx.ext61
  %59 = load i32, ptr %rs_Y.addr, align 4
  %mul63 = mul nsw i32 0, %59
  %idx.ext64 = sext i32 %mul63 to i64
  %add.ptr65 = getelementptr inbounds double, ptr %add.ptr62, i64 %idx.ext64
  store ptr %add.ptr65, ptr %y01, align 8
  %60 = load ptr, ptr %buff_Y.addr, align 8
  %61 = load i32, ptr %i, align 4
  %add66 = add nsw i32 %61, 1
  %62 = load i32, ptr %cs_Y.addr, align 4
  %mul67 = mul nsw i32 %add66, %62
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds double, ptr %60, i64 %idx.ext68
  %63 = load i32, ptr %rs_Y.addr, align 4
  %mul70 = mul nsw i32 0, %63
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds double, ptr %add.ptr69, i64 %idx.ext71
  store ptr %add.ptr72, ptr %Y02, align 8
  %64 = load ptr, ptr %buff_Y.addr, align 8
  %65 = load i32, ptr %i, align 4
  %add73 = add nsw i32 %65, 1
  %66 = load i32, ptr %cs_Y.addr, align 4
  %mul74 = mul nsw i32 %add73, %66
  %idx.ext75 = sext i32 %mul74 to i64
  %add.ptr76 = getelementptr inbounds double, ptr %64, i64 %idx.ext75
  %67 = load i32, ptr %i, align 4
  %68 = load i32, ptr %rs_Y.addr, align 4
  %mul77 = mul nsw i32 %67, %68
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds double, ptr %add.ptr76, i64 %idx.ext78
  store ptr %add.ptr79, ptr %y12t, align 8
  %69 = load ptr, ptr %buff_B.addr, align 8
  %70 = load i32, ptr %i, align 4
  %71 = load i32, ptr %cs_B.addr, align 4
  %mul80 = mul nsw i32 %70, %71
  %idx.ext81 = sext i32 %mul80 to i64
  %add.ptr82 = getelementptr inbounds double, ptr %69, i64 %idx.ext81
  %72 = load i32, ptr %rs_B.addr, align 4
  %mul83 = mul nsw i32 0, %72
  %idx.ext84 = sext i32 %mul83 to i64
  %add.ptr85 = getelementptr inbounds double, ptr %add.ptr82, i64 %idx.ext84
  store ptr %add.ptr85, ptr %b01, align 8
  %73 = load ptr, ptr %buff_B.addr, align 8
  %74 = load i32, ptr %i, align 4
  %75 = load i32, ptr %cs_B.addr, align 4
  %mul86 = mul nsw i32 %74, %75
  %idx.ext87 = sext i32 %mul86 to i64
  %add.ptr88 = getelementptr inbounds double, ptr %73, i64 %idx.ext87
  %76 = load i32, ptr %i, align 4
  %77 = load i32, ptr %rs_B.addr, align 4
  %mul89 = mul nsw i32 %76, %77
  %idx.ext90 = sext i32 %mul89 to i64
  %add.ptr91 = getelementptr inbounds double, ptr %add.ptr88, i64 %idx.ext90
  store ptr %add.ptr91, ptr %beta11, align 8
  %78 = load ptr, ptr %buff_B.addr, align 8
  %79 = load i32, ptr %i, align 4
  %add92 = add nsw i32 %79, 1
  %80 = load i32, ptr %cs_B.addr, align 4
  %mul93 = mul nsw i32 %add92, %80
  %idx.ext94 = sext i32 %mul93 to i64
  %add.ptr95 = getelementptr inbounds double, ptr %78, i64 %idx.ext94
  %81 = load i32, ptr %rs_B.addr, align 4
  %mul96 = mul nsw i32 0, %81
  %idx.ext97 = sext i32 %mul96 to i64
  %add.ptr98 = getelementptr inbounds double, ptr %add.ptr95, i64 %idx.ext97
  store ptr %add.ptr98, ptr %B02, align 8
  %82 = load ptr, ptr %buff_B.addr, align 8
  %83 = load i32, ptr %i, align 4
  %add99 = add nsw i32 %83, 1
  %84 = load i32, ptr %cs_B.addr, align 4
  %mul100 = mul nsw i32 %add99, %84
  %idx.ext101 = sext i32 %mul100 to i64
  %add.ptr102 = getelementptr inbounds double, ptr %82, i64 %idx.ext101
  %85 = load i32, ptr %i, align 4
  %86 = load i32, ptr %rs_B.addr, align 4
  %mul103 = mul nsw i32 %85, %86
  %idx.ext104 = sext i32 %mul103 to i64
  %add.ptr105 = getelementptr inbounds double, ptr %add.ptr102, i64 %idx.ext104
  store ptr %add.ptr105, ptr %b12t, align 8
  %87 = load i32, ptr %m_AB.addr, align 4
  %88 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %87, %88
  %sub106 = sub nsw i32 %sub, 1
  store i32 %sub106, ptr %m_ahead, align 4
  %89 = load i32, ptr %i, align 4
  store i32 %89, ptr %m_behind, align 4
  %90 = load i32, ptr %m_behind, align 4
  %91 = load ptr, ptr %buff_m1h, align 8
  %92 = load ptr, ptr %y01, align 8
  %93 = load i32, ptr %rs_Y.addr, align 4
  %94 = load ptr, ptr %a01, align 8
  %95 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_daxpyv(i32 noundef 500, i32 noundef %90, ptr noundef %91, ptr noundef %92, i32 noundef %93, ptr noundef %94, i32 noundef %95)
  %96 = load i32, ptr %m_behind, align 4
  %97 = load ptr, ptr %buff_m1, align 8
  %98 = load ptr, ptr %a01, align 8
  %99 = load i32, ptr %rs_A.addr, align 4
  %100 = load ptr, ptr %b01, align 8
  %101 = load i32, ptr %rs_B.addr, align 4
  %102 = load ptr, ptr %buff_1, align 8
  %103 = load ptr, ptr %alpha11, align 8
  call void @bl1_ddot2s(i32 noundef 501, i32 noundef %96, ptr noundef %97, ptr noundef %98, i32 noundef %99, ptr noundef %100, i32 noundef %101, ptr noundef %102, ptr noundef %103)
  %104 = load ptr, ptr %alpha11, align 8
  %105 = load double, ptr %104, align 8
  %106 = load ptr, ptr %beta11, align 8
  %107 = load double, ptr %106, align 8
  %div = fdiv double %105, %107
  %108 = load ptr, ptr %alpha11, align 8
  store double %div, ptr %108, align 8
  %109 = load ptr, ptr %alpha11, align 8
  %110 = load double, ptr %109, align 8
  %111 = load ptr, ptr %beta11, align 8
  %112 = load double, ptr %111, align 8
  %div107 = fdiv double %110, %112
  %113 = load ptr, ptr %alpha11, align 8
  store double %div107, ptr %113, align 8
  %114 = load i32, ptr %m_behind, align 4
  %115 = load i32, ptr %m_ahead, align 4
  %116 = load ptr, ptr %buff_m1, align 8
  %117 = load ptr, ptr %A02, align 8
  %118 = load i32, ptr %rs_A.addr, align 4
  %119 = load i32, ptr %cs_A.addr, align 4
  %120 = load ptr, ptr %b01, align 8
  %121 = load i32, ptr %rs_B.addr, align 4
  %122 = load ptr, ptr %buff_1, align 8
  %123 = load ptr, ptr %a12t, align 8
  %124 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_dgemv(i32 noundef 101, i32 noundef 501, i32 noundef %114, i32 noundef %115, ptr noundef %116, ptr noundef %117, i32 noundef %118, i32 noundef %119, ptr noundef %120, i32 noundef %121, ptr noundef %122, ptr noundef %123, i32 noundef %124)
  %125 = load i32, ptr %m_ahead, align 4
  %126 = load ptr, ptr %beta11, align 8
  %127 = load ptr, ptr %a12t, align 8
  %128 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_dinvscalv(i32 noundef 500, i32 noundef %125, ptr noundef %126, ptr noundef %127, i32 noundef %128)
  %129 = load i32, ptr %m_behind, align 4
  %130 = load ptr, ptr %buff_m1h, align 8
  %131 = load ptr, ptr %y01, align 8
  %132 = load i32, ptr %rs_Y.addr, align 4
  %133 = load ptr, ptr %a01, align 8
  %134 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_daxpyv(i32 noundef 500, i32 noundef %129, ptr noundef %130, ptr noundef %131, i32 noundef %132, ptr noundef %133, i32 noundef %134)
  %135 = load i32, ptr %m_behind, align 4
  %136 = load ptr, ptr %beta11, align 8
  %137 = load ptr, ptr %a01, align 8
  %138 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_dinvscalv(i32 noundef 500, i32 noundef %135, ptr noundef %136, ptr noundef %137, i32 noundef %138)
  %139 = load i32, ptr %m_behind, align 4
  %140 = load i32, ptr %m_ahead, align 4
  %141 = load ptr, ptr %buff_1, align 8
  %142 = load ptr, ptr %a01, align 8
  %143 = load i32, ptr %rs_A.addr, align 4
  %144 = load ptr, ptr %b12t, align 8
  %145 = load i32, ptr %cs_B.addr, align 4
  %146 = load ptr, ptr %Y02, align 8
  %147 = load i32, ptr %rs_Y.addr, align 4
  %148 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_dger(i32 noundef 500, i32 noundef 500, i32 noundef %139, i32 noundef %140, ptr noundef %141, ptr noundef %142, i32 noundef %143, ptr noundef %144, i32 noundef %145, ptr noundef %146, i32 noundef %147, i32 noundef %148)
  %149 = load i32, ptr %m_ahead, align 4
  %150 = load ptr, ptr %b12t, align 8
  %151 = load i32, ptr %cs_B.addr, align 4
  %152 = load ptr, ptr %y12t, align 8
  %153 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_dcopyv(i32 noundef 500, i32 noundef %149, ptr noundef %150, i32 noundef %151, ptr noundef %152, i32 noundef %153)
  %154 = load i32, ptr %m_ahead, align 4
  %155 = load ptr, ptr %alpha11, align 8
  %156 = load ptr, ptr %y12t, align 8
  %157 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_dscalv(i32 noundef 500, i32 noundef %154, ptr noundef %155, ptr noundef %156, i32 noundef %157)
  %158 = load i32, ptr %m_behind, align 4
  %159 = load i32, ptr %m_ahead, align 4
  %160 = load ptr, ptr %buff_1, align 8
  %161 = load ptr, ptr %B02, align 8
  %162 = load i32, ptr %rs_B.addr, align 4
  %163 = load i32, ptr %cs_B.addr, align 4
  %164 = load ptr, ptr %a01, align 8
  %165 = load i32, ptr %rs_A.addr, align 4
  %166 = load ptr, ptr %buff_1, align 8
  %167 = load ptr, ptr %y12t, align 8
  %168 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_dgemv(i32 noundef 101, i32 noundef 501, i32 noundef %158, i32 noundef %159, ptr noundef %160, ptr noundef %161, i32 noundef %162, i32 noundef %163, ptr noundef %164, i32 noundef %165, ptr noundef %166, ptr noundef %167, i32 noundef %168)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %169 = load i32, ptr %i, align 4
  %inc = add nsw i32 %169, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Eig_gest_iu_opc_var3(i32 noundef %m_AB, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_Y, i32 noundef %rs_Y, i32 noundef %cs_Y, ptr noundef %buff_B, i32 noundef %rs_B, i32 noundef %cs_B) #0 {
entry:
  %m_AB.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_Y.addr = alloca ptr, align 8
  %rs_Y.addr = alloca i32, align 4
  %cs_Y.addr = alloca i32, align 4
  %buff_B.addr = alloca ptr, align 8
  %rs_B.addr = alloca i32, align 4
  %cs_B.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %buff_m1h = alloca ptr, align 8
  %i = alloca i32, align 4
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %y01 = alloca ptr, align 8
  %Y02 = alloca ptr, align 8
  %y12t = alloca ptr, align 8
  %b01 = alloca ptr, align 8
  %beta11 = alloca ptr, align 8
  %B02 = alloca ptr, align 8
  %b12t = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  %s = alloca float, align 4
  %ar_s = alloca float, align 4
  %ai_s = alloca float, align 4
  %yrt = alloca float, align 4
  %temp = alloca float, align 4
  %s171 = alloca float, align 4
  %ar_s222 = alloca float, align 4
  %ai_s225 = alloca float, align 4
  %yrt228 = alloca float, align 4
  %temp230 = alloca float, align 4
  store i32 %m_AB, ptr %m_AB.addr, align 4
  store ptr %buff_A, ptr %buff_A.addr, align 8
  store i32 %rs_A, ptr %rs_A.addr, align 4
  store i32 %cs_A, ptr %cs_A.addr, align 4
  store ptr %buff_Y, ptr %buff_Y.addr, align 8
  store i32 %rs_Y, ptr %rs_Y.addr, align 4
  store i32 %cs_Y, ptr %cs_Y.addr, align 4
  store ptr %buff_B, ptr %buff_B.addr, align 8
  store i32 %rs_B, ptr %rs_B.addr, align 4
  store i32 %cs_B, ptr %cs_B.addr, align 4
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
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 24
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds %struct.scomplex, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_MINUS_ONE, align 8
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds %struct.scomplex, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_m1, align 8
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 24
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 1), align 8
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds %struct.scomplex, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_MINUS_ONE_HALF, align 8
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds %struct.scomplex, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_m1h, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end33
  %36 = load i32, ptr %i, align 4
  %37 = load i32, ptr %m_AB.addr, align 4
  %cmp35 = icmp slt i32 %36, %37
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load ptr, ptr %buff_A.addr, align 8
  %39 = load i32, ptr %i, align 4
  %40 = load i32, ptr %cs_A.addr, align 4
  %mul36 = mul nsw i32 %39, %40
  %idx.ext = sext i32 %mul36 to i64
  %add.ptr37 = getelementptr inbounds %struct.scomplex, ptr %38, i64 %idx.ext
  %41 = load i32, ptr %rs_A.addr, align 4
  %mul38 = mul nsw i32 0, %41
  %idx.ext39 = sext i32 %mul38 to i64
  %add.ptr40 = getelementptr inbounds %struct.scomplex, ptr %add.ptr37, i64 %idx.ext39
  store ptr %add.ptr40, ptr %a01, align 8
  %42 = load ptr, ptr %buff_A.addr, align 8
  %43 = load i32, ptr %i, align 4
  %44 = load i32, ptr %cs_A.addr, align 4
  %mul41 = mul nsw i32 %43, %44
  %idx.ext42 = sext i32 %mul41 to i64
  %add.ptr43 = getelementptr inbounds %struct.scomplex, ptr %42, i64 %idx.ext42
  %45 = load i32, ptr %i, align 4
  %46 = load i32, ptr %rs_A.addr, align 4
  %mul44 = mul nsw i32 %45, %46
  %idx.ext45 = sext i32 %mul44 to i64
  %add.ptr46 = getelementptr inbounds %struct.scomplex, ptr %add.ptr43, i64 %idx.ext45
  store ptr %add.ptr46, ptr %alpha11, align 8
  %47 = load ptr, ptr %buff_A.addr, align 8
  %48 = load i32, ptr %i, align 4
  %add = add nsw i32 %48, 1
  %49 = load i32, ptr %cs_A.addr, align 4
  %mul47 = mul nsw i32 %add, %49
  %idx.ext48 = sext i32 %mul47 to i64
  %add.ptr49 = getelementptr inbounds %struct.scomplex, ptr %47, i64 %idx.ext48
  %50 = load i32, ptr %rs_A.addr, align 4
  %mul50 = mul nsw i32 0, %50
  %idx.ext51 = sext i32 %mul50 to i64
  %add.ptr52 = getelementptr inbounds %struct.scomplex, ptr %add.ptr49, i64 %idx.ext51
  store ptr %add.ptr52, ptr %A02, align 8
  %51 = load ptr, ptr %buff_A.addr, align 8
  %52 = load i32, ptr %i, align 4
  %add53 = add nsw i32 %52, 1
  %53 = load i32, ptr %cs_A.addr, align 4
  %mul54 = mul nsw i32 %add53, %53
  %idx.ext55 = sext i32 %mul54 to i64
  %add.ptr56 = getelementptr inbounds %struct.scomplex, ptr %51, i64 %idx.ext55
  %54 = load i32, ptr %i, align 4
  %55 = load i32, ptr %rs_A.addr, align 4
  %mul57 = mul nsw i32 %54, %55
  %idx.ext58 = sext i32 %mul57 to i64
  %add.ptr59 = getelementptr inbounds %struct.scomplex, ptr %add.ptr56, i64 %idx.ext58
  store ptr %add.ptr59, ptr %a12t, align 8
  %56 = load ptr, ptr %buff_Y.addr, align 8
  %57 = load i32, ptr %i, align 4
  %58 = load i32, ptr %cs_Y.addr, align 4
  %mul60 = mul nsw i32 %57, %58
  %idx.ext61 = sext i32 %mul60 to i64
  %add.ptr62 = getelementptr inbounds %struct.scomplex, ptr %56, i64 %idx.ext61
  %59 = load i32, ptr %rs_Y.addr, align 4
  %mul63 = mul nsw i32 0, %59
  %idx.ext64 = sext i32 %mul63 to i64
  %add.ptr65 = getelementptr inbounds %struct.scomplex, ptr %add.ptr62, i64 %idx.ext64
  store ptr %add.ptr65, ptr %y01, align 8
  %60 = load ptr, ptr %buff_Y.addr, align 8
  %61 = load i32, ptr %i, align 4
  %add66 = add nsw i32 %61, 1
  %62 = load i32, ptr %cs_Y.addr, align 4
  %mul67 = mul nsw i32 %add66, %62
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds %struct.scomplex, ptr %60, i64 %idx.ext68
  %63 = load i32, ptr %rs_Y.addr, align 4
  %mul70 = mul nsw i32 0, %63
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds %struct.scomplex, ptr %add.ptr69, i64 %idx.ext71
  store ptr %add.ptr72, ptr %Y02, align 8
  %64 = load ptr, ptr %buff_Y.addr, align 8
  %65 = load i32, ptr %i, align 4
  %add73 = add nsw i32 %65, 1
  %66 = load i32, ptr %cs_Y.addr, align 4
  %mul74 = mul nsw i32 %add73, %66
  %idx.ext75 = sext i32 %mul74 to i64
  %add.ptr76 = getelementptr inbounds %struct.scomplex, ptr %64, i64 %idx.ext75
  %67 = load i32, ptr %i, align 4
  %68 = load i32, ptr %rs_Y.addr, align 4
  %mul77 = mul nsw i32 %67, %68
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds %struct.scomplex, ptr %add.ptr76, i64 %idx.ext78
  store ptr %add.ptr79, ptr %y12t, align 8
  %69 = load ptr, ptr %buff_B.addr, align 8
  %70 = load i32, ptr %i, align 4
  %71 = load i32, ptr %cs_B.addr, align 4
  %mul80 = mul nsw i32 %70, %71
  %idx.ext81 = sext i32 %mul80 to i64
  %add.ptr82 = getelementptr inbounds %struct.scomplex, ptr %69, i64 %idx.ext81
  %72 = load i32, ptr %rs_B.addr, align 4
  %mul83 = mul nsw i32 0, %72
  %idx.ext84 = sext i32 %mul83 to i64
  %add.ptr85 = getelementptr inbounds %struct.scomplex, ptr %add.ptr82, i64 %idx.ext84
  store ptr %add.ptr85, ptr %b01, align 8
  %73 = load ptr, ptr %buff_B.addr, align 8
  %74 = load i32, ptr %i, align 4
  %75 = load i32, ptr %cs_B.addr, align 4
  %mul86 = mul nsw i32 %74, %75
  %idx.ext87 = sext i32 %mul86 to i64
  %add.ptr88 = getelementptr inbounds %struct.scomplex, ptr %73, i64 %idx.ext87
  %76 = load i32, ptr %i, align 4
  %77 = load i32, ptr %rs_B.addr, align 4
  %mul89 = mul nsw i32 %76, %77
  %idx.ext90 = sext i32 %mul89 to i64
  %add.ptr91 = getelementptr inbounds %struct.scomplex, ptr %add.ptr88, i64 %idx.ext90
  store ptr %add.ptr91, ptr %beta11, align 8
  %78 = load ptr, ptr %buff_B.addr, align 8
  %79 = load i32, ptr %i, align 4
  %add92 = add nsw i32 %79, 1
  %80 = load i32, ptr %cs_B.addr, align 4
  %mul93 = mul nsw i32 %add92, %80
  %idx.ext94 = sext i32 %mul93 to i64
  %add.ptr95 = getelementptr inbounds %struct.scomplex, ptr %78, i64 %idx.ext94
  %81 = load i32, ptr %rs_B.addr, align 4
  %mul96 = mul nsw i32 0, %81
  %idx.ext97 = sext i32 %mul96 to i64
  %add.ptr98 = getelementptr inbounds %struct.scomplex, ptr %add.ptr95, i64 %idx.ext97
  store ptr %add.ptr98, ptr %B02, align 8
  %82 = load ptr, ptr %buff_B.addr, align 8
  %83 = load i32, ptr %i, align 4
  %add99 = add nsw i32 %83, 1
  %84 = load i32, ptr %cs_B.addr, align 4
  %mul100 = mul nsw i32 %add99, %84
  %idx.ext101 = sext i32 %mul100 to i64
  %add.ptr102 = getelementptr inbounds %struct.scomplex, ptr %82, i64 %idx.ext101
  %85 = load i32, ptr %i, align 4
  %86 = load i32, ptr %rs_B.addr, align 4
  %mul103 = mul nsw i32 %85, %86
  %idx.ext104 = sext i32 %mul103 to i64
  %add.ptr105 = getelementptr inbounds %struct.scomplex, ptr %add.ptr102, i64 %idx.ext104
  store ptr %add.ptr105, ptr %b12t, align 8
  %87 = load i32, ptr %m_AB.addr, align 4
  %88 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %87, %88
  %sub106 = sub nsw i32 %sub, 1
  store i32 %sub106, ptr %m_ahead, align 4
  %89 = load i32, ptr %i, align 4
  store i32 %89, ptr %m_behind, align 4
  %90 = load i32, ptr %m_behind, align 4
  %91 = load ptr, ptr %buff_m1h, align 8
  %92 = load ptr, ptr %y01, align 8
  %93 = load i32, ptr %rs_Y.addr, align 4
  %94 = load ptr, ptr %a01, align 8
  %95 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef %90, ptr noundef %91, ptr noundef %92, i32 noundef %93, ptr noundef %94, i32 noundef %95)
  %96 = load i32, ptr %m_behind, align 4
  %97 = load ptr, ptr %buff_m1, align 8
  %98 = load ptr, ptr %a01, align 8
  %99 = load i32, ptr %rs_A.addr, align 4
  %100 = load ptr, ptr %b01, align 8
  %101 = load i32, ptr %rs_B.addr, align 4
  %102 = load ptr, ptr %buff_1, align 8
  %103 = load ptr, ptr %alpha11, align 8
  call void @bl1_cdot2s(i32 noundef 501, i32 noundef %96, ptr noundef %97, ptr noundef %98, i32 noundef %99, ptr noundef %100, i32 noundef %101, ptr noundef %102, ptr noundef %103)
  %104 = load ptr, ptr %beta11, align 8
  %real = getelementptr inbounds %struct.scomplex, ptr %104, i32 0, i32 0
  %105 = load float, ptr %real, align 4
  %conv = fpext float %105 to double
  %cmp107 = fcmp ole double %conv, 0.000000e+00
  br i1 %cmp107, label %cond.true109, label %cond.false111

cond.true109:                                     ; preds = %for.body
  %106 = load ptr, ptr %beta11, align 8
  %real110 = getelementptr inbounds %struct.scomplex, ptr %106, i32 0, i32 0
  %107 = load float, ptr %real110, align 4
  %fneg = fneg float %107
  br label %cond.end113

cond.false111:                                    ; preds = %for.body
  %108 = load ptr, ptr %beta11, align 8
  %real112 = getelementptr inbounds %struct.scomplex, ptr %108, i32 0, i32 0
  %109 = load float, ptr %real112, align 4
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false111, %cond.true109
  %cond114 = phi float [ %fneg, %cond.true109 ], [ %109, %cond.false111 ]
  %110 = load ptr, ptr %beta11, align 8
  %imag = getelementptr inbounds %struct.scomplex, ptr %110, i32 0, i32 1
  %111 = load float, ptr %imag, align 4
  %conv115 = fpext float %111 to double
  %cmp116 = fcmp ole double %conv115, 0.000000e+00
  br i1 %cmp116, label %cond.true118, label %cond.false121

cond.true118:                                     ; preds = %cond.end113
  %112 = load ptr, ptr %beta11, align 8
  %imag119 = getelementptr inbounds %struct.scomplex, ptr %112, i32 0, i32 1
  %113 = load float, ptr %imag119, align 4
  %fneg120 = fneg float %113
  br label %cond.end123

cond.false121:                                    ; preds = %cond.end113
  %114 = load ptr, ptr %beta11, align 8
  %imag122 = getelementptr inbounds %struct.scomplex, ptr %114, i32 0, i32 1
  %115 = load float, ptr %imag122, align 4
  br label %cond.end123

cond.end123:                                      ; preds = %cond.false121, %cond.true118
  %cond124 = phi float [ %fneg120, %cond.true118 ], [ %115, %cond.false121 ]
  %cmp125 = fcmp ogt float %cond114, %cond124
  br i1 %cmp125, label %cond.true127, label %cond.false139

cond.true127:                                     ; preds = %cond.end123
  %116 = load ptr, ptr %beta11, align 8
  %real128 = getelementptr inbounds %struct.scomplex, ptr %116, i32 0, i32 0
  %117 = load float, ptr %real128, align 4
  %conv129 = fpext float %117 to double
  %cmp130 = fcmp ole double %conv129, 0.000000e+00
  br i1 %cmp130, label %cond.true132, label %cond.false135

cond.true132:                                     ; preds = %cond.true127
  %118 = load ptr, ptr %beta11, align 8
  %real133 = getelementptr inbounds %struct.scomplex, ptr %118, i32 0, i32 0
  %119 = load float, ptr %real133, align 4
  %fneg134 = fneg float %119
  br label %cond.end137

cond.false135:                                    ; preds = %cond.true127
  %120 = load ptr, ptr %beta11, align 8
  %real136 = getelementptr inbounds %struct.scomplex, ptr %120, i32 0, i32 0
  %121 = load float, ptr %real136, align 4
  br label %cond.end137

cond.end137:                                      ; preds = %cond.false135, %cond.true132
  %cond138 = phi float [ %fneg134, %cond.true132 ], [ %121, %cond.false135 ]
  br label %cond.end151

cond.false139:                                    ; preds = %cond.end123
  %122 = load ptr, ptr %beta11, align 8
  %imag140 = getelementptr inbounds %struct.scomplex, ptr %122, i32 0, i32 1
  %123 = load float, ptr %imag140, align 4
  %conv141 = fpext float %123 to double
  %cmp142 = fcmp ole double %conv141, 0.000000e+00
  br i1 %cmp142, label %cond.true144, label %cond.false147

cond.true144:                                     ; preds = %cond.false139
  %124 = load ptr, ptr %beta11, align 8
  %imag145 = getelementptr inbounds %struct.scomplex, ptr %124, i32 0, i32 1
  %125 = load float, ptr %imag145, align 4
  %fneg146 = fneg float %125
  br label %cond.end149

cond.false147:                                    ; preds = %cond.false139
  %126 = load ptr, ptr %beta11, align 8
  %imag148 = getelementptr inbounds %struct.scomplex, ptr %126, i32 0, i32 1
  %127 = load float, ptr %imag148, align 4
  br label %cond.end149

cond.end149:                                      ; preds = %cond.false147, %cond.true144
  %cond150 = phi float [ %fneg146, %cond.true144 ], [ %127, %cond.false147 ]
  br label %cond.end151

cond.end151:                                      ; preds = %cond.end149, %cond.end137
  %cond152 = phi float [ %cond138, %cond.end137 ], [ %cond150, %cond.end149 ]
  store float %cond152, ptr %s, align 4
  %128 = load ptr, ptr %beta11, align 8
  %real153 = getelementptr inbounds %struct.scomplex, ptr %128, i32 0, i32 0
  %129 = load float, ptr %real153, align 4
  %130 = load float, ptr %s, align 4
  %div = fdiv float %129, %130
  store float %div, ptr %ar_s, align 4
  %131 = load ptr, ptr %beta11, align 8
  %imag154 = getelementptr inbounds %struct.scomplex, ptr %131, i32 0, i32 1
  %132 = load float, ptr %imag154, align 4
  %133 = load float, ptr %s, align 4
  %div155 = fdiv float %132, %133
  store float %div155, ptr %ai_s, align 4
  %134 = load ptr, ptr %alpha11, align 8
  %real156 = getelementptr inbounds %struct.scomplex, ptr %134, i32 0, i32 0
  %135 = load float, ptr %real156, align 4
  store float %135, ptr %yrt, align 4
  %136 = load float, ptr %ar_s, align 4
  %137 = load ptr, ptr %beta11, align 8
  %real157 = getelementptr inbounds %struct.scomplex, ptr %137, i32 0, i32 0
  %138 = load float, ptr %real157, align 4
  %139 = load float, ptr %ai_s, align 4
  %140 = load ptr, ptr %beta11, align 8
  %imag159 = getelementptr inbounds %struct.scomplex, ptr %140, i32 0, i32 1
  %141 = load float, ptr %imag159, align 4
  %mul160 = fmul float %139, %141
  %142 = call float @llvm.fmuladd.f32(float %136, float %138, float %mul160)
  store float %142, ptr %temp, align 4
  %143 = load float, ptr %yrt, align 4
  %144 = load float, ptr %ar_s, align 4
  %145 = load ptr, ptr %alpha11, align 8
  %imag162 = getelementptr inbounds %struct.scomplex, ptr %145, i32 0, i32 1
  %146 = load float, ptr %imag162, align 4
  %147 = load float, ptr %ai_s, align 4
  %mul163 = fmul float %146, %147
  %148 = call float @llvm.fmuladd.f32(float %143, float %144, float %mul163)
  %149 = load float, ptr %temp, align 4
  %div164 = fdiv float %148, %149
  %150 = load ptr, ptr %alpha11, align 8
  %real165 = getelementptr inbounds %struct.scomplex, ptr %150, i32 0, i32 0
  store float %div164, ptr %real165, align 4
  %151 = load ptr, ptr %alpha11, align 8
  %imag166 = getelementptr inbounds %struct.scomplex, ptr %151, i32 0, i32 1
  %152 = load float, ptr %imag166, align 4
  %153 = load float, ptr %ar_s, align 4
  %154 = load float, ptr %yrt, align 4
  %155 = load float, ptr %ai_s, align 4
  %mul168 = fmul float %154, %155
  %neg = fneg float %mul168
  %156 = call float @llvm.fmuladd.f32(float %152, float %153, float %neg)
  %157 = load float, ptr %temp, align 4
  %div169 = fdiv float %156, %157
  %158 = load ptr, ptr %alpha11, align 8
  %imag170 = getelementptr inbounds %struct.scomplex, ptr %158, i32 0, i32 1
  store float %div169, ptr %imag170, align 4
  %159 = load ptr, ptr %beta11, align 8
  %real172 = getelementptr inbounds %struct.scomplex, ptr %159, i32 0, i32 0
  %160 = load float, ptr %real172, align 4
  %conv173 = fpext float %160 to double
  %cmp174 = fcmp ole double %conv173, 0.000000e+00
  br i1 %cmp174, label %cond.true176, label %cond.false179

cond.true176:                                     ; preds = %cond.end151
  %161 = load ptr, ptr %beta11, align 8
  %real177 = getelementptr inbounds %struct.scomplex, ptr %161, i32 0, i32 0
  %162 = load float, ptr %real177, align 4
  %fneg178 = fneg float %162
  br label %cond.end181

cond.false179:                                    ; preds = %cond.end151
  %163 = load ptr, ptr %beta11, align 8
  %real180 = getelementptr inbounds %struct.scomplex, ptr %163, i32 0, i32 0
  %164 = load float, ptr %real180, align 4
  br label %cond.end181

cond.end181:                                      ; preds = %cond.false179, %cond.true176
  %cond182 = phi float [ %fneg178, %cond.true176 ], [ %164, %cond.false179 ]
  %165 = load ptr, ptr %beta11, align 8
  %imag183 = getelementptr inbounds %struct.scomplex, ptr %165, i32 0, i32 1
  %166 = load float, ptr %imag183, align 4
  %conv184 = fpext float %166 to double
  %cmp185 = fcmp ole double %conv184, 0.000000e+00
  br i1 %cmp185, label %cond.true187, label %cond.false190

cond.true187:                                     ; preds = %cond.end181
  %167 = load ptr, ptr %beta11, align 8
  %imag188 = getelementptr inbounds %struct.scomplex, ptr %167, i32 0, i32 1
  %168 = load float, ptr %imag188, align 4
  %fneg189 = fneg float %168
  br label %cond.end192

cond.false190:                                    ; preds = %cond.end181
  %169 = load ptr, ptr %beta11, align 8
  %imag191 = getelementptr inbounds %struct.scomplex, ptr %169, i32 0, i32 1
  %170 = load float, ptr %imag191, align 4
  br label %cond.end192

cond.end192:                                      ; preds = %cond.false190, %cond.true187
  %cond193 = phi float [ %fneg189, %cond.true187 ], [ %170, %cond.false190 ]
  %cmp194 = fcmp ogt float %cond182, %cond193
  br i1 %cmp194, label %cond.true196, label %cond.false208

cond.true196:                                     ; preds = %cond.end192
  %171 = load ptr, ptr %beta11, align 8
  %real197 = getelementptr inbounds %struct.scomplex, ptr %171, i32 0, i32 0
  %172 = load float, ptr %real197, align 4
  %conv198 = fpext float %172 to double
  %cmp199 = fcmp ole double %conv198, 0.000000e+00
  br i1 %cmp199, label %cond.true201, label %cond.false204

cond.true201:                                     ; preds = %cond.true196
  %173 = load ptr, ptr %beta11, align 8
  %real202 = getelementptr inbounds %struct.scomplex, ptr %173, i32 0, i32 0
  %174 = load float, ptr %real202, align 4
  %fneg203 = fneg float %174
  br label %cond.end206

cond.false204:                                    ; preds = %cond.true196
  %175 = load ptr, ptr %beta11, align 8
  %real205 = getelementptr inbounds %struct.scomplex, ptr %175, i32 0, i32 0
  %176 = load float, ptr %real205, align 4
  br label %cond.end206

cond.end206:                                      ; preds = %cond.false204, %cond.true201
  %cond207 = phi float [ %fneg203, %cond.true201 ], [ %176, %cond.false204 ]
  br label %cond.end220

cond.false208:                                    ; preds = %cond.end192
  %177 = load ptr, ptr %beta11, align 8
  %imag209 = getelementptr inbounds %struct.scomplex, ptr %177, i32 0, i32 1
  %178 = load float, ptr %imag209, align 4
  %conv210 = fpext float %178 to double
  %cmp211 = fcmp ole double %conv210, 0.000000e+00
  br i1 %cmp211, label %cond.true213, label %cond.false216

cond.true213:                                     ; preds = %cond.false208
  %179 = load ptr, ptr %beta11, align 8
  %imag214 = getelementptr inbounds %struct.scomplex, ptr %179, i32 0, i32 1
  %180 = load float, ptr %imag214, align 4
  %fneg215 = fneg float %180
  br label %cond.end218

cond.false216:                                    ; preds = %cond.false208
  %181 = load ptr, ptr %beta11, align 8
  %imag217 = getelementptr inbounds %struct.scomplex, ptr %181, i32 0, i32 1
  %182 = load float, ptr %imag217, align 4
  br label %cond.end218

cond.end218:                                      ; preds = %cond.false216, %cond.true213
  %cond219 = phi float [ %fneg215, %cond.true213 ], [ %182, %cond.false216 ]
  br label %cond.end220

cond.end220:                                      ; preds = %cond.end218, %cond.end206
  %cond221 = phi float [ %cond207, %cond.end206 ], [ %cond219, %cond.end218 ]
  store float %cond221, ptr %s171, align 4
  %183 = load ptr, ptr %beta11, align 8
  %real223 = getelementptr inbounds %struct.scomplex, ptr %183, i32 0, i32 0
  %184 = load float, ptr %real223, align 4
  %185 = load float, ptr %s171, align 4
  %div224 = fdiv float %184, %185
  store float %div224, ptr %ar_s222, align 4
  %186 = load ptr, ptr %beta11, align 8
  %imag226 = getelementptr inbounds %struct.scomplex, ptr %186, i32 0, i32 1
  %187 = load float, ptr %imag226, align 4
  %188 = load float, ptr %s171, align 4
  %div227 = fdiv float %187, %188
  store float %div227, ptr %ai_s225, align 4
  %189 = load ptr, ptr %alpha11, align 8
  %real229 = getelementptr inbounds %struct.scomplex, ptr %189, i32 0, i32 0
  %190 = load float, ptr %real229, align 4
  store float %190, ptr %yrt228, align 4
  %191 = load float, ptr %ar_s222, align 4
  %192 = load ptr, ptr %beta11, align 8
  %real231 = getelementptr inbounds %struct.scomplex, ptr %192, i32 0, i32 0
  %193 = load float, ptr %real231, align 4
  %194 = load float, ptr %ai_s225, align 4
  %195 = load ptr, ptr %beta11, align 8
  %imag233 = getelementptr inbounds %struct.scomplex, ptr %195, i32 0, i32 1
  %196 = load float, ptr %imag233, align 4
  %mul234 = fmul float %194, %196
  %197 = call float @llvm.fmuladd.f32(float %191, float %193, float %mul234)
  store float %197, ptr %temp230, align 4
  %198 = load float, ptr %yrt228, align 4
  %199 = load float, ptr %ar_s222, align 4
  %200 = load ptr, ptr %alpha11, align 8
  %imag236 = getelementptr inbounds %struct.scomplex, ptr %200, i32 0, i32 1
  %201 = load float, ptr %imag236, align 4
  %202 = load float, ptr %ai_s225, align 4
  %mul237 = fmul float %201, %202
  %203 = call float @llvm.fmuladd.f32(float %198, float %199, float %mul237)
  %204 = load float, ptr %temp230, align 4
  %div238 = fdiv float %203, %204
  %205 = load ptr, ptr %alpha11, align 8
  %real239 = getelementptr inbounds %struct.scomplex, ptr %205, i32 0, i32 0
  store float %div238, ptr %real239, align 4
  %206 = load ptr, ptr %alpha11, align 8
  %imag240 = getelementptr inbounds %struct.scomplex, ptr %206, i32 0, i32 1
  %207 = load float, ptr %imag240, align 4
  %208 = load float, ptr %ar_s222, align 4
  %209 = load float, ptr %yrt228, align 4
  %210 = load float, ptr %ai_s225, align 4
  %mul242 = fmul float %209, %210
  %neg243 = fneg float %mul242
  %211 = call float @llvm.fmuladd.f32(float %207, float %208, float %neg243)
  %212 = load float, ptr %temp230, align 4
  %div244 = fdiv float %211, %212
  %213 = load ptr, ptr %alpha11, align 8
  %imag245 = getelementptr inbounds %struct.scomplex, ptr %213, i32 0, i32 1
  store float %div244, ptr %imag245, align 4
  %214 = load i32, ptr %m_behind, align 4
  %215 = load i32, ptr %m_ahead, align 4
  %216 = load ptr, ptr %buff_m1, align 8
  %217 = load ptr, ptr %A02, align 8
  %218 = load i32, ptr %rs_A.addr, align 4
  %219 = load i32, ptr %cs_A.addr, align 4
  %220 = load ptr, ptr %b01, align 8
  %221 = load i32, ptr %rs_B.addr, align 4
  %222 = load ptr, ptr %buff_1, align 8
  %223 = load ptr, ptr %a12t, align 8
  %224 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_cgemv(i32 noundef 101, i32 noundef 501, i32 noundef %214, i32 noundef %215, ptr noundef %216, ptr noundef %217, i32 noundef %218, i32 noundef %219, ptr noundef %220, i32 noundef %221, ptr noundef %222, ptr noundef %223, i32 noundef %224)
  %225 = load i32, ptr %m_ahead, align 4
  %226 = load ptr, ptr %beta11, align 8
  %227 = load ptr, ptr %a12t, align 8
  %228 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_cinvscalv(i32 noundef 500, i32 noundef %225, ptr noundef %226, ptr noundef %227, i32 noundef %228)
  %229 = load i32, ptr %m_behind, align 4
  %230 = load ptr, ptr %buff_m1h, align 8
  %231 = load ptr, ptr %y01, align 8
  %232 = load i32, ptr %rs_Y.addr, align 4
  %233 = load ptr, ptr %a01, align 8
  %234 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef %229, ptr noundef %230, ptr noundef %231, i32 noundef %232, ptr noundef %233, i32 noundef %234)
  %235 = load i32, ptr %m_behind, align 4
  %236 = load ptr, ptr %beta11, align 8
  %237 = load ptr, ptr %a01, align 8
  %238 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_cinvscalv(i32 noundef 500, i32 noundef %235, ptr noundef %236, ptr noundef %237, i32 noundef %238)
  %239 = load i32, ptr %m_behind, align 4
  %240 = load i32, ptr %m_ahead, align 4
  %241 = load ptr, ptr %buff_1, align 8
  %242 = load ptr, ptr %a01, align 8
  %243 = load i32, ptr %rs_A.addr, align 4
  %244 = load ptr, ptr %b12t, align 8
  %245 = load i32, ptr %cs_B.addr, align 4
  %246 = load ptr, ptr %Y02, align 8
  %247 = load i32, ptr %rs_Y.addr, align 4
  %248 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_cger(i32 noundef 500, i32 noundef 500, i32 noundef %239, i32 noundef %240, ptr noundef %241, ptr noundef %242, i32 noundef %243, ptr noundef %244, i32 noundef %245, ptr noundef %246, i32 noundef %247, i32 noundef %248)
  %249 = load i32, ptr %m_ahead, align 4
  %250 = load ptr, ptr %b12t, align 8
  %251 = load i32, ptr %cs_B.addr, align 4
  %252 = load ptr, ptr %y12t, align 8
  %253 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_ccopyv(i32 noundef 500, i32 noundef %249, ptr noundef %250, i32 noundef %251, ptr noundef %252, i32 noundef %253)
  %254 = load i32, ptr %m_ahead, align 4
  %255 = load ptr, ptr %alpha11, align 8
  %256 = load ptr, ptr %y12t, align 8
  %257 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_cscalv(i32 noundef 500, i32 noundef %254, ptr noundef %255, ptr noundef %256, i32 noundef %257)
  %258 = load i32, ptr %m_behind, align 4
  %259 = load i32, ptr %m_ahead, align 4
  %260 = load ptr, ptr %buff_1, align 8
  %261 = load ptr, ptr %B02, align 8
  %262 = load i32, ptr %rs_B.addr, align 4
  %263 = load i32, ptr %cs_B.addr, align 4
  %264 = load ptr, ptr %a01, align 8
  %265 = load i32, ptr %rs_A.addr, align 4
  %266 = load ptr, ptr %buff_1, align 8
  %267 = load ptr, ptr %y12t, align 8
  %268 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_cgemv(i32 noundef 101, i32 noundef 501, i32 noundef %258, i32 noundef %259, ptr noundef %260, ptr noundef %261, i32 noundef %262, i32 noundef %263, ptr noundef %264, i32 noundef %265, ptr noundef %266, ptr noundef %267, i32 noundef %268)
  br label %for.inc

for.inc:                                          ; preds = %cond.end220
  %269 = load i32, ptr %i, align 4
  %inc = add nsw i32 %269, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Eig_gest_iu_opz_var3(i32 noundef %m_AB, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_Y, i32 noundef %rs_Y, i32 noundef %cs_Y, ptr noundef %buff_B, i32 noundef %rs_B, i32 noundef %cs_B) #0 {
entry:
  %m_AB.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_Y.addr = alloca ptr, align 8
  %rs_Y.addr = alloca i32, align 4
  %cs_Y.addr = alloca i32, align 4
  %buff_B.addr = alloca ptr, align 8
  %rs_B.addr = alloca i32, align 4
  %cs_B.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %buff_m1h = alloca ptr, align 8
  %i = alloca i32, align 4
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %y01 = alloca ptr, align 8
  %Y02 = alloca ptr, align 8
  %y12t = alloca ptr, align 8
  %b01 = alloca ptr, align 8
  %beta11 = alloca ptr, align 8
  %B02 = alloca ptr, align 8
  %b12t = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  %s = alloca double, align 8
  %ar_s = alloca double, align 8
  %ai_s = alloca double, align 8
  %yrt = alloca double, align 8
  %temp = alloca double, align 8
  %s163 = alloca double, align 8
  %ar_s205 = alloca double, align 8
  %ai_s208 = alloca double, align 8
  %yrt211 = alloca double, align 8
  %temp213 = alloca double, align 8
  store i32 %m_AB, ptr %m_AB.addr, align 4
  store ptr %buff_A, ptr %buff_A.addr, align 8
  store i32 %rs_A, ptr %rs_A.addr, align 4
  store i32 %cs_A, ptr %cs_A.addr, align 4
  store ptr %buff_Y, ptr %buff_Y.addr, align 8
  store i32 %rs_Y, ptr %rs_Y.addr, align 4
  store i32 %cs_Y, ptr %cs_Y.addr, align 4
  store ptr %buff_B, ptr %buff_B.addr, align 8
  store i32 %rs_B, ptr %rs_B.addr, align 4
  store i32 %cs_B, ptr %cs_B.addr, align 4
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
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 32
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds %struct.dcomplex, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_MINUS_ONE, align 8
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_m1, align 8
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 32
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 1), align 8
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds %struct.dcomplex, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_MINUS_ONE_HALF, align 8
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE_HALF, i32 0, i32 6), align 8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_m1h, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end33
  %36 = load i32, ptr %i, align 4
  %37 = load i32, ptr %m_AB.addr, align 4
  %cmp35 = icmp slt i32 %36, %37
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load ptr, ptr %buff_A.addr, align 8
  %39 = load i32, ptr %i, align 4
  %40 = load i32, ptr %cs_A.addr, align 4
  %mul36 = mul nsw i32 %39, %40
  %idx.ext = sext i32 %mul36 to i64
  %add.ptr37 = getelementptr inbounds %struct.dcomplex, ptr %38, i64 %idx.ext
  %41 = load i32, ptr %rs_A.addr, align 4
  %mul38 = mul nsw i32 0, %41
  %idx.ext39 = sext i32 %mul38 to i64
  %add.ptr40 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr37, i64 %idx.ext39
  store ptr %add.ptr40, ptr %a01, align 8
  %42 = load ptr, ptr %buff_A.addr, align 8
  %43 = load i32, ptr %i, align 4
  %44 = load i32, ptr %cs_A.addr, align 4
  %mul41 = mul nsw i32 %43, %44
  %idx.ext42 = sext i32 %mul41 to i64
  %add.ptr43 = getelementptr inbounds %struct.dcomplex, ptr %42, i64 %idx.ext42
  %45 = load i32, ptr %i, align 4
  %46 = load i32, ptr %rs_A.addr, align 4
  %mul44 = mul nsw i32 %45, %46
  %idx.ext45 = sext i32 %mul44 to i64
  %add.ptr46 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr43, i64 %idx.ext45
  store ptr %add.ptr46, ptr %alpha11, align 8
  %47 = load ptr, ptr %buff_A.addr, align 8
  %48 = load i32, ptr %i, align 4
  %add = add nsw i32 %48, 1
  %49 = load i32, ptr %cs_A.addr, align 4
  %mul47 = mul nsw i32 %add, %49
  %idx.ext48 = sext i32 %mul47 to i64
  %add.ptr49 = getelementptr inbounds %struct.dcomplex, ptr %47, i64 %idx.ext48
  %50 = load i32, ptr %rs_A.addr, align 4
  %mul50 = mul nsw i32 0, %50
  %idx.ext51 = sext i32 %mul50 to i64
  %add.ptr52 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr49, i64 %idx.ext51
  store ptr %add.ptr52, ptr %A02, align 8
  %51 = load ptr, ptr %buff_A.addr, align 8
  %52 = load i32, ptr %i, align 4
  %add53 = add nsw i32 %52, 1
  %53 = load i32, ptr %cs_A.addr, align 4
  %mul54 = mul nsw i32 %add53, %53
  %idx.ext55 = sext i32 %mul54 to i64
  %add.ptr56 = getelementptr inbounds %struct.dcomplex, ptr %51, i64 %idx.ext55
  %54 = load i32, ptr %i, align 4
  %55 = load i32, ptr %rs_A.addr, align 4
  %mul57 = mul nsw i32 %54, %55
  %idx.ext58 = sext i32 %mul57 to i64
  %add.ptr59 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr56, i64 %idx.ext58
  store ptr %add.ptr59, ptr %a12t, align 8
  %56 = load ptr, ptr %buff_Y.addr, align 8
  %57 = load i32, ptr %i, align 4
  %58 = load i32, ptr %cs_Y.addr, align 4
  %mul60 = mul nsw i32 %57, %58
  %idx.ext61 = sext i32 %mul60 to i64
  %add.ptr62 = getelementptr inbounds %struct.dcomplex, ptr %56, i64 %idx.ext61
  %59 = load i32, ptr %rs_Y.addr, align 4
  %mul63 = mul nsw i32 0, %59
  %idx.ext64 = sext i32 %mul63 to i64
  %add.ptr65 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr62, i64 %idx.ext64
  store ptr %add.ptr65, ptr %y01, align 8
  %60 = load ptr, ptr %buff_Y.addr, align 8
  %61 = load i32, ptr %i, align 4
  %add66 = add nsw i32 %61, 1
  %62 = load i32, ptr %cs_Y.addr, align 4
  %mul67 = mul nsw i32 %add66, %62
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds %struct.dcomplex, ptr %60, i64 %idx.ext68
  %63 = load i32, ptr %rs_Y.addr, align 4
  %mul70 = mul nsw i32 0, %63
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr69, i64 %idx.ext71
  store ptr %add.ptr72, ptr %Y02, align 8
  %64 = load ptr, ptr %buff_Y.addr, align 8
  %65 = load i32, ptr %i, align 4
  %add73 = add nsw i32 %65, 1
  %66 = load i32, ptr %cs_Y.addr, align 4
  %mul74 = mul nsw i32 %add73, %66
  %idx.ext75 = sext i32 %mul74 to i64
  %add.ptr76 = getelementptr inbounds %struct.dcomplex, ptr %64, i64 %idx.ext75
  %67 = load i32, ptr %i, align 4
  %68 = load i32, ptr %rs_Y.addr, align 4
  %mul77 = mul nsw i32 %67, %68
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr76, i64 %idx.ext78
  store ptr %add.ptr79, ptr %y12t, align 8
  %69 = load ptr, ptr %buff_B.addr, align 8
  %70 = load i32, ptr %i, align 4
  %71 = load i32, ptr %cs_B.addr, align 4
  %mul80 = mul nsw i32 %70, %71
  %idx.ext81 = sext i32 %mul80 to i64
  %add.ptr82 = getelementptr inbounds %struct.dcomplex, ptr %69, i64 %idx.ext81
  %72 = load i32, ptr %rs_B.addr, align 4
  %mul83 = mul nsw i32 0, %72
  %idx.ext84 = sext i32 %mul83 to i64
  %add.ptr85 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr82, i64 %idx.ext84
  store ptr %add.ptr85, ptr %b01, align 8
  %73 = load ptr, ptr %buff_B.addr, align 8
  %74 = load i32, ptr %i, align 4
  %75 = load i32, ptr %cs_B.addr, align 4
  %mul86 = mul nsw i32 %74, %75
  %idx.ext87 = sext i32 %mul86 to i64
  %add.ptr88 = getelementptr inbounds %struct.dcomplex, ptr %73, i64 %idx.ext87
  %76 = load i32, ptr %i, align 4
  %77 = load i32, ptr %rs_B.addr, align 4
  %mul89 = mul nsw i32 %76, %77
  %idx.ext90 = sext i32 %mul89 to i64
  %add.ptr91 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr88, i64 %idx.ext90
  store ptr %add.ptr91, ptr %beta11, align 8
  %78 = load ptr, ptr %buff_B.addr, align 8
  %79 = load i32, ptr %i, align 4
  %add92 = add nsw i32 %79, 1
  %80 = load i32, ptr %cs_B.addr, align 4
  %mul93 = mul nsw i32 %add92, %80
  %idx.ext94 = sext i32 %mul93 to i64
  %add.ptr95 = getelementptr inbounds %struct.dcomplex, ptr %78, i64 %idx.ext94
  %81 = load i32, ptr %rs_B.addr, align 4
  %mul96 = mul nsw i32 0, %81
  %idx.ext97 = sext i32 %mul96 to i64
  %add.ptr98 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr95, i64 %idx.ext97
  store ptr %add.ptr98, ptr %B02, align 8
  %82 = load ptr, ptr %buff_B.addr, align 8
  %83 = load i32, ptr %i, align 4
  %add99 = add nsw i32 %83, 1
  %84 = load i32, ptr %cs_B.addr, align 4
  %mul100 = mul nsw i32 %add99, %84
  %idx.ext101 = sext i32 %mul100 to i64
  %add.ptr102 = getelementptr inbounds %struct.dcomplex, ptr %82, i64 %idx.ext101
  %85 = load i32, ptr %i, align 4
  %86 = load i32, ptr %rs_B.addr, align 4
  %mul103 = mul nsw i32 %85, %86
  %idx.ext104 = sext i32 %mul103 to i64
  %add.ptr105 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr102, i64 %idx.ext104
  store ptr %add.ptr105, ptr %b12t, align 8
  %87 = load i32, ptr %m_AB.addr, align 4
  %88 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %87, %88
  %sub106 = sub nsw i32 %sub, 1
  store i32 %sub106, ptr %m_ahead, align 4
  %89 = load i32, ptr %i, align 4
  store i32 %89, ptr %m_behind, align 4
  %90 = load i32, ptr %m_behind, align 4
  %91 = load ptr, ptr %buff_m1h, align 8
  %92 = load ptr, ptr %y01, align 8
  %93 = load i32, ptr %rs_Y.addr, align 4
  %94 = load ptr, ptr %a01, align 8
  %95 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_zaxpyv(i32 noundef 500, i32 noundef %90, ptr noundef %91, ptr noundef %92, i32 noundef %93, ptr noundef %94, i32 noundef %95)
  %96 = load i32, ptr %m_behind, align 4
  %97 = load ptr, ptr %buff_m1, align 8
  %98 = load ptr, ptr %a01, align 8
  %99 = load i32, ptr %rs_A.addr, align 4
  %100 = load ptr, ptr %b01, align 8
  %101 = load i32, ptr %rs_B.addr, align 4
  %102 = load ptr, ptr %buff_1, align 8
  %103 = load ptr, ptr %alpha11, align 8
  call void @bl1_zdot2s(i32 noundef 501, i32 noundef %96, ptr noundef %97, ptr noundef %98, i32 noundef %99, ptr noundef %100, i32 noundef %101, ptr noundef %102, ptr noundef %103)
  %104 = load ptr, ptr %beta11, align 8
  %real = getelementptr inbounds %struct.dcomplex, ptr %104, i32 0, i32 0
  %105 = load double, ptr %real, align 8
  %cmp107 = fcmp ole double %105, 0.000000e+00
  br i1 %cmp107, label %cond.true108, label %cond.false110

cond.true108:                                     ; preds = %for.body
  %106 = load ptr, ptr %beta11, align 8
  %real109 = getelementptr inbounds %struct.dcomplex, ptr %106, i32 0, i32 0
  %107 = load double, ptr %real109, align 8
  %fneg = fneg double %107
  br label %cond.end112

cond.false110:                                    ; preds = %for.body
  %108 = load ptr, ptr %beta11, align 8
  %real111 = getelementptr inbounds %struct.dcomplex, ptr %108, i32 0, i32 0
  %109 = load double, ptr %real111, align 8
  br label %cond.end112

cond.end112:                                      ; preds = %cond.false110, %cond.true108
  %cond113 = phi double [ %fneg, %cond.true108 ], [ %109, %cond.false110 ]
  %110 = load ptr, ptr %beta11, align 8
  %imag = getelementptr inbounds %struct.dcomplex, ptr %110, i32 0, i32 1
  %111 = load double, ptr %imag, align 8
  %cmp114 = fcmp ole double %111, 0.000000e+00
  br i1 %cmp114, label %cond.true115, label %cond.false118

cond.true115:                                     ; preds = %cond.end112
  %112 = load ptr, ptr %beta11, align 8
  %imag116 = getelementptr inbounds %struct.dcomplex, ptr %112, i32 0, i32 1
  %113 = load double, ptr %imag116, align 8
  %fneg117 = fneg double %113
  br label %cond.end120

cond.false118:                                    ; preds = %cond.end112
  %114 = load ptr, ptr %beta11, align 8
  %imag119 = getelementptr inbounds %struct.dcomplex, ptr %114, i32 0, i32 1
  %115 = load double, ptr %imag119, align 8
  br label %cond.end120

cond.end120:                                      ; preds = %cond.false118, %cond.true115
  %cond121 = phi double [ %fneg117, %cond.true115 ], [ %115, %cond.false118 ]
  %cmp122 = fcmp ogt double %cond113, %cond121
  br i1 %cmp122, label %cond.true123, label %cond.false133

cond.true123:                                     ; preds = %cond.end120
  %116 = load ptr, ptr %beta11, align 8
  %real124 = getelementptr inbounds %struct.dcomplex, ptr %116, i32 0, i32 0
  %117 = load double, ptr %real124, align 8
  %cmp125 = fcmp ole double %117, 0.000000e+00
  br i1 %cmp125, label %cond.true126, label %cond.false129

cond.true126:                                     ; preds = %cond.true123
  %118 = load ptr, ptr %beta11, align 8
  %real127 = getelementptr inbounds %struct.dcomplex, ptr %118, i32 0, i32 0
  %119 = load double, ptr %real127, align 8
  %fneg128 = fneg double %119
  br label %cond.end131

cond.false129:                                    ; preds = %cond.true123
  %120 = load ptr, ptr %beta11, align 8
  %real130 = getelementptr inbounds %struct.dcomplex, ptr %120, i32 0, i32 0
  %121 = load double, ptr %real130, align 8
  br label %cond.end131

cond.end131:                                      ; preds = %cond.false129, %cond.true126
  %cond132 = phi double [ %fneg128, %cond.true126 ], [ %121, %cond.false129 ]
  br label %cond.end143

cond.false133:                                    ; preds = %cond.end120
  %122 = load ptr, ptr %beta11, align 8
  %imag134 = getelementptr inbounds %struct.dcomplex, ptr %122, i32 0, i32 1
  %123 = load double, ptr %imag134, align 8
  %cmp135 = fcmp ole double %123, 0.000000e+00
  br i1 %cmp135, label %cond.true136, label %cond.false139

cond.true136:                                     ; preds = %cond.false133
  %124 = load ptr, ptr %beta11, align 8
  %imag137 = getelementptr inbounds %struct.dcomplex, ptr %124, i32 0, i32 1
  %125 = load double, ptr %imag137, align 8
  %fneg138 = fneg double %125
  br label %cond.end141

cond.false139:                                    ; preds = %cond.false133
  %126 = load ptr, ptr %beta11, align 8
  %imag140 = getelementptr inbounds %struct.dcomplex, ptr %126, i32 0, i32 1
  %127 = load double, ptr %imag140, align 8
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false139, %cond.true136
  %cond142 = phi double [ %fneg138, %cond.true136 ], [ %127, %cond.false139 ]
  br label %cond.end143

cond.end143:                                      ; preds = %cond.end141, %cond.end131
  %cond144 = phi double [ %cond132, %cond.end131 ], [ %cond142, %cond.end141 ]
  store double %cond144, ptr %s, align 8
  %128 = load ptr, ptr %beta11, align 8
  %real145 = getelementptr inbounds %struct.dcomplex, ptr %128, i32 0, i32 0
  %129 = load double, ptr %real145, align 8
  %130 = load double, ptr %s, align 8
  %div = fdiv double %129, %130
  store double %div, ptr %ar_s, align 8
  %131 = load ptr, ptr %beta11, align 8
  %imag146 = getelementptr inbounds %struct.dcomplex, ptr %131, i32 0, i32 1
  %132 = load double, ptr %imag146, align 8
  %133 = load double, ptr %s, align 8
  %div147 = fdiv double %132, %133
  store double %div147, ptr %ai_s, align 8
  %134 = load ptr, ptr %alpha11, align 8
  %real148 = getelementptr inbounds %struct.dcomplex, ptr %134, i32 0, i32 0
  %135 = load double, ptr %real148, align 8
  store double %135, ptr %yrt, align 8
  %136 = load double, ptr %ar_s, align 8
  %137 = load ptr, ptr %beta11, align 8
  %real149 = getelementptr inbounds %struct.dcomplex, ptr %137, i32 0, i32 0
  %138 = load double, ptr %real149, align 8
  %139 = load double, ptr %ai_s, align 8
  %140 = load ptr, ptr %beta11, align 8
  %imag151 = getelementptr inbounds %struct.dcomplex, ptr %140, i32 0, i32 1
  %141 = load double, ptr %imag151, align 8
  %mul152 = fmul double %139, %141
  %142 = call double @llvm.fmuladd.f64(double %136, double %138, double %mul152)
  store double %142, ptr %temp, align 8
  %143 = load double, ptr %yrt, align 8
  %144 = load double, ptr %ar_s, align 8
  %145 = load ptr, ptr %alpha11, align 8
  %imag154 = getelementptr inbounds %struct.dcomplex, ptr %145, i32 0, i32 1
  %146 = load double, ptr %imag154, align 8
  %147 = load double, ptr %ai_s, align 8
  %mul155 = fmul double %146, %147
  %148 = call double @llvm.fmuladd.f64(double %143, double %144, double %mul155)
  %149 = load double, ptr %temp, align 8
  %div156 = fdiv double %148, %149
  %150 = load ptr, ptr %alpha11, align 8
  %real157 = getelementptr inbounds %struct.dcomplex, ptr %150, i32 0, i32 0
  store double %div156, ptr %real157, align 8
  %151 = load ptr, ptr %alpha11, align 8
  %imag158 = getelementptr inbounds %struct.dcomplex, ptr %151, i32 0, i32 1
  %152 = load double, ptr %imag158, align 8
  %153 = load double, ptr %ar_s, align 8
  %154 = load double, ptr %yrt, align 8
  %155 = load double, ptr %ai_s, align 8
  %mul160 = fmul double %154, %155
  %neg = fneg double %mul160
  %156 = call double @llvm.fmuladd.f64(double %152, double %153, double %neg)
  %157 = load double, ptr %temp, align 8
  %div161 = fdiv double %156, %157
  %158 = load ptr, ptr %alpha11, align 8
  %imag162 = getelementptr inbounds %struct.dcomplex, ptr %158, i32 0, i32 1
  store double %div161, ptr %imag162, align 8
  %159 = load ptr, ptr %beta11, align 8
  %real164 = getelementptr inbounds %struct.dcomplex, ptr %159, i32 0, i32 0
  %160 = load double, ptr %real164, align 8
  %cmp165 = fcmp ole double %160, 0.000000e+00
  br i1 %cmp165, label %cond.true166, label %cond.false169

cond.true166:                                     ; preds = %cond.end143
  %161 = load ptr, ptr %beta11, align 8
  %real167 = getelementptr inbounds %struct.dcomplex, ptr %161, i32 0, i32 0
  %162 = load double, ptr %real167, align 8
  %fneg168 = fneg double %162
  br label %cond.end171

cond.false169:                                    ; preds = %cond.end143
  %163 = load ptr, ptr %beta11, align 8
  %real170 = getelementptr inbounds %struct.dcomplex, ptr %163, i32 0, i32 0
  %164 = load double, ptr %real170, align 8
  br label %cond.end171

cond.end171:                                      ; preds = %cond.false169, %cond.true166
  %cond172 = phi double [ %fneg168, %cond.true166 ], [ %164, %cond.false169 ]
  %165 = load ptr, ptr %beta11, align 8
  %imag173 = getelementptr inbounds %struct.dcomplex, ptr %165, i32 0, i32 1
  %166 = load double, ptr %imag173, align 8
  %cmp174 = fcmp ole double %166, 0.000000e+00
  br i1 %cmp174, label %cond.true175, label %cond.false178

cond.true175:                                     ; preds = %cond.end171
  %167 = load ptr, ptr %beta11, align 8
  %imag176 = getelementptr inbounds %struct.dcomplex, ptr %167, i32 0, i32 1
  %168 = load double, ptr %imag176, align 8
  %fneg177 = fneg double %168
  br label %cond.end180

cond.false178:                                    ; preds = %cond.end171
  %169 = load ptr, ptr %beta11, align 8
  %imag179 = getelementptr inbounds %struct.dcomplex, ptr %169, i32 0, i32 1
  %170 = load double, ptr %imag179, align 8
  br label %cond.end180

cond.end180:                                      ; preds = %cond.false178, %cond.true175
  %cond181 = phi double [ %fneg177, %cond.true175 ], [ %170, %cond.false178 ]
  %cmp182 = fcmp ogt double %cond172, %cond181
  br i1 %cmp182, label %cond.true183, label %cond.false193

cond.true183:                                     ; preds = %cond.end180
  %171 = load ptr, ptr %beta11, align 8
  %real184 = getelementptr inbounds %struct.dcomplex, ptr %171, i32 0, i32 0
  %172 = load double, ptr %real184, align 8
  %cmp185 = fcmp ole double %172, 0.000000e+00
  br i1 %cmp185, label %cond.true186, label %cond.false189

cond.true186:                                     ; preds = %cond.true183
  %173 = load ptr, ptr %beta11, align 8
  %real187 = getelementptr inbounds %struct.dcomplex, ptr %173, i32 0, i32 0
  %174 = load double, ptr %real187, align 8
  %fneg188 = fneg double %174
  br label %cond.end191

cond.false189:                                    ; preds = %cond.true183
  %175 = load ptr, ptr %beta11, align 8
  %real190 = getelementptr inbounds %struct.dcomplex, ptr %175, i32 0, i32 0
  %176 = load double, ptr %real190, align 8
  br label %cond.end191

cond.end191:                                      ; preds = %cond.false189, %cond.true186
  %cond192 = phi double [ %fneg188, %cond.true186 ], [ %176, %cond.false189 ]
  br label %cond.end203

cond.false193:                                    ; preds = %cond.end180
  %177 = load ptr, ptr %beta11, align 8
  %imag194 = getelementptr inbounds %struct.dcomplex, ptr %177, i32 0, i32 1
  %178 = load double, ptr %imag194, align 8
  %cmp195 = fcmp ole double %178, 0.000000e+00
  br i1 %cmp195, label %cond.true196, label %cond.false199

cond.true196:                                     ; preds = %cond.false193
  %179 = load ptr, ptr %beta11, align 8
  %imag197 = getelementptr inbounds %struct.dcomplex, ptr %179, i32 0, i32 1
  %180 = load double, ptr %imag197, align 8
  %fneg198 = fneg double %180
  br label %cond.end201

cond.false199:                                    ; preds = %cond.false193
  %181 = load ptr, ptr %beta11, align 8
  %imag200 = getelementptr inbounds %struct.dcomplex, ptr %181, i32 0, i32 1
  %182 = load double, ptr %imag200, align 8
  br label %cond.end201

cond.end201:                                      ; preds = %cond.false199, %cond.true196
  %cond202 = phi double [ %fneg198, %cond.true196 ], [ %182, %cond.false199 ]
  br label %cond.end203

cond.end203:                                      ; preds = %cond.end201, %cond.end191
  %cond204 = phi double [ %cond192, %cond.end191 ], [ %cond202, %cond.end201 ]
  store double %cond204, ptr %s163, align 8
  %183 = load ptr, ptr %beta11, align 8
  %real206 = getelementptr inbounds %struct.dcomplex, ptr %183, i32 0, i32 0
  %184 = load double, ptr %real206, align 8
  %185 = load double, ptr %s163, align 8
  %div207 = fdiv double %184, %185
  store double %div207, ptr %ar_s205, align 8
  %186 = load ptr, ptr %beta11, align 8
  %imag209 = getelementptr inbounds %struct.dcomplex, ptr %186, i32 0, i32 1
  %187 = load double, ptr %imag209, align 8
  %188 = load double, ptr %s163, align 8
  %div210 = fdiv double %187, %188
  store double %div210, ptr %ai_s208, align 8
  %189 = load ptr, ptr %alpha11, align 8
  %real212 = getelementptr inbounds %struct.dcomplex, ptr %189, i32 0, i32 0
  %190 = load double, ptr %real212, align 8
  store double %190, ptr %yrt211, align 8
  %191 = load double, ptr %ar_s205, align 8
  %192 = load ptr, ptr %beta11, align 8
  %real214 = getelementptr inbounds %struct.dcomplex, ptr %192, i32 0, i32 0
  %193 = load double, ptr %real214, align 8
  %194 = load double, ptr %ai_s208, align 8
  %195 = load ptr, ptr %beta11, align 8
  %imag216 = getelementptr inbounds %struct.dcomplex, ptr %195, i32 0, i32 1
  %196 = load double, ptr %imag216, align 8
  %mul217 = fmul double %194, %196
  %197 = call double @llvm.fmuladd.f64(double %191, double %193, double %mul217)
  store double %197, ptr %temp213, align 8
  %198 = load double, ptr %yrt211, align 8
  %199 = load double, ptr %ar_s205, align 8
  %200 = load ptr, ptr %alpha11, align 8
  %imag219 = getelementptr inbounds %struct.dcomplex, ptr %200, i32 0, i32 1
  %201 = load double, ptr %imag219, align 8
  %202 = load double, ptr %ai_s208, align 8
  %mul220 = fmul double %201, %202
  %203 = call double @llvm.fmuladd.f64(double %198, double %199, double %mul220)
  %204 = load double, ptr %temp213, align 8
  %div221 = fdiv double %203, %204
  %205 = load ptr, ptr %alpha11, align 8
  %real222 = getelementptr inbounds %struct.dcomplex, ptr %205, i32 0, i32 0
  store double %div221, ptr %real222, align 8
  %206 = load ptr, ptr %alpha11, align 8
  %imag223 = getelementptr inbounds %struct.dcomplex, ptr %206, i32 0, i32 1
  %207 = load double, ptr %imag223, align 8
  %208 = load double, ptr %ar_s205, align 8
  %209 = load double, ptr %yrt211, align 8
  %210 = load double, ptr %ai_s208, align 8
  %mul225 = fmul double %209, %210
  %neg226 = fneg double %mul225
  %211 = call double @llvm.fmuladd.f64(double %207, double %208, double %neg226)
  %212 = load double, ptr %temp213, align 8
  %div227 = fdiv double %211, %212
  %213 = load ptr, ptr %alpha11, align 8
  %imag228 = getelementptr inbounds %struct.dcomplex, ptr %213, i32 0, i32 1
  store double %div227, ptr %imag228, align 8
  %214 = load i32, ptr %m_behind, align 4
  %215 = load i32, ptr %m_ahead, align 4
  %216 = load ptr, ptr %buff_m1, align 8
  %217 = load ptr, ptr %A02, align 8
  %218 = load i32, ptr %rs_A.addr, align 4
  %219 = load i32, ptr %cs_A.addr, align 4
  %220 = load ptr, ptr %b01, align 8
  %221 = load i32, ptr %rs_B.addr, align 4
  %222 = load ptr, ptr %buff_1, align 8
  %223 = load ptr, ptr %a12t, align 8
  %224 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_zgemv(i32 noundef 101, i32 noundef 501, i32 noundef %214, i32 noundef %215, ptr noundef %216, ptr noundef %217, i32 noundef %218, i32 noundef %219, ptr noundef %220, i32 noundef %221, ptr noundef %222, ptr noundef %223, i32 noundef %224)
  %225 = load i32, ptr %m_ahead, align 4
  %226 = load ptr, ptr %beta11, align 8
  %227 = load ptr, ptr %a12t, align 8
  %228 = load i32, ptr %cs_A.addr, align 4
  call void @bl1_zinvscalv(i32 noundef 500, i32 noundef %225, ptr noundef %226, ptr noundef %227, i32 noundef %228)
  %229 = load i32, ptr %m_behind, align 4
  %230 = load ptr, ptr %buff_m1h, align 8
  %231 = load ptr, ptr %y01, align 8
  %232 = load i32, ptr %rs_Y.addr, align 4
  %233 = load ptr, ptr %a01, align 8
  %234 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_zaxpyv(i32 noundef 500, i32 noundef %229, ptr noundef %230, ptr noundef %231, i32 noundef %232, ptr noundef %233, i32 noundef %234)
  %235 = load i32, ptr %m_behind, align 4
  %236 = load ptr, ptr %beta11, align 8
  %237 = load ptr, ptr %a01, align 8
  %238 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_zinvscalv(i32 noundef 500, i32 noundef %235, ptr noundef %236, ptr noundef %237, i32 noundef %238)
  %239 = load i32, ptr %m_behind, align 4
  %240 = load i32, ptr %m_ahead, align 4
  %241 = load ptr, ptr %buff_1, align 8
  %242 = load ptr, ptr %a01, align 8
  %243 = load i32, ptr %rs_A.addr, align 4
  %244 = load ptr, ptr %b12t, align 8
  %245 = load i32, ptr %cs_B.addr, align 4
  %246 = load ptr, ptr %Y02, align 8
  %247 = load i32, ptr %rs_Y.addr, align 4
  %248 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_zger(i32 noundef 500, i32 noundef 500, i32 noundef %239, i32 noundef %240, ptr noundef %241, ptr noundef %242, i32 noundef %243, ptr noundef %244, i32 noundef %245, ptr noundef %246, i32 noundef %247, i32 noundef %248)
  %249 = load i32, ptr %m_ahead, align 4
  %250 = load ptr, ptr %b12t, align 8
  %251 = load i32, ptr %cs_B.addr, align 4
  %252 = load ptr, ptr %y12t, align 8
  %253 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_zcopyv(i32 noundef 500, i32 noundef %249, ptr noundef %250, i32 noundef %251, ptr noundef %252, i32 noundef %253)
  %254 = load i32, ptr %m_ahead, align 4
  %255 = load ptr, ptr %alpha11, align 8
  %256 = load ptr, ptr %y12t, align 8
  %257 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_zscalv(i32 noundef 500, i32 noundef %254, ptr noundef %255, ptr noundef %256, i32 noundef %257)
  %258 = load i32, ptr %m_behind, align 4
  %259 = load i32, ptr %m_ahead, align 4
  %260 = load ptr, ptr %buff_1, align 8
  %261 = load ptr, ptr %B02, align 8
  %262 = load i32, ptr %rs_B.addr, align 4
  %263 = load i32, ptr %cs_B.addr, align 4
  %264 = load ptr, ptr %a01, align 8
  %265 = load i32, ptr %rs_A.addr, align 4
  %266 = load ptr, ptr %buff_1, align 8
  %267 = load ptr, ptr %y12t, align 8
  %268 = load i32, ptr %cs_Y.addr, align 4
  call void @bl1_zgemv(i32 noundef 101, i32 noundef 501, i32 noundef %258, i32 noundef %259, ptr noundef %260, ptr noundef %261, i32 noundef %262, i32 noundef %263, ptr noundef %264, i32 noundef %265, ptr noundef %266, ptr noundef %267, i32 noundef %268)
  br label %for.inc

for.inc:                                          ; preds = %cond.end203
  %269 = load i32, ptr %i, align 4
  %inc = add nsw i32 %269, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret i32 -1
}

declare void @bl1_saxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_sdot2s(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare void @bl1_sgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_sinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_sger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_scopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_sscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_daxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_ddot2s(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare void @bl1_dgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_dinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_dger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_dcopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_dscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_caxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_cdot2s(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

declare void @bl1_cgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_cinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_cger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_ccopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_cscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_zaxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_zdot2s(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare void @bl1_zgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_zinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_zger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare void @bl1_zcopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_zscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
