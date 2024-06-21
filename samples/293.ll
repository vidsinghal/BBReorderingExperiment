; ModuleID = 'samples/293.bc'
source_filename = "/local-ssd/eccodes-psuel4mgyciesdodvadhkap2g5cqhhyf-build/aidengro/spack-stage-eccodes-2.25.0-psuel4mgyciesdodvadhkap2g5cqhhyf/spack-src/src/grib_dumper_class_grib_encode_C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grib_dumper_class = type { ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.grib_accessor = type { ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, i64, ptr, [20 x ptr], [20 x ptr], i32, ptr, i64, i64, i64, ptr, ptr, [20 x ptr], ptr }
%struct.grib_dumper_grib_encode_C = type { %struct.grib_dumper, i32 }
%struct.grib_dumper = type { ptr, i64, ptr, i32, i64, ptr, ptr }
%struct.grib_handle = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [10 x ptr], [10 x i64], i32, i32, i32, ptr, i64, i32, i32, [5000 x ptr], [12 x ptr], [12 x ptr], i32, i64, i64, i64, i64, double, i32 }

@_grib_dumper_class_grib_encode_C = internal global %struct.grib_dumper_class { ptr null, ptr @.str, i64 64, i32 0, ptr @init_class, ptr @init, ptr @destroy, ptr @dump_long, ptr @dump_double, ptr @dump_string, ptr null, ptr @dump_label, ptr @dump_bytes, ptr @dump_bits, ptr @dump_section, ptr @dump_values, ptr @header, ptr @footer }, align 8
@grib_dumper_class_grib_encode_C = global ptr @_grib_dumper_class_grib_encode_C, align 8
@.str = private unnamed_addr constant [14 x i8] c"grib_encode_C\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"    GRIB_CHECK(grib_set_missing(h,\22%s\22),%d);\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"    GRIB_CHECK(grib_set_long(h,\22%s\22,%ld),%d);\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c" /*  Error accessing %s (%s) */\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\0A    /* %ld = \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"\0A    See \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c". See \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"    GRIB_CHECK(grib_set_double(h,\22%s\22,%g),%d);\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"/* %s */\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"    p    = \22%s\22;\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"    size = strlen(p);\0A\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"    GRIB_CHECK(grib_set_string(h,\22%s\22,p,&size),%d);\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"\0A    /* %s */\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"/* %s: cannot malloc(%ld) */\0A\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c" *** ERR=%d (%s) [grib_dumper_grib_encode_C::dump_bytes]\0A}\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"    size = %ld;\0A\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"    v%s    = (%s*)calloc(size,sizeof(%s));\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"    if(!v%s) {\0A\00", align 1
@.str.27 = private unnamed_addr constant [75 x i8] c"        fprintf(stderr,\22failed to allocate %%d bytes\\n\22,size*sizeof(%s));\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"        exit(1);\0A\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"    }\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"\0A   \00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c" v%s[%4d] = %7g;\00", align 1
@.str.32 = private unnamed_addr constant [56 x i8] c"    GRIB_CHECK(grib_set_%s_array(h,\22%s\22,v%s,size),%d);\0A\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"    free(v%s);\0A\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"editionNumber\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"Unable to get edition number.\00", align 1
@.str.36 = private unnamed_addr constant [175 x i8] c"/local-ssd/eccodes-psuel4mgyciesdodvadhkap2g5cqhhyf-build/aidengro/spack-stage-eccodes-2.25.0-psuel4mgyciesdodvadhkap2g5cqhhyf/spack-src/src/grib_dumper_class_grib_encode_C.c\00", align 1
@.str.37 = private unnamed_addr constant [69 x i8] c"#include <grib_api.h>\0A\0A/* This code was generated automatically */\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [497 x i8] c"\0Aint main(int argc,const char** argv)\0A{\0A    grib_handle *h     = NULL;\0A    size_t size        = 0;\0A    double* vdouble    = NULL;\0A    long* vlong        = NULL;\0A    FILE* f            = NULL;\0A    const char* p      = NULL;\0A    const void* buffer = NULL;\0A\0A    if(argc != 2) {\0A       fprintf(stderr,\22usage: %%s out\\n\22,argv[0]);\0A        exit(1);\0A    }\0A\0A    h = grib_handle_new_from_samples(NULL,\22GRIB%ld\22);\0A    if(!h) {\0A        fprintf(stderr,\22Cannot create grib handle\\n\22);\0A        exit(1);\0A    }\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [372 x i8] c"/* Save the message */\0A\0A    f = fopen(argv[1],\22w\22);\0A    if(!f) {\0A        perror(argv[1]);\0A        exit(1);\0A    }\0A\0A    GRIB_CHECK(grib_get_message(h,&buffer,&size),0);\0A\0A    if(fwrite(buffer,1,size,f) != size) {\0A        perror(argv[1]);\0A        exit(1);\0A    }\0A\0A    if(fclose(f)) {\0A        perror(argv[1]);\0A        exit(1);\0A    }\0A\0A    grib_handle_delete(h);\0A    return 0;\0A}\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal void @init_class(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @init(ptr noundef %d) #0 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8, !tbaa !4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @destroy(ptr noundef %d) #0 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8, !tbaa !4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @dump_long(ptr noundef %d, ptr noundef %a, ptr noundef %comment) #0 {
entry:
  %d.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %comment.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %value = alloca i64, align 8
  %size = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %comment, ptr %comment.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #4
  %0 = load ptr, ptr %d.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #4
  store i64 1, ptr %size, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #4
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call i32 @grib_unpack_long(ptr noundef %1, ptr noundef %value, ptr noundef %size)
  store i32 %call, ptr %err, align 4, !tbaa !10
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.grib_accessor, ptr %2, i32 0, i32 11
  %3 = load i64, ptr %flags, align 8, !tbaa !12
  %and = and i64 %3, 2
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %comment.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %4, null
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %5, i32 0, i32 0
  %out = getelementptr inbounds %struct.grib_dumper, ptr %dumper, i32 0, i32 0
  %6 = load ptr, ptr %out, align 8, !tbaa !14
  %7 = load i64, ptr %value, align 8, !tbaa !8
  %8 = load ptr, ptr %comment.addr, align 8, !tbaa !4
  call void @pcomment(ptr noundef %6, i64 noundef %7, ptr noundef %8)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %flags4 = getelementptr inbounds %struct.grib_accessor, ptr %9, i32 0, i32 11
  %10 = load i64, ptr %flags4, align 8, !tbaa !12
  %and5 = and i64 %10, 16
  %cmp = icmp ne i64 %and5, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end3
  %11 = load i64, ptr %value, align 8, !tbaa !8
  %cmp6 = icmp eq i64 %11, 2147483647
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper8 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %12, i32 0, i32 0
  %out9 = getelementptr inbounds %struct.grib_dumper, ptr %dumper8, i32 0, i32 0
  %13 = load ptr, ptr %out9, align 8, !tbaa !14
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_accessor, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %name, align 8, !tbaa !17
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.1, ptr noundef %15, i32 noundef 0)
  br label %if.end15

if.else:                                          ; preds = %land.lhs.true, %if.end3
  %16 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper11 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %16, i32 0, i32 0
  %out12 = getelementptr inbounds %struct.grib_dumper, ptr %dumper11, i32 0, i32 0
  %17 = load ptr, ptr %out12, align 8, !tbaa !14
  %18 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name13 = getelementptr inbounds %struct.grib_accessor, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %name13, align 8, !tbaa !17
  %20 = load i64, ptr %value, align 8, !tbaa !8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.2, ptr noundef %19, i64 noundef %20, i32 noundef 0)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then7
  %21 = load i32, ptr %err, align 4, !tbaa !10
  %tobool16 = icmp ne i32 %21, 0
  br i1 %tobool16, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.end15
  %22 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper18 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %22, i32 0, i32 0
  %out19 = getelementptr inbounds %struct.grib_dumper, ptr %dumper18, i32 0, i32 0
  %23 = load ptr, ptr %out19, align 8, !tbaa !14
  %24 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name20 = getelementptr inbounds %struct.grib_accessor, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %name20, align 8, !tbaa !17
  %26 = load i32, ptr %err, align 4, !tbaa !10
  %call21 = call ptr @grib_get_error_message(i32 noundef %26)
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.3, ptr noundef %25, ptr noundef %call21)
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end15
  %27 = load ptr, ptr %comment.addr, align 8, !tbaa !4
  %tobool24 = icmp ne ptr %27, null
  br i1 %tobool24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end23
  %28 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper26 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %28, i32 0, i32 0
  %out27 = getelementptr inbounds %struct.grib_dumper, ptr %dumper26, i32 0, i32 0
  %29 = load ptr, ptr %out27, align 8, !tbaa !14
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.4)
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end23
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @dump_double(ptr noundef %d, ptr noundef %a, ptr noundef %comment) #0 {
entry:
  %d.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %comment.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %value = alloca double, align 8
  %size = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %comment, ptr %comment.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #4
  %0 = load ptr, ptr %d.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #4
  store i64 1, ptr %size, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #4
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call i32 @grib_unpack_double(ptr noundef %1, ptr noundef %value, ptr noundef %size)
  store i32 %call, ptr %err, align 4, !tbaa !10
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.grib_accessor, ptr %2, i32 0, i32 11
  %3 = load i64, ptr %flags, align 8, !tbaa !12
  %and = and i64 %3, 2
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.grib_accessor, ptr %4, i32 0, i32 5
  %5 = load i64, ptr %length, align 8, !tbaa !18
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %6 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %6, i32 0, i32 0
  %out = getelementptr inbounds %struct.grib_dumper, ptr %dumper, i32 0, i32 0
  %7 = load ptr, ptr %out, align 8, !tbaa !14
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_accessor, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %name, align 8, !tbaa !17
  %10 = load double, ptr %value, align 8, !tbaa !19
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.10, ptr noundef %9, double noundef %10, i32 noundef 0)
  %11 = load i32, ptr %err, align 4, !tbaa !10
  %tobool4 = icmp ne i32 %11, 0
  br i1 %tobool4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end2
  %12 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper6 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %12, i32 0, i32 0
  %out7 = getelementptr inbounds %struct.grib_dumper, ptr %dumper6, i32 0, i32 0
  %13 = load ptr, ptr %out7, align 8, !tbaa !14
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name8 = getelementptr inbounds %struct.grib_accessor, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %name8, align 8, !tbaa !17
  %16 = load i32, ptr %err, align 4, !tbaa !10
  %call9 = call ptr @grib_get_error_message(i32 noundef %16)
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.3, ptr noundef %15, ptr noundef %call9)
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end2
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @dump_string(ptr noundef %d, ptr noundef %a, ptr noundef %comment) #0 {
entry:
  %d.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %comment.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %value = alloca [1024 x i8], align 16
  %size = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %comment, ptr %comment.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #4
  %0 = load ptr, ptr %d.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1024, ptr %value) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #4
  store i64 1024, ptr %size, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #4
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %value, i64 0, i64 0
  %call = call i32 @grib_unpack_string(ptr noundef %1, ptr noundef %arraydecay, ptr noundef %size)
  store i32 %call, ptr %err, align 4, !tbaa !10
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.grib_accessor, ptr %2, i32 0, i32 11
  %3 = load i64, ptr %flags, align 8, !tbaa !12
  %and = and i64 %3, 2
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.grib_accessor, ptr %4, i32 0, i32 5
  %5 = load i64, ptr %length, align 8, !tbaa !18
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %6 = load ptr, ptr %comment.addr, align 8, !tbaa !4
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end2
  %7 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %7, i32 0, i32 0
  %out = getelementptr inbounds %struct.grib_dumper, ptr %dumper, i32 0, i32 0
  %8 = load ptr, ptr %out, align 8, !tbaa !14
  %9 = load ptr, ptr %comment.addr, align 8, !tbaa !4
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.11, ptr noundef %9)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end2
  %10 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper7 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %10, i32 0, i32 0
  %out8 = getelementptr inbounds %struct.grib_dumper, ptr %dumper7, i32 0, i32 0
  %11 = load ptr, ptr %out8, align 8, !tbaa !14
  %arraydecay9 = getelementptr inbounds [1024 x i8], ptr %value, i64 0, i64 0
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.12, ptr noundef %arraydecay9)
  %12 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper11 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %12, i32 0, i32 0
  %out12 = getelementptr inbounds %struct.grib_dumper, ptr %dumper11, i32 0, i32 0
  %13 = load ptr, ptr %out12, align 8, !tbaa !14
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.13)
  %14 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper14 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %14, i32 0, i32 0
  %out15 = getelementptr inbounds %struct.grib_dumper, ptr %dumper14, i32 0, i32 0
  %15 = load ptr, ptr %out15, align 8, !tbaa !14
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_accessor, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %name, align 8, !tbaa !17
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.14, ptr noundef %17, i32 noundef 0)
  %18 = load i32, ptr %err, align 4, !tbaa !10
  %tobool17 = icmp ne i32 %18, 0
  br i1 %tobool17, label %if.then18, label %if.end24

if.then18:                                        ; preds = %if.end6
  %19 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper19 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %19, i32 0, i32 0
  %out20 = getelementptr inbounds %struct.grib_dumper, ptr %dumper19, i32 0, i32 0
  %20 = load ptr, ptr %out20, align 8, !tbaa !14
  %21 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name21 = getelementptr inbounds %struct.grib_accessor, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %name21, align 8, !tbaa !17
  %23 = load i32, ptr %err, align 4, !tbaa !10
  %call22 = call ptr @grib_get_error_message(i32 noundef %23)
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.3, ptr noundef %22, ptr noundef %call22)
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.end6
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #4
  call void @llvm.lifetime.end.p0(i64 1024, ptr %value) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @dump_label(ptr noundef %d, ptr noundef %a, ptr noundef %comment) #0 {
entry:
  %d.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %comment.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %comment, ptr %comment.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #4
  %0 = load ptr, ptr %d.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  %1 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %1, i32 0, i32 0
  %out = getelementptr inbounds %struct.grib_dumper, ptr %dumper, i32 0, i32 0
  %2 = load ptr, ptr %out, align 8, !tbaa !14
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_accessor, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %name, align 8, !tbaa !17
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.15, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dump_bytes(ptr noundef %d, ptr noundef %a, ptr noundef %comment) #0 {
entry:
  %d.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %comment.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %err = alloca i32, align 4
  %size = alloca i64, align 8
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %comment, ptr %comment.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #4
  %0 = load ptr, ptr %d.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #4
  store i32 0, ptr %err, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #4
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.grib_accessor, ptr %1, i32 0, i32 5
  %2 = load i64, ptr %length, align 8, !tbaa !18
  store i64 %2, ptr %size, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #4
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.grib_accessor, ptr %3, i32 0, i32 11
  %4 = load i64, ptr %flags, align 8, !tbaa !12
  %and = and i64 %4, 2
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %size, align 8, !tbaa !8
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %6 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_dumper, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %context, align 8, !tbaa !21
  %8 = load i64, ptr %size, align 8, !tbaa !8
  %call = call ptr @grib_context_malloc(ptr noundef %7, i64 noundef %8)
  store ptr %call, ptr %buf, align 8, !tbaa !4
  %9 = load ptr, ptr %buf, align 8, !tbaa !4
  %tobool3 = icmp ne ptr %9, null
  br i1 %tobool3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end2
  %10 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %10, i32 0, i32 0
  %out = getelementptr inbounds %struct.grib_dumper, ptr %dumper, i32 0, i32 0
  %11 = load ptr, ptr %out, align 8, !tbaa !14
  %12 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_accessor, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %name, align 8, !tbaa !17
  %14 = load i64, ptr %size, align 8, !tbaa !8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.16, ptr noundef %13, i64 noundef %14)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %15 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %buf, align 8, !tbaa !4
  %call7 = call i32 @grib_unpack_bytes(ptr noundef %15, ptr noundef %16, ptr noundef %size)
  store i32 %call7, ptr %err, align 4, !tbaa !10
  %17 = load i32, ptr %err, align 4, !tbaa !10
  %tobool8 = icmp ne i32 %17, 0
  br i1 %tobool8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end6
  %18 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %context10 = getelementptr inbounds %struct.grib_dumper, ptr %18, i32 0, i32 5
  %19 = load ptr, ptr %context10, align 8, !tbaa !21
  %20 = load ptr, ptr %buf, align 8, !tbaa !4
  call void @grib_context_free(ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper11 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %21, i32 0, i32 0
  %out12 = getelementptr inbounds %struct.grib_dumper, ptr %dumper11, i32 0, i32 0
  %22 = load ptr, ptr %out12, align 8, !tbaa !14
  %23 = load i32, ptr %err, align 4, !tbaa !10
  %24 = load i32, ptr %err, align 4, !tbaa !10
  %call13 = call ptr @grib_get_error_message(i32 noundef %24)
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.17, i32 noundef %23, ptr noundef %call13)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %25 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %context16 = getelementptr inbounds %struct.grib_dumper, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %context16, align 8, !tbaa !21
  %27 = load ptr, ptr %buf, align 8, !tbaa !4
  call void @grib_context_free(ptr noundef %26, ptr noundef %27)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then9, %if.then4, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @dump_bits(ptr noundef %d, ptr noundef %a, ptr noundef %comment) #0 {
entry:
  %d.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %comment.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %value = alloca i64, align 8
  %size = alloca i64, align 8
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %comment, ptr %comment.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #4
  %0 = load ptr, ptr %d.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #4
  store i64 1, ptr %size, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #4
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call i32 @grib_unpack_long(ptr noundef %1, ptr noundef %value, ptr noundef %size)
  store i32 %call, ptr %err, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 1024, ptr %buf) #4
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.grib_accessor, ptr %2, i32 0, i32 11
  %3 = load i64, ptr %flags, align 8, !tbaa !12
  %and = and i64 %3, 2
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.grib_accessor, ptr %4, i32 0, i32 5
  %5 = load i64, ptr %length, align 8, !tbaa !18
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  store i8 0, ptr %arrayidx, align 16, !tbaa !22
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end2
  %6 = load i32, ptr %i, align 4, !tbaa !10
  %conv = sext i32 %6 to i64
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %length3 = getelementptr inbounds %struct.grib_accessor, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %length3, align 8, !tbaa !18
  %mul = mul nsw i64 %8, 8
  %cmp4 = icmp slt i64 %conv, %mul
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, ptr %value, align 8, !tbaa !8
  %10 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %length6 = getelementptr inbounds %struct.grib_accessor, ptr %10, i32 0, i32 5
  %11 = load i64, ptr %length6, align 8, !tbaa !18
  %mul7 = mul nsw i64 %11, 8
  %12 = load i32, ptr %i, align 4, !tbaa !10
  %conv8 = sext i32 %12 to i64
  %sub = sub nsw i64 %mul7, %conv8
  %sub9 = sub nsw i64 %sub, 1
  %call10 = call i32 @test_bit(i64 noundef %9, i64 noundef %sub9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.else

if.then12:                                        ; preds = %for.body
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  %call13 = call ptr @strcat(ptr noundef %arraydecay, ptr noundef @.str.18) #4
  br label %if.end16

if.else:                                          ; preds = %for.body
  %arraydecay14 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  %call15 = call ptr @strcat(ptr noundef %arraydecay14, ptr noundef @.str.19) #4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %13 = load i32, ptr %i, align 4, !tbaa !10
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %comment.addr, align 8, !tbaa !4
  %tobool17 = icmp ne ptr %14, null
  br i1 %tobool17, label %if.then18, label %if.end23

if.then18:                                        ; preds = %for.end
  %arraydecay19 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  %call20 = call ptr @strcat(ptr noundef %arraydecay19, ptr noundef @.str.20) #4
  %arraydecay21 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  %15 = load ptr, ptr %comment.addr, align 8, !tbaa !4
  %call22 = call ptr @strcat(ptr noundef %arraydecay21, ptr noundef %15) #4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %for.end
  %16 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %16, i32 0, i32 0
  %out = getelementptr inbounds %struct.grib_dumper, ptr %dumper, i32 0, i32 0
  %17 = load ptr, ptr %out, align 8, !tbaa !14
  %18 = load i64, ptr %value, align 8, !tbaa !8
  %arraydecay24 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  call void @pcomment(ptr noundef %17, i64 noundef %18, ptr noundef %arraydecay24)
  %19 = load i32, ptr %err, align 4, !tbaa !10
  %tobool25 = icmp ne i32 %19, 0
  br i1 %tobool25, label %if.then26, label %if.else31

if.then26:                                        ; preds = %if.end23
  %20 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper27 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %20, i32 0, i32 0
  %out28 = getelementptr inbounds %struct.grib_dumper, ptr %dumper27, i32 0, i32 0
  %21 = load ptr, ptr %out28, align 8, !tbaa !14
  %22 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_accessor, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %name, align 8, !tbaa !17
  %24 = load i32, ptr %err, align 4, !tbaa !10
  %call29 = call ptr @grib_get_error_message(i32 noundef %24)
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.3, ptr noundef %23, ptr noundef %call29)
  br label %if.end36

if.else31:                                        ; preds = %if.end23
  %25 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper32 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %25, i32 0, i32 0
  %out33 = getelementptr inbounds %struct.grib_dumper, ptr %dumper32, i32 0, i32 0
  %26 = load ptr, ptr %out33, align 8, !tbaa !14
  %27 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name34 = getelementptr inbounds %struct.grib_accessor, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %name34, align 8, !tbaa !17
  %29 = load i64, ptr %value, align 8, !tbaa !8
  %call35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.2, ptr noundef %28, i64 noundef %29, i32 noundef 0)
  br label %if.end36

if.end36:                                         ; preds = %if.else31, %if.then26
  %30 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper37 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %30, i32 0, i32 0
  %out38 = getelementptr inbounds %struct.grib_dumper, ptr %dumper37, i32 0, i32 0
  %31 = load ptr, ptr %out38, align 8, !tbaa !14
  %call39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.4)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 1024, ptr %buf) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @dump_section(ptr noundef %d, ptr noundef %a, ptr noundef %block) #0 {
entry:
  %d.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %block, ptr %block.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %block.addr, align 8, !tbaa !4
  call void @grib_dump_accessors_block(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dump_values(ptr noundef %d, ptr noundef %a) #0 {
entry:
  %d.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %k = alloca i32, align 4
  %err = alloca i32, align 4
  %buf = alloca ptr, align 8
  %type = alloca i32, align 4
  %stype = alloca [10 x i8], align 1
  %size = alloca i64, align 8
  %count = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #4
  %0 = load ptr, ptr %d.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #4
  store i32 0, ptr %err, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #4
  store ptr null, ptr %buf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #4
  store i32 0, ptr %type, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 10, ptr %stype) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #4
  store i64 0, ptr %size, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #4
  store i64 0, ptr %count, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds [10 x i8], ptr %stype, i64 0, i64 0
  store i8 0, ptr %arrayidx, align 1, !tbaa !22
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.grib_accessor, ptr %1, i32 0, i32 11
  %2 = load i64, ptr %flags, align 8, !tbaa !12
  %and = and i64 %2, 2
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %flags1 = getelementptr inbounds %struct.grib_accessor, ptr %3, i32 0, i32 11
  %4 = load i64, ptr %flags1, align 8, !tbaa !12
  %and2 = and i64 %4, 2048
  %tobool3 = icmp ne i64 %and2, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %option_flags = getelementptr inbounds %struct.grib_dumper, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %option_flags, align 8, !tbaa !25
  %and4 = and i64 %6, 256
  %tobool5 = icmp ne i64 %and4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call i32 @grib_value_count(ptr noundef %7, ptr noundef %count)
  %8 = load i64, ptr %count, align 8, !tbaa !8
  store i64 %8, ptr %size, align 8, !tbaa !8
  %9 = load i64, ptr %size, align 8, !tbaa !8
  %cmp = icmp eq i64 %9, 1
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %10 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %a.addr, align 8, !tbaa !4
  call void @dump_double(ptr noundef %10, ptr noundef %11, ptr noundef null)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %12 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call8 = call i64 @grib_accessor_get_native_type(ptr noundef %12)
  %conv = trunc i64 %call8 to i32
  store i32 %conv, ptr %type, align 4, !tbaa !10
  %13 = load i32, ptr %type, align 4, !tbaa !10
  switch i32 %13, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end7
  %arraydecay = getelementptr inbounds [10 x i8], ptr %stype, i64 0, i64 0
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.21, ptr noundef @.str.22) #4
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end7
  %arraydecay11 = getelementptr inbounds [10 x i8], ptr %stype, i64 0, i64 0
  %call12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay11, ptr noundef @.str.21, ptr noundef @.str.23) #4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb
  %14 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_dumper, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %context, align 8, !tbaa !21
  %16 = load i64, ptr %size, align 8, !tbaa !8
  %mul = mul i64 %16, 8
  %call13 = call ptr @grib_context_malloc(ptr noundef %15, i64 noundef %mul)
  store ptr %call13, ptr %buf, align 8, !tbaa !4
  %17 = load ptr, ptr %buf, align 8, !tbaa !4
  %tobool14 = icmp ne ptr %17, null
  br i1 %tobool14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %sw.epilog
  %18 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %18, i32 0, i32 0
  %out = getelementptr inbounds %struct.grib_dumper, ptr %dumper, i32 0, i32 0
  %19 = load ptr, ptr %out, align 8, !tbaa !14
  %20 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_accessor, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %name, align 8, !tbaa !17
  %22 = load i64, ptr %size, align 8, !tbaa !8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.16, ptr noundef %21, i64 noundef %22)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %sw.epilog
  %23 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %buf, align 8, !tbaa !4
  %call18 = call i32 @grib_unpack_double(ptr noundef %23, ptr noundef %24, ptr noundef %size)
  store i32 %call18, ptr %err, align 4, !tbaa !10
  %25 = load i32, ptr %err, align 4, !tbaa !10
  %tobool19 = icmp ne i32 %25, 0
  br i1 %tobool19, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.end17
  %26 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %context21 = getelementptr inbounds %struct.grib_dumper, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %context21, align 8, !tbaa !21
  %28 = load ptr, ptr %buf, align 8, !tbaa !4
  call void @grib_context_free(ptr noundef %27, ptr noundef %28)
  %29 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper22 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %29, i32 0, i32 0
  %out23 = getelementptr inbounds %struct.grib_dumper, ptr %dumper22, i32 0, i32 0
  %30 = load ptr, ptr %out23, align 8, !tbaa !14
  %31 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name24 = getelementptr inbounds %struct.grib_accessor, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %name24, align 8, !tbaa !17
  %33 = load i32, ptr %err, align 4, !tbaa !10
  %call25 = call ptr @grib_get_error_message(i32 noundef %33)
  %call26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.3, ptr noundef %32, ptr noundef %call25)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  %34 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper28 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %34, i32 0, i32 0
  %out29 = getelementptr inbounds %struct.grib_dumper, ptr %dumper28, i32 0, i32 0
  %35 = load ptr, ptr %out29, align 8, !tbaa !14
  %36 = load i64, ptr %size, align 8, !tbaa !8
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.24, i64 noundef %36)
  %37 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper31 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %37, i32 0, i32 0
  %out32 = getelementptr inbounds %struct.grib_dumper, ptr %dumper31, i32 0, i32 0
  %38 = load ptr, ptr %out32, align 8, !tbaa !14
  %arraydecay33 = getelementptr inbounds [10 x i8], ptr %stype, i64 0, i64 0
  %arraydecay34 = getelementptr inbounds [10 x i8], ptr %stype, i64 0, i64 0
  %arraydecay35 = getelementptr inbounds [10 x i8], ptr %stype, i64 0, i64 0
  %call36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.25, ptr noundef %arraydecay33, ptr noundef %arraydecay34, ptr noundef %arraydecay35)
  %39 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper37 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %39, i32 0, i32 0
  %out38 = getelementptr inbounds %struct.grib_dumper, ptr %dumper37, i32 0, i32 0
  %40 = load ptr, ptr %out38, align 8, !tbaa !14
  %arraydecay39 = getelementptr inbounds [10 x i8], ptr %stype, i64 0, i64 0
  %call40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.26, ptr noundef %arraydecay39)
  %41 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper41 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %41, i32 0, i32 0
  %out42 = getelementptr inbounds %struct.grib_dumper, ptr %dumper41, i32 0, i32 0
  %42 = load ptr, ptr %out42, align 8, !tbaa !14
  %arraydecay43 = getelementptr inbounds [10 x i8], ptr %stype, i64 0, i64 0
  %call44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.27, ptr noundef %arraydecay43)
  %43 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper45 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %43, i32 0, i32 0
  %out46 = getelementptr inbounds %struct.grib_dumper, ptr %dumper45, i32 0, i32 0
  %44 = load ptr, ptr %out46, align 8, !tbaa !14
  %call47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.28)
  %45 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper48 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %45, i32 0, i32 0
  %out49 = getelementptr inbounds %struct.grib_dumper, ptr %dumper48, i32 0, i32 0
  %46 = load ptr, ptr %out49, align 8, !tbaa !14
  %call50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.29)
  %47 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper51 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %47, i32 0, i32 0
  %out52 = getelementptr inbounds %struct.grib_dumper, ptr %dumper51, i32 0, i32 0
  %48 = load ptr, ptr %out52, align 8, !tbaa !14
  %call53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef @.str.30)
  store i32 0, ptr %k, align 4, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %if.end68, %if.end27
  %49 = load i32, ptr %k, align 4, !tbaa !10
  %conv54 = sext i32 %49 to i64
  %50 = load i64, ptr %size, align 8, !tbaa !8
  %cmp55 = icmp ult i64 %conv54, %50
  br i1 %cmp55, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %51 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper57 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %51, i32 0, i32 0
  %out58 = getelementptr inbounds %struct.grib_dumper, ptr %dumper57, i32 0, i32 0
  %52 = load ptr, ptr %out58, align 8, !tbaa !14
  %arraydecay59 = getelementptr inbounds [10 x i8], ptr %stype, i64 0, i64 0
  %53 = load i32, ptr %k, align 4, !tbaa !10
  %54 = load ptr, ptr %buf, align 8, !tbaa !4
  %55 = load i32, ptr %k, align 4, !tbaa !10
  %idxprom = sext i32 %55 to i64
  %arrayidx60 = getelementptr inbounds double, ptr %54, i64 %idxprom
  %56 = load double, ptr %arrayidx60, align 8, !tbaa !19
  %call61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @.str.31, ptr noundef %arraydecay59, i32 noundef %53, double noundef %56)
  %57 = load i32, ptr %k, align 4, !tbaa !10
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %k, align 4, !tbaa !10
  %58 = load i32, ptr %k, align 4, !tbaa !10
  %rem = srem i32 %58, 4
  %cmp62 = icmp eq i32 %rem, 0
  br i1 %cmp62, label %if.then64, label %if.end68

if.then64:                                        ; preds = %while.body
  %59 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper65 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %59, i32 0, i32 0
  %out66 = getelementptr inbounds %struct.grib_dumper, ptr %dumper65, i32 0, i32 0
  %60 = load ptr, ptr %out66, align 8, !tbaa !14
  %call67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.30)
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %while.body
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  %61 = load i64, ptr %size, align 8, !tbaa !8
  %rem69 = urem i64 %61, 4
  %tobool70 = icmp ne i64 %rem69, 0
  br i1 %tobool70, label %if.then71, label %if.end75

if.then71:                                        ; preds = %while.end
  %62 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper72 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %62, i32 0, i32 0
  %out73 = getelementptr inbounds %struct.grib_dumper, ptr %dumper72, i32 0, i32 0
  %63 = load ptr, ptr %out73, align 8, !tbaa !14
  %call74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef @.str.4)
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %while.end
  %64 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper76 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %64, i32 0, i32 0
  %out77 = getelementptr inbounds %struct.grib_dumper, ptr %dumper76, i32 0, i32 0
  %65 = load ptr, ptr %out77, align 8, !tbaa !14
  %call78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef @.str.4)
  %66 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper79 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %66, i32 0, i32 0
  %out80 = getelementptr inbounds %struct.grib_dumper, ptr %dumper79, i32 0, i32 0
  %67 = load ptr, ptr %out80, align 8, !tbaa !14
  %arraydecay81 = getelementptr inbounds [10 x i8], ptr %stype, i64 0, i64 0
  %68 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name82 = getelementptr inbounds %struct.grib_accessor, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %name82, align 8, !tbaa !17
  %arraydecay83 = getelementptr inbounds [10 x i8], ptr %stype, i64 0, i64 0
  %call84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef @.str.32, ptr noundef %arraydecay81, ptr noundef %69, ptr noundef %arraydecay83, i32 noundef 0)
  %70 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper85 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %70, i32 0, i32 0
  %out86 = getelementptr inbounds %struct.grib_dumper, ptr %dumper85, i32 0, i32 0
  %71 = load ptr, ptr %out86, align 8, !tbaa !14
  %arraydecay87 = getelementptr inbounds [10 x i8], ptr %stype, i64 0, i64 0
  %call88 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef @.str.33, ptr noundef %arraydecay87)
  %72 = load ptr, ptr %d.addr, align 8, !tbaa !4
  %context89 = getelementptr inbounds %struct.grib_dumper, ptr %72, i32 0, i32 5
  %73 = load ptr, ptr %context89, align 8, !tbaa !21
  %74 = load ptr, ptr %buf, align 8, !tbaa !4
  call void @grib_context_free(ptr noundef %73, ptr noundef %74)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.then20, %if.then15, %sw.default, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #4
  call void @llvm.lifetime.end.p0(i64 10, ptr %stype) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @header(ptr noundef %d, ptr noundef %h) #0 {
entry:
  %d.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %edition = alloca i64, align 8
  %ret = alloca i32, align 4
  %self = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8, !tbaa !4
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %edition) #4
  store i64 0, ptr %edition, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #4
  store i32 0, ptr %ret, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #4
  %0 = load ptr, ptr %d.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  %1 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %call = call i32 @grib_get_long(ptr noundef %1, ptr noundef @.str.34, ptr noundef %edition)
  store i32 %call, ptr %ret, align 4, !tbaa !10
  %2 = load i32, ptr %ret, align 4, !tbaa !10
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %h.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_handle, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %context, align 8, !tbaa !27
  call void (ptr, i32, ptr, ...) @grib_context_log(ptr noundef %4, i32 noundef 2, ptr noundef @.str.35)
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @codes_assertion_failed(ptr noundef @.str.19, ptr noundef @.str.36, i32 noundef 397)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %5 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %5, i32 0, i32 0
  %out = getelementptr inbounds %struct.grib_dumper, ptr %dumper, i32 0, i32 0
  %6 = load ptr, ptr %out, align 8, !tbaa !14
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.37)
  %7 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper2 = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %7, i32 0, i32 0
  %out3 = getelementptr inbounds %struct.grib_dumper, ptr %dumper2, i32 0, i32 0
  %8 = load ptr, ptr %out3, align 8, !tbaa !14
  %9 = load i64, ptr %edition, align 8, !tbaa !8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.38, i64 noundef %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %edition) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @footer(ptr noundef %d, ptr noundef %h) #0 {
entry:
  %d.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8, !tbaa !4
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #4
  %0 = load ptr, ptr %d.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  %1 = load ptr, ptr %self, align 8, !tbaa !4
  %dumper = getelementptr inbounds %struct.grib_dumper_grib_encode_C, ptr %1, i32 0, i32 0
  %out = getelementptr inbounds %struct.grib_dumper, ptr %dumper, i32 0, i32 0
  %2 = load ptr, ptr %out, align 8, !tbaa !14
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.39)
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @grib_unpack_long(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @pcomment(ptr noundef %f, i64 noundef %value, ptr noundef %p) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  %p.addr = alloca ptr, align 8
  %cr = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store i64 %value, ptr %value.addr, align 8, !tbaa !8
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cr) #4
  store i32 0, ptr %cr, align 4, !tbaa !10
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %1 = load i64, ptr %value.addr, align 8, !tbaa !8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.5, i64 noundef %1)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %3 = load i8, ptr %2, align 1, !tbaa !22
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %5 = load i8, ptr %4, align 1, !tbaa !22
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 59, label %sw.bb
    i32 58, label %sw.bb2
  ]

sw.bb:                                            ; preds = %while.body
  %6 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.6)
  store i32 1, ptr %cr, align 4, !tbaa !10
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  %7 = load i32, ptr %cr, align 4, !tbaa !10
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb2
  %8 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.7)
  br label %if.end

if.else:                                          ; preds = %sw.bb2
  %9 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %10 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %11 = load i8, ptr %10, align 1, !tbaa !22
  %conv6 = sext i8 %11 to i32
  %12 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call7 = call i32 @fputc(i32 noundef %conv6, ptr noundef %12)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb
  %13 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %p.addr, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !29

while.end:                                        ; preds = %while.cond
  %14 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.9)
  call void @llvm.lifetime.end.p0(i64 4, ptr %cr) #4
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare ptr @grib_get_error_message(i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @fputc(i32 noundef, ptr noundef) #2

declare i32 @grib_unpack_double(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @grib_unpack_string(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @grib_context_malloc(ptr noundef, i64 noundef) #2

declare i32 @grib_unpack_bytes(ptr noundef, ptr noundef, ptr noundef) #2

declare void @grib_context_free(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @test_bit(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !8
  store i64 %b, ptr %b.addr, align 8, !tbaa !8
  %0 = load i64, ptr %a.addr, align 8, !tbaa !8
  %1 = load i64, ptr %b.addr, align 8, !tbaa !8
  %sh_prom = trunc i64 %1 to i32
  %shl = shl i32 1, %sh_prom
  %conv = sext i32 %shl to i64
  %and = and i64 %0, %conv
  %conv1 = trunc i64 %and to i32
  ret i32 %conv1
}

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #3

declare void @grib_dump_accessors_block(ptr noundef, ptr noundef) #2

declare i32 @grib_value_count(ptr noundef, ptr noundef) #2

declare i64 @grib_accessor_get_native_type(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @grib_get_long(ptr noundef, ptr noundef, ptr noundef) #2

declare void @grib_context_log(ptr noundef, i32 noundef, ptr noundef, ...) #2

declare void @codes_assertion_failed(ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !9, i64 88}
!13 = !{!"grib_accessor", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !9, i64 40, !9, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !9, i64 88, !5, i64 96, !6, i64 104, !6, i64 264, !11, i64 424, !5, i64 432, !9, i64 440, !9, i64 448, !9, i64 456, !5, i64 464, !5, i64 472, !6, i64 480, !5, i64 640}
!14 = !{!15, !5, i64 0}
!15 = !{!"grib_dumper_grib_encode_C", !16, i64 0, !11, i64 56}
!16 = !{!"grib_dumper", !5, i64 0, !9, i64 8, !5, i64 16, !11, i64 24, !9, i64 32, !5, i64 40, !5, i64 48}
!17 = !{!13, !5, i64 0}
!18 = !{!13, !9, i64 40}
!19 = !{!20, !20, i64 0}
!20 = !{!"double", !6, i64 0}
!21 = !{!16, !5, i64 40}
!22 = !{!6, !6, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!16, !9, i64 8}
!26 = distinct !{!26, !24}
!27 = !{!28, !5, i64 0}
!28 = !{!"grib_handle", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !11, i64 72, !6, i64 80, !6, i64 160, !11, i64 240, !11, i64 244, !11, i64 248, !5, i64 256, !9, i64 264, !11, i64 272, !11, i64 276, !6, i64 280, !6, i64 40280, !6, i64 40376, !11, i64 40472, !9, i64 40480, !9, i64 40488, !9, i64 40496, !9, i64 40504, !20, i64 40512, !6, i64 40520}
!29 = distinct !{!29, !24}
