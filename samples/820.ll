; ModuleID = 'samples/820.bc'
source_filename = "crypto/ffc/ffc_params_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffc_params_st = type { ptr, ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, ptr, ptr, i32 }

@.str = private unnamed_addr constant [33 x i8] c"crypto/ffc/ffc_params_generate.c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SHA-224\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SHA-256\00", align 1
@__func__.ffc_validate_LN = private unnamed_addr constant [16 x i8] c"ffc_validate_LN\00", align 1
@generate_canonical_g.ggen = internal constant [4 x i8] c"ggen", align 1

; Function Attrs: nounwind uwtable
define i32 @ossl_ffc_params_FIPS186_4_gen_verify(ptr noundef %libctx, ptr noundef %params, i32 noundef %mode, i32 noundef %type, i64 noundef %L, i64 noundef %N, ptr noundef %res, ptr noundef %cb) #0 {
entry:
  %libctx.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %L.addr = alloca i64, align 8
  %N.addr = alloca i64, align 8
  %res.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %ok = alloca i32, align 4
  %seed = alloca ptr, align 8
  %seed_tmp = alloca ptr, align 8
  %mdsize = alloca i32, align 4
  %counter = alloca i32, align 4
  %pcounter = alloca i32, align 4
  %r = alloca i32, align 4
  %seedlen = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %pm1 = alloca ptr, align 8
  %e = alloca ptr, align 8
  %test = alloca ptr, align 8
  %g = alloca ptr, align 8
  %q = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mont = alloca ptr, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %qsize = alloca i32, align 4
  %canonical_g = alloca i32, align 4
  %hret = alloca i32, align 4
  %ctx = alloca ptr, align 8
  %mctx = alloca ptr, align 8
  %md = alloca ptr, align 8
  %verify = alloca i32, align 4
  %flags = alloca i32, align 4
  %def_name = alloca ptr, align 8
  store ptr %libctx, ptr %libctx.addr, align 8, !tbaa !4
  store ptr %params, ptr %params.addr, align 8, !tbaa !4
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !8
  store i32 %type, ptr %type.addr, align 4, !tbaa !8
  store i64 %L, ptr %L.addr, align 8, !tbaa !10
  store i64 %N, ptr %N.addr, align 8, !tbaa !10
  store ptr %res, ptr %res.addr, align 8, !tbaa !4
  store ptr %cb, ptr %cb.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #5
  store i32 0, ptr %ok, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %seed) #5
  store ptr null, ptr %seed, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %seed_tmp) #5
  store ptr null, ptr %seed_tmp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mdsize) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %counter) #5
  store i32 0, ptr %counter, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %pcounter) #5
  store i32 0, ptr %pcounter, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #5
  store i32 0, ptr %r, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %seedlen) #5
  store i64 0, ptr %seedlen, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pm1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %test) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %g) #5
  store ptr null, ptr %g, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #5
  store ptr null, ptr %q, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  store ptr null, ptr %p, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mont) #5
  store ptr null, ptr %mont, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  store i32 0, ptr %n, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  store i32 0, ptr %m, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %qsize) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %canonical_g) #5
  store i32 0, ptr %canonical_g, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %hret) #5
  store i32 0, ptr %hret, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #5
  store ptr null, ptr %ctx, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mctx) #5
  store ptr null, ptr %mctx, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %md) #5
  store ptr null, ptr %md, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %verify) #5
  %0 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %0, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %verify, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #5
  %1 = load i32, ptr %verify, align 4, !tbaa !8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %flags1 = getelementptr inbounds %struct.ffc_params_st, ptr %2, i32 0, i32 10
  %3 = load i32, ptr %flags1, align 8, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %flags, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %def_name) #5
  %4 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 0, ptr %4, align 4, !tbaa !8
  %5 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %mdname = getelementptr inbounds %struct.ffc_params_st, ptr %5, i32 0, i32 11
  %6 = load ptr, ptr %mdname, align 8, !tbaa !14
  %cmp2 = icmp ne ptr %6, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %7 = load ptr, ptr %libctx.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %mdname4 = getelementptr inbounds %struct.ffc_params_st, ptr %8, i32 0, i32 11
  %9 = load ptr, ptr %mdname4, align 8, !tbaa !14
  %10 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %mdprops = getelementptr inbounds %struct.ffc_params_st, ptr %10, i32 0, i32 12
  %11 = load ptr, ptr %mdprops, align 8, !tbaa !15
  %call = call ptr @EVP_MD_fetch(ptr noundef %7, ptr noundef %9, ptr noundef %11)
  store ptr %call, ptr %md, align 8, !tbaa !4
  br label %if.end19

if.else:                                          ; preds = %cond.end
  %12 = load i64, ptr %N.addr, align 8, !tbaa !10
  %cmp5 = icmp eq i64 %12, 0
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.else
  %13 = load i64, ptr %L.addr, align 8, !tbaa !10
  %cmp8 = icmp uge i64 %13, 2048
  %14 = zext i1 %cmp8 to i64
  %cond10 = select i1 %cmp8, i32 32, i32 20
  %mul = mul nsw i32 %cond10, 8
  %conv11 = sext i32 %mul to i64
  store i64 %conv11, ptr %N.addr, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.else
  %15 = load i64, ptr %N.addr, align 8, !tbaa !10
  %call12 = call ptr @default_mdname(i64 noundef %15)
  store ptr %call12, ptr %def_name, align 8, !tbaa !4
  %16 = load ptr, ptr %def_name, align 8, !tbaa !4
  %cmp13 = icmp eq ptr %16, null
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  %17 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 32, ptr %17, align 4, !tbaa !8
  br label %err

if.end16:                                         ; preds = %if.end
  %18 = load ptr, ptr %libctx.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %def_name, align 8, !tbaa !4
  %20 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %mdprops17 = getelementptr inbounds %struct.ffc_params_st, ptr %20, i32 0, i32 12
  %21 = load ptr, ptr %mdprops17, align 8, !tbaa !15
  %call18 = call ptr @EVP_MD_fetch(ptr noundef %18, ptr noundef %19, ptr noundef %21)
  store ptr %call18, ptr %md, align 8, !tbaa !4
  br label %if.end19

if.end19:                                         ; preds = %if.end16, %if.then
  %22 = load ptr, ptr %md, align 8, !tbaa !4
  %cmp20 = icmp eq ptr %22, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  br label %err

if.end23:                                         ; preds = %if.end19
  %23 = load ptr, ptr %md, align 8, !tbaa !4
  %call24 = call i32 @EVP_MD_get_size(ptr noundef %23)
  store i32 %call24, ptr %mdsize, align 4, !tbaa !8
  %24 = load i32, ptr %mdsize, align 4, !tbaa !8
  %cmp25 = icmp sle i32 %24, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  br label %err

if.end28:                                         ; preds = %if.end23
  %25 = load i64, ptr %N.addr, align 8, !tbaa !10
  %cmp29 = icmp eq i64 %25, 0
  br i1 %cmp29, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end28
  %26 = load i32, ptr %mdsize, align 4, !tbaa !8
  %mul32 = mul nsw i32 %26, 8
  %conv33 = sext i32 %mul32 to i64
  store i64 %conv33, ptr %N.addr, align 8, !tbaa !10
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end28
  %27 = load i64, ptr %N.addr, align 8, !tbaa !10
  %shr = lshr i64 %27, 3
  %conv35 = trunc i64 %shr to i32
  store i32 %conv35, ptr %qsize, align 4, !tbaa !8
  %28 = load i64, ptr %L.addr, align 8, !tbaa !10
  %29 = load i64, ptr %N.addr, align 8, !tbaa !10
  %cmp36 = icmp ule i64 %28, %29
  br i1 %cmp36, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end34
  %30 = load i64, ptr %L.addr, align 8, !tbaa !10
  %31 = load i64, ptr %N.addr, align 8, !tbaa !10
  %32 = load i32, ptr %type.addr, align 4, !tbaa !8
  %33 = load i32, ptr %verify, align 4, !tbaa !8
  %call38 = call i32 @ffc_validate_LN(i64 noundef %30, i64 noundef %31, i32 noundef %32, i32 noundef %33)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end41, label %if.then40

if.then40:                                        ; preds = %lor.lhs.false, %if.end34
  %34 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 128, ptr %34, align 4, !tbaa !8
  br label %err

if.end41:                                         ; preds = %lor.lhs.false
  %call42 = call ptr @EVP_MD_CTX_new()
  store ptr %call42, ptr %mctx, align 8, !tbaa !4
  %35 = load ptr, ptr %mctx, align 8, !tbaa !4
  %cmp43 = icmp eq ptr %35, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  br label %err

if.end46:                                         ; preds = %if.end41
  %36 = load ptr, ptr %libctx.addr, align 8, !tbaa !4
  %call47 = call ptr @BN_CTX_new_ex(ptr noundef %36)
  store ptr %call47, ptr %ctx, align 8, !tbaa !4
  %cmp48 = icmp eq ptr %call47, null
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  br label %err

if.end51:                                         ; preds = %if.end46
  %37 = load ptr, ptr %ctx, align 8, !tbaa !4
  call void @BN_CTX_start(ptr noundef %37)
  %38 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call52 = call ptr @BN_CTX_get(ptr noundef %38)
  store ptr %call52, ptr %g, align 8, !tbaa !4
  %39 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call53 = call ptr @BN_CTX_get(ptr noundef %39)
  store ptr %call53, ptr %pm1, align 8, !tbaa !4
  %40 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call54 = call ptr @BN_CTX_get(ptr noundef %40)
  store ptr %call54, ptr %e, align 8, !tbaa !4
  %41 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call55 = call ptr @BN_CTX_get(ptr noundef %41)
  store ptr %call55, ptr %test, align 8, !tbaa !4
  %42 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call56 = call ptr @BN_CTX_get(ptr noundef %42)
  store ptr %call56, ptr %tmp, align 8, !tbaa !4
  %43 = load ptr, ptr %tmp, align 8, !tbaa !4
  %cmp57 = icmp eq ptr %43, null
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end51
  br label %err

if.end60:                                         ; preds = %if.end51
  %44 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %seedlen61 = getelementptr inbounds %struct.ffc_params_st, ptr %44, i32 0, i32 5
  %45 = load i64, ptr %seedlen61, align 8, !tbaa !16
  store i64 %45, ptr %seedlen, align 8, !tbaa !10
  %46 = load i64, ptr %seedlen, align 8, !tbaa !10
  %cmp62 = icmp eq i64 %46, 0
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end60
  %47 = load i32, ptr %mdsize, align 4, !tbaa !8
  %conv65 = sext i32 %47 to i64
  store i64 %conv65, ptr %seedlen, align 8, !tbaa !10
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end60
  %48 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %seed67 = getelementptr inbounds %struct.ffc_params_st, ptr %48, i32 0, i32 4
  %49 = load ptr, ptr %seed67, align 8, !tbaa !17
  %cmp68 = icmp ne ptr %49, null
  br i1 %cmp68, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end66
  %50 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %seed71 = getelementptr inbounds %struct.ffc_params_st, ptr %50, i32 0, i32 4
  %51 = load ptr, ptr %seed71, align 8, !tbaa !17
  store ptr %51, ptr %seed, align 8, !tbaa !4
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end66
  %52 = load i32, ptr %verify, align 4, !tbaa !8
  %tobool73 = icmp ne i32 %52, 0
  br i1 %tobool73, label %if.else85, label %if.then74

if.then74:                                        ; preds = %if.end72
  %53 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %p75 = getelementptr inbounds %struct.ffc_params_st, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %p75, align 8, !tbaa !18
  %cmp76 = icmp eq ptr %54, null
  %conv77 = zext i1 %cmp76 to i32
  %55 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %q78 = getelementptr inbounds %struct.ffc_params_st, ptr %55, i32 0, i32 1
  %56 = load ptr, ptr %q78, align 8, !tbaa !19
  %cmp79 = icmp eq ptr %56, null
  %conv80 = zext i1 %cmp79 to i32
  %cmp81 = icmp ne i32 %conv77, %conv80
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.then74
  %57 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 2048, ptr %57, align 4, !tbaa !8
  br label %err

if.end84:                                         ; preds = %if.then74
  br label %if.end108

if.else85:                                        ; preds = %if.end72
  %58 = load i32, ptr %flags, align 4, !tbaa !8
  %and = and i32 %58, 1
  %cmp86 = icmp ne i32 %and, 0
  br i1 %cmp86, label %if.then88, label %if.end97

if.then88:                                        ; preds = %if.else85
  %59 = load ptr, ptr %seed, align 8, !tbaa !4
  %cmp89 = icmp eq ptr %59, null
  br i1 %cmp89, label %if.then95, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %if.then88
  %60 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %pcounter92 = getelementptr inbounds %struct.ffc_params_st, ptr %60, i32 0, i32 6
  %61 = load i32, ptr %pcounter92, align 8, !tbaa !20
  %cmp93 = icmp slt i32 %61, 0
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %lor.lhs.false91, %if.then88
  %62 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 512, ptr %62, align 4, !tbaa !8
  br label %err

if.end96:                                         ; preds = %lor.lhs.false91
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.else85
  %63 = load i32, ptr %flags, align 4, !tbaa !8
  %and98 = and i32 %63, 2
  %cmp99 = icmp ne i32 %and98, 0
  br i1 %cmp99, label %if.then101, label %if.end107

if.then101:                                       ; preds = %if.end97
  %64 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %g102 = getelementptr inbounds %struct.ffc_params_st, ptr %64, i32 0, i32 2
  %65 = load ptr, ptr %g102, align 8, !tbaa !21
  %cmp103 = icmp eq ptr %65, null
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.then101
  %66 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 1024, ptr %66, align 4, !tbaa !8
  br label %err

if.end106:                                        ; preds = %if.then101
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.end97
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end84
  %67 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %p109 = getelementptr inbounds %struct.ffc_params_st, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %p109, align 8, !tbaa !18
  %cmp110 = icmp ne ptr %68, null
  br i1 %cmp110, label %land.lhs.true, label %if.end118

land.lhs.true:                                    ; preds = %if.end108
  %69 = load i32, ptr %flags, align 4, !tbaa !8
  %and112 = and i32 %69, 1
  %cmp113 = icmp eq i32 %and112, 0
  br i1 %cmp113, label %if.then115, label %if.end118

if.then115:                                       ; preds = %land.lhs.true
  %70 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %p116 = getelementptr inbounds %struct.ffc_params_st, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %p116, align 8, !tbaa !18
  store ptr %71, ptr %p, align 8, !tbaa !4
  %72 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %q117 = getelementptr inbounds %struct.ffc_params_st, ptr %72, i32 0, i32 1
  %73 = load ptr, ptr %q117, align 8, !tbaa !19
  store ptr %73, ptr %q, align 8, !tbaa !4
  br label %g_only

if.end118:                                        ; preds = %land.lhs.true, %if.end108
  %74 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call119 = call ptr @BN_CTX_get(ptr noundef %74)
  store ptr %call119, ptr %p, align 8, !tbaa !4
  %75 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call120 = call ptr @BN_CTX_get(ptr noundef %75)
  store ptr %call120, ptr %q, align 8, !tbaa !4
  %76 = load ptr, ptr %q, align 8, !tbaa !4
  %cmp121 = icmp eq ptr %76, null
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end118
  br label %err

if.end124:                                        ; preds = %if.end118
  %77 = load i64, ptr %seedlen, align 8, !tbaa !10
  %mul125 = mul i64 %77, 8
  %78 = load i64, ptr %N.addr, align 8, !tbaa !10
  %cmp126 = icmp ult i64 %mul125, %78
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.end124
  %79 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 256, ptr %79, align 4, !tbaa !8
  br label %err

if.end129:                                        ; preds = %if.end124
  %80 = load i64, ptr %seedlen, align 8, !tbaa !10
  %call130 = call noalias ptr @CRYPTO_malloc(i64 noundef %80, ptr noundef @.str, i32 noundef 643)
  store ptr %call130, ptr %seed_tmp, align 8, !tbaa !4
  %81 = load ptr, ptr %seed_tmp, align 8, !tbaa !4
  %cmp131 = icmp eq ptr %81, null
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.end129
  br label %err

if.end134:                                        ; preds = %if.end129
  %82 = load ptr, ptr %seed, align 8, !tbaa !4
  %cmp135 = icmp eq ptr %82, null
  br i1 %cmp135, label %if.then137, label %if.end146

if.then137:                                       ; preds = %if.end134
  %83 = load i32, ptr %verify, align 4, !tbaa !8
  %tobool138 = icmp ne i32 %83, 0
  br i1 %tobool138, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.then137
  %84 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 512, ptr %84, align 4, !tbaa !8
  br label %err

if.end140:                                        ; preds = %if.then137
  %85 = load i64, ptr %seedlen, align 8, !tbaa !10
  %call141 = call noalias ptr @CRYPTO_malloc(i64 noundef %85, ptr noundef @.str, i32 noundef 654)
  store ptr %call141, ptr %seed, align 8, !tbaa !4
  %86 = load ptr, ptr %seed, align 8, !tbaa !4
  %cmp142 = icmp eq ptr %86, null
  br i1 %cmp142, label %if.then144, label %if.end145

if.then144:                                       ; preds = %if.end140
  br label %err

if.end145:                                        ; preds = %if.end140
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.end134
  %87 = load i64, ptr %L.addr, align 8, !tbaa !10
  %mul147 = mul i64 4, %87
  %sub = sub i64 %mul147, 1
  %conv148 = trunc i64 %sub to i32
  store i32 %conv148, ptr %counter, align 4, !tbaa !8
  %88 = load i32, ptr %verify, align 4, !tbaa !8
  %tobool149 = icmp ne i32 %88, 0
  br i1 %tobool149, label %if.then150, label %if.end157

if.then150:                                       ; preds = %if.end146
  %89 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %pcounter151 = getelementptr inbounds %struct.ffc_params_st, ptr %89, i32 0, i32 6
  %90 = load i32, ptr %pcounter151, align 8, !tbaa !20
  %91 = load i32, ptr %counter, align 4, !tbaa !8
  %cmp152 = icmp sgt i32 %90, %91
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %if.then150
  %92 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 4096, ptr %92, align 4, !tbaa !8
  br label %err

if.end155:                                        ; preds = %if.then150
  %93 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %pcounter156 = getelementptr inbounds %struct.ffc_params_st, ptr %93, i32 0, i32 6
  %94 = load i32, ptr %pcounter156, align 8, !tbaa !20
  store i32 %94, ptr %counter, align 4, !tbaa !8
  br label %if.end157

if.end157:                                        ; preds = %if.end155, %if.end146
  %95 = load i64, ptr %L.addr, align 8, !tbaa !10
  %sub158 = sub i64 %95, 1
  %96 = load i32, ptr %mdsize, align 4, !tbaa !8
  %shl = shl i32 %96, 3
  %conv159 = sext i32 %shl to i64
  %div = udiv i64 %sub158, %conv159
  %conv160 = trunc i64 %div to i32
  store i32 %conv160, ptr %n, align 4, !tbaa !8
  %97 = load ptr, ptr %test, align 8, !tbaa !4
  %call161 = call ptr @BN_value_one()
  %98 = load i64, ptr %L.addr, align 8, !tbaa !10
  %sub162 = sub i64 %98, 1
  %conv163 = trunc i64 %sub162 to i32
  %call164 = call i32 @BN_lshift(ptr noundef %97, ptr noundef %call161, i32 noundef %conv163)
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %if.end167, label %if.then166

if.then166:                                       ; preds = %if.end157
  br label %err

if.end167:                                        ; preds = %if.end157
  br label %for.cond

for.cond:                                         ; preds = %if.end205, %if.end167
  %99 = load ptr, ptr %ctx, align 8, !tbaa !4
  %100 = load ptr, ptr %q, align 8, !tbaa !4
  %101 = load ptr, ptr %md, align 8, !tbaa !4
  %102 = load i32, ptr %qsize, align 4, !tbaa !8
  %103 = load ptr, ptr %seed, align 8, !tbaa !4
  %104 = load i64, ptr %seedlen, align 8, !tbaa !10
  %105 = load ptr, ptr %seed, align 8, !tbaa !4
  %106 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %seed168 = getelementptr inbounds %struct.ffc_params_st, ptr %106, i32 0, i32 4
  %107 = load ptr, ptr %seed168, align 8, !tbaa !17
  %cmp169 = icmp ne ptr %105, %107
  %conv170 = zext i1 %cmp169 to i32
  %108 = load ptr, ptr %res.addr, align 8, !tbaa !4
  %109 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call171 = call i32 @generate_q_fips186_4(ptr noundef %99, ptr noundef %100, ptr noundef %101, i32 noundef %102, ptr noundef %103, i64 noundef %104, i32 noundef %conv170, ptr noundef %m, ptr noundef %108, ptr noundef %109)
  %tobool172 = icmp ne i32 %call171, 0
  br i1 %tobool172, label %if.end174, label %if.then173

if.then173:                                       ; preds = %for.cond
  br label %err

if.end174:                                        ; preds = %for.cond
  %110 = load i32, ptr %verify, align 4, !tbaa !8
  %tobool175 = icmp ne i32 %110, 0
  br i1 %tobool175, label %land.lhs.true176, label %if.end182

land.lhs.true176:                                 ; preds = %if.end174
  %111 = load ptr, ptr %q, align 8, !tbaa !4
  %112 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %q177 = getelementptr inbounds %struct.ffc_params_st, ptr %112, i32 0, i32 1
  %113 = load ptr, ptr %q177, align 8, !tbaa !19
  %call178 = call i32 @BN_cmp(ptr noundef %111, ptr noundef %113)
  %cmp179 = icmp ne i32 %call178, 0
  br i1 %cmp179, label %if.then181, label %if.end182

if.then181:                                       ; preds = %land.lhs.true176
  %114 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 16384, ptr %114, align 4, !tbaa !8
  br label %err

if.end182:                                        ; preds = %land.lhs.true176, %if.end174
  %115 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call183 = call i32 @BN_GENCB_call(ptr noundef %115, i32 noundef 2, i32 noundef 0)
  %tobool184 = icmp ne i32 %call183, 0
  br i1 %tobool184, label %if.end186, label %if.then185

if.then185:                                       ; preds = %if.end182
  br label %err

if.end186:                                        ; preds = %if.end182
  %116 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call187 = call i32 @BN_GENCB_call(ptr noundef %116, i32 noundef 3, i32 noundef 0)
  %tobool188 = icmp ne i32 %call187, 0
  br i1 %tobool188, label %if.end190, label %if.then189

if.then189:                                       ; preds = %if.end186
  br label %err

if.end190:                                        ; preds = %if.end186
  %117 = load ptr, ptr %seed_tmp, align 8, !tbaa !4
  %118 = load ptr, ptr %seed, align 8, !tbaa !4
  %119 = load i64, ptr %seedlen, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %117, ptr align 1 %118, i64 %119, i1 false)
  %120 = load ptr, ptr %ctx, align 8, !tbaa !4
  %121 = load ptr, ptr %md, align 8, !tbaa !4
  %122 = load i32, ptr %counter, align 4, !tbaa !8
  %123 = load i32, ptr %n, align 4, !tbaa !8
  %124 = load ptr, ptr %seed_tmp, align 8, !tbaa !4
  %125 = load i64, ptr %seedlen, align 8, !tbaa !10
  %126 = load ptr, ptr %q, align 8, !tbaa !4
  %127 = load ptr, ptr %p, align 8, !tbaa !4
  %128 = load i64, ptr %L.addr, align 8, !tbaa !10
  %conv191 = trunc i64 %128 to i32
  %129 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %130 = load ptr, ptr %res.addr, align 8, !tbaa !4
  %call192 = call i32 @generate_p(ptr noundef %120, ptr noundef %121, i32 noundef %122, i32 noundef %123, ptr noundef %124, i64 noundef %125, ptr noundef %126, ptr noundef %127, i32 noundef %conv191, ptr noundef %129, ptr noundef %pcounter, ptr noundef %130)
  store i32 %call192, ptr %r, align 4, !tbaa !8
  %131 = load i32, ptr %r, align 4, !tbaa !8
  %cmp193 = icmp sgt i32 %131, 0
  br i1 %cmp193, label %if.then195, label %if.end196

if.then195:                                       ; preds = %if.end190
  br label %for.end

if.end196:                                        ; preds = %if.end190
  %132 = load i32, ptr %r, align 4, !tbaa !8
  %cmp197 = icmp slt i32 %132, 0
  br i1 %cmp197, label %if.then199, label %if.end200

if.then199:                                       ; preds = %if.end196
  br label %err

if.end200:                                        ; preds = %if.end196
  %133 = load ptr, ptr %seed, align 8, !tbaa !4
  %134 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %seed201 = getelementptr inbounds %struct.ffc_params_st, ptr %134, i32 0, i32 4
  %135 = load ptr, ptr %seed201, align 8, !tbaa !17
  %cmp202 = icmp eq ptr %133, %135
  br i1 %cmp202, label %if.then204, label %if.end205

if.then204:                                       ; preds = %if.end200
  %136 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 1, ptr %136, align 4, !tbaa !8
  br label %err

if.end205:                                        ; preds = %if.end200
  br label %for.cond

for.end:                                          ; preds = %if.then195
  %137 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call206 = call i32 @BN_GENCB_call(ptr noundef %137, i32 noundef 2, i32 noundef 1)
  %tobool207 = icmp ne i32 %call206, 0
  br i1 %tobool207, label %if.end209, label %if.then208

if.then208:                                       ; preds = %for.end
  br label %err

if.end209:                                        ; preds = %for.end
  %138 = load i32, ptr %verify, align 4, !tbaa !8
  %tobool210 = icmp ne i32 %138, 0
  br i1 %tobool210, label %land.lhs.true211, label %if.end220

land.lhs.true211:                                 ; preds = %if.end209
  %139 = load i32, ptr %pcounter, align 4, !tbaa !8
  %140 = load i32, ptr %counter, align 4, !tbaa !8
  %cmp212 = icmp ne i32 %139, %140
  br i1 %cmp212, label %if.then219, label %lor.lhs.false214

lor.lhs.false214:                                 ; preds = %land.lhs.true211
  %141 = load ptr, ptr %p, align 8, !tbaa !4
  %142 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %p215 = getelementptr inbounds %struct.ffc_params_st, ptr %142, i32 0, i32 0
  %143 = load ptr, ptr %p215, align 8, !tbaa !18
  %call216 = call i32 @BN_cmp(ptr noundef %141, ptr noundef %143)
  %cmp217 = icmp ne i32 %call216, 0
  br i1 %cmp217, label %if.then219, label %if.end220

if.then219:                                       ; preds = %lor.lhs.false214, %land.lhs.true211
  br label %err

if.end220:                                        ; preds = %lor.lhs.false214, %if.end209
  %144 = load i32, ptr %flags, align 4, !tbaa !8
  %and221 = and i32 %144, 3
  %cmp222 = icmp eq i32 %and221, 1
  br i1 %cmp222, label %if.then224, label %if.end225

if.then224:                                       ; preds = %if.end220
  br label %pass

if.end225:                                        ; preds = %if.end220
  br label %g_only

g_only:                                           ; preds = %if.end225, %if.then115
  %call226 = call ptr @BN_MONT_CTX_new()
  store ptr %call226, ptr %mont, align 8, !tbaa !4
  %cmp227 = icmp eq ptr %call226, null
  br i1 %cmp227, label %if.then229, label %if.end230

if.then229:                                       ; preds = %g_only
  br label %err

if.end230:                                        ; preds = %g_only
  %145 = load ptr, ptr %mont, align 8, !tbaa !4
  %146 = load ptr, ptr %p, align 8, !tbaa !4
  %147 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call231 = call i32 @BN_MONT_CTX_set(ptr noundef %145, ptr noundef %146, ptr noundef %147)
  %tobool232 = icmp ne i32 %call231, 0
  br i1 %tobool232, label %if.end234, label %if.then233

if.then233:                                       ; preds = %if.end230
  br label %err

if.end234:                                        ; preds = %if.end230
  %148 = load i32, ptr %flags, align 4, !tbaa !8
  %and235 = and i32 %148, 2
  %cmp236 = icmp ne i32 %and235, 0
  br i1 %cmp236, label %land.lhs.true238, label %if.end243

land.lhs.true238:                                 ; preds = %if.end234
  %149 = load ptr, ptr %ctx, align 8, !tbaa !4
  %150 = load ptr, ptr %mont, align 8, !tbaa !4
  %151 = load ptr, ptr %p, align 8, !tbaa !4
  %152 = load ptr, ptr %q, align 8, !tbaa !4
  %153 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %g239 = getelementptr inbounds %struct.ffc_params_st, ptr %153, i32 0, i32 2
  %154 = load ptr, ptr %g239, align 8, !tbaa !21
  %155 = load ptr, ptr %tmp, align 8, !tbaa !4
  %156 = load ptr, ptr %res.addr, align 8, !tbaa !4
  %call240 = call i32 @ossl_ffc_params_validate_unverifiable_g(ptr noundef %149, ptr noundef %150, ptr noundef %151, ptr noundef %152, ptr noundef %154, ptr noundef %155, ptr noundef %156)
  %tobool241 = icmp ne i32 %call240, 0
  br i1 %tobool241, label %if.end243, label %if.then242

if.then242:                                       ; preds = %land.lhs.true238
  br label %err

if.end243:                                        ; preds = %land.lhs.true238, %if.end234
  %157 = load ptr, ptr %pm1, align 8, !tbaa !4
  %158 = load ptr, ptr %p, align 8, !tbaa !4
  %call244 = call ptr @BN_value_one()
  %call245 = call i32 @BN_sub(ptr noundef %157, ptr noundef %158, ptr noundef %call244)
  %tobool246 = icmp ne i32 %call245, 0
  br i1 %tobool246, label %land.lhs.true247, label %if.then250

land.lhs.true247:                                 ; preds = %if.end243
  %159 = load ptr, ptr %e, align 8, !tbaa !4
  %160 = load ptr, ptr %pm1, align 8, !tbaa !4
  %161 = load ptr, ptr %q, align 8, !tbaa !4
  %162 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call248 = call i32 @BN_div(ptr noundef %159, ptr noundef null, ptr noundef %160, ptr noundef %161, ptr noundef %162)
  %tobool249 = icmp ne i32 %call248, 0
  br i1 %tobool249, label %if.end251, label %if.then250

if.then250:                                       ; preds = %land.lhs.true247, %if.end243
  br label %err

if.end251:                                        ; preds = %land.lhs.true247
  %163 = load ptr, ptr %seed, align 8, !tbaa !4
  %cmp252 = icmp ne ptr %163, null
  br i1 %cmp252, label %land.lhs.true254, label %if.else271

land.lhs.true254:                                 ; preds = %if.end251
  %164 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %gindex = getelementptr inbounds %struct.ffc_params_st, ptr %164, i32 0, i32 8
  %165 = load i32, ptr %gindex, align 8, !tbaa !22
  %cmp255 = icmp ne i32 %165, -1
  br i1 %cmp255, label %if.then257, label %if.else271

if.then257:                                       ; preds = %land.lhs.true254
  store i32 1, ptr %canonical_g, align 4, !tbaa !8
  %166 = load ptr, ptr %ctx, align 8, !tbaa !4
  %167 = load ptr, ptr %mont, align 8, !tbaa !4
  %168 = load ptr, ptr %md, align 8, !tbaa !4
  %169 = load ptr, ptr %g, align 8, !tbaa !4
  %170 = load ptr, ptr %tmp, align 8, !tbaa !4
  %171 = load ptr, ptr %p, align 8, !tbaa !4
  %172 = load ptr, ptr %e, align 8, !tbaa !4
  %173 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %gindex258 = getelementptr inbounds %struct.ffc_params_st, ptr %173, i32 0, i32 8
  %174 = load i32, ptr %gindex258, align 8, !tbaa !22
  %175 = load ptr, ptr %seed, align 8, !tbaa !4
  %176 = load i64, ptr %seedlen, align 8, !tbaa !10
  %call259 = call i32 @generate_canonical_g(ptr noundef %166, ptr noundef %167, ptr noundef %168, ptr noundef %169, ptr noundef %170, ptr noundef %171, ptr noundef %172, i32 noundef %174, ptr noundef %175, i64 noundef %176)
  %tobool260 = icmp ne i32 %call259, 0
  br i1 %tobool260, label %if.end262, label %if.then261

if.then261:                                       ; preds = %if.then257
  %177 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 1024, ptr %177, align 4, !tbaa !8
  br label %err

if.end262:                                        ; preds = %if.then257
  %178 = load i32, ptr %verify, align 4, !tbaa !8
  %tobool263 = icmp ne i32 %178, 0
  br i1 %tobool263, label %land.lhs.true264, label %if.end270

land.lhs.true264:                                 ; preds = %if.end262
  %179 = load ptr, ptr %g, align 8, !tbaa !4
  %180 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %g265 = getelementptr inbounds %struct.ffc_params_st, ptr %180, i32 0, i32 2
  %181 = load ptr, ptr %g265, align 8, !tbaa !21
  %call266 = call i32 @BN_cmp(ptr noundef %179, ptr noundef %181)
  %cmp267 = icmp ne i32 %call266, 0
  br i1 %cmp267, label %if.then269, label %if.end270

if.then269:                                       ; preds = %land.lhs.true264
  %182 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 32768, ptr %182, align 4, !tbaa !8
  br label %err

if.end270:                                        ; preds = %land.lhs.true264, %if.end262
  br label %if.end279

if.else271:                                       ; preds = %land.lhs.true254, %if.end251
  %183 = load i32, ptr %verify, align 4, !tbaa !8
  %tobool272 = icmp ne i32 %183, 0
  br i1 %tobool272, label %if.end278, label %if.then273

if.then273:                                       ; preds = %if.else271
  %184 = load ptr, ptr %ctx, align 8, !tbaa !4
  %185 = load ptr, ptr %mont, align 8, !tbaa !4
  %186 = load ptr, ptr %g, align 8, !tbaa !4
  %187 = load ptr, ptr %tmp, align 8, !tbaa !4
  %188 = load ptr, ptr %p, align 8, !tbaa !4
  %189 = load ptr, ptr %e, align 8, !tbaa !4
  %190 = load ptr, ptr %pm1, align 8, !tbaa !4
  %call274 = call i32 @generate_unverifiable_g(ptr noundef %184, ptr noundef %185, ptr noundef %186, ptr noundef %187, ptr noundef %188, ptr noundef %189, ptr noundef %190, ptr noundef %hret)
  %tobool275 = icmp ne i32 %call274, 0
  br i1 %tobool275, label %if.end277, label %if.then276

if.then276:                                       ; preds = %if.then273
  br label %err

if.end277:                                        ; preds = %if.then273
  br label %if.end278

if.end278:                                        ; preds = %if.end277, %if.else271
  br label %if.end279

if.end279:                                        ; preds = %if.end278, %if.end270
  %191 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call280 = call i32 @BN_GENCB_call(ptr noundef %191, i32 noundef 3, i32 noundef 1)
  %tobool281 = icmp ne i32 %call280, 0
  br i1 %tobool281, label %if.end283, label %if.then282

if.then282:                                       ; preds = %if.end279
  br label %err

if.end283:                                        ; preds = %if.end279
  %192 = load i32, ptr %verify, align 4, !tbaa !8
  %tobool284 = icmp ne i32 %192, 0
  br i1 %tobool284, label %if.end327, label %if.then285

if.then285:                                       ; preds = %if.end283
  %193 = load ptr, ptr %p, align 8, !tbaa !4
  %194 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %p286 = getelementptr inbounds %struct.ffc_params_st, ptr %194, i32 0, i32 0
  %195 = load ptr, ptr %p286, align 8, !tbaa !18
  %cmp287 = icmp ne ptr %193, %195
  br i1 %cmp287, label %if.then289, label %if.end293

if.then289:                                       ; preds = %if.then285
  %196 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %p290 = getelementptr inbounds %struct.ffc_params_st, ptr %196, i32 0, i32 0
  %197 = load ptr, ptr %p290, align 8, !tbaa !18
  call void @BN_free(ptr noundef %197)
  %198 = load ptr, ptr %p, align 8, !tbaa !4
  %call291 = call ptr @BN_dup(ptr noundef %198)
  %199 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %p292 = getelementptr inbounds %struct.ffc_params_st, ptr %199, i32 0, i32 0
  store ptr %call291, ptr %p292, align 8, !tbaa !18
  br label %if.end293

if.end293:                                        ; preds = %if.then289, %if.then285
  %200 = load ptr, ptr %q, align 8, !tbaa !4
  %201 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %q294 = getelementptr inbounds %struct.ffc_params_st, ptr %201, i32 0, i32 1
  %202 = load ptr, ptr %q294, align 8, !tbaa !19
  %cmp295 = icmp ne ptr %200, %202
  br i1 %cmp295, label %if.then297, label %if.end301

if.then297:                                       ; preds = %if.end293
  %203 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %q298 = getelementptr inbounds %struct.ffc_params_st, ptr %203, i32 0, i32 1
  %204 = load ptr, ptr %q298, align 8, !tbaa !19
  call void @BN_free(ptr noundef %204)
  %205 = load ptr, ptr %q, align 8, !tbaa !4
  %call299 = call ptr @BN_dup(ptr noundef %205)
  %206 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %q300 = getelementptr inbounds %struct.ffc_params_st, ptr %206, i32 0, i32 1
  store ptr %call299, ptr %q300, align 8, !tbaa !19
  br label %if.end301

if.end301:                                        ; preds = %if.then297, %if.end293
  %207 = load ptr, ptr %g, align 8, !tbaa !4
  %208 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %g302 = getelementptr inbounds %struct.ffc_params_st, ptr %208, i32 0, i32 2
  %209 = load ptr, ptr %g302, align 8, !tbaa !21
  %cmp303 = icmp ne ptr %207, %209
  br i1 %cmp303, label %if.then305, label %if.end309

if.then305:                                       ; preds = %if.end301
  %210 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %g306 = getelementptr inbounds %struct.ffc_params_st, ptr %210, i32 0, i32 2
  %211 = load ptr, ptr %g306, align 8, !tbaa !21
  call void @BN_free(ptr noundef %211)
  %212 = load ptr, ptr %g, align 8, !tbaa !4
  %call307 = call ptr @BN_dup(ptr noundef %212)
  %213 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %g308 = getelementptr inbounds %struct.ffc_params_st, ptr %213, i32 0, i32 2
  store ptr %call307, ptr %g308, align 8, !tbaa !21
  br label %if.end309

if.end309:                                        ; preds = %if.then305, %if.end301
  %214 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %p310 = getelementptr inbounds %struct.ffc_params_st, ptr %214, i32 0, i32 0
  %215 = load ptr, ptr %p310, align 8, !tbaa !18
  %cmp311 = icmp eq ptr %215, null
  br i1 %cmp311, label %if.then321, label %lor.lhs.false313

lor.lhs.false313:                                 ; preds = %if.end309
  %216 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %q314 = getelementptr inbounds %struct.ffc_params_st, ptr %216, i32 0, i32 1
  %217 = load ptr, ptr %q314, align 8, !tbaa !19
  %cmp315 = icmp eq ptr %217, null
  br i1 %cmp315, label %if.then321, label %lor.lhs.false317

lor.lhs.false317:                                 ; preds = %lor.lhs.false313
  %218 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %g318 = getelementptr inbounds %struct.ffc_params_st, ptr %218, i32 0, i32 2
  %219 = load ptr, ptr %g318, align 8, !tbaa !21
  %cmp319 = icmp eq ptr %219, null
  br i1 %cmp319, label %if.then321, label %if.end322

if.then321:                                       ; preds = %lor.lhs.false317, %lor.lhs.false313, %if.end309
  br label %err

if.end322:                                        ; preds = %lor.lhs.false317
  %220 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %221 = load ptr, ptr %seed, align 8, !tbaa !4
  %222 = load i64, ptr %seedlen, align 8, !tbaa !10
  %223 = load i32, ptr %pcounter, align 4, !tbaa !8
  %call323 = call i32 @ossl_ffc_params_set_validate_params(ptr noundef %220, ptr noundef %221, i64 noundef %222, i32 noundef %223)
  %tobool324 = icmp ne i32 %call323, 0
  br i1 %tobool324, label %if.end326, label %if.then325

if.then325:                                       ; preds = %if.end322
  br label %err

if.end326:                                        ; preds = %if.end322
  %224 = load i32, ptr %hret, align 4, !tbaa !8
  %225 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %h = getelementptr inbounds %struct.ffc_params_st, ptr %225, i32 0, i32 9
  store i32 %224, ptr %h, align 4, !tbaa !23
  br label %if.end327

if.end327:                                        ; preds = %if.end326, %if.end283
  br label %pass

pass:                                             ; preds = %if.end327, %if.then224
  %226 = load i32, ptr %flags, align 4, !tbaa !8
  %and328 = and i32 %226, 2
  %cmp329 = icmp ne i32 %and328, 0
  br i1 %cmp329, label %land.lhs.true331, label %if.else335

land.lhs.true331:                                 ; preds = %pass
  %227 = load i32, ptr %canonical_g, align 4, !tbaa !8
  %cmp332 = icmp eq i32 %227, 0
  br i1 %cmp332, label %if.then334, label %if.else335

if.then334:                                       ; preds = %land.lhs.true331
  store i32 2, ptr %ok, align 4, !tbaa !8
  br label %if.end336

if.else335:                                       ; preds = %land.lhs.true331, %pass
  store i32 1, ptr %ok, align 4, !tbaa !8
  br label %if.end336

if.end336:                                        ; preds = %if.else335, %if.then334
  br label %err

err:                                              ; preds = %if.end336, %if.then325, %if.then321, %if.then282, %if.then276, %if.then269, %if.then261, %if.then250, %if.then242, %if.then233, %if.then229, %if.then219, %if.then208, %if.then204, %if.then199, %if.then189, %if.then185, %if.then181, %if.then173, %if.then166, %if.then154, %if.then144, %if.then139, %if.then133, %if.then128, %if.then123, %if.then105, %if.then95, %if.then83, %if.then59, %if.then50, %if.then45, %if.then40, %if.then27, %if.then22, %if.then15
  %228 = load ptr, ptr %seed, align 8, !tbaa !4
  %229 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %seed337 = getelementptr inbounds %struct.ffc_params_st, ptr %229, i32 0, i32 4
  %230 = load ptr, ptr %seed337, align 8, !tbaa !17
  %cmp338 = icmp ne ptr %228, %230
  br i1 %cmp338, label %if.then340, label %if.end341

if.then340:                                       ; preds = %err
  %231 = load ptr, ptr %seed, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %231, ptr noundef @.str, i32 noundef 794)
  br label %if.end341

if.end341:                                        ; preds = %if.then340, %err
  %232 = load ptr, ptr %seed_tmp, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %232, ptr noundef @.str, i32 noundef 795)
  %233 = load ptr, ptr %ctx, align 8, !tbaa !4
  %cmp342 = icmp ne ptr %233, null
  br i1 %cmp342, label %if.then344, label %if.end345

if.then344:                                       ; preds = %if.end341
  %234 = load ptr, ptr %ctx, align 8, !tbaa !4
  call void @BN_CTX_end(ptr noundef %234)
  br label %if.end345

if.end345:                                        ; preds = %if.then344, %if.end341
  %235 = load ptr, ptr %ctx, align 8, !tbaa !4
  call void @BN_CTX_free(ptr noundef %235)
  %236 = load ptr, ptr %mont, align 8, !tbaa !4
  call void @BN_MONT_CTX_free(ptr noundef %236)
  %237 = load ptr, ptr %mctx, align 8, !tbaa !4
  call void @EVP_MD_CTX_free(ptr noundef %237)
  %238 = load ptr, ptr %md, align 8, !tbaa !4
  call void @EVP_MD_free(ptr noundef %238)
  %239 = load i32, ptr %ok, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %def_name) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %verify) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %md) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %mctx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %hret) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %canonical_g) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %qsize) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %mont) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %g) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %test) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pm1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %seedlen) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pcounter) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %counter) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %mdsize) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %seed_tmp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %seed) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #5
  ret i32 %239
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @EVP_MD_fetch(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @default_mdname(i64 noundef %N) #0 {
entry:
  %retval = alloca ptr, align 8
  %N.addr = alloca i64, align 8
  store i64 %N, ptr %N.addr, align 8, !tbaa !10
  %0 = load i64, ptr %N.addr, align 8, !tbaa !10
  %cmp = icmp eq i64 %0, 160
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr @.str.1, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i64, ptr %N.addr, align 8, !tbaa !10
  %cmp1 = icmp eq i64 %1, 224
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store ptr @.str.2, ptr %retval, align 8
  br label %return

if.else3:                                         ; preds = %if.else
  %2 = load i64, ptr %N.addr, align 8, !tbaa !10
  %cmp4 = icmp eq i64 %2, 256
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else3
  store ptr @.str.3, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else3
  br label %if.end6

if.end6:                                          ; preds = %if.end
  br label %if.end7

if.end7:                                          ; preds = %if.end6
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then5, %if.then2, %if.then
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

declare i32 @EVP_MD_get_size(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @ffc_validate_LN(i64 noundef %L, i64 noundef %N, i32 noundef %type, i32 noundef %verify) #0 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca i64, align 8
  %N.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  %verify.addr = alloca i32, align 4
  store i64 %L, ptr %L.addr, align 8, !tbaa !10
  store i64 %N, ptr %N.addr, align 8, !tbaa !10
  store i32 %type, ptr %type.addr, align 4, !tbaa !8
  store i32 %verify, ptr %verify.addr, align 4, !tbaa !8
  %0 = load i32, ptr %type.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %L.addr, align 8, !tbaa !10
  %cmp1 = icmp eq i64 %1, 1024
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load i64, ptr %N.addr, align 8, !tbaa !10
  %cmp2 = icmp eq i64 %2, 160
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %land.lhs.true
  store i32 80, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %3 = load i64, ptr %L.addr, align 8, !tbaa !10
  %cmp4 = icmp eq i64 %3, 2048
  br i1 %cmp4, label %land.lhs.true5, label %if.end9

land.lhs.true5:                                   ; preds = %if.end
  %4 = load i64, ptr %N.addr, align 8, !tbaa !10
  %cmp6 = icmp eq i64 %4, 224
  br i1 %cmp6, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %5 = load i64, ptr %N.addr, align 8, !tbaa !10
  %cmp7 = icmp eq i64 %5, 256
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %land.lhs.true5
  store i32 112, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false, %if.end
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 77, ptr noundef @__func__.ffc_validate_LN)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 5, i32 noundef 127, ptr noundef null)
  br label %if.end28

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %type.addr, align 4, !tbaa !8
  %cmp10 = icmp eq i32 %6, 0
  br i1 %cmp10, label %if.then11, label %if.end27

if.then11:                                        ; preds = %if.else
  %7 = load i64, ptr %L.addr, align 8, !tbaa !10
  %cmp12 = icmp uge i64 %7, 3072
  br i1 %cmp12, label %land.lhs.true13, label %if.end16

land.lhs.true13:                                  ; preds = %if.then11
  %8 = load i64, ptr %N.addr, align 8, !tbaa !10
  %cmp14 = icmp uge i64 %8, 256
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true13
  store i32 128, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %land.lhs.true13, %if.then11
  %9 = load i64, ptr %L.addr, align 8, !tbaa !10
  %cmp17 = icmp uge i64 %9, 2048
  br i1 %cmp17, label %land.lhs.true18, label %if.end21

land.lhs.true18:                                  ; preds = %if.end16
  %10 = load i64, ptr %N.addr, align 8, !tbaa !10
  %cmp19 = icmp uge i64 %10, 224
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %land.lhs.true18
  store i32 112, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %land.lhs.true18, %if.end16
  %11 = load i64, ptr %L.addr, align 8, !tbaa !10
  %cmp22 = icmp uge i64 %11, 1024
  br i1 %cmp22, label %land.lhs.true23, label %if.end26

land.lhs.true23:                                  ; preds = %if.end21
  %12 = load i64, ptr %N.addr, align 8, !tbaa !10
  %cmp24 = icmp uge i64 %12, 160
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %land.lhs.true23
  store i32 80, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %land.lhs.true23, %if.end21
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 87, ptr noundef @__func__.ffc_validate_LN)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 10, i32 noundef 114, ptr noundef null)
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end9
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then25, %if.then20, %if.then15, %if.then8, %if.then3
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

declare ptr @EVP_MD_CTX_new() #2

declare ptr @BN_CTX_new_ex(ptr noundef) #2

declare void @BN_CTX_start(ptr noundef) #2

declare ptr @BN_CTX_get(ptr noundef) #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @BN_lshift(ptr noundef, ptr noundef, i32 noundef) #2

declare ptr @BN_value_one() #2

; Function Attrs: nounwind uwtable
define internal i32 @generate_q_fips186_4(ptr noundef %ctx, ptr noundef %q, ptr noundef %evpmd, i32 noundef %qsize, ptr noundef %seed, i64 noundef %seedlen, i32 noundef %generate_seed, ptr noundef %retm, ptr noundef %res, ptr noundef %cb) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %evpmd.addr = alloca ptr, align 8
  %qsize.addr = alloca i32, align 4
  %seed.addr = alloca ptr, align 8
  %seedlen.addr = alloca i64, align 8
  %generate_seed.addr = alloca i32, align 4
  %retm.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %r = alloca i32, align 4
  %m = alloca i32, align 4
  %md = alloca [64 x i8], align 16
  %mdsize = alloca i32, align 4
  %pmd = alloca ptr, align 8
  %libctx = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  store ptr %evpmd, ptr %evpmd.addr, align 8, !tbaa !4
  store i32 %qsize, ptr %qsize.addr, align 4, !tbaa !8
  store ptr %seed, ptr %seed.addr, align 8, !tbaa !4
  store i64 %seedlen, ptr %seedlen.addr, align 8, !tbaa !10
  store i32 %generate_seed, ptr %generate_seed.addr, align 4, !tbaa !8
  store ptr %retm, ptr %retm.addr, align 8, !tbaa !4
  store ptr %res, ptr %res.addr, align 8, !tbaa !4
  store ptr %cb, ptr %cb.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5
  store i32 0, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  %0 = load ptr, ptr %retm.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %m, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 64, ptr %md) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %mdsize) #5
  %2 = load ptr, ptr %evpmd.addr, align 8, !tbaa !4
  %call = call i32 @EVP_MD_get_size(ptr noundef %2)
  store i32 %call, ptr %mdsize, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmd) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %libctx) #5
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call1 = call ptr @ossl_bn_get_libctx(ptr noundef %3)
  store ptr %call1, ptr %libctx, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %if.end47, %entry
  %4 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %5 = load i32, ptr %m, align 4, !tbaa !8
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %m, align 4, !tbaa !8
  %call2 = call i32 @BN_GENCB_call(ptr noundef %4, i32 noundef 0, i32 noundef %5)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  br label %err

if.end:                                           ; preds = %for.cond
  %6 = load i32, ptr %generate_seed.addr, align 4, !tbaa !8
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %libctx, align 8, !tbaa !4
  %8 = load ptr, ptr %seed.addr, align 8, !tbaa !4
  %9 = load i64, ptr %seedlen.addr, align 8, !tbaa !10
  %call4 = call i32 @RAND_bytes_ex(ptr noundef %7, ptr noundef %8, i64 noundef %9, i32 noundef 0)
  %cmp = icmp sle i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  br label %err

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %10 = load ptr, ptr %seed.addr, align 8, !tbaa !4
  %11 = load i64, ptr %seedlen.addr, align 8, !tbaa !10
  %arraydecay = getelementptr inbounds [64 x i8], ptr %md, i64 0, i64 0
  %12 = load ptr, ptr %evpmd.addr, align 8, !tbaa !4
  %call7 = call i32 @EVP_Digest(ptr noundef %10, i64 noundef %11, ptr noundef %arraydecay, ptr noundef null, ptr noundef %12, ptr noundef null)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  br label %err

if.end10:                                         ; preds = %if.end6
  %13 = load i32, ptr %mdsize, align 4, !tbaa !8
  %14 = load i32, ptr %qsize.addr, align 4, !tbaa !8
  %cmp11 = icmp sgt i32 %13, %14
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  %arraydecay13 = getelementptr inbounds [64 x i8], ptr %md, i64 0, i64 0
  %15 = load i32, ptr %mdsize, align 4, !tbaa !8
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay13, i64 %idx.ext
  %16 = load i32, ptr %qsize.addr, align 4, !tbaa !8
  %idx.ext14 = sext i32 %16 to i64
  %idx.neg = sub i64 0, %idx.ext14
  %add.ptr15 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  store ptr %add.ptr15, ptr %pmd, align 8, !tbaa !4
  br label %if.end17

if.else:                                          ; preds = %if.end10
  %arraydecay16 = getelementptr inbounds [64 x i8], ptr %md, i64 0, i64 0
  store ptr %arraydecay16, ptr %pmd, align 8, !tbaa !4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then12
  %17 = load i32, ptr %mdsize, align 4, !tbaa !8
  %18 = load i32, ptr %qsize.addr, align 4, !tbaa !8
  %cmp18 = icmp slt i32 %17, %18
  br i1 %cmp18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end17
  %arraydecay20 = getelementptr inbounds [64 x i8], ptr %md, i64 0, i64 0
  %19 = load i32, ptr %mdsize, align 4, !tbaa !8
  %idx.ext21 = sext i32 %19 to i64
  %add.ptr22 = getelementptr inbounds i8, ptr %arraydecay20, i64 %idx.ext21
  %20 = load i32, ptr %qsize.addr, align 4, !tbaa !8
  %21 = load i32, ptr %mdsize, align 4, !tbaa !8
  %sub = sub nsw i32 %20, %21
  %conv = sext i32 %sub to i64
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr22, i8 0, i64 %conv, i1 false)
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end17
  %22 = load ptr, ptr %pmd, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %22, i64 0
  %23 = load i8, ptr %arrayidx, align 1, !tbaa !24
  %conv24 = zext i8 %23 to i32
  %or = or i32 %conv24, 128
  %conv25 = trunc i32 %or to i8
  store i8 %conv25, ptr %arrayidx, align 1, !tbaa !24
  %24 = load ptr, ptr %pmd, align 8, !tbaa !4
  %25 = load i32, ptr %qsize.addr, align 4, !tbaa !8
  %sub26 = sub nsw i32 %25, 1
  %idxprom = sext i32 %sub26 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %24, i64 %idxprom
  %26 = load i8, ptr %arrayidx27, align 1, !tbaa !24
  %conv28 = zext i8 %26 to i32
  %or29 = or i32 %conv28, 1
  %conv30 = trunc i32 %or29 to i8
  store i8 %conv30, ptr %arrayidx27, align 1, !tbaa !24
  %27 = load ptr, ptr %pmd, align 8, !tbaa !4
  %28 = load i32, ptr %qsize.addr, align 4, !tbaa !8
  %29 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %call31 = call ptr @BN_bin2bn(ptr noundef %27, i32 noundef %28, ptr noundef %29)
  %tobool32 = icmp ne ptr %call31, null
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end23
  br label %err

if.end34:                                         ; preds = %if.end23
  %30 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %32 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call35 = call i32 @BN_check_prime(ptr noundef %30, ptr noundef %31, ptr noundef %32)
  store i32 %call35, ptr %r, align 4, !tbaa !8
  %33 = load i32, ptr %r, align 4, !tbaa !8
  %cmp36 = icmp sgt i32 %33, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  store i32 1, ptr %ret, align 4, !tbaa !8
  br label %err

if.end39:                                         ; preds = %if.end34
  %34 = load i32, ptr %generate_seed.addr, align 4, !tbaa !8
  %tobool40 = icmp ne i32 %34, 0
  br i1 %tobool40, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end39
  %35 = load ptr, ptr %res.addr, align 8, !tbaa !4
  %36 = load i32, ptr %35, align 4, !tbaa !8
  %or42 = or i32 %36, 16
  store i32 %or42, ptr %35, align 4, !tbaa !8
  br label %err

if.end43:                                         ; preds = %if.end39
  %37 = load i32, ptr %r, align 4, !tbaa !8
  %cmp44 = icmp ne i32 %37, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  br label %err

if.end47:                                         ; preds = %if.end43
  br label %for.cond

err:                                              ; preds = %if.then46, %if.then41, %if.then38, %if.then33, %if.then9, %if.then5, %if.then
  %38 = load i32, ptr %m, align 4, !tbaa !8
  %39 = load ptr, ptr %retm.addr, align 8, !tbaa !4
  store i32 %38, ptr %39, align 4, !tbaa !8
  %40 = load i32, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %libctx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmd) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %mdsize) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %md) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5
  ret i32 %40
}

declare i32 @BN_cmp(ptr noundef, ptr noundef) #2

declare i32 @BN_GENCB_call(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal i32 @generate_p(ptr noundef %ctx, ptr noundef %evpmd, i32 noundef %max_counter, i32 noundef %n, ptr noundef %buf, i64 noundef %buf_len, ptr noundef %q, ptr noundef %p, i32 noundef %L, ptr noundef %cb, ptr noundef %counter, ptr noundef %res) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %evpmd.addr = alloca ptr, align 8
  %max_counter.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %buf_len.addr = alloca i64, align 8
  %q.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %L.addr = alloca i32, align 4
  %cb.addr = alloca ptr, align 8
  %counter.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %md = alloca [64 x i8], align 16
  %mdsize = alloca i32, align 4
  %W = alloca ptr, align 8
  %X = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %c = alloca ptr, align 8
  %test = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %evpmd, ptr %evpmd.addr, align 8, !tbaa !4
  store i32 %max_counter, ptr %max_counter.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store i64 %buf_len, ptr %buf_len.addr, align 8, !tbaa !10
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i32 %L, ptr %L.addr, align 4, !tbaa !8
  store ptr %cb, ptr %cb.addr, align 8, !tbaa !4
  store ptr %counter, ptr %counter.addr, align 8, !tbaa !4
  store ptr %res, ptr %res.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5
  store i32 -1, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr %md) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %mdsize) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %W) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %X) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %test) #5
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @BN_CTX_start(ptr noundef %0)
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call ptr @BN_CTX_get(ptr noundef %1)
  store ptr %call, ptr %W, align 8, !tbaa !4
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call1 = call ptr @BN_CTX_get(ptr noundef %2)
  store ptr %call1, ptr %X, align 8, !tbaa !4
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call2 = call ptr @BN_CTX_get(ptr noundef %3)
  store ptr %call2, ptr %c, align 8, !tbaa !4
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call3 = call ptr @BN_CTX_get(ptr noundef %4)
  store ptr %call3, ptr %test, align 8, !tbaa !4
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call4 = call ptr @BN_CTX_get(ptr noundef %5)
  store ptr %call4, ptr %tmp, align 8, !tbaa !4
  %6 = load ptr, ptr %tmp, align 8, !tbaa !4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %err

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %test, align 8, !tbaa !4
  %call5 = call ptr @BN_value_one()
  %8 = load i32, ptr %L.addr, align 4, !tbaa !8
  %sub = sub nsw i32 %8, 1
  %call6 = call i32 @BN_lshift(ptr noundef %7, ptr noundef %call5, i32 noundef %sub)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  br label %err

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %evpmd.addr, align 8, !tbaa !4
  %call9 = call i32 @EVP_MD_get_size(ptr noundef %9)
  store i32 %call9, ptr %mdsize, align 4, !tbaa !8
  %10 = load i32, ptr %mdsize, align 4, !tbaa !8
  %cmp10 = icmp sle i32 %10, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  br label %err

if.end12:                                         ; preds = %if.end8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc89, %if.end12
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %12 = load i32, ptr %max_counter.addr, align 4, !tbaa !8
  %cmp13 = icmp sle i32 %11, %12
  br i1 %cmp13, label %for.body, label %for.end91

for.body:                                         ; preds = %for.cond
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %cmp14 = icmp ne i32 %13, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %for.body
  %14 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %15 = load i32, ptr %i, align 4, !tbaa !8
  %call15 = call i32 @BN_GENCB_call(ptr noundef %14, i32 noundef 0, i32 noundef %15)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %land.lhs.true
  br label %err

if.end18:                                         ; preds = %land.lhs.true, %for.body
  %16 = load ptr, ptr %W, align 8, !tbaa !4
  call void @BN_zero_ex(ptr noundef %16)
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc48, %if.end18
  %17 = load i32, ptr %j, align 4, !tbaa !8
  %18 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp20 = icmp sle i32 %17, %18
  br i1 %cmp20, label %for.body21, label %for.end50

for.body21:                                       ; preds = %for.cond19
  %19 = load i64, ptr %buf_len.addr, align 8, !tbaa !10
  %conv = trunc i64 %19 to i32
  %sub22 = sub nsw i32 %conv, 1
  store i32 %sub22, ptr %k, align 4, !tbaa !8
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc, %for.body21
  %20 = load i32, ptr %k, align 4, !tbaa !8
  %cmp24 = icmp sge i32 %20, 0
  br i1 %cmp24, label %for.body26, label %for.end

for.body26:                                       ; preds = %for.cond23
  %21 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %22 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds i8, ptr %21, i64 %idxprom
  %23 = load i8, ptr %arrayidx, align 1, !tbaa !24
  %inc = add i8 %23, 1
  store i8 %inc, ptr %arrayidx, align 1, !tbaa !24
  %24 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %25 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom27 = sext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %24, i64 %idxprom27
  %26 = load i8, ptr %arrayidx28, align 1, !tbaa !24
  %conv29 = zext i8 %26 to i32
  %cmp30 = icmp ne i32 %conv29, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.body26
  br label %for.end

if.end33:                                         ; preds = %for.body26
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %27 = load i32, ptr %k, align 4, !tbaa !8
  %dec = add nsw i32 %27, -1
  store i32 %dec, ptr %k, align 4, !tbaa !8
  br label %for.cond23, !llvm.loop !25

for.end:                                          ; preds = %if.then32, %for.cond23
  %28 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %29 = load i64, ptr %buf_len.addr, align 8, !tbaa !10
  %arraydecay = getelementptr inbounds [64 x i8], ptr %md, i64 0, i64 0
  %30 = load ptr, ptr %evpmd.addr, align 8, !tbaa !4
  %call34 = call i32 @EVP_Digest(ptr noundef %28, i64 noundef %29, ptr noundef %arraydecay, ptr noundef null, ptr noundef %30, ptr noundef null)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %lor.lhs.false, label %if.then46

lor.lhs.false:                                    ; preds = %for.end
  %arraydecay36 = getelementptr inbounds [64 x i8], ptr %md, i64 0, i64 0
  %31 = load i32, ptr %mdsize, align 4, !tbaa !8
  %32 = load ptr, ptr %tmp, align 8, !tbaa !4
  %call37 = call ptr @BN_bin2bn(ptr noundef %arraydecay36, i32 noundef %31, ptr noundef %32)
  %cmp38 = icmp eq ptr %call37, null
  br i1 %cmp38, label %if.then46, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false
  %33 = load ptr, ptr %tmp, align 8, !tbaa !4
  %34 = load ptr, ptr %tmp, align 8, !tbaa !4
  %35 = load i32, ptr %mdsize, align 4, !tbaa !8
  %shl = shl i32 %35, 3
  %36 = load i32, ptr %j, align 4, !tbaa !8
  %mul = mul nsw i32 %shl, %36
  %call41 = call i32 @BN_lshift(ptr noundef %33, ptr noundef %34, i32 noundef %mul)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %lor.lhs.false43, label %if.then46

lor.lhs.false43:                                  ; preds = %lor.lhs.false40
  %37 = load ptr, ptr %W, align 8, !tbaa !4
  %38 = load ptr, ptr %W, align 8, !tbaa !4
  %39 = load ptr, ptr %tmp, align 8, !tbaa !4
  %call44 = call i32 @BN_add(ptr noundef %37, ptr noundef %38, ptr noundef %39)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end47, label %if.then46

if.then46:                                        ; preds = %lor.lhs.false43, %lor.lhs.false40, %lor.lhs.false, %for.end
  br label %err

if.end47:                                         ; preds = %lor.lhs.false43
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %40 = load i32, ptr %j, align 4, !tbaa !8
  %inc49 = add nsw i32 %40, 1
  store i32 %inc49, ptr %j, align 4, !tbaa !8
  br label %for.cond19, !llvm.loop !27

for.end50:                                        ; preds = %for.cond19
  %41 = load ptr, ptr %W, align 8, !tbaa !4
  %42 = load i32, ptr %L.addr, align 4, !tbaa !8
  %sub51 = sub nsw i32 %42, 1
  %call52 = call i32 @BN_mask_bits(ptr noundef %41, i32 noundef %sub51)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %lor.lhs.false54, label %if.then73

lor.lhs.false54:                                  ; preds = %for.end50
  %43 = load ptr, ptr %X, align 8, !tbaa !4
  %44 = load ptr, ptr %W, align 8, !tbaa !4
  %call55 = call ptr @BN_copy(ptr noundef %43, ptr noundef %44)
  %tobool56 = icmp ne ptr %call55, null
  br i1 %tobool56, label %lor.lhs.false57, label %if.then73

lor.lhs.false57:                                  ; preds = %lor.lhs.false54
  %45 = load ptr, ptr %X, align 8, !tbaa !4
  %46 = load ptr, ptr %X, align 8, !tbaa !4
  %47 = load ptr, ptr %test, align 8, !tbaa !4
  %call58 = call i32 @BN_add(ptr noundef %45, ptr noundef %46, ptr noundef %47)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %lor.lhs.false60, label %if.then73

lor.lhs.false60:                                  ; preds = %lor.lhs.false57
  %48 = load ptr, ptr %tmp, align 8, !tbaa !4
  %49 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %call61 = call i32 @BN_lshift1(ptr noundef %48, ptr noundef %49)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %lor.lhs.false63, label %if.then73

lor.lhs.false63:                                  ; preds = %lor.lhs.false60
  %50 = load ptr, ptr %c, align 8, !tbaa !4
  %51 = load ptr, ptr %X, align 8, !tbaa !4
  %52 = load ptr, ptr %tmp, align 8, !tbaa !4
  %53 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call64 = call i32 @BN_div(ptr noundef null, ptr noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %53)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %lor.lhs.false66, label %if.then73

lor.lhs.false66:                                  ; preds = %lor.lhs.false63
  %54 = load ptr, ptr %tmp, align 8, !tbaa !4
  %55 = load ptr, ptr %c, align 8, !tbaa !4
  %call67 = call ptr @BN_value_one()
  %call68 = call i32 @BN_sub(ptr noundef %54, ptr noundef %55, ptr noundef %call67)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %lor.lhs.false70, label %if.then73

lor.lhs.false70:                                  ; preds = %lor.lhs.false66
  %56 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %57 = load ptr, ptr %X, align 8, !tbaa !4
  %58 = load ptr, ptr %tmp, align 8, !tbaa !4
  %call71 = call i32 @BN_sub(ptr noundef %56, ptr noundef %57, ptr noundef %58)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end74, label %if.then73

if.then73:                                        ; preds = %lor.lhs.false70, %lor.lhs.false66, %lor.lhs.false63, %lor.lhs.false60, %lor.lhs.false57, %lor.lhs.false54, %for.end50
  br label %err

if.end74:                                         ; preds = %lor.lhs.false70
  %59 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %60 = load ptr, ptr %test, align 8, !tbaa !4
  %call75 = call i32 @BN_cmp(ptr noundef %59, ptr noundef %60)
  %cmp76 = icmp sge i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.end88

if.then78:                                        ; preds = %if.end74
  %61 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %62 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %63 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call79 = call i32 @BN_check_prime(ptr noundef %61, ptr noundef %62, ptr noundef %63)
  store i32 %call79, ptr %r, align 4, !tbaa !8
  %64 = load i32, ptr %r, align 4, !tbaa !8
  %cmp80 = icmp sgt i32 %64, 0
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.then78
  %65 = load i32, ptr %i, align 4, !tbaa !8
  %66 = load ptr, ptr %counter.addr, align 8, !tbaa !4
  store i32 %65, ptr %66, align 4, !tbaa !8
  store i32 1, ptr %ret, align 4, !tbaa !8
  br label %err

if.end83:                                         ; preds = %if.then78
  %67 = load i32, ptr %r, align 4, !tbaa !8
  %cmp84 = icmp ne i32 %67, 0
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end83
  br label %err

if.end87:                                         ; preds = %if.end83
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end74
  br label %for.inc89

for.inc89:                                        ; preds = %if.end88
  %68 = load i32, ptr %i, align 4, !tbaa !8
  %inc90 = add nsw i32 %68, 1
  store i32 %inc90, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !28

for.end91:                                        ; preds = %for.cond
  store i32 0, ptr %ret, align 4, !tbaa !8
  %69 = load ptr, ptr %res.addr, align 8, !tbaa !4
  %70 = load i32, ptr %69, align 4, !tbaa !8
  %or = or i32 %70, 1
  store i32 %or, ptr %69, align 4, !tbaa !8
  br label %err

err:                                              ; preds = %for.end91, %if.then86, %if.then82, %if.then73, %if.then46, %if.then17, %if.then11, %if.then7, %if.then
  %71 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @BN_CTX_end(ptr noundef %71)
  %72 = load i32, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %test) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %X) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %W) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %mdsize) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %md) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5
  ret i32 %72
}

declare ptr @BN_MONT_CTX_new() #2

declare i32 @BN_MONT_CTX_set(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @ossl_ffc_params_validate_unverifiable_g(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @BN_sub(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @BN_div(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @generate_canonical_g(ptr noundef %ctx, ptr noundef %mont, ptr noundef %evpmd, ptr noundef %g, ptr noundef %tmp, ptr noundef %p, ptr noundef %e, i32 noundef %gindex, ptr noundef %seed, i64 noundef %seedlen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %mont.addr = alloca ptr, align 8
  %evpmd.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %tmp.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %gindex.addr = alloca i32, align 4
  %seed.addr = alloca ptr, align 8
  %seedlen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %counter = alloca i32, align 4
  %md = alloca [64 x i8], align 16
  %mctx = alloca ptr, align 8
  %mdsize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %mont, ptr %mont.addr, align 8, !tbaa !4
  store ptr %evpmd, ptr %evpmd.addr, align 8, !tbaa !4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store ptr %tmp, ptr %tmp.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %e, ptr %e.addr, align 8, !tbaa !4
  store i32 %gindex, ptr %gindex.addr, align 4, !tbaa !8
  store ptr %seed, ptr %seed.addr, align 8, !tbaa !4
  store i64 %seedlen, ptr %seedlen.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5
  store i32 0, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %counter) #5
  store i32 1, ptr %counter, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 64, ptr %md) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %mctx) #5
  store ptr null, ptr %mctx, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mdsize) #5
  %0 = load ptr, ptr %evpmd.addr, align 8, !tbaa !4
  %call = call i32 @EVP_MD_get_size(ptr noundef %0)
  store i32 %call, ptr %mdsize, align 4, !tbaa !8
  %1 = load i32, ptr %mdsize, align 4, !tbaa !8
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call ptr @EVP_MD_CTX_new()
  store ptr %call1, ptr %mctx, align 8, !tbaa !4
  %2 = load ptr, ptr %mctx, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  store i32 1, ptr %counter, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %3 = load i32, ptr %counter, align 4, !tbaa !8
  %cmp5 = icmp sle i32 %3, 65535
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %gindex.addr, align 4, !tbaa !8
  %and = and i32 %4, 255
  %conv = trunc i32 %and to i8
  %arrayidx = getelementptr inbounds [64 x i8], ptr %md, i64 0, i64 0
  store i8 %conv, ptr %arrayidx, align 16, !tbaa !24
  %5 = load i32, ptr %counter, align 4, !tbaa !8
  %shr = ashr i32 %5, 8
  %and6 = and i32 %shr, 255
  %conv7 = trunc i32 %and6 to i8
  %arrayidx8 = getelementptr inbounds [64 x i8], ptr %md, i64 0, i64 1
  store i8 %conv7, ptr %arrayidx8, align 1, !tbaa !24
  %6 = load i32, ptr %counter, align 4, !tbaa !8
  %and9 = and i32 %6, 255
  %conv10 = trunc i32 %and9 to i8
  %arrayidx11 = getelementptr inbounds [64 x i8], ptr %md, i64 0, i64 2
  store i8 %conv10, ptr %arrayidx11, align 2, !tbaa !24
  %7 = load ptr, ptr %mctx, align 8, !tbaa !4
  %8 = load ptr, ptr %evpmd.addr, align 8, !tbaa !4
  %call12 = call i32 @EVP_DigestInit_ex(ptr noundef %7, ptr noundef %8, ptr noundef null)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then33

lor.lhs.false:                                    ; preds = %for.body
  %9 = load ptr, ptr %mctx, align 8, !tbaa !4
  %10 = load ptr, ptr %seed.addr, align 8, !tbaa !4
  %11 = load i64, ptr %seedlen.addr, align 8, !tbaa !10
  %call13 = call i32 @EVP_DigestUpdate(ptr noundef %9, ptr noundef %10, i64 noundef %11)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %lor.lhs.false15, label %if.then33

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %12 = load ptr, ptr %mctx, align 8, !tbaa !4
  %call16 = call i32 @EVP_DigestUpdate(ptr noundef %12, ptr noundef @generate_canonical_g.ggen, i64 noundef 4)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %lor.lhs.false18, label %if.then33

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %13 = load ptr, ptr %mctx, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [64 x i8], ptr %md, i64 0, i64 0
  %call19 = call i32 @EVP_DigestUpdate(ptr noundef %13, ptr noundef %arraydecay, i64 noundef 3)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %lor.lhs.false21, label %if.then33

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %14 = load ptr, ptr %mctx, align 8, !tbaa !4
  %arraydecay22 = getelementptr inbounds [64 x i8], ptr %md, i64 0, i64 0
  %call23 = call i32 @EVP_DigestFinal_ex(ptr noundef %14, ptr noundef %arraydecay22, ptr noundef null)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %lor.lhs.false25, label %if.then33

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %arraydecay26 = getelementptr inbounds [64 x i8], ptr %md, i64 0, i64 0
  %15 = load i32, ptr %mdsize, align 4, !tbaa !8
  %16 = load ptr, ptr %tmp.addr, align 8, !tbaa !4
  %call27 = call ptr @BN_bin2bn(ptr noundef %arraydecay26, i32 noundef %15, ptr noundef %16)
  %cmp28 = icmp eq ptr %call27, null
  br i1 %cmp28, label %if.then33, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false25
  %17 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %tmp.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %mont.addr, align 8, !tbaa !4
  %call31 = call i32 @BN_mod_exp_mont(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %lor.lhs.false30, %lor.lhs.false25, %lor.lhs.false21, %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false, %for.body
  br label %for.end

if.end34:                                         ; preds = %lor.lhs.false30
  %23 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %call35 = call ptr @BN_value_one()
  %call36 = call i32 @BN_cmp(ptr noundef %23, ptr noundef %call35)
  %cmp37 = icmp sgt i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end34
  store i32 1, ptr %ret, align 4, !tbaa !8
  br label %for.end

if.end40:                                         ; preds = %if.end34
  br label %for.inc

for.inc:                                          ; preds = %if.end40
  %24 = load i32, ptr %counter, align 4, !tbaa !8
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %counter, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %if.then39, %if.then33, %for.cond
  %25 = load ptr, ptr %mctx, align 8, !tbaa !4
  call void @EVP_MD_CTX_free(ptr noundef %25)
  %26 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %26, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %mdsize) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %mctx) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %md) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %counter) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @generate_unverifiable_g(ptr noundef %ctx, ptr noundef %mont, ptr noundef %g, ptr noundef %hbn, ptr noundef %p, ptr noundef %e, ptr noundef %pm1, ptr noundef %hret) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %mont.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %hbn.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %pm1.addr = alloca ptr, align 8
  %hret.addr = alloca ptr, align 8
  %h = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %mont, ptr %mont.addr, align 8, !tbaa !4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store ptr %hbn, ptr %hbn.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %e, ptr %e.addr, align 8, !tbaa !4
  store ptr %pm1, ptr %pm1.addr, align 8, !tbaa !4
  store ptr %hret, ptr %hret.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #5
  store i32 2, ptr %h, align 4, !tbaa !8
  %0 = load ptr, ptr %hbn.addr, align 8, !tbaa !4
  %1 = load i32, ptr %h, align 4, !tbaa !8
  %conv = sext i32 %1 to i64
  %call = call i32 @BN_set_word(ptr noundef %0, i64 noundef %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end16, %if.end
  %2 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %hbn.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %mont.addr, align 8, !tbaa !4
  %call1 = call i32 @BN_mod_exp_mont(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %for.cond
  %8 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %call5 = call ptr @BN_value_one()
  %call6 = call i32 @BN_cmp(ptr noundef %8, ptr noundef %call5)
  %cmp = icmp sgt i32 %call6, 0
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  br label %for.end

if.end9:                                          ; preds = %if.end4
  %9 = load ptr, ptr %hbn.addr, align 8, !tbaa !4
  %call10 = call i32 @BN_add_word(ptr noundef %9, i64 noundef 1)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %lor.lhs.false, label %if.then15

lor.lhs.false:                                    ; preds = %if.end9
  %10 = load ptr, ptr %hbn.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %pm1.addr, align 8, !tbaa !4
  %call12 = call i32 @BN_cmp(ptr noundef %10, ptr noundef %11)
  %cmp13 = icmp sge i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false, %if.end9
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %12 = load i32, ptr %h, align 4, !tbaa !8
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %h, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %if.then8
  %13 = load i32, ptr %h, align 4, !tbaa !8
  %14 = load ptr, ptr %hret.addr, align 8, !tbaa !4
  store i32 %13, ptr %14, align 4, !tbaa !8
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then15, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #5
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

declare void @BN_free(ptr noundef) #2

declare ptr @BN_dup(ptr noundef) #2

declare i32 @ossl_ffc_params_set_validate_params(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) #2

declare void @BN_CTX_end(ptr noundef) #2

declare void @BN_CTX_free(ptr noundef) #2

declare void @BN_MONT_CTX_free(ptr noundef) #2

declare void @EVP_MD_CTX_free(ptr noundef) #2

declare void @EVP_MD_free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @ossl_ffc_params_FIPS186_2_gen_verify(ptr noundef %libctx, ptr noundef %params, i32 noundef %mode, i32 noundef %type, i64 noundef %L, i64 noundef %N, ptr noundef %res, ptr noundef %cb) #0 {
entry:
  %libctx.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %L.addr = alloca i64, align 8
  %N.addr = alloca i64, align 8
  %res.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %ok = alloca i32, align 4
  %seed = alloca [32 x i8], align 16
  %buf = alloca [32 x i8], align 16
  %r0 = alloca ptr, align 8
  %test = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %g = alloca ptr, align 8
  %q = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mont = alloca ptr, align 8
  %md = alloca ptr, align 8
  %qsize = alloca i64, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %counter = alloca i32, align 4
  %pcounter = alloca i32, align 4
  %use_random_seed = alloca i32, align 4
  %rv = alloca i32, align 4
  %ctx = alloca ptr, align 8
  %hret = alloca i32, align 4
  %seed_in = alloca ptr, align 8
  %seed_len = alloca i64, align 8
  %verify = alloca i32, align 4
  %flags = alloca i32, align 4
  %def_name = alloca ptr, align 8
  store ptr %libctx, ptr %libctx.addr, align 8, !tbaa !4
  store ptr %params, ptr %params.addr, align 8, !tbaa !4
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !8
  store i32 %type, ptr %type.addr, align 4, !tbaa !8
  store i64 %L, ptr %L.addr, align 8, !tbaa !10
  store i64 %N, ptr %N.addr, align 8, !tbaa !10
  store ptr %res, ptr %res.addr, align 8, !tbaa !4
  store ptr %cb, ptr %cb.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #5
  store i32 0, ptr %ok, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %seed) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr %buf) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %r0) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %test) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %g) #5
  store ptr null, ptr %g, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #5
  store ptr null, ptr %q, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  store ptr null, ptr %p, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mont) #5
  store ptr null, ptr %mont, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %md) #5
  store ptr null, ptr %md, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %qsize) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  store i32 0, ptr %n, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  store i32 0, ptr %m, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %counter) #5
  store i32 0, ptr %counter, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %pcounter) #5
  store i32 0, ptr %pcounter, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %use_random_seed) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #5
  store ptr null, ptr %ctx, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %hret) #5
  store i32 -1, ptr %hret, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %seed_in) #5
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %seed1 = getelementptr inbounds %struct.ffc_params_st, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %seed1, align 8, !tbaa !17
  store ptr %1, ptr %seed_in, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %seed_len) #5
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %seedlen = getelementptr inbounds %struct.ffc_params_st, ptr %2, i32 0, i32 5
  %3 = load i64, ptr %seedlen, align 8, !tbaa !16
  store i64 %3, ptr %seed_len, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %verify) #5
  %4 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %verify, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #5
  %5 = load i32, ptr %verify, align 4, !tbaa !8
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %flags2 = getelementptr inbounds %struct.ffc_params_st, ptr %6, i32 0, i32 10
  %7 = load i32, ptr %flags2, align 8, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %flags, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %def_name) #5
  %8 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 0, ptr %8, align 4, !tbaa !8
  %9 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %mdname = getelementptr inbounds %struct.ffc_params_st, ptr %9, i32 0, i32 11
  %10 = load ptr, ptr %mdname, align 8, !tbaa !14
  %cmp3 = icmp ne ptr %10, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %11 = load ptr, ptr %libctx.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %mdname5 = getelementptr inbounds %struct.ffc_params_st, ptr %12, i32 0, i32 11
  %13 = load ptr, ptr %mdname5, align 8, !tbaa !14
  %14 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %mdprops = getelementptr inbounds %struct.ffc_params_st, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %mdprops, align 8, !tbaa !15
  %call = call ptr @EVP_MD_fetch(ptr noundef %11, ptr noundef %13, ptr noundef %15)
  store ptr %call, ptr %md, align 8, !tbaa !4
  br label %if.end20

if.else:                                          ; preds = %cond.end
  %16 = load i64, ptr %N.addr, align 8, !tbaa !10
  %cmp6 = icmp eq i64 %16, 0
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.else
  %17 = load i64, ptr %L.addr, align 8, !tbaa !10
  %cmp9 = icmp uge i64 %17, 2048
  %18 = zext i1 %cmp9 to i64
  %cond11 = select i1 %cmp9, i32 32, i32 20
  %mul = mul nsw i32 %cond11, 8
  %conv12 = sext i32 %mul to i64
  store i64 %conv12, ptr %N.addr, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.else
  %19 = load i64, ptr %N.addr, align 8, !tbaa !10
  %call13 = call ptr @default_mdname(i64 noundef %19)
  store ptr %call13, ptr %def_name, align 8, !tbaa !4
  %20 = load ptr, ptr %def_name, align 8, !tbaa !4
  %cmp14 = icmp eq ptr %20, null
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  %21 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 32, ptr %21, align 4, !tbaa !8
  br label %err

if.end17:                                         ; preds = %if.end
  %22 = load ptr, ptr %libctx.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %def_name, align 8, !tbaa !4
  %24 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %mdprops18 = getelementptr inbounds %struct.ffc_params_st, ptr %24, i32 0, i32 12
  %25 = load ptr, ptr %mdprops18, align 8, !tbaa !15
  %call19 = call ptr @EVP_MD_fetch(ptr noundef %22, ptr noundef %23, ptr noundef %25)
  store ptr %call19, ptr %md, align 8, !tbaa !4
  br label %if.end20

if.end20:                                         ; preds = %if.end17, %if.then
  %26 = load ptr, ptr %md, align 8, !tbaa !4
  %cmp21 = icmp eq ptr %26, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  br label %err

if.end24:                                         ; preds = %if.end20
  %27 = load i64, ptr %N.addr, align 8, !tbaa !10
  %cmp25 = icmp eq i64 %27, 0
  br i1 %cmp25, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end24
  %28 = load ptr, ptr %md, align 8, !tbaa !4
  %call28 = call i32 @EVP_MD_get_size(ptr noundef %28)
  %mul29 = mul nsw i32 %call28, 8
  %conv30 = sext i32 %mul29 to i64
  store i64 %conv30, ptr %N.addr, align 8, !tbaa !10
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end24
  %29 = load i64, ptr %N.addr, align 8, !tbaa !10
  %shr = lshr i64 %29, 3
  store i64 %shr, ptr %qsize, align 8, !tbaa !10
  %30 = load i64, ptr %L.addr, align 8, !tbaa !10
  %cmp32 = icmp ult i64 %30, 512
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  %31 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 128, ptr %31, align 4, !tbaa !8
  br label %err

if.end35:                                         ; preds = %if.end31
  %32 = load i64, ptr %qsize, align 8, !tbaa !10
  %cmp36 = icmp ne i64 %32, 20
  br i1 %cmp36, label %land.lhs.true, label %if.end44

land.lhs.true:                                    ; preds = %if.end35
  %33 = load i64, ptr %qsize, align 8, !tbaa !10
  %cmp38 = icmp ne i64 %33, 28
  br i1 %cmp38, label %land.lhs.true40, label %if.end44

land.lhs.true40:                                  ; preds = %land.lhs.true
  %34 = load i64, ptr %qsize, align 8, !tbaa !10
  %cmp41 = icmp ne i64 %34, 32
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %land.lhs.true40
  %35 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 32, ptr %35, align 4, !tbaa !8
  br label %err

if.end44:                                         ; preds = %land.lhs.true40, %land.lhs.true, %if.end35
  %36 = load i64, ptr %L.addr, align 8, !tbaa !10
  %add = add i64 %36, 63
  %div = udiv i64 %add, 64
  %mul45 = mul i64 %div, 64
  store i64 %mul45, ptr %L.addr, align 8, !tbaa !10
  %37 = load ptr, ptr %seed_in, align 8, !tbaa !4
  %cmp46 = icmp ne ptr %37, null
  br i1 %cmp46, label %if.then48, label %if.end57

if.then48:                                        ; preds = %if.end44
  %38 = load i64, ptr %seed_len, align 8, !tbaa !10
  %39 = load i64, ptr %qsize, align 8, !tbaa !10
  %cmp49 = icmp ult i64 %38, %39
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.then48
  %40 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 256, ptr %40, align 4, !tbaa !8
  br label %err

if.end52:                                         ; preds = %if.then48
  %41 = load i64, ptr %seed_len, align 8, !tbaa !10
  %42 = load i64, ptr %qsize, align 8, !tbaa !10
  %cmp53 = icmp ugt i64 %41, %42
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end52
  %43 = load i64, ptr %qsize, align 8, !tbaa !10
  store i64 %43, ptr %seed_len, align 8, !tbaa !10
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end52
  %arraydecay = getelementptr inbounds [32 x i8], ptr %seed, i64 0, i64 0
  %44 = load ptr, ptr %seed_in, align 8, !tbaa !4
  %45 = load i64, ptr %seed_len, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 1 %44, i64 %45, i1 false)
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end44
  %46 = load ptr, ptr %libctx.addr, align 8, !tbaa !4
  %call58 = call ptr @BN_CTX_new_ex(ptr noundef %46)
  store ptr %call58, ptr %ctx, align 8, !tbaa !4
  %47 = load ptr, ptr %ctx, align 8, !tbaa !4
  %cmp59 = icmp eq ptr %47, null
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end57
  br label %err

if.end62:                                         ; preds = %if.end57
  %48 = load ptr, ptr %ctx, align 8, !tbaa !4
  call void @BN_CTX_start(ptr noundef %48)
  %49 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call63 = call ptr @BN_CTX_get(ptr noundef %49)
  store ptr %call63, ptr %r0, align 8, !tbaa !4
  %50 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call64 = call ptr @BN_CTX_get(ptr noundef %50)
  store ptr %call64, ptr %g, align 8, !tbaa !4
  %51 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call65 = call ptr @BN_CTX_get(ptr noundef %51)
  store ptr %call65, ptr %q, align 8, !tbaa !4
  %52 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call66 = call ptr @BN_CTX_get(ptr noundef %52)
  store ptr %call66, ptr %p, align 8, !tbaa !4
  %53 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call67 = call ptr @BN_CTX_get(ptr noundef %53)
  store ptr %call67, ptr %tmp, align 8, !tbaa !4
  %54 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call68 = call ptr @BN_CTX_get(ptr noundef %54)
  store ptr %call68, ptr %test, align 8, !tbaa !4
  %55 = load ptr, ptr %test, align 8, !tbaa !4
  %cmp69 = icmp eq ptr %55, null
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end62
  br label %err

if.end72:                                         ; preds = %if.end62
  %56 = load ptr, ptr %test, align 8, !tbaa !4
  %call73 = call ptr @BN_value_one()
  %57 = load i64, ptr %L.addr, align 8, !tbaa !10
  %sub = sub i64 %57, 1
  %conv74 = trunc i64 %sub to i32
  %call75 = call i32 @BN_lshift(ptr noundef %56, ptr noundef %call73, i32 noundef %conv74)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.end78, label %if.then77

if.then77:                                        ; preds = %if.end72
  br label %err

if.end78:                                         ; preds = %if.end72
  %58 = load i32, ptr %verify, align 4, !tbaa !8
  %tobool79 = icmp ne i32 %58, 0
  br i1 %tobool79, label %if.else91, label %if.then80

if.then80:                                        ; preds = %if.end78
  %59 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %p81 = getelementptr inbounds %struct.ffc_params_st, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %p81, align 8, !tbaa !18
  %cmp82 = icmp ne ptr %60, null
  %conv83 = zext i1 %cmp82 to i32
  %61 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %q84 = getelementptr inbounds %struct.ffc_params_st, ptr %61, i32 0, i32 1
  %62 = load ptr, ptr %q84, align 8, !tbaa !19
  %cmp85 = icmp ne ptr %62, null
  %conv86 = zext i1 %cmp85 to i32
  %cmp87 = icmp ne i32 %conv83, %conv86
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.then80
  %63 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 2048, ptr %63, align 4, !tbaa !8
  br label %err

if.end90:                                         ; preds = %if.then80
  br label %if.end113

if.else91:                                        ; preds = %if.end78
  %64 = load i32, ptr %flags, align 4, !tbaa !8
  %and = and i32 %64, 1
  %cmp92 = icmp ne i32 %and, 0
  br i1 %cmp92, label %if.then94, label %if.end102

if.then94:                                        ; preds = %if.else91
  %65 = load ptr, ptr %seed_in, align 8, !tbaa !4
  %cmp95 = icmp eq ptr %65, null
  br i1 %cmp95, label %if.then100, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then94
  %66 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %pcounter97 = getelementptr inbounds %struct.ffc_params_st, ptr %66, i32 0, i32 6
  %67 = load i32, ptr %pcounter97, align 8, !tbaa !20
  %cmp98 = icmp slt i32 %67, 0
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %lor.lhs.false, %if.then94
  %68 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 512, ptr %68, align 4, !tbaa !8
  br label %err

if.end101:                                        ; preds = %lor.lhs.false
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.else91
  %69 = load i32, ptr %flags, align 4, !tbaa !8
  %and103 = and i32 %69, 2
  %cmp104 = icmp ne i32 %and103, 0
  br i1 %cmp104, label %if.then106, label %if.end112

if.then106:                                       ; preds = %if.end102
  %70 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %g107 = getelementptr inbounds %struct.ffc_params_st, ptr %70, i32 0, i32 2
  %71 = load ptr, ptr %g107, align 8, !tbaa !21
  %cmp108 = icmp eq ptr %71, null
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.then106
  %72 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 1024, ptr %72, align 4, !tbaa !8
  br label %err

if.end111:                                        ; preds = %if.then106
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.end102
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.end90
  %73 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %p114 = getelementptr inbounds %struct.ffc_params_st, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %p114, align 8, !tbaa !18
  %cmp115 = icmp ne ptr %74, null
  br i1 %cmp115, label %land.lhs.true117, label %if.end124

land.lhs.true117:                                 ; preds = %if.end113
  %75 = load i32, ptr %flags, align 4, !tbaa !8
  %and118 = and i32 %75, 1
  %cmp119 = icmp eq i32 %and118, 0
  br i1 %cmp119, label %if.then121, label %if.end124

if.then121:                                       ; preds = %land.lhs.true117
  %76 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %p122 = getelementptr inbounds %struct.ffc_params_st, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %p122, align 8, !tbaa !18
  store ptr %77, ptr %p, align 8, !tbaa !4
  %78 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %q123 = getelementptr inbounds %struct.ffc_params_st, ptr %78, i32 0, i32 1
  %79 = load ptr, ptr %q123, align 8, !tbaa !19
  store ptr %79, ptr %q, align 8, !tbaa !4
  br label %g_only

if.end124:                                        ; preds = %land.lhs.true117, %if.end113
  %80 = load ptr, ptr %seed_in, align 8, !tbaa !4
  %cmp125 = icmp eq ptr %80, null
  %conv126 = zext i1 %cmp125 to i32
  store i32 %conv126, ptr %use_random_seed, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %if.end166, %if.end124
  %81 = load ptr, ptr %ctx, align 8, !tbaa !4
  %82 = load ptr, ptr %q, align 8, !tbaa !4
  %83 = load ptr, ptr %md, align 8, !tbaa !4
  %arraydecay127 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0
  %arraydecay128 = getelementptr inbounds [32 x i8], ptr %seed, i64 0, i64 0
  %84 = load i64, ptr %qsize, align 8, !tbaa !10
  %85 = load i32, ptr %use_random_seed, align 4, !tbaa !8
  %86 = load ptr, ptr %res.addr, align 8, !tbaa !4
  %87 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call129 = call i32 @generate_q_fips186_2(ptr noundef %81, ptr noundef %82, ptr noundef %83, ptr noundef %arraydecay127, ptr noundef %arraydecay128, i64 noundef %84, i32 noundef %85, ptr noundef %m, ptr noundef %86, ptr noundef %87)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.end132, label %if.then131

if.then131:                                       ; preds = %for.cond
  br label %err

if.end132:                                        ; preds = %for.cond
  %88 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call133 = call i32 @BN_GENCB_call(ptr noundef %88, i32 noundef 2, i32 noundef 0)
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.end136, label %if.then135

if.then135:                                       ; preds = %if.end132
  br label %err

if.end136:                                        ; preds = %if.end132
  %89 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call137 = call i32 @BN_GENCB_call(ptr noundef %89, i32 noundef 3, i32 noundef 0)
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.end140, label %if.then139

if.then139:                                       ; preds = %if.end136
  br label %err

if.end140:                                        ; preds = %if.end136
  %90 = load i64, ptr %L.addr, align 8, !tbaa !10
  %sub141 = sub i64 %90, 1
  %div142 = udiv i64 %sub141, 160
  %conv143 = trunc i64 %div142 to i32
  store i32 %conv143, ptr %n, align 4, !tbaa !8
  %91 = load i64, ptr %L.addr, align 8, !tbaa !10
  %mul144 = mul i64 4, %91
  %sub145 = sub i64 %mul144, 1
  %conv146 = trunc i64 %sub145 to i32
  store i32 %conv146, ptr %counter, align 4, !tbaa !8
  %92 = load i32, ptr %verify, align 4, !tbaa !8
  %tobool147 = icmp ne i32 %92, 0
  br i1 %tobool147, label %if.then148, label %if.end155

if.then148:                                       ; preds = %if.end140
  %93 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %pcounter149 = getelementptr inbounds %struct.ffc_params_st, ptr %93, i32 0, i32 6
  %94 = load i32, ptr %pcounter149, align 8, !tbaa !20
  %95 = load i32, ptr %counter, align 4, !tbaa !8
  %cmp150 = icmp sgt i32 %94, %95
  br i1 %cmp150, label %if.then152, label %if.end153

if.then152:                                       ; preds = %if.then148
  %96 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 4096, ptr %96, align 4, !tbaa !8
  br label %err

if.end153:                                        ; preds = %if.then148
  %97 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %pcounter154 = getelementptr inbounds %struct.ffc_params_st, ptr %97, i32 0, i32 6
  %98 = load i32, ptr %pcounter154, align 8, !tbaa !20
  store i32 %98, ptr %counter, align 4, !tbaa !8
  br label %if.end155

if.end155:                                        ; preds = %if.end153, %if.end140
  %99 = load ptr, ptr %ctx, align 8, !tbaa !4
  %100 = load ptr, ptr %md, align 8, !tbaa !4
  %101 = load i32, ptr %counter, align 4, !tbaa !8
  %102 = load i32, ptr %n, align 4, !tbaa !8
  %arraydecay156 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0
  %103 = load i64, ptr %qsize, align 8, !tbaa !10
  %104 = load ptr, ptr %q, align 8, !tbaa !4
  %105 = load ptr, ptr %p, align 8, !tbaa !4
  %106 = load i64, ptr %L.addr, align 8, !tbaa !10
  %conv157 = trunc i64 %106 to i32
  %107 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %108 = load ptr, ptr %res.addr, align 8, !tbaa !4
  %call158 = call i32 @generate_p(ptr noundef %99, ptr noundef %100, i32 noundef %101, i32 noundef %102, ptr noundef %arraydecay156, i64 noundef %103, ptr noundef %104, ptr noundef %105, i32 noundef %conv157, ptr noundef %107, ptr noundef %pcounter, ptr noundef %108)
  store i32 %call158, ptr %rv, align 4, !tbaa !8
  %109 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp159 = icmp sgt i32 %109, 0
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.end155
  br label %for.end

if.end162:                                        ; preds = %if.end155
  %110 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp163 = icmp eq i32 %110, -1
  br i1 %cmp163, label %if.then165, label %if.end166

if.then165:                                       ; preds = %if.end162
  br label %err

if.end166:                                        ; preds = %if.end162
  store i32 1, ptr %use_random_seed, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %if.then161
  %111 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call167 = call i32 @BN_GENCB_call(ptr noundef %111, i32 noundef 2, i32 noundef 1)
  %tobool168 = icmp ne i32 %call167, 0
  br i1 %tobool168, label %if.end170, label %if.then169

if.then169:                                       ; preds = %for.end
  br label %err

if.end170:                                        ; preds = %for.end
  %112 = load i32, ptr %verify, align 4, !tbaa !8
  %tobool171 = icmp ne i32 %112, 0
  br i1 %tobool171, label %if.then172, label %if.end183

if.then172:                                       ; preds = %if.end170
  %113 = load i32, ptr %pcounter, align 4, !tbaa !8
  %114 = load i32, ptr %counter, align 4, !tbaa !8
  %cmp173 = icmp ne i32 %113, %114
  br i1 %cmp173, label %if.then175, label %if.end176

if.then175:                                       ; preds = %if.then172
  %115 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 65536, ptr %115, align 4, !tbaa !8
  br label %err

if.end176:                                        ; preds = %if.then172
  %116 = load ptr, ptr %p, align 8, !tbaa !4
  %117 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %p177 = getelementptr inbounds %struct.ffc_params_st, ptr %117, i32 0, i32 0
  %118 = load ptr, ptr %p177, align 8, !tbaa !18
  %call178 = call i32 @BN_cmp(ptr noundef %116, ptr noundef %118)
  %cmp179 = icmp ne i32 %call178, 0
  br i1 %cmp179, label %if.then181, label %if.end182

if.then181:                                       ; preds = %if.end176
  %119 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store i32 8192, ptr %119, align 4, !tbaa !8
  br label %err

if.end182:                                        ; preds = %if.end176
  br label %if.end183

if.end183:                                        ; preds = %if.end182, %if.end170
  %120 = load i32, ptr %flags, align 4, !tbaa !8
  %and184 = and i32 %120, 3
  %cmp185 = icmp eq i32 %and184, 1
  br i1 %cmp185, label %if.then187, label %if.end188

if.then187:                                       ; preds = %if.end183
  br label %pass

if.end188:                                        ; preds = %if.end183
  br label %g_only

g_only:                                           ; preds = %if.end188, %if.then121
  %call189 = call ptr @BN_MONT_CTX_new()
  store ptr %call189, ptr %mont, align 8, !tbaa !4
  %cmp190 = icmp eq ptr %call189, null
  br i1 %cmp190, label %if.then192, label %if.end193

if.then192:                                       ; preds = %g_only
  br label %err

if.end193:                                        ; preds = %g_only
  %121 = load ptr, ptr %mont, align 8, !tbaa !4
  %122 = load ptr, ptr %p, align 8, !tbaa !4
  %123 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call194 = call i32 @BN_MONT_CTX_set(ptr noundef %121, ptr noundef %122, ptr noundef %123)
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %if.end197, label %if.then196

if.then196:                                       ; preds = %if.end193
  br label %err

if.end197:                                        ; preds = %if.end193
  %124 = load i32, ptr %verify, align 4, !tbaa !8
  %tobool198 = icmp ne i32 %124, 0
  br i1 %tobool198, label %if.else213, label %if.then199

if.then199:                                       ; preds = %if.end197
  %125 = load ptr, ptr %test, align 8, !tbaa !4
  %126 = load ptr, ptr %p, align 8, !tbaa !4
  %call200 = call ptr @BN_value_one()
  %call201 = call i32 @BN_sub(ptr noundef %125, ptr noundef %126, ptr noundef %call200)
  %tobool202 = icmp ne i32 %call201, 0
  br i1 %tobool202, label %if.end204, label %if.then203

if.then203:                                       ; preds = %if.then199
  br label %err

if.end204:                                        ; preds = %if.then199
  %127 = load ptr, ptr %r0, align 8, !tbaa !4
  %128 = load ptr, ptr %test, align 8, !tbaa !4
  %129 = load ptr, ptr %q, align 8, !tbaa !4
  %130 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call205 = call i32 @BN_div(ptr noundef %127, ptr noundef null, ptr noundef %128, ptr noundef %129, ptr noundef %130)
  %tobool206 = icmp ne i32 %call205, 0
  br i1 %tobool206, label %if.end208, label %if.then207

if.then207:                                       ; preds = %if.end204
  br label %err

if.end208:                                        ; preds = %if.end204
  %131 = load ptr, ptr %ctx, align 8, !tbaa !4
  %132 = load ptr, ptr %mont, align 8, !tbaa !4
  %133 = load ptr, ptr %g, align 8, !tbaa !4
  %134 = load ptr, ptr %tmp, align 8, !tbaa !4
  %135 = load ptr, ptr %p, align 8, !tbaa !4
  %136 = load ptr, ptr %r0, align 8, !tbaa !4
  %137 = load ptr, ptr %test, align 8, !tbaa !4
  %call209 = call i32 @generate_unverifiable_g(ptr noundef %131, ptr noundef %132, ptr noundef %133, ptr noundef %134, ptr noundef %135, ptr noundef %136, ptr noundef %137, ptr noundef %hret)
  %tobool210 = icmp ne i32 %call209, 0
  br i1 %tobool210, label %if.end212, label %if.then211

if.then211:                                       ; preds = %if.end208
  br label %err

if.end212:                                        ; preds = %if.end208
  br label %if.end223

if.else213:                                       ; preds = %if.end197
  %138 = load i32, ptr %flags, align 4, !tbaa !8
  %and214 = and i32 %138, 2
  %cmp215 = icmp ne i32 %and214, 0
  br i1 %cmp215, label %land.lhs.true217, label %if.end222

land.lhs.true217:                                 ; preds = %if.else213
  %139 = load ptr, ptr %ctx, align 8, !tbaa !4
  %140 = load ptr, ptr %mont, align 8, !tbaa !4
  %141 = load ptr, ptr %p, align 8, !tbaa !4
  %142 = load ptr, ptr %q, align 8, !tbaa !4
  %143 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %g218 = getelementptr inbounds %struct.ffc_params_st, ptr %143, i32 0, i32 2
  %144 = load ptr, ptr %g218, align 8, !tbaa !21
  %145 = load ptr, ptr %tmp, align 8, !tbaa !4
  %146 = load ptr, ptr %res.addr, align 8, !tbaa !4
  %call219 = call i32 @ossl_ffc_params_validate_unverifiable_g(ptr noundef %139, ptr noundef %140, ptr noundef %141, ptr noundef %142, ptr noundef %144, ptr noundef %145, ptr noundef %146)
  %tobool220 = icmp ne i32 %call219, 0
  br i1 %tobool220, label %if.end222, label %if.then221

if.then221:                                       ; preds = %land.lhs.true217
  br label %err

if.end222:                                        ; preds = %land.lhs.true217, %if.else213
  br label %if.end223

if.end223:                                        ; preds = %if.end222, %if.end212
  %147 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call224 = call i32 @BN_GENCB_call(ptr noundef %147, i32 noundef 3, i32 noundef 1)
  %tobool225 = icmp ne i32 %call224, 0
  br i1 %tobool225, label %if.end227, label %if.then226

if.then226:                                       ; preds = %if.end223
  br label %err

if.end227:                                        ; preds = %if.end223
  %148 = load i32, ptr %verify, align 4, !tbaa !8
  %tobool228 = icmp ne i32 %148, 0
  br i1 %tobool228, label %if.end272, label %if.then229

if.then229:                                       ; preds = %if.end227
  %149 = load ptr, ptr %p, align 8, !tbaa !4
  %150 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %p230 = getelementptr inbounds %struct.ffc_params_st, ptr %150, i32 0, i32 0
  %151 = load ptr, ptr %p230, align 8, !tbaa !18
  %cmp231 = icmp ne ptr %149, %151
  br i1 %cmp231, label %if.then233, label %if.end237

if.then233:                                       ; preds = %if.then229
  %152 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %p234 = getelementptr inbounds %struct.ffc_params_st, ptr %152, i32 0, i32 0
  %153 = load ptr, ptr %p234, align 8, !tbaa !18
  call void @BN_free(ptr noundef %153)
  %154 = load ptr, ptr %p, align 8, !tbaa !4
  %call235 = call ptr @BN_dup(ptr noundef %154)
  %155 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %p236 = getelementptr inbounds %struct.ffc_params_st, ptr %155, i32 0, i32 0
  store ptr %call235, ptr %p236, align 8, !tbaa !18
  br label %if.end237

if.end237:                                        ; preds = %if.then233, %if.then229
  %156 = load ptr, ptr %q, align 8, !tbaa !4
  %157 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %q238 = getelementptr inbounds %struct.ffc_params_st, ptr %157, i32 0, i32 1
  %158 = load ptr, ptr %q238, align 8, !tbaa !19
  %cmp239 = icmp ne ptr %156, %158
  br i1 %cmp239, label %if.then241, label %if.end245

if.then241:                                       ; preds = %if.end237
  %159 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %q242 = getelementptr inbounds %struct.ffc_params_st, ptr %159, i32 0, i32 1
  %160 = load ptr, ptr %q242, align 8, !tbaa !19
  call void @BN_free(ptr noundef %160)
  %161 = load ptr, ptr %q, align 8, !tbaa !4
  %call243 = call ptr @BN_dup(ptr noundef %161)
  %162 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %q244 = getelementptr inbounds %struct.ffc_params_st, ptr %162, i32 0, i32 1
  store ptr %call243, ptr %q244, align 8, !tbaa !19
  br label %if.end245

if.end245:                                        ; preds = %if.then241, %if.end237
  %163 = load ptr, ptr %g, align 8, !tbaa !4
  %164 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %g246 = getelementptr inbounds %struct.ffc_params_st, ptr %164, i32 0, i32 2
  %165 = load ptr, ptr %g246, align 8, !tbaa !21
  %cmp247 = icmp ne ptr %163, %165
  br i1 %cmp247, label %if.then249, label %if.end253

if.then249:                                       ; preds = %if.end245
  %166 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %g250 = getelementptr inbounds %struct.ffc_params_st, ptr %166, i32 0, i32 2
  %167 = load ptr, ptr %g250, align 8, !tbaa !21
  call void @BN_free(ptr noundef %167)
  %168 = load ptr, ptr %g, align 8, !tbaa !4
  %call251 = call ptr @BN_dup(ptr noundef %168)
  %169 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %g252 = getelementptr inbounds %struct.ffc_params_st, ptr %169, i32 0, i32 2
  store ptr %call251, ptr %g252, align 8, !tbaa !21
  br label %if.end253

if.end253:                                        ; preds = %if.then249, %if.end245
  %170 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %p254 = getelementptr inbounds %struct.ffc_params_st, ptr %170, i32 0, i32 0
  %171 = load ptr, ptr %p254, align 8, !tbaa !18
  %cmp255 = icmp eq ptr %171, null
  br i1 %cmp255, label %if.then265, label %lor.lhs.false257

lor.lhs.false257:                                 ; preds = %if.end253
  %172 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %q258 = getelementptr inbounds %struct.ffc_params_st, ptr %172, i32 0, i32 1
  %173 = load ptr, ptr %q258, align 8, !tbaa !19
  %cmp259 = icmp eq ptr %173, null
  br i1 %cmp259, label %if.then265, label %lor.lhs.false261

lor.lhs.false261:                                 ; preds = %lor.lhs.false257
  %174 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %g262 = getelementptr inbounds %struct.ffc_params_st, ptr %174, i32 0, i32 2
  %175 = load ptr, ptr %g262, align 8, !tbaa !21
  %cmp263 = icmp eq ptr %175, null
  br i1 %cmp263, label %if.then265, label %if.end266

if.then265:                                       ; preds = %lor.lhs.false261, %lor.lhs.false257, %if.end253
  br label %err

if.end266:                                        ; preds = %lor.lhs.false261
  %176 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %arraydecay267 = getelementptr inbounds [32 x i8], ptr %seed, i64 0, i64 0
  %177 = load i64, ptr %qsize, align 8, !tbaa !10
  %178 = load i32, ptr %pcounter, align 4, !tbaa !8
  %call268 = call i32 @ossl_ffc_params_set_validate_params(ptr noundef %176, ptr noundef %arraydecay267, i64 noundef %177, i32 noundef %178)
  %tobool269 = icmp ne i32 %call268, 0
  br i1 %tobool269, label %if.end271, label %if.then270

if.then270:                                       ; preds = %if.end266
  br label %err

if.end271:                                        ; preds = %if.end266
  %179 = load i32, ptr %hret, align 4, !tbaa !8
  %180 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %h = getelementptr inbounds %struct.ffc_params_st, ptr %180, i32 0, i32 9
  store i32 %179, ptr %h, align 4, !tbaa !23
  br label %if.end272

if.end272:                                        ; preds = %if.end271, %if.end227
  br label %pass

pass:                                             ; preds = %if.end272, %if.then187
  %181 = load i32, ptr %flags, align 4, !tbaa !8
  %and273 = and i32 %181, 2
  %cmp274 = icmp ne i32 %and273, 0
  br i1 %cmp274, label %if.then276, label %if.else277

if.then276:                                       ; preds = %pass
  store i32 2, ptr %ok, align 4, !tbaa !8
  br label %if.end278

if.else277:                                       ; preds = %pass
  store i32 1, ptr %ok, align 4, !tbaa !8
  br label %if.end278

if.end278:                                        ; preds = %if.else277, %if.then276
  br label %err

err:                                              ; preds = %if.end278, %if.then270, %if.then265, %if.then226, %if.then221, %if.then211, %if.then207, %if.then203, %if.then196, %if.then192, %if.then181, %if.then175, %if.then169, %if.then165, %if.then152, %if.then139, %if.then135, %if.then131, %if.then110, %if.then100, %if.then89, %if.then77, %if.then71, %if.then61, %if.then51, %if.then43, %if.then34, %if.then23, %if.then16
  %182 = load ptr, ptr %ctx, align 8, !tbaa !4
  %cmp279 = icmp ne ptr %182, null
  br i1 %cmp279, label %if.then281, label %if.end282

if.then281:                                       ; preds = %err
  %183 = load ptr, ptr %ctx, align 8, !tbaa !4
  call void @BN_CTX_end(ptr noundef %183)
  br label %if.end282

if.end282:                                        ; preds = %if.then281, %err
  %184 = load ptr, ptr %ctx, align 8, !tbaa !4
  call void @BN_CTX_free(ptr noundef %184)
  %185 = load ptr, ptr %mont, align 8, !tbaa !4
  call void @BN_MONT_CTX_free(ptr noundef %185)
  %186 = load ptr, ptr %md, align 8, !tbaa !4
  call void @EVP_MD_free(ptr noundef %186)
  %187 = load i32, ptr %ok, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %def_name) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %verify) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %seed_len) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %seed_in) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %hret) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %use_random_seed) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pcounter) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %counter) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %qsize) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %md) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %mont) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %g) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %test) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %r0) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %buf) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %seed) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #5
  ret i32 %187
}

; Function Attrs: nounwind uwtable
define internal i32 @generate_q_fips186_2(ptr noundef %ctx, ptr noundef %q, ptr noundef %evpmd, ptr noundef %buf, ptr noundef %seed, i64 noundef %qsize, i32 noundef %generate_seed, ptr noundef %retm, ptr noundef %res, ptr noundef %cb) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %evpmd.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %seed.addr = alloca ptr, align 8
  %qsize.addr = alloca i64, align 8
  %generate_seed.addr = alloca i32, align 4
  %retm.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %buf2 = alloca [64 x i8], align 16
  %md = alloca [64 x i8], align 16
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %ret = alloca i32, align 4
  %m = alloca i32, align 4
  %libctx = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  store ptr %evpmd, ptr %evpmd.addr, align 8, !tbaa !4
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store ptr %seed, ptr %seed.addr, align 8, !tbaa !4
  store i64 %qsize, ptr %qsize.addr, align 8, !tbaa !10
  store i32 %generate_seed, ptr %generate_seed.addr, align 4, !tbaa !8
  store ptr %retm, ptr %retm.addr, align 8, !tbaa !4
  store ptr %res, ptr %res.addr, align 8, !tbaa !4
  store ptr %cb, ptr %cb.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 64, ptr %buf2) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr %md) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5
  store i32 0, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  %0 = load ptr, ptr %retm.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %m, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %libctx) #5
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call = call ptr @ossl_bn_get_libctx(ptr noundef %2)
  store ptr %call, ptr %libctx, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %if.end64, %entry
  %3 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %4 = load i32, ptr %m, align 4, !tbaa !8
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %m, align 4, !tbaa !8
  %call1 = call i32 @BN_GENCB_call(ptr noundef %3, i32 noundef 0, i32 noundef %4)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  br label %err

if.end:                                           ; preds = %for.cond
  %5 = load i32, ptr %generate_seed.addr, align 4, !tbaa !8
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %libctx, align 8, !tbaa !4
  %7 = load ptr, ptr %seed.addr, align 8, !tbaa !4
  %8 = load i64, ptr %qsize.addr, align 8, !tbaa !10
  %call3 = call i32 @RAND_bytes_ex(ptr noundef %6, ptr noundef %7, i64 noundef %8, i32 noundef 0)
  %cmp = icmp sle i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  br label %err

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %9 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %seed.addr, align 8, !tbaa !4
  %11 = load i64, ptr %qsize.addr, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %10, i64 %11, i1 false)
  %arraydecay = getelementptr inbounds [64 x i8], ptr %buf2, i64 0, i64 0
  %12 = load ptr, ptr %seed.addr, align 8, !tbaa !4
  %13 = load i64, ptr %qsize.addr, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 1 %12, i64 %13, i1 false)
  %14 = load i64, ptr %qsize.addr, align 8, !tbaa !10
  %conv = trunc i64 %14 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, ptr %i, align 4, !tbaa !8
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %if.end5
  %15 = load i32, ptr %i, align 4, !tbaa !8
  %cmp7 = icmp sge i32 %15, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond6
  %16 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %17 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds i8, ptr %16, i64 %idxprom
  %18 = load i8, ptr %arrayidx, align 1, !tbaa !24
  %inc9 = add i8 %18, 1
  store i8 %inc9, ptr %arrayidx, align 1, !tbaa !24
  %19 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %20 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom10 = sext i32 %20 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %19, i64 %idxprom10
  %21 = load i8, ptr %arrayidx11, align 1, !tbaa !24
  %conv12 = zext i8 %21 to i32
  %cmp13 = icmp ne i32 %conv12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body
  br label %for.end

if.end16:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %22 = load i32, ptr %i, align 4, !tbaa !8
  %dec = add nsw i32 %22, -1
  store i32 %dec, ptr %i, align 4, !tbaa !8
  br label %for.cond6, !llvm.loop !30

for.end:                                          ; preds = %if.then15, %for.cond6
  %23 = load ptr, ptr %seed.addr, align 8, !tbaa !4
  %24 = load i64, ptr %qsize.addr, align 8, !tbaa !10
  %arraydecay17 = getelementptr inbounds [64 x i8], ptr %md, i64 0, i64 0
  %25 = load ptr, ptr %evpmd.addr, align 8, !tbaa !4
  %call18 = call i32 @EVP_Digest(ptr noundef %23, i64 noundef %24, ptr noundef %arraydecay17, ptr noundef null, ptr noundef %25, ptr noundef null)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %for.end
  br label %err

if.end21:                                         ; preds = %for.end
  %26 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %27 = load i64, ptr %qsize.addr, align 8, !tbaa !10
  %arraydecay22 = getelementptr inbounds [64 x i8], ptr %buf2, i64 0, i64 0
  %28 = load ptr, ptr %evpmd.addr, align 8, !tbaa !4
  %call23 = call i32 @EVP_Digest(ptr noundef %26, i64 noundef %27, ptr noundef %arraydecay22, ptr noundef null, ptr noundef %28, ptr noundef null)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end21
  br label %err

if.end26:                                         ; preds = %if.end21
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc39, %if.end26
  %29 = load i32, ptr %i, align 4, !tbaa !8
  %30 = load i64, ptr %qsize.addr, align 8, !tbaa !10
  %conv28 = trunc i64 %30 to i32
  %cmp29 = icmp slt i32 %29, %conv28
  br i1 %cmp29, label %for.body31, label %for.end41

for.body31:                                       ; preds = %for.cond27
  %31 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom32 = sext i32 %31 to i64
  %arrayidx33 = getelementptr inbounds [64 x i8], ptr %buf2, i64 0, i64 %idxprom32
  %32 = load i8, ptr %arrayidx33, align 1, !tbaa !24
  %conv34 = zext i8 %32 to i32
  %33 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom35 = sext i32 %33 to i64
  %arrayidx36 = getelementptr inbounds [64 x i8], ptr %md, i64 0, i64 %idxprom35
  %34 = load i8, ptr %arrayidx36, align 1, !tbaa !24
  %conv37 = zext i8 %34 to i32
  %xor = xor i32 %conv37, %conv34
  %conv38 = trunc i32 %xor to i8
  store i8 %conv38, ptr %arrayidx36, align 1, !tbaa !24
  br label %for.inc39

for.inc39:                                        ; preds = %for.body31
  %35 = load i32, ptr %i, align 4, !tbaa !8
  %inc40 = add nsw i32 %35, 1
  store i32 %inc40, ptr %i, align 4, !tbaa !8
  br label %for.cond27, !llvm.loop !31

for.end41:                                        ; preds = %for.cond27
  %arrayidx42 = getelementptr inbounds [64 x i8], ptr %md, i64 0, i64 0
  %36 = load i8, ptr %arrayidx42, align 16, !tbaa !24
  %conv43 = zext i8 %36 to i32
  %or = or i32 %conv43, 128
  %conv44 = trunc i32 %or to i8
  store i8 %conv44, ptr %arrayidx42, align 16, !tbaa !24
  %37 = load i64, ptr %qsize.addr, align 8, !tbaa !10
  %sub45 = sub i64 %37, 1
  %arrayidx46 = getelementptr inbounds [64 x i8], ptr %md, i64 0, i64 %sub45
  %38 = load i8, ptr %arrayidx46, align 1, !tbaa !24
  %conv47 = zext i8 %38 to i32
  %or48 = or i32 %conv47, 1
  %conv49 = trunc i32 %or48 to i8
  store i8 %conv49, ptr %arrayidx46, align 1, !tbaa !24
  %arraydecay50 = getelementptr inbounds [64 x i8], ptr %md, i64 0, i64 0
  %39 = load i64, ptr %qsize.addr, align 8, !tbaa !10
  %conv51 = trunc i64 %39 to i32
  %40 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %call52 = call ptr @BN_bin2bn(ptr noundef %arraydecay50, i32 noundef %conv51, ptr noundef %40)
  %tobool53 = icmp ne ptr %call52, null
  br i1 %tobool53, label %if.end55, label %if.then54

if.then54:                                        ; preds = %for.end41
  br label %err

if.end55:                                         ; preds = %for.end41
  %41 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %42 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %43 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call56 = call i32 @BN_check_prime(ptr noundef %41, ptr noundef %42, ptr noundef %43)
  store i32 %call56, ptr %r, align 4, !tbaa !8
  %44 = load i32, ptr %r, align 4, !tbaa !8
  %cmp57 = icmp sgt i32 %44, 0
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end55
  store i32 1, ptr %ret, align 4, !tbaa !8
  br label %err

if.end60:                                         ; preds = %if.end55
  %45 = load i32, ptr %r, align 4, !tbaa !8
  %cmp61 = icmp ne i32 %45, 0
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end60
  br label %err

if.end64:                                         ; preds = %if.end60
  store i32 1, ptr %generate_seed.addr, align 4, !tbaa !8
  br label %for.cond

err:                                              ; preds = %if.then63, %if.then59, %if.then54, %if.then25, %if.then20, %if.then4, %if.then
  %46 = load i32, ptr %m, align 4, !tbaa !8
  %47 = load ptr, ptr %retm.addr, align 8, !tbaa !4
  store i32 %46, ptr %47, align 4, !tbaa !8
  %48 = load i32, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %libctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %md) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %buf2) #5
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define i32 @ossl_ffc_params_FIPS186_4_generate(ptr noundef %libctx, ptr noundef %params, i32 noundef %type, i64 noundef %L, i64 noundef %N, ptr noundef %res, ptr noundef %cb) #0 {
entry:
  %libctx.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %L.addr = alloca i64, align 8
  %N.addr = alloca i64, align 8
  %res.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  store ptr %libctx, ptr %libctx.addr, align 8, !tbaa !4
  store ptr %params, ptr %params.addr, align 8, !tbaa !4
  store i32 %type, ptr %type.addr, align 4, !tbaa !8
  store i64 %L, ptr %L.addr, align 8, !tbaa !10
  store i64 %N, ptr %N.addr, align 8, !tbaa !10
  store ptr %res, ptr %res.addr, align 8, !tbaa !4
  store ptr %cb, ptr %cb.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %libctx.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %2 = load i32, ptr %type.addr, align 4, !tbaa !8
  %3 = load i64, ptr %L.addr, align 8, !tbaa !10
  %4 = load i64, ptr %N.addr, align 8, !tbaa !10
  %5 = load ptr, ptr %res.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call = call i32 @ossl_ffc_params_FIPS186_4_gen_verify(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @ossl_ffc_params_FIPS186_2_generate(ptr noundef %libctx, ptr noundef %params, i32 noundef %type, i64 noundef %L, i64 noundef %N, ptr noundef %res, ptr noundef %cb) #0 {
entry:
  %retval = alloca i32, align 4
  %libctx.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %L.addr = alloca i64, align 8
  %N.addr = alloca i64, align 8
  %res.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  store ptr %libctx, ptr %libctx.addr, align 8, !tbaa !4
  store ptr %params, ptr %params.addr, align 8, !tbaa !4
  store i32 %type, ptr %type.addr, align 4, !tbaa !8
  store i64 %L, ptr %L.addr, align 8, !tbaa !10
  store i64 %N, ptr %N.addr, align 8, !tbaa !10
  store ptr %res, ptr %res.addr, align 8, !tbaa !4
  store ptr %cb, ptr %cb.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %libctx.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %2 = load i32, ptr %type.addr, align 4, !tbaa !8
  %3 = load i64, ptr %L.addr, align 8, !tbaa !10
  %4 = load i64, ptr %N.addr, align 8, !tbaa !10
  %5 = load ptr, ptr %res.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %cb.addr, align 8, !tbaa !4
  %call = call i32 @ossl_ffc_params_FIPS186_2_gen_verify(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %params.addr, align 8, !tbaa !4
  call void @ossl_ffc_params_enable_flags(ptr noundef %7, i32 noundef 4, i32 noundef 1)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

declare void @ossl_ffc_params_enable_flags(ptr noundef, i32 noundef, i32 noundef) #2

declare void @ERR_new() #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare ptr @ossl_bn_get_libctx(ptr noundef) #2

declare i32 @RAND_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

declare i32 @EVP_Digest(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare ptr @BN_bin2bn(ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @BN_check_prime(ptr noundef, ptr noundef, ptr noundef) #2

declare void @BN_zero_ex(ptr noundef) #2

declare i32 @BN_add(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @BN_mask_bits(ptr noundef, i32 noundef) #2

declare ptr @BN_copy(ptr noundef, ptr noundef) #2

declare i32 @BN_lshift1(ptr noundef, ptr noundef) #2

declare i32 @EVP_DigestInit_ex(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @BN_mod_exp_mont(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @BN_set_word(ptr noundef, i64 noundef) #2

declare i32 @BN_add_word(ptr noundef, i64 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !9, i64 64}
!13 = !{!"ffc_params_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !11, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !5, i64 72, !5, i64 80, !9, i64 88}
!14 = !{!13, !5, i64 72}
!15 = !{!13, !5, i64 80}
!16 = !{!13, !11, i64 40}
!17 = !{!13, !5, i64 32}
!18 = !{!13, !5, i64 0}
!19 = !{!13, !5, i64 8}
!20 = !{!13, !9, i64 48}
!21 = !{!13, !5, i64 16}
!22 = !{!13, !9, i64 56}
!23 = !{!13, !9, i64 60}
!24 = !{!6, !6, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !26}
!30 = distinct !{!30, !26}
!31 = distinct !{!31, !26}
