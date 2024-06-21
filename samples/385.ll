; ModuleID = 'samples/385.bc'
source_filename = "/local-ssd/openexr-ikqb4m3bfooua5emhhv2uu2ehjlcoldt-build/aidengro/spack-stage-openexr-3.1.11-ikqb4m3bfooua5emhhv2uu2ehjlcoldt/spack-src/src/lib/OpenEXRCore/write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._internal_exr_context = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.exr_attr_string_t, %struct.exr_attr_string_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, float, ptr, ptr, ptr, i64, ptr, ptr, i64, i32, i32, i32, i32, %struct._internal_exr_part, ptr, ptr, %struct.exr_attribute_list, %union.pthread_mutex_t, i8, i8, [6 x i8] }
%struct.exr_attr_string_t = type { i32, i32, ptr }
%struct._internal_exr_part = type { i32, i32, %struct.exr_attribute_list, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.exr_attr_box2i_t, %struct.exr_attr_box2i_t, i32, i32, i32, float, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i16, i32, i64, i64 }
%struct.exr_attr_box2i_t = type { %struct.exr_attr_v2i_t, %struct.exr_attr_v2i_t }
%struct.exr_attr_v2i_t = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }
%struct.exr_attribute_list = type { i32, i32, ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.exr_attribute_t = type { ptr, ptr, i8, i8, [2 x i8], i32, %union.anon.0 }
%union.anon.0 = type { double }
%struct.exr_attr_box2f_t = type { %struct.exr_attr_v2f_t, %struct.exr_attr_v2f_t }
%struct.exr_attr_v2f_t = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { float, float }
%struct.exr_attr_chlist_t = type { i32, i32, ptr }
%struct.exr_attr_chlist_entry_t = type { %struct.exr_attr_string_t, i32, i8, [3 x i8], i32, i32 }
%struct.exr_attr_chromaticities_t = type { float, float, float, float, float, float, float, float }
%struct.exr_attr_float_vector_t = type { i32, i32, ptr }
%struct.exr_attr_keycode_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.exr_attr_m33f_t = type { [9 x float] }
%struct.exr_attr_m33d_t = type { [9 x double] }
%struct.exr_attr_m44f_t = type { [16 x float] }
%struct.exr_attr_m44d_t = type { [16 x double] }
%struct.exr_attr_preview_t = type { i32, i32, i64, ptr }
%struct.exr_attr_rational_t = type { i32, i32 }
%struct.exr_attr_string_vector_t = type { i32, i32, ptr }
%struct.exr_attr_tiledesc_t = type <{ i32, i32, i8 }>
%struct.exr_attr_timecode_t = type { i32, i32 }
%struct.exr_attr_v2d_t = type { %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { double, double }
%struct.exr_attr_v3i_t = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i32, i32, i32 }
%struct.exr_attr_v3f_t = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { float, float, float }
%struct.exr_attr_v3d_t = type { %union.anon.9 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { double, double, double }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_write_header(ptr noundef %ctxt) #0 {
entry:
  %retval = alloca i32, align 4
  %ctxt.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %magic_and_version = alloca [2 x i32], align 4
  %flags = alloca i32, align 4
  %next_byte = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %p = alloca i32, align 4
  %curp = alloca ptr, align 8
  %a = alloca i32, align 4
  %curattr = alloca ptr, align 8
  %a56 = alloca i32, align 4
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %magic_and_version) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr %next_byte) #6
  store i32 2, ptr %flags, align 4, !tbaa !8
  %0 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %is_multipart = getelementptr inbounds %struct._internal_exr_context, ptr %0, i32 0, i32 5
  %1 = load i8, ptr %is_multipart, align 1, !tbaa !10
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %flags, align 4, !tbaa !8
  %or = or i32 %2, 4096
  store i32 %or, ptr %flags, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %max_name_length = getelementptr inbounds %struct._internal_exr_context, ptr %3, i32 0, i32 2
  %4 = load i8, ptr %max_name_length, align 2, !tbaa !20
  %conv = zext i8 %4 to i32
  %cmp = icmp sgt i32 %conv, 31
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %5 = load i32, ptr %flags, align 4, !tbaa !8
  %or3 = or i32 %5, 1024
  store i32 %or3, ptr %flags, align 4, !tbaa !8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %6 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %has_nonimage_data = getelementptr inbounds %struct._internal_exr_context, ptr %6, i32 0, i32 4
  %7 = load i8, ptr %has_nonimage_data, align 4, !tbaa !21
  %tobool5 = icmp ne i8 %7, 0
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %8 = load i32, ptr %flags, align 4, !tbaa !8
  %or7 = or i32 %8, 2048
  store i32 %or7, ptr %flags, align 4, !tbaa !8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %9 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %is_singlepart_tiled = getelementptr inbounds %struct._internal_exr_context, ptr %9, i32 0, i32 3
  %10 = load i8, ptr %is_singlepart_tiled, align 1, !tbaa !22
  %tobool9 = icmp ne i8 %10, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %11 = load i32, ptr %flags, align 4, !tbaa !8
  %or11 = or i32 %11, 512
  store i32 %or11, ptr %flags, align 4, !tbaa !8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  %arrayidx = getelementptr inbounds [2 x i32], ptr %magic_and_version, i64 0, i64 0
  store i32 20000630, ptr %arrayidx, align 4, !tbaa !8
  %12 = load i32, ptr %flags, align 4, !tbaa !8
  %arrayidx13 = getelementptr inbounds [2 x i32], ptr %magic_and_version, i64 0, i64 1
  store i32 %12, ptr %arrayidx13, align 4, !tbaa !8
  %arraydecay = getelementptr inbounds [2 x i32], ptr %magic_and_version, i64 0, i64 0
  call void @priv_from_native32(ptr noundef %arraydecay, i32 noundef 2)
  %13 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %do_write = getelementptr inbounds %struct._internal_exr_context, ptr %13, i32 0, i32 11
  %14 = load ptr, ptr %do_write, align 8, !tbaa !23
  %15 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %arraydecay14 = getelementptr inbounds [2 x i32], ptr %magic_and_version, i64 0, i64 0
  %16 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %output_file_offset = getelementptr inbounds %struct._internal_exr_context, ptr %16, i32 0, i32 30
  %call = call i32 %14(ptr noundef %15, ptr noundef %arraydecay14, i64 noundef 8, ptr noundef %output_file_offset)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %17 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp15 = icmp ne i32 %17, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  %18 = load i32, ptr %rv, align 4, !tbaa !8
  store i32 %18, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup99

if.end18:                                         ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #6
  store i32 0, ptr %p, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc84, %if.end18
  %19 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp19 = icmp eq i32 %19, 0
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %20 = load i32, ptr %p, align 4, !tbaa !8
  %21 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %num_parts = getelementptr inbounds %struct._internal_exr_context, ptr %21, i32 0, i32 34
  %22 = load i32, ptr %num_parts, align 4, !tbaa !24
  %cmp21 = icmp slt i32 %20, %22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %23 = phi i1 [ false, %for.cond ], [ %cmp21, %land.rhs ]
  br i1 %23, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %land.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #6
  br label %for.end87

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %curp) #6
  %24 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %parts = getelementptr inbounds %struct._internal_exr_context, ptr %24, i32 0, i32 37
  %25 = load ptr, ptr %parts, align 8, !tbaa !25
  %26 = load i32, ptr %p, align 4, !tbaa !8
  %idxprom = sext i32 %26 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %25, i64 %idxprom
  %27 = load ptr, ptr %arrayidx23, align 8, !tbaa !4
  store ptr %27, ptr %curp, align 8, !tbaa !4
  %28 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %legacy_header = getelementptr inbounds %struct._internal_exr_context, ptr %28, i32 0, i32 41
  %29 = load i8, ptr %legacy_header, align 1, !tbaa !26
  %tobool24 = icmp ne i8 %29, 0
  br i1 %tobool24, label %if.then25, label %if.else

if.then25:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #6
  store i32 0, ptr %a, align 4, !tbaa !8
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc, %if.then25
  %30 = load i32, ptr %a, align 4, !tbaa !8
  %31 = load ptr, ptr %curp, align 8, !tbaa !4
  %attributes = getelementptr inbounds %struct._internal_exr_part, ptr %31, i32 0, i32 2
  %num_attributes = getelementptr inbounds %struct.exr_attribute_list, ptr %attributes, i32 0, i32 0
  %32 = load i32, ptr %num_attributes, align 8, !tbaa !27
  %cmp27 = icmp slt i32 %30, %32
  br i1 %cmp27, label %for.body30, label %for.cond.cleanup29

for.cond.cleanup29:                               ; preds = %for.cond26
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup55

for.body30:                                       ; preds = %for.cond26
  call void @llvm.lifetime.start.p0(i64 8, ptr %curattr) #6
  %33 = load ptr, ptr %curp, align 8, !tbaa !4
  %attributes31 = getelementptr inbounds %struct._internal_exr_part, ptr %33, i32 0, i32 2
  %sorted_entries = getelementptr inbounds %struct.exr_attribute_list, ptr %attributes31, i32 0, i32 3
  %34 = load ptr, ptr %sorted_entries, align 8, !tbaa !28
  %35 = load i32, ptr %a, align 4, !tbaa !8
  %idxprom32 = sext i32 %35 to i64
  %arrayidx33 = getelementptr inbounds ptr, ptr %34, i64 %idxprom32
  %36 = load ptr, ptr %arrayidx33, align 8, !tbaa !4
  store ptr %36, ptr %curattr, align 8, !tbaa !4
  %37 = load i32, ptr %flags, align 4, !tbaa !8
  %and = and i32 %37, 6144
  %cmp34 = icmp eq i32 0, %and
  br i1 %cmp34, label %land.lhs.true, label %if.end49

land.lhs.true:                                    ; preds = %for.body30
  %38 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %num_parts36 = getelementptr inbounds %struct._internal_exr_context, ptr %38, i32 0, i32 34
  %39 = load i32, ptr %num_parts36, align 4, !tbaa !24
  %cmp37 = icmp eq i32 1, %39
  br i1 %cmp37, label %if.then39, label %if.end49

if.then39:                                        ; preds = %land.lhs.true
  %40 = load ptr, ptr %curattr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.exr_attribute_t, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %name, align 8, !tbaa !29
  %call40 = call i32 @strcmp(ptr noundef %41, ptr noundef @.str) #7
  %cmp41 = icmp eq i32 0, %call40
  br i1 %cmp41, label %if.then47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then39
  %42 = load ptr, ptr %curattr, align 8, !tbaa !4
  %name43 = getelementptr inbounds %struct.exr_attribute_t, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %name43, align 8, !tbaa !29
  %call44 = call i32 @strcmp(ptr noundef %43, ptr noundef @.str.1) #7
  %cmp45 = icmp eq i32 0, %call44
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %lor.lhs.false, %if.then39
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end48:                                         ; preds = %lor.lhs.false
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %land.lhs.true, %for.body30
  %44 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %45 = load ptr, ptr %curattr, align 8, !tbaa !4
  %call50 = call i32 @save_attr(ptr noundef %44, ptr noundef %45)
  store i32 %call50, ptr %rv, align 4, !tbaa !8
  %46 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp51 = icmp ne i32 %46, 0
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end49
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then53, %if.then47
  call void @llvm.lifetime.end.p0(i64 8, ptr %curattr) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup55 [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %47 = load i32, ptr %a, align 4, !tbaa !8
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %a, align 4, !tbaa !8
  br label %for.cond26, !llvm.loop !31

cleanup55:                                        ; preds = %cleanup, %for.cond.cleanup29
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #6
  br label %for.end

for.end:                                          ; preds = %cleanup55
  br label %if.end76

if.else:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %a56) #6
  store i32 0, ptr %a56, align 4, !tbaa !8
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc72, %if.else
  %48 = load i32, ptr %a56, align 4, !tbaa !8
  %49 = load ptr, ptr %curp, align 8, !tbaa !4
  %attributes58 = getelementptr inbounds %struct._internal_exr_part, ptr %49, i32 0, i32 2
  %num_attributes59 = getelementptr inbounds %struct.exr_attribute_list, ptr %attributes58, i32 0, i32 0
  %50 = load i32, ptr %num_attributes59, align 8, !tbaa !27
  %cmp60 = icmp slt i32 %48, %50
  br i1 %cmp60, label %for.body63, label %for.cond.cleanup62

for.cond.cleanup62:                               ; preds = %for.cond57
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup74

for.body63:                                       ; preds = %for.cond57
  %51 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %52 = load ptr, ptr %curp, align 8, !tbaa !4
  %attributes64 = getelementptr inbounds %struct._internal_exr_part, ptr %52, i32 0, i32 2
  %entries = getelementptr inbounds %struct.exr_attribute_list, ptr %attributes64, i32 0, i32 2
  %53 = load ptr, ptr %entries, align 8, !tbaa !33
  %54 = load i32, ptr %a56, align 4, !tbaa !8
  %idxprom65 = sext i32 %54 to i64
  %arrayidx66 = getelementptr inbounds ptr, ptr %53, i64 %idxprom65
  %55 = load ptr, ptr %arrayidx66, align 8, !tbaa !4
  %call67 = call i32 @save_attr(ptr noundef %51, ptr noundef %55)
  store i32 %call67, ptr %rv, align 4, !tbaa !8
  %56 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp68 = icmp ne i32 %56, 0
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %for.body63
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup74

if.end71:                                         ; preds = %for.body63
  br label %for.inc72

for.inc72:                                        ; preds = %if.end71
  %57 = load i32, ptr %a56, align 4, !tbaa !8
  %inc73 = add nsw i32 %57, 1
  store i32 %inc73, ptr %a56, align 4, !tbaa !8
  br label %for.cond57, !llvm.loop !34

cleanup74:                                        ; preds = %if.then70, %for.cond.cleanup62
  call void @llvm.lifetime.end.p0(i64 4, ptr %a56) #6
  br label %for.end75

for.end75:                                        ; preds = %cleanup74
  br label %if.end76

if.end76:                                         ; preds = %for.end75, %for.end
  %58 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp77 = icmp eq i32 %58, 0
  br i1 %cmp77, label %if.then79, label %if.end83

if.then79:                                        ; preds = %if.end76
  store i8 0, ptr %next_byte, align 1, !tbaa !35
  %59 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %do_write80 = getelementptr inbounds %struct._internal_exr_context, ptr %59, i32 0, i32 11
  %60 = load ptr, ptr %do_write80, align 8, !tbaa !23
  %61 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %62 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %output_file_offset81 = getelementptr inbounds %struct._internal_exr_context, ptr %62, i32 0, i32 30
  %call82 = call i32 %60(ptr noundef %61, ptr noundef %next_byte, i64 noundef 1, ptr noundef %output_file_offset81)
  store i32 %call82, ptr %rv, align 4, !tbaa !8
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %if.end76
  call void @llvm.lifetime.end.p0(i64 8, ptr %curp) #6
  br label %for.inc84

for.inc84:                                        ; preds = %if.end83
  %63 = load i32, ptr %p, align 4, !tbaa !8
  %inc85 = add nsw i32 %63, 1
  store i32 %inc85, ptr %p, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !36

for.end87:                                        ; preds = %for.cond.cleanup
  %64 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp88 = icmp eq i32 %64, 0
  br i1 %cmp88, label %land.lhs.true90, label %if.end98

land.lhs.true90:                                  ; preds = %for.end87
  %65 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %is_multipart91 = getelementptr inbounds %struct._internal_exr_context, ptr %65, i32 0, i32 5
  %66 = load i8, ptr %is_multipart91, align 1, !tbaa !10
  %conv92 = zext i8 %66 to i32
  %tobool93 = icmp ne i32 %conv92, 0
  br i1 %tobool93, label %if.then94, label %if.end98

if.then94:                                        ; preds = %land.lhs.true90
  store i8 0, ptr %next_byte, align 1, !tbaa !35
  %67 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %do_write95 = getelementptr inbounds %struct._internal_exr_context, ptr %67, i32 0, i32 11
  %68 = load ptr, ptr %do_write95, align 8, !tbaa !23
  %69 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %70 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %output_file_offset96 = getelementptr inbounds %struct._internal_exr_context, ptr %70, i32 0, i32 30
  %call97 = call i32 %68(ptr noundef %69, ptr noundef %next_byte, i64 noundef 1, ptr noundef %output_file_offset96)
  store i32 %call97, ptr %rv, align 4, !tbaa !8
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %land.lhs.true90, %for.end87
  %71 = load i32, ptr %rv, align 4, !tbaa !8
  store i32 %71, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup99

cleanup99:                                        ; preds = %if.end98, %if.then17
  call void @llvm.lifetime.end.p0(i64 1, ptr %next_byte) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %magic_and_version) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  %72 = load i32, ptr %retval, align 4
  ret i32 %72
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @priv_from_native32(ptr noundef %ptr, i32 noundef %n) #2 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %1 = load i32, ptr %n.addr, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @save_attr(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %retval = alloca i32, align 4
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  %0 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %do_write = getelementptr inbounds %struct._internal_exr_context, ptr %0, i32 0, i32 11
  %1 = load ptr, ptr %do_write, align 8, !tbaa !23
  %2 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.exr_attribute_t, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %name, align 8, !tbaa !29
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name_length = getelementptr inbounds %struct.exr_attribute_t, ptr %5, i32 0, i32 2
  %6 = load i8, ptr %name_length, align 8, !tbaa !37
  %conv = zext i8 %6 to i32
  %add = add nsw i32 %conv, 1
  %conv1 = sext i32 %add to i64
  %7 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %output_file_offset = getelementptr inbounds %struct._internal_exr_context, ptr %7, i32 0, i32 30
  %call = call i32 %1(ptr noundef %2, ptr noundef %4, i64 noundef %conv1, ptr noundef %output_file_offset)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %8 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, ptr %rv, align 4, !tbaa !8
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %do_write3 = getelementptr inbounds %struct._internal_exr_context, ptr %10, i32 0, i32 11
  %11 = load ptr, ptr %do_write3, align 8, !tbaa !23
  %12 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %type_name = getelementptr inbounds %struct.exr_attribute_t, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %type_name, align 8, !tbaa !38
  %15 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %type_name_length = getelementptr inbounds %struct.exr_attribute_t, ptr %15, i32 0, i32 3
  %16 = load i8, ptr %type_name_length, align 1, !tbaa !39
  %conv4 = zext i8 %16 to i32
  %add5 = add nsw i32 %conv4, 1
  %conv6 = sext i32 %add5 to i64
  %17 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %output_file_offset7 = getelementptr inbounds %struct._internal_exr_context, ptr %17, i32 0, i32 30
  %call8 = call i32 %11(ptr noundef %12, ptr noundef %14, i64 noundef %conv6, ptr noundef %output_file_offset7)
  store i32 %call8, ptr %rv, align 4, !tbaa !8
  %18 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp9 = icmp ne i32 %18, 0
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  %19 = load i32, ptr %rv, align 4, !tbaa !8
  store i32 %19, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %20 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.exr_attribute_t, ptr %20, i32 0, i32 5
  %21 = load i32, ptr %type, align 4, !tbaa !40
  switch i32 %21, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 3, label %sw.bb16
    i32 4, label %sw.bb18
    i32 5, label %sw.bb20
    i32 6, label %sw.bb22
    i32 7, label %sw.bb24
    i32 8, label %sw.bb26
    i32 9, label %sw.bb28
    i32 10, label %sw.bb30
    i32 11, label %sw.bb32
    i32 12, label %sw.bb34
    i32 13, label %sw.bb36
    i32 14, label %sw.bb38
    i32 15, label %sw.bb40
    i32 16, label %sw.bb42
    i32 17, label %sw.bb44
    i32 18, label %sw.bb46
    i32 19, label %sw.bb48
    i32 20, label %sw.bb50
    i32 21, label %sw.bb52
    i32 22, label %sw.bb54
    i32 23, label %sw.bb56
    i32 24, label %sw.bb58
    i32 25, label %sw.bb60
    i32 26, label %sw.bb62
    i32 27, label %sw.bb64
    i32 28, label %sw.bb66
    i32 29, label %sw.bb68
    i32 0, label %sw.bb70
    i32 30, label %sw.bb70
  ]

sw.bb:                                            ; preds = %if.end12
  %22 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call13 = call i32 @save_box2i(ptr noundef %22, ptr noundef %23)
  store i32 %call13, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end12
  %24 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call15 = call i32 @save_box2f(ptr noundef %24, ptr noundef %25)
  store i32 %call15, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end12
  %26 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call17 = call i32 @save_chlist(ptr noundef %26, ptr noundef %27)
  store i32 %call17, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end12
  %28 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call19 = call i32 @save_chromaticities(ptr noundef %28, ptr noundef %29)
  store i32 %call19, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end12
  %30 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call21 = call i32 @save_attr_uint8(ptr noundef %30, ptr noundef %31)
  store i32 %call21, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end12
  %32 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %33 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call23 = call i32 @save_attr_double(ptr noundef %32, ptr noundef %33)
  store i32 %call23, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end12
  %34 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %35 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call25 = call i32 @save_attr_uint8(ptr noundef %34, ptr noundef %35)
  store i32 %call25, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end12
  %36 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %37 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call27 = call i32 @save_attr_float(ptr noundef %36, ptr noundef %37)
  store i32 %call27, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end12
  %38 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %39 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call29 = call i32 @save_float_vector(ptr noundef %38, ptr noundef %39)
  store i32 %call29, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end12
  %40 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %41 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call31 = call i32 @save_attr_int(ptr noundef %40, ptr noundef %41)
  store i32 %call31, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end12
  %42 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %43 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call33 = call i32 @save_keycode(ptr noundef %42, ptr noundef %43)
  store i32 %call33, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end12
  %44 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %45 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call35 = call i32 @save_attr_uint8(ptr noundef %44, ptr noundef %45)
  store i32 %call35, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end12
  %46 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %47 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call37 = call i32 @save_m33f(ptr noundef %46, ptr noundef %47)
  store i32 %call37, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end12
  %48 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %49 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call39 = call i32 @save_m33d(ptr noundef %48, ptr noundef %49)
  store i32 %call39, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end12
  %50 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %51 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call41 = call i32 @save_m44f(ptr noundef %50, ptr noundef %51)
  store i32 %call41, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end12
  %52 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %53 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call43 = call i32 @save_m44d(ptr noundef %52, ptr noundef %53)
  store i32 %call43, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end12
  %54 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %55 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call45 = call i32 @save_preview(ptr noundef %54, ptr noundef %55)
  store i32 %call45, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end12
  %56 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %57 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call47 = call i32 @save_rational(ptr noundef %56, ptr noundef %57)
  store i32 %call47, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end12
  %58 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %59 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call49 = call i32 @save_string(ptr noundef %58, ptr noundef %59)
  store i32 %call49, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end12
  %60 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %61 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call51 = call i32 @save_string_vector(ptr noundef %60, ptr noundef %61)
  store i32 %call51, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end12
  %62 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %63 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call53 = call i32 @save_tiledesc(ptr noundef %62, ptr noundef %63)
  store i32 %call53, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end12
  %64 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %65 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call55 = call i32 @save_timecode(ptr noundef %64, ptr noundef %65)
  store i32 %call55, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end12
  %66 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %67 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call57 = call i32 @save_v2i(ptr noundef %66, ptr noundef %67)
  store i32 %call57, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end12
  %68 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %69 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call59 = call i32 @save_v2f(ptr noundef %68, ptr noundef %69)
  store i32 %call59, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end12
  %70 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %71 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call61 = call i32 @save_v2d(ptr noundef %70, ptr noundef %71)
  store i32 %call61, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end12
  %72 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %73 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call63 = call i32 @save_v3i(ptr noundef %72, ptr noundef %73)
  store i32 %call63, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end12
  %74 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %75 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call65 = call i32 @save_v3f(ptr noundef %74, ptr noundef %75)
  store i32 %call65, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end12
  %76 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %77 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call67 = call i32 @save_v3d(ptr noundef %76, ptr noundef %77)
  store i32 %call67, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end12
  %78 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %79 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call69 = call i32 @save_opaque(ptr noundef %78, ptr noundef %79)
  store i32 %call69, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end12, %if.end12
  br label %sw.default

sw.default:                                       ; preds = %if.end12, %sw.bb70
  %80 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %standard_error = getelementptr inbounds %struct._internal_exr_context, ptr %80, i32 0, i32 12
  %81 = load ptr, ptr %standard_error, align 8, !tbaa !41
  %82 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call71 = call i32 %81(ptr noundef %82, i32 noundef 14)
  store i32 %call71, ptr %rv, align 4, !tbaa !8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb68, %sw.bb66, %sw.bb64, %sw.bb62, %sw.bb60, %sw.bb58, %sw.bb56, %sw.bb54, %sw.bb52, %sw.bb50, %sw.bb48, %sw.bb46, %sw.bb44, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb
  %83 = load i32, ptr %rv, align 4, !tbaa !8
  store i32 %83, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  %84 = load i32, ptr %retval, align 4
  ret i32 %84
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_box2i(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca %struct.exr_attr_box2i_t, align 1
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %tmp, ptr align 1 %2, i64 16, i1 false), !tbaa.struct !42
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef 16)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call1 = call i32 @save_attr_32(ptr noundef %5, ptr noundef %tmp, i32 noundef 4)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_box2f(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca %struct.exr_attr_box2f_t, align 1
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %tmp, ptr align 1 %2, i64 16, i1 false), !tbaa.struct !43
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef 16)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call1 = call i32 @save_attr_32(ptr noundef %5, ptr noundef %tmp, i32 noundef 4)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_chlist(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %attrsz = alloca i64, align 8
  %ptype = alloca i32, align 4
  %eol = alloca i8, align 1
  %flags = alloca [4 x i8], align 1
  %samps = alloca [2 x i32], align 4
  %c = alloca i32, align 4
  %centry = alloca ptr, align 8
  %c4 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %centry13 = alloca ptr, align 8
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %attrsz) #6
  store i64 0, ptr %attrsz, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptype) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr %eol) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %samps) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #6
  store i32 0, ptr %c, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %c, align 4, !tbaa !8
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %2 = getelementptr inbounds %struct.exr_attribute_t, ptr %1, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %num_channels = getelementptr inbounds %struct.exr_attr_chlist_t, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %num_channels, align 8, !tbaa !46
  %cmp = icmp slt i32 %0, %4
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %centry) #6
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %6 = getelementptr inbounds %struct.exr_attribute_t, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %entries = getelementptr inbounds %struct.exr_attr_chlist_t, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %entries, align 8, !tbaa !47
  %9 = load i32, ptr %c, align 4, !tbaa !8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %8, i64 %idx.ext
  store ptr %add.ptr, ptr %centry, align 8, !tbaa !4
  %10 = load ptr, ptr %centry, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %10, i32 0, i32 0
  %length = getelementptr inbounds %struct.exr_attr_string_t, ptr %name, i32 0, i32 0
  %11 = load i32, ptr %length, align 8, !tbaa !48
  %add = add nsw i32 %11, 1
  %conv = sext i32 %add to i64
  %12 = load i64, ptr %attrsz, align 8, !tbaa !45
  %add1 = add i64 %12, %conv
  store i64 %add1, ptr %attrsz, align 8, !tbaa !45
  %13 = load i64, ptr %attrsz, align 8, !tbaa !45
  %add2 = add i64 %13, 16
  store i64 %add2, ptr %attrsz, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 8, ptr %centry) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %c, align 4, !tbaa !8
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %c, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !50

for.end:                                          ; preds = %for.cond.cleanup
  %15 = load i64, ptr %attrsz, align 8, !tbaa !45
  %add3 = add i64 %15, 1
  store i64 %add3, ptr %attrsz, align 8, !tbaa !45
  %16 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %17 = load i64, ptr %attrsz, align 8, !tbaa !45
  %call = call i32 @save_attr_sz(ptr noundef %16, i64 noundef %17)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %c4) #6
  store i32 0, ptr %c4, align 4, !tbaa !8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc49, %for.end
  %18 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp6 = icmp eq i32 %18, 0
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond5
  %19 = load i32, ptr %c4, align 4, !tbaa !8
  %20 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %21 = getelementptr inbounds %struct.exr_attribute_t, ptr %20, i32 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %num_channels8 = getelementptr inbounds %struct.exr_attr_chlist_t, ptr %22, i32 0, i32 0
  %23 = load i32, ptr %num_channels8, align 8, !tbaa !46
  %cmp9 = icmp slt i32 %19, %23
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond5
  %24 = phi i1 [ false, %for.cond5 ], [ %cmp9, %land.rhs ]
  br i1 %24, label %for.body12, label %for.cond.cleanup11

for.cond.cleanup11:                               ; preds = %land.end
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup51

for.body12:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %centry13) #6
  %25 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %26 = getelementptr inbounds %struct.exr_attribute_t, ptr %25, i32 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %entries14 = getelementptr inbounds %struct.exr_attr_chlist_t, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %entries14, align 8, !tbaa !47
  %29 = load i32, ptr %c4, align 4, !tbaa !8
  %idx.ext15 = sext i32 %29 to i64
  %add.ptr16 = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %28, i64 %idx.ext15
  store ptr %add.ptr16, ptr %centry13, align 8, !tbaa !4
  %30 = load ptr, ptr %centry13, align 8, !tbaa !4
  %pixel_type = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %pixel_type, align 8, !tbaa !51
  store i32 %31, ptr %ptype, align 4, !tbaa !8
  %32 = load ptr, ptr %centry13, align 8, !tbaa !4
  %x_sampling = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %32, i32 0, i32 4
  %33 = load i32, ptr %x_sampling, align 8, !tbaa !52
  %arrayidx = getelementptr inbounds [2 x i32], ptr %samps, i64 0, i64 0
  store i32 %33, ptr %arrayidx, align 4, !tbaa !8
  %34 = load ptr, ptr %centry13, align 8, !tbaa !4
  %y_sampling = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %34, i32 0, i32 5
  %35 = load i32, ptr %y_sampling, align 4, !tbaa !53
  %arrayidx17 = getelementptr inbounds [2 x i32], ptr %samps, i64 0, i64 1
  store i32 %35, ptr %arrayidx17, align 4, !tbaa !8
  %36 = load ptr, ptr %centry13, align 8, !tbaa !4
  %p_linear = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %36, i32 0, i32 2
  %37 = load i8, ptr %p_linear, align 4, !tbaa !54
  %arrayidx18 = getelementptr inbounds [4 x i8], ptr %flags, i64 0, i64 0
  store i8 %37, ptr %arrayidx18, align 1, !tbaa !35
  %arrayidx19 = getelementptr inbounds [4 x i8], ptr %flags, i64 0, i64 3
  store i8 0, ptr %arrayidx19, align 1, !tbaa !35
  %arrayidx20 = getelementptr inbounds [4 x i8], ptr %flags, i64 0, i64 2
  store i8 0, ptr %arrayidx20, align 1, !tbaa !35
  %arrayidx21 = getelementptr inbounds [4 x i8], ptr %flags, i64 0, i64 1
  store i8 0, ptr %arrayidx21, align 1, !tbaa !35
  call void @priv_from_native32(ptr noundef %ptype, i32 noundef 1)
  %arraydecay = getelementptr inbounds [2 x i32], ptr %samps, i64 0, i64 0
  call void @priv_from_native32(ptr noundef %arraydecay, i32 noundef 2)
  %38 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %do_write = getelementptr inbounds %struct._internal_exr_context, ptr %38, i32 0, i32 11
  %39 = load ptr, ptr %do_write, align 8, !tbaa !23
  %40 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %41 = load ptr, ptr %centry13, align 8, !tbaa !4
  %name22 = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %41, i32 0, i32 0
  %str = getelementptr inbounds %struct.exr_attr_string_t, ptr %name22, i32 0, i32 2
  %42 = load ptr, ptr %str, align 8, !tbaa !55
  %43 = load ptr, ptr %centry13, align 8, !tbaa !4
  %name23 = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %43, i32 0, i32 0
  %length24 = getelementptr inbounds %struct.exr_attr_string_t, ptr %name23, i32 0, i32 0
  %44 = load i32, ptr %length24, align 8, !tbaa !48
  %add25 = add nsw i32 %44, 1
  %conv26 = sext i32 %add25 to i64
  %45 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %output_file_offset = getelementptr inbounds %struct._internal_exr_context, ptr %45, i32 0, i32 30
  %call27 = call i32 %39(ptr noundef %40, ptr noundef %42, i64 noundef %conv26, ptr noundef %output_file_offset)
  store i32 %call27, ptr %rv, align 4, !tbaa !8
  %46 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp28 = icmp ne i32 %46, 0
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %for.body12
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body12
  %47 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %do_write30 = getelementptr inbounds %struct._internal_exr_context, ptr %47, i32 0, i32 11
  %48 = load ptr, ptr %do_write30, align 8, !tbaa !23
  %49 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %50 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %output_file_offset31 = getelementptr inbounds %struct._internal_exr_context, ptr %50, i32 0, i32 30
  %call32 = call i32 %48(ptr noundef %49, ptr noundef %ptype, i64 noundef 4, ptr noundef %output_file_offset31)
  store i32 %call32, ptr %rv, align 4, !tbaa !8
  %51 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp33 = icmp ne i32 %51, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end
  %52 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %do_write37 = getelementptr inbounds %struct._internal_exr_context, ptr %52, i32 0, i32 11
  %53 = load ptr, ptr %do_write37, align 8, !tbaa !23
  %54 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %arraydecay38 = getelementptr inbounds [4 x i8], ptr %flags, i64 0, i64 0
  %55 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %output_file_offset39 = getelementptr inbounds %struct._internal_exr_context, ptr %55, i32 0, i32 30
  %call40 = call i32 %53(ptr noundef %54, ptr noundef %arraydecay38, i64 noundef 4, ptr noundef %output_file_offset39)
  store i32 %call40, ptr %rv, align 4, !tbaa !8
  %56 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp41 = icmp ne i32 %56, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end36
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  %57 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %do_write45 = getelementptr inbounds %struct._internal_exr_context, ptr %57, i32 0, i32 11
  %58 = load ptr, ptr %do_write45, align 8, !tbaa !23
  %59 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %arraydecay46 = getelementptr inbounds [2 x i32], ptr %samps, i64 0, i64 0
  %60 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %output_file_offset47 = getelementptr inbounds %struct._internal_exr_context, ptr %60, i32 0, i32 30
  %call48 = call i32 %58(ptr noundef %59, ptr noundef %arraydecay46, i64 noundef 8, ptr noundef %output_file_offset47)
  store i32 %call48, ptr %rv, align 4, !tbaa !8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then43, %if.then35, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %centry13) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup51 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc49

for.inc49:                                        ; preds = %cleanup.cont
  %61 = load i32, ptr %c4, align 4, !tbaa !8
  %inc50 = add nsw i32 %61, 1
  store i32 %inc50, ptr %c4, align 4, !tbaa !8
  br label %for.cond5, !llvm.loop !56

cleanup51:                                        ; preds = %cleanup, %for.cond.cleanup11
  call void @llvm.lifetime.end.p0(i64 4, ptr %c4) #6
  br label %for.end52

for.end52:                                        ; preds = %cleanup51
  %62 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp53 = icmp eq i32 %62, 0
  br i1 %cmp53, label %if.then55, label %if.end59

if.then55:                                        ; preds = %for.end52
  store i8 0, ptr %eol, align 1, !tbaa !35
  %63 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %do_write56 = getelementptr inbounds %struct._internal_exr_context, ptr %63, i32 0, i32 11
  %64 = load ptr, ptr %do_write56, align 8, !tbaa !23
  %65 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %66 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %output_file_offset57 = getelementptr inbounds %struct._internal_exr_context, ptr %66, i32 0, i32 30
  %call58 = call i32 %64(ptr noundef %65, ptr noundef %eol, i64 noundef 1, ptr noundef %output_file_offset57)
  store i32 %call58, ptr %rv, align 4, !tbaa !8
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %for.end52
  %67 = load i32, ptr %rv, align 4, !tbaa !8
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %samps) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %eol) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptype) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %attrsz) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal i32 @save_chromaticities(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca %struct.exr_attr_chromaticities_t, align 1
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %tmp, ptr align 1 %2, i64 32, i1 false), !tbaa.struct !57
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef 32)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call1 = call i32 @save_attr_32(ptr noundef %5, ptr noundef %tmp, i32 noundef 8)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 32, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_attr_uint8(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  %0 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %0, i64 noundef 1)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %1 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %do_write = getelementptr inbounds %struct._internal_exr_context, ptr %2, i32 0, i32 11
  %3 = load ptr, ptr %do_write, align 8, !tbaa !23
  %4 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %6 = getelementptr inbounds %struct.exr_attribute_t, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %output_file_offset = getelementptr inbounds %struct._internal_exr_context, ptr %7, i32 0, i32 30
  %call1 = call i32 %3(ptr noundef %4, ptr noundef %6, i64 noundef 1, ptr noundef %output_file_offset)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @save_attr_double(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca double, align 8
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load double, ptr %1, align 8, !tbaa !35
  store double %2, ptr %tmp, align 8, !tbaa !58
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef 8)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call1 = call i32 @save_attr_64(ptr noundef %5, ptr noundef %tmp, i32 noundef 1)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_attr_float(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca float, align 4
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load float, ptr %1, align 8, !tbaa !35
  store float %2, ptr %tmp, align 4, !tbaa !44
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef 4)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call1 = call i32 @save_attr_32(ptr noundef %5, ptr noundef %tmp, i32 noundef 1)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_float_vector(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %retval = alloca i32, align 4
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  %0 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %2 = getelementptr inbounds %struct.exr_attribute_t, ptr %1, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %length = getelementptr inbounds %struct.exr_attr_float_vector_t, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %length, align 8, !tbaa !46
  %conv = sext i32 %4 to i64
  %mul = mul i64 4, %conv
  %call = call i32 @save_attr_sz(ptr noundef %0, i64 noundef %mul)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %5 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %7 = getelementptr inbounds %struct.exr_attribute_t, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %length2 = getelementptr inbounds %struct.exr_attr_float_vector_t, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %length2, align 8, !tbaa !46
  %cmp3 = icmp sgt i32 %9, 0
  br i1 %cmp3, label %if.then, label %if.end27

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %11 = getelementptr inbounds %struct.exr_attribute_t, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %alloc_size = getelementptr inbounds %struct.exr_attr_float_vector_t, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %alloc_size, align 4, !tbaa !60
  %cmp5 = icmp sgt i32 %13, 0
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %14 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %16 = getelementptr inbounds %struct.exr_attribute_t, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %arr = getelementptr inbounds %struct.exr_attr_float_vector_t, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %arr, align 8, !tbaa !47
  %19 = ptrtoint ptr %18 to i64
  %20 = inttoptr i64 %19 to ptr
  %21 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %22 = getelementptr inbounds %struct.exr_attribute_t, ptr %21, i32 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %length8 = getelementptr inbounds %struct.exr_attr_float_vector_t, ptr %23, i32 0, i32 0
  %24 = load i32, ptr %length8, align 8, !tbaa !46
  %call9 = call i32 @save_attr_32(ptr noundef %14, ptr noundef %20, i32 noundef %24)
  store i32 %call9, ptr %rv, align 4, !tbaa !8
  %25 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %26 = getelementptr inbounds %struct.exr_attribute_t, ptr %25, i32 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %arr10 = getelementptr inbounds %struct.exr_attr_float_vector_t, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %arr10, align 8, !tbaa !47
  %29 = ptrtoint ptr %28 to i64
  %30 = inttoptr i64 %29 to ptr
  %31 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %32 = getelementptr inbounds %struct.exr_attribute_t, ptr %31, i32 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %length11 = getelementptr inbounds %struct.exr_attr_float_vector_t, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %length11, align 8, !tbaa !46
  call void @priv_to_native32(ptr noundef %30, i32 noundef %34)
  br label %if.end26

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #6
  %35 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %alloc_fn = getelementptr inbounds %struct._internal_exr_context, ptr %35, i32 0, i32 16
  %36 = load ptr, ptr %alloc_fn, align 8, !tbaa !61
  %37 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %38 = getelementptr inbounds %struct.exr_attribute_t, ptr %37, i32 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %length12 = getelementptr inbounds %struct.exr_attr_float_vector_t, ptr %39, i32 0, i32 0
  %40 = load i32, ptr %length12, align 8, !tbaa !46
  %conv13 = sext i32 %40 to i64
  %mul14 = mul i64 %conv13, 4
  %call15 = call ptr %36(i64 noundef %mul14)
  store ptr %call15, ptr %tmp, align 8, !tbaa !4
  %41 = load ptr, ptr %tmp, align 8, !tbaa !4
  %cmp16 = icmp eq ptr %41, null
  br i1 %cmp16, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.else
  %42 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %standard_error = getelementptr inbounds %struct._internal_exr_context, ptr %42, i32 0, i32 12
  %43 = load ptr, ptr %standard_error, align 8, !tbaa !41
  %44 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call19 = call i32 %43(ptr noundef %44, i32 noundef 1)
  store i32 %call19, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else
  %45 = load ptr, ptr %tmp, align 8, !tbaa !4
  %46 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %47 = getelementptr inbounds %struct.exr_attribute_t, ptr %46, i32 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  %arr20 = getelementptr inbounds %struct.exr_attr_float_vector_t, ptr %48, i32 0, i32 2
  %49 = load ptr, ptr %arr20, align 8, !tbaa !47
  %50 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %51 = getelementptr inbounds %struct.exr_attribute_t, ptr %50, i32 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !35
  %length21 = getelementptr inbounds %struct.exr_attr_float_vector_t, ptr %52, i32 0, i32 0
  %53 = load i32, ptr %length21, align 8, !tbaa !46
  %conv22 = sext i32 %53 to i64
  %mul23 = mul i64 %conv22, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %45, ptr align 4 %49, i64 %mul23, i1 false)
  %54 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %55 = load ptr, ptr %tmp, align 8, !tbaa !4
  %56 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %57 = getelementptr inbounds %struct.exr_attribute_t, ptr %56, i32 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  %length24 = getelementptr inbounds %struct.exr_attr_float_vector_t, ptr %58, i32 0, i32 0
  %59 = load i32, ptr %length24, align 8, !tbaa !46
  %call25 = call i32 @save_attr_32(ptr noundef %54, ptr noundef %55, i32 noundef %59)
  store i32 %call25, ptr %rv, align 4, !tbaa !8
  %60 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %free_fn = getelementptr inbounds %struct._internal_exr_context, ptr %60, i32 0, i32 17
  %61 = load ptr, ptr %free_fn, align 8, !tbaa !62
  %62 = load ptr, ptr %tmp, align 8, !tbaa !4
  call void %61(ptr noundef %62)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then18
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup28 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end26

if.end26:                                         ; preds = %cleanup.cont, %if.then7
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %land.lhs.true, %entry
  %63 = load i32, ptr %rv, align 4, !tbaa !8
  store i32 %63, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup28

cleanup28:                                        ; preds = %if.end27, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  %64 = load i32, ptr %retval, align 4
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal i32 @save_attr_int(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load i32, ptr %1, align 8, !tbaa !35
  store i32 %2, ptr %tmp, align 4, !tbaa !8
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef 4)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call1 = call i32 @save_attr_32(ptr noundef %5, ptr noundef %tmp, i32 noundef 1)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_keycode(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca %struct.exr_attr_keycode_t, align 1
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %tmp, ptr align 1 %2, i64 28, i1 false), !tbaa.struct !63
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef 28)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call1 = call i32 @save_attr_32(ptr noundef %5, ptr noundef %tmp, i32 noundef 7)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 28, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_m33f(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca %struct.exr_attr_m33f_t, align 1
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %tmp, ptr align 1 %2, i64 36, i1 false), !tbaa.struct !64
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef 36)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call1 = call i32 @save_attr_32(ptr noundef %5, ptr noundef %tmp, i32 noundef 9)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 36, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_m33d(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca %struct.exr_attr_m33d_t, align 1
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 72, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %tmp, ptr align 1 %2, i64 72, i1 false), !tbaa.struct !65
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef 72)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call1 = call i32 @save_attr_64(ptr noundef %5, ptr noundef %tmp, i32 noundef 9)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 72, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_m44f(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca %struct.exr_attr_m44f_t, align 1
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %tmp, ptr align 1 %2, i64 64, i1 false), !tbaa.struct !66
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef 64)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call1 = call i32 @save_attr_32(ptr noundef %5, ptr noundef %tmp, i32 noundef 16)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 64, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_m44d(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca %struct.exr_attr_m44d_t, align 1
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 128, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %tmp, ptr align 1 %2, i64 128, i1 false), !tbaa.struct !67
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef 128)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call1 = call i32 @save_attr_64(ptr noundef %5, ptr noundef %tmp, i32 noundef 16)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 128, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_preview(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %sizes = alloca [2 x i32], align 4
  %prevsize = alloca i64, align 8
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sizes) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %prevsize) #6
  store i64 0, ptr %prevsize, align 8, !tbaa !45
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  %width = getelementptr inbounds %struct.exr_attr_preview_t, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %width, align 8, !tbaa !68
  %arrayidx = getelementptr inbounds [2 x i32], ptr %sizes, i64 0, i64 0
  store i32 %3, ptr %arrayidx, align 4, !tbaa !8
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = getelementptr inbounds %struct.exr_attribute_t, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %height = getelementptr inbounds %struct.exr_attr_preview_t, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %height, align 4, !tbaa !70
  %arrayidx1 = getelementptr inbounds [2 x i32], ptr %sizes, i64 0, i64 1
  store i32 %7, ptr %arrayidx1, align 4, !tbaa !8
  %arrayidx2 = getelementptr inbounds [2 x i32], ptr %sizes, i64 0, i64 0
  %8 = load i32, ptr %arrayidx2, align 4, !tbaa !8
  %mul = mul i32 4, %8
  %arrayidx3 = getelementptr inbounds [2 x i32], ptr %sizes, i64 0, i64 1
  %9 = load i32, ptr %arrayidx3, align 4, !tbaa !8
  %mul4 = mul i32 %mul, %9
  %conv = zext i32 %mul4 to i64
  store i64 %conv, ptr %prevsize, align 8, !tbaa !45
  %10 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %11 = load i64, ptr %prevsize, align 8, !tbaa !45
  %add = add i64 8, %11
  %call = call i32 @save_attr_sz(ptr noundef %10, i64 noundef %add)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %12 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [2 x i32], ptr %sizes, i64 0, i64 0
  %call6 = call i32 @save_attr_32(ptr noundef %13, ptr noundef %arraydecay, i32 noundef 2)
  store i32 %call6, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp7 = icmp eq i32 %14, 0
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %15 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %do_write = getelementptr inbounds %struct._internal_exr_context, ptr %15, i32 0, i32 11
  %16 = load ptr, ptr %do_write, align 8, !tbaa !23
  %17 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %19 = getelementptr inbounds %struct.exr_attribute_t, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %rgba = getelementptr inbounds %struct.exr_attr_preview_t, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %rgba, align 8, !tbaa !71
  %22 = load i64, ptr %prevsize, align 8, !tbaa !45
  %23 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %output_file_offset = getelementptr inbounds %struct._internal_exr_context, ptr %23, i32 0, i32 30
  %call10 = call i32 %16(ptr noundef %17, ptr noundef %21, i64 noundef %22, ptr noundef %output_file_offset)
  store i32 %call10, ptr %rv, align 4, !tbaa !8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  %24 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %prevsize) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %sizes) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @save_rational(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca %struct.exr_attr_rational_t, align 1
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %tmp, ptr align 1 %2, i64 8, i1 false), !tbaa.struct !72
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef 8)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call1 = call i32 @save_attr_32(ptr noundef %5, ptr noundef %tmp, i32 noundef 2)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_string(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  store ptr %2, ptr %tmp, align 8, !tbaa !4
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %tmp, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.exr_attr_string_t, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %length, align 8, !tbaa !46
  %conv = sext i32 %5 to i64
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef %conv)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %do_write = getelementptr inbounds %struct._internal_exr_context, ptr %7, i32 0, i32 11
  %8 = load ptr, ptr %do_write, align 8, !tbaa !23
  %9 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %tmp, align 8, !tbaa !4
  %str = getelementptr inbounds %struct.exr_attr_string_t, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %str, align 8, !tbaa !47
  %12 = load ptr, ptr %tmp, align 8, !tbaa !4
  %length2 = getelementptr inbounds %struct.exr_attr_string_t, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %length2, align 8, !tbaa !46
  %conv3 = sext i32 %13 to i64
  %14 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %output_file_offset = getelementptr inbounds %struct._internal_exr_context, ptr %14, i32 0, i32 30
  %call4 = call i32 %8(ptr noundef %9, ptr noundef %11, i64 noundef %conv3, ptr noundef %output_file_offset)
  store i32 %call4, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @save_string_vector(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %attrsz = alloca i64, align 8
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %attrsz) #6
  store i64 0, ptr %attrsz, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %2 = getelementptr inbounds %struct.exr_attribute_t, ptr %1, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %n_strings = getelementptr inbounds %struct.exr_attr_string_vector_t, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %n_strings, align 8, !tbaa !46
  %cmp = icmp slt i32 %0, %4
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, ptr %attrsz, align 8, !tbaa !45
  %add = add i64 %5, 4
  store i64 %add, ptr %attrsz, align 8, !tbaa !45
  %6 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %7 = getelementptr inbounds %struct.exr_attribute_t, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %strings = getelementptr inbounds %struct.exr_attr_string_vector_t, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %strings, align 8, !tbaa !47
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.exr_attr_string_t, ptr %9, i64 %idxprom
  %length = getelementptr inbounds %struct.exr_attr_string_t, ptr %arrayidx, i32 0, i32 0
  %11 = load i32, ptr %length, align 8, !tbaa !46
  %conv = sext i32 %11 to i64
  %12 = load i64, ptr %attrsz, align 8, !tbaa !45
  %add1 = add i64 %12, %conv
  store i64 %add1, ptr %attrsz, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !73

for.end:                                          ; preds = %for.cond.cleanup
  %14 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %15 = load i64, ptr %attrsz, align 8, !tbaa !45
  %call = call i32 @save_attr_sz(ptr noundef %14, i64 noundef %15)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #6
  store i32 0, ptr %i2, align 4, !tbaa !8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc20, %for.end
  %16 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp4 = icmp eq i32 %16, 0
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond3
  %17 = load i32, ptr %i2, align 4, !tbaa !8
  %18 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %19 = getelementptr inbounds %struct.exr_attribute_t, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %n_strings6 = getelementptr inbounds %struct.exr_attr_string_vector_t, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %n_strings6, align 8, !tbaa !46
  %cmp7 = icmp slt i32 %17, %21
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond3
  %22 = phi i1 [ false, %for.cond3 ], [ %cmp7, %land.rhs ]
  br i1 %22, label %for.body10, label %for.cond.cleanup9

for.cond.cleanup9:                                ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #6
  br label %for.end22

for.body10:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6
  %23 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %24 = getelementptr inbounds %struct.exr_attribute_t, ptr %23, i32 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %strings11 = getelementptr inbounds %struct.exr_attr_string_vector_t, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %strings11, align 8, !tbaa !47
  %27 = load i32, ptr %i2, align 4, !tbaa !8
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds %struct.exr_attr_string_t, ptr %26, i64 %idx.ext
  store ptr %add.ptr, ptr %s, align 8, !tbaa !4
  %28 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %s, align 8, !tbaa !4
  %length12 = getelementptr inbounds %struct.exr_attr_string_t, ptr %29, i32 0, i32 0
  %30 = load i32, ptr %length12, align 8, !tbaa !46
  %conv13 = sext i32 %30 to i64
  %call14 = call i32 @save_attr_sz(ptr noundef %28, i64 noundef %conv13)
  store i32 %call14, ptr %rv, align 4, !tbaa !8
  %31 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp15 = icmp eq i32 %31, 0
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body10
  %32 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %do_write = getelementptr inbounds %struct._internal_exr_context, ptr %32, i32 0, i32 11
  %33 = load ptr, ptr %do_write, align 8, !tbaa !23
  %34 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %35 = load ptr, ptr %s, align 8, !tbaa !4
  %str = getelementptr inbounds %struct.exr_attr_string_t, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %str, align 8, !tbaa !47
  %37 = load ptr, ptr %s, align 8, !tbaa !4
  %length17 = getelementptr inbounds %struct.exr_attr_string_t, ptr %37, i32 0, i32 0
  %38 = load i32, ptr %length17, align 8, !tbaa !46
  %conv18 = sext i32 %38 to i64
  %39 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %output_file_offset = getelementptr inbounds %struct._internal_exr_context, ptr %39, i32 0, i32 30
  %call19 = call i32 %33(ptr noundef %34, ptr noundef %36, i64 noundef %conv18, ptr noundef %output_file_offset)
  store i32 %call19, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body10
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6
  br label %for.inc20

for.inc20:                                        ; preds = %if.end
  %40 = load i32, ptr %i2, align 4, !tbaa !8
  %inc21 = add nsw i32 %40, 1
  store i32 %inc21, ptr %i2, align 4, !tbaa !8
  br label %for.cond3, !llvm.loop !74

for.end22:                                        ; preds = %for.cond.cleanup9
  %41 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %attrsz) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @save_tiledesc(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %sizes = alloca [2 x i32], align 4
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %sizes) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  %x_size = getelementptr inbounds %struct.exr_attr_tiledesc_t, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %x_size, align 1, !tbaa !75
  %arrayidx = getelementptr inbounds [2 x i32], ptr %sizes, i64 0, i64 0
  store i32 %3, ptr %arrayidx, align 4, !tbaa !8
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = getelementptr inbounds %struct.exr_attribute_t, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %y_size = getelementptr inbounds %struct.exr_attr_tiledesc_t, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %y_size, align 1, !tbaa !77
  %arrayidx1 = getelementptr inbounds [2 x i32], ptr %sizes, i64 0, i64 1
  store i32 %7, ptr %arrayidx1, align 4, !tbaa !8
  %8 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %8, i64 noundef 9)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %9 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [2 x i32], ptr %sizes, i64 0, i64 0
  %call2 = call i32 @save_attr_32(ptr noundef %10, ptr noundef %arraydecay, i32 noundef 2)
  store i32 %call2, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp3 = icmp eq i32 %11, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %12 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %do_write = getelementptr inbounds %struct._internal_exr_context, ptr %12, i32 0, i32 11
  %13 = load ptr, ptr %do_write, align 8, !tbaa !23
  %14 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %16 = getelementptr inbounds %struct.exr_attribute_t, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %level_and_round = getelementptr inbounds %struct.exr_attr_tiledesc_t, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %output_file_offset = getelementptr inbounds %struct._internal_exr_context, ptr %18, i32 0, i32 30
  %call5 = call i32 %13(ptr noundef %14, ptr noundef %level_and_round, i64 noundef 1, ptr noundef %output_file_offset)
  store i32 %call5, ptr %rv, align 4, !tbaa !8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %19 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %sizes) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @save_timecode(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca %struct.exr_attr_timecode_t, align 1
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %tmp, ptr align 1 %2, i64 8, i1 false), !tbaa.struct !72
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef 8)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call1 = call i32 @save_attr_32(ptr noundef %5, ptr noundef %tmp, i32 noundef 2)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_v2i(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca %struct.exr_attr_v2i_t, align 1
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %tmp, ptr align 1 %2, i64 8, i1 false), !tbaa.struct !78
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef 8)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call1 = call i32 @save_attr_32(ptr noundef %5, ptr noundef %tmp, i32 noundef 2)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_v2f(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca %struct.exr_attr_v2f_t, align 1
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %tmp, ptr align 1 %2, i64 8, i1 false), !tbaa.struct !79
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef 8)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call1 = call i32 @save_attr_32(ptr noundef %5, ptr noundef %tmp, i32 noundef 2)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_v2d(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca %struct.exr_attr_v2d_t, align 1
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %tmp, ptr align 1 %2, i64 16, i1 false), !tbaa.struct !80
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef 16)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call1 = call i32 @save_attr_64(ptr noundef %5, ptr noundef %tmp, i32 noundef 2)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_v3i(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca %struct.exr_attr_v3i_t, align 1
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %tmp, ptr align 1 %2, i64 12, i1 false), !tbaa.struct !81
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef 12)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call1 = call i32 @save_attr_32(ptr noundef %5, ptr noundef %tmp, i32 noundef 3)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 12, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_v3f(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca %struct.exr_attr_v3f_t, align 1
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %tmp, ptr align 1 %2, i64 12, i1 false), !tbaa.struct !82
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef 12)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call1 = call i32 @save_attr_32(ptr noundef %5, ptr noundef %tmp, i32 noundef 3)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 12, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_v3d(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %tmp = alloca %struct.exr_attr_v3d_t, align 1
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = getelementptr inbounds %struct.exr_attribute_t, ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %tmp, ptr align 1 %2, i64 24, i1 false), !tbaa.struct !83
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 @save_attr_sz(ptr noundef %3, i64 noundef 24)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call1 = call i32 @save_attr_64(ptr noundef %5, ptr noundef %tmp, i32 noundef 3)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rv, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @save_opaque(ptr noundef %ctxt, ptr noundef %a) #0 {
entry:
  %retval = alloca i32, align 4
  %ctxt.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %sz = alloca i32, align 4
  %pdata = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #6
  store i32 0, ptr %sz, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdata) #6
  store ptr null, ptr %pdata, align 8, !tbaa !4
  %0 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %2 = getelementptr inbounds %struct.exr_attribute_t, ptr %1, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %call = call i32 @exr_attr_opaquedata_pack(ptr noundef %0, ptr noundef %3, ptr noundef %sz, ptr noundef %pdata)
  store i32 %call, ptr %rv, align 4, !tbaa !8
  %4 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %rv, align 4, !tbaa !8
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %7 = load i32, ptr %sz, align 4, !tbaa !8
  %conv = sext i32 %7 to i64
  %call1 = call i32 @save_attr_sz(ptr noundef %6, i64 noundef %conv)
  store i32 %call1, ptr %rv, align 4, !tbaa !8
  %8 = load i32, ptr %rv, align 4, !tbaa !8
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, ptr %sz, align 4, !tbaa !8
  %cmp4 = icmp sgt i32 %9, 0
  br i1 %cmp4, label %if.then6, label %if.end9

if.then6:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %do_write = getelementptr inbounds %struct._internal_exr_context, ptr %10, i32 0, i32 11
  %11 = load ptr, ptr %do_write, align 8, !tbaa !23
  %12 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %pdata, align 8, !tbaa !4
  %14 = load i32, ptr %sz, align 4, !tbaa !8
  %conv7 = sext i32 %14 to i64
  %15 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %output_file_offset = getelementptr inbounds %struct._internal_exr_context, ptr %15, i32 0, i32 30
  %call8 = call i32 %11(ptr noundef %12, ptr noundef %13, i64 noundef %conv7, ptr noundef %output_file_offset)
  store i32 %call8, ptr %rv, align 4, !tbaa !8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %land.lhs.true, %if.end
  %16 = load i32, ptr %rv, align 4, !tbaa !8
  store i32 %16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdata) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal i32 @save_attr_sz(ptr noundef %ctxt, i64 noundef %sz) #0 {
entry:
  %retval = alloca i32, align 4
  %ctxt.addr = alloca ptr, align 8
  %sz.addr = alloca i64, align 8
  %isz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 4, ptr %isz) #6
  %0 = load i64, ptr %sz.addr, align 8, !tbaa !45
  %cmp = icmp ugt i64 %0, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %standard_error = getelementptr inbounds %struct._internal_exr_context, ptr %1, i32 0, i32 12
  %2 = load ptr, ptr %standard_error, align 8, !tbaa !41
  %3 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %call = call i32 %2(ptr noundef %3, i32 noundef 3)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %sz.addr, align 8, !tbaa !45
  %conv = trunc i64 %4 to i32
  store i32 %conv, ptr %isz, align 4, !tbaa !8
  call void @priv_from_native32(ptr noundef %isz, i32 noundef 1)
  %5 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %do_write = getelementptr inbounds %struct._internal_exr_context, ptr %5, i32 0, i32 11
  %6 = load ptr, ptr %do_write, align 8, !tbaa !23
  %7 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %output_file_offset = getelementptr inbounds %struct._internal_exr_context, ptr %8, i32 0, i32 30
  %call1 = call i32 %6(ptr noundef %7, ptr noundef %isz, i64 noundef 4, ptr noundef %output_file_offset)
  store i32 %call1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %isz) #6
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @save_attr_32(ptr noundef %ctxt, ptr noundef %ptr, i32 noundef %n) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %1 = load i32, ptr %n.addr, align 4, !tbaa !8
  call void @priv_from_native32(ptr noundef %0, i32 noundef %1)
  %2 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %do_write = getelementptr inbounds %struct._internal_exr_context, ptr %2, i32 0, i32 11
  %3 = load ptr, ptr %do_write, align 8, !tbaa !23
  %4 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %6 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv = sext i32 %6 to i64
  %mul = mul i64 4, %conv
  %7 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %output_file_offset = getelementptr inbounds %struct._internal_exr_context, ptr %7, i32 0, i32 30
  %call = call i32 %3(ptr noundef %4, ptr noundef %5, i64 noundef %mul, ptr noundef %output_file_offset)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @save_attr_64(ptr noundef %ctxt, ptr noundef %ptr, i32 noundef %n) #0 {
entry:
  %ctxt.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %1 = load i32, ptr %n.addr, align 4, !tbaa !8
  call void @priv_from_native64(ptr noundef %0, i32 noundef %1)
  %2 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %do_write = getelementptr inbounds %struct._internal_exr_context, ptr %2, i32 0, i32 11
  %3 = load ptr, ptr %do_write, align 8, !tbaa !23
  %4 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %6 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv = sext i32 %6 to i64
  %mul = mul i64 8, %conv
  %7 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  %output_file_offset = getelementptr inbounds %struct._internal_exr_context, ptr %7, i32 0, i32 30
  %call = call i32 %3(ptr noundef %4, ptr noundef %5, i64 noundef %mul, ptr noundef %output_file_offset)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @priv_from_native64(ptr noundef %ptr, i32 noundef %n) #2 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %1 = load i32, ptr %n.addr, align 4, !tbaa !8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @priv_to_native32(ptr noundef %ptr, i32 noundef %n) #2 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  %1 = load i32, ptr %n.addr, align 4, !tbaa !8
  ret void
}

declare i32 @exr_attr_opaquedata_pack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!10 = !{!11, !6, i64 5}
!11 = !{!"_internal_exr_context", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !12, i64 8, !12, i64 24, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !13, i64 124, !5, i64 128, !5, i64 136, !5, i64 144, !14, i64 152, !5, i64 160, !5, i64 168, !14, i64 176, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !15, i64 200, !5, i64 464, !5, i64 472, !16, i64 480, !6, i64 504, !6, i64 544, !6, i64 545, !6, i64 546}
!12 = !{!"", !9, i64 0, !9, i64 4, !5, i64 8}
!13 = !{!"float", !6, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"_internal_exr_part", !9, i64 0, !6, i64 4, !16, i64 8, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !17, i64 144, !17, i64 160, !6, i64 176, !6, i64 180, !9, i64 184, !13, i64 188, !9, i64 192, !9, i64 196, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !14, i64 232, !19, i64 240, !19, i64 242, !9, i64 244, !14, i64 248, !6, i64 256}
!16 = !{!"exr_attribute_list", !9, i64 0, !9, i64 4, !5, i64 8, !5, i64 16}
!17 = !{!"", !18, i64 0, !18, i64 8}
!18 = !{!"", !6, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = !{!11, !6, i64 2}
!21 = !{!11, !6, i64 4}
!22 = !{!11, !6, i64 3}
!23 = !{!11, !5, i64 48}
!24 = !{!11, !9, i64 196}
!25 = !{!11, !5, i64 472}
!26 = !{!11, !6, i64 545}
!27 = !{!15, !9, i64 8}
!28 = !{!15, !5, i64 24}
!29 = !{!30, !5, i64 0}
!30 = !{!"", !5, i64 0, !5, i64 8, !6, i64 16, !6, i64 17, !6, i64 18, !6, i64 20, !6, i64 24}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!15, !5, i64 16}
!34 = distinct !{!34, !32}
!35 = !{!6, !6, i64 0}
!36 = distinct !{!36, !32}
!37 = !{!30, !6, i64 16}
!38 = !{!30, !5, i64 8}
!39 = !{!30, !6, i64 17}
!40 = !{!30, !6, i64 20}
!41 = !{!11, !5, i64 56}
!42 = !{i64 0, i64 4, !8, i64 4, i64 4, !8, i64 0, i64 8, !35, i64 8, i64 4, !8, i64 12, i64 4, !8, i64 8, i64 8, !35}
!43 = !{i64 0, i64 4, !44, i64 4, i64 4, !44, i64 0, i64 8, !35, i64 8, i64 4, !44, i64 12, i64 4, !44, i64 8, i64 8, !35}
!44 = !{!13, !13, i64 0}
!45 = !{!14, !14, i64 0}
!46 = !{!12, !9, i64 0}
!47 = !{!12, !5, i64 8}
!48 = !{!49, !9, i64 0}
!49 = !{!"", !12, i64 0, !6, i64 16, !6, i64 20, !6, i64 21, !9, i64 24, !9, i64 28}
!50 = distinct !{!50, !32}
!51 = !{!49, !6, i64 16}
!52 = !{!49, !9, i64 24}
!53 = !{!49, !9, i64 28}
!54 = !{!49, !6, i64 20}
!55 = !{!49, !5, i64 8}
!56 = distinct !{!56, !32}
!57 = !{i64 0, i64 4, !44, i64 4, i64 4, !44, i64 8, i64 4, !44, i64 12, i64 4, !44, i64 16, i64 4, !44, i64 20, i64 4, !44, i64 24, i64 4, !44, i64 28, i64 4, !44}
!58 = !{!59, !59, i64 0}
!59 = !{!"double", !6, i64 0}
!60 = !{!12, !9, i64 4}
!61 = !{!11, !5, i64 88}
!62 = !{!11, !5, i64 96}
!63 = !{i64 0, i64 4, !8, i64 4, i64 4, !8, i64 8, i64 4, !8, i64 12, i64 4, !8, i64 16, i64 4, !8, i64 20, i64 4, !8, i64 24, i64 4, !8}
!64 = !{i64 0, i64 36, !35}
!65 = !{i64 0, i64 72, !35}
!66 = !{i64 0, i64 64, !35}
!67 = !{i64 0, i64 128, !35}
!68 = !{!69, !9, i64 0}
!69 = !{!"", !9, i64 0, !9, i64 4, !14, i64 8, !5, i64 16}
!70 = !{!69, !9, i64 4}
!71 = !{!69, !5, i64 16}
!72 = !{i64 0, i64 4, !8, i64 4, i64 4, !8}
!73 = distinct !{!73, !32}
!74 = distinct !{!74, !32}
!75 = !{!76, !9, i64 0}
!76 = !{!"", !9, i64 0, !9, i64 4, !6, i64 8}
!77 = !{!76, !9, i64 4}
!78 = !{i64 0, i64 4, !8, i64 4, i64 4, !8, i64 0, i64 8, !35}
!79 = !{i64 0, i64 4, !44, i64 4, i64 4, !44, i64 0, i64 8, !35}
!80 = !{i64 0, i64 8, !58, i64 8, i64 8, !58, i64 0, i64 16, !35}
!81 = !{i64 0, i64 4, !8, i64 4, i64 4, !8, i64 8, i64 4, !8, i64 0, i64 12, !35}
!82 = !{i64 0, i64 4, !44, i64 4, i64 4, !44, i64 8, i64 4, !44, i64 0, i64 12, !35}
!83 = !{i64 0, i64 8, !58, i64 8, i64 8, !58, i64 16, i64 8, !58, i64 0, i64 24, !35}
