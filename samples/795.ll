; ModuleID = 'samples/795.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/base/flamec/util/base/FLA_Mult_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Mult_add(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %gamma) #0 {
entry:
  %datatype = alloca i32, align 4
  %buff_alpha = alloca ptr, align 8
  %buff_beta = alloca ptr, align 8
  %buff_gamma = alloca ptr, align 8
  %buff_alpha59 = alloca ptr, align 8
  %buff_beta82 = alloca ptr, align 8
  %buff_gamma105 = alloca ptr, align 8
  %buff_alpha130 = alloca ptr, align 8
  %buff_beta153 = alloca ptr, align 8
  %buff_gamma176 = alloca ptr, align 8
  %alphabeta = alloca %struct.scomplex, align 4
  %buff_alpha219 = alloca ptr, align 8
  %buff_beta242 = alloca ptr, align 8
  %buff_gamma265 = alloca ptr, align 8
  %alphabeta288 = alloca %struct.dcomplex, align 8
  %call = call i32 @FLA_Check_error_level()
  %cmp = icmp uge i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @FLA_Mult_add_check(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %gamma)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %gamma)
  store i32 %call2, ptr %datatype, align 4
  %0 = load i32, ptr %datatype, align 4
  switch i32 %0, label %sw.epilog [
    i32 100, label %sw.bb
    i32 101, label %sw.bb58
    i32 102, label %sw.bb129
    i32 103, label %sw.bb218
  ]

sw.bb:                                            ; preds = %if.end
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8
  %datatype3 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype3, align 8
  %cmp4 = icmp eq i32 %2, 105
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base5 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %3 = load ptr, ptr %base5, align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base6 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %5 = load ptr, ptr %base6, align 8
  %buffer7 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer7, align 8
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8
  %base8 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %8 = load ptr, ptr %base8, align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8
  %mul = mul i64 %7, %9
  %add.ptr9 = getelementptr inbounds float, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8
  %base10 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %11 = load ptr, ptr %base10, align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8
  %mul11 = mul i64 %10, %12
  %add.ptr12 = getelementptr inbounds float, ptr %add.ptr9, i64 %mul11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr12, %cond.false ]
  store ptr %cond, ptr %buff_alpha, align 8
  %base13 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %13 = load ptr, ptr %base13, align 8
  %datatype14 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %datatype14, align 8
  %cmp15 = icmp eq i32 %14, 105
  br i1 %cmp15, label %cond.true16, label %cond.false20

cond.true16:                                      ; preds = %cond.end
  %base17 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %15 = load ptr, ptr %base17, align 8
  %buffer18 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %buffer18, align 8
  %add.ptr19 = getelementptr inbounds i8, ptr %16, i64 8
  br label %cond.end33

cond.false20:                                     ; preds = %cond.end
  %base21 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %17 = load ptr, ptr %base21, align 8
  %buffer22 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %buffer22, align 8
  %offn23 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 1
  %19 = load i64, ptr %offn23, align 8
  %base24 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %20 = load ptr, ptr %base24, align 8
  %cs25 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %20, i32 0, i32 5
  %21 = load i64, ptr %cs25, align 8
  %mul26 = mul i64 %19, %21
  %add.ptr27 = getelementptr inbounds float, ptr %18, i64 %mul26
  %offm28 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 0
  %22 = load i64, ptr %offm28, align 8
  %base29 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %23 = load ptr, ptr %base29, align 8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %23, i32 0, i32 4
  %24 = load i64, ptr %rs30, align 8
  %mul31 = mul i64 %22, %24
  %add.ptr32 = getelementptr inbounds float, ptr %add.ptr27, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false20, %cond.true16
  %cond34 = phi ptr [ %add.ptr19, %cond.true16 ], [ %add.ptr32, %cond.false20 ]
  store ptr %cond34, ptr %buff_beta, align 8
  %base35 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %25 = load ptr, ptr %base35, align 8
  %datatype36 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %datatype36, align 8
  %cmp37 = icmp eq i32 %26, 105
  br i1 %cmp37, label %cond.true38, label %cond.false42

cond.true38:                                      ; preds = %cond.end33
  %base39 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %27 = load ptr, ptr %base39, align 8
  %buffer40 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %buffer40, align 8
  %add.ptr41 = getelementptr inbounds i8, ptr %28, i64 8
  br label %cond.end55

cond.false42:                                     ; preds = %cond.end33
  %base43 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %29 = load ptr, ptr %base43, align 8
  %buffer44 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %buffer44, align 8
  %offn45 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 1
  %31 = load i64, ptr %offn45, align 8
  %base46 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %32 = load ptr, ptr %base46, align 8
  %cs47 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %32, i32 0, i32 5
  %33 = load i64, ptr %cs47, align 8
  %mul48 = mul i64 %31, %33
  %add.ptr49 = getelementptr inbounds float, ptr %30, i64 %mul48
  %offm50 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 0
  %34 = load i64, ptr %offm50, align 8
  %base51 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %35 = load ptr, ptr %base51, align 8
  %rs52 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %35, i32 0, i32 4
  %36 = load i64, ptr %rs52, align 8
  %mul53 = mul i64 %34, %36
  %add.ptr54 = getelementptr inbounds float, ptr %add.ptr49, i64 %mul53
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false42, %cond.true38
  %cond56 = phi ptr [ %add.ptr41, %cond.true38 ], [ %add.ptr54, %cond.false42 ]
  store ptr %cond56, ptr %buff_gamma, align 8
  %37 = load ptr, ptr %buff_gamma, align 8
  %38 = load float, ptr %37, align 4
  %39 = load ptr, ptr %buff_alpha, align 8
  %40 = load float, ptr %39, align 4
  %41 = load ptr, ptr %buff_beta, align 8
  %42 = load float, ptr %41, align 4
  %43 = call float @llvm.fmuladd.f32(float %40, float %42, float %38)
  %44 = load ptr, ptr %buff_gamma, align 8
  store float %43, ptr %44, align 4
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end
  %base60 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %45 = load ptr, ptr %base60, align 8
  %datatype61 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %45, i32 0, i32 0
  %46 = load i32, ptr %datatype61, align 8
  %cmp62 = icmp eq i32 %46, 105
  br i1 %cmp62, label %cond.true63, label %cond.false67

cond.true63:                                      ; preds = %sw.bb58
  %base64 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %47 = load ptr, ptr %base64, align 8
  %buffer65 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %47, i32 0, i32 12
  %48 = load ptr, ptr %buffer65, align 8
  %add.ptr66 = getelementptr inbounds i8, ptr %48, i64 16
  br label %cond.end80

cond.false67:                                     ; preds = %sw.bb58
  %base68 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %49 = load ptr, ptr %base68, align 8
  %buffer69 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %49, i32 0, i32 12
  %50 = load ptr, ptr %buffer69, align 8
  %offn70 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 1
  %51 = load i64, ptr %offn70, align 8
  %base71 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %52 = load ptr, ptr %base71, align 8
  %cs72 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %52, i32 0, i32 5
  %53 = load i64, ptr %cs72, align 8
  %mul73 = mul i64 %51, %53
  %add.ptr74 = getelementptr inbounds double, ptr %50, i64 %mul73
  %offm75 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 0
  %54 = load i64, ptr %offm75, align 8
  %base76 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %55 = load ptr, ptr %base76, align 8
  %rs77 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %55, i32 0, i32 4
  %56 = load i64, ptr %rs77, align 8
  %mul78 = mul i64 %54, %56
  %add.ptr79 = getelementptr inbounds double, ptr %add.ptr74, i64 %mul78
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false67, %cond.true63
  %cond81 = phi ptr [ %add.ptr66, %cond.true63 ], [ %add.ptr79, %cond.false67 ]
  store ptr %cond81, ptr %buff_alpha59, align 8
  %base83 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %57 = load ptr, ptr %base83, align 8
  %datatype84 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %57, i32 0, i32 0
  %58 = load i32, ptr %datatype84, align 8
  %cmp85 = icmp eq i32 %58, 105
  br i1 %cmp85, label %cond.true86, label %cond.false90

cond.true86:                                      ; preds = %cond.end80
  %base87 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %59 = load ptr, ptr %base87, align 8
  %buffer88 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %59, i32 0, i32 12
  %60 = load ptr, ptr %buffer88, align 8
  %add.ptr89 = getelementptr inbounds i8, ptr %60, i64 16
  br label %cond.end103

cond.false90:                                     ; preds = %cond.end80
  %base91 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %61 = load ptr, ptr %base91, align 8
  %buffer92 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %61, i32 0, i32 12
  %62 = load ptr, ptr %buffer92, align 8
  %offn93 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 1
  %63 = load i64, ptr %offn93, align 8
  %base94 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %64 = load ptr, ptr %base94, align 8
  %cs95 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %64, i32 0, i32 5
  %65 = load i64, ptr %cs95, align 8
  %mul96 = mul i64 %63, %65
  %add.ptr97 = getelementptr inbounds double, ptr %62, i64 %mul96
  %offm98 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 0
  %66 = load i64, ptr %offm98, align 8
  %base99 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %67 = load ptr, ptr %base99, align 8
  %rs100 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %67, i32 0, i32 4
  %68 = load i64, ptr %rs100, align 8
  %mul101 = mul i64 %66, %68
  %add.ptr102 = getelementptr inbounds double, ptr %add.ptr97, i64 %mul101
  br label %cond.end103

cond.end103:                                      ; preds = %cond.false90, %cond.true86
  %cond104 = phi ptr [ %add.ptr89, %cond.true86 ], [ %add.ptr102, %cond.false90 ]
  store ptr %cond104, ptr %buff_beta82, align 8
  %base106 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %69 = load ptr, ptr %base106, align 8
  %datatype107 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %69, i32 0, i32 0
  %70 = load i32, ptr %datatype107, align 8
  %cmp108 = icmp eq i32 %70, 105
  br i1 %cmp108, label %cond.true109, label %cond.false113

cond.true109:                                     ; preds = %cond.end103
  %base110 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %71 = load ptr, ptr %base110, align 8
  %buffer111 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %71, i32 0, i32 12
  %72 = load ptr, ptr %buffer111, align 8
  %add.ptr112 = getelementptr inbounds i8, ptr %72, i64 16
  br label %cond.end126

cond.false113:                                    ; preds = %cond.end103
  %base114 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %73 = load ptr, ptr %base114, align 8
  %buffer115 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %73, i32 0, i32 12
  %74 = load ptr, ptr %buffer115, align 8
  %offn116 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 1
  %75 = load i64, ptr %offn116, align 8
  %base117 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %76 = load ptr, ptr %base117, align 8
  %cs118 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %76, i32 0, i32 5
  %77 = load i64, ptr %cs118, align 8
  %mul119 = mul i64 %75, %77
  %add.ptr120 = getelementptr inbounds double, ptr %74, i64 %mul119
  %offm121 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 0
  %78 = load i64, ptr %offm121, align 8
  %base122 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %79 = load ptr, ptr %base122, align 8
  %rs123 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %79, i32 0, i32 4
  %80 = load i64, ptr %rs123, align 8
  %mul124 = mul i64 %78, %80
  %add.ptr125 = getelementptr inbounds double, ptr %add.ptr120, i64 %mul124
  br label %cond.end126

cond.end126:                                      ; preds = %cond.false113, %cond.true109
  %cond127 = phi ptr [ %add.ptr112, %cond.true109 ], [ %add.ptr125, %cond.false113 ]
  store ptr %cond127, ptr %buff_gamma105, align 8
  %81 = load ptr, ptr %buff_gamma105, align 8
  %82 = load double, ptr %81, align 8
  %83 = load ptr, ptr %buff_alpha59, align 8
  %84 = load double, ptr %83, align 8
  %85 = load ptr, ptr %buff_beta82, align 8
  %86 = load double, ptr %85, align 8
  %87 = call double @llvm.fmuladd.f64(double %84, double %86, double %82)
  %88 = load ptr, ptr %buff_gamma105, align 8
  store double %87, ptr %88, align 8
  br label %sw.epilog

sw.bb129:                                         ; preds = %if.end
  %base131 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %89 = load ptr, ptr %base131, align 8
  %datatype132 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %89, i32 0, i32 0
  %90 = load i32, ptr %datatype132, align 8
  %cmp133 = icmp eq i32 %90, 105
  br i1 %cmp133, label %cond.true134, label %cond.false138

cond.true134:                                     ; preds = %sw.bb129
  %base135 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %91 = load ptr, ptr %base135, align 8
  %buffer136 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %91, i32 0, i32 12
  %92 = load ptr, ptr %buffer136, align 8
  %add.ptr137 = getelementptr inbounds i8, ptr %92, i64 24
  br label %cond.end151

cond.false138:                                    ; preds = %sw.bb129
  %base139 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %93 = load ptr, ptr %base139, align 8
  %buffer140 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %93, i32 0, i32 12
  %94 = load ptr, ptr %buffer140, align 8
  %offn141 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 1
  %95 = load i64, ptr %offn141, align 8
  %base142 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %96 = load ptr, ptr %base142, align 8
  %cs143 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %96, i32 0, i32 5
  %97 = load i64, ptr %cs143, align 8
  %mul144 = mul i64 %95, %97
  %add.ptr145 = getelementptr inbounds %struct.scomplex, ptr %94, i64 %mul144
  %offm146 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 0
  %98 = load i64, ptr %offm146, align 8
  %base147 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %99 = load ptr, ptr %base147, align 8
  %rs148 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %99, i32 0, i32 4
  %100 = load i64, ptr %rs148, align 8
  %mul149 = mul i64 %98, %100
  %add.ptr150 = getelementptr inbounds %struct.scomplex, ptr %add.ptr145, i64 %mul149
  br label %cond.end151

cond.end151:                                      ; preds = %cond.false138, %cond.true134
  %cond152 = phi ptr [ %add.ptr137, %cond.true134 ], [ %add.ptr150, %cond.false138 ]
  store ptr %cond152, ptr %buff_alpha130, align 8
  %base154 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %101 = load ptr, ptr %base154, align 8
  %datatype155 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %101, i32 0, i32 0
  %102 = load i32, ptr %datatype155, align 8
  %cmp156 = icmp eq i32 %102, 105
  br i1 %cmp156, label %cond.true157, label %cond.false161

cond.true157:                                     ; preds = %cond.end151
  %base158 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %103 = load ptr, ptr %base158, align 8
  %buffer159 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %103, i32 0, i32 12
  %104 = load ptr, ptr %buffer159, align 8
  %add.ptr160 = getelementptr inbounds i8, ptr %104, i64 24
  br label %cond.end174

cond.false161:                                    ; preds = %cond.end151
  %base162 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %105 = load ptr, ptr %base162, align 8
  %buffer163 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %105, i32 0, i32 12
  %106 = load ptr, ptr %buffer163, align 8
  %offn164 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 1
  %107 = load i64, ptr %offn164, align 8
  %base165 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %108 = load ptr, ptr %base165, align 8
  %cs166 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %108, i32 0, i32 5
  %109 = load i64, ptr %cs166, align 8
  %mul167 = mul i64 %107, %109
  %add.ptr168 = getelementptr inbounds %struct.scomplex, ptr %106, i64 %mul167
  %offm169 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 0
  %110 = load i64, ptr %offm169, align 8
  %base170 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %111 = load ptr, ptr %base170, align 8
  %rs171 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %111, i32 0, i32 4
  %112 = load i64, ptr %rs171, align 8
  %mul172 = mul i64 %110, %112
  %add.ptr173 = getelementptr inbounds %struct.scomplex, ptr %add.ptr168, i64 %mul172
  br label %cond.end174

cond.end174:                                      ; preds = %cond.false161, %cond.true157
  %cond175 = phi ptr [ %add.ptr160, %cond.true157 ], [ %add.ptr173, %cond.false161 ]
  store ptr %cond175, ptr %buff_beta153, align 8
  %base177 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %113 = load ptr, ptr %base177, align 8
  %datatype178 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %113, i32 0, i32 0
  %114 = load i32, ptr %datatype178, align 8
  %cmp179 = icmp eq i32 %114, 105
  br i1 %cmp179, label %cond.true180, label %cond.false184

cond.true180:                                     ; preds = %cond.end174
  %base181 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %115 = load ptr, ptr %base181, align 8
  %buffer182 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %115, i32 0, i32 12
  %116 = load ptr, ptr %buffer182, align 8
  %add.ptr183 = getelementptr inbounds i8, ptr %116, i64 24
  br label %cond.end197

cond.false184:                                    ; preds = %cond.end174
  %base185 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %117 = load ptr, ptr %base185, align 8
  %buffer186 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %117, i32 0, i32 12
  %118 = load ptr, ptr %buffer186, align 8
  %offn187 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 1
  %119 = load i64, ptr %offn187, align 8
  %base188 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %120 = load ptr, ptr %base188, align 8
  %cs189 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %120, i32 0, i32 5
  %121 = load i64, ptr %cs189, align 8
  %mul190 = mul i64 %119, %121
  %add.ptr191 = getelementptr inbounds %struct.scomplex, ptr %118, i64 %mul190
  %offm192 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 0
  %122 = load i64, ptr %offm192, align 8
  %base193 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %123 = load ptr, ptr %base193, align 8
  %rs194 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %123, i32 0, i32 4
  %124 = load i64, ptr %rs194, align 8
  %mul195 = mul i64 %122, %124
  %add.ptr196 = getelementptr inbounds %struct.scomplex, ptr %add.ptr191, i64 %mul195
  br label %cond.end197

cond.end197:                                      ; preds = %cond.false184, %cond.true180
  %cond198 = phi ptr [ %add.ptr183, %cond.true180 ], [ %add.ptr196, %cond.false184 ]
  store ptr %cond198, ptr %buff_gamma176, align 8
  %125 = load ptr, ptr %buff_alpha130, align 8
  %real = getelementptr inbounds %struct.scomplex, ptr %125, i32 0, i32 0
  %126 = load float, ptr %real, align 4
  %127 = load ptr, ptr %buff_beta153, align 8
  %real199 = getelementptr inbounds %struct.scomplex, ptr %127, i32 0, i32 0
  %128 = load float, ptr %real199, align 4
  %129 = load ptr, ptr %buff_alpha130, align 8
  %imag = getelementptr inbounds %struct.scomplex, ptr %129, i32 0, i32 1
  %130 = load float, ptr %imag, align 4
  %131 = load ptr, ptr %buff_beta153, align 8
  %imag201 = getelementptr inbounds %struct.scomplex, ptr %131, i32 0, i32 1
  %132 = load float, ptr %imag201, align 4
  %mul202 = fmul float %130, %132
  %neg = fneg float %mul202
  %133 = call float @llvm.fmuladd.f32(float %126, float %128, float %neg)
  %real203 = getelementptr inbounds %struct.scomplex, ptr %alphabeta, i32 0, i32 0
  store float %133, ptr %real203, align 4
  %134 = load ptr, ptr %buff_alpha130, align 8
  %real204 = getelementptr inbounds %struct.scomplex, ptr %134, i32 0, i32 0
  %135 = load float, ptr %real204, align 4
  %136 = load ptr, ptr %buff_beta153, align 8
  %imag205 = getelementptr inbounds %struct.scomplex, ptr %136, i32 0, i32 1
  %137 = load float, ptr %imag205, align 4
  %138 = load ptr, ptr %buff_alpha130, align 8
  %imag207 = getelementptr inbounds %struct.scomplex, ptr %138, i32 0, i32 1
  %139 = load float, ptr %imag207, align 4
  %140 = load ptr, ptr %buff_beta153, align 8
  %real208 = getelementptr inbounds %struct.scomplex, ptr %140, i32 0, i32 0
  %141 = load float, ptr %real208, align 4
  %mul209 = fmul float %139, %141
  %142 = call float @llvm.fmuladd.f32(float %135, float %137, float %mul209)
  %imag210 = getelementptr inbounds %struct.scomplex, ptr %alphabeta, i32 0, i32 1
  store float %142, ptr %imag210, align 4
  %143 = load ptr, ptr %buff_gamma176, align 8
  %real211 = getelementptr inbounds %struct.scomplex, ptr %143, i32 0, i32 0
  %144 = load float, ptr %real211, align 4
  %real212 = getelementptr inbounds %struct.scomplex, ptr %alphabeta, i32 0, i32 0
  %145 = load float, ptr %real212, align 4
  %add = fadd float %144, %145
  %146 = load ptr, ptr %buff_gamma176, align 8
  %real213 = getelementptr inbounds %struct.scomplex, ptr %146, i32 0, i32 0
  store float %add, ptr %real213, align 4
  %147 = load ptr, ptr %buff_gamma176, align 8
  %imag214 = getelementptr inbounds %struct.scomplex, ptr %147, i32 0, i32 1
  %148 = load float, ptr %imag214, align 4
  %imag215 = getelementptr inbounds %struct.scomplex, ptr %alphabeta, i32 0, i32 1
  %149 = load float, ptr %imag215, align 4
  %add216 = fadd float %148, %149
  %150 = load ptr, ptr %buff_gamma176, align 8
  %imag217 = getelementptr inbounds %struct.scomplex, ptr %150, i32 0, i32 1
  store float %add216, ptr %imag217, align 4
  br label %sw.epilog

sw.bb218:                                         ; preds = %if.end
  %base220 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %151 = load ptr, ptr %base220, align 8
  %datatype221 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %151, i32 0, i32 0
  %152 = load i32, ptr %datatype221, align 8
  %cmp222 = icmp eq i32 %152, 105
  br i1 %cmp222, label %cond.true223, label %cond.false227

cond.true223:                                     ; preds = %sw.bb218
  %base224 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %153 = load ptr, ptr %base224, align 8
  %buffer225 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %153, i32 0, i32 12
  %154 = load ptr, ptr %buffer225, align 8
  %add.ptr226 = getelementptr inbounds i8, ptr %154, i64 32
  br label %cond.end240

cond.false227:                                    ; preds = %sw.bb218
  %base228 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %155 = load ptr, ptr %base228, align 8
  %buffer229 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %155, i32 0, i32 12
  %156 = load ptr, ptr %buffer229, align 8
  %offn230 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 1
  %157 = load i64, ptr %offn230, align 8
  %base231 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %158 = load ptr, ptr %base231, align 8
  %cs232 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %158, i32 0, i32 5
  %159 = load i64, ptr %cs232, align 8
  %mul233 = mul i64 %157, %159
  %add.ptr234 = getelementptr inbounds %struct.dcomplex, ptr %156, i64 %mul233
  %offm235 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 0
  %160 = load i64, ptr %offm235, align 8
  %base236 = getelementptr inbounds %struct.FLA_Obj_view, ptr %alpha, i32 0, i32 6
  %161 = load ptr, ptr %base236, align 8
  %rs237 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %161, i32 0, i32 4
  %162 = load i64, ptr %rs237, align 8
  %mul238 = mul i64 %160, %162
  %add.ptr239 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr234, i64 %mul238
  br label %cond.end240

cond.end240:                                      ; preds = %cond.false227, %cond.true223
  %cond241 = phi ptr [ %add.ptr226, %cond.true223 ], [ %add.ptr239, %cond.false227 ]
  store ptr %cond241, ptr %buff_alpha219, align 8
  %base243 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %163 = load ptr, ptr %base243, align 8
  %datatype244 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %163, i32 0, i32 0
  %164 = load i32, ptr %datatype244, align 8
  %cmp245 = icmp eq i32 %164, 105
  br i1 %cmp245, label %cond.true246, label %cond.false250

cond.true246:                                     ; preds = %cond.end240
  %base247 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %165 = load ptr, ptr %base247, align 8
  %buffer248 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %165, i32 0, i32 12
  %166 = load ptr, ptr %buffer248, align 8
  %add.ptr249 = getelementptr inbounds i8, ptr %166, i64 32
  br label %cond.end263

cond.false250:                                    ; preds = %cond.end240
  %base251 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %167 = load ptr, ptr %base251, align 8
  %buffer252 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %167, i32 0, i32 12
  %168 = load ptr, ptr %buffer252, align 8
  %offn253 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 1
  %169 = load i64, ptr %offn253, align 8
  %base254 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %170 = load ptr, ptr %base254, align 8
  %cs255 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %170, i32 0, i32 5
  %171 = load i64, ptr %cs255, align 8
  %mul256 = mul i64 %169, %171
  %add.ptr257 = getelementptr inbounds %struct.dcomplex, ptr %168, i64 %mul256
  %offm258 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 0
  %172 = load i64, ptr %offm258, align 8
  %base259 = getelementptr inbounds %struct.FLA_Obj_view, ptr %beta, i32 0, i32 6
  %173 = load ptr, ptr %base259, align 8
  %rs260 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %173, i32 0, i32 4
  %174 = load i64, ptr %rs260, align 8
  %mul261 = mul i64 %172, %174
  %add.ptr262 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr257, i64 %mul261
  br label %cond.end263

cond.end263:                                      ; preds = %cond.false250, %cond.true246
  %cond264 = phi ptr [ %add.ptr249, %cond.true246 ], [ %add.ptr262, %cond.false250 ]
  store ptr %cond264, ptr %buff_beta242, align 8
  %base266 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %175 = load ptr, ptr %base266, align 8
  %datatype267 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %175, i32 0, i32 0
  %176 = load i32, ptr %datatype267, align 8
  %cmp268 = icmp eq i32 %176, 105
  br i1 %cmp268, label %cond.true269, label %cond.false273

cond.true269:                                     ; preds = %cond.end263
  %base270 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %177 = load ptr, ptr %base270, align 8
  %buffer271 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %177, i32 0, i32 12
  %178 = load ptr, ptr %buffer271, align 8
  %add.ptr272 = getelementptr inbounds i8, ptr %178, i64 32
  br label %cond.end286

cond.false273:                                    ; preds = %cond.end263
  %base274 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %179 = load ptr, ptr %base274, align 8
  %buffer275 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %179, i32 0, i32 12
  %180 = load ptr, ptr %buffer275, align 8
  %offn276 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 1
  %181 = load i64, ptr %offn276, align 8
  %base277 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %182 = load ptr, ptr %base277, align 8
  %cs278 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %182, i32 0, i32 5
  %183 = load i64, ptr %cs278, align 8
  %mul279 = mul i64 %181, %183
  %add.ptr280 = getelementptr inbounds %struct.dcomplex, ptr %180, i64 %mul279
  %offm281 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 0
  %184 = load i64, ptr %offm281, align 8
  %base282 = getelementptr inbounds %struct.FLA_Obj_view, ptr %gamma, i32 0, i32 6
  %185 = load ptr, ptr %base282, align 8
  %rs283 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %185, i32 0, i32 4
  %186 = load i64, ptr %rs283, align 8
  %mul284 = mul i64 %184, %186
  %add.ptr285 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr280, i64 %mul284
  br label %cond.end286

cond.end286:                                      ; preds = %cond.false273, %cond.true269
  %cond287 = phi ptr [ %add.ptr272, %cond.true269 ], [ %add.ptr285, %cond.false273 ]
  store ptr %cond287, ptr %buff_gamma265, align 8
  %187 = load ptr, ptr %buff_alpha219, align 8
  %real289 = getelementptr inbounds %struct.dcomplex, ptr %187, i32 0, i32 0
  %188 = load double, ptr %real289, align 8
  %189 = load ptr, ptr %buff_beta242, align 8
  %real290 = getelementptr inbounds %struct.dcomplex, ptr %189, i32 0, i32 0
  %190 = load double, ptr %real290, align 8
  %191 = load ptr, ptr %buff_alpha219, align 8
  %imag292 = getelementptr inbounds %struct.dcomplex, ptr %191, i32 0, i32 1
  %192 = load double, ptr %imag292, align 8
  %193 = load ptr, ptr %buff_beta242, align 8
  %imag293 = getelementptr inbounds %struct.dcomplex, ptr %193, i32 0, i32 1
  %194 = load double, ptr %imag293, align 8
  %mul294 = fmul double %192, %194
  %neg295 = fneg double %mul294
  %195 = call double @llvm.fmuladd.f64(double %188, double %190, double %neg295)
  %real296 = getelementptr inbounds %struct.dcomplex, ptr %alphabeta288, i32 0, i32 0
  store double %195, ptr %real296, align 8
  %196 = load ptr, ptr %buff_alpha219, align 8
  %real297 = getelementptr inbounds %struct.dcomplex, ptr %196, i32 0, i32 0
  %197 = load double, ptr %real297, align 8
  %198 = load ptr, ptr %buff_beta242, align 8
  %imag298 = getelementptr inbounds %struct.dcomplex, ptr %198, i32 0, i32 1
  %199 = load double, ptr %imag298, align 8
  %200 = load ptr, ptr %buff_alpha219, align 8
  %imag300 = getelementptr inbounds %struct.dcomplex, ptr %200, i32 0, i32 1
  %201 = load double, ptr %imag300, align 8
  %202 = load ptr, ptr %buff_beta242, align 8
  %real301 = getelementptr inbounds %struct.dcomplex, ptr %202, i32 0, i32 0
  %203 = load double, ptr %real301, align 8
  %mul302 = fmul double %201, %203
  %204 = call double @llvm.fmuladd.f64(double %197, double %199, double %mul302)
  %imag303 = getelementptr inbounds %struct.dcomplex, ptr %alphabeta288, i32 0, i32 1
  store double %204, ptr %imag303, align 8
  %205 = load ptr, ptr %buff_gamma265, align 8
  %real304 = getelementptr inbounds %struct.dcomplex, ptr %205, i32 0, i32 0
  %206 = load double, ptr %real304, align 8
  %real305 = getelementptr inbounds %struct.dcomplex, ptr %alphabeta288, i32 0, i32 0
  %207 = load double, ptr %real305, align 8
  %add306 = fadd double %206, %207
  %208 = load ptr, ptr %buff_gamma265, align 8
  %real307 = getelementptr inbounds %struct.dcomplex, ptr %208, i32 0, i32 0
  store double %add306, ptr %real307, align 8
  %209 = load ptr, ptr %buff_gamma265, align 8
  %imag308 = getelementptr inbounds %struct.dcomplex, ptr %209, i32 0, i32 1
  %210 = load double, ptr %imag308, align 8
  %imag309 = getelementptr inbounds %struct.dcomplex, ptr %alphabeta288, i32 0, i32 1
  %211 = load double, ptr %imag309, align 8
  %add310 = fadd double %210, %211
  %212 = load ptr, ptr %buff_gamma265, align 8
  %imag311 = getelementptr inbounds %struct.dcomplex, ptr %212, i32 0, i32 1
  store double %add310, ptr %imag311, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %cond.end286, %cond.end197, %cond.end126, %cond.end55
  ret i32 -1
}

declare i32 @FLA_Check_error_level() #1

declare i32 @FLA_Mult_add_check(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

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
