; ModuleID = 'samples/542.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/lapack/red/eig/gest/nl/flamec/FLA_Eig_gest_nl_opt_var1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }
%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

@FLA_ZERO = external global %struct.FLA_Obj_view, align 8
@FLA_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_ONE_HALF = external global %struct.FLA_Obj_view, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Eig_gest_nl_opt_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B) #0 {
entry:
  %datatype = alloca i32, align 4
  %m_AB = alloca i32, align 4
  %rs_A = alloca i32, align 4
  %cs_A = alloca i32, align 4
  %rs_B = alloca i32, align 4
  %cs_B = alloca i32, align 4
  %inc_y = alloca i32, align 4
  %yL = alloca %struct.FLA_Obj_view, align 8
  %yR = alloca %struct.FLA_Obj_view, align 8
  %buff_A = alloca ptr, align 8
  %buff_y = alloca ptr, align 8
  %buff_B = alloca ptr, align 8
  %buff_A71 = alloca ptr, align 8
  %buff_y95 = alloca ptr, align 8
  %buff_B119 = alloca ptr, align 8
  %buff_A145 = alloca ptr, align 8
  %buff_y169 = alloca ptr, align 8
  %buff_B193 = alloca ptr, align 8
  %buff_A219 = alloca ptr, align 8
  %buff_y243 = alloca ptr, align 8
  %buff_B267 = alloca ptr, align 8
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
  %call10 = call i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y, ptr noundef %yL, ptr noundef %yR, i64 noundef 1, i32 noundef 210)
  %call11 = call i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %yL)
  %conv12 = trunc i64 %call11 to i32
  store i32 %conv12, ptr %inc_y, align 4
  %0 = load i32, ptr %datatype, align 4
  switch i32 %0, label %sw.epilog [
    i32 100, label %sw.bb
    i32 101, label %sw.bb70
    i32 102, label %sw.bb144
    i32 103, label %sw.bb218
  ]

sw.bb:                                            ; preds = %entry
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8
  %datatype13 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype13, align 8
  %cmp = icmp eq i32 %2, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base15 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %3 = load ptr, ptr %base15, align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base16 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %5 = load ptr, ptr %base16, align 8
  %buffer17 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer17, align 8
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8
  %base18 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %8 = load ptr, ptr %base18, align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8
  %mul = mul i64 %7, %9
  %add.ptr19 = getelementptr inbounds float, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8
  %base20 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %11 = load ptr, ptr %base20, align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8
  %mul21 = mul i64 %10, %12
  %add.ptr22 = getelementptr inbounds float, ptr %add.ptr19, i64 %mul21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr22, %cond.false ]
  store ptr %cond, ptr %buff_A, align 8
  %base23 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %13 = load ptr, ptr %base23, align 8
  %datatype24 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %datatype24, align 8
  %cmp25 = icmp eq i32 %14, 105
  br i1 %cmp25, label %cond.true27, label %cond.false31

cond.true27:                                      ; preds = %cond.end
  %base28 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %15 = load ptr, ptr %base28, align 8
  %buffer29 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %buffer29, align 8
  %add.ptr30 = getelementptr inbounds i8, ptr %16, i64 8
  br label %cond.end44

cond.false31:                                     ; preds = %cond.end
  %base32 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %17 = load ptr, ptr %base32, align 8
  %buffer33 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %buffer33, align 8
  %offn34 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 1
  %19 = load i64, ptr %offn34, align 8
  %base35 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %20 = load ptr, ptr %base35, align 8
  %cs36 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %20, i32 0, i32 5
  %21 = load i64, ptr %cs36, align 8
  %mul37 = mul i64 %19, %21
  %add.ptr38 = getelementptr inbounds float, ptr %18, i64 %mul37
  %offm39 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 0
  %22 = load i64, ptr %offm39, align 8
  %base40 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %23 = load ptr, ptr %base40, align 8
  %rs41 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %23, i32 0, i32 4
  %24 = load i64, ptr %rs41, align 8
  %mul42 = mul i64 %22, %24
  %add.ptr43 = getelementptr inbounds float, ptr %add.ptr38, i64 %mul42
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false31, %cond.true27
  %cond45 = phi ptr [ %add.ptr30, %cond.true27 ], [ %add.ptr43, %cond.false31 ]
  store ptr %cond45, ptr %buff_y, align 8
  %base46 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %25 = load ptr, ptr %base46, align 8
  %datatype47 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %datatype47, align 8
  %cmp48 = icmp eq i32 %26, 105
  br i1 %cmp48, label %cond.true50, label %cond.false54

cond.true50:                                      ; preds = %cond.end44
  %base51 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %27 = load ptr, ptr %base51, align 8
  %buffer52 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %buffer52, align 8
  %add.ptr53 = getelementptr inbounds i8, ptr %28, i64 8
  br label %cond.end67

cond.false54:                                     ; preds = %cond.end44
  %base55 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %29 = load ptr, ptr %base55, align 8
  %buffer56 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %buffer56, align 8
  %offn57 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 1
  %31 = load i64, ptr %offn57, align 8
  %base58 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %32 = load ptr, ptr %base58, align 8
  %cs59 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %32, i32 0, i32 5
  %33 = load i64, ptr %cs59, align 8
  %mul60 = mul i64 %31, %33
  %add.ptr61 = getelementptr inbounds float, ptr %30, i64 %mul60
  %offm62 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 0
  %34 = load i64, ptr %offm62, align 8
  %base63 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %35 = load ptr, ptr %base63, align 8
  %rs64 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %35, i32 0, i32 4
  %36 = load i64, ptr %rs64, align 8
  %mul65 = mul i64 %34, %36
  %add.ptr66 = getelementptr inbounds float, ptr %add.ptr61, i64 %mul65
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false54, %cond.true50
  %cond68 = phi ptr [ %add.ptr53, %cond.true50 ], [ %add.ptr66, %cond.false54 ]
  store ptr %cond68, ptr %buff_B, align 8
  %37 = load i32, ptr %m_AB, align 4
  %38 = load ptr, ptr %buff_A, align 8
  %39 = load i32, ptr %rs_A, align 4
  %40 = load i32, ptr %cs_A, align 4
  %41 = load ptr, ptr %buff_y, align 8
  %42 = load i32, ptr %inc_y, align 4
  %43 = load ptr, ptr %buff_B, align 8
  %44 = load i32, ptr %rs_B, align 4
  %45 = load i32, ptr %cs_B, align 4
  %call69 = call i32 @FLA_Eig_gest_nl_ops_var1(i32 noundef %37, ptr noundef %38, i32 noundef %39, i32 noundef %40, ptr noundef %41, i32 noundef %42, ptr noundef %43, i32 noundef %44, i32 noundef %45)
  br label %sw.epilog

sw.bb70:                                          ; preds = %entry
  %base72 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %46 = load ptr, ptr %base72, align 8
  %datatype73 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %46, i32 0, i32 0
  %47 = load i32, ptr %datatype73, align 8
  %cmp74 = icmp eq i32 %47, 105
  br i1 %cmp74, label %cond.true76, label %cond.false80

cond.true76:                                      ; preds = %sw.bb70
  %base77 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %48 = load ptr, ptr %base77, align 8
  %buffer78 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %48, i32 0, i32 12
  %49 = load ptr, ptr %buffer78, align 8
  %add.ptr79 = getelementptr inbounds i8, ptr %49, i64 16
  br label %cond.end93

cond.false80:                                     ; preds = %sw.bb70
  %base81 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %50 = load ptr, ptr %base81, align 8
  %buffer82 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %50, i32 0, i32 12
  %51 = load ptr, ptr %buffer82, align 8
  %offn83 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %52 = load i64, ptr %offn83, align 8
  %base84 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %53 = load ptr, ptr %base84, align 8
  %cs85 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %53, i32 0, i32 5
  %54 = load i64, ptr %cs85, align 8
  %mul86 = mul i64 %52, %54
  %add.ptr87 = getelementptr inbounds double, ptr %51, i64 %mul86
  %offm88 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %55 = load i64, ptr %offm88, align 8
  %base89 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %56 = load ptr, ptr %base89, align 8
  %rs90 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %56, i32 0, i32 4
  %57 = load i64, ptr %rs90, align 8
  %mul91 = mul i64 %55, %57
  %add.ptr92 = getelementptr inbounds double, ptr %add.ptr87, i64 %mul91
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false80, %cond.true76
  %cond94 = phi ptr [ %add.ptr79, %cond.true76 ], [ %add.ptr92, %cond.false80 ]
  store ptr %cond94, ptr %buff_A71, align 8
  %base96 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %58 = load ptr, ptr %base96, align 8
  %datatype97 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %58, i32 0, i32 0
  %59 = load i32, ptr %datatype97, align 8
  %cmp98 = icmp eq i32 %59, 105
  br i1 %cmp98, label %cond.true100, label %cond.false104

cond.true100:                                     ; preds = %cond.end93
  %base101 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %60 = load ptr, ptr %base101, align 8
  %buffer102 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %60, i32 0, i32 12
  %61 = load ptr, ptr %buffer102, align 8
  %add.ptr103 = getelementptr inbounds i8, ptr %61, i64 16
  br label %cond.end117

cond.false104:                                    ; preds = %cond.end93
  %base105 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %62 = load ptr, ptr %base105, align 8
  %buffer106 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %62, i32 0, i32 12
  %63 = load ptr, ptr %buffer106, align 8
  %offn107 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 1
  %64 = load i64, ptr %offn107, align 8
  %base108 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %65 = load ptr, ptr %base108, align 8
  %cs109 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %65, i32 0, i32 5
  %66 = load i64, ptr %cs109, align 8
  %mul110 = mul i64 %64, %66
  %add.ptr111 = getelementptr inbounds double, ptr %63, i64 %mul110
  %offm112 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 0
  %67 = load i64, ptr %offm112, align 8
  %base113 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %68 = load ptr, ptr %base113, align 8
  %rs114 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %68, i32 0, i32 4
  %69 = load i64, ptr %rs114, align 8
  %mul115 = mul i64 %67, %69
  %add.ptr116 = getelementptr inbounds double, ptr %add.ptr111, i64 %mul115
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false104, %cond.true100
  %cond118 = phi ptr [ %add.ptr103, %cond.true100 ], [ %add.ptr116, %cond.false104 ]
  store ptr %cond118, ptr %buff_y95, align 8
  %base120 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %70 = load ptr, ptr %base120, align 8
  %datatype121 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %70, i32 0, i32 0
  %71 = load i32, ptr %datatype121, align 8
  %cmp122 = icmp eq i32 %71, 105
  br i1 %cmp122, label %cond.true124, label %cond.false128

cond.true124:                                     ; preds = %cond.end117
  %base125 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %72 = load ptr, ptr %base125, align 8
  %buffer126 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %72, i32 0, i32 12
  %73 = load ptr, ptr %buffer126, align 8
  %add.ptr127 = getelementptr inbounds i8, ptr %73, i64 16
  br label %cond.end141

cond.false128:                                    ; preds = %cond.end117
  %base129 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %74 = load ptr, ptr %base129, align 8
  %buffer130 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %74, i32 0, i32 12
  %75 = load ptr, ptr %buffer130, align 8
  %offn131 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 1
  %76 = load i64, ptr %offn131, align 8
  %base132 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %77 = load ptr, ptr %base132, align 8
  %cs133 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %77, i32 0, i32 5
  %78 = load i64, ptr %cs133, align 8
  %mul134 = mul i64 %76, %78
  %add.ptr135 = getelementptr inbounds double, ptr %75, i64 %mul134
  %offm136 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 0
  %79 = load i64, ptr %offm136, align 8
  %base137 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %80 = load ptr, ptr %base137, align 8
  %rs138 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %80, i32 0, i32 4
  %81 = load i64, ptr %rs138, align 8
  %mul139 = mul i64 %79, %81
  %add.ptr140 = getelementptr inbounds double, ptr %add.ptr135, i64 %mul139
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false128, %cond.true124
  %cond142 = phi ptr [ %add.ptr127, %cond.true124 ], [ %add.ptr140, %cond.false128 ]
  store ptr %cond142, ptr %buff_B119, align 8
  %82 = load i32, ptr %m_AB, align 4
  %83 = load ptr, ptr %buff_A71, align 8
  %84 = load i32, ptr %rs_A, align 4
  %85 = load i32, ptr %cs_A, align 4
  %86 = load ptr, ptr %buff_y95, align 8
  %87 = load i32, ptr %inc_y, align 4
  %88 = load ptr, ptr %buff_B119, align 8
  %89 = load i32, ptr %rs_B, align 4
  %90 = load i32, ptr %cs_B, align 4
  %call143 = call i32 @FLA_Eig_gest_nl_opd_var1(i32 noundef %82, ptr noundef %83, i32 noundef %84, i32 noundef %85, ptr noundef %86, i32 noundef %87, ptr noundef %88, i32 noundef %89, i32 noundef %90)
  br label %sw.epilog

sw.bb144:                                         ; preds = %entry
  %base146 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %91 = load ptr, ptr %base146, align 8
  %datatype147 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %91, i32 0, i32 0
  %92 = load i32, ptr %datatype147, align 8
  %cmp148 = icmp eq i32 %92, 105
  br i1 %cmp148, label %cond.true150, label %cond.false154

cond.true150:                                     ; preds = %sw.bb144
  %base151 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %93 = load ptr, ptr %base151, align 8
  %buffer152 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %93, i32 0, i32 12
  %94 = load ptr, ptr %buffer152, align 8
  %add.ptr153 = getelementptr inbounds i8, ptr %94, i64 24
  br label %cond.end167

cond.false154:                                    ; preds = %sw.bb144
  %base155 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %95 = load ptr, ptr %base155, align 8
  %buffer156 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %95, i32 0, i32 12
  %96 = load ptr, ptr %buffer156, align 8
  %offn157 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %97 = load i64, ptr %offn157, align 8
  %base158 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %98 = load ptr, ptr %base158, align 8
  %cs159 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %98, i32 0, i32 5
  %99 = load i64, ptr %cs159, align 8
  %mul160 = mul i64 %97, %99
  %add.ptr161 = getelementptr inbounds %struct.scomplex, ptr %96, i64 %mul160
  %offm162 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %100 = load i64, ptr %offm162, align 8
  %base163 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %101 = load ptr, ptr %base163, align 8
  %rs164 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %101, i32 0, i32 4
  %102 = load i64, ptr %rs164, align 8
  %mul165 = mul i64 %100, %102
  %add.ptr166 = getelementptr inbounds %struct.scomplex, ptr %add.ptr161, i64 %mul165
  br label %cond.end167

cond.end167:                                      ; preds = %cond.false154, %cond.true150
  %cond168 = phi ptr [ %add.ptr153, %cond.true150 ], [ %add.ptr166, %cond.false154 ]
  store ptr %cond168, ptr %buff_A145, align 8
  %base170 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %103 = load ptr, ptr %base170, align 8
  %datatype171 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %103, i32 0, i32 0
  %104 = load i32, ptr %datatype171, align 8
  %cmp172 = icmp eq i32 %104, 105
  br i1 %cmp172, label %cond.true174, label %cond.false178

cond.true174:                                     ; preds = %cond.end167
  %base175 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %105 = load ptr, ptr %base175, align 8
  %buffer176 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %105, i32 0, i32 12
  %106 = load ptr, ptr %buffer176, align 8
  %add.ptr177 = getelementptr inbounds i8, ptr %106, i64 24
  br label %cond.end191

cond.false178:                                    ; preds = %cond.end167
  %base179 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %107 = load ptr, ptr %base179, align 8
  %buffer180 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %107, i32 0, i32 12
  %108 = load ptr, ptr %buffer180, align 8
  %offn181 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 1
  %109 = load i64, ptr %offn181, align 8
  %base182 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %110 = load ptr, ptr %base182, align 8
  %cs183 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %110, i32 0, i32 5
  %111 = load i64, ptr %cs183, align 8
  %mul184 = mul i64 %109, %111
  %add.ptr185 = getelementptr inbounds %struct.scomplex, ptr %108, i64 %mul184
  %offm186 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 0
  %112 = load i64, ptr %offm186, align 8
  %base187 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %113 = load ptr, ptr %base187, align 8
  %rs188 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %113, i32 0, i32 4
  %114 = load i64, ptr %rs188, align 8
  %mul189 = mul i64 %112, %114
  %add.ptr190 = getelementptr inbounds %struct.scomplex, ptr %add.ptr185, i64 %mul189
  br label %cond.end191

cond.end191:                                      ; preds = %cond.false178, %cond.true174
  %cond192 = phi ptr [ %add.ptr177, %cond.true174 ], [ %add.ptr190, %cond.false178 ]
  store ptr %cond192, ptr %buff_y169, align 8
  %base194 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %115 = load ptr, ptr %base194, align 8
  %datatype195 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %115, i32 0, i32 0
  %116 = load i32, ptr %datatype195, align 8
  %cmp196 = icmp eq i32 %116, 105
  br i1 %cmp196, label %cond.true198, label %cond.false202

cond.true198:                                     ; preds = %cond.end191
  %base199 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %117 = load ptr, ptr %base199, align 8
  %buffer200 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %117, i32 0, i32 12
  %118 = load ptr, ptr %buffer200, align 8
  %add.ptr201 = getelementptr inbounds i8, ptr %118, i64 24
  br label %cond.end215

cond.false202:                                    ; preds = %cond.end191
  %base203 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %119 = load ptr, ptr %base203, align 8
  %buffer204 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %119, i32 0, i32 12
  %120 = load ptr, ptr %buffer204, align 8
  %offn205 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 1
  %121 = load i64, ptr %offn205, align 8
  %base206 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %122 = load ptr, ptr %base206, align 8
  %cs207 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %122, i32 0, i32 5
  %123 = load i64, ptr %cs207, align 8
  %mul208 = mul i64 %121, %123
  %add.ptr209 = getelementptr inbounds %struct.scomplex, ptr %120, i64 %mul208
  %offm210 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 0
  %124 = load i64, ptr %offm210, align 8
  %base211 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %125 = load ptr, ptr %base211, align 8
  %rs212 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %125, i32 0, i32 4
  %126 = load i64, ptr %rs212, align 8
  %mul213 = mul i64 %124, %126
  %add.ptr214 = getelementptr inbounds %struct.scomplex, ptr %add.ptr209, i64 %mul213
  br label %cond.end215

cond.end215:                                      ; preds = %cond.false202, %cond.true198
  %cond216 = phi ptr [ %add.ptr201, %cond.true198 ], [ %add.ptr214, %cond.false202 ]
  store ptr %cond216, ptr %buff_B193, align 8
  %127 = load i32, ptr %m_AB, align 4
  %128 = load ptr, ptr %buff_A145, align 8
  %129 = load i32, ptr %rs_A, align 4
  %130 = load i32, ptr %cs_A, align 4
  %131 = load ptr, ptr %buff_y169, align 8
  %132 = load i32, ptr %inc_y, align 4
  %133 = load ptr, ptr %buff_B193, align 8
  %134 = load i32, ptr %rs_B, align 4
  %135 = load i32, ptr %cs_B, align 4
  %call217 = call i32 @FLA_Eig_gest_nl_opc_var1(i32 noundef %127, ptr noundef %128, i32 noundef %129, i32 noundef %130, ptr noundef %131, i32 noundef %132, ptr noundef %133, i32 noundef %134, i32 noundef %135)
  br label %sw.epilog

sw.bb218:                                         ; preds = %entry
  %base220 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %136 = load ptr, ptr %base220, align 8
  %datatype221 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %136, i32 0, i32 0
  %137 = load i32, ptr %datatype221, align 8
  %cmp222 = icmp eq i32 %137, 105
  br i1 %cmp222, label %cond.true224, label %cond.false228

cond.true224:                                     ; preds = %sw.bb218
  %base225 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %138 = load ptr, ptr %base225, align 8
  %buffer226 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %138, i32 0, i32 12
  %139 = load ptr, ptr %buffer226, align 8
  %add.ptr227 = getelementptr inbounds i8, ptr %139, i64 32
  br label %cond.end241

cond.false228:                                    ; preds = %sw.bb218
  %base229 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %140 = load ptr, ptr %base229, align 8
  %buffer230 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %140, i32 0, i32 12
  %141 = load ptr, ptr %buffer230, align 8
  %offn231 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %142 = load i64, ptr %offn231, align 8
  %base232 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %143 = load ptr, ptr %base232, align 8
  %cs233 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %143, i32 0, i32 5
  %144 = load i64, ptr %cs233, align 8
  %mul234 = mul i64 %142, %144
  %add.ptr235 = getelementptr inbounds %struct.dcomplex, ptr %141, i64 %mul234
  %offm236 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %145 = load i64, ptr %offm236, align 8
  %base237 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %146 = load ptr, ptr %base237, align 8
  %rs238 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %146, i32 0, i32 4
  %147 = load i64, ptr %rs238, align 8
  %mul239 = mul i64 %145, %147
  %add.ptr240 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr235, i64 %mul239
  br label %cond.end241

cond.end241:                                      ; preds = %cond.false228, %cond.true224
  %cond242 = phi ptr [ %add.ptr227, %cond.true224 ], [ %add.ptr240, %cond.false228 ]
  store ptr %cond242, ptr %buff_A219, align 8
  %base244 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %148 = load ptr, ptr %base244, align 8
  %datatype245 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %148, i32 0, i32 0
  %149 = load i32, ptr %datatype245, align 8
  %cmp246 = icmp eq i32 %149, 105
  br i1 %cmp246, label %cond.true248, label %cond.false252

cond.true248:                                     ; preds = %cond.end241
  %base249 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %150 = load ptr, ptr %base249, align 8
  %buffer250 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %150, i32 0, i32 12
  %151 = load ptr, ptr %buffer250, align 8
  %add.ptr251 = getelementptr inbounds i8, ptr %151, i64 32
  br label %cond.end265

cond.false252:                                    ; preds = %cond.end241
  %base253 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %152 = load ptr, ptr %base253, align 8
  %buffer254 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %152, i32 0, i32 12
  %153 = load ptr, ptr %buffer254, align 8
  %offn255 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 1
  %154 = load i64, ptr %offn255, align 8
  %base256 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %155 = load ptr, ptr %base256, align 8
  %cs257 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %155, i32 0, i32 5
  %156 = load i64, ptr %cs257, align 8
  %mul258 = mul i64 %154, %156
  %add.ptr259 = getelementptr inbounds %struct.dcomplex, ptr %153, i64 %mul258
  %offm260 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 0
  %157 = load i64, ptr %offm260, align 8
  %base261 = getelementptr inbounds %struct.FLA_Obj_view, ptr %yL, i32 0, i32 6
  %158 = load ptr, ptr %base261, align 8
  %rs262 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %158, i32 0, i32 4
  %159 = load i64, ptr %rs262, align 8
  %mul263 = mul i64 %157, %159
  %add.ptr264 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr259, i64 %mul263
  br label %cond.end265

cond.end265:                                      ; preds = %cond.false252, %cond.true248
  %cond266 = phi ptr [ %add.ptr251, %cond.true248 ], [ %add.ptr264, %cond.false252 ]
  store ptr %cond266, ptr %buff_y243, align 8
  %base268 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %160 = load ptr, ptr %base268, align 8
  %datatype269 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %160, i32 0, i32 0
  %161 = load i32, ptr %datatype269, align 8
  %cmp270 = icmp eq i32 %161, 105
  br i1 %cmp270, label %cond.true272, label %cond.false276

cond.true272:                                     ; preds = %cond.end265
  %base273 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %162 = load ptr, ptr %base273, align 8
  %buffer274 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %162, i32 0, i32 12
  %163 = load ptr, ptr %buffer274, align 8
  %add.ptr275 = getelementptr inbounds i8, ptr %163, i64 32
  br label %cond.end289

cond.false276:                                    ; preds = %cond.end265
  %base277 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %164 = load ptr, ptr %base277, align 8
  %buffer278 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %164, i32 0, i32 12
  %165 = load ptr, ptr %buffer278, align 8
  %offn279 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 1
  %166 = load i64, ptr %offn279, align 8
  %base280 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %167 = load ptr, ptr %base280, align 8
  %cs281 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %167, i32 0, i32 5
  %168 = load i64, ptr %cs281, align 8
  %mul282 = mul i64 %166, %168
  %add.ptr283 = getelementptr inbounds %struct.dcomplex, ptr %165, i64 %mul282
  %offm284 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 0
  %169 = load i64, ptr %offm284, align 8
  %base285 = getelementptr inbounds %struct.FLA_Obj_view, ptr %B, i32 0, i32 6
  %170 = load ptr, ptr %base285, align 8
  %rs286 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %170, i32 0, i32 4
  %171 = load i64, ptr %rs286, align 8
  %mul287 = mul i64 %169, %171
  %add.ptr288 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr283, i64 %mul287
  br label %cond.end289

cond.end289:                                      ; preds = %cond.false276, %cond.true272
  %cond290 = phi ptr [ %add.ptr275, %cond.true272 ], [ %add.ptr288, %cond.false276 ]
  store ptr %cond290, ptr %buff_B267, align 8
  %172 = load i32, ptr %m_AB, align 4
  %173 = load ptr, ptr %buff_A219, align 8
  %174 = load i32, ptr %rs_A, align 4
  %175 = load i32, ptr %cs_A, align 4
  %176 = load ptr, ptr %buff_y243, align 8
  %177 = load i32, ptr %inc_y, align 4
  %178 = load ptr, ptr %buff_B267, align 8
  %179 = load i32, ptr %rs_B, align 4
  %180 = load i32, ptr %cs_B, align 4
  %call291 = call i32 @FLA_Eig_gest_nl_opz_var1(i32 noundef %172, ptr noundef %173, i32 noundef %174, i32 noundef %175, ptr noundef %176, i32 noundef %177, ptr noundef %178, i32 noundef %179, i32 noundef %180)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end289, %cond.end215, %cond.end141, %cond.end67
  ret i32 -1
}

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Eig_gest_nl_ops_var1(i32 noundef %m_AB, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_y, i32 noundef %inc_y, ptr noundef %buff_B, i32 noundef %rs_B, i32 noundef %cs_B) #0 {
entry:
  %m_AB.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_y.addr = alloca ptr, align 8
  %inc_y.addr = alloca i32, align 4
  %buff_B.addr = alloca ptr, align 8
  %rs_B.addr = alloca i32, align 4
  %cs_B.addr = alloca i32, align 4
  %buff_0 = alloca ptr, align 8
  %buff_1 = alloca ptr, align 8
  %buff_1h = alloca ptr, align 8
  %i = alloca i32, align 4
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %y21 = alloca ptr, align 8
  %beta11 = alloca ptr, align 8
  %b21 = alloca ptr, align 8
  %B22 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  store i32 %m_AB, ptr %m_AB.addr, align 4
  store ptr %buff_A, ptr %buff_A.addr, align 8
  store i32 %rs_A, ptr %rs_A.addr, align 4
  store i32 %cs_A, ptr %cs_A.addr, align 4
  store ptr %buff_y, ptr %buff_y.addr, align 8
  store i32 %inc_y, ptr %inc_y.addr, align 4
  store ptr %buff_B, ptr %buff_B.addr, align 8
  store i32 %rs_B, ptr %rs_B.addr, align 4
  store i32 %cs_B, ptr %cs_B.addr, align 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds float, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ZERO, align 8
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds float, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_0, align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 8
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds float, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ONE, align 8
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds float, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_1, align 8
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 8
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 1), align 8
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds float, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_ONE_HALF, align 8
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds float, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_1h, align 8
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
  %41 = load i32, ptr %i, align 4
  %42 = load i32, ptr %rs_A.addr, align 4
  %mul38 = mul nsw i32 %41, %42
  %idx.ext39 = sext i32 %mul38 to i64
  %add.ptr40 = getelementptr inbounds float, ptr %add.ptr37, i64 %idx.ext39
  store ptr %add.ptr40, ptr %alpha11, align 8
  %43 = load ptr, ptr %buff_A.addr, align 8
  %44 = load i32, ptr %i, align 4
  %45 = load i32, ptr %cs_A.addr, align 4
  %mul41 = mul nsw i32 %44, %45
  %idx.ext42 = sext i32 %mul41 to i64
  %add.ptr43 = getelementptr inbounds float, ptr %43, i64 %idx.ext42
  %46 = load i32, ptr %i, align 4
  %add = add nsw i32 %46, 1
  %47 = load i32, ptr %rs_A.addr, align 4
  %mul44 = mul nsw i32 %add, %47
  %idx.ext45 = sext i32 %mul44 to i64
  %add.ptr46 = getelementptr inbounds float, ptr %add.ptr43, i64 %idx.ext45
  store ptr %add.ptr46, ptr %a21, align 8
  %48 = load ptr, ptr %buff_A.addr, align 8
  %49 = load i32, ptr %i, align 4
  %add47 = add nsw i32 %49, 1
  %50 = load i32, ptr %cs_A.addr, align 4
  %mul48 = mul nsw i32 %add47, %50
  %idx.ext49 = sext i32 %mul48 to i64
  %add.ptr50 = getelementptr inbounds float, ptr %48, i64 %idx.ext49
  %51 = load i32, ptr %i, align 4
  %add51 = add nsw i32 %51, 1
  %52 = load i32, ptr %rs_A.addr, align 4
  %mul52 = mul nsw i32 %add51, %52
  %idx.ext53 = sext i32 %mul52 to i64
  %add.ptr54 = getelementptr inbounds float, ptr %add.ptr50, i64 %idx.ext53
  store ptr %add.ptr54, ptr %A22, align 8
  %53 = load ptr, ptr %buff_y.addr, align 8
  %54 = load i32, ptr %i, align 4
  %add55 = add nsw i32 %54, 1
  %55 = load i32, ptr %inc_y.addr, align 4
  %mul56 = mul nsw i32 %add55, %55
  %idx.ext57 = sext i32 %mul56 to i64
  %add.ptr58 = getelementptr inbounds float, ptr %53, i64 %idx.ext57
  store ptr %add.ptr58, ptr %y21, align 8
  %56 = load ptr, ptr %buff_B.addr, align 8
  %57 = load i32, ptr %i, align 4
  %58 = load i32, ptr %cs_B.addr, align 4
  %mul59 = mul nsw i32 %57, %58
  %idx.ext60 = sext i32 %mul59 to i64
  %add.ptr61 = getelementptr inbounds float, ptr %56, i64 %idx.ext60
  %59 = load i32, ptr %i, align 4
  %60 = load i32, ptr %rs_B.addr, align 4
  %mul62 = mul nsw i32 %59, %60
  %idx.ext63 = sext i32 %mul62 to i64
  %add.ptr64 = getelementptr inbounds float, ptr %add.ptr61, i64 %idx.ext63
  store ptr %add.ptr64, ptr %beta11, align 8
  %61 = load ptr, ptr %buff_B.addr, align 8
  %62 = load i32, ptr %i, align 4
  %63 = load i32, ptr %cs_B.addr, align 4
  %mul65 = mul nsw i32 %62, %63
  %idx.ext66 = sext i32 %mul65 to i64
  %add.ptr67 = getelementptr inbounds float, ptr %61, i64 %idx.ext66
  %64 = load i32, ptr %i, align 4
  %add68 = add nsw i32 %64, 1
  %65 = load i32, ptr %rs_B.addr, align 4
  %mul69 = mul nsw i32 %add68, %65
  %idx.ext70 = sext i32 %mul69 to i64
  %add.ptr71 = getelementptr inbounds float, ptr %add.ptr67, i64 %idx.ext70
  store ptr %add.ptr71, ptr %b21, align 8
  %66 = load ptr, ptr %buff_B.addr, align 8
  %67 = load i32, ptr %i, align 4
  %add72 = add nsw i32 %67, 1
  %68 = load i32, ptr %cs_B.addr, align 4
  %mul73 = mul nsw i32 %add72, %68
  %idx.ext74 = sext i32 %mul73 to i64
  %add.ptr75 = getelementptr inbounds float, ptr %66, i64 %idx.ext74
  %69 = load i32, ptr %i, align 4
  %add76 = add nsw i32 %69, 1
  %70 = load i32, ptr %rs_B.addr, align 4
  %mul77 = mul nsw i32 %add76, %70
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds float, ptr %add.ptr75, i64 %idx.ext78
  store ptr %add.ptr79, ptr %B22, align 8
  %71 = load i32, ptr %m_AB.addr, align 4
  %72 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %71, %72
  %sub80 = sub nsw i32 %sub, 1
  store i32 %sub80, ptr %m_ahead, align 4
  %73 = load i32, ptr %m_ahead, align 4
  %74 = load ptr, ptr %buff_1, align 8
  %75 = load ptr, ptr %A22, align 8
  %76 = load i32, ptr %rs_A.addr, align 4
  %77 = load i32, ptr %cs_A.addr, align 4
  %78 = load ptr, ptr %b21, align 8
  %79 = load i32, ptr %rs_B.addr, align 4
  %80 = load ptr, ptr %buff_0, align 8
  %81 = load ptr, ptr %y21, align 8
  %82 = load i32, ptr %inc_y.addr, align 4
  call void @bl1_shemv(i32 noundef 200, i32 noundef 500, i32 noundef %73, ptr noundef %74, ptr noundef %75, i32 noundef %76, i32 noundef %77, ptr noundef %78, i32 noundef %79, ptr noundef %80, ptr noundef %81, i32 noundef %82)
  %83 = load i32, ptr %m_ahead, align 4
  %84 = load ptr, ptr %beta11, align 8
  %85 = load ptr, ptr %a21, align 8
  %86 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_sscalv(i32 noundef 500, i32 noundef %83, ptr noundef %84, ptr noundef %85, i32 noundef %86)
  %87 = load i32, ptr %m_ahead, align 4
  %88 = load ptr, ptr %buff_1h, align 8
  %89 = load ptr, ptr %y21, align 8
  %90 = load i32, ptr %inc_y.addr, align 4
  %91 = load ptr, ptr %a21, align 8
  %92 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %87, ptr noundef %88, ptr noundef %89, i32 noundef %90, ptr noundef %91, i32 noundef %92)
  %93 = load ptr, ptr %beta11, align 8
  %94 = load float, ptr %93, align 4
  %95 = load ptr, ptr %alpha11, align 8
  %96 = load float, ptr %95, align 4
  %mul81 = fmul float %94, %96
  %97 = load ptr, ptr %alpha11, align 8
  store float %mul81, ptr %97, align 4
  %98 = load ptr, ptr %beta11, align 8
  %99 = load float, ptr %98, align 4
  %100 = load ptr, ptr %alpha11, align 8
  %101 = load float, ptr %100, align 4
  %mul82 = fmul float %99, %101
  %102 = load ptr, ptr %alpha11, align 8
  store float %mul82, ptr %102, align 4
  %103 = load i32, ptr %m_ahead, align 4
  %104 = load ptr, ptr %buff_1, align 8
  %105 = load ptr, ptr %a21, align 8
  %106 = load i32, ptr %rs_A.addr, align 4
  %107 = load ptr, ptr %b21, align 8
  %108 = load i32, ptr %rs_B.addr, align 4
  %109 = load ptr, ptr %buff_1, align 8
  %110 = load ptr, ptr %alpha11, align 8
  call void @bl1_sdot2s(i32 noundef 501, i32 noundef %103, ptr noundef %104, ptr noundef %105, i32 noundef %106, ptr noundef %107, i32 noundef %108, ptr noundef %109, ptr noundef %110)
  %111 = load i32, ptr %m_ahead, align 4
  %112 = load ptr, ptr %buff_1h, align 8
  %113 = load ptr, ptr %y21, align 8
  %114 = load i32, ptr %inc_y.addr, align 4
  %115 = load ptr, ptr %a21, align 8
  %116 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %111, ptr noundef %112, ptr noundef %113, i32 noundef %114, ptr noundef %115, i32 noundef %116)
  %117 = load i32, ptr %m_ahead, align 4
  %118 = load ptr, ptr %B22, align 8
  %119 = load i32, ptr %rs_B.addr, align 4
  %120 = load i32, ptr %cs_B.addr, align 4
  %121 = load ptr, ptr %a21, align 8
  %122 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_strmv(i32 noundef 200, i32 noundef 103, i32 noundef 400, i32 noundef %117, ptr noundef %118, i32 noundef %119, i32 noundef %120, ptr noundef %121, i32 noundef %122)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %123 = load i32, ptr %i, align 4
  %inc = add nsw i32 %123, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Eig_gest_nl_opd_var1(i32 noundef %m_AB, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_y, i32 noundef %inc_y, ptr noundef %buff_B, i32 noundef %rs_B, i32 noundef %cs_B) #0 {
entry:
  %m_AB.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_y.addr = alloca ptr, align 8
  %inc_y.addr = alloca i32, align 4
  %buff_B.addr = alloca ptr, align 8
  %rs_B.addr = alloca i32, align 4
  %cs_B.addr = alloca i32, align 4
  %buff_0 = alloca ptr, align 8
  %buff_1 = alloca ptr, align 8
  %buff_1h = alloca ptr, align 8
  %i = alloca i32, align 4
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %y21 = alloca ptr, align 8
  %beta11 = alloca ptr, align 8
  %b21 = alloca ptr, align 8
  %B22 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  store i32 %m_AB, ptr %m_AB.addr, align 4
  store ptr %buff_A, ptr %buff_A.addr, align 8
  store i32 %rs_A, ptr %rs_A.addr, align 4
  store i32 %cs_A, ptr %cs_A.addr, align 4
  store ptr %buff_y, ptr %buff_y.addr, align 8
  store i32 %inc_y, ptr %inc_y.addr, align 4
  store ptr %buff_B, ptr %buff_B.addr, align 8
  store i32 %rs_B, ptr %rs_B.addr, align 4
  store i32 %cs_B, ptr %cs_B.addr, align 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 16
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds double, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ZERO, align 8
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds double, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_0, align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 16
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds double, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ONE, align 8
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds double, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_1, align 8
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 16
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 1), align 8
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds double, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_ONE_HALF, align 8
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds double, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_1h, align 8
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
  %41 = load i32, ptr %i, align 4
  %42 = load i32, ptr %rs_A.addr, align 4
  %mul38 = mul nsw i32 %41, %42
  %idx.ext39 = sext i32 %mul38 to i64
  %add.ptr40 = getelementptr inbounds double, ptr %add.ptr37, i64 %idx.ext39
  store ptr %add.ptr40, ptr %alpha11, align 8
  %43 = load ptr, ptr %buff_A.addr, align 8
  %44 = load i32, ptr %i, align 4
  %45 = load i32, ptr %cs_A.addr, align 4
  %mul41 = mul nsw i32 %44, %45
  %idx.ext42 = sext i32 %mul41 to i64
  %add.ptr43 = getelementptr inbounds double, ptr %43, i64 %idx.ext42
  %46 = load i32, ptr %i, align 4
  %add = add nsw i32 %46, 1
  %47 = load i32, ptr %rs_A.addr, align 4
  %mul44 = mul nsw i32 %add, %47
  %idx.ext45 = sext i32 %mul44 to i64
  %add.ptr46 = getelementptr inbounds double, ptr %add.ptr43, i64 %idx.ext45
  store ptr %add.ptr46, ptr %a21, align 8
  %48 = load ptr, ptr %buff_A.addr, align 8
  %49 = load i32, ptr %i, align 4
  %add47 = add nsw i32 %49, 1
  %50 = load i32, ptr %cs_A.addr, align 4
  %mul48 = mul nsw i32 %add47, %50
  %idx.ext49 = sext i32 %mul48 to i64
  %add.ptr50 = getelementptr inbounds double, ptr %48, i64 %idx.ext49
  %51 = load i32, ptr %i, align 4
  %add51 = add nsw i32 %51, 1
  %52 = load i32, ptr %rs_A.addr, align 4
  %mul52 = mul nsw i32 %add51, %52
  %idx.ext53 = sext i32 %mul52 to i64
  %add.ptr54 = getelementptr inbounds double, ptr %add.ptr50, i64 %idx.ext53
  store ptr %add.ptr54, ptr %A22, align 8
  %53 = load ptr, ptr %buff_y.addr, align 8
  %54 = load i32, ptr %i, align 4
  %add55 = add nsw i32 %54, 1
  %55 = load i32, ptr %inc_y.addr, align 4
  %mul56 = mul nsw i32 %add55, %55
  %idx.ext57 = sext i32 %mul56 to i64
  %add.ptr58 = getelementptr inbounds double, ptr %53, i64 %idx.ext57
  store ptr %add.ptr58, ptr %y21, align 8
  %56 = load ptr, ptr %buff_B.addr, align 8
  %57 = load i32, ptr %i, align 4
  %58 = load i32, ptr %cs_B.addr, align 4
  %mul59 = mul nsw i32 %57, %58
  %idx.ext60 = sext i32 %mul59 to i64
  %add.ptr61 = getelementptr inbounds double, ptr %56, i64 %idx.ext60
  %59 = load i32, ptr %i, align 4
  %60 = load i32, ptr %rs_B.addr, align 4
  %mul62 = mul nsw i32 %59, %60
  %idx.ext63 = sext i32 %mul62 to i64
  %add.ptr64 = getelementptr inbounds double, ptr %add.ptr61, i64 %idx.ext63
  store ptr %add.ptr64, ptr %beta11, align 8
  %61 = load ptr, ptr %buff_B.addr, align 8
  %62 = load i32, ptr %i, align 4
  %63 = load i32, ptr %cs_B.addr, align 4
  %mul65 = mul nsw i32 %62, %63
  %idx.ext66 = sext i32 %mul65 to i64
  %add.ptr67 = getelementptr inbounds double, ptr %61, i64 %idx.ext66
  %64 = load i32, ptr %i, align 4
  %add68 = add nsw i32 %64, 1
  %65 = load i32, ptr %rs_B.addr, align 4
  %mul69 = mul nsw i32 %add68, %65
  %idx.ext70 = sext i32 %mul69 to i64
  %add.ptr71 = getelementptr inbounds double, ptr %add.ptr67, i64 %idx.ext70
  store ptr %add.ptr71, ptr %b21, align 8
  %66 = load ptr, ptr %buff_B.addr, align 8
  %67 = load i32, ptr %i, align 4
  %add72 = add nsw i32 %67, 1
  %68 = load i32, ptr %cs_B.addr, align 4
  %mul73 = mul nsw i32 %add72, %68
  %idx.ext74 = sext i32 %mul73 to i64
  %add.ptr75 = getelementptr inbounds double, ptr %66, i64 %idx.ext74
  %69 = load i32, ptr %i, align 4
  %add76 = add nsw i32 %69, 1
  %70 = load i32, ptr %rs_B.addr, align 4
  %mul77 = mul nsw i32 %add76, %70
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds double, ptr %add.ptr75, i64 %idx.ext78
  store ptr %add.ptr79, ptr %B22, align 8
  %71 = load i32, ptr %m_AB.addr, align 4
  %72 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %71, %72
  %sub80 = sub nsw i32 %sub, 1
  store i32 %sub80, ptr %m_ahead, align 4
  %73 = load i32, ptr %m_ahead, align 4
  %74 = load ptr, ptr %buff_1, align 8
  %75 = load ptr, ptr %A22, align 8
  %76 = load i32, ptr %rs_A.addr, align 4
  %77 = load i32, ptr %cs_A.addr, align 4
  %78 = load ptr, ptr %b21, align 8
  %79 = load i32, ptr %rs_B.addr, align 4
  %80 = load ptr, ptr %buff_0, align 8
  %81 = load ptr, ptr %y21, align 8
  %82 = load i32, ptr %inc_y.addr, align 4
  call void @bl1_dhemv(i32 noundef 200, i32 noundef 500, i32 noundef %73, ptr noundef %74, ptr noundef %75, i32 noundef %76, i32 noundef %77, ptr noundef %78, i32 noundef %79, ptr noundef %80, ptr noundef %81, i32 noundef %82)
  %83 = load i32, ptr %m_ahead, align 4
  %84 = load ptr, ptr %beta11, align 8
  %85 = load ptr, ptr %a21, align 8
  %86 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_dscalv(i32 noundef 500, i32 noundef %83, ptr noundef %84, ptr noundef %85, i32 noundef %86)
  %87 = load i32, ptr %m_ahead, align 4
  %88 = load ptr, ptr %buff_1h, align 8
  %89 = load ptr, ptr %y21, align 8
  %90 = load i32, ptr %inc_y.addr, align 4
  %91 = load ptr, ptr %a21, align 8
  %92 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_daxpyv(i32 noundef 500, i32 noundef %87, ptr noundef %88, ptr noundef %89, i32 noundef %90, ptr noundef %91, i32 noundef %92)
  %93 = load ptr, ptr %beta11, align 8
  %94 = load double, ptr %93, align 8
  %95 = load ptr, ptr %alpha11, align 8
  %96 = load double, ptr %95, align 8
  %mul81 = fmul double %94, %96
  %97 = load ptr, ptr %alpha11, align 8
  store double %mul81, ptr %97, align 8
  %98 = load ptr, ptr %beta11, align 8
  %99 = load double, ptr %98, align 8
  %100 = load ptr, ptr %alpha11, align 8
  %101 = load double, ptr %100, align 8
  %mul82 = fmul double %99, %101
  %102 = load ptr, ptr %alpha11, align 8
  store double %mul82, ptr %102, align 8
  %103 = load i32, ptr %m_ahead, align 4
  %104 = load ptr, ptr %buff_1, align 8
  %105 = load ptr, ptr %a21, align 8
  %106 = load i32, ptr %rs_A.addr, align 4
  %107 = load ptr, ptr %b21, align 8
  %108 = load i32, ptr %rs_B.addr, align 4
  %109 = load ptr, ptr %buff_1, align 8
  %110 = load ptr, ptr %alpha11, align 8
  call void @bl1_ddot2s(i32 noundef 501, i32 noundef %103, ptr noundef %104, ptr noundef %105, i32 noundef %106, ptr noundef %107, i32 noundef %108, ptr noundef %109, ptr noundef %110)
  %111 = load i32, ptr %m_ahead, align 4
  %112 = load ptr, ptr %buff_1h, align 8
  %113 = load ptr, ptr %y21, align 8
  %114 = load i32, ptr %inc_y.addr, align 4
  %115 = load ptr, ptr %a21, align 8
  %116 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_daxpyv(i32 noundef 500, i32 noundef %111, ptr noundef %112, ptr noundef %113, i32 noundef %114, ptr noundef %115, i32 noundef %116)
  %117 = load i32, ptr %m_ahead, align 4
  %118 = load ptr, ptr %B22, align 8
  %119 = load i32, ptr %rs_B.addr, align 4
  %120 = load i32, ptr %cs_B.addr, align 4
  %121 = load ptr, ptr %a21, align 8
  %122 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_dtrmv(i32 noundef 200, i32 noundef 103, i32 noundef 400, i32 noundef %117, ptr noundef %118, i32 noundef %119, i32 noundef %120, ptr noundef %121, i32 noundef %122)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %123 = load i32, ptr %i, align 4
  %inc = add nsw i32 %123, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Eig_gest_nl_opc_var1(i32 noundef %m_AB, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_y, i32 noundef %inc_y, ptr noundef %buff_B, i32 noundef %rs_B, i32 noundef %cs_B) #0 {
entry:
  %m_AB.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_y.addr = alloca ptr, align 8
  %inc_y.addr = alloca i32, align 4
  %buff_B.addr = alloca ptr, align 8
  %rs_B.addr = alloca i32, align 4
  %cs_B.addr = alloca i32, align 4
  %buff_0 = alloca ptr, align 8
  %buff_1 = alloca ptr, align 8
  %buff_1h = alloca ptr, align 8
  %i = alloca i32, align 4
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %y21 = alloca ptr, align 8
  %beta11 = alloca ptr, align 8
  %b21 = alloca ptr, align 8
  %B22 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %tempr = alloca float, align 4
  %tempi = alloca float, align 4
  %tempr93 = alloca float, align 4
  %tempi101 = alloca float, align 4
  store i32 %m_AB, ptr %m_AB.addr, align 4
  store ptr %buff_A, ptr %buff_A.addr, align 8
  store i32 %rs_A, ptr %rs_A.addr, align 4
  store i32 %cs_A, ptr %cs_A.addr, align 4
  store ptr %buff_y, ptr %buff_y.addr, align 8
  store i32 %inc_y, ptr %inc_y.addr, align 4
  store ptr %buff_B, ptr %buff_B.addr, align 8
  store i32 %rs_B, ptr %rs_B.addr, align 4
  store i32 %cs_B, ptr %cs_B.addr, align 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 24
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds %struct.scomplex, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ZERO, align 8
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds %struct.scomplex, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_0, align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 24
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds %struct.scomplex, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ONE, align 8
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds %struct.scomplex, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_1, align 8
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 24
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 1), align 8
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds %struct.scomplex, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_ONE_HALF, align 8
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds %struct.scomplex, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_1h, align 8
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
  %41 = load i32, ptr %i, align 4
  %42 = load i32, ptr %rs_A.addr, align 4
  %mul38 = mul nsw i32 %41, %42
  %idx.ext39 = sext i32 %mul38 to i64
  %add.ptr40 = getelementptr inbounds %struct.scomplex, ptr %add.ptr37, i64 %idx.ext39
  store ptr %add.ptr40, ptr %alpha11, align 8
  %43 = load ptr, ptr %buff_A.addr, align 8
  %44 = load i32, ptr %i, align 4
  %45 = load i32, ptr %cs_A.addr, align 4
  %mul41 = mul nsw i32 %44, %45
  %idx.ext42 = sext i32 %mul41 to i64
  %add.ptr43 = getelementptr inbounds %struct.scomplex, ptr %43, i64 %idx.ext42
  %46 = load i32, ptr %i, align 4
  %add = add nsw i32 %46, 1
  %47 = load i32, ptr %rs_A.addr, align 4
  %mul44 = mul nsw i32 %add, %47
  %idx.ext45 = sext i32 %mul44 to i64
  %add.ptr46 = getelementptr inbounds %struct.scomplex, ptr %add.ptr43, i64 %idx.ext45
  store ptr %add.ptr46, ptr %a21, align 8
  %48 = load ptr, ptr %buff_A.addr, align 8
  %49 = load i32, ptr %i, align 4
  %add47 = add nsw i32 %49, 1
  %50 = load i32, ptr %cs_A.addr, align 4
  %mul48 = mul nsw i32 %add47, %50
  %idx.ext49 = sext i32 %mul48 to i64
  %add.ptr50 = getelementptr inbounds %struct.scomplex, ptr %48, i64 %idx.ext49
  %51 = load i32, ptr %i, align 4
  %add51 = add nsw i32 %51, 1
  %52 = load i32, ptr %rs_A.addr, align 4
  %mul52 = mul nsw i32 %add51, %52
  %idx.ext53 = sext i32 %mul52 to i64
  %add.ptr54 = getelementptr inbounds %struct.scomplex, ptr %add.ptr50, i64 %idx.ext53
  store ptr %add.ptr54, ptr %A22, align 8
  %53 = load ptr, ptr %buff_y.addr, align 8
  %54 = load i32, ptr %i, align 4
  %add55 = add nsw i32 %54, 1
  %55 = load i32, ptr %inc_y.addr, align 4
  %mul56 = mul nsw i32 %add55, %55
  %idx.ext57 = sext i32 %mul56 to i64
  %add.ptr58 = getelementptr inbounds %struct.scomplex, ptr %53, i64 %idx.ext57
  store ptr %add.ptr58, ptr %y21, align 8
  %56 = load ptr, ptr %buff_B.addr, align 8
  %57 = load i32, ptr %i, align 4
  %58 = load i32, ptr %cs_B.addr, align 4
  %mul59 = mul nsw i32 %57, %58
  %idx.ext60 = sext i32 %mul59 to i64
  %add.ptr61 = getelementptr inbounds %struct.scomplex, ptr %56, i64 %idx.ext60
  %59 = load i32, ptr %i, align 4
  %60 = load i32, ptr %rs_B.addr, align 4
  %mul62 = mul nsw i32 %59, %60
  %idx.ext63 = sext i32 %mul62 to i64
  %add.ptr64 = getelementptr inbounds %struct.scomplex, ptr %add.ptr61, i64 %idx.ext63
  store ptr %add.ptr64, ptr %beta11, align 8
  %61 = load ptr, ptr %buff_B.addr, align 8
  %62 = load i32, ptr %i, align 4
  %63 = load i32, ptr %cs_B.addr, align 4
  %mul65 = mul nsw i32 %62, %63
  %idx.ext66 = sext i32 %mul65 to i64
  %add.ptr67 = getelementptr inbounds %struct.scomplex, ptr %61, i64 %idx.ext66
  %64 = load i32, ptr %i, align 4
  %add68 = add nsw i32 %64, 1
  %65 = load i32, ptr %rs_B.addr, align 4
  %mul69 = mul nsw i32 %add68, %65
  %idx.ext70 = sext i32 %mul69 to i64
  %add.ptr71 = getelementptr inbounds %struct.scomplex, ptr %add.ptr67, i64 %idx.ext70
  store ptr %add.ptr71, ptr %b21, align 8
  %66 = load ptr, ptr %buff_B.addr, align 8
  %67 = load i32, ptr %i, align 4
  %add72 = add nsw i32 %67, 1
  %68 = load i32, ptr %cs_B.addr, align 4
  %mul73 = mul nsw i32 %add72, %68
  %idx.ext74 = sext i32 %mul73 to i64
  %add.ptr75 = getelementptr inbounds %struct.scomplex, ptr %66, i64 %idx.ext74
  %69 = load i32, ptr %i, align 4
  %add76 = add nsw i32 %69, 1
  %70 = load i32, ptr %rs_B.addr, align 4
  %mul77 = mul nsw i32 %add76, %70
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds %struct.scomplex, ptr %add.ptr75, i64 %idx.ext78
  store ptr %add.ptr79, ptr %B22, align 8
  %71 = load i32, ptr %m_AB.addr, align 4
  %72 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %71, %72
  %sub80 = sub nsw i32 %sub, 1
  store i32 %sub80, ptr %m_ahead, align 4
  %73 = load i32, ptr %m_ahead, align 4
  %74 = load ptr, ptr %buff_1, align 8
  %75 = load ptr, ptr %A22, align 8
  %76 = load i32, ptr %rs_A.addr, align 4
  %77 = load i32, ptr %cs_A.addr, align 4
  %78 = load ptr, ptr %b21, align 8
  %79 = load i32, ptr %rs_B.addr, align 4
  %80 = load ptr, ptr %buff_0, align 8
  %81 = load ptr, ptr %y21, align 8
  %82 = load i32, ptr %inc_y.addr, align 4
  call void @bl1_chemv(i32 noundef 200, i32 noundef 500, i32 noundef %73, ptr noundef %74, ptr noundef %75, i32 noundef %76, i32 noundef %77, ptr noundef %78, i32 noundef %79, ptr noundef %80, ptr noundef %81, i32 noundef %82)
  %83 = load i32, ptr %m_ahead, align 4
  %84 = load ptr, ptr %beta11, align 8
  %85 = load ptr, ptr %a21, align 8
  %86 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_cscalv(i32 noundef 500, i32 noundef %83, ptr noundef %84, ptr noundef %85, i32 noundef %86)
  %87 = load i32, ptr %m_ahead, align 4
  %88 = load ptr, ptr %buff_1h, align 8
  %89 = load ptr, ptr %y21, align 8
  %90 = load i32, ptr %inc_y.addr, align 4
  %91 = load ptr, ptr %a21, align 8
  %92 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef %87, ptr noundef %88, ptr noundef %89, i32 noundef %90, ptr noundef %91, i32 noundef %92)
  %93 = load ptr, ptr %beta11, align 8
  %real = getelementptr inbounds %struct.scomplex, ptr %93, i32 0, i32 0
  %94 = load float, ptr %real, align 4
  %95 = load ptr, ptr %alpha11, align 8
  %real81 = getelementptr inbounds %struct.scomplex, ptr %95, i32 0, i32 0
  %96 = load float, ptr %real81, align 4
  %97 = load ptr, ptr %beta11, align 8
  %imag = getelementptr inbounds %struct.scomplex, ptr %97, i32 0, i32 1
  %98 = load float, ptr %imag, align 4
  %99 = load ptr, ptr %alpha11, align 8
  %imag83 = getelementptr inbounds %struct.scomplex, ptr %99, i32 0, i32 1
  %100 = load float, ptr %imag83, align 4
  %mul84 = fmul float %98, %100
  %neg = fneg float %mul84
  %101 = call float @llvm.fmuladd.f32(float %94, float %96, float %neg)
  store float %101, ptr %tempr, align 4
  %102 = load ptr, ptr %beta11, align 8
  %imag85 = getelementptr inbounds %struct.scomplex, ptr %102, i32 0, i32 1
  %103 = load float, ptr %imag85, align 4
  %104 = load ptr, ptr %alpha11, align 8
  %real86 = getelementptr inbounds %struct.scomplex, ptr %104, i32 0, i32 0
  %105 = load float, ptr %real86, align 4
  %106 = load ptr, ptr %beta11, align 8
  %real88 = getelementptr inbounds %struct.scomplex, ptr %106, i32 0, i32 0
  %107 = load float, ptr %real88, align 4
  %108 = load ptr, ptr %alpha11, align 8
  %imag89 = getelementptr inbounds %struct.scomplex, ptr %108, i32 0, i32 1
  %109 = load float, ptr %imag89, align 4
  %mul90 = fmul float %107, %109
  %110 = call float @llvm.fmuladd.f32(float %103, float %105, float %mul90)
  store float %110, ptr %tempi, align 4
  %111 = load float, ptr %tempr, align 4
  %112 = load ptr, ptr %alpha11, align 8
  %real91 = getelementptr inbounds %struct.scomplex, ptr %112, i32 0, i32 0
  store float %111, ptr %real91, align 4
  %113 = load float, ptr %tempi, align 4
  %114 = load ptr, ptr %alpha11, align 8
  %imag92 = getelementptr inbounds %struct.scomplex, ptr %114, i32 0, i32 1
  store float %113, ptr %imag92, align 4
  %115 = load ptr, ptr %beta11, align 8
  %real94 = getelementptr inbounds %struct.scomplex, ptr %115, i32 0, i32 0
  %116 = load float, ptr %real94, align 4
  %117 = load ptr, ptr %alpha11, align 8
  %real95 = getelementptr inbounds %struct.scomplex, ptr %117, i32 0, i32 0
  %118 = load float, ptr %real95, align 4
  %119 = load ptr, ptr %beta11, align 8
  %imag97 = getelementptr inbounds %struct.scomplex, ptr %119, i32 0, i32 1
  %120 = load float, ptr %imag97, align 4
  %121 = load ptr, ptr %alpha11, align 8
  %imag98 = getelementptr inbounds %struct.scomplex, ptr %121, i32 0, i32 1
  %122 = load float, ptr %imag98, align 4
  %mul99 = fmul float %120, %122
  %neg100 = fneg float %mul99
  %123 = call float @llvm.fmuladd.f32(float %116, float %118, float %neg100)
  store float %123, ptr %tempr93, align 4
  %124 = load ptr, ptr %beta11, align 8
  %imag102 = getelementptr inbounds %struct.scomplex, ptr %124, i32 0, i32 1
  %125 = load float, ptr %imag102, align 4
  %126 = load ptr, ptr %alpha11, align 8
  %real103 = getelementptr inbounds %struct.scomplex, ptr %126, i32 0, i32 0
  %127 = load float, ptr %real103, align 4
  %128 = load ptr, ptr %beta11, align 8
  %real105 = getelementptr inbounds %struct.scomplex, ptr %128, i32 0, i32 0
  %129 = load float, ptr %real105, align 4
  %130 = load ptr, ptr %alpha11, align 8
  %imag106 = getelementptr inbounds %struct.scomplex, ptr %130, i32 0, i32 1
  %131 = load float, ptr %imag106, align 4
  %mul107 = fmul float %129, %131
  %132 = call float @llvm.fmuladd.f32(float %125, float %127, float %mul107)
  store float %132, ptr %tempi101, align 4
  %133 = load float, ptr %tempr93, align 4
  %134 = load ptr, ptr %alpha11, align 8
  %real108 = getelementptr inbounds %struct.scomplex, ptr %134, i32 0, i32 0
  store float %133, ptr %real108, align 4
  %135 = load float, ptr %tempi101, align 4
  %136 = load ptr, ptr %alpha11, align 8
  %imag109 = getelementptr inbounds %struct.scomplex, ptr %136, i32 0, i32 1
  store float %135, ptr %imag109, align 4
  %137 = load i32, ptr %m_ahead, align 4
  %138 = load ptr, ptr %buff_1, align 8
  %139 = load ptr, ptr %a21, align 8
  %140 = load i32, ptr %rs_A.addr, align 4
  %141 = load ptr, ptr %b21, align 8
  %142 = load i32, ptr %rs_B.addr, align 4
  %143 = load ptr, ptr %buff_1, align 8
  %144 = load ptr, ptr %alpha11, align 8
  call void @bl1_cdot2s(i32 noundef 501, i32 noundef %137, ptr noundef %138, ptr noundef %139, i32 noundef %140, ptr noundef %141, i32 noundef %142, ptr noundef %143, ptr noundef %144)
  %145 = load i32, ptr %m_ahead, align 4
  %146 = load ptr, ptr %buff_1h, align 8
  %147 = load ptr, ptr %y21, align 8
  %148 = load i32, ptr %inc_y.addr, align 4
  %149 = load ptr, ptr %a21, align 8
  %150 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef %145, ptr noundef %146, ptr noundef %147, i32 noundef %148, ptr noundef %149, i32 noundef %150)
  %151 = load i32, ptr %m_ahead, align 4
  %152 = load ptr, ptr %B22, align 8
  %153 = load i32, ptr %rs_B.addr, align 4
  %154 = load i32, ptr %cs_B.addr, align 4
  %155 = load ptr, ptr %a21, align 8
  %156 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_ctrmv(i32 noundef 200, i32 noundef 103, i32 noundef 400, i32 noundef %151, ptr noundef %152, i32 noundef %153, i32 noundef %154, ptr noundef %155, i32 noundef %156)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %157 = load i32, ptr %i, align 4
  %inc = add nsw i32 %157, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret i32 -1
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Eig_gest_nl_opz_var1(i32 noundef %m_AB, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_y, i32 noundef %inc_y, ptr noundef %buff_B, i32 noundef %rs_B, i32 noundef %cs_B) #0 {
entry:
  %m_AB.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_y.addr = alloca ptr, align 8
  %inc_y.addr = alloca i32, align 4
  %buff_B.addr = alloca ptr, align 8
  %rs_B.addr = alloca i32, align 4
  %cs_B.addr = alloca i32, align 4
  %buff_0 = alloca ptr, align 8
  %buff_1 = alloca ptr, align 8
  %buff_1h = alloca ptr, align 8
  %i = alloca i32, align 4
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %y21 = alloca ptr, align 8
  %beta11 = alloca ptr, align 8
  %b21 = alloca ptr, align 8
  %B22 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %tempr = alloca double, align 8
  %tempi = alloca double, align 8
  %tempr93 = alloca double, align 8
  %tempi101 = alloca double, align 8
  store i32 %m_AB, ptr %m_AB.addr, align 4
  store ptr %buff_A, ptr %buff_A.addr, align 8
  store i32 %rs_A, ptr %rs_A.addr, align 4
  store i32 %cs_A, ptr %cs_A.addr, align 4
  store ptr %buff_y, ptr %buff_y.addr, align 8
  store i32 %inc_y, ptr %inc_y.addr, align 4
  store ptr %buff_B, ptr %buff_B.addr, align 8
  store i32 %rs_B, ptr %rs_B.addr, align 4
  store i32 %cs_B, ptr %cs_B.addr, align 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds %struct.dcomplex, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ZERO, align 8
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_0, align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 32
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds %struct.dcomplex, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ONE, align 8
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_1, align 8
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 32
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 1), align 8
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds %struct.dcomplex, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_ONE_HALF, align 8
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE_HALF, i32 0, i32 6), align 8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_1h, align 8
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
  %41 = load i32, ptr %i, align 4
  %42 = load i32, ptr %rs_A.addr, align 4
  %mul38 = mul nsw i32 %41, %42
  %idx.ext39 = sext i32 %mul38 to i64
  %add.ptr40 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr37, i64 %idx.ext39
  store ptr %add.ptr40, ptr %alpha11, align 8
  %43 = load ptr, ptr %buff_A.addr, align 8
  %44 = load i32, ptr %i, align 4
  %45 = load i32, ptr %cs_A.addr, align 4
  %mul41 = mul nsw i32 %44, %45
  %idx.ext42 = sext i32 %mul41 to i64
  %add.ptr43 = getelementptr inbounds %struct.dcomplex, ptr %43, i64 %idx.ext42
  %46 = load i32, ptr %i, align 4
  %add = add nsw i32 %46, 1
  %47 = load i32, ptr %rs_A.addr, align 4
  %mul44 = mul nsw i32 %add, %47
  %idx.ext45 = sext i32 %mul44 to i64
  %add.ptr46 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr43, i64 %idx.ext45
  store ptr %add.ptr46, ptr %a21, align 8
  %48 = load ptr, ptr %buff_A.addr, align 8
  %49 = load i32, ptr %i, align 4
  %add47 = add nsw i32 %49, 1
  %50 = load i32, ptr %cs_A.addr, align 4
  %mul48 = mul nsw i32 %add47, %50
  %idx.ext49 = sext i32 %mul48 to i64
  %add.ptr50 = getelementptr inbounds %struct.dcomplex, ptr %48, i64 %idx.ext49
  %51 = load i32, ptr %i, align 4
  %add51 = add nsw i32 %51, 1
  %52 = load i32, ptr %rs_A.addr, align 4
  %mul52 = mul nsw i32 %add51, %52
  %idx.ext53 = sext i32 %mul52 to i64
  %add.ptr54 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr50, i64 %idx.ext53
  store ptr %add.ptr54, ptr %A22, align 8
  %53 = load ptr, ptr %buff_y.addr, align 8
  %54 = load i32, ptr %i, align 4
  %add55 = add nsw i32 %54, 1
  %55 = load i32, ptr %inc_y.addr, align 4
  %mul56 = mul nsw i32 %add55, %55
  %idx.ext57 = sext i32 %mul56 to i64
  %add.ptr58 = getelementptr inbounds %struct.dcomplex, ptr %53, i64 %idx.ext57
  store ptr %add.ptr58, ptr %y21, align 8
  %56 = load ptr, ptr %buff_B.addr, align 8
  %57 = load i32, ptr %i, align 4
  %58 = load i32, ptr %cs_B.addr, align 4
  %mul59 = mul nsw i32 %57, %58
  %idx.ext60 = sext i32 %mul59 to i64
  %add.ptr61 = getelementptr inbounds %struct.dcomplex, ptr %56, i64 %idx.ext60
  %59 = load i32, ptr %i, align 4
  %60 = load i32, ptr %rs_B.addr, align 4
  %mul62 = mul nsw i32 %59, %60
  %idx.ext63 = sext i32 %mul62 to i64
  %add.ptr64 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr61, i64 %idx.ext63
  store ptr %add.ptr64, ptr %beta11, align 8
  %61 = load ptr, ptr %buff_B.addr, align 8
  %62 = load i32, ptr %i, align 4
  %63 = load i32, ptr %cs_B.addr, align 4
  %mul65 = mul nsw i32 %62, %63
  %idx.ext66 = sext i32 %mul65 to i64
  %add.ptr67 = getelementptr inbounds %struct.dcomplex, ptr %61, i64 %idx.ext66
  %64 = load i32, ptr %i, align 4
  %add68 = add nsw i32 %64, 1
  %65 = load i32, ptr %rs_B.addr, align 4
  %mul69 = mul nsw i32 %add68, %65
  %idx.ext70 = sext i32 %mul69 to i64
  %add.ptr71 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr67, i64 %idx.ext70
  store ptr %add.ptr71, ptr %b21, align 8
  %66 = load ptr, ptr %buff_B.addr, align 8
  %67 = load i32, ptr %i, align 4
  %add72 = add nsw i32 %67, 1
  %68 = load i32, ptr %cs_B.addr, align 4
  %mul73 = mul nsw i32 %add72, %68
  %idx.ext74 = sext i32 %mul73 to i64
  %add.ptr75 = getelementptr inbounds %struct.dcomplex, ptr %66, i64 %idx.ext74
  %69 = load i32, ptr %i, align 4
  %add76 = add nsw i32 %69, 1
  %70 = load i32, ptr %rs_B.addr, align 4
  %mul77 = mul nsw i32 %add76, %70
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr75, i64 %idx.ext78
  store ptr %add.ptr79, ptr %B22, align 8
  %71 = load i32, ptr %m_AB.addr, align 4
  %72 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %71, %72
  %sub80 = sub nsw i32 %sub, 1
  store i32 %sub80, ptr %m_ahead, align 4
  %73 = load i32, ptr %m_ahead, align 4
  %74 = load ptr, ptr %buff_1, align 8
  %75 = load ptr, ptr %A22, align 8
  %76 = load i32, ptr %rs_A.addr, align 4
  %77 = load i32, ptr %cs_A.addr, align 4
  %78 = load ptr, ptr %b21, align 8
  %79 = load i32, ptr %rs_B.addr, align 4
  %80 = load ptr, ptr %buff_0, align 8
  %81 = load ptr, ptr %y21, align 8
  %82 = load i32, ptr %inc_y.addr, align 4
  call void @bl1_zhemv(i32 noundef 200, i32 noundef 500, i32 noundef %73, ptr noundef %74, ptr noundef %75, i32 noundef %76, i32 noundef %77, ptr noundef %78, i32 noundef %79, ptr noundef %80, ptr noundef %81, i32 noundef %82)
  %83 = load i32, ptr %m_ahead, align 4
  %84 = load ptr, ptr %beta11, align 8
  %85 = load ptr, ptr %a21, align 8
  %86 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_zscalv(i32 noundef 500, i32 noundef %83, ptr noundef %84, ptr noundef %85, i32 noundef %86)
  %87 = load i32, ptr %m_ahead, align 4
  %88 = load ptr, ptr %buff_1h, align 8
  %89 = load ptr, ptr %y21, align 8
  %90 = load i32, ptr %inc_y.addr, align 4
  %91 = load ptr, ptr %a21, align 8
  %92 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_zaxpyv(i32 noundef 500, i32 noundef %87, ptr noundef %88, ptr noundef %89, i32 noundef %90, ptr noundef %91, i32 noundef %92)
  %93 = load ptr, ptr %beta11, align 8
  %real = getelementptr inbounds %struct.dcomplex, ptr %93, i32 0, i32 0
  %94 = load double, ptr %real, align 8
  %95 = load ptr, ptr %alpha11, align 8
  %real81 = getelementptr inbounds %struct.dcomplex, ptr %95, i32 0, i32 0
  %96 = load double, ptr %real81, align 8
  %97 = load ptr, ptr %beta11, align 8
  %imag = getelementptr inbounds %struct.dcomplex, ptr %97, i32 0, i32 1
  %98 = load double, ptr %imag, align 8
  %99 = load ptr, ptr %alpha11, align 8
  %imag83 = getelementptr inbounds %struct.dcomplex, ptr %99, i32 0, i32 1
  %100 = load double, ptr %imag83, align 8
  %mul84 = fmul double %98, %100
  %neg = fneg double %mul84
  %101 = call double @llvm.fmuladd.f64(double %94, double %96, double %neg)
  store double %101, ptr %tempr, align 8
  %102 = load ptr, ptr %beta11, align 8
  %imag85 = getelementptr inbounds %struct.dcomplex, ptr %102, i32 0, i32 1
  %103 = load double, ptr %imag85, align 8
  %104 = load ptr, ptr %alpha11, align 8
  %real86 = getelementptr inbounds %struct.dcomplex, ptr %104, i32 0, i32 0
  %105 = load double, ptr %real86, align 8
  %106 = load ptr, ptr %beta11, align 8
  %real88 = getelementptr inbounds %struct.dcomplex, ptr %106, i32 0, i32 0
  %107 = load double, ptr %real88, align 8
  %108 = load ptr, ptr %alpha11, align 8
  %imag89 = getelementptr inbounds %struct.dcomplex, ptr %108, i32 0, i32 1
  %109 = load double, ptr %imag89, align 8
  %mul90 = fmul double %107, %109
  %110 = call double @llvm.fmuladd.f64(double %103, double %105, double %mul90)
  store double %110, ptr %tempi, align 8
  %111 = load double, ptr %tempr, align 8
  %112 = load ptr, ptr %alpha11, align 8
  %real91 = getelementptr inbounds %struct.dcomplex, ptr %112, i32 0, i32 0
  store double %111, ptr %real91, align 8
  %113 = load double, ptr %tempi, align 8
  %114 = load ptr, ptr %alpha11, align 8
  %imag92 = getelementptr inbounds %struct.dcomplex, ptr %114, i32 0, i32 1
  store double %113, ptr %imag92, align 8
  %115 = load ptr, ptr %beta11, align 8
  %real94 = getelementptr inbounds %struct.dcomplex, ptr %115, i32 0, i32 0
  %116 = load double, ptr %real94, align 8
  %117 = load ptr, ptr %alpha11, align 8
  %real95 = getelementptr inbounds %struct.dcomplex, ptr %117, i32 0, i32 0
  %118 = load double, ptr %real95, align 8
  %119 = load ptr, ptr %beta11, align 8
  %imag97 = getelementptr inbounds %struct.dcomplex, ptr %119, i32 0, i32 1
  %120 = load double, ptr %imag97, align 8
  %121 = load ptr, ptr %alpha11, align 8
  %imag98 = getelementptr inbounds %struct.dcomplex, ptr %121, i32 0, i32 1
  %122 = load double, ptr %imag98, align 8
  %mul99 = fmul double %120, %122
  %neg100 = fneg double %mul99
  %123 = call double @llvm.fmuladd.f64(double %116, double %118, double %neg100)
  store double %123, ptr %tempr93, align 8
  %124 = load ptr, ptr %beta11, align 8
  %imag102 = getelementptr inbounds %struct.dcomplex, ptr %124, i32 0, i32 1
  %125 = load double, ptr %imag102, align 8
  %126 = load ptr, ptr %alpha11, align 8
  %real103 = getelementptr inbounds %struct.dcomplex, ptr %126, i32 0, i32 0
  %127 = load double, ptr %real103, align 8
  %128 = load ptr, ptr %beta11, align 8
  %real105 = getelementptr inbounds %struct.dcomplex, ptr %128, i32 0, i32 0
  %129 = load double, ptr %real105, align 8
  %130 = load ptr, ptr %alpha11, align 8
  %imag106 = getelementptr inbounds %struct.dcomplex, ptr %130, i32 0, i32 1
  %131 = load double, ptr %imag106, align 8
  %mul107 = fmul double %129, %131
  %132 = call double @llvm.fmuladd.f64(double %125, double %127, double %mul107)
  store double %132, ptr %tempi101, align 8
  %133 = load double, ptr %tempr93, align 8
  %134 = load ptr, ptr %alpha11, align 8
  %real108 = getelementptr inbounds %struct.dcomplex, ptr %134, i32 0, i32 0
  store double %133, ptr %real108, align 8
  %135 = load double, ptr %tempi101, align 8
  %136 = load ptr, ptr %alpha11, align 8
  %imag109 = getelementptr inbounds %struct.dcomplex, ptr %136, i32 0, i32 1
  store double %135, ptr %imag109, align 8
  %137 = load i32, ptr %m_ahead, align 4
  %138 = load ptr, ptr %buff_1, align 8
  %139 = load ptr, ptr %a21, align 8
  %140 = load i32, ptr %rs_A.addr, align 4
  %141 = load ptr, ptr %b21, align 8
  %142 = load i32, ptr %rs_B.addr, align 4
  %143 = load ptr, ptr %buff_1, align 8
  %144 = load ptr, ptr %alpha11, align 8
  call void @bl1_zdot2s(i32 noundef 501, i32 noundef %137, ptr noundef %138, ptr noundef %139, i32 noundef %140, ptr noundef %141, i32 noundef %142, ptr noundef %143, ptr noundef %144)
  %145 = load i32, ptr %m_ahead, align 4
  %146 = load ptr, ptr %buff_1h, align 8
  %147 = load ptr, ptr %y21, align 8
  %148 = load i32, ptr %inc_y.addr, align 4
  %149 = load ptr, ptr %a21, align 8
  %150 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_zaxpyv(i32 noundef 500, i32 noundef %145, ptr noundef %146, ptr noundef %147, i32 noundef %148, ptr noundef %149, i32 noundef %150)
  %151 = load i32, ptr %m_ahead, align 4
  %152 = load ptr, ptr %B22, align 8
  %153 = load i32, ptr %rs_B.addr, align 4
  %154 = load i32, ptr %cs_B.addr, align 4
  %155 = load ptr, ptr %a21, align 8
  %156 = load i32, ptr %rs_A.addr, align 4
  call void @bl1_ztrmv(i32 noundef 200, i32 noundef 103, i32 noundef 400, i32 noundef %151, ptr noundef %152, i32 noundef %153, i32 noundef %154, ptr noundef %155, i32 noundef %156)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %157 = load i32, ptr %i, align 4
  %inc = add nsw i32 %157, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret i32 -1
}

declare void @bl1_shemv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_sscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_saxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_sdot2s(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare void @bl1_strmv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_dhemv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_dscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_daxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_ddot2s(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare void @bl1_dtrmv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_chemv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_cscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_caxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

declare void @bl1_cdot2s(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare void @bl1_ctrmv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare void @bl1_zhemv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_zscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @bl1_zaxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare void @bl1_zdot2s(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare void @bl1_ztrmv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

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
