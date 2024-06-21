; ModuleID = 'samples/977.bc'
source_filename = "modules/dbgfmts/codeview/cv-symline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yasm_bytecode_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.cv_line_info = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.cv8_lineinfo_head, ptr, ptr }
%struct.cv8_lineinfo_head = type { ptr, ptr }
%struct.yasm_object = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.yasm_sectionhead, ptr, ptr, ptr }
%struct.yasm_sectionhead = type { ptr, ptr }
%struct.yasm_dbgfmt_cv = type { %struct.yasm_dbgfmt_base, ptr, i64, i64, i32 }
%struct.yasm_dbgfmt_base = type { ptr }
%struct.cv_filename = type { ptr, ptr, i64, i64, [16 x i8] }
%struct.yasm_bytecode = type { %struct.anon, ptr, ptr, ptr, i64, i64, i64, i64, i64, ptr, ptr }
%struct.anon = type { ptr }
%struct.cv8_lineinfo = type { %struct.anon.0, ptr, ptr, ptr, i64, i32, %struct.cv8_lineset_head }
%struct.anon.0 = type { ptr }
%struct.cv8_lineset_head = type { ptr, ptr }
%struct.cv8_symhead = type { i32, ptr, ptr, i32 }
%struct.yasm_datavalhead = type { ptr, ptr }
%struct.cv8_fileinfo = type { ptr }
%struct.cv_sym = type { i32, ptr, [10 x %union.anon] }
%union.anon = type { i64 }
%struct.yasm_arch_base = type { ptr }
%struct.yasm_arch_module = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.yasm_md5_context = type { [4 x i64], [2 x i64], [64 x i8] }
%struct.cv8_lineset = type { %struct.anon.1, [126 x %struct.cv8_linepair], i64 }
%struct.anon.1 = type { ptr }
%struct.cv8_linepair = type { i64, i64 }
%struct.yasm_value = type { ptr, ptr, ptr, i24 }

@.str = private unnamed_addr constant [9 x i8] c".debug$S\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !7
@.str.2 = private unnamed_addr constant [35 x i8] c"codeview file number %d unassigned\00", align 1, !dbg !12
@cv8_lineinfo_bc_callback = internal constant %struct.yasm_bytecode_callback { ptr @cv8_lineinfo_bc_destroy, ptr @cv8_lineinfo_bc_print, ptr @yasm_bc_finalize_common, ptr null, ptr @cv8_lineinfo_bc_calc_len, ptr @yasm_bc_expand_common, ptr @cv8_lineinfo_bc_tobytes, i32 0 }, align 8, !dbg !17
@.str.3 = private unnamed_addr constant [16 x i8] c"YASM_TEST_SUITE\00", align 1, !dbg !718
@.str.4 = private unnamed_addr constant [10 x i8] c"yasm HEAD\00", align 1, !dbg !721
@.str.5 = private unnamed_addr constant [11 x i8] c"yasm 1.3.0\00", align 1, !dbg !724
@yasm_xrealloc = external global ptr, align 8
@yasm_xmalloc = external global ptr, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"rb\00", align 1, !dbg !729
@.str.7 = private unnamed_addr constant [37 x i8] c"codeview: could not open source file\00", align 1, !dbg !734
@yasm_xfree = external global ptr, align 8
@yasm_internal_error_ = external global ptr, align 8
@.str.8 = private unnamed_addr constant [38 x i8] c"modules/dbgfmts/codeview/cv-symline.c\00", align 1, !dbg !739
@.str.9 = private unnamed_addr constant [33 x i8] c"could not find filename in table\00", align 1, !dbg !744
@.str.10 = private unnamed_addr constant [6 x i8] c".%06u\00", align 1, !dbg !749
@.str.11 = private unnamed_addr constant [47 x i8] c"tried to calc_len a codeview linehead bytecode\00", align 1, !dbg !754
@.str.12 = private unnamed_addr constant [3 x i8] c"wZ\00", align 1, !dbg !759
@cv_sym_bc_callback = internal constant %struct.yasm_bytecode_callback { ptr @cv_sym_bc_destroy, ptr @cv_sym_bc_print, ptr @yasm_bc_finalize_common, ptr null, ptr @cv_sym_bc_calc_len, ptr @yasm_bc_expand_common, ptr @cv_sym_bc_tobytes, i32 0 }, align 8, !dbg !761
@.str.13 = private unnamed_addr constant [29 x i8] c"unknown sym format character\00", align 1, !dbg !763
@.str.14 = private unnamed_addr constant [42 x i8] c"tried to calc_len a codeview sym bytecode\00", align 1, !dbg !768
@.str.15 = private unnamed_addr constant [30 x i8] c"unknown leaf format character\00", align 1, !dbg !773
@.str.16 = private unnamed_addr constant [7 x i8] c"wwwwZh\00", align 1, !dbg !778
@.str.17 = private unnamed_addr constant [4 x i8] c"x86\00", align 1, !dbg !783
@.str.18 = private unnamed_addr constant [6 x i8] c"amd64\00", align 1, !dbg !788
@.str.19 = private unnamed_addr constant [4 x i8] c"YbZ\00", align 1, !dbg !790
@.str.20 = private unnamed_addr constant [4 x i8] c"wYZ\00", align 1, !dbg !792
@cv8_symhead_bc_callback = internal constant %struct.yasm_bytecode_callback { ptr @cv8_symhead_bc_destroy, ptr @cv8_symhead_bc_print, ptr @yasm_bc_finalize_common, ptr null, ptr @cv8_symhead_bc_calc_len, ptr @yasm_bc_expand_common, ptr @cv8_symhead_bc_tobytes, i32 0 }, align 8, !dbg !794
@.str.21 = private unnamed_addr constant [46 x i8] c"tried to calc_len a codeview symhead bytecode\00", align 1, !dbg !796
@cv8_fileinfo_bc_callback = internal constant %struct.yasm_bytecode_callback { ptr @cv8_fileinfo_bc_destroy, ptr @cv8_fileinfo_bc_print, ptr @yasm_bc_finalize_common, ptr null, ptr @cv8_fileinfo_bc_calc_len, ptr @yasm_bc_expand_common, ptr @cv8_fileinfo_bc_tobytes, i32 0 }, align 8, !dbg !801
@.str.22 = private unnamed_addr constant [47 x i8] c"tried to calc_len a codeview fileinfo bytecode\00", align 1, !dbg !803

; Function Attrs: nounwind uwtable
define dso_local ptr @yasm_cv__generate_symline(ptr noundef %object, ptr noundef %linemap, ptr noundef %errwarns) #0 !dbg !812 {
entry:
  %object.addr = alloca ptr, align 8
  %linemap.addr = alloca ptr, align 8
  %errwarns.addr = alloca ptr, align 8
  %dbgfmt_cv = alloca ptr, align 8
  %info = alloca %struct.cv_line_info, align 8
  %new = alloca i32, align 4
  %i = alloca i64, align 8
  %head = alloca ptr, align 8
  %li = alloca ptr, align 8
  %bc = alloca ptr, align 8
  %off = alloca i64, align 8
  store ptr %object, ptr %object.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !816, metadata !DIExpression()), !dbg !831
  store ptr %linemap, ptr %linemap.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %linemap.addr, metadata !817, metadata !DIExpression()), !dbg !832
  store ptr %errwarns, ptr %errwarns.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %errwarns.addr, metadata !818, metadata !DIExpression()), !dbg !833
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbgfmt_cv) #7, !dbg !834
  tail call void @llvm.dbg.declare(metadata ptr %dbgfmt_cv, metadata !819, metadata !DIExpression()), !dbg !835
  %0 = load ptr, ptr %object.addr, align 8, !dbg !836, !tbaa !827
  %dbgfmt = getelementptr inbounds %struct.yasm_object, ptr %0, i32 0, i32 5, !dbg !837
  %1 = load ptr, ptr %dbgfmt, align 8, !dbg !837, !tbaa !838
  store ptr %1, ptr %dbgfmt_cv, align 8, !dbg !835, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 80, ptr %info) #7, !dbg !841
  tail call void @llvm.dbg.declare(metadata ptr %info, metadata !820, metadata !DIExpression()), !dbg !842
  call void @llvm.lifetime.start.p0(i64 4, ptr %new) #7, !dbg !843
  tail call void @llvm.dbg.declare(metadata ptr %new, metadata !821, metadata !DIExpression()), !dbg !844
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7, !dbg !845
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !822, metadata !DIExpression()), !dbg !846
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #7, !dbg !847
  tail call void @llvm.dbg.declare(metadata ptr %head, metadata !823, metadata !DIExpression()), !dbg !848
  call void @llvm.lifetime.start.p0(i64 8, ptr %li) #7, !dbg !849
  tail call void @llvm.dbg.declare(metadata ptr %li, metadata !824, metadata !DIExpression()), !dbg !850
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #7, !dbg !851
  tail call void @llvm.dbg.declare(metadata ptr %bc, metadata !825, metadata !DIExpression()), !dbg !852
  call void @llvm.lifetime.start.p0(i64 8, ptr %off) #7, !dbg !853
  tail call void @llvm.dbg.declare(metadata ptr %off, metadata !826, metadata !DIExpression()), !dbg !854
  %2 = load ptr, ptr %linemap.addr, align 8, !dbg !855, !tbaa !827
  %3 = load ptr, ptr %dbgfmt_cv, align 8, !dbg !856, !tbaa !827
  %call = call i32 @yasm_linemap_traverse_filenames(ptr noundef %2, ptr noundef %3, ptr noundef @cv_generate_filename), !dbg !857
  %4 = load ptr, ptr %object.addr, align 8, !dbg !858, !tbaa !827
  %object1 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 1, !dbg !859
  store ptr %4, ptr %object1, align 8, !dbg !860, !tbaa !861
  %5 = load ptr, ptr %dbgfmt_cv, align 8, !dbg !865, !tbaa !827
  %dbgfmt_cv2 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 2, !dbg !866
  store ptr %5, ptr %dbgfmt_cv2, align 8, !dbg !867, !tbaa !868
  %6 = load ptr, ptr %linemap.addr, align 8, !dbg !869, !tbaa !827
  %linemap3 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 3, !dbg !870
  store ptr %6, ptr %linemap3, align 8, !dbg !871, !tbaa !872
  %7 = load ptr, ptr %errwarns.addr, align 8, !dbg !873, !tbaa !827
  %errwarns4 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 4, !dbg !874
  store ptr %7, ptr %errwarns4, align 8, !dbg !875, !tbaa !876
  %8 = load ptr, ptr %object.addr, align 8, !dbg !877, !tbaa !827
  %call5 = call ptr @yasm_object_get_general(ptr noundef %8, ptr noundef @.str, i64 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %new, i64 noundef 0), !dbg !878
  %debug_symline = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !879
  store ptr %call5, ptr %debug_symline, align 8, !dbg !880, !tbaa !881
  %num_lineinfos = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 5, !dbg !882
  store i32 0, ptr %num_lineinfos, align 8, !dbg !883, !tbaa !884
  br label %do.body, !dbg !885

do.body:                                          ; preds = %entry
  %cv8_lineinfos = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 6, !dbg !886
  %stqh_first = getelementptr inbounds %struct.cv8_lineinfo_head, ptr %cv8_lineinfos, i32 0, i32 0, !dbg !886
  store ptr null, ptr %stqh_first, align 8, !dbg !886, !tbaa !888
  %cv8_lineinfos6 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 6, !dbg !886
  %stqh_first7 = getelementptr inbounds %struct.cv8_lineinfo_head, ptr %cv8_lineinfos6, i32 0, i32 0, !dbg !886
  %cv8_lineinfos8 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 6, !dbg !886
  %stqh_last = getelementptr inbounds %struct.cv8_lineinfo_head, ptr %cv8_lineinfos8, i32 0, i32 1, !dbg !886
  store ptr %stqh_first7, ptr %stqh_last, align 8, !dbg !886, !tbaa !889
  br label %do.cond, !dbg !886

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !886

do.end:                                           ; preds = %do.cond
  %cv8_cur_li = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 7, !dbg !890
  store ptr null, ptr %cv8_cur_li, align 8, !dbg !891, !tbaa !892
  %cv8_cur_ls = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 8, !dbg !893
  store ptr null, ptr %cv8_cur_ls, align 8, !dbg !894, !tbaa !895
  %debug_symline9 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !896
  %9 = load ptr, ptr %debug_symline9, align 8, !dbg !896, !tbaa !881
  %call10 = call ptr @cv8_add_symhead(ptr noundef %9, i64 noundef 243, i32 noundef 1), !dbg !897
  store ptr %call10, ptr %head, align 8, !dbg !898, !tbaa !827
  %debug_symline11 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !899
  %10 = load ptr, ptr %debug_symline11, align 8, !dbg !899, !tbaa !881
  %call12 = call ptr @cv_append_str(ptr noundef %10, ptr noundef @.str.1), !dbg !900
  store i64 1, ptr %off, align 8, !dbg !901, !tbaa !902
  store i64 0, ptr %i, align 8, !dbg !904, !tbaa !902
  br label %for.cond, !dbg !906

for.cond:                                         ; preds = %for.inc, %do.end
  %11 = load i64, ptr %i, align 8, !dbg !907, !tbaa !902
  %12 = load ptr, ptr %dbgfmt_cv, align 8, !dbg !909, !tbaa !827
  %filenames_size = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %12, i32 0, i32 2, !dbg !910
  %13 = load i64, ptr %filenames_size, align 8, !dbg !910, !tbaa !911
  %cmp = icmp ult i64 %11, %13, !dbg !914
  br i1 %cmp, label %for.body, label %for.end, !dbg !915

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %dbgfmt_cv, align 8, !dbg !916, !tbaa !827
  %filenames = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %14, i32 0, i32 1, !dbg !919
  %15 = load ptr, ptr %filenames, align 8, !dbg !919, !tbaa !920
  %16 = load i64, ptr %i, align 8, !dbg !921, !tbaa !902
  %arrayidx = getelementptr inbounds %struct.cv_filename, ptr %15, i64 %16, !dbg !916
  %pathname = getelementptr inbounds %struct.cv_filename, ptr %arrayidx, i32 0, i32 0, !dbg !922
  %17 = load ptr, ptr %pathname, align 8, !dbg !922, !tbaa !923
  %tobool = icmp ne ptr %17, null, !dbg !916
  br i1 %tobool, label %if.end, label %if.then, !dbg !925

if.then:                                          ; preds = %for.body
  %18 = load i64, ptr %i, align 8, !dbg !926, !tbaa !902
  %add = add i64 %18, 1, !dbg !928
  call void (i32, ptr, ...) @yasm_error_set(i32 noundef 65535, ptr noundef @.str.2, i64 noundef %add), !dbg !929
  %19 = load ptr, ptr %errwarns.addr, align 8, !dbg !930, !tbaa !827
  call void @yasm_errwarn_propagate(ptr noundef %19, i64 noundef 0), !dbg !931
  br label %for.inc, !dbg !932

if.end:                                           ; preds = %for.body
  %debug_symline13 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !933
  %20 = load ptr, ptr %debug_symline13, align 8, !dbg !933, !tbaa !881
  %21 = load ptr, ptr %dbgfmt_cv, align 8, !dbg !934, !tbaa !827
  %filenames14 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %21, i32 0, i32 1, !dbg !935
  %22 = load ptr, ptr %filenames14, align 8, !dbg !935, !tbaa !920
  %23 = load i64, ptr %i, align 8, !dbg !936, !tbaa !902
  %arrayidx15 = getelementptr inbounds %struct.cv_filename, ptr %22, i64 %23, !dbg !934
  %pathname16 = getelementptr inbounds %struct.cv_filename, ptr %arrayidx15, i32 0, i32 0, !dbg !937
  %24 = load ptr, ptr %pathname16, align 8, !dbg !937, !tbaa !923
  %call17 = call ptr @cv_append_str(ptr noundef %20, ptr noundef %24), !dbg !938
  store ptr %call17, ptr %bc, align 8, !dbg !939, !tbaa !827
  %25 = load i64, ptr %off, align 8, !dbg !940, !tbaa !902
  %26 = load ptr, ptr %dbgfmt_cv, align 8, !dbg !941, !tbaa !827
  %filenames18 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %26, i32 0, i32 1, !dbg !942
  %27 = load ptr, ptr %filenames18, align 8, !dbg !942, !tbaa !920
  %28 = load i64, ptr %i, align 8, !dbg !943, !tbaa !902
  %arrayidx19 = getelementptr inbounds %struct.cv_filename, ptr %27, i64 %28, !dbg !941
  %str_off = getelementptr inbounds %struct.cv_filename, ptr %arrayidx19, i32 0, i32 2, !dbg !944
  store i64 %25, ptr %str_off, align 8, !dbg !945, !tbaa !946
  %29 = load ptr, ptr %bc, align 8, !dbg !947, !tbaa !827
  %len = getelementptr inbounds %struct.yasm_bytecode, ptr %29, i32 0, i32 4, !dbg !948
  %30 = load i64, ptr %len, align 8, !dbg !948, !tbaa !949
  %31 = load i64, ptr %off, align 8, !dbg !952, !tbaa !902
  %add20 = add i64 %31, %30, !dbg !952
  store i64 %add20, ptr %off, align 8, !dbg !952, !tbaa !902
  br label %for.inc, !dbg !953

for.inc:                                          ; preds = %if.end, %if.then
  %32 = load i64, ptr %i, align 8, !dbg !954, !tbaa !902
  %inc = add i64 %32, 1, !dbg !954
  store i64 %inc, ptr %i, align 8, !dbg !954, !tbaa !902
  br label %for.cond, !dbg !955, !llvm.loop !956

for.end:                                          ; preds = %for.cond
  %33 = load ptr, ptr %head, align 8, !dbg !959, !tbaa !827
  %debug_symline21 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !960
  %34 = load ptr, ptr %debug_symline21, align 8, !dbg !960, !tbaa !881
  %call22 = call ptr @yasm_section_bcs_last(ptr noundef %34), !dbg !961
  call void @cv8_set_symhead_end(ptr noundef %33, ptr noundef %call22), !dbg !962
  %call23 = call ptr @yasm_intnum_create_uint(i64 noundef 4), !dbg !963
  %call24 = call ptr @yasm_expr_int(ptr noundef %call23), !dbg !963
  %call25 = call ptr @yasm_expr_create(i32 noundef 0, ptr noundef %call24, ptr noundef null, i64 noundef 0), !dbg !963
  %call26 = call ptr @yasm_bc_create_align(ptr noundef %call25, ptr noundef null, ptr noundef null, ptr noundef null, i64 noundef 0), !dbg !964
  store ptr %call26, ptr %bc, align 8, !dbg !965, !tbaa !827
  %35 = load ptr, ptr %bc, align 8, !dbg !966, !tbaa !827
  %debug_symline27 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !967
  %36 = load ptr, ptr %debug_symline27, align 8, !dbg !967, !tbaa !881
  %37 = load ptr, ptr %bc, align 8, !dbg !968, !tbaa !827
  %call28 = call ptr @yasm_cv__append_bc(ptr noundef %36, ptr noundef %37), !dbg !969
  call void @yasm_bc_finalize(ptr noundef %35, ptr noundef %call28), !dbg !970
  %38 = load ptr, ptr %bc, align 8, !dbg !971, !tbaa !827
  %call29 = call i32 @yasm_bc_calc_len(ptr noundef %38, ptr noundef null, ptr noundef null), !dbg !972
  %debug_symline30 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !973
  %39 = load ptr, ptr %debug_symline30, align 8, !dbg !973, !tbaa !881
  %call31 = call ptr @cv8_add_symhead(ptr noundef %39, i64 noundef 244, i32 noundef 0), !dbg !974
  store ptr %call31, ptr %head, align 8, !dbg !975, !tbaa !827
  store i64 0, ptr %off, align 8, !dbg !976, !tbaa !902
  store i64 0, ptr %i, align 8, !dbg !977, !tbaa !902
  br label %for.cond32, !dbg !979

for.cond32:                                       ; preds = %for.inc50, %for.end
  %40 = load i64, ptr %i, align 8, !dbg !980, !tbaa !902
  %41 = load ptr, ptr %dbgfmt_cv, align 8, !dbg !982, !tbaa !827
  %filenames_size33 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %41, i32 0, i32 2, !dbg !983
  %42 = load i64, ptr %filenames_size33, align 8, !dbg !983, !tbaa !911
  %cmp34 = icmp ult i64 %40, %42, !dbg !984
  br i1 %cmp34, label %for.body35, label %for.end52, !dbg !985

for.body35:                                       ; preds = %for.cond32
  %43 = load ptr, ptr %dbgfmt_cv, align 8, !dbg !986, !tbaa !827
  %filenames36 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %43, i32 0, i32 1, !dbg !989
  %44 = load ptr, ptr %filenames36, align 8, !dbg !989, !tbaa !920
  %45 = load i64, ptr %i, align 8, !dbg !990, !tbaa !902
  %arrayidx37 = getelementptr inbounds %struct.cv_filename, ptr %44, i64 %45, !dbg !986
  %pathname38 = getelementptr inbounds %struct.cv_filename, ptr %arrayidx37, i32 0, i32 0, !dbg !991
  %46 = load ptr, ptr %pathname38, align 8, !dbg !991, !tbaa !923
  %tobool39 = icmp ne ptr %46, null, !dbg !986
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !992

if.then40:                                        ; preds = %for.body35
  br label %for.inc50, !dbg !993

if.end41:                                         ; preds = %for.body35
  %debug_symline42 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !994
  %47 = load ptr, ptr %debug_symline42, align 8, !dbg !994, !tbaa !881
  %48 = load ptr, ptr %dbgfmt_cv, align 8, !dbg !995, !tbaa !827
  %filenames43 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %48, i32 0, i32 1, !dbg !996
  %49 = load ptr, ptr %filenames43, align 8, !dbg !996, !tbaa !920
  %50 = load i64, ptr %i, align 8, !dbg !997, !tbaa !902
  %arrayidx44 = getelementptr inbounds %struct.cv_filename, ptr %49, i64 %50, !dbg !995
  %call45 = call ptr @cv8_add_fileinfo(ptr noundef %47, ptr noundef %arrayidx44), !dbg !998
  store ptr %call45, ptr %bc, align 8, !dbg !999, !tbaa !827
  %51 = load i64, ptr %off, align 8, !dbg !1000, !tbaa !902
  %52 = load ptr, ptr %dbgfmt_cv, align 8, !dbg !1001, !tbaa !827
  %filenames46 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %52, i32 0, i32 1, !dbg !1002
  %53 = load ptr, ptr %filenames46, align 8, !dbg !1002, !tbaa !920
  %54 = load i64, ptr %i, align 8, !dbg !1003, !tbaa !902
  %arrayidx47 = getelementptr inbounds %struct.cv_filename, ptr %53, i64 %54, !dbg !1001
  %info_off = getelementptr inbounds %struct.cv_filename, ptr %arrayidx47, i32 0, i32 3, !dbg !1004
  store i64 %51, ptr %info_off, align 8, !dbg !1005, !tbaa !1006
  %55 = load ptr, ptr %bc, align 8, !dbg !1007, !tbaa !827
  %len48 = getelementptr inbounds %struct.yasm_bytecode, ptr %55, i32 0, i32 4, !dbg !1008
  %56 = load i64, ptr %len48, align 8, !dbg !1008, !tbaa !949
  %57 = load i64, ptr %off, align 8, !dbg !1009, !tbaa !902
  %add49 = add i64 %57, %56, !dbg !1009
  store i64 %add49, ptr %off, align 8, !dbg !1009, !tbaa !902
  br label %for.inc50, !dbg !1010

for.inc50:                                        ; preds = %if.end41, %if.then40
  %58 = load i64, ptr %i, align 8, !dbg !1011, !tbaa !902
  %inc51 = add i64 %58, 1, !dbg !1011
  store i64 %inc51, ptr %i, align 8, !dbg !1011, !tbaa !902
  br label %for.cond32, !dbg !1012, !llvm.loop !1013

for.end52:                                        ; preds = %for.cond32
  %59 = load ptr, ptr %head, align 8, !dbg !1015, !tbaa !827
  %debug_symline53 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !1016
  %60 = load ptr, ptr %debug_symline53, align 8, !dbg !1016, !tbaa !881
  %call54 = call ptr @yasm_section_bcs_last(ptr noundef %60), !dbg !1017
  call void @cv8_set_symhead_end(ptr noundef %59, ptr noundef %call54), !dbg !1018
  %61 = load ptr, ptr %object.addr, align 8, !dbg !1019, !tbaa !827
  %call55 = call i32 @yasm_object_sections_traverse(ptr noundef %61, ptr noundef %info, ptr noundef @cv_generate_line_section), !dbg !1020
  store ptr null, ptr %head, align 8, !dbg !1021, !tbaa !827
  %cv8_lineinfos56 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 6, !dbg !1022
  %stqh_first57 = getelementptr inbounds %struct.cv8_lineinfo_head, ptr %cv8_lineinfos56, i32 0, i32 0, !dbg !1022
  %62 = load ptr, ptr %stqh_first57, align 8, !dbg !1022, !tbaa !888
  store ptr %62, ptr %li, align 8, !dbg !1022, !tbaa !827
  br label %for.cond58, !dbg !1022

for.cond58:                                       ; preds = %for.inc78, %for.end52
  %63 = load ptr, ptr %li, align 8, !dbg !1024, !tbaa !827
  %tobool59 = icmp ne ptr %63, null, !dbg !1022
  br i1 %tobool59, label %for.body60, label %for.end79, !dbg !1022

for.body60:                                       ; preds = %for.cond58
  %64 = load ptr, ptr %li, align 8, !dbg !1026, !tbaa !827
  %first_in_sect = getelementptr inbounds %struct.cv8_lineinfo, ptr %64, i32 0, i32 5, !dbg !1029
  %65 = load i32, ptr %first_in_sect, align 8, !dbg !1029, !tbaa !1030
  %tobool61 = icmp ne i32 %65, 0, !dbg !1026
  br i1 %tobool61, label %if.then62, label %if.end70, !dbg !1033

if.then62:                                        ; preds = %for.body60
  %66 = load ptr, ptr %head, align 8, !dbg !1034, !tbaa !827
  %tobool63 = icmp ne ptr %66, null, !dbg !1034
  br i1 %tobool63, label %if.then64, label %if.end67, !dbg !1037

if.then64:                                        ; preds = %if.then62
  %67 = load ptr, ptr %head, align 8, !dbg !1038, !tbaa !827
  %debug_symline65 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !1039
  %68 = load ptr, ptr %debug_symline65, align 8, !dbg !1039, !tbaa !881
  %call66 = call ptr @yasm_section_bcs_last(ptr noundef %68), !dbg !1040
  call void @cv8_set_symhead_end(ptr noundef %67, ptr noundef %call66), !dbg !1041
  br label %if.end67, !dbg !1041

if.end67:                                         ; preds = %if.then64, %if.then62
  %debug_symline68 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !1042
  %69 = load ptr, ptr %debug_symline68, align 8, !dbg !1042, !tbaa !881
  %call69 = call ptr @cv8_add_symhead(ptr noundef %69, i64 noundef 242, i32 noundef 0), !dbg !1043
  store ptr %call69, ptr %head, align 8, !dbg !1044, !tbaa !827
  br label %if.end70, !dbg !1045

if.end70:                                         ; preds = %if.end67, %for.body60
  %70 = load ptr, ptr %li, align 8, !dbg !1046, !tbaa !827
  %call71 = call ptr @yasm_bc_create_common(ptr noundef @cv8_lineinfo_bc_callback, ptr noundef %70, i64 noundef 0), !dbg !1047
  store ptr %call71, ptr %bc, align 8, !dbg !1048, !tbaa !827
  %71 = load ptr, ptr %li, align 8, !dbg !1049, !tbaa !827
  %first_in_sect72 = getelementptr inbounds %struct.cv8_lineinfo, ptr %71, i32 0, i32 5, !dbg !1050
  %72 = load i32, ptr %first_in_sect72, align 8, !dbg !1050, !tbaa !1030
  %tobool73 = icmp ne i32 %72, 0, !dbg !1049
  %73 = zext i1 %tobool73 to i64, !dbg !1049
  %cond = select i1 %tobool73, i32 24, i32 12, !dbg !1049
  %conv = sext i32 %cond to i64, !dbg !1051
  %74 = load ptr, ptr %li, align 8, !dbg !1052, !tbaa !827
  %num_linenums = getelementptr inbounds %struct.cv8_lineinfo, ptr %74, i32 0, i32 4, !dbg !1053
  %75 = load i64, ptr %num_linenums, align 8, !dbg !1053, !tbaa !1054
  %mul = mul i64 %75, 8, !dbg !1055
  %add74 = add i64 %conv, %mul, !dbg !1056
  %76 = load ptr, ptr %bc, align 8, !dbg !1057, !tbaa !827
  %len75 = getelementptr inbounds %struct.yasm_bytecode, ptr %76, i32 0, i32 4, !dbg !1058
  store i64 %add74, ptr %len75, align 8, !dbg !1059, !tbaa !949
  %debug_symline76 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !1060
  %77 = load ptr, ptr %debug_symline76, align 8, !dbg !1060, !tbaa !881
  %78 = load ptr, ptr %bc, align 8, !dbg !1061, !tbaa !827
  %call77 = call ptr @yasm_cv__append_bc(ptr noundef %77, ptr noundef %78), !dbg !1062
  br label %for.inc78, !dbg !1063

for.inc78:                                        ; preds = %if.end70
  %79 = load ptr, ptr %li, align 8, !dbg !1024, !tbaa !827
  %link = getelementptr inbounds %struct.cv8_lineinfo, ptr %79, i32 0, i32 0, !dbg !1024
  %stqe_next = getelementptr inbounds %struct.anon.0, ptr %link, i32 0, i32 0, !dbg !1024
  %80 = load ptr, ptr %stqe_next, align 8, !dbg !1024, !tbaa !1064
  store ptr %80, ptr %li, align 8, !dbg !1024, !tbaa !827
  br label %for.cond58, !dbg !1024, !llvm.loop !1065

for.end79:                                        ; preds = %for.cond58
  %81 = load ptr, ptr %head, align 8, !dbg !1067, !tbaa !827
  %tobool80 = icmp ne ptr %81, null, !dbg !1067
  br i1 %tobool80, label %if.then81, label %if.end84, !dbg !1069

if.then81:                                        ; preds = %for.end79
  %82 = load ptr, ptr %head, align 8, !dbg !1070, !tbaa !827
  %debug_symline82 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !1071
  %83 = load ptr, ptr %debug_symline82, align 8, !dbg !1071, !tbaa !881
  %call83 = call ptr @yasm_section_bcs_last(ptr noundef %83), !dbg !1072
  call void @cv8_set_symhead_end(ptr noundef %82, ptr noundef %call83), !dbg !1073
  br label %if.end84, !dbg !1073

if.end84:                                         ; preds = %if.then81, %for.end79
  %debug_symline85 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !1074
  %84 = load ptr, ptr %debug_symline85, align 8, !dbg !1074, !tbaa !881
  %call86 = call ptr @cv8_add_symhead(ptr noundef %84, i64 noundef 241, i32 noundef 0), !dbg !1075
  store ptr %call86, ptr %head, align 8, !dbg !1076, !tbaa !827
  %debug_symline87 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !1077
  %85 = load ptr, ptr %debug_symline87, align 8, !dbg !1077, !tbaa !881
  %86 = load ptr, ptr %object.addr, align 8, !dbg !1078, !tbaa !827
  %obj_filename = getelementptr inbounds %struct.yasm_object, ptr %86, i32 0, i32 1, !dbg !1079
  %87 = load ptr, ptr %obj_filename, align 8, !dbg !1079, !tbaa !1080
  %call88 = call ptr @yasm__abspath(ptr noundef %87), !dbg !1081
  %call89 = call ptr @cv8_add_sym_objname(ptr noundef %85, ptr noundef %call88), !dbg !1082
  %call90 = call ptr @getenv(ptr noundef @.str.3) #7, !dbg !1083
  %tobool91 = icmp ne ptr %call90, null, !dbg !1083
  br i1 %tobool91, label %if.then92, label %if.else, !dbg !1085

if.then92:                                        ; preds = %if.end84
  %88 = load ptr, ptr %object.addr, align 8, !dbg !1086, !tbaa !827
  %debug_symline93 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !1087
  %89 = load ptr, ptr %debug_symline93, align 8, !dbg !1087, !tbaa !881
  %call94 = call ptr @yasm__xstrdup(ptr noundef @.str.4), !dbg !1088
  %call95 = call ptr @cv8_add_sym_compile(ptr noundef %88, ptr noundef %89, ptr noundef %call94), !dbg !1089
  br label %if.end99, !dbg !1089

if.else:                                          ; preds = %if.end84
  %90 = load ptr, ptr %object.addr, align 8, !dbg !1090, !tbaa !827
  %debug_symline96 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !1091
  %91 = load ptr, ptr %debug_symline96, align 8, !dbg !1091, !tbaa !881
  %call97 = call ptr @yasm__xstrdup(ptr noundef @.str.5), !dbg !1092
  %call98 = call ptr @cv8_add_sym_compile(ptr noundef %90, ptr noundef %91, ptr noundef %call97), !dbg !1093
  br label %if.end99

if.end99:                                         ; preds = %if.else, %if.then92
  %92 = load ptr, ptr %object.addr, align 8, !dbg !1094, !tbaa !827
  %symtab = getelementptr inbounds %struct.yasm_object, ptr %92, i32 0, i32 2, !dbg !1095
  %93 = load ptr, ptr %symtab, align 8, !dbg !1095, !tbaa !1096
  %call100 = call i32 @yasm_symtab_traverse(ptr noundef %93, ptr noundef %info, ptr noundef @cv_generate_sym), !dbg !1097
  %94 = load ptr, ptr %head, align 8, !dbg !1098, !tbaa !827
  %debug_symline101 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !1099
  %95 = load ptr, ptr %debug_symline101, align 8, !dbg !1099, !tbaa !881
  %call102 = call ptr @yasm_section_bcs_last(ptr noundef %95), !dbg !1100
  call void @cv8_set_symhead_end(ptr noundef %94, ptr noundef %call102), !dbg !1101
  %call103 = call ptr @yasm_intnum_create_uint(i64 noundef 4), !dbg !1102
  %call104 = call ptr @yasm_expr_int(ptr noundef %call103), !dbg !1102
  %call105 = call ptr @yasm_expr_create(i32 noundef 0, ptr noundef %call104, ptr noundef null, i64 noundef 0), !dbg !1102
  %call106 = call ptr @yasm_bc_create_align(ptr noundef %call105, ptr noundef null, ptr noundef null, ptr noundef null, i64 noundef 0), !dbg !1103
  store ptr %call106, ptr %bc, align 8, !dbg !1104, !tbaa !827
  %96 = load ptr, ptr %bc, align 8, !dbg !1105, !tbaa !827
  %debug_symline107 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !1106
  %97 = load ptr, ptr %debug_symline107, align 8, !dbg !1106, !tbaa !881
  %98 = load ptr, ptr %bc, align 8, !dbg !1107, !tbaa !827
  %call108 = call ptr @yasm_cv__append_bc(ptr noundef %97, ptr noundef %98), !dbg !1108
  call void @yasm_bc_finalize(ptr noundef %96, ptr noundef %call108), !dbg !1109
  %99 = load ptr, ptr %bc, align 8, !dbg !1110, !tbaa !827
  %call109 = call i32 @yasm_bc_calc_len(ptr noundef %99, ptr noundef null, ptr noundef null), !dbg !1111
  %debug_symline110 = getelementptr inbounds %struct.cv_line_info, ptr %info, i32 0, i32 0, !dbg !1112
  %100 = load ptr, ptr %debug_symline110, align 8, !dbg !1112, !tbaa !881
  call void @llvm.lifetime.end.p0(i64 8, ptr %off) #7, !dbg !1113
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #7, !dbg !1113
  call void @llvm.lifetime.end.p0(i64 8, ptr %li) #7, !dbg !1113
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #7, !dbg !1113
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7, !dbg !1113
  call void @llvm.lifetime.end.p0(i64 4, ptr %new) #7, !dbg !1113
  call void @llvm.lifetime.end.p0(i64 80, ptr %info) #7, !dbg !1113
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbgfmt_cv) #7, !dbg !1113
  ret ptr %100, !dbg !1114
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !1115 i32 @yasm_linemap_traverse_filenames(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @cv_generate_filename(ptr noundef %filename, ptr noundef %d) #0 !dbg !1122 {
entry:
  %filename.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !1124, metadata !DIExpression()), !dbg !1126
  store ptr %d, ptr %d.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !1125, metadata !DIExpression()), !dbg !1127
  %0 = load ptr, ptr %d.addr, align 8, !dbg !1128, !tbaa !827
  %1 = load ptr, ptr %filename.addr, align 8, !dbg !1129, !tbaa !827
  %call = call i64 @cv_dbgfmt_add_file(ptr noundef %0, i64 noundef 0, ptr noundef %1), !dbg !1130
  ret i32 0, !dbg !1131
}

declare !dbg !1132 ptr @yasm_object_get_general(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @cv8_add_symhead(ptr noundef %sect, i64 noundef %type, i32 noundef %first) #0 !dbg !1136 {
entry:
  %sect.addr = alloca ptr, align 8
  %type.addr = alloca i64, align 8
  %first.addr = alloca i32, align 4
  %head = alloca ptr, align 8
  %bc = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1140, metadata !DIExpression()), !dbg !1145
  store i64 %type, ptr %type.addr, align 8, !tbaa !902
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1141, metadata !DIExpression()), !dbg !1146
  store i32 %first, ptr %first.addr, align 4, !tbaa !1147
  tail call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !1142, metadata !DIExpression()), !dbg !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #7, !dbg !1149
  tail call void @llvm.dbg.declare(metadata ptr %head, metadata !1143, metadata !DIExpression()), !dbg !1150
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #7, !dbg !1151
  tail call void @llvm.dbg.declare(metadata ptr %bc, metadata !1144, metadata !DIExpression()), !dbg !1152
  %0 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !1153, !tbaa !827
  %call = call ptr %0(i64 noundef 32), !dbg !1153
  store ptr %call, ptr %head, align 8, !dbg !1154, !tbaa !827
  %1 = load i64, ptr %type.addr, align 8, !dbg !1155, !tbaa !902
  %conv = trunc i64 %1 to i32, !dbg !1155
  %2 = load ptr, ptr %head, align 8, !dbg !1156, !tbaa !827
  %type1 = getelementptr inbounds %struct.cv8_symhead, ptr %2, i32 0, i32 0, !dbg !1157
  store i32 %conv, ptr %type1, align 8, !dbg !1158, !tbaa !1159
  %3 = load i32, ptr %first.addr, align 4, !dbg !1161, !tbaa !1147
  %4 = load ptr, ptr %head, align 8, !dbg !1162, !tbaa !827
  %first2 = getelementptr inbounds %struct.cv8_symhead, ptr %4, i32 0, i32 3, !dbg !1163
  store i32 %3, ptr %first2, align 8, !dbg !1164, !tbaa !1165
  %5 = load ptr, ptr %sect.addr, align 8, !dbg !1166, !tbaa !827
  %call3 = call ptr @yasm_section_bcs_last(ptr noundef %5), !dbg !1167
  %6 = load ptr, ptr %head, align 8, !dbg !1168, !tbaa !827
  %start_prevbc = getelementptr inbounds %struct.cv8_symhead, ptr %6, i32 0, i32 1, !dbg !1169
  store ptr %call3, ptr %start_prevbc, align 8, !dbg !1170, !tbaa !1171
  %7 = load ptr, ptr %head, align 8, !dbg !1172, !tbaa !827
  %call4 = call ptr @yasm_bc_create_common(ptr noundef @cv8_symhead_bc_callback, ptr noundef %7, i64 noundef 0), !dbg !1173
  store ptr %call4, ptr %bc, align 8, !dbg !1174, !tbaa !827
  %8 = load i32, ptr %first.addr, align 4, !dbg !1175, !tbaa !1147
  %tobool = icmp ne i32 %8, 0, !dbg !1175
  br i1 %tobool, label %if.then, label %if.else, !dbg !1177

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %bc, align 8, !dbg !1178, !tbaa !827
  %len = getelementptr inbounds %struct.yasm_bytecode, ptr %9, i32 0, i32 4, !dbg !1179
  store i64 12, ptr %len, align 8, !dbg !1180, !tbaa !949
  br label %if.end, !dbg !1178

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %bc, align 8, !dbg !1181, !tbaa !827
  %len5 = getelementptr inbounds %struct.yasm_bytecode, ptr %10, i32 0, i32 4, !dbg !1182
  store i64 8, ptr %len5, align 8, !dbg !1183, !tbaa !949
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %bc, align 8, !dbg !1184, !tbaa !827
  %12 = load ptr, ptr %head, align 8, !dbg !1185, !tbaa !827
  %end_prevbc = getelementptr inbounds %struct.cv8_symhead, ptr %12, i32 0, i32 2, !dbg !1186
  store ptr %11, ptr %end_prevbc, align 8, !dbg !1187, !tbaa !1188
  %13 = load ptr, ptr %sect.addr, align 8, !dbg !1189, !tbaa !827
  %14 = load ptr, ptr %bc, align 8, !dbg !1190, !tbaa !827
  %call6 = call ptr @yasm_cv__append_bc(ptr noundef %13, ptr noundef %14), !dbg !1191
  %15 = load ptr, ptr %head, align 8, !dbg !1192, !tbaa !827
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #7, !dbg !1193
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #7, !dbg !1193
  ret ptr %15, !dbg !1194
}

; Function Attrs: nounwind uwtable
define internal ptr @cv_append_str(ptr noundef %sect, ptr noundef %str) #0 !dbg !1195 {
entry:
  %sect.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %dvs = alloca %struct.yasm_datavalhead, align 8
  %bc = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1199, metadata !DIExpression()), !dbg !1211
  store ptr %str, ptr %str.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !1200, metadata !DIExpression()), !dbg !1212
  call void @llvm.lifetime.start.p0(i64 16, ptr %dvs) #7, !dbg !1213
  tail call void @llvm.dbg.declare(metadata ptr %dvs, metadata !1201, metadata !DIExpression()), !dbg !1214
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #7, !dbg !1215
  tail call void @llvm.dbg.declare(metadata ptr %bc, metadata !1210, metadata !DIExpression()), !dbg !1216
  br label %do.body, !dbg !1217

do.body:                                          ; preds = %entry
  %stqh_first = getelementptr inbounds %struct.yasm_datavalhead, ptr %dvs, i32 0, i32 0, !dbg !1218
  store ptr null, ptr %stqh_first, align 8, !dbg !1218, !tbaa !1220
  %stqh_first1 = getelementptr inbounds %struct.yasm_datavalhead, ptr %dvs, i32 0, i32 0, !dbg !1218
  %stqh_last = getelementptr inbounds %struct.yasm_datavalhead, ptr %dvs, i32 0, i32 1, !dbg !1218
  store ptr %stqh_first1, ptr %stqh_last, align 8, !dbg !1218, !tbaa !1222
  br label %do.cond, !dbg !1218

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1218

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %str.addr, align 8, !dbg !1223, !tbaa !827
  %call = call ptr @yasm__xstrdup(ptr noundef %0), !dbg !1223
  %1 = load ptr, ptr %str.addr, align 8, !dbg !1223, !tbaa !827
  %call2 = call i64 @strlen(ptr noundef %1) #8, !dbg !1223
  %call3 = call ptr @yasm_dv_create_raw(ptr noundef %call, i64 noundef %call2), !dbg !1223
  %call4 = call ptr @yasm_dvs_append(ptr noundef %dvs, ptr noundef %call3), !dbg !1224
  %call5 = call ptr @yasm_bc_create_data(ptr noundef %dvs, i32 noundef 1, i32 noundef 1, ptr noundef null, i64 noundef 0), !dbg !1225
  store ptr %call5, ptr %bc, align 8, !dbg !1226, !tbaa !827
  %2 = load ptr, ptr %bc, align 8, !dbg !1227, !tbaa !827
  %3 = load ptr, ptr %sect.addr, align 8, !dbg !1228, !tbaa !827
  %4 = load ptr, ptr %bc, align 8, !dbg !1229, !tbaa !827
  %call6 = call ptr @yasm_cv__append_bc(ptr noundef %3, ptr noundef %4), !dbg !1230
  call void @yasm_bc_finalize(ptr noundef %2, ptr noundef %call6), !dbg !1231
  %5 = load ptr, ptr %bc, align 8, !dbg !1232, !tbaa !827
  %call7 = call i32 @yasm_bc_calc_len(ptr noundef %5, ptr noundef null, ptr noundef null), !dbg !1233
  %6 = load ptr, ptr %bc, align 8, !dbg !1234, !tbaa !827
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #7, !dbg !1235
  call void @llvm.lifetime.end.p0(i64 16, ptr %dvs) #7, !dbg !1235
  ret ptr %6, !dbg !1236
}

declare !dbg !1237 void @yasm_error_set(i32 noundef, ptr noundef, ...) #2

declare !dbg !1241 void @yasm_errwarn_propagate(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @cv8_set_symhead_end(ptr noundef %head, ptr noundef %end_prevbc) #0 !dbg !1244 {
entry:
  %head.addr = alloca ptr, align 8
  %end_prevbc.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1248, metadata !DIExpression()), !dbg !1250
  store ptr %end_prevbc, ptr %end_prevbc.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %end_prevbc.addr, metadata !1249, metadata !DIExpression()), !dbg !1251
  %0 = load ptr, ptr %end_prevbc.addr, align 8, !dbg !1252, !tbaa !827
  %1 = load ptr, ptr %head.addr, align 8, !dbg !1253, !tbaa !827
  %end_prevbc1 = getelementptr inbounds %struct.cv8_symhead, ptr %1, i32 0, i32 2, !dbg !1254
  store ptr %0, ptr %end_prevbc1, align 8, !dbg !1255, !tbaa !1188
  ret void, !dbg !1256
}

declare !dbg !1257 ptr @yasm_section_bcs_last(ptr noundef) #2

declare !dbg !1260 ptr @yasm_bc_create_align(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !1263 ptr @yasm_expr_create(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !1266 ptr @yasm_expr_int(ptr noundef) #2

declare !dbg !1269 ptr @yasm_intnum_create_uint(i64 noundef) #2

declare !dbg !1273 void @yasm_bc_finalize(ptr noundef, ptr noundef) #2

declare !dbg !1274 ptr @yasm_cv__append_bc(ptr noundef, ptr noundef) #2

declare !dbg !1277 i32 @yasm_bc_calc_len(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @cv8_add_fileinfo(ptr noundef %sect, ptr noundef %fn) #0 !dbg !1278 {
entry:
  %sect.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %fi = alloca ptr, align 8
  %bc = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1282, metadata !DIExpression()), !dbg !1286
  store ptr %fn, ptr %fn.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !1283, metadata !DIExpression()), !dbg !1287
  call void @llvm.lifetime.start.p0(i64 8, ptr %fi) #7, !dbg !1288
  tail call void @llvm.dbg.declare(metadata ptr %fi, metadata !1284, metadata !DIExpression()), !dbg !1289
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #7, !dbg !1290
  tail call void @llvm.dbg.declare(metadata ptr %bc, metadata !1285, metadata !DIExpression()), !dbg !1291
  %0 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !1292, !tbaa !827
  %call = call ptr %0(i64 noundef 8), !dbg !1292
  store ptr %call, ptr %fi, align 8, !dbg !1293, !tbaa !827
  %1 = load ptr, ptr %fn.addr, align 8, !dbg !1294, !tbaa !827
  %2 = load ptr, ptr %fi, align 8, !dbg !1295, !tbaa !827
  %fn1 = getelementptr inbounds %struct.cv8_fileinfo, ptr %2, i32 0, i32 0, !dbg !1296
  store ptr %1, ptr %fn1, align 8, !dbg !1297, !tbaa !1298
  %3 = load ptr, ptr %fi, align 8, !dbg !1300, !tbaa !827
  %call2 = call ptr @yasm_bc_create_common(ptr noundef @cv8_fileinfo_bc_callback, ptr noundef %3, i64 noundef 0), !dbg !1301
  store ptr %call2, ptr %bc, align 8, !dbg !1302, !tbaa !827
  %4 = load ptr, ptr %bc, align 8, !dbg !1303, !tbaa !827
  %len = getelementptr inbounds %struct.yasm_bytecode, ptr %4, i32 0, i32 4, !dbg !1304
  store i64 24, ptr %len, align 8, !dbg !1305, !tbaa !949
  %5 = load ptr, ptr %sect.addr, align 8, !dbg !1306, !tbaa !827
  %6 = load ptr, ptr %bc, align 8, !dbg !1307, !tbaa !827
  %call3 = call ptr @yasm_cv__append_bc(ptr noundef %5, ptr noundef %6), !dbg !1308
  %7 = load ptr, ptr %bc, align 8, !dbg !1309, !tbaa !827
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #7, !dbg !1310
  call void @llvm.lifetime.end.p0(i64 8, ptr %fi) #7, !dbg !1310
  ret ptr %7, !dbg !1311
}

declare !dbg !1312 i32 @yasm_object_sections_traverse(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @cv_generate_line_section(ptr noundef %sect, ptr noundef %d) #0 !dbg !1318 {
entry:
  %retval = alloca i32, align 4
  %sect.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1320, metadata !DIExpression()), !dbg !1323
  store ptr %d, ptr %d.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !1321, metadata !DIExpression()), !dbg !1324
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #7, !dbg !1325
  tail call void @llvm.dbg.declare(metadata ptr %info, metadata !1322, metadata !DIExpression()), !dbg !1326
  %0 = load ptr, ptr %d.addr, align 8, !dbg !1327, !tbaa !827
  store ptr %0, ptr %info, align 8, !dbg !1326, !tbaa !827
  %1 = load ptr, ptr %sect.addr, align 8, !dbg !1328, !tbaa !827
  %call = call i32 @yasm_section_is_code(ptr noundef %1), !dbg !1330
  %tobool = icmp ne i32 %call, 0, !dbg !1330
  br i1 %tobool, label %if.end, label %if.then, !dbg !1331

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1332

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %info, align 8, !dbg !1333, !tbaa !827
  %cv8_cur_li = getelementptr inbounds %struct.cv_line_info, ptr %2, i32 0, i32 7, !dbg !1334
  store ptr null, ptr %cv8_cur_li, align 8, !dbg !1335, !tbaa !892
  %3 = load ptr, ptr %info, align 8, !dbg !1336, !tbaa !827
  %cv8_cur_ls = getelementptr inbounds %struct.cv_line_info, ptr %3, i32 0, i32 8, !dbg !1337
  store ptr null, ptr %cv8_cur_ls, align 8, !dbg !1338, !tbaa !895
  %4 = load ptr, ptr %sect.addr, align 8, !dbg !1339, !tbaa !827
  %5 = load ptr, ptr %info, align 8, !dbg !1340, !tbaa !827
  %errwarns = getelementptr inbounds %struct.cv_line_info, ptr %5, i32 0, i32 4, !dbg !1341
  %6 = load ptr, ptr %errwarns, align 8, !dbg !1341, !tbaa !876
  %7 = load ptr, ptr %info, align 8, !dbg !1342, !tbaa !827
  %call1 = call i32 @yasm_section_bcs_traverse(ptr noundef %4, ptr noundef %6, ptr noundef %7, ptr noundef @cv_generate_line_bc), !dbg !1343
  store i32 0, ptr %retval, align 4, !dbg !1344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1344

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #7, !dbg !1345
  %8 = load i32, ptr %retval, align 4, !dbg !1345
  ret i32 %8, !dbg !1345
}

declare !dbg !1346 ptr @yasm_bc_create_common(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @cv8_add_sym_objname(ptr noundef %sect, ptr noundef %objname) #0 !dbg !1349 {
entry:
  %sect.addr = alloca ptr, align 8
  %objname.addr = alloca ptr, align 8
  %bc = alloca ptr, align 8
  %cvs = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1353, metadata !DIExpression()), !dbg !1357
  store ptr %objname, ptr %objname.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %objname.addr, metadata !1354, metadata !DIExpression()), !dbg !1358
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #7, !dbg !1359
  tail call void @llvm.dbg.declare(metadata ptr %bc, metadata !1355, metadata !DIExpression()), !dbg !1360
  call void @llvm.lifetime.start.p0(i64 8, ptr %cvs) #7, !dbg !1361
  tail call void @llvm.dbg.declare(metadata ptr %cvs, metadata !1356, metadata !DIExpression()), !dbg !1362
  %0 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !1363, !tbaa !827
  %call = call ptr %0(i64 noundef 96), !dbg !1363
  store ptr %call, ptr %cvs, align 8, !dbg !1362, !tbaa !827
  %1 = load ptr, ptr %cvs, align 8, !dbg !1364, !tbaa !827
  %type = getelementptr inbounds %struct.cv_sym, ptr %1, i32 0, i32 0, !dbg !1365
  store i32 4353, ptr %type, align 8, !dbg !1366, !tbaa !1367
  %2 = load ptr, ptr %cvs, align 8, !dbg !1369, !tbaa !827
  %format = getelementptr inbounds %struct.cv_sym, ptr %2, i32 0, i32 1, !dbg !1370
  store ptr @.str.12, ptr %format, align 8, !dbg !1371, !tbaa !1372
  %3 = load ptr, ptr %cvs, align 8, !dbg !1373, !tbaa !827
  %args = getelementptr inbounds %struct.cv_sym, ptr %3, i32 0, i32 2, !dbg !1374
  %arrayidx = getelementptr inbounds [10 x %union.anon], ptr %args, i64 0, i64 0, !dbg !1373
  store i64 0, ptr %arrayidx, align 8, !dbg !1375, !tbaa !1376
  %4 = load ptr, ptr %objname.addr, align 8, !dbg !1377, !tbaa !827
  %5 = load ptr, ptr %cvs, align 8, !dbg !1378, !tbaa !827
  %args1 = getelementptr inbounds %struct.cv_sym, ptr %5, i32 0, i32 2, !dbg !1379
  %arrayidx2 = getelementptr inbounds [10 x %union.anon], ptr %args1, i64 0, i64 1, !dbg !1378
  store ptr %4, ptr %arrayidx2, align 8, !dbg !1380, !tbaa !1376
  %6 = load ptr, ptr %cvs, align 8, !dbg !1381, !tbaa !827
  %call3 = call ptr @yasm_bc_create_common(ptr noundef @cv_sym_bc_callback, ptr noundef %6, i64 noundef 0), !dbg !1382
  store ptr %call3, ptr %bc, align 8, !dbg !1383, !tbaa !827
  %7 = load ptr, ptr %cvs, align 8, !dbg !1384, !tbaa !827
  %call4 = call i64 @cv_sym_size(ptr noundef %7), !dbg !1385
  %8 = load ptr, ptr %bc, align 8, !dbg !1386, !tbaa !827
  %len = getelementptr inbounds %struct.yasm_bytecode, ptr %8, i32 0, i32 4, !dbg !1387
  store i64 %call4, ptr %len, align 8, !dbg !1388, !tbaa !949
  %9 = load ptr, ptr %sect.addr, align 8, !dbg !1389, !tbaa !827
  %10 = load ptr, ptr %bc, align 8, !dbg !1390, !tbaa !827
  %call5 = call ptr @yasm_cv__append_bc(ptr noundef %9, ptr noundef %10), !dbg !1391
  %11 = load ptr, ptr %cvs, align 8, !dbg !1392, !tbaa !827
  call void @llvm.lifetime.end.p0(i64 8, ptr %cvs) #7, !dbg !1393
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #7, !dbg !1393
  ret ptr %11, !dbg !1394
}

declare !dbg !1395 ptr @yasm__abspath(ptr noundef) #2

; Function Attrs: nounwind
declare !dbg !1399 ptr @getenv(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @cv8_add_sym_compile(ptr noundef %object, ptr noundef %sect, ptr noundef %creator) #0 !dbg !1401 {
entry:
  %object.addr = alloca ptr, align 8
  %sect.addr = alloca ptr, align 8
  %creator.addr = alloca ptr, align 8
  %bc = alloca ptr, align 8
  %cvs = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1405, metadata !DIExpression()), !dbg !1410
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !1406, metadata !DIExpression()), !dbg !1411
  store ptr %creator, ptr %creator.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %creator.addr, metadata !1407, metadata !DIExpression()), !dbg !1412
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #7, !dbg !1413
  tail call void @llvm.dbg.declare(metadata ptr %bc, metadata !1408, metadata !DIExpression()), !dbg !1414
  call void @llvm.lifetime.start.p0(i64 8, ptr %cvs) #7, !dbg !1415
  tail call void @llvm.dbg.declare(metadata ptr %cvs, metadata !1409, metadata !DIExpression()), !dbg !1416
  %0 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !1417, !tbaa !827
  %call = call ptr %0(i64 noundef 96), !dbg !1417
  store ptr %call, ptr %cvs, align 8, !dbg !1416, !tbaa !827
  %1 = load ptr, ptr %cvs, align 8, !dbg !1418, !tbaa !827
  %type = getelementptr inbounds %struct.cv_sym, ptr %1, i32 0, i32 0, !dbg !1419
  store i32 4374, ptr %type, align 8, !dbg !1420, !tbaa !1367
  %2 = load ptr, ptr %cvs, align 8, !dbg !1421, !tbaa !827
  %format = getelementptr inbounds %struct.cv_sym, ptr %2, i32 0, i32 1, !dbg !1422
  store ptr @.str.16, ptr %format, align 8, !dbg !1423, !tbaa !1372
  %3 = load ptr, ptr %cvs, align 8, !dbg !1424, !tbaa !827
  %args = getelementptr inbounds %struct.cv_sym, ptr %3, i32 0, i32 2, !dbg !1425
  %arrayidx = getelementptr inbounds [10 x %union.anon], ptr %args, i64 0, i64 0, !dbg !1424
  store i64 3, ptr %arrayidx, align 8, !dbg !1426, !tbaa !1376
  %4 = load ptr, ptr %object.addr, align 8, !dbg !1427, !tbaa !827
  %arch = getelementptr inbounds %struct.yasm_object, ptr %4, i32 0, i32 3, !dbg !1427
  %5 = load ptr, ptr %arch, align 8, !dbg !1427, !tbaa !1429
  %module = getelementptr inbounds %struct.yasm_arch_base, ptr %5, i32 0, i32 0, !dbg !1427
  %6 = load ptr, ptr %module, align 8, !dbg !1427, !tbaa !1430
  %keyword = getelementptr inbounds %struct.yasm_arch_module, ptr %6, i32 0, i32 1, !dbg !1427
  %7 = load ptr, ptr %keyword, align 8, !dbg !1427, !tbaa !1432
  %call1 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.17) #8, !dbg !1434
  %cmp = icmp eq i32 %call1, 0, !dbg !1435
  br i1 %cmp, label %if.then, label %if.else13, !dbg !1436

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %object.addr, align 8, !dbg !1437, !tbaa !827
  %arch2 = getelementptr inbounds %struct.yasm_object, ptr %8, i32 0, i32 3, !dbg !1437
  %9 = load ptr, ptr %arch2, align 8, !dbg !1437, !tbaa !1429
  %module3 = getelementptr inbounds %struct.yasm_arch_base, ptr %9, i32 0, i32 0, !dbg !1437
  %10 = load ptr, ptr %module3, align 8, !dbg !1437, !tbaa !1430
  %get_machine = getelementptr inbounds %struct.yasm_arch_module, ptr %10, i32 0, i32 5, !dbg !1437
  %11 = load ptr, ptr %get_machine, align 8, !dbg !1437, !tbaa !1440
  %12 = load ptr, ptr %object.addr, align 8, !dbg !1437, !tbaa !827
  %arch4 = getelementptr inbounds %struct.yasm_object, ptr %12, i32 0, i32 3, !dbg !1437
  %13 = load ptr, ptr %arch4, align 8, !dbg !1437, !tbaa !1429
  %call5 = call ptr %11(ptr noundef %13), !dbg !1437
  %call6 = call i32 @strcmp(ptr noundef %call5, ptr noundef @.str.18) #8, !dbg !1441
  %cmp7 = icmp eq i32 %call6, 0, !dbg !1442
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !1443

if.then8:                                         ; preds = %if.then
  %14 = load ptr, ptr %cvs, align 8, !dbg !1444, !tbaa !827
  %args9 = getelementptr inbounds %struct.cv_sym, ptr %14, i32 0, i32 2, !dbg !1445
  %arrayidx10 = getelementptr inbounds [10 x %union.anon], ptr %args9, i64 0, i64 1, !dbg !1444
  store i64 208, ptr %arrayidx10, align 8, !dbg !1446, !tbaa !1376
  br label %if.end, !dbg !1444

if.else:                                          ; preds = %if.then
  %15 = load ptr, ptr %cvs, align 8, !dbg !1447, !tbaa !827
  %args11 = getelementptr inbounds %struct.cv_sym, ptr %15, i32 0, i32 2, !dbg !1448
  %arrayidx12 = getelementptr inbounds [10 x %union.anon], ptr %args11, i64 0, i64 1, !dbg !1447
  store i64 6, ptr %arrayidx12, align 8, !dbg !1449, !tbaa !1376
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  br label %if.end16, !dbg !1450

if.else13:                                        ; preds = %entry
  %16 = load ptr, ptr %cvs, align 8, !dbg !1451, !tbaa !827
  %args14 = getelementptr inbounds %struct.cv_sym, ptr %16, i32 0, i32 2, !dbg !1452
  %arrayidx15 = getelementptr inbounds [10 x %union.anon], ptr %args14, i64 0, i64 1, !dbg !1451
  store i64 0, ptr %arrayidx15, align 8, !dbg !1453, !tbaa !1376
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.end
  %17 = load ptr, ptr %cvs, align 8, !dbg !1454, !tbaa !827
  %args17 = getelementptr inbounds %struct.cv_sym, ptr %17, i32 0, i32 2, !dbg !1455
  %arrayidx18 = getelementptr inbounds [10 x %union.anon], ptr %args17, i64 0, i64 2, !dbg !1454
  store i64 0, ptr %arrayidx18, align 8, !dbg !1456, !tbaa !1376
  %18 = load ptr, ptr %cvs, align 8, !dbg !1457, !tbaa !827
  %args19 = getelementptr inbounds %struct.cv_sym, ptr %18, i32 0, i32 2, !dbg !1458
  %arrayidx20 = getelementptr inbounds [10 x %union.anon], ptr %args19, i64 0, i64 3, !dbg !1457
  store i64 0, ptr %arrayidx20, align 8, !dbg !1459, !tbaa !1376
  %19 = load ptr, ptr %creator.addr, align 8, !dbg !1460, !tbaa !827
  %20 = load ptr, ptr %cvs, align 8, !dbg !1461, !tbaa !827
  %args21 = getelementptr inbounds %struct.cv_sym, ptr %20, i32 0, i32 2, !dbg !1462
  %arrayidx22 = getelementptr inbounds [10 x %union.anon], ptr %args21, i64 0, i64 4, !dbg !1461
  store ptr %19, ptr %arrayidx22, align 8, !dbg !1463, !tbaa !1376
  %21 = load ptr, ptr %cvs, align 8, !dbg !1464, !tbaa !827
  %args23 = getelementptr inbounds %struct.cv_sym, ptr %21, i32 0, i32 2, !dbg !1465
  %arrayidx24 = getelementptr inbounds [10 x %union.anon], ptr %args23, i64 0, i64 5, !dbg !1464
  store i64 0, ptr %arrayidx24, align 8, !dbg !1466, !tbaa !1376
  %22 = load ptr, ptr %cvs, align 8, !dbg !1467, !tbaa !827
  %call25 = call ptr @yasm_bc_create_common(ptr noundef @cv_sym_bc_callback, ptr noundef %22, i64 noundef 0), !dbg !1468
  store ptr %call25, ptr %bc, align 8, !dbg !1469, !tbaa !827
  %23 = load ptr, ptr %cvs, align 8, !dbg !1470, !tbaa !827
  %call26 = call i64 @cv_sym_size(ptr noundef %23), !dbg !1471
  %24 = load ptr, ptr %bc, align 8, !dbg !1472, !tbaa !827
  %len = getelementptr inbounds %struct.yasm_bytecode, ptr %24, i32 0, i32 4, !dbg !1473
  store i64 %call26, ptr %len, align 8, !dbg !1474, !tbaa !949
  %25 = load ptr, ptr %sect.addr, align 8, !dbg !1475, !tbaa !827
  %26 = load ptr, ptr %bc, align 8, !dbg !1476, !tbaa !827
  %call27 = call ptr @yasm_cv__append_bc(ptr noundef %25, ptr noundef %26), !dbg !1477
  %27 = load ptr, ptr %cvs, align 8, !dbg !1478, !tbaa !827
  call void @llvm.lifetime.end.p0(i64 8, ptr %cvs) #7, !dbg !1479
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #7, !dbg !1479
  ret ptr %27, !dbg !1480
}

declare !dbg !1481 ptr @yasm__xstrdup(ptr noundef) #2

declare !dbg !1482 i32 @yasm_symtab_traverse(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @cv_generate_sym(ptr noundef %sym, ptr noundef %d) #0 !dbg !1489 {
entry:
  %retval = alloca i32, align 4
  %sym.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %precbc = alloca ptr, align 8
  %name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sym, ptr %sym.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %sym.addr, metadata !1491, metadata !DIExpression()), !dbg !1496
  store ptr %d, ptr %d.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !1492, metadata !DIExpression()), !dbg !1497
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #7, !dbg !1498
  tail call void @llvm.dbg.declare(metadata ptr %info, metadata !1493, metadata !DIExpression()), !dbg !1499
  %0 = load ptr, ptr %d.addr, align 8, !dbg !1500, !tbaa !827
  store ptr %0, ptr %info, align 8, !dbg !1499, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %precbc) #7, !dbg !1501
  tail call void @llvm.dbg.declare(metadata ptr %precbc, metadata !1494, metadata !DIExpression()), !dbg !1502
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #7, !dbg !1503
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !1495, metadata !DIExpression()), !dbg !1504
  %1 = load ptr, ptr %sym.addr, align 8, !dbg !1505, !tbaa !827
  %call = call ptr @yasm_symrec_get_name(ptr noundef %1), !dbg !1506
  store ptr %call, ptr %name, align 8, !dbg !1504, !tbaa !827
  %2 = load ptr, ptr %name, align 8, !dbg !1507, !tbaa !827
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0, !dbg !1507
  %3 = load i8, ptr %arrayidx, align 1, !dbg !1507, !tbaa !1376
  %conv = sext i8 %3 to i32, !dbg !1507
  %cmp = icmp eq i32 %conv, 46, !dbg !1509
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1510

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %sym.addr, align 8, !dbg !1511, !tbaa !827
  %call2 = call i32 @yasm_symrec_get_label(ptr noundef %4, ptr noundef %precbc), !dbg !1512
  %tobool = icmp ne i32 %call2, 0, !dbg !1512
  br i1 %tobool, label %if.end, label %if.then, !dbg !1513

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !1514
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1514

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %precbc, align 8, !dbg !1515, !tbaa !827
  %call3 = call ptr @yasm_bc_get_section(ptr noundef %5), !dbg !1517
  %call4 = call i32 @yasm_section_is_code(ptr noundef %call3), !dbg !1518
  %tobool5 = icmp ne i32 %call4, 0, !dbg !1518
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !1519

if.then6:                                         ; preds = %if.end
  %6 = load ptr, ptr %info, align 8, !dbg !1520, !tbaa !827
  %debug_symline = getelementptr inbounds %struct.cv_line_info, ptr %6, i32 0, i32 0, !dbg !1521
  %7 = load ptr, ptr %debug_symline, align 8, !dbg !1521, !tbaa !881
  %8 = load ptr, ptr %sym.addr, align 8, !dbg !1522, !tbaa !827
  %call7 = call ptr @cv8_add_sym_label(ptr noundef %7, ptr noundef %8), !dbg !1523
  br label %if.end12, !dbg !1523

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %info, align 8, !dbg !1524, !tbaa !827
  %debug_symline8 = getelementptr inbounds %struct.cv_line_info, ptr %9, i32 0, i32 0, !dbg !1525
  %10 = load ptr, ptr %debug_symline8, align 8, !dbg !1525, !tbaa !881
  %11 = load ptr, ptr %sym.addr, align 8, !dbg !1526, !tbaa !827
  %12 = load ptr, ptr %sym.addr, align 8, !dbg !1527, !tbaa !827
  %call9 = call i32 @yasm_symrec_get_visibility(ptr noundef %12), !dbg !1528
  %and = and i32 %call9, 1, !dbg !1529
  %tobool10 = icmp ne i32 %and, 0, !dbg !1528
  %13 = zext i1 %tobool10 to i64, !dbg !1528
  %cond = select i1 %tobool10, i32 1, i32 0, !dbg !1528
  %call11 = call ptr @cv8_add_sym_data(ptr noundef %10, i64 noundef 32, ptr noundef %11, i32 noundef %cond), !dbg !1530
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then6
  store i32 0, ptr %retval, align 4, !dbg !1531
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1531

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #7, !dbg !1532
  call void @llvm.lifetime.end.p0(i64 8, ptr %precbc) #7, !dbg !1532
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #7, !dbg !1532
  %14 = load i32, ptr %retval, align 4, !dbg !1532
  ret i32 %14, !dbg !1532
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i64 @cv_dbgfmt_add_file(ptr noundef %dbgfmt_cv, i64 noundef %filenum, ptr noundef %filename) #0 !dbg !1533 {
entry:
  %dbgfmt_cv.addr = alloca ptr, align 8
  %filenum.addr = alloca i64, align 8
  %filename.addr = alloca ptr, align 8
  %pathname = alloca ptr, align 8
  %i = alloca i64, align 8
  %context = alloca %struct.yasm_md5_context, align 8
  %f = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %len = alloca i64, align 8
  %old_allocated = alloca i64, align 8
  store ptr %dbgfmt_cv, ptr %dbgfmt_cv.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %dbgfmt_cv.addr, metadata !1537, metadata !DIExpression()), !dbg !1561
  store i64 %filenum, ptr %filenum.addr, align 8, !tbaa !902
  tail call void @llvm.dbg.declare(metadata ptr %filenum.addr, metadata !1538, metadata !DIExpression()), !dbg !1562
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !1539, metadata !DIExpression()), !dbg !1563
  call void @llvm.lifetime.start.p0(i64 8, ptr %pathname) #7, !dbg !1564
  tail call void @llvm.dbg.declare(metadata ptr %pathname, metadata !1540, metadata !DIExpression()), !dbg !1565
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7, !dbg !1566
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1541, metadata !DIExpression()), !dbg !1567
  call void @llvm.lifetime.start.p0(i64 112, ptr %context) #7, !dbg !1568
  tail call void @llvm.dbg.declare(metadata ptr %context, metadata !1542, metadata !DIExpression()), !dbg !1569
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #7, !dbg !1570
  tail call void @llvm.dbg.declare(metadata ptr %f, metadata !1555, metadata !DIExpression()), !dbg !1571
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #7, !dbg !1572
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !1556, metadata !DIExpression()), !dbg !1573
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7, !dbg !1574
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !1557, metadata !DIExpression()), !dbg !1575
  %0 = load i64, ptr %filenum.addr, align 8, !dbg !1576, !tbaa !902
  %cmp = icmp eq i64 %0, 0, !dbg !1578
  br i1 %cmp, label %if.then, label %if.else, !dbg !1579

if.then:                                          ; preds = %entry
  br label %for.cond, !dbg !1580

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i64, ptr %filenum.addr, align 8, !dbg !1582, !tbaa !902
  %2 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1585, !tbaa !827
  %filenames_size = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %2, i32 0, i32 2, !dbg !1586
  %3 = load i64, ptr %filenames_size, align 8, !dbg !1586, !tbaa !911
  %cmp1 = icmp ult i64 %1, %3, !dbg !1587
  br i1 %cmp1, label %for.body, label %for.end, !dbg !1588

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1589, !tbaa !827
  %filenames = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %4, i32 0, i32 1, !dbg !1592
  %5 = load ptr, ptr %filenames, align 8, !dbg !1592, !tbaa !920
  %6 = load i64, ptr %filenum.addr, align 8, !dbg !1593, !tbaa !902
  %arrayidx = getelementptr inbounds %struct.cv_filename, ptr %5, i64 %6, !dbg !1589
  %filename2 = getelementptr inbounds %struct.cv_filename, ptr %arrayidx, i32 0, i32 1, !dbg !1594
  %7 = load ptr, ptr %filename2, align 8, !dbg !1594, !tbaa !1595
  %tobool = icmp ne ptr %7, null, !dbg !1589
  br i1 %tobool, label %lor.lhs.false, label %if.then7, !dbg !1596

lor.lhs.false:                                    ; preds = %for.body
  %8 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1597, !tbaa !827
  %filenames3 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %8, i32 0, i32 1, !dbg !1598
  %9 = load ptr, ptr %filenames3, align 8, !dbg !1598, !tbaa !920
  %10 = load i64, ptr %filenum.addr, align 8, !dbg !1599, !tbaa !902
  %arrayidx4 = getelementptr inbounds %struct.cv_filename, ptr %9, i64 %10, !dbg !1597
  %filename5 = getelementptr inbounds %struct.cv_filename, ptr %arrayidx4, i32 0, i32 1, !dbg !1600
  %11 = load ptr, ptr %filename5, align 8, !dbg !1600, !tbaa !1595
  %12 = load ptr, ptr %filename.addr, align 8, !dbg !1601, !tbaa !827
  %call = call i32 @strcmp(ptr noundef %11, ptr noundef %12) #8, !dbg !1602
  %cmp6 = icmp eq i32 %call, 0, !dbg !1603
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !1604

if.then7:                                         ; preds = %lor.lhs.false, %for.body
  br label %for.end, !dbg !1605

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc, !dbg !1606

for.inc:                                          ; preds = %if.end
  %13 = load i64, ptr %filenum.addr, align 8, !dbg !1607, !tbaa !902
  %inc = add i64 %13, 1, !dbg !1607
  store i64 %inc, ptr %filenum.addr, align 8, !dbg !1607, !tbaa !902
  br label %for.cond, !dbg !1608, !llvm.loop !1609

for.end:                                          ; preds = %if.then7, %for.cond
  br label %if.end8, !dbg !1611

if.else:                                          ; preds = %entry
  %14 = load i64, ptr %filenum.addr, align 8, !dbg !1612, !tbaa !902
  %dec = add i64 %14, -1, !dbg !1612
  store i64 %dec, ptr %filenum.addr, align 8, !dbg !1612, !tbaa !902
  br label %if.end8

if.end8:                                          ; preds = %if.else, %for.end
  %15 = load i64, ptr %filenum.addr, align 8, !dbg !1613, !tbaa !902
  %16 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1614, !tbaa !827
  %filenames_allocated = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %16, i32 0, i32 3, !dbg !1615
  %17 = load i64, ptr %filenames_allocated, align 8, !dbg !1615, !tbaa !1616
  %cmp9 = icmp uge i64 %15, %17, !dbg !1617
  br i1 %cmp9, label %if.then10, label %if.end34, !dbg !1618

if.then10:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_allocated) #7, !dbg !1619
  tail call void @llvm.dbg.declare(metadata ptr %old_allocated, metadata !1558, metadata !DIExpression()), !dbg !1620
  %18 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1621, !tbaa !827
  %filenames_allocated11 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %18, i32 0, i32 3, !dbg !1622
  %19 = load i64, ptr %filenames_allocated11, align 8, !dbg !1622, !tbaa !1616
  store i64 %19, ptr %old_allocated, align 8, !dbg !1620, !tbaa !902
  %20 = load i64, ptr %filenum.addr, align 8, !dbg !1623, !tbaa !902
  %add = add i64 %20, 32, !dbg !1624
  %21 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1625, !tbaa !827
  %filenames_allocated12 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %21, i32 0, i32 3, !dbg !1626
  store i64 %add, ptr %filenames_allocated12, align 8, !dbg !1627, !tbaa !1616
  %22 = load ptr, ptr @yasm_xrealloc, align 8, !dbg !1628, !tbaa !827
  %23 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1629, !tbaa !827
  %filenames13 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %23, i32 0, i32 1, !dbg !1630
  %24 = load ptr, ptr %filenames13, align 8, !dbg !1630, !tbaa !920
  %25 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1631, !tbaa !827
  %filenames_allocated14 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %25, i32 0, i32 3, !dbg !1632
  %26 = load i64, ptr %filenames_allocated14, align 8, !dbg !1632, !tbaa !1616
  %mul = mul i64 48, %26, !dbg !1633
  %call15 = call ptr %22(ptr noundef %24, i64 noundef %mul), !dbg !1628
  %27 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1634, !tbaa !827
  %filenames16 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %27, i32 0, i32 1, !dbg !1635
  store ptr %call15, ptr %filenames16, align 8, !dbg !1636, !tbaa !920
  %28 = load i64, ptr %old_allocated, align 8, !dbg !1637, !tbaa !902
  store i64 %28, ptr %i, align 8, !dbg !1639, !tbaa !902
  br label %for.cond17, !dbg !1640

for.cond17:                                       ; preds = %for.inc31, %if.then10
  %29 = load i64, ptr %i, align 8, !dbg !1641, !tbaa !902
  %30 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1643, !tbaa !827
  %filenames_allocated18 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %30, i32 0, i32 3, !dbg !1644
  %31 = load i64, ptr %filenames_allocated18, align 8, !dbg !1644, !tbaa !1616
  %cmp19 = icmp ult i64 %29, %31, !dbg !1645
  br i1 %cmp19, label %for.body20, label %for.end33, !dbg !1646

for.body20:                                       ; preds = %for.cond17
  %32 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1647, !tbaa !827
  %filenames21 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %32, i32 0, i32 1, !dbg !1649
  %33 = load ptr, ptr %filenames21, align 8, !dbg !1649, !tbaa !920
  %34 = load i64, ptr %i, align 8, !dbg !1650, !tbaa !902
  %arrayidx22 = getelementptr inbounds %struct.cv_filename, ptr %33, i64 %34, !dbg !1647
  %pathname23 = getelementptr inbounds %struct.cv_filename, ptr %arrayidx22, i32 0, i32 0, !dbg !1651
  store ptr null, ptr %pathname23, align 8, !dbg !1652, !tbaa !923
  %35 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1653, !tbaa !827
  %filenames24 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %35, i32 0, i32 1, !dbg !1654
  %36 = load ptr, ptr %filenames24, align 8, !dbg !1654, !tbaa !920
  %37 = load i64, ptr %i, align 8, !dbg !1655, !tbaa !902
  %arrayidx25 = getelementptr inbounds %struct.cv_filename, ptr %36, i64 %37, !dbg !1653
  %filename26 = getelementptr inbounds %struct.cv_filename, ptr %arrayidx25, i32 0, i32 1, !dbg !1656
  store ptr null, ptr %filename26, align 8, !dbg !1657, !tbaa !1595
  %38 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1658, !tbaa !827
  %filenames27 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %38, i32 0, i32 1, !dbg !1659
  %39 = load ptr, ptr %filenames27, align 8, !dbg !1659, !tbaa !920
  %40 = load i64, ptr %i, align 8, !dbg !1660, !tbaa !902
  %arrayidx28 = getelementptr inbounds %struct.cv_filename, ptr %39, i64 %40, !dbg !1658
  %str_off = getelementptr inbounds %struct.cv_filename, ptr %arrayidx28, i32 0, i32 2, !dbg !1661
  store i64 0, ptr %str_off, align 8, !dbg !1662, !tbaa !946
  %41 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1663, !tbaa !827
  %filenames29 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %41, i32 0, i32 1, !dbg !1664
  %42 = load ptr, ptr %filenames29, align 8, !dbg !1664, !tbaa !920
  %43 = load i64, ptr %i, align 8, !dbg !1665, !tbaa !902
  %arrayidx30 = getelementptr inbounds %struct.cv_filename, ptr %42, i64 %43, !dbg !1663
  %info_off = getelementptr inbounds %struct.cv_filename, ptr %arrayidx30, i32 0, i32 3, !dbg !1666
  store i64 0, ptr %info_off, align 8, !dbg !1667, !tbaa !1006
  br label %for.inc31, !dbg !1668

for.inc31:                                        ; preds = %for.body20
  %44 = load i64, ptr %i, align 8, !dbg !1669, !tbaa !902
  %inc32 = add i64 %44, 1, !dbg !1669
  store i64 %inc32, ptr %i, align 8, !dbg !1669, !tbaa !902
  br label %for.cond17, !dbg !1670, !llvm.loop !1671

for.end33:                                        ; preds = %for.cond17
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_allocated) #7, !dbg !1673
  br label %if.end34, !dbg !1674

if.end34:                                         ; preds = %for.end33, %if.end8
  %45 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !1675, !tbaa !827
  %call35 = call ptr %45(i64 noundef 1024), !dbg !1675
  store ptr %call35, ptr %buf, align 8, !dbg !1676, !tbaa !827
  call void @yasm_md5_init(ptr noundef %context), !dbg !1677
  %46 = load ptr, ptr %filename.addr, align 8, !dbg !1678, !tbaa !827
  %call36 = call noalias ptr @fopen(ptr noundef %46, ptr noundef @.str.6), !dbg !1679
  store ptr %call36, ptr %f, align 8, !dbg !1680, !tbaa !827
  %47 = load ptr, ptr %f, align 8, !dbg !1681, !tbaa !827
  %tobool37 = icmp ne ptr %47, null, !dbg !1681
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !1683

if.then38:                                        ; preds = %if.end34
  call void (ptr, ...) @yasm__fatal(ptr noundef @.str.7), !dbg !1684
  br label %if.end39, !dbg !1684

if.end39:                                         ; preds = %if.then38, %if.end34
  br label %while.cond, !dbg !1685

while.cond:                                       ; preds = %while.body, %if.end39
  %48 = load ptr, ptr %buf, align 8, !dbg !1686, !tbaa !827
  %49 = load ptr, ptr %f, align 8, !dbg !1687, !tbaa !827
  %call40 = call i64 @fread(ptr noundef %48, i64 noundef 1, i64 noundef 1024, ptr noundef %49), !dbg !1688
  store i64 %call40, ptr %len, align 8, !dbg !1689, !tbaa !902
  %cmp41 = icmp ugt i64 %call40, 0, !dbg !1690
  br i1 %cmp41, label %while.body, label %while.end, !dbg !1685

while.body:                                       ; preds = %while.cond
  %50 = load ptr, ptr %buf, align 8, !dbg !1691, !tbaa !827
  %51 = load i64, ptr %len, align 8, !dbg !1692, !tbaa !902
  call void @yasm_md5_update(ptr noundef %context, ptr noundef %50, i64 noundef %51), !dbg !1693
  br label %while.cond, !dbg !1685, !llvm.loop !1694

while.end:                                        ; preds = %while.cond
  %52 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1696, !tbaa !827
  %filenames42 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %52, i32 0, i32 1, !dbg !1697
  %53 = load ptr, ptr %filenames42, align 8, !dbg !1697, !tbaa !920
  %54 = load i64, ptr %filenum.addr, align 8, !dbg !1698, !tbaa !902
  %arrayidx43 = getelementptr inbounds %struct.cv_filename, ptr %53, i64 %54, !dbg !1696
  %digest = getelementptr inbounds %struct.cv_filename, ptr %arrayidx43, i32 0, i32 4, !dbg !1699
  %arraydecay = getelementptr inbounds [16 x i8], ptr %digest, i64 0, i64 0, !dbg !1696
  call void @yasm_md5_final(ptr noundef %arraydecay, ptr noundef %context), !dbg !1700
  %55 = load ptr, ptr %f, align 8, !dbg !1701, !tbaa !827
  %call44 = call i32 @fclose(ptr noundef %55), !dbg !1702
  %56 = load ptr, ptr @yasm_xfree, align 8, !dbg !1703, !tbaa !827
  %57 = load ptr, ptr %buf, align 8, !dbg !1704, !tbaa !827
  call void %56(ptr noundef %57), !dbg !1703
  %58 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1705, !tbaa !827
  %filenames45 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %58, i32 0, i32 1, !dbg !1707
  %59 = load ptr, ptr %filenames45, align 8, !dbg !1707, !tbaa !920
  %60 = load i64, ptr %filenum.addr, align 8, !dbg !1708, !tbaa !902
  %arrayidx46 = getelementptr inbounds %struct.cv_filename, ptr %59, i64 %60, !dbg !1705
  %pathname47 = getelementptr inbounds %struct.cv_filename, ptr %arrayidx46, i32 0, i32 0, !dbg !1709
  %61 = load ptr, ptr %pathname47, align 8, !dbg !1709, !tbaa !923
  %tobool48 = icmp ne ptr %61, null, !dbg !1705
  br i1 %tobool48, label %if.then49, label %if.end53, !dbg !1710

if.then49:                                        ; preds = %while.end
  %62 = load ptr, ptr @yasm_xfree, align 8, !dbg !1711, !tbaa !827
  %63 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1712, !tbaa !827
  %filenames50 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %63, i32 0, i32 1, !dbg !1713
  %64 = load ptr, ptr %filenames50, align 8, !dbg !1713, !tbaa !920
  %65 = load i64, ptr %filenum.addr, align 8, !dbg !1714, !tbaa !902
  %arrayidx51 = getelementptr inbounds %struct.cv_filename, ptr %64, i64 %65, !dbg !1712
  %pathname52 = getelementptr inbounds %struct.cv_filename, ptr %arrayidx51, i32 0, i32 0, !dbg !1715
  %66 = load ptr, ptr %pathname52, align 8, !dbg !1715, !tbaa !923
  call void %62(ptr noundef %66), !dbg !1711
  br label %if.end53, !dbg !1711

if.end53:                                         ; preds = %if.then49, %while.end
  %67 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1716, !tbaa !827
  %filenames54 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %67, i32 0, i32 1, !dbg !1718
  %68 = load ptr, ptr %filenames54, align 8, !dbg !1718, !tbaa !920
  %69 = load i64, ptr %filenum.addr, align 8, !dbg !1719, !tbaa !902
  %arrayidx55 = getelementptr inbounds %struct.cv_filename, ptr %68, i64 %69, !dbg !1716
  %filename56 = getelementptr inbounds %struct.cv_filename, ptr %arrayidx55, i32 0, i32 1, !dbg !1720
  %70 = load ptr, ptr %filename56, align 8, !dbg !1720, !tbaa !1595
  %tobool57 = icmp ne ptr %70, null, !dbg !1716
  br i1 %tobool57, label %if.then58, label %if.end62, !dbg !1721

if.then58:                                        ; preds = %if.end53
  %71 = load ptr, ptr @yasm_xfree, align 8, !dbg !1722, !tbaa !827
  %72 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1723, !tbaa !827
  %filenames59 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %72, i32 0, i32 1, !dbg !1724
  %73 = load ptr, ptr %filenames59, align 8, !dbg !1724, !tbaa !920
  %74 = load i64, ptr %filenum.addr, align 8, !dbg !1725, !tbaa !902
  %arrayidx60 = getelementptr inbounds %struct.cv_filename, ptr %73, i64 %74, !dbg !1723
  %filename61 = getelementptr inbounds %struct.cv_filename, ptr %arrayidx60, i32 0, i32 1, !dbg !1726
  %75 = load ptr, ptr %filename61, align 8, !dbg !1726, !tbaa !1595
  call void %71(ptr noundef %75), !dbg !1722
  br label %if.end62, !dbg !1722

if.end62:                                         ; preds = %if.then58, %if.end53
  %76 = load ptr, ptr %filename.addr, align 8, !dbg !1727, !tbaa !827
  %call63 = call ptr @yasm__abspath(ptr noundef %76), !dbg !1728
  store ptr %call63, ptr %pathname, align 8, !dbg !1729, !tbaa !827
  %77 = load ptr, ptr %pathname, align 8, !dbg !1730, !tbaa !827
  %78 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1731, !tbaa !827
  %filenames64 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %78, i32 0, i32 1, !dbg !1732
  %79 = load ptr, ptr %filenames64, align 8, !dbg !1732, !tbaa !920
  %80 = load i64, ptr %filenum.addr, align 8, !dbg !1733, !tbaa !902
  %arrayidx65 = getelementptr inbounds %struct.cv_filename, ptr %79, i64 %80, !dbg !1731
  %pathname66 = getelementptr inbounds %struct.cv_filename, ptr %arrayidx65, i32 0, i32 0, !dbg !1734
  store ptr %77, ptr %pathname66, align 8, !dbg !1735, !tbaa !923
  %81 = load ptr, ptr %filename.addr, align 8, !dbg !1736, !tbaa !827
  %call67 = call ptr @yasm__xstrdup(ptr noundef %81), !dbg !1737
  %82 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1738, !tbaa !827
  %filenames68 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %82, i32 0, i32 1, !dbg !1739
  %83 = load ptr, ptr %filenames68, align 8, !dbg !1739, !tbaa !920
  %84 = load i64, ptr %filenum.addr, align 8, !dbg !1740, !tbaa !902
  %arrayidx69 = getelementptr inbounds %struct.cv_filename, ptr %83, i64 %84, !dbg !1738
  %filename70 = getelementptr inbounds %struct.cv_filename, ptr %arrayidx69, i32 0, i32 1, !dbg !1741
  store ptr %call67, ptr %filename70, align 8, !dbg !1742, !tbaa !1595
  %85 = load i64, ptr %filenum.addr, align 8, !dbg !1743, !tbaa !902
  %86 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1745, !tbaa !827
  %filenames_size71 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %86, i32 0, i32 2, !dbg !1746
  %87 = load i64, ptr %filenames_size71, align 8, !dbg !1746, !tbaa !911
  %cmp72 = icmp uge i64 %85, %87, !dbg !1747
  br i1 %cmp72, label %if.then73, label %if.end76, !dbg !1748

if.then73:                                        ; preds = %if.end62
  %88 = load i64, ptr %filenum.addr, align 8, !dbg !1749, !tbaa !902
  %add74 = add i64 %88, 1, !dbg !1750
  %89 = load ptr, ptr %dbgfmt_cv.addr, align 8, !dbg !1751, !tbaa !827
  %filenames_size75 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %89, i32 0, i32 2, !dbg !1752
  store i64 %add74, ptr %filenames_size75, align 8, !dbg !1753, !tbaa !911
  br label %if.end76, !dbg !1751

if.end76:                                         ; preds = %if.then73, %if.end62
  %90 = load i64, ptr %filenum.addr, align 8, !dbg !1754, !tbaa !902
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7, !dbg !1755
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #7, !dbg !1755
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #7, !dbg !1755
  call void @llvm.lifetime.end.p0(i64 112, ptr %context) #7, !dbg !1755
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7, !dbg !1755
  call void @llvm.lifetime.end.p0(i64 8, ptr %pathname) #7, !dbg !1755
  ret i64 %90, !dbg !1756
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1757 i32 @strcmp(ptr noundef, ptr noundef) #4

declare !dbg !1761 void @yasm_md5_init(ptr noundef) #2

declare !dbg !1765 noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare !dbg !1770 void @yasm__fatal(ptr noundef, ...) #2

declare !dbg !1773 i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare !dbg !1778 void @yasm_md5_update(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !1781 void @yasm_md5_final(ptr noundef, ptr noundef) #2

declare !dbg !1784 i32 @fclose(ptr noundef) #2

declare !dbg !1787 ptr @yasm_dvs_append(ptr noundef, ptr noundef) #2

declare !dbg !1793 ptr @yasm_dv_create_raw(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1796 i64 @strlen(ptr noundef) #4

declare !dbg !1799 ptr @yasm_bc_create_data(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare !dbg !1802 i32 @yasm_section_is_code(ptr noundef) #2

declare !dbg !1805 i32 @yasm_section_bcs_traverse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @cv_generate_line_bc(ptr noundef %bc, ptr noundef %d) #0 !dbg !1811 {
entry:
  %retval = alloca i32, align 4
  %bc.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %dbgfmt_cv = alloca ptr, align 8
  %i = alloca i64, align 8
  %filename = alloca ptr, align 8
  %line = alloca i64, align 8
  %nextbc = alloca ptr, align 8
  %sect = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %sectbc = alloca ptr, align 8
  %symname = alloca [8 x i8], align 1
  %first_in_sect = alloca i32, align 4
  store ptr %bc, ptr %bc.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !1813, metadata !DIExpression()), !dbg !1830
  store ptr %d, ptr %d.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !1814, metadata !DIExpression()), !dbg !1831
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #7, !dbg !1832
  tail call void @llvm.dbg.declare(metadata ptr %info, metadata !1815, metadata !DIExpression()), !dbg !1833
  %0 = load ptr, ptr %d.addr, align 8, !dbg !1834, !tbaa !827
  store ptr %0, ptr %info, align 8, !dbg !1833, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbgfmt_cv) #7, !dbg !1835
  tail call void @llvm.dbg.declare(metadata ptr %dbgfmt_cv, metadata !1816, metadata !DIExpression()), !dbg !1836
  %1 = load ptr, ptr %info, align 8, !dbg !1837, !tbaa !827
  %dbgfmt_cv1 = getelementptr inbounds %struct.cv_line_info, ptr %1, i32 0, i32 2, !dbg !1838
  %2 = load ptr, ptr %dbgfmt_cv1, align 8, !dbg !1838, !tbaa !868
  store ptr %2, ptr %dbgfmt_cv, align 8, !dbg !1836, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7, !dbg !1839
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1817, metadata !DIExpression()), !dbg !1840
  call void @llvm.lifetime.start.p0(i64 8, ptr %filename) #7, !dbg !1841
  tail call void @llvm.dbg.declare(metadata ptr %filename, metadata !1818, metadata !DIExpression()), !dbg !1842
  call void @llvm.lifetime.start.p0(i64 8, ptr %line) #7, !dbg !1843
  tail call void @llvm.dbg.declare(metadata ptr %line, metadata !1819, metadata !DIExpression()), !dbg !1844
  call void @llvm.lifetime.start.p0(i64 8, ptr %nextbc) #7, !dbg !1845
  tail call void @llvm.dbg.declare(metadata ptr %nextbc, metadata !1820, metadata !DIExpression()), !dbg !1846
  %3 = load ptr, ptr %bc.addr, align 8, !dbg !1847, !tbaa !827
  %link = getelementptr inbounds %struct.yasm_bytecode, ptr %3, i32 0, i32 0, !dbg !1847
  %stqe_next = getelementptr inbounds %struct.anon, ptr %link, i32 0, i32 0, !dbg !1847
  %4 = load ptr, ptr %stqe_next, align 8, !dbg !1847, !tbaa !1848
  store ptr %4, ptr %nextbc, align 8, !dbg !1846, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %sect) #7, !dbg !1849
  tail call void @llvm.dbg.declare(metadata ptr %sect, metadata !1821, metadata !DIExpression()), !dbg !1850
  %5 = load ptr, ptr %bc.addr, align 8, !dbg !1851, !tbaa !827
  %call = call ptr @yasm_bc_get_section(ptr noundef %5), !dbg !1852
  store ptr %call, ptr %sect, align 8, !dbg !1850, !tbaa !827
  %6 = load ptr, ptr %nextbc, align 8, !dbg !1853, !tbaa !827
  %tobool = icmp ne ptr %6, null, !dbg !1853
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1855

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %bc.addr, align 8, !dbg !1856, !tbaa !827
  %offset = getelementptr inbounds %struct.yasm_bytecode, ptr %7, i32 0, i32 7, !dbg !1857
  %8 = load i64, ptr %offset, align 8, !dbg !1857, !tbaa !1858
  %9 = load ptr, ptr %nextbc, align 8, !dbg !1859, !tbaa !827
  %offset2 = getelementptr inbounds %struct.yasm_bytecode, ptr %9, i32 0, i32 7, !dbg !1860
  %10 = load i64, ptr %offset2, align 8, !dbg !1860, !tbaa !1858
  %cmp = icmp eq i64 %8, %10, !dbg !1861
  br i1 %cmp, label %if.then, label %if.end, !dbg !1862

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !1863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1863

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load ptr, ptr %info, align 8, !dbg !1864, !tbaa !827
  %linemap = getelementptr inbounds %struct.cv_line_info, ptr %11, i32 0, i32 3, !dbg !1865
  %12 = load ptr, ptr %linemap, align 8, !dbg !1865, !tbaa !872
  %13 = load ptr, ptr %bc.addr, align 8, !dbg !1866, !tbaa !827
  %line3 = getelementptr inbounds %struct.yasm_bytecode, ptr %13, i32 0, i32 6, !dbg !1867
  %14 = load i64, ptr %line3, align 8, !dbg !1867, !tbaa !1868
  call void @yasm_linemap_lookup(ptr noundef %12, i64 noundef %14, ptr noundef %filename, ptr noundef %line), !dbg !1869
  %15 = load ptr, ptr %info, align 8, !dbg !1870, !tbaa !827
  %cv8_cur_li = getelementptr inbounds %struct.cv_line_info, ptr %15, i32 0, i32 7, !dbg !1871
  %16 = load ptr, ptr %cv8_cur_li, align 8, !dbg !1871, !tbaa !892
  %tobool4 = icmp ne ptr %16, null, !dbg !1870
  br i1 %tobool4, label %lor.lhs.false, label %if.then9, !dbg !1872

lor.lhs.false:                                    ; preds = %if.end
  %17 = load ptr, ptr %filename, align 8, !dbg !1873, !tbaa !827
  %18 = load ptr, ptr %info, align 8, !dbg !1874, !tbaa !827
  %cv8_cur_li5 = getelementptr inbounds %struct.cv_line_info, ptr %18, i32 0, i32 7, !dbg !1875
  %19 = load ptr, ptr %cv8_cur_li5, align 8, !dbg !1875, !tbaa !892
  %fn = getelementptr inbounds %struct.cv8_lineinfo, ptr %19, i32 0, i32 1, !dbg !1876
  %20 = load ptr, ptr %fn, align 8, !dbg !1876, !tbaa !1877
  %filename6 = getelementptr inbounds %struct.cv_filename, ptr %20, i32 0, i32 1, !dbg !1878
  %21 = load ptr, ptr %filename6, align 8, !dbg !1878, !tbaa !1595
  %call7 = call i32 @strcmp(ptr noundef %17, ptr noundef %21) #8, !dbg !1879
  %cmp8 = icmp ne i32 %call7, 0, !dbg !1880
  br i1 %cmp8, label %if.then9, label %if.end69, !dbg !1881

if.then9:                                         ; preds = %lor.lhs.false, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %sectbc) #7, !dbg !1882
  tail call void @llvm.dbg.declare(metadata ptr %sectbc, metadata !1822, metadata !DIExpression()), !dbg !1883
  call void @llvm.lifetime.start.p0(i64 8, ptr %symname) #7, !dbg !1884
  tail call void @llvm.dbg.declare(metadata ptr %symname, metadata !1825, metadata !DIExpression()), !dbg !1885
  call void @llvm.lifetime.start.p0(i64 4, ptr %first_in_sect) #7, !dbg !1886
  tail call void @llvm.dbg.declare(metadata ptr %first_in_sect, metadata !1829, metadata !DIExpression()), !dbg !1887
  %22 = load ptr, ptr %info, align 8, !dbg !1888, !tbaa !827
  %cv8_cur_li10 = getelementptr inbounds %struct.cv_line_info, ptr %22, i32 0, i32 7, !dbg !1889
  %23 = load ptr, ptr %cv8_cur_li10, align 8, !dbg !1889, !tbaa !892
  %tobool11 = icmp ne ptr %23, null, !dbg !1890
  %lnot = xor i1 %tobool11, true, !dbg !1890
  %lnot.ext = zext i1 %lnot to i32, !dbg !1890
  store i32 %lnot.ext, ptr %first_in_sect, align 4, !dbg !1887, !tbaa !1147
  store i64 0, ptr %i, align 8, !dbg !1891, !tbaa !902
  br label %for.cond, !dbg !1893

for.cond:                                         ; preds = %for.inc, %if.then9
  %24 = load i64, ptr %i, align 8, !dbg !1894, !tbaa !902
  %25 = load ptr, ptr %dbgfmt_cv, align 8, !dbg !1896, !tbaa !827
  %filenames_size = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %25, i32 0, i32 2, !dbg !1897
  %26 = load i64, ptr %filenames_size, align 8, !dbg !1897, !tbaa !911
  %cmp12 = icmp ult i64 %24, %26, !dbg !1898
  br i1 %cmp12, label %for.body, label %for.end, !dbg !1899

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %filename, align 8, !dbg !1900, !tbaa !827
  %28 = load ptr, ptr %dbgfmt_cv, align 8, !dbg !1903, !tbaa !827
  %filenames = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %28, i32 0, i32 1, !dbg !1904
  %29 = load ptr, ptr %filenames, align 8, !dbg !1904, !tbaa !920
  %30 = load i64, ptr %i, align 8, !dbg !1905, !tbaa !902
  %arrayidx = getelementptr inbounds %struct.cv_filename, ptr %29, i64 %30, !dbg !1903
  %filename13 = getelementptr inbounds %struct.cv_filename, ptr %arrayidx, i32 0, i32 1, !dbg !1906
  %31 = load ptr, ptr %filename13, align 8, !dbg !1906, !tbaa !1595
  %call14 = call i32 @strcmp(ptr noundef %27, ptr noundef %31) #8, !dbg !1907
  %cmp15 = icmp eq i32 %call14, 0, !dbg !1908
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1909

if.then16:                                        ; preds = %for.body
  br label %for.end, !dbg !1910

if.end17:                                         ; preds = %for.body
  br label %for.inc, !dbg !1911

for.inc:                                          ; preds = %if.end17
  %32 = load i64, ptr %i, align 8, !dbg !1912, !tbaa !902
  %inc = add i64 %32, 1, !dbg !1912
  store i64 %inc, ptr %i, align 8, !dbg !1912, !tbaa !902
  br label %for.cond, !dbg !1913, !llvm.loop !1914

for.end:                                          ; preds = %if.then16, %for.cond
  %33 = load i64, ptr %i, align 8, !dbg !1916, !tbaa !902
  %34 = load ptr, ptr %dbgfmt_cv, align 8, !dbg !1918, !tbaa !827
  %filenames_size18 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %34, i32 0, i32 2, !dbg !1919
  %35 = load i64, ptr %filenames_size18, align 8, !dbg !1919, !tbaa !911
  %cmp19 = icmp uge i64 %33, %35, !dbg !1920
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !1921

if.then20:                                        ; preds = %for.end
  %36 = load ptr, ptr @yasm_internal_error_, align 8, !dbg !1922, !tbaa !827
  call void %36(ptr noundef @.str.8, i32 noundef 457, ptr noundef @.str.9), !dbg !1922
  br label %if.end21, !dbg !1922

if.end21:                                         ; preds = %if.then20, %for.end
  %37 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !1923, !tbaa !827
  %call22 = call ptr %37(i64 noundef 64), !dbg !1923
  %38 = load ptr, ptr %info, align 8, !dbg !1924, !tbaa !827
  %cv8_cur_li23 = getelementptr inbounds %struct.cv_line_info, ptr %38, i32 0, i32 7, !dbg !1925
  store ptr %call22, ptr %cv8_cur_li23, align 8, !dbg !1926, !tbaa !892
  %39 = load ptr, ptr %dbgfmt_cv, align 8, !dbg !1927, !tbaa !827
  %filenames24 = getelementptr inbounds %struct.yasm_dbgfmt_cv, ptr %39, i32 0, i32 1, !dbg !1928
  %40 = load ptr, ptr %filenames24, align 8, !dbg !1928, !tbaa !920
  %41 = load i64, ptr %i, align 8, !dbg !1929, !tbaa !902
  %arrayidx25 = getelementptr inbounds %struct.cv_filename, ptr %40, i64 %41, !dbg !1927
  %42 = load ptr, ptr %info, align 8, !dbg !1930, !tbaa !827
  %cv8_cur_li26 = getelementptr inbounds %struct.cv_line_info, ptr %42, i32 0, i32 7, !dbg !1931
  %43 = load ptr, ptr %cv8_cur_li26, align 8, !dbg !1931, !tbaa !892
  %fn27 = getelementptr inbounds %struct.cv8_lineinfo, ptr %43, i32 0, i32 1, !dbg !1932
  store ptr %arrayidx25, ptr %fn27, align 8, !dbg !1933, !tbaa !1877
  %44 = load ptr, ptr %sect, align 8, !dbg !1934, !tbaa !827
  %45 = load ptr, ptr %info, align 8, !dbg !1935, !tbaa !827
  %cv8_cur_li28 = getelementptr inbounds %struct.cv_line_info, ptr %45, i32 0, i32 7, !dbg !1936
  %46 = load ptr, ptr %cv8_cur_li28, align 8, !dbg !1936, !tbaa !892
  %sect29 = getelementptr inbounds %struct.cv8_lineinfo, ptr %46, i32 0, i32 2, !dbg !1937
  store ptr %44, ptr %sect29, align 8, !dbg !1938, !tbaa !1939
  %47 = load i32, ptr %first_in_sect, align 4, !dbg !1940, !tbaa !1147
  %48 = load ptr, ptr %info, align 8, !dbg !1941, !tbaa !827
  %cv8_cur_li30 = getelementptr inbounds %struct.cv_line_info, ptr %48, i32 0, i32 7, !dbg !1942
  %49 = load ptr, ptr %cv8_cur_li30, align 8, !dbg !1942, !tbaa !892
  %first_in_sect31 = getelementptr inbounds %struct.cv8_lineinfo, ptr %49, i32 0, i32 5, !dbg !1943
  store i32 %47, ptr %first_in_sect31, align 8, !dbg !1944, !tbaa !1030
  %50 = load ptr, ptr %sect, align 8, !dbg !1945, !tbaa !827
  %call32 = call ptr @yasm_section_bcs_first(ptr noundef %50), !dbg !1946
  store ptr %call32, ptr %sectbc, align 8, !dbg !1947, !tbaa !827
  %51 = load ptr, ptr %sectbc, align 8, !dbg !1948, !tbaa !827
  %symrecs = getelementptr inbounds %struct.yasm_bytecode, ptr %51, i32 0, i32 9, !dbg !1950
  %52 = load ptr, ptr %symrecs, align 8, !dbg !1950, !tbaa !1951
  %tobool33 = icmp ne ptr %52, null, !dbg !1948
  br i1 %tobool33, label %land.lhs.true34, label %if.else, !dbg !1952

land.lhs.true34:                                  ; preds = %if.end21
  %53 = load ptr, ptr %sectbc, align 8, !dbg !1953, !tbaa !827
  %symrecs35 = getelementptr inbounds %struct.yasm_bytecode, ptr %53, i32 0, i32 9, !dbg !1954
  %54 = load ptr, ptr %symrecs35, align 8, !dbg !1954, !tbaa !1951
  %arrayidx36 = getelementptr inbounds ptr, ptr %54, i64 0, !dbg !1953
  %55 = load ptr, ptr %arrayidx36, align 8, !dbg !1953, !tbaa !827
  %tobool37 = icmp ne ptr %55, null, !dbg !1953
  br i1 %tobool37, label %if.then38, label %if.else, !dbg !1955

if.then38:                                        ; preds = %land.lhs.true34
  %56 = load ptr, ptr %sectbc, align 8, !dbg !1956, !tbaa !827
  %symrecs39 = getelementptr inbounds %struct.yasm_bytecode, ptr %56, i32 0, i32 9, !dbg !1957
  %57 = load ptr, ptr %symrecs39, align 8, !dbg !1957, !tbaa !1951
  %arrayidx40 = getelementptr inbounds ptr, ptr %57, i64 0, !dbg !1956
  %58 = load ptr, ptr %arrayidx40, align 8, !dbg !1956, !tbaa !827
  %59 = load ptr, ptr %info, align 8, !dbg !1958, !tbaa !827
  %cv8_cur_li41 = getelementptr inbounds %struct.cv_line_info, ptr %59, i32 0, i32 7, !dbg !1959
  %60 = load ptr, ptr %cv8_cur_li41, align 8, !dbg !1959, !tbaa !892
  %sectsym = getelementptr inbounds %struct.cv8_lineinfo, ptr %60, i32 0, i32 3, !dbg !1960
  store ptr %58, ptr %sectsym, align 8, !dbg !1961, !tbaa !1962
  br label %if.end48, !dbg !1958

if.else:                                          ; preds = %land.lhs.true34, %if.end21
  %arraydecay = getelementptr inbounds [8 x i8], ptr %symname, i64 0, i64 0, !dbg !1963
  %61 = load ptr, ptr %info, align 8, !dbg !1965, !tbaa !827
  %num_lineinfos = getelementptr inbounds %struct.cv_line_info, ptr %61, i32 0, i32 5, !dbg !1966
  %62 = load i32, ptr %num_lineinfos, align 8, !dbg !1967, !tbaa !884
  %inc42 = add i32 %62, 1, !dbg !1967
  store i32 %inc42, ptr %num_lineinfos, align 8, !dbg !1967, !tbaa !884
  %call43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.10, i32 noundef %62) #7, !dbg !1968
  %63 = load ptr, ptr %info, align 8, !dbg !1969, !tbaa !827
  %object = getelementptr inbounds %struct.cv_line_info, ptr %63, i32 0, i32 1, !dbg !1970
  %64 = load ptr, ptr %object, align 8, !dbg !1970, !tbaa !861
  %symtab = getelementptr inbounds %struct.yasm_object, ptr %64, i32 0, i32 2, !dbg !1971
  %65 = load ptr, ptr %symtab, align 8, !dbg !1971, !tbaa !1096
  %arraydecay44 = getelementptr inbounds [8 x i8], ptr %symname, i64 0, i64 0, !dbg !1972
  %66 = load ptr, ptr %sectbc, align 8, !dbg !1973, !tbaa !827
  %call45 = call ptr @yasm_symtab_define_label(ptr noundef %65, ptr noundef %arraydecay44, ptr noundef %66, i32 noundef 1, i64 noundef 0), !dbg !1974
  %67 = load ptr, ptr %info, align 8, !dbg !1975, !tbaa !827
  %cv8_cur_li46 = getelementptr inbounds %struct.cv_line_info, ptr %67, i32 0, i32 7, !dbg !1976
  %68 = load ptr, ptr %cv8_cur_li46, align 8, !dbg !1976, !tbaa !892
  %sectsym47 = getelementptr inbounds %struct.cv8_lineinfo, ptr %68, i32 0, i32 3, !dbg !1977
  store ptr %call45, ptr %sectsym47, align 8, !dbg !1978, !tbaa !1962
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then38
  %69 = load ptr, ptr %info, align 8, !dbg !1979, !tbaa !827
  %cv8_cur_li49 = getelementptr inbounds %struct.cv_line_info, ptr %69, i32 0, i32 7, !dbg !1980
  %70 = load ptr, ptr %cv8_cur_li49, align 8, !dbg !1980, !tbaa !892
  %num_linenums = getelementptr inbounds %struct.cv8_lineinfo, ptr %70, i32 0, i32 4, !dbg !1981
  store i64 0, ptr %num_linenums, align 8, !dbg !1982, !tbaa !1054
  br label %do.body, !dbg !1983

do.body:                                          ; preds = %if.end48
  %71 = load ptr, ptr %info, align 8, !dbg !1984, !tbaa !827
  %cv8_cur_li50 = getelementptr inbounds %struct.cv_line_info, ptr %71, i32 0, i32 7, !dbg !1984
  %72 = load ptr, ptr %cv8_cur_li50, align 8, !dbg !1984, !tbaa !892
  %linesets = getelementptr inbounds %struct.cv8_lineinfo, ptr %72, i32 0, i32 6, !dbg !1984
  %stqh_first = getelementptr inbounds %struct.cv8_lineset_head, ptr %linesets, i32 0, i32 0, !dbg !1984
  store ptr null, ptr %stqh_first, align 8, !dbg !1984, !tbaa !1986
  %73 = load ptr, ptr %info, align 8, !dbg !1984, !tbaa !827
  %cv8_cur_li51 = getelementptr inbounds %struct.cv_line_info, ptr %73, i32 0, i32 7, !dbg !1984
  %74 = load ptr, ptr %cv8_cur_li51, align 8, !dbg !1984, !tbaa !892
  %linesets52 = getelementptr inbounds %struct.cv8_lineinfo, ptr %74, i32 0, i32 6, !dbg !1984
  %stqh_first53 = getelementptr inbounds %struct.cv8_lineset_head, ptr %linesets52, i32 0, i32 0, !dbg !1984
  %75 = load ptr, ptr %info, align 8, !dbg !1984, !tbaa !827
  %cv8_cur_li54 = getelementptr inbounds %struct.cv_line_info, ptr %75, i32 0, i32 7, !dbg !1984
  %76 = load ptr, ptr %cv8_cur_li54, align 8, !dbg !1984, !tbaa !892
  %linesets55 = getelementptr inbounds %struct.cv8_lineinfo, ptr %76, i32 0, i32 6, !dbg !1984
  %stqh_last = getelementptr inbounds %struct.cv8_lineset_head, ptr %linesets55, i32 0, i32 1, !dbg !1984
  store ptr %stqh_first53, ptr %stqh_last, align 8, !dbg !1984, !tbaa !1987
  br label %do.cond, !dbg !1984

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1984

do.end:                                           ; preds = %do.cond
  br label %do.body56, !dbg !1988

do.body56:                                        ; preds = %do.end
  %77 = load ptr, ptr %info, align 8, !dbg !1989, !tbaa !827
  %cv8_cur_li57 = getelementptr inbounds %struct.cv_line_info, ptr %77, i32 0, i32 7, !dbg !1989
  %78 = load ptr, ptr %cv8_cur_li57, align 8, !dbg !1989, !tbaa !892
  %link58 = getelementptr inbounds %struct.cv8_lineinfo, ptr %78, i32 0, i32 0, !dbg !1989
  %stqe_next59 = getelementptr inbounds %struct.anon.0, ptr %link58, i32 0, i32 0, !dbg !1989
  store ptr null, ptr %stqe_next59, align 8, !dbg !1989, !tbaa !1064
  %79 = load ptr, ptr %info, align 8, !dbg !1989, !tbaa !827
  %cv8_cur_li60 = getelementptr inbounds %struct.cv_line_info, ptr %79, i32 0, i32 7, !dbg !1989
  %80 = load ptr, ptr %cv8_cur_li60, align 8, !dbg !1989, !tbaa !892
  %81 = load ptr, ptr %info, align 8, !dbg !1989, !tbaa !827
  %cv8_lineinfos = getelementptr inbounds %struct.cv_line_info, ptr %81, i32 0, i32 6, !dbg !1989
  %stqh_last61 = getelementptr inbounds %struct.cv8_lineinfo_head, ptr %cv8_lineinfos, i32 0, i32 1, !dbg !1989
  %82 = load ptr, ptr %stqh_last61, align 8, !dbg !1989, !tbaa !889
  store ptr %80, ptr %82, align 8, !dbg !1989, !tbaa !827
  %83 = load ptr, ptr %info, align 8, !dbg !1989, !tbaa !827
  %cv8_cur_li62 = getelementptr inbounds %struct.cv_line_info, ptr %83, i32 0, i32 7, !dbg !1989
  %84 = load ptr, ptr %cv8_cur_li62, align 8, !dbg !1989, !tbaa !892
  %link63 = getelementptr inbounds %struct.cv8_lineinfo, ptr %84, i32 0, i32 0, !dbg !1989
  %stqe_next64 = getelementptr inbounds %struct.anon.0, ptr %link63, i32 0, i32 0, !dbg !1989
  %85 = load ptr, ptr %info, align 8, !dbg !1989, !tbaa !827
  %cv8_lineinfos65 = getelementptr inbounds %struct.cv_line_info, ptr %85, i32 0, i32 6, !dbg !1989
  %stqh_last66 = getelementptr inbounds %struct.cv8_lineinfo_head, ptr %cv8_lineinfos65, i32 0, i32 1, !dbg !1989
  store ptr %stqe_next64, ptr %stqh_last66, align 8, !dbg !1989, !tbaa !889
  br label %do.cond67, !dbg !1989

do.cond67:                                        ; preds = %do.body56
  br label %do.end68, !dbg !1989

do.end68:                                         ; preds = %do.cond67
  %86 = load ptr, ptr %info, align 8, !dbg !1991, !tbaa !827
  %cv8_cur_ls = getelementptr inbounds %struct.cv_line_info, ptr %86, i32 0, i32 8, !dbg !1992
  store ptr null, ptr %cv8_cur_ls, align 8, !dbg !1993, !tbaa !895
  call void @llvm.lifetime.end.p0(i64 4, ptr %first_in_sect) #7, !dbg !1994
  call void @llvm.lifetime.end.p0(i64 8, ptr %symname) #7, !dbg !1994
  call void @llvm.lifetime.end.p0(i64 8, ptr %sectbc) #7, !dbg !1994
  br label %if.end69, !dbg !1995

if.end69:                                         ; preds = %do.end68, %lor.lhs.false
  %87 = load ptr, ptr %info, align 8, !dbg !1996, !tbaa !827
  %cv8_cur_ls70 = getelementptr inbounds %struct.cv_line_info, ptr %87, i32 0, i32 8, !dbg !1998
  %88 = load ptr, ptr %cv8_cur_ls70, align 8, !dbg !1998, !tbaa !895
  %tobool71 = icmp ne ptr %88, null, !dbg !1996
  br i1 %tobool71, label %lor.lhs.false72, label %if.then75, !dbg !1999

lor.lhs.false72:                                  ; preds = %if.end69
  %89 = load ptr, ptr %info, align 8, !dbg !2000, !tbaa !827
  %cv8_cur_ls73 = getelementptr inbounds %struct.cv_line_info, ptr %89, i32 0, i32 8, !dbg !2001
  %90 = load ptr, ptr %cv8_cur_ls73, align 8, !dbg !2001, !tbaa !895
  %num_pairs = getelementptr inbounds %struct.cv8_lineset, ptr %90, i32 0, i32 2, !dbg !2002
  %91 = load i64, ptr %num_pairs, align 8, !dbg !2002, !tbaa !2003
  %cmp74 = icmp uge i64 %91, 126, !dbg !2005
  br i1 %cmp74, label %if.then75, label %if.end96, !dbg !2006

if.then75:                                        ; preds = %lor.lhs.false72, %if.end69
  %92 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !2007, !tbaa !827
  %call76 = call ptr %92(i64 noundef 2032), !dbg !2007
  %93 = load ptr, ptr %info, align 8, !dbg !2009, !tbaa !827
  %cv8_cur_ls77 = getelementptr inbounds %struct.cv_line_info, ptr %93, i32 0, i32 8, !dbg !2010
  store ptr %call76, ptr %cv8_cur_ls77, align 8, !dbg !2011, !tbaa !895
  %94 = load ptr, ptr %info, align 8, !dbg !2012, !tbaa !827
  %cv8_cur_ls78 = getelementptr inbounds %struct.cv_line_info, ptr %94, i32 0, i32 8, !dbg !2013
  %95 = load ptr, ptr %cv8_cur_ls78, align 8, !dbg !2013, !tbaa !895
  %num_pairs79 = getelementptr inbounds %struct.cv8_lineset, ptr %95, i32 0, i32 2, !dbg !2014
  store i64 0, ptr %num_pairs79, align 8, !dbg !2015, !tbaa !2003
  br label %do.body80, !dbg !2016

do.body80:                                        ; preds = %if.then75
  %96 = load ptr, ptr %info, align 8, !dbg !2017, !tbaa !827
  %cv8_cur_ls81 = getelementptr inbounds %struct.cv_line_info, ptr %96, i32 0, i32 8, !dbg !2017
  %97 = load ptr, ptr %cv8_cur_ls81, align 8, !dbg !2017, !tbaa !895
  %link82 = getelementptr inbounds %struct.cv8_lineset, ptr %97, i32 0, i32 0, !dbg !2017
  %stqe_next83 = getelementptr inbounds %struct.anon.1, ptr %link82, i32 0, i32 0, !dbg !2017
  store ptr null, ptr %stqe_next83, align 8, !dbg !2017, !tbaa !2019
  %98 = load ptr, ptr %info, align 8, !dbg !2017, !tbaa !827
  %cv8_cur_ls84 = getelementptr inbounds %struct.cv_line_info, ptr %98, i32 0, i32 8, !dbg !2017
  %99 = load ptr, ptr %cv8_cur_ls84, align 8, !dbg !2017, !tbaa !895
  %100 = load ptr, ptr %info, align 8, !dbg !2017, !tbaa !827
  %cv8_cur_li85 = getelementptr inbounds %struct.cv_line_info, ptr %100, i32 0, i32 7, !dbg !2017
  %101 = load ptr, ptr %cv8_cur_li85, align 8, !dbg !2017, !tbaa !892
  %linesets86 = getelementptr inbounds %struct.cv8_lineinfo, ptr %101, i32 0, i32 6, !dbg !2017
  %stqh_last87 = getelementptr inbounds %struct.cv8_lineset_head, ptr %linesets86, i32 0, i32 1, !dbg !2017
  %102 = load ptr, ptr %stqh_last87, align 8, !dbg !2017, !tbaa !1987
  store ptr %99, ptr %102, align 8, !dbg !2017, !tbaa !827
  %103 = load ptr, ptr %info, align 8, !dbg !2017, !tbaa !827
  %cv8_cur_ls88 = getelementptr inbounds %struct.cv_line_info, ptr %103, i32 0, i32 8, !dbg !2017
  %104 = load ptr, ptr %cv8_cur_ls88, align 8, !dbg !2017, !tbaa !895
  %link89 = getelementptr inbounds %struct.cv8_lineset, ptr %104, i32 0, i32 0, !dbg !2017
  %stqe_next90 = getelementptr inbounds %struct.anon.1, ptr %link89, i32 0, i32 0, !dbg !2017
  %105 = load ptr, ptr %info, align 8, !dbg !2017, !tbaa !827
  %cv8_cur_li91 = getelementptr inbounds %struct.cv_line_info, ptr %105, i32 0, i32 7, !dbg !2017
  %106 = load ptr, ptr %cv8_cur_li91, align 8, !dbg !2017, !tbaa !892
  %linesets92 = getelementptr inbounds %struct.cv8_lineinfo, ptr %106, i32 0, i32 6, !dbg !2017
  %stqh_last93 = getelementptr inbounds %struct.cv8_lineset_head, ptr %linesets92, i32 0, i32 1, !dbg !2017
  store ptr %stqe_next90, ptr %stqh_last93, align 8, !dbg !2017, !tbaa !1987
  br label %do.cond94, !dbg !2017

do.cond94:                                        ; preds = %do.body80
  br label %do.end95, !dbg !2017

do.end95:                                         ; preds = %do.cond94
  br label %if.end96, !dbg !2020

if.end96:                                         ; preds = %do.end95, %lor.lhs.false72
  %107 = load ptr, ptr %bc.addr, align 8, !dbg !2021, !tbaa !827
  %offset97 = getelementptr inbounds %struct.yasm_bytecode, ptr %107, i32 0, i32 7, !dbg !2022
  %108 = load i64, ptr %offset97, align 8, !dbg !2022, !tbaa !1858
  %109 = load ptr, ptr %info, align 8, !dbg !2023, !tbaa !827
  %cv8_cur_ls98 = getelementptr inbounds %struct.cv_line_info, ptr %109, i32 0, i32 8, !dbg !2024
  %110 = load ptr, ptr %cv8_cur_ls98, align 8, !dbg !2024, !tbaa !895
  %pairs = getelementptr inbounds %struct.cv8_lineset, ptr %110, i32 0, i32 1, !dbg !2025
  %111 = load ptr, ptr %info, align 8, !dbg !2026, !tbaa !827
  %cv8_cur_ls99 = getelementptr inbounds %struct.cv_line_info, ptr %111, i32 0, i32 8, !dbg !2027
  %112 = load ptr, ptr %cv8_cur_ls99, align 8, !dbg !2027, !tbaa !895
  %num_pairs100 = getelementptr inbounds %struct.cv8_lineset, ptr %112, i32 0, i32 2, !dbg !2028
  %113 = load i64, ptr %num_pairs100, align 8, !dbg !2028, !tbaa !2003
  %arrayidx101 = getelementptr inbounds [126 x %struct.cv8_linepair], ptr %pairs, i64 0, i64 %113, !dbg !2023
  %offset102 = getelementptr inbounds %struct.cv8_linepair, ptr %arrayidx101, i32 0, i32 0, !dbg !2029
  store i64 %108, ptr %offset102, align 8, !dbg !2030, !tbaa !2031
  %114 = load i64, ptr %line, align 8, !dbg !2033, !tbaa !902
  %or = or i64 2147483648, %114, !dbg !2034
  %115 = load ptr, ptr %info, align 8, !dbg !2035, !tbaa !827
  %cv8_cur_ls103 = getelementptr inbounds %struct.cv_line_info, ptr %115, i32 0, i32 8, !dbg !2036
  %116 = load ptr, ptr %cv8_cur_ls103, align 8, !dbg !2036, !tbaa !895
  %pairs104 = getelementptr inbounds %struct.cv8_lineset, ptr %116, i32 0, i32 1, !dbg !2037
  %117 = load ptr, ptr %info, align 8, !dbg !2038, !tbaa !827
  %cv8_cur_ls105 = getelementptr inbounds %struct.cv_line_info, ptr %117, i32 0, i32 8, !dbg !2039
  %118 = load ptr, ptr %cv8_cur_ls105, align 8, !dbg !2039, !tbaa !895
  %num_pairs106 = getelementptr inbounds %struct.cv8_lineset, ptr %118, i32 0, i32 2, !dbg !2040
  %119 = load i64, ptr %num_pairs106, align 8, !dbg !2040, !tbaa !2003
  %arrayidx107 = getelementptr inbounds [126 x %struct.cv8_linepair], ptr %pairs104, i64 0, i64 %119, !dbg !2035
  %line108 = getelementptr inbounds %struct.cv8_linepair, ptr %arrayidx107, i32 0, i32 1, !dbg !2041
  store i64 %or, ptr %line108, align 8, !dbg !2042, !tbaa !2043
  %120 = load ptr, ptr %info, align 8, !dbg !2044, !tbaa !827
  %cv8_cur_ls109 = getelementptr inbounds %struct.cv_line_info, ptr %120, i32 0, i32 8, !dbg !2045
  %121 = load ptr, ptr %cv8_cur_ls109, align 8, !dbg !2045, !tbaa !895
  %num_pairs110 = getelementptr inbounds %struct.cv8_lineset, ptr %121, i32 0, i32 2, !dbg !2046
  %122 = load i64, ptr %num_pairs110, align 8, !dbg !2047, !tbaa !2003
  %inc111 = add i64 %122, 1, !dbg !2047
  store i64 %inc111, ptr %num_pairs110, align 8, !dbg !2047, !tbaa !2003
  %123 = load ptr, ptr %info, align 8, !dbg !2048, !tbaa !827
  %cv8_cur_li112 = getelementptr inbounds %struct.cv_line_info, ptr %123, i32 0, i32 7, !dbg !2049
  %124 = load ptr, ptr %cv8_cur_li112, align 8, !dbg !2049, !tbaa !892
  %num_linenums113 = getelementptr inbounds %struct.cv8_lineinfo, ptr %124, i32 0, i32 4, !dbg !2050
  %125 = load i64, ptr %num_linenums113, align 8, !dbg !2051, !tbaa !1054
  %inc114 = add i64 %125, 1, !dbg !2051
  store i64 %inc114, ptr %num_linenums113, align 8, !dbg !2051, !tbaa !1054
  store i32 0, ptr %retval, align 4, !dbg !2052
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2052

cleanup:                                          ; preds = %if.end96, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sect) #7, !dbg !2053
  call void @llvm.lifetime.end.p0(i64 8, ptr %nextbc) #7, !dbg !2053
  call void @llvm.lifetime.end.p0(i64 8, ptr %line) #7, !dbg !2053
  call void @llvm.lifetime.end.p0(i64 8, ptr %filename) #7, !dbg !2053
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7, !dbg !2053
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbgfmt_cv) #7, !dbg !2053
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #7, !dbg !2053
  %126 = load i32, ptr %retval, align 4, !dbg !2053
  ret i32 %126, !dbg !2053
}

declare !dbg !2054 ptr @yasm_bc_get_section(ptr noundef) #2

declare !dbg !2057 void @yasm_linemap_lookup(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare !dbg !2062 ptr @yasm_section_bcs_first(ptr noundef) #2

; Function Attrs: nounwind
declare !dbg !2063 i32 @sprintf(ptr noundef, ptr noundef, ...) #3

declare !dbg !2067 ptr @yasm_symtab_define_label(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @cv8_lineinfo_bc_destroy(ptr noundef %contents) #0 !dbg !2070 {
entry:
  %contents.addr = alloca ptr, align 8
  %li = alloca ptr, align 8
  %ls1 = alloca ptr, align 8
  %ls2 = alloca ptr, align 8
  store ptr %contents, ptr %contents.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %contents.addr, metadata !2072, metadata !DIExpression()), !dbg !2076
  call void @llvm.lifetime.start.p0(i64 8, ptr %li) #7, !dbg !2077
  tail call void @llvm.dbg.declare(metadata ptr %li, metadata !2073, metadata !DIExpression()), !dbg !2078
  %0 = load ptr, ptr %contents.addr, align 8, !dbg !2079, !tbaa !827
  store ptr %0, ptr %li, align 8, !dbg !2078, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %ls1) #7, !dbg !2080
  tail call void @llvm.dbg.declare(metadata ptr %ls1, metadata !2074, metadata !DIExpression()), !dbg !2081
  call void @llvm.lifetime.start.p0(i64 8, ptr %ls2) #7, !dbg !2080
  tail call void @llvm.dbg.declare(metadata ptr %ls2, metadata !2075, metadata !DIExpression()), !dbg !2082
  %1 = load ptr, ptr %li, align 8, !dbg !2083, !tbaa !827
  %linesets = getelementptr inbounds %struct.cv8_lineinfo, ptr %1, i32 0, i32 6, !dbg !2083
  %stqh_first = getelementptr inbounds %struct.cv8_lineset_head, ptr %linesets, i32 0, i32 0, !dbg !2083
  %2 = load ptr, ptr %stqh_first, align 8, !dbg !2083, !tbaa !1986
  store ptr %2, ptr %ls1, align 8, !dbg !2084, !tbaa !827
  br label %while.cond, !dbg !2085

while.cond:                                       ; preds = %while.body, %entry
  %3 = load ptr, ptr %ls1, align 8, !dbg !2086, !tbaa !827
  %tobool = icmp ne ptr %3, null, !dbg !2085
  br i1 %tobool, label %while.body, label %while.end, !dbg !2085

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %ls1, align 8, !dbg !2087, !tbaa !827
  %link = getelementptr inbounds %struct.cv8_lineset, ptr %4, i32 0, i32 0, !dbg !2087
  %stqe_next = getelementptr inbounds %struct.anon.1, ptr %link, i32 0, i32 0, !dbg !2087
  %5 = load ptr, ptr %stqe_next, align 8, !dbg !2087, !tbaa !2019
  store ptr %5, ptr %ls2, align 8, !dbg !2089, !tbaa !827
  %6 = load ptr, ptr @yasm_xfree, align 8, !dbg !2090, !tbaa !827
  %7 = load ptr, ptr %ls1, align 8, !dbg !2091, !tbaa !827
  call void %6(ptr noundef %7), !dbg !2090
  %8 = load ptr, ptr %ls2, align 8, !dbg !2092, !tbaa !827
  store ptr %8, ptr %ls1, align 8, !dbg !2093, !tbaa !827
  br label %while.cond, !dbg !2085, !llvm.loop !2094

while.end:                                        ; preds = %while.cond
  %9 = load ptr, ptr @yasm_xfree, align 8, !dbg !2096, !tbaa !827
  %10 = load ptr, ptr %contents.addr, align 8, !dbg !2097, !tbaa !827
  call void %9(ptr noundef %10), !dbg !2096
  call void @llvm.lifetime.end.p0(i64 8, ptr %ls2) #7, !dbg !2098
  call void @llvm.lifetime.end.p0(i64 8, ptr %ls1) #7, !dbg !2098
  call void @llvm.lifetime.end.p0(i64 8, ptr %li) #7, !dbg !2098
  ret void, !dbg !2098
}

; Function Attrs: nounwind uwtable
define internal void @cv8_lineinfo_bc_print(ptr noundef %contents, ptr noundef %f, i32 noundef %indent_level) #0 !dbg !2099 {
entry:
  %contents.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %indent_level.addr = alloca i32, align 4
  store ptr %contents, ptr %contents.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %contents.addr, metadata !2101, metadata !DIExpression()), !dbg !2104
  store ptr %f, ptr %f.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !2102, metadata !DIExpression()), !dbg !2105
  store i32 %indent_level, ptr %indent_level.addr, align 4, !tbaa !1147
  tail call void @llvm.dbg.declare(metadata ptr %indent_level.addr, metadata !2103, metadata !DIExpression()), !dbg !2106
  ret void, !dbg !2107
}

declare void @yasm_bc_finalize_common(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @cv8_lineinfo_bc_calc_len(ptr noundef %bc, ptr noundef %add_span, ptr noundef %add_span_data) #0 !dbg !2108 {
entry:
  %bc.addr = alloca ptr, align 8
  %add_span.addr = alloca ptr, align 8
  %add_span_data.addr = alloca ptr, align 8
  store ptr %bc, ptr %bc.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !2110, metadata !DIExpression()), !dbg !2113
  store ptr %add_span, ptr %add_span.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %add_span.addr, metadata !2111, metadata !DIExpression()), !dbg !2114
  store ptr %add_span_data, ptr %add_span_data.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %add_span_data.addr, metadata !2112, metadata !DIExpression()), !dbg !2115
  %0 = load ptr, ptr @yasm_internal_error_, align 8, !dbg !2116, !tbaa !827
  call void %0(ptr noundef @.str.8, i32 noundef 860, ptr noundef @.str.11), !dbg !2116
  ret i32 0, !dbg !2117
}

declare i32 @yasm_bc_expand_common(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @cv8_lineinfo_bc_tobytes(ptr noundef %bc, ptr noundef %bufp, ptr noundef %bufstart, ptr noundef %d, ptr noundef %output_value, ptr noundef %output_reloc) #0 !dbg !2118 {
entry:
  %bc.addr = alloca ptr, align 8
  %bufp.addr = alloca ptr, align 8
  %bufstart.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %output_value.addr = alloca ptr, align 8
  %output_reloc.addr = alloca ptr, align 8
  %object = alloca ptr, align 8
  %li = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %cval = alloca ptr, align 8
  %i = alloca i64, align 8
  %ls = alloca ptr, align 8
  %j = alloca i64, align 8
  store ptr %bc, ptr %bc.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !2120, metadata !DIExpression()), !dbg !2136
  store ptr %bufp, ptr %bufp.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %bufp.addr, metadata !2121, metadata !DIExpression()), !dbg !2137
  store ptr %bufstart, ptr %bufstart.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %bufstart.addr, metadata !2122, metadata !DIExpression()), !dbg !2138
  store ptr %d, ptr %d.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2123, metadata !DIExpression()), !dbg !2139
  store ptr %output_value, ptr %output_value.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %output_value.addr, metadata !2124, metadata !DIExpression()), !dbg !2140
  store ptr %output_reloc, ptr %output_reloc.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %output_reloc.addr, metadata !2125, metadata !DIExpression()), !dbg !2141
  call void @llvm.lifetime.start.p0(i64 8, ptr %object) #7, !dbg !2142
  tail call void @llvm.dbg.declare(metadata ptr %object, metadata !2126, metadata !DIExpression()), !dbg !2143
  %0 = load ptr, ptr %bc.addr, align 8, !dbg !2144, !tbaa !827
  %section = getelementptr inbounds %struct.yasm_bytecode, ptr %0, i32 0, i32 2, !dbg !2145
  %1 = load ptr, ptr %section, align 8, !dbg !2145, !tbaa !2146
  %call = call ptr @yasm_section_get_object(ptr noundef %1), !dbg !2147
  store ptr %call, ptr %object, align 8, !dbg !2143, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %li) #7, !dbg !2148
  tail call void @llvm.dbg.declare(metadata ptr %li, metadata !2127, metadata !DIExpression()), !dbg !2149
  %2 = load ptr, ptr %bc.addr, align 8, !dbg !2150, !tbaa !827
  %contents = getelementptr inbounds %struct.yasm_bytecode, ptr %2, i32 0, i32 10, !dbg !2151
  %3 = load ptr, ptr %contents, align 8, !dbg !2151, !tbaa !2152
  store ptr %3, ptr %li, align 8, !dbg !2149, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #7, !dbg !2153
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !2128, metadata !DIExpression()), !dbg !2154
  %4 = load ptr, ptr %bufp.addr, align 8, !dbg !2155, !tbaa !827
  %5 = load ptr, ptr %4, align 8, !dbg !2156, !tbaa !827
  store ptr %5, ptr %buf, align 8, !dbg !2154, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %cval) #7, !dbg !2157
  tail call void @llvm.dbg.declare(metadata ptr %cval, metadata !2129, metadata !DIExpression()), !dbg !2158
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7, !dbg !2159
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2130, metadata !DIExpression()), !dbg !2160
  call void @llvm.lifetime.start.p0(i64 8, ptr %ls) #7, !dbg !2161
  tail call void @llvm.dbg.declare(metadata ptr %ls, metadata !2131, metadata !DIExpression()), !dbg !2162
  %6 = load ptr, ptr %li, align 8, !dbg !2163, !tbaa !827
  %first_in_sect = getelementptr inbounds %struct.cv8_lineinfo, ptr %6, i32 0, i32 5, !dbg !2165
  %7 = load i32, ptr %first_in_sect, align 8, !dbg !2165, !tbaa !1030
  %tobool = icmp ne i32 %7, 0, !dbg !2163
  br i1 %tobool, label %if.then, label %if.end, !dbg !2166

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %li, align 8, !dbg !2167, !tbaa !827
  %sectsym = getelementptr inbounds %struct.cv8_lineinfo, ptr %8, i32 0, i32 3, !dbg !2169
  %9 = load ptr, ptr %sectsym, align 8, !dbg !2169, !tbaa !1962
  %10 = load ptr, ptr %buf, align 8, !dbg !2170, !tbaa !827
  %11 = load ptr, ptr %bufstart.addr, align 8, !dbg !2171, !tbaa !827
  %sub.ptr.lhs.cast = ptrtoint ptr %10 to i64, !dbg !2172
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i64, !dbg !2172
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2172
  %12 = load ptr, ptr %bc.addr, align 8, !dbg !2173, !tbaa !827
  %13 = load ptr, ptr %d.addr, align 8, !dbg !2174, !tbaa !827
  %14 = load ptr, ptr %output_value.addr, align 8, !dbg !2175, !tbaa !827
  call void @cv_out_sym(ptr noundef %9, i64 noundef %sub.ptr.sub, ptr noundef %12, ptr noundef %buf, ptr noundef %13, ptr noundef %14), !dbg !2176
  %15 = load ptr, ptr %buf, align 8, !dbg !2177, !tbaa !827
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1, !dbg !2177
  store ptr %incdec.ptr, ptr %buf, align 8, !dbg !2177, !tbaa !827
  store i8 0, ptr %15, align 1, !dbg !2177, !tbaa !1376
  %16 = load ptr, ptr %buf, align 8, !dbg !2178, !tbaa !827
  %incdec.ptr1 = getelementptr inbounds i8, ptr %16, i32 1, !dbg !2178
  store ptr %incdec.ptr1, ptr %buf, align 8, !dbg !2178, !tbaa !827
  store i8 0, ptr %16, align 1, !dbg !2178, !tbaa !1376
  %17 = load ptr, ptr %li, align 8, !dbg !2179, !tbaa !827
  %sect = getelementptr inbounds %struct.cv8_lineinfo, ptr %17, i32 0, i32 2, !dbg !2180
  %18 = load ptr, ptr %sect, align 8, !dbg !2180, !tbaa !1939
  %call2 = call ptr @yasm_section_bcs_first(ptr noundef %18), !dbg !2181
  %19 = load ptr, ptr %li, align 8, !dbg !2182, !tbaa !827
  %sect3 = getelementptr inbounds %struct.cv8_lineinfo, ptr %19, i32 0, i32 2, !dbg !2183
  %20 = load ptr, ptr %sect3, align 8, !dbg !2183, !tbaa !1939
  %call4 = call ptr @yasm_section_bcs_last(ptr noundef %20), !dbg !2184
  %call5 = call ptr @yasm_calc_bc_dist(ptr noundef %call2, ptr noundef %call4), !dbg !2185
  store ptr %call5, ptr %cval, align 8, !dbg !2186, !tbaa !827
  %21 = load ptr, ptr %object, align 8, !dbg !2187, !tbaa !827
  %arch = getelementptr inbounds %struct.yasm_object, ptr %21, i32 0, i32 3, !dbg !2187
  %22 = load ptr, ptr %arch, align 8, !dbg !2187, !tbaa !1429
  %module = getelementptr inbounds %struct.yasm_arch_base, ptr %22, i32 0, i32 0, !dbg !2187
  %23 = load ptr, ptr %module, align 8, !dbg !2187, !tbaa !1430
  %intnum_tobytes = getelementptr inbounds %struct.yasm_arch_module, ptr %23, i32 0, i32 12, !dbg !2187
  %24 = load ptr, ptr %intnum_tobytes, align 8, !dbg !2187, !tbaa !2188
  %25 = load ptr, ptr %object, align 8, !dbg !2187, !tbaa !827
  %arch6 = getelementptr inbounds %struct.yasm_object, ptr %25, i32 0, i32 3, !dbg !2187
  %26 = load ptr, ptr %arch6, align 8, !dbg !2187, !tbaa !1429
  %27 = load ptr, ptr %cval, align 8, !dbg !2187, !tbaa !827
  %28 = load ptr, ptr %buf, align 8, !dbg !2187, !tbaa !827
  %29 = load ptr, ptr %bc.addr, align 8, !dbg !2187, !tbaa !827
  %call7 = call i32 %24(ptr noundef %26, ptr noundef %27, ptr noundef %28, i64 noundef 4, i64 noundef 32, i32 noundef 0, ptr noundef %29, i32 noundef 0), !dbg !2187
  %30 = load ptr, ptr %cval, align 8, !dbg !2189, !tbaa !827
  call void @yasm_intnum_destroy(ptr noundef %30), !dbg !2190
  %31 = load ptr, ptr %buf, align 8, !dbg !2191, !tbaa !827
  %add.ptr = getelementptr inbounds i8, ptr %31, i64 4, !dbg !2191
  store ptr %add.ptr, ptr %buf, align 8, !dbg !2191, !tbaa !827
  br label %if.end, !dbg !2192

if.end:                                           ; preds = %if.then, %entry
  %32 = load ptr, ptr %li, align 8, !dbg !2193, !tbaa !827
  %fn = getelementptr inbounds %struct.cv8_lineinfo, ptr %32, i32 0, i32 1, !dbg !2194
  %33 = load ptr, ptr %fn, align 8, !dbg !2194, !tbaa !1877
  %info_off = getelementptr inbounds %struct.cv_filename, ptr %33, i32 0, i32 3, !dbg !2195
  %34 = load i64, ptr %info_off, align 8, !dbg !2195, !tbaa !1006
  %call8 = call ptr @yasm_intnum_create_uint(i64 noundef %34), !dbg !2196
  store ptr %call8, ptr %cval, align 8, !dbg !2197, !tbaa !827
  %35 = load ptr, ptr %object, align 8, !dbg !2198, !tbaa !827
  %arch9 = getelementptr inbounds %struct.yasm_object, ptr %35, i32 0, i32 3, !dbg !2198
  %36 = load ptr, ptr %arch9, align 8, !dbg !2198, !tbaa !1429
  %module10 = getelementptr inbounds %struct.yasm_arch_base, ptr %36, i32 0, i32 0, !dbg !2198
  %37 = load ptr, ptr %module10, align 8, !dbg !2198, !tbaa !1430
  %intnum_tobytes11 = getelementptr inbounds %struct.yasm_arch_module, ptr %37, i32 0, i32 12, !dbg !2198
  %38 = load ptr, ptr %intnum_tobytes11, align 8, !dbg !2198, !tbaa !2188
  %39 = load ptr, ptr %object, align 8, !dbg !2198, !tbaa !827
  %arch12 = getelementptr inbounds %struct.yasm_object, ptr %39, i32 0, i32 3, !dbg !2198
  %40 = load ptr, ptr %arch12, align 8, !dbg !2198, !tbaa !1429
  %41 = load ptr, ptr %cval, align 8, !dbg !2198, !tbaa !827
  %42 = load ptr, ptr %buf, align 8, !dbg !2198, !tbaa !827
  %43 = load ptr, ptr %bc.addr, align 8, !dbg !2198, !tbaa !827
  %call13 = call i32 %38(ptr noundef %40, ptr noundef %41, ptr noundef %42, i64 noundef 4, i64 noundef 32, i32 noundef 0, ptr noundef %43, i32 noundef 0), !dbg !2198
  %44 = load ptr, ptr %buf, align 8, !dbg !2199, !tbaa !827
  %add.ptr14 = getelementptr inbounds i8, ptr %44, i64 4, !dbg !2199
  store ptr %add.ptr14, ptr %buf, align 8, !dbg !2199, !tbaa !827
  %45 = load ptr, ptr %cval, align 8, !dbg !2200, !tbaa !827
  %46 = load ptr, ptr %li, align 8, !dbg !2201, !tbaa !827
  %num_linenums = getelementptr inbounds %struct.cv8_lineinfo, ptr %46, i32 0, i32 4, !dbg !2202
  %47 = load i64, ptr %num_linenums, align 8, !dbg !2202, !tbaa !1054
  call void @yasm_intnum_set_uint(ptr noundef %45, i64 noundef %47), !dbg !2203
  %48 = load ptr, ptr %object, align 8, !dbg !2204, !tbaa !827
  %arch15 = getelementptr inbounds %struct.yasm_object, ptr %48, i32 0, i32 3, !dbg !2204
  %49 = load ptr, ptr %arch15, align 8, !dbg !2204, !tbaa !1429
  %module16 = getelementptr inbounds %struct.yasm_arch_base, ptr %49, i32 0, i32 0, !dbg !2204
  %50 = load ptr, ptr %module16, align 8, !dbg !2204, !tbaa !1430
  %intnum_tobytes17 = getelementptr inbounds %struct.yasm_arch_module, ptr %50, i32 0, i32 12, !dbg !2204
  %51 = load ptr, ptr %intnum_tobytes17, align 8, !dbg !2204, !tbaa !2188
  %52 = load ptr, ptr %object, align 8, !dbg !2204, !tbaa !827
  %arch18 = getelementptr inbounds %struct.yasm_object, ptr %52, i32 0, i32 3, !dbg !2204
  %53 = load ptr, ptr %arch18, align 8, !dbg !2204, !tbaa !1429
  %54 = load ptr, ptr %cval, align 8, !dbg !2204, !tbaa !827
  %55 = load ptr, ptr %buf, align 8, !dbg !2204, !tbaa !827
  %56 = load ptr, ptr %bc.addr, align 8, !dbg !2204, !tbaa !827
  %call19 = call i32 %51(ptr noundef %53, ptr noundef %54, ptr noundef %55, i64 noundef 4, i64 noundef 32, i32 noundef 0, ptr noundef %56, i32 noundef 0), !dbg !2204
  %57 = load ptr, ptr %buf, align 8, !dbg !2205, !tbaa !827
  %add.ptr20 = getelementptr inbounds i8, ptr %57, i64 4, !dbg !2205
  store ptr %add.ptr20, ptr %buf, align 8, !dbg !2205, !tbaa !827
  %58 = load ptr, ptr %cval, align 8, !dbg !2206, !tbaa !827
  %59 = load ptr, ptr %li, align 8, !dbg !2207, !tbaa !827
  %num_linenums21 = getelementptr inbounds %struct.cv8_lineinfo, ptr %59, i32 0, i32 4, !dbg !2208
  %60 = load i64, ptr %num_linenums21, align 8, !dbg !2208, !tbaa !1054
  %mul = mul i64 %60, 8, !dbg !2209
  %add = add i64 %mul, 12, !dbg !2210
  call void @yasm_intnum_set_uint(ptr noundef %58, i64 noundef %add), !dbg !2211
  %61 = load ptr, ptr %object, align 8, !dbg !2212, !tbaa !827
  %arch22 = getelementptr inbounds %struct.yasm_object, ptr %61, i32 0, i32 3, !dbg !2212
  %62 = load ptr, ptr %arch22, align 8, !dbg !2212, !tbaa !1429
  %module23 = getelementptr inbounds %struct.yasm_arch_base, ptr %62, i32 0, i32 0, !dbg !2212
  %63 = load ptr, ptr %module23, align 8, !dbg !2212, !tbaa !1430
  %intnum_tobytes24 = getelementptr inbounds %struct.yasm_arch_module, ptr %63, i32 0, i32 12, !dbg !2212
  %64 = load ptr, ptr %intnum_tobytes24, align 8, !dbg !2212, !tbaa !2188
  %65 = load ptr, ptr %object, align 8, !dbg !2212, !tbaa !827
  %arch25 = getelementptr inbounds %struct.yasm_object, ptr %65, i32 0, i32 3, !dbg !2212
  %66 = load ptr, ptr %arch25, align 8, !dbg !2212, !tbaa !1429
  %67 = load ptr, ptr %cval, align 8, !dbg !2212, !tbaa !827
  %68 = load ptr, ptr %buf, align 8, !dbg !2212, !tbaa !827
  %69 = load ptr, ptr %bc.addr, align 8, !dbg !2212, !tbaa !827
  %call26 = call i32 %64(ptr noundef %66, ptr noundef %67, ptr noundef %68, i64 noundef 4, i64 noundef 32, i32 noundef 0, ptr noundef %69, i32 noundef 0), !dbg !2212
  %70 = load ptr, ptr %buf, align 8, !dbg !2213, !tbaa !827
  %add.ptr27 = getelementptr inbounds i8, ptr %70, i64 4, !dbg !2213
  store ptr %add.ptr27, ptr %buf, align 8, !dbg !2213, !tbaa !827
  store i64 0, ptr %i, align 8, !dbg !2214, !tbaa !902
  %71 = load ptr, ptr %li, align 8, !dbg !2215, !tbaa !827
  %linesets = getelementptr inbounds %struct.cv8_lineinfo, ptr %71, i32 0, i32 6, !dbg !2215
  %stqh_first = getelementptr inbounds %struct.cv8_lineset_head, ptr %linesets, i32 0, i32 0, !dbg !2215
  %72 = load ptr, ptr %stqh_first, align 8, !dbg !2215, !tbaa !1986
  store ptr %72, ptr %ls, align 8, !dbg !2215, !tbaa !827
  br label %for.cond, !dbg !2215

for.cond:                                         ; preds = %for.inc48, %if.end
  %73 = load ptr, ptr %ls, align 8, !dbg !2216, !tbaa !827
  %tobool28 = icmp ne ptr %73, null, !dbg !2215
  br i1 %tobool28, label %for.body, label %for.end49, !dbg !2215

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #7, !dbg !2217
  tail call void @llvm.dbg.declare(metadata ptr %j, metadata !2132, metadata !DIExpression()), !dbg !2218
  store i64 0, ptr %j, align 8, !dbg !2219, !tbaa !902
  br label %for.cond29, !dbg !2221

for.cond29:                                       ; preds = %for.inc, %for.body
  %74 = load i64, ptr %i, align 8, !dbg !2222, !tbaa !902
  %75 = load ptr, ptr %li, align 8, !dbg !2224, !tbaa !827
  %num_linenums30 = getelementptr inbounds %struct.cv8_lineinfo, ptr %75, i32 0, i32 4, !dbg !2225
  %76 = load i64, ptr %num_linenums30, align 8, !dbg !2225, !tbaa !1054
  %cmp = icmp ult i64 %74, %76, !dbg !2226
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2227

land.rhs:                                         ; preds = %for.cond29
  %77 = load i64, ptr %j, align 8, !dbg !2228, !tbaa !902
  %cmp31 = icmp ult i64 %77, 126, !dbg !2229
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond29
  %78 = phi i1 [ false, %for.cond29 ], [ %cmp31, %land.rhs ], !dbg !2230
  br i1 %78, label %for.body32, label %for.end, !dbg !2231

for.body32:                                       ; preds = %land.end
  %79 = load ptr, ptr %cval, align 8, !dbg !2232, !tbaa !827
  %80 = load ptr, ptr %ls, align 8, !dbg !2234, !tbaa !827
  %pairs = getelementptr inbounds %struct.cv8_lineset, ptr %80, i32 0, i32 1, !dbg !2235
  %81 = load i64, ptr %j, align 8, !dbg !2236, !tbaa !902
  %arrayidx = getelementptr inbounds [126 x %struct.cv8_linepair], ptr %pairs, i64 0, i64 %81, !dbg !2234
  %offset = getelementptr inbounds %struct.cv8_linepair, ptr %arrayidx, i32 0, i32 0, !dbg !2237
  %82 = load i64, ptr %offset, align 8, !dbg !2237, !tbaa !2031
  call void @yasm_intnum_set_uint(ptr noundef %79, i64 noundef %82), !dbg !2238
  %83 = load ptr, ptr %object, align 8, !dbg !2239, !tbaa !827
  %arch33 = getelementptr inbounds %struct.yasm_object, ptr %83, i32 0, i32 3, !dbg !2239
  %84 = load ptr, ptr %arch33, align 8, !dbg !2239, !tbaa !1429
  %module34 = getelementptr inbounds %struct.yasm_arch_base, ptr %84, i32 0, i32 0, !dbg !2239
  %85 = load ptr, ptr %module34, align 8, !dbg !2239, !tbaa !1430
  %intnum_tobytes35 = getelementptr inbounds %struct.yasm_arch_module, ptr %85, i32 0, i32 12, !dbg !2239
  %86 = load ptr, ptr %intnum_tobytes35, align 8, !dbg !2239, !tbaa !2188
  %87 = load ptr, ptr %object, align 8, !dbg !2239, !tbaa !827
  %arch36 = getelementptr inbounds %struct.yasm_object, ptr %87, i32 0, i32 3, !dbg !2239
  %88 = load ptr, ptr %arch36, align 8, !dbg !2239, !tbaa !1429
  %89 = load ptr, ptr %cval, align 8, !dbg !2239, !tbaa !827
  %90 = load ptr, ptr %buf, align 8, !dbg !2239, !tbaa !827
  %91 = load ptr, ptr %bc.addr, align 8, !dbg !2239, !tbaa !827
  %call37 = call i32 %86(ptr noundef %88, ptr noundef %89, ptr noundef %90, i64 noundef 4, i64 noundef 32, i32 noundef 0, ptr noundef %91, i32 noundef 0), !dbg !2239
  %92 = load ptr, ptr %buf, align 8, !dbg !2240, !tbaa !827
  %add.ptr38 = getelementptr inbounds i8, ptr %92, i64 4, !dbg !2240
  store ptr %add.ptr38, ptr %buf, align 8, !dbg !2240, !tbaa !827
  %93 = load ptr, ptr %cval, align 8, !dbg !2241, !tbaa !827
  %94 = load ptr, ptr %ls, align 8, !dbg !2242, !tbaa !827
  %pairs39 = getelementptr inbounds %struct.cv8_lineset, ptr %94, i32 0, i32 1, !dbg !2243
  %95 = load i64, ptr %j, align 8, !dbg !2244, !tbaa !902
  %arrayidx40 = getelementptr inbounds [126 x %struct.cv8_linepair], ptr %pairs39, i64 0, i64 %95, !dbg !2242
  %line = getelementptr inbounds %struct.cv8_linepair, ptr %arrayidx40, i32 0, i32 1, !dbg !2245
  %96 = load i64, ptr %line, align 8, !dbg !2245, !tbaa !2043
  call void @yasm_intnum_set_uint(ptr noundef %93, i64 noundef %96), !dbg !2246
  %97 = load ptr, ptr %object, align 8, !dbg !2247, !tbaa !827
  %arch41 = getelementptr inbounds %struct.yasm_object, ptr %97, i32 0, i32 3, !dbg !2247
  %98 = load ptr, ptr %arch41, align 8, !dbg !2247, !tbaa !1429
  %module42 = getelementptr inbounds %struct.yasm_arch_base, ptr %98, i32 0, i32 0, !dbg !2247
  %99 = load ptr, ptr %module42, align 8, !dbg !2247, !tbaa !1430
  %intnum_tobytes43 = getelementptr inbounds %struct.yasm_arch_module, ptr %99, i32 0, i32 12, !dbg !2247
  %100 = load ptr, ptr %intnum_tobytes43, align 8, !dbg !2247, !tbaa !2188
  %101 = load ptr, ptr %object, align 8, !dbg !2247, !tbaa !827
  %arch44 = getelementptr inbounds %struct.yasm_object, ptr %101, i32 0, i32 3, !dbg !2247
  %102 = load ptr, ptr %arch44, align 8, !dbg !2247, !tbaa !1429
  %103 = load ptr, ptr %cval, align 8, !dbg !2247, !tbaa !827
  %104 = load ptr, ptr %buf, align 8, !dbg !2247, !tbaa !827
  %105 = load ptr, ptr %bc.addr, align 8, !dbg !2247, !tbaa !827
  %call45 = call i32 %100(ptr noundef %102, ptr noundef %103, ptr noundef %104, i64 noundef 4, i64 noundef 32, i32 noundef 0, ptr noundef %105, i32 noundef 0), !dbg !2247
  %106 = load ptr, ptr %buf, align 8, !dbg !2248, !tbaa !827
  %add.ptr46 = getelementptr inbounds i8, ptr %106, i64 4, !dbg !2248
  store ptr %add.ptr46, ptr %buf, align 8, !dbg !2248, !tbaa !827
  br label %for.inc, !dbg !2249

for.inc:                                          ; preds = %for.body32
  %107 = load i64, ptr %i, align 8, !dbg !2250, !tbaa !902
  %inc = add i64 %107, 1, !dbg !2250
  store i64 %inc, ptr %i, align 8, !dbg !2250, !tbaa !902
  %108 = load i64, ptr %j, align 8, !dbg !2251, !tbaa !902
  %inc47 = add i64 %108, 1, !dbg !2251
  store i64 %inc47, ptr %j, align 8, !dbg !2251, !tbaa !902
  br label %for.cond29, !dbg !2252, !llvm.loop !2253

for.end:                                          ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #7, !dbg !2255
  br label %for.inc48, !dbg !2256

for.inc48:                                        ; preds = %for.end
  %109 = load ptr, ptr %ls, align 8, !dbg !2216, !tbaa !827
  %link = getelementptr inbounds %struct.cv8_lineset, ptr %109, i32 0, i32 0, !dbg !2216
  %stqe_next = getelementptr inbounds %struct.anon.1, ptr %link, i32 0, i32 0, !dbg !2216
  %110 = load ptr, ptr %stqe_next, align 8, !dbg !2216, !tbaa !2019
  store ptr %110, ptr %ls, align 8, !dbg !2216, !tbaa !827
  br label %for.cond, !dbg !2216, !llvm.loop !2257

for.end49:                                        ; preds = %for.cond
  %111 = load ptr, ptr %buf, align 8, !dbg !2259, !tbaa !827
  %112 = load ptr, ptr %bufp.addr, align 8, !dbg !2260, !tbaa !827
  store ptr %111, ptr %112, align 8, !dbg !2261, !tbaa !827
  %113 = load ptr, ptr %cval, align 8, !dbg !2262, !tbaa !827
  call void @yasm_intnum_destroy(ptr noundef %113), !dbg !2263
  call void @llvm.lifetime.end.p0(i64 8, ptr %ls) #7, !dbg !2264
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7, !dbg !2264
  call void @llvm.lifetime.end.p0(i64 8, ptr %cval) #7, !dbg !2264
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #7, !dbg !2264
  call void @llvm.lifetime.end.p0(i64 8, ptr %li) #7, !dbg !2264
  call void @llvm.lifetime.end.p0(i64 8, ptr %object) #7, !dbg !2264
  ret i32 0, !dbg !2265
}

declare !dbg !2266 ptr @yasm_section_get_object(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @cv_out_sym(ptr noundef %sym, i64 noundef %off, ptr noundef %bc, ptr noundef %bufp, ptr noundef %d, ptr noundef %output_value) #0 !dbg !2271 {
entry:
  %sym.addr = alloca ptr, align 8
  %off.addr = alloca i64, align 8
  %bc.addr = alloca ptr, align 8
  %bufp.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %output_value.addr = alloca ptr, align 8
  %val = alloca %struct.yasm_value, align 8
  store ptr %sym, ptr %sym.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %sym.addr, metadata !2275, metadata !DIExpression()), !dbg !2282
  store i64 %off, ptr %off.addr, align 8, !tbaa !902
  tail call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !2276, metadata !DIExpression()), !dbg !2283
  store ptr %bc, ptr %bc.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !2277, metadata !DIExpression()), !dbg !2284
  store ptr %bufp, ptr %bufp.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %bufp.addr, metadata !2278, metadata !DIExpression()), !dbg !2285
  store ptr %d, ptr %d.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2279, metadata !DIExpression()), !dbg !2286
  store ptr %output_value, ptr %output_value.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %output_value.addr, metadata !2280, metadata !DIExpression()), !dbg !2287
  call void @llvm.lifetime.start.p0(i64 32, ptr %val) #7, !dbg !2288
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !2281, metadata !DIExpression()), !dbg !2289
  %0 = load ptr, ptr %sym.addr, align 8, !dbg !2290, !tbaa !827
  call void @yasm_value_init_sym(ptr noundef %val, ptr noundef %0, i32 noundef 32), !dbg !2291
  %section_rel = getelementptr inbounds %struct.yasm_value, ptr %val, i32 0, i32 3, !dbg !2292
  %bf.load = load i32, ptr %section_rel, align 8, !dbg !2293
  %bf.clear = and i32 %bf.load, -2049, !dbg !2293
  %bf.set = or i32 %bf.clear, 2048, !dbg !2293
  store i32 %bf.set, ptr %section_rel, align 8, !dbg !2293
  %1 = load ptr, ptr %output_value.addr, align 8, !dbg !2294, !tbaa !827
  %2 = load ptr, ptr %bufp.addr, align 8, !dbg !2295, !tbaa !827
  %3 = load ptr, ptr %2, align 8, !dbg !2296, !tbaa !827
  %4 = load i64, ptr %off.addr, align 8, !dbg !2297, !tbaa !902
  %5 = load ptr, ptr %bc.addr, align 8, !dbg !2298, !tbaa !827
  %6 = load ptr, ptr %d.addr, align 8, !dbg !2299, !tbaa !827
  %call = call i32 %1(ptr noundef %val, ptr noundef %3, i32 noundef 4, i64 noundef %4, ptr noundef %5, i32 noundef 0, ptr noundef %6), !dbg !2294
  %7 = load ptr, ptr %bufp.addr, align 8, !dbg !2300, !tbaa !827
  %8 = load ptr, ptr %7, align 8, !dbg !2301, !tbaa !827
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 4, !dbg !2301
  store ptr %add.ptr, ptr %7, align 8, !dbg !2301, !tbaa !827
  %9 = load ptr, ptr %sym.addr, align 8, !dbg !2302, !tbaa !827
  call void @yasm_value_init_sym(ptr noundef %val, ptr noundef %9, i32 noundef 16), !dbg !2303
  %seg_of = getelementptr inbounds %struct.yasm_value, ptr %val, i32 0, i32 3, !dbg !2304
  %bf.load1 = load i32, ptr %seg_of, align 8, !dbg !2305
  %bf.clear2 = and i32 %bf.load1, -2, !dbg !2305
  %bf.set3 = or i32 %bf.clear2, 1, !dbg !2305
  store i32 %bf.set3, ptr %seg_of, align 8, !dbg !2305
  %10 = load ptr, ptr %output_value.addr, align 8, !dbg !2306, !tbaa !827
  %11 = load ptr, ptr %bufp.addr, align 8, !dbg !2307, !tbaa !827
  %12 = load ptr, ptr %11, align 8, !dbg !2308, !tbaa !827
  %13 = load i64, ptr %off.addr, align 8, !dbg !2309, !tbaa !902
  %add = add i64 %13, 4, !dbg !2310
  %14 = load ptr, ptr %bc.addr, align 8, !dbg !2311, !tbaa !827
  %15 = load ptr, ptr %d.addr, align 8, !dbg !2312, !tbaa !827
  %call4 = call i32 %10(ptr noundef %val, ptr noundef %12, i32 noundef 2, i64 noundef %add, ptr noundef %14, i32 noundef 0, ptr noundef %15), !dbg !2306
  %16 = load ptr, ptr %bufp.addr, align 8, !dbg !2313, !tbaa !827
  %17 = load ptr, ptr %16, align 8, !dbg !2314, !tbaa !827
  %add.ptr5 = getelementptr inbounds i8, ptr %17, i64 2, !dbg !2314
  store ptr %add.ptr5, ptr %16, align 8, !dbg !2314, !tbaa !827
  call void @llvm.lifetime.end.p0(i64 32, ptr %val) #7, !dbg !2315
  ret void, !dbg !2315
}

declare !dbg !2316 ptr @yasm_calc_bc_dist(ptr noundef, ptr noundef) #2

declare !dbg !2319 void @yasm_intnum_destroy(ptr noundef) #2

declare !dbg !2322 void @yasm_intnum_set_uint(ptr noundef, i64 noundef) #2

declare !dbg !2325 void @yasm_value_init_sym(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @cv_sym_size(ptr noundef %cvs) #0 !dbg !2329 {
entry:
  %cvs.addr = alloca ptr, align 8
  %ch = alloca ptr, align 8
  %len = alloca i64, align 8
  %slen = alloca i64, align 8
  %arg = alloca i32, align 4
  store ptr %cvs, ptr %cvs.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %cvs.addr, metadata !2335, metadata !DIExpression()), !dbg !2340
  call void @llvm.lifetime.start.p0(i64 8, ptr %ch) #7, !dbg !2341
  tail call void @llvm.dbg.declare(metadata ptr %ch, metadata !2336, metadata !DIExpression()), !dbg !2342
  %0 = load ptr, ptr %cvs.addr, align 8, !dbg !2343, !tbaa !827
  %format = getelementptr inbounds %struct.cv_sym, ptr %0, i32 0, i32 1, !dbg !2344
  %1 = load ptr, ptr %format, align 8, !dbg !2344, !tbaa !1372
  store ptr %1, ptr %ch, align 8, !dbg !2342, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7, !dbg !2345
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !2337, metadata !DIExpression()), !dbg !2346
  store i64 4, ptr %len, align 8, !dbg !2346, !tbaa !902
  call void @llvm.lifetime.start.p0(i64 8, ptr %slen) #7, !dbg !2347
  tail call void @llvm.dbg.declare(metadata ptr %slen, metadata !2338, metadata !DIExpression()), !dbg !2348
  call void @llvm.lifetime.start.p0(i64 4, ptr %arg) #7, !dbg !2349
  tail call void @llvm.dbg.declare(metadata ptr %arg, metadata !2339, metadata !DIExpression()), !dbg !2350
  store i32 0, ptr %arg, align 4, !dbg !2350, !tbaa !1147
  br label %while.cond, !dbg !2351

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load ptr, ptr %ch, align 8, !dbg !2352, !tbaa !827
  %3 = load i8, ptr %2, align 1, !dbg !2353, !tbaa !1376
  %tobool = icmp ne i8 %3, 0, !dbg !2351
  br i1 %tobool, label %while.body, label %while.end, !dbg !2351

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %ch, align 8, !dbg !2354, !tbaa !827
  %5 = load i8, ptr %4, align 1, !dbg !2356, !tbaa !1376
  %conv = sext i8 %5 to i32, !dbg !2356
  switch i32 %conv, label %sw.default [
    i32 98, label %sw.bb
    i32 104, label %sw.bb2
    i32 119, label %sw.bb4
    i32 89, label %sw.bb7
    i32 84, label %sw.bb10
    i32 83, label %sw.bb13
    i32 90, label %sw.bb18
  ], !dbg !2357

sw.bb:                                            ; preds = %while.body
  %6 = load i64, ptr %len, align 8, !dbg !2358, !tbaa !902
  %inc = add i64 %6, 1, !dbg !2358
  store i64 %inc, ptr %len, align 8, !dbg !2358, !tbaa !902
  %7 = load i32, ptr %arg, align 4, !dbg !2360, !tbaa !1147
  %inc1 = add nsw i32 %7, 1, !dbg !2360
  store i32 %inc1, ptr %arg, align 4, !dbg !2360, !tbaa !1147
  br label %sw.epilog, !dbg !2361

sw.bb2:                                           ; preds = %while.body
  %8 = load i64, ptr %len, align 8, !dbg !2362, !tbaa !902
  %add = add i64 %8, 2, !dbg !2362
  store i64 %add, ptr %len, align 8, !dbg !2362, !tbaa !902
  %9 = load i32, ptr %arg, align 4, !dbg !2363, !tbaa !1147
  %inc3 = add nsw i32 %9, 1, !dbg !2363
  store i32 %inc3, ptr %arg, align 4, !dbg !2363, !tbaa !1147
  br label %sw.epilog, !dbg !2364

sw.bb4:                                           ; preds = %while.body
  %10 = load i64, ptr %len, align 8, !dbg !2365, !tbaa !902
  %add5 = add i64 %10, 4, !dbg !2365
  store i64 %add5, ptr %len, align 8, !dbg !2365, !tbaa !902
  %11 = load i32, ptr %arg, align 4, !dbg !2366, !tbaa !1147
  %inc6 = add nsw i32 %11, 1, !dbg !2366
  store i32 %inc6, ptr %arg, align 4, !dbg !2366, !tbaa !1147
  br label %sw.epilog, !dbg !2367

sw.bb7:                                           ; preds = %while.body
  %12 = load i64, ptr %len, align 8, !dbg !2368, !tbaa !902
  %add8 = add i64 %12, 6, !dbg !2368
  store i64 %add8, ptr %len, align 8, !dbg !2368, !tbaa !902
  %13 = load i32, ptr %arg, align 4, !dbg !2369, !tbaa !1147
  %inc9 = add nsw i32 %13, 1, !dbg !2369
  store i32 %inc9, ptr %arg, align 4, !dbg !2369, !tbaa !1147
  br label %sw.epilog, !dbg !2370

sw.bb10:                                          ; preds = %while.body
  %14 = load i64, ptr %len, align 8, !dbg !2371, !tbaa !902
  %add11 = add i64 %14, 4, !dbg !2371
  store i64 %add11, ptr %len, align 8, !dbg !2371, !tbaa !902
  %15 = load i32, ptr %arg, align 4, !dbg !2372, !tbaa !1147
  %inc12 = add nsw i32 %15, 1, !dbg !2372
  store i32 %inc12, ptr %arg, align 4, !dbg !2372, !tbaa !1147
  br label %sw.epilog, !dbg !2373

sw.bb13:                                          ; preds = %while.body
  %16 = load i64, ptr %len, align 8, !dbg !2374, !tbaa !902
  %add14 = add i64 %16, 1, !dbg !2374
  store i64 %add14, ptr %len, align 8, !dbg !2374, !tbaa !902
  %17 = load ptr, ptr %cvs.addr, align 8, !dbg !2375, !tbaa !827
  %args = getelementptr inbounds %struct.cv_sym, ptr %17, i32 0, i32 2, !dbg !2376
  %18 = load i32, ptr %arg, align 4, !dbg !2377, !tbaa !1147
  %inc15 = add nsw i32 %18, 1, !dbg !2377
  store i32 %inc15, ptr %arg, align 4, !dbg !2377, !tbaa !1147
  %idxprom = sext i32 %18 to i64, !dbg !2375
  %arrayidx = getelementptr inbounds [10 x %union.anon], ptr %args, i64 0, i64 %idxprom, !dbg !2375
  %19 = load ptr, ptr %arrayidx, align 8, !dbg !2378, !tbaa !1376
  %call = call i64 @strlen(ptr noundef %19) #8, !dbg !2379
  store i64 %call, ptr %slen, align 8, !dbg !2380, !tbaa !902
  %20 = load i64, ptr %slen, align 8, !dbg !2381, !tbaa !902
  %cmp = icmp ule i64 %20, 255, !dbg !2382
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2381

cond.true:                                        ; preds = %sw.bb13
  %21 = load i64, ptr %slen, align 8, !dbg !2383, !tbaa !902
  br label %cond.end, !dbg !2381

cond.false:                                       ; preds = %sw.bb13
  br label %cond.end, !dbg !2381

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %21, %cond.true ], [ 255, %cond.false ], !dbg !2381
  %22 = load i64, ptr %len, align 8, !dbg !2384, !tbaa !902
  %add17 = add i64 %22, %cond, !dbg !2384
  store i64 %add17, ptr %len, align 8, !dbg !2384, !tbaa !902
  br label %sw.epilog, !dbg !2385

sw.bb18:                                          ; preds = %while.body
  %23 = load ptr, ptr %cvs.addr, align 8, !dbg !2386, !tbaa !827
  %args19 = getelementptr inbounds %struct.cv_sym, ptr %23, i32 0, i32 2, !dbg !2387
  %24 = load i32, ptr %arg, align 4, !dbg !2388, !tbaa !1147
  %inc20 = add nsw i32 %24, 1, !dbg !2388
  store i32 %inc20, ptr %arg, align 4, !dbg !2388, !tbaa !1147
  %idxprom21 = sext i32 %24 to i64, !dbg !2386
  %arrayidx22 = getelementptr inbounds [10 x %union.anon], ptr %args19, i64 0, i64 %idxprom21, !dbg !2386
  %25 = load ptr, ptr %arrayidx22, align 8, !dbg !2389, !tbaa !1376
  %call23 = call i64 @strlen(ptr noundef %25) #8, !dbg !2390
  %add24 = add i64 %call23, 1, !dbg !2391
  %26 = load i64, ptr %len, align 8, !dbg !2392, !tbaa !902
  %add25 = add i64 %26, %add24, !dbg !2392
  store i64 %add25, ptr %len, align 8, !dbg !2392, !tbaa !902
  br label %sw.epilog, !dbg !2393

sw.default:                                       ; preds = %while.body
  %27 = load ptr, ptr @yasm_internal_error_, align 8, !dbg !2394, !tbaa !827
  call void %27(ptr noundef @.str.8, i32 noundef 973, ptr noundef @.str.13), !dbg !2394
  br label %sw.epilog, !dbg !2395

sw.epilog:                                        ; preds = %sw.default, %sw.bb18, %cond.end, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb2, %sw.bb
  %28 = load ptr, ptr %ch, align 8, !dbg !2396, !tbaa !827
  %incdec.ptr = getelementptr inbounds i8, ptr %28, i32 1, !dbg !2396
  store ptr %incdec.ptr, ptr %ch, align 8, !dbg !2396, !tbaa !827
  br label %while.cond, !dbg !2351, !llvm.loop !2397

while.end:                                        ; preds = %while.cond
  %29 = load i64, ptr %len, align 8, !dbg !2399, !tbaa !902
  call void @llvm.lifetime.end.p0(i64 4, ptr %arg) #7, !dbg !2400
  call void @llvm.lifetime.end.p0(i64 8, ptr %slen) #7, !dbg !2400
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7, !dbg !2400
  call void @llvm.lifetime.end.p0(i64 8, ptr %ch) #7, !dbg !2400
  ret i64 %29, !dbg !2401
}

; Function Attrs: nounwind uwtable
define internal void @cv_sym_bc_destroy(ptr noundef %contents) #0 !dbg !2402 {
entry:
  %contents.addr = alloca ptr, align 8
  %cvs = alloca ptr, align 8
  %ch = alloca ptr, align 8
  %arg = alloca i32, align 4
  store ptr %contents, ptr %contents.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %contents.addr, metadata !2404, metadata !DIExpression()), !dbg !2408
  call void @llvm.lifetime.start.p0(i64 8, ptr %cvs) #7, !dbg !2409
  tail call void @llvm.dbg.declare(metadata ptr %cvs, metadata !2405, metadata !DIExpression()), !dbg !2410
  %0 = load ptr, ptr %contents.addr, align 8, !dbg !2411, !tbaa !827
  store ptr %0, ptr %cvs, align 8, !dbg !2410, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %ch) #7, !dbg !2412
  tail call void @llvm.dbg.declare(metadata ptr %ch, metadata !2406, metadata !DIExpression()), !dbg !2413
  %1 = load ptr, ptr %cvs, align 8, !dbg !2414, !tbaa !827
  %format = getelementptr inbounds %struct.cv_sym, ptr %1, i32 0, i32 1, !dbg !2415
  %2 = load ptr, ptr %format, align 8, !dbg !2415, !tbaa !1372
  store ptr %2, ptr %ch, align 8, !dbg !2413, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 4, ptr %arg) #7, !dbg !2416
  tail call void @llvm.dbg.declare(metadata ptr %arg, metadata !2407, metadata !DIExpression()), !dbg !2417
  store i32 0, ptr %arg, align 4, !dbg !2417, !tbaa !1147
  br label %while.cond, !dbg !2418

while.cond:                                       ; preds = %sw.epilog, %entry
  %3 = load ptr, ptr %ch, align 8, !dbg !2419, !tbaa !827
  %4 = load i8, ptr %3, align 1, !dbg !2420, !tbaa !1376
  %tobool = icmp ne i8 %4, 0, !dbg !2418
  br i1 %tobool, label %while.body, label %while.end, !dbg !2418

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %ch, align 8, !dbg !2421, !tbaa !827
  %6 = load i8, ptr %5, align 1, !dbg !2423, !tbaa !1376
  %conv = sext i8 %6 to i32, !dbg !2423
  switch i32 %conv, label %sw.default [
    i32 98, label %sw.bb
    i32 104, label %sw.bb
    i32 119, label %sw.bb
    i32 89, label %sw.bb
    i32 84, label %sw.bb
    i32 83, label %sw.bb1
    i32 90, label %sw.bb1
  ], !dbg !2424

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body, %while.body
  %7 = load i32, ptr %arg, align 4, !dbg !2425, !tbaa !1147
  %inc = add nsw i32 %7, 1, !dbg !2425
  store i32 %inc, ptr %arg, align 4, !dbg !2425, !tbaa !1147
  br label %sw.epilog, !dbg !2427

sw.bb1:                                           ; preds = %while.body, %while.body
  %8 = load ptr, ptr @yasm_xfree, align 8, !dbg !2428, !tbaa !827
  %9 = load ptr, ptr %cvs, align 8, !dbg !2429, !tbaa !827
  %args = getelementptr inbounds %struct.cv_sym, ptr %9, i32 0, i32 2, !dbg !2430
  %10 = load i32, ptr %arg, align 4, !dbg !2431, !tbaa !1147
  %inc2 = add nsw i32 %10, 1, !dbg !2431
  store i32 %inc2, ptr %arg, align 4, !dbg !2431, !tbaa !1147
  %idxprom = sext i32 %10 to i64, !dbg !2429
  %arrayidx = getelementptr inbounds [10 x %union.anon], ptr %args, i64 0, i64 %idxprom, !dbg !2429
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !2432, !tbaa !1376
  call void %8(ptr noundef %11), !dbg !2428
  br label %sw.epilog, !dbg !2433

sw.default:                                       ; preds = %while.body
  %12 = load ptr, ptr @yasm_internal_error_, align 8, !dbg !2434, !tbaa !827
  call void %12(ptr noundef @.str.8, i32 noundef 1002, ptr noundef @.str.13), !dbg !2434
  br label %sw.epilog, !dbg !2435

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %13 = load ptr, ptr %ch, align 8, !dbg !2436, !tbaa !827
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 1, !dbg !2436
  store ptr %incdec.ptr, ptr %ch, align 8, !dbg !2436, !tbaa !827
  br label %while.cond, !dbg !2418, !llvm.loop !2437

while.end:                                        ; preds = %while.cond
  %14 = load ptr, ptr @yasm_xfree, align 8, !dbg !2439, !tbaa !827
  %15 = load ptr, ptr %contents.addr, align 8, !dbg !2440, !tbaa !827
  call void %14(ptr noundef %15), !dbg !2439
  call void @llvm.lifetime.end.p0(i64 4, ptr %arg) #7, !dbg !2441
  call void @llvm.lifetime.end.p0(i64 8, ptr %ch) #7, !dbg !2441
  call void @llvm.lifetime.end.p0(i64 8, ptr %cvs) #7, !dbg !2441
  ret void, !dbg !2441
}

; Function Attrs: nounwind uwtable
define internal void @cv_sym_bc_print(ptr noundef %contents, ptr noundef %f, i32 noundef %indent_level) #0 !dbg !2442 {
entry:
  %contents.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %indent_level.addr = alloca i32, align 4
  store ptr %contents, ptr %contents.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %contents.addr, metadata !2444, metadata !DIExpression()), !dbg !2447
  store ptr %f, ptr %f.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !2445, metadata !DIExpression()), !dbg !2448
  store i32 %indent_level, ptr %indent_level.addr, align 4, !tbaa !1147
  tail call void @llvm.dbg.declare(metadata ptr %indent_level.addr, metadata !2446, metadata !DIExpression()), !dbg !2449
  ret void, !dbg !2450
}

; Function Attrs: nounwind uwtable
define internal i32 @cv_sym_bc_calc_len(ptr noundef %bc, ptr noundef %add_span, ptr noundef %add_span_data) #0 !dbg !2451 {
entry:
  %bc.addr = alloca ptr, align 8
  %add_span.addr = alloca ptr, align 8
  %add_span_data.addr = alloca ptr, align 8
  store ptr %bc, ptr %bc.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !2453, metadata !DIExpression()), !dbg !2456
  store ptr %add_span, ptr %add_span.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %add_span.addr, metadata !2454, metadata !DIExpression()), !dbg !2457
  store ptr %add_span_data, ptr %add_span_data.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %add_span_data.addr, metadata !2455, metadata !DIExpression()), !dbg !2458
  %0 = load ptr, ptr @yasm_internal_error_, align 8, !dbg !2459, !tbaa !827
  call void %0(ptr noundef @.str.8, i32 noundef 1020, ptr noundef @.str.14), !dbg !2459
  ret i32 0, !dbg !2460
}

; Function Attrs: nounwind uwtable
define internal i32 @cv_sym_bc_tobytes(ptr noundef %bc, ptr noundef %bufp, ptr noundef %bufstart, ptr noundef %d, ptr noundef %output_value, ptr noundef %output_reloc) #0 !dbg !2461 {
entry:
  %bc.addr = alloca ptr, align 8
  %bufp.addr = alloca ptr, align 8
  %bufstart.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %output_value.addr = alloca ptr, align 8
  %output_reloc.addr = alloca ptr, align 8
  %object = alloca ptr, align 8
  %cvs = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %cval = alloca ptr, align 8
  %ch = alloca ptr, align 8
  %len = alloca i64, align 8
  %arg = alloca i32, align 4
  store ptr %bc, ptr %bc.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !2463, metadata !DIExpression()), !dbg !2476
  store ptr %bufp, ptr %bufp.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %bufp.addr, metadata !2464, metadata !DIExpression()), !dbg !2477
  store ptr %bufstart, ptr %bufstart.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %bufstart.addr, metadata !2465, metadata !DIExpression()), !dbg !2478
  store ptr %d, ptr %d.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2466, metadata !DIExpression()), !dbg !2479
  store ptr %output_value, ptr %output_value.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %output_value.addr, metadata !2467, metadata !DIExpression()), !dbg !2480
  store ptr %output_reloc, ptr %output_reloc.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %output_reloc.addr, metadata !2468, metadata !DIExpression()), !dbg !2481
  call void @llvm.lifetime.start.p0(i64 8, ptr %object) #7, !dbg !2482
  tail call void @llvm.dbg.declare(metadata ptr %object, metadata !2469, metadata !DIExpression()), !dbg !2483
  %0 = load ptr, ptr %bc.addr, align 8, !dbg !2484, !tbaa !827
  %section = getelementptr inbounds %struct.yasm_bytecode, ptr %0, i32 0, i32 2, !dbg !2485
  %1 = load ptr, ptr %section, align 8, !dbg !2485, !tbaa !2146
  %call = call ptr @yasm_section_get_object(ptr noundef %1), !dbg !2486
  store ptr %call, ptr %object, align 8, !dbg !2483, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %cvs) #7, !dbg !2487
  tail call void @llvm.dbg.declare(metadata ptr %cvs, metadata !2470, metadata !DIExpression()), !dbg !2488
  %2 = load ptr, ptr %bc.addr, align 8, !dbg !2489, !tbaa !827
  %contents = getelementptr inbounds %struct.yasm_bytecode, ptr %2, i32 0, i32 10, !dbg !2490
  %3 = load ptr, ptr %contents, align 8, !dbg !2490, !tbaa !2152
  store ptr %3, ptr %cvs, align 8, !dbg !2488, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #7, !dbg !2491
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !2471, metadata !DIExpression()), !dbg !2492
  %4 = load ptr, ptr %bufp.addr, align 8, !dbg !2493, !tbaa !827
  %5 = load ptr, ptr %4, align 8, !dbg !2494, !tbaa !827
  store ptr %5, ptr %buf, align 8, !dbg !2492, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %cval) #7, !dbg !2495
  tail call void @llvm.dbg.declare(metadata ptr %cval, metadata !2472, metadata !DIExpression()), !dbg !2496
  call void @llvm.lifetime.start.p0(i64 8, ptr %ch) #7, !dbg !2497
  tail call void @llvm.dbg.declare(metadata ptr %ch, metadata !2473, metadata !DIExpression()), !dbg !2498
  %6 = load ptr, ptr %cvs, align 8, !dbg !2499, !tbaa !827
  %format = getelementptr inbounds %struct.cv_sym, ptr %6, i32 0, i32 1, !dbg !2500
  %7 = load ptr, ptr %format, align 8, !dbg !2500, !tbaa !1372
  store ptr %7, ptr %ch, align 8, !dbg !2498, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7, !dbg !2501
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !2474, metadata !DIExpression()), !dbg !2502
  call void @llvm.lifetime.start.p0(i64 4, ptr %arg) #7, !dbg !2503
  tail call void @llvm.dbg.declare(metadata ptr %arg, metadata !2475, metadata !DIExpression()), !dbg !2504
  store i32 0, ptr %arg, align 4, !dbg !2504, !tbaa !1147
  %8 = load ptr, ptr %bc.addr, align 8, !dbg !2505, !tbaa !827
  %len1 = getelementptr inbounds %struct.yasm_bytecode, ptr %8, i32 0, i32 4, !dbg !2506
  %9 = load i64, ptr %len1, align 8, !dbg !2506, !tbaa !949
  %sub = sub i64 %9, 2, !dbg !2507
  %call2 = call ptr @yasm_intnum_create_uint(i64 noundef %sub), !dbg !2508
  store ptr %call2, ptr %cval, align 8, !dbg !2509, !tbaa !827
  %10 = load ptr, ptr %object, align 8, !dbg !2510, !tbaa !827
  %arch = getelementptr inbounds %struct.yasm_object, ptr %10, i32 0, i32 3, !dbg !2510
  %11 = load ptr, ptr %arch, align 8, !dbg !2510, !tbaa !1429
  %module = getelementptr inbounds %struct.yasm_arch_base, ptr %11, i32 0, i32 0, !dbg !2510
  %12 = load ptr, ptr %module, align 8, !dbg !2510, !tbaa !1430
  %intnum_tobytes = getelementptr inbounds %struct.yasm_arch_module, ptr %12, i32 0, i32 12, !dbg !2510
  %13 = load ptr, ptr %intnum_tobytes, align 8, !dbg !2510, !tbaa !2188
  %14 = load ptr, ptr %object, align 8, !dbg !2510, !tbaa !827
  %arch3 = getelementptr inbounds %struct.yasm_object, ptr %14, i32 0, i32 3, !dbg !2510
  %15 = load ptr, ptr %arch3, align 8, !dbg !2510, !tbaa !1429
  %16 = load ptr, ptr %cval, align 8, !dbg !2510, !tbaa !827
  %17 = load ptr, ptr %buf, align 8, !dbg !2510, !tbaa !827
  %18 = load ptr, ptr %bc.addr, align 8, !dbg !2510, !tbaa !827
  %call4 = call i32 %13(ptr noundef %15, ptr noundef %16, ptr noundef %17, i64 noundef 2, i64 noundef 16, i32 noundef 0, ptr noundef %18, i32 noundef 1), !dbg !2510
  %19 = load ptr, ptr %buf, align 8, !dbg !2511, !tbaa !827
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 2, !dbg !2511
  store ptr %add.ptr, ptr %buf, align 8, !dbg !2511, !tbaa !827
  %20 = load ptr, ptr %cval, align 8, !dbg !2512, !tbaa !827
  %21 = load ptr, ptr %cvs, align 8, !dbg !2513, !tbaa !827
  %type = getelementptr inbounds %struct.cv_sym, ptr %21, i32 0, i32 0, !dbg !2514
  %22 = load i32, ptr %type, align 8, !dbg !2514, !tbaa !1367
  %conv = zext i32 %22 to i64, !dbg !2513
  call void @yasm_intnum_set_uint(ptr noundef %20, i64 noundef %conv), !dbg !2515
  %23 = load ptr, ptr %object, align 8, !dbg !2516, !tbaa !827
  %arch5 = getelementptr inbounds %struct.yasm_object, ptr %23, i32 0, i32 3, !dbg !2516
  %24 = load ptr, ptr %arch5, align 8, !dbg !2516, !tbaa !1429
  %module6 = getelementptr inbounds %struct.yasm_arch_base, ptr %24, i32 0, i32 0, !dbg !2516
  %25 = load ptr, ptr %module6, align 8, !dbg !2516, !tbaa !1430
  %intnum_tobytes7 = getelementptr inbounds %struct.yasm_arch_module, ptr %25, i32 0, i32 12, !dbg !2516
  %26 = load ptr, ptr %intnum_tobytes7, align 8, !dbg !2516, !tbaa !2188
  %27 = load ptr, ptr %object, align 8, !dbg !2516, !tbaa !827
  %arch8 = getelementptr inbounds %struct.yasm_object, ptr %27, i32 0, i32 3, !dbg !2516
  %28 = load ptr, ptr %arch8, align 8, !dbg !2516, !tbaa !1429
  %29 = load ptr, ptr %cval, align 8, !dbg !2516, !tbaa !827
  %30 = load ptr, ptr %buf, align 8, !dbg !2516, !tbaa !827
  %31 = load ptr, ptr %bc.addr, align 8, !dbg !2516, !tbaa !827
  %call9 = call i32 %26(ptr noundef %28, ptr noundef %29, ptr noundef %30, i64 noundef 2, i64 noundef 16, i32 noundef 0, ptr noundef %31, i32 noundef 0), !dbg !2516
  %32 = load ptr, ptr %buf, align 8, !dbg !2517, !tbaa !827
  %add.ptr10 = getelementptr inbounds i8, ptr %32, i64 2, !dbg !2517
  store ptr %add.ptr10, ptr %buf, align 8, !dbg !2517, !tbaa !827
  br label %while.cond, !dbg !2518

while.cond:                                       ; preds = %sw.epilog, %entry
  %33 = load ptr, ptr %ch, align 8, !dbg !2519, !tbaa !827
  %34 = load i8, ptr %33, align 1, !dbg !2520, !tbaa !1376
  %tobool = icmp ne i8 %34, 0, !dbg !2518
  br i1 %tobool, label %while.body, label %while.end, !dbg !2518

while.body:                                       ; preds = %while.cond
  %35 = load ptr, ptr %ch, align 8, !dbg !2521, !tbaa !827
  %36 = load i8, ptr %35, align 1, !dbg !2523, !tbaa !1376
  %conv11 = sext i8 %36 to i32, !dbg !2523
  switch i32 %conv11, label %sw.default [
    i32 98, label %sw.bb
    i32 104, label %sw.bb13
    i32 119, label %sw.bb24
    i32 89, label %sw.bb35
    i32 84, label %sw.bb40
    i32 83, label %sw.bb51
    i32 90, label %sw.bb65
  ], !dbg !2524

sw.bb:                                            ; preds = %while.body
  %37 = load ptr, ptr %cvs, align 8, !dbg !2525, !tbaa !827
  %args = getelementptr inbounds %struct.cv_sym, ptr %37, i32 0, i32 2, !dbg !2525
  %38 = load i32, ptr %arg, align 4, !dbg !2525, !tbaa !1147
  %idxprom = sext i32 %38 to i64, !dbg !2525
  %arrayidx = getelementptr inbounds [10 x %union.anon], ptr %args, i64 0, i64 %idxprom, !dbg !2525
  %39 = load i64, ptr %arrayidx, align 8, !dbg !2525, !tbaa !1376
  %and = and i64 %39, 255, !dbg !2525
  %conv12 = trunc i64 %and to i8, !dbg !2525
  %40 = load ptr, ptr %buf, align 8, !dbg !2525, !tbaa !827
  %incdec.ptr = getelementptr inbounds i8, ptr %40, i32 1, !dbg !2525
  store ptr %incdec.ptr, ptr %buf, align 8, !dbg !2525, !tbaa !827
  store i8 %conv12, ptr %40, align 1, !dbg !2525, !tbaa !1376
  %41 = load i32, ptr %arg, align 4, !dbg !2527, !tbaa !1147
  %inc = add nsw i32 %41, 1, !dbg !2527
  store i32 %inc, ptr %arg, align 4, !dbg !2527, !tbaa !1147
  br label %sw.epilog, !dbg !2528

sw.bb13:                                          ; preds = %while.body
  %42 = load ptr, ptr %cval, align 8, !dbg !2529, !tbaa !827
  %43 = load ptr, ptr %cvs, align 8, !dbg !2530, !tbaa !827
  %args14 = getelementptr inbounds %struct.cv_sym, ptr %43, i32 0, i32 2, !dbg !2531
  %44 = load i32, ptr %arg, align 4, !dbg !2532, !tbaa !1147
  %inc15 = add nsw i32 %44, 1, !dbg !2532
  store i32 %inc15, ptr %arg, align 4, !dbg !2532, !tbaa !1147
  %idxprom16 = sext i32 %44 to i64, !dbg !2530
  %arrayidx17 = getelementptr inbounds [10 x %union.anon], ptr %args14, i64 0, i64 %idxprom16, !dbg !2530
  %45 = load i64, ptr %arrayidx17, align 8, !dbg !2533, !tbaa !1376
  call void @yasm_intnum_set_uint(ptr noundef %42, i64 noundef %45), !dbg !2534
  %46 = load ptr, ptr %object, align 8, !dbg !2535, !tbaa !827
  %arch18 = getelementptr inbounds %struct.yasm_object, ptr %46, i32 0, i32 3, !dbg !2535
  %47 = load ptr, ptr %arch18, align 8, !dbg !2535, !tbaa !1429
  %module19 = getelementptr inbounds %struct.yasm_arch_base, ptr %47, i32 0, i32 0, !dbg !2535
  %48 = load ptr, ptr %module19, align 8, !dbg !2535, !tbaa !1430
  %intnum_tobytes20 = getelementptr inbounds %struct.yasm_arch_module, ptr %48, i32 0, i32 12, !dbg !2535
  %49 = load ptr, ptr %intnum_tobytes20, align 8, !dbg !2535, !tbaa !2188
  %50 = load ptr, ptr %object, align 8, !dbg !2535, !tbaa !827
  %arch21 = getelementptr inbounds %struct.yasm_object, ptr %50, i32 0, i32 3, !dbg !2535
  %51 = load ptr, ptr %arch21, align 8, !dbg !2535, !tbaa !1429
  %52 = load ptr, ptr %cval, align 8, !dbg !2535, !tbaa !827
  %53 = load ptr, ptr %buf, align 8, !dbg !2535, !tbaa !827
  %54 = load ptr, ptr %bc.addr, align 8, !dbg !2535, !tbaa !827
  %call22 = call i32 %49(ptr noundef %51, ptr noundef %52, ptr noundef %53, i64 noundef 2, i64 noundef 16, i32 noundef 0, ptr noundef %54, i32 noundef 0), !dbg !2535
  %55 = load ptr, ptr %buf, align 8, !dbg !2536, !tbaa !827
  %add.ptr23 = getelementptr inbounds i8, ptr %55, i64 2, !dbg !2536
  store ptr %add.ptr23, ptr %buf, align 8, !dbg !2536, !tbaa !827
  br label %sw.epilog, !dbg !2537

sw.bb24:                                          ; preds = %while.body
  %56 = load ptr, ptr %cval, align 8, !dbg !2538, !tbaa !827
  %57 = load ptr, ptr %cvs, align 8, !dbg !2539, !tbaa !827
  %args25 = getelementptr inbounds %struct.cv_sym, ptr %57, i32 0, i32 2, !dbg !2540
  %58 = load i32, ptr %arg, align 4, !dbg !2541, !tbaa !1147
  %inc26 = add nsw i32 %58, 1, !dbg !2541
  store i32 %inc26, ptr %arg, align 4, !dbg !2541, !tbaa !1147
  %idxprom27 = sext i32 %58 to i64, !dbg !2539
  %arrayidx28 = getelementptr inbounds [10 x %union.anon], ptr %args25, i64 0, i64 %idxprom27, !dbg !2539
  %59 = load i64, ptr %arrayidx28, align 8, !dbg !2542, !tbaa !1376
  call void @yasm_intnum_set_uint(ptr noundef %56, i64 noundef %59), !dbg !2543
  %60 = load ptr, ptr %object, align 8, !dbg !2544, !tbaa !827
  %arch29 = getelementptr inbounds %struct.yasm_object, ptr %60, i32 0, i32 3, !dbg !2544
  %61 = load ptr, ptr %arch29, align 8, !dbg !2544, !tbaa !1429
  %module30 = getelementptr inbounds %struct.yasm_arch_base, ptr %61, i32 0, i32 0, !dbg !2544
  %62 = load ptr, ptr %module30, align 8, !dbg !2544, !tbaa !1430
  %intnum_tobytes31 = getelementptr inbounds %struct.yasm_arch_module, ptr %62, i32 0, i32 12, !dbg !2544
  %63 = load ptr, ptr %intnum_tobytes31, align 8, !dbg !2544, !tbaa !2188
  %64 = load ptr, ptr %object, align 8, !dbg !2544, !tbaa !827
  %arch32 = getelementptr inbounds %struct.yasm_object, ptr %64, i32 0, i32 3, !dbg !2544
  %65 = load ptr, ptr %arch32, align 8, !dbg !2544, !tbaa !1429
  %66 = load ptr, ptr %cval, align 8, !dbg !2544, !tbaa !827
  %67 = load ptr, ptr %buf, align 8, !dbg !2544, !tbaa !827
  %68 = load ptr, ptr %bc.addr, align 8, !dbg !2544, !tbaa !827
  %call33 = call i32 %63(ptr noundef %65, ptr noundef %66, ptr noundef %67, i64 noundef 4, i64 noundef 32, i32 noundef 0, ptr noundef %68, i32 noundef 0), !dbg !2544
  %69 = load ptr, ptr %buf, align 8, !dbg !2545, !tbaa !827
  %add.ptr34 = getelementptr inbounds i8, ptr %69, i64 4, !dbg !2545
  store ptr %add.ptr34, ptr %buf, align 8, !dbg !2545, !tbaa !827
  br label %sw.epilog, !dbg !2546

sw.bb35:                                          ; preds = %while.body
  %70 = load ptr, ptr %cvs, align 8, !dbg !2547, !tbaa !827
  %args36 = getelementptr inbounds %struct.cv_sym, ptr %70, i32 0, i32 2, !dbg !2548
  %71 = load i32, ptr %arg, align 4, !dbg !2549, !tbaa !1147
  %inc37 = add nsw i32 %71, 1, !dbg !2549
  store i32 %inc37, ptr %arg, align 4, !dbg !2549, !tbaa !1147
  %idxprom38 = sext i32 %71 to i64, !dbg !2547
  %arrayidx39 = getelementptr inbounds [10 x %union.anon], ptr %args36, i64 0, i64 %idxprom38, !dbg !2547
  %72 = load ptr, ptr %arrayidx39, align 8, !dbg !2550, !tbaa !1376
  %73 = load ptr, ptr %buf, align 8, !dbg !2551, !tbaa !827
  %74 = load ptr, ptr %bufstart.addr, align 8, !dbg !2552, !tbaa !827
  %sub.ptr.lhs.cast = ptrtoint ptr %73 to i64, !dbg !2553
  %sub.ptr.rhs.cast = ptrtoint ptr %74 to i64, !dbg !2553
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2553
  %75 = load ptr, ptr %bc.addr, align 8, !dbg !2554, !tbaa !827
  %76 = load ptr, ptr %d.addr, align 8, !dbg !2555, !tbaa !827
  %77 = load ptr, ptr %output_value.addr, align 8, !dbg !2556, !tbaa !827
  call void @cv_out_sym(ptr noundef %72, i64 noundef %sub.ptr.sub, ptr noundef %75, ptr noundef %buf, ptr noundef %76, ptr noundef %77), !dbg !2557
  br label %sw.epilog, !dbg !2558

sw.bb40:                                          ; preds = %while.body
  %78 = load ptr, ptr %cval, align 8, !dbg !2559, !tbaa !827
  %79 = load ptr, ptr %cvs, align 8, !dbg !2560, !tbaa !827
  %args41 = getelementptr inbounds %struct.cv_sym, ptr %79, i32 0, i32 2, !dbg !2561
  %80 = load i32, ptr %arg, align 4, !dbg !2562, !tbaa !1147
  %inc42 = add nsw i32 %80, 1, !dbg !2562
  store i32 %inc42, ptr %arg, align 4, !dbg !2562, !tbaa !1147
  %idxprom43 = sext i32 %80 to i64, !dbg !2560
  %arrayidx44 = getelementptr inbounds [10 x %union.anon], ptr %args41, i64 0, i64 %idxprom43, !dbg !2560
  %81 = load i64, ptr %arrayidx44, align 8, !dbg !2563, !tbaa !1376
  call void @yasm_intnum_set_uint(ptr noundef %78, i64 noundef %81), !dbg !2564
  %82 = load ptr, ptr %object, align 8, !dbg !2565, !tbaa !827
  %arch45 = getelementptr inbounds %struct.yasm_object, ptr %82, i32 0, i32 3, !dbg !2565
  %83 = load ptr, ptr %arch45, align 8, !dbg !2565, !tbaa !1429
  %module46 = getelementptr inbounds %struct.yasm_arch_base, ptr %83, i32 0, i32 0, !dbg !2565
  %84 = load ptr, ptr %module46, align 8, !dbg !2565, !tbaa !1430
  %intnum_tobytes47 = getelementptr inbounds %struct.yasm_arch_module, ptr %84, i32 0, i32 12, !dbg !2565
  %85 = load ptr, ptr %intnum_tobytes47, align 8, !dbg !2565, !tbaa !2188
  %86 = load ptr, ptr %object, align 8, !dbg !2565, !tbaa !827
  %arch48 = getelementptr inbounds %struct.yasm_object, ptr %86, i32 0, i32 3, !dbg !2565
  %87 = load ptr, ptr %arch48, align 8, !dbg !2565, !tbaa !1429
  %88 = load ptr, ptr %cval, align 8, !dbg !2565, !tbaa !827
  %89 = load ptr, ptr %buf, align 8, !dbg !2565, !tbaa !827
  %90 = load ptr, ptr %bc.addr, align 8, !dbg !2565, !tbaa !827
  %call49 = call i32 %85(ptr noundef %87, ptr noundef %88, ptr noundef %89, i64 noundef 4, i64 noundef 32, i32 noundef 0, ptr noundef %90, i32 noundef 0), !dbg !2565
  %91 = load ptr, ptr %buf, align 8, !dbg !2566, !tbaa !827
  %add.ptr50 = getelementptr inbounds i8, ptr %91, i64 4, !dbg !2566
  store ptr %add.ptr50, ptr %buf, align 8, !dbg !2566, !tbaa !827
  br label %sw.epilog, !dbg !2567

sw.bb51:                                          ; preds = %while.body
  %92 = load ptr, ptr %cvs, align 8, !dbg !2568, !tbaa !827
  %args52 = getelementptr inbounds %struct.cv_sym, ptr %92, i32 0, i32 2, !dbg !2569
  %93 = load i32, ptr %arg, align 4, !dbg !2570, !tbaa !1147
  %idxprom53 = sext i32 %93 to i64, !dbg !2568
  %arrayidx54 = getelementptr inbounds [10 x %union.anon], ptr %args52, i64 0, i64 %idxprom53, !dbg !2568
  %94 = load ptr, ptr %arrayidx54, align 8, !dbg !2571, !tbaa !1376
  %call55 = call i64 @strlen(ptr noundef %94) #8, !dbg !2572
  store i64 %call55, ptr %len, align 8, !dbg !2573, !tbaa !902
  %95 = load i64, ptr %len, align 8, !dbg !2574, !tbaa !902
  %cmp = icmp ule i64 %95, 255, !dbg !2575
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2574

cond.true:                                        ; preds = %sw.bb51
  %96 = load i64, ptr %len, align 8, !dbg !2576, !tbaa !902
  br label %cond.end, !dbg !2574

cond.false:                                       ; preds = %sw.bb51
  br label %cond.end, !dbg !2574

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %96, %cond.true ], [ 255, %cond.false ], !dbg !2574
  store i64 %cond, ptr %len, align 8, !dbg !2577, !tbaa !902
  %97 = load i64, ptr %len, align 8, !dbg !2578, !tbaa !902
  %and57 = and i64 %97, 255, !dbg !2578
  %conv58 = trunc i64 %and57 to i8, !dbg !2578
  %98 = load ptr, ptr %buf, align 8, !dbg !2578, !tbaa !827
  %incdec.ptr59 = getelementptr inbounds i8, ptr %98, i32 1, !dbg !2578
  store ptr %incdec.ptr59, ptr %buf, align 8, !dbg !2578, !tbaa !827
  store i8 %conv58, ptr %98, align 1, !dbg !2578, !tbaa !1376
  %99 = load ptr, ptr %buf, align 8, !dbg !2579, !tbaa !827
  %100 = load ptr, ptr %cvs, align 8, !dbg !2580, !tbaa !827
  %args60 = getelementptr inbounds %struct.cv_sym, ptr %100, i32 0, i32 2, !dbg !2581
  %101 = load i32, ptr %arg, align 4, !dbg !2582, !tbaa !1147
  %idxprom61 = sext i32 %101 to i64, !dbg !2580
  %arrayidx62 = getelementptr inbounds [10 x %union.anon], ptr %args60, i64 0, i64 %idxprom61, !dbg !2580
  %102 = load ptr, ptr %arrayidx62, align 8, !dbg !2583, !tbaa !1376
  %103 = load i64, ptr %len, align 8, !dbg !2584, !tbaa !902
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %99, ptr align 1 %102, i64 %103, i1 false), !dbg !2585
  %104 = load i64, ptr %len, align 8, !dbg !2586, !tbaa !902
  %105 = load ptr, ptr %buf, align 8, !dbg !2587, !tbaa !827
  %add.ptr63 = getelementptr inbounds i8, ptr %105, i64 %104, !dbg !2587
  store ptr %add.ptr63, ptr %buf, align 8, !dbg !2587, !tbaa !827
  %106 = load i32, ptr %arg, align 4, !dbg !2588, !tbaa !1147
  %inc64 = add nsw i32 %106, 1, !dbg !2588
  store i32 %inc64, ptr %arg, align 4, !dbg !2588, !tbaa !1147
  br label %sw.epilog, !dbg !2589

sw.bb65:                                          ; preds = %while.body
  %107 = load ptr, ptr %cvs, align 8, !dbg !2590, !tbaa !827
  %args66 = getelementptr inbounds %struct.cv_sym, ptr %107, i32 0, i32 2, !dbg !2591
  %108 = load i32, ptr %arg, align 4, !dbg !2592, !tbaa !1147
  %idxprom67 = sext i32 %108 to i64, !dbg !2590
  %arrayidx68 = getelementptr inbounds [10 x %union.anon], ptr %args66, i64 0, i64 %idxprom67, !dbg !2590
  %109 = load ptr, ptr %arrayidx68, align 8, !dbg !2593, !tbaa !1376
  %call69 = call i64 @strlen(ptr noundef %109) #8, !dbg !2594
  %add = add i64 %call69, 1, !dbg !2595
  store i64 %add, ptr %len, align 8, !dbg !2596, !tbaa !902
  %110 = load ptr, ptr %buf, align 8, !dbg !2597, !tbaa !827
  %111 = load ptr, ptr %cvs, align 8, !dbg !2598, !tbaa !827
  %args70 = getelementptr inbounds %struct.cv_sym, ptr %111, i32 0, i32 2, !dbg !2599
  %112 = load i32, ptr %arg, align 4, !dbg !2600, !tbaa !1147
  %idxprom71 = sext i32 %112 to i64, !dbg !2598
  %arrayidx72 = getelementptr inbounds [10 x %union.anon], ptr %args70, i64 0, i64 %idxprom71, !dbg !2598
  %113 = load ptr, ptr %arrayidx72, align 8, !dbg !2601, !tbaa !1376
  %114 = load i64, ptr %len, align 8, !dbg !2602, !tbaa !902
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %110, ptr align 1 %113, i64 %114, i1 false), !dbg !2603
  %115 = load i64, ptr %len, align 8, !dbg !2604, !tbaa !902
  %116 = load ptr, ptr %buf, align 8, !dbg !2605, !tbaa !827
  %add.ptr73 = getelementptr inbounds i8, ptr %116, i64 %115, !dbg !2605
  store ptr %add.ptr73, ptr %buf, align 8, !dbg !2605, !tbaa !827
  %117 = load i32, ptr %arg, align 4, !dbg !2606, !tbaa !1147
  %inc74 = add nsw i32 %117, 1, !dbg !2606
  store i32 %inc74, ptr %arg, align 4, !dbg !2606, !tbaa !1147
  br label %sw.epilog, !dbg !2607

sw.default:                                       ; preds = %while.body
  %118 = load ptr, ptr @yasm_internal_error_, align 8, !dbg !2608, !tbaa !827
  call void %118(ptr noundef @.str.8, i32 noundef 1093, ptr noundef @.str.15), !dbg !2608
  br label %sw.epilog, !dbg !2609

sw.epilog:                                        ; preds = %sw.default, %sw.bb65, %cond.end, %sw.bb40, %sw.bb35, %sw.bb24, %sw.bb13, %sw.bb
  %119 = load ptr, ptr %ch, align 8, !dbg !2610, !tbaa !827
  %incdec.ptr75 = getelementptr inbounds i8, ptr %119, i32 1, !dbg !2610
  store ptr %incdec.ptr75, ptr %ch, align 8, !dbg !2610, !tbaa !827
  br label %while.cond, !dbg !2518, !llvm.loop !2611

while.end:                                        ; preds = %while.cond
  %120 = load ptr, ptr %buf, align 8, !dbg !2613, !tbaa !827
  %121 = load ptr, ptr %bufp.addr, align 8, !dbg !2614, !tbaa !827
  store ptr %120, ptr %121, align 8, !dbg !2615, !tbaa !827
  %122 = load ptr, ptr %cval, align 8, !dbg !2616, !tbaa !827
  call void @yasm_intnum_destroy(ptr noundef %122), !dbg !2617
  call void @llvm.lifetime.end.p0(i64 4, ptr %arg) #7, !dbg !2618
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7, !dbg !2618
  call void @llvm.lifetime.end.p0(i64 8, ptr %ch) #7, !dbg !2618
  call void @llvm.lifetime.end.p0(i64 8, ptr %cval) #7, !dbg !2618
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #7, !dbg !2618
  call void @llvm.lifetime.end.p0(i64 8, ptr %cvs) #7, !dbg !2618
  call void @llvm.lifetime.end.p0(i64 8, ptr %object) #7, !dbg !2618
  ret i32 0, !dbg !2619
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare !dbg !2620 ptr @yasm_symrec_get_name(ptr noundef) #2

declare !dbg !2625 i32 @yasm_symrec_get_label(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @cv8_add_sym_label(ptr noundef %sect, ptr noundef %sym) #0 !dbg !2630 {
entry:
  %sect.addr = alloca ptr, align 8
  %sym.addr = alloca ptr, align 8
  %bc = alloca ptr, align 8
  %cvs = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !2634, metadata !DIExpression()), !dbg !2638
  store ptr %sym, ptr %sym.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %sym.addr, metadata !2635, metadata !DIExpression()), !dbg !2639
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #7, !dbg !2640
  tail call void @llvm.dbg.declare(metadata ptr %bc, metadata !2636, metadata !DIExpression()), !dbg !2641
  call void @llvm.lifetime.start.p0(i64 8, ptr %cvs) #7, !dbg !2642
  tail call void @llvm.dbg.declare(metadata ptr %cvs, metadata !2637, metadata !DIExpression()), !dbg !2643
  %0 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !2644, !tbaa !827
  %call = call ptr %0(i64 noundef 96), !dbg !2644
  store ptr %call, ptr %cvs, align 8, !dbg !2643, !tbaa !827
  %1 = load ptr, ptr %cvs, align 8, !dbg !2645, !tbaa !827
  %type = getelementptr inbounds %struct.cv_sym, ptr %1, i32 0, i32 0, !dbg !2646
  store i32 4357, ptr %type, align 8, !dbg !2647, !tbaa !1367
  %2 = load ptr, ptr %cvs, align 8, !dbg !2648, !tbaa !827
  %format = getelementptr inbounds %struct.cv_sym, ptr %2, i32 0, i32 1, !dbg !2649
  store ptr @.str.19, ptr %format, align 8, !dbg !2650, !tbaa !1372
  %3 = load ptr, ptr %sym.addr, align 8, !dbg !2651, !tbaa !827
  %4 = load ptr, ptr %cvs, align 8, !dbg !2652, !tbaa !827
  %args = getelementptr inbounds %struct.cv_sym, ptr %4, i32 0, i32 2, !dbg !2653
  %arrayidx = getelementptr inbounds [10 x %union.anon], ptr %args, i64 0, i64 0, !dbg !2652
  store ptr %3, ptr %arrayidx, align 8, !dbg !2654, !tbaa !1376
  %5 = load ptr, ptr %cvs, align 8, !dbg !2655, !tbaa !827
  %args1 = getelementptr inbounds %struct.cv_sym, ptr %5, i32 0, i32 2, !dbg !2656
  %arrayidx2 = getelementptr inbounds [10 x %union.anon], ptr %args1, i64 0, i64 1, !dbg !2655
  store i64 0, ptr %arrayidx2, align 8, !dbg !2657, !tbaa !1376
  %6 = load ptr, ptr %sym.addr, align 8, !dbg !2658, !tbaa !827
  %call3 = call ptr @yasm_symrec_get_name(ptr noundef %6), !dbg !2659
  %call4 = call ptr @yasm__xstrdup(ptr noundef %call3), !dbg !2660
  %7 = load ptr, ptr %cvs, align 8, !dbg !2661, !tbaa !827
  %args5 = getelementptr inbounds %struct.cv_sym, ptr %7, i32 0, i32 2, !dbg !2662
  %arrayidx6 = getelementptr inbounds [10 x %union.anon], ptr %args5, i64 0, i64 2, !dbg !2661
  store ptr %call4, ptr %arrayidx6, align 8, !dbg !2663, !tbaa !1376
  %8 = load ptr, ptr %cvs, align 8, !dbg !2664, !tbaa !827
  %call7 = call ptr @yasm_bc_create_common(ptr noundef @cv_sym_bc_callback, ptr noundef %8, i64 noundef 0), !dbg !2665
  store ptr %call7, ptr %bc, align 8, !dbg !2666, !tbaa !827
  %9 = load ptr, ptr %cvs, align 8, !dbg !2667, !tbaa !827
  %call8 = call i64 @cv_sym_size(ptr noundef %9), !dbg !2668
  %10 = load ptr, ptr %bc, align 8, !dbg !2669, !tbaa !827
  %len = getelementptr inbounds %struct.yasm_bytecode, ptr %10, i32 0, i32 4, !dbg !2670
  store i64 %call8, ptr %len, align 8, !dbg !2671, !tbaa !949
  %11 = load ptr, ptr %sect.addr, align 8, !dbg !2672, !tbaa !827
  %12 = load ptr, ptr %bc, align 8, !dbg !2673, !tbaa !827
  %call9 = call ptr @yasm_cv__append_bc(ptr noundef %11, ptr noundef %12), !dbg !2674
  %13 = load ptr, ptr %cvs, align 8, !dbg !2675, !tbaa !827
  call void @llvm.lifetime.end.p0(i64 8, ptr %cvs) #7, !dbg !2676
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #7, !dbg !2676
  ret ptr %13, !dbg !2677
}

; Function Attrs: nounwind uwtable
define internal ptr @cv8_add_sym_data(ptr noundef %sect, i64 noundef %type, ptr noundef %sym, i32 noundef %is_global) #0 !dbg !2678 {
entry:
  %sect.addr = alloca ptr, align 8
  %type.addr = alloca i64, align 8
  %sym.addr = alloca ptr, align 8
  %is_global.addr = alloca i32, align 4
  %bc = alloca ptr, align 8
  %cvs = alloca ptr, align 8
  store ptr %sect, ptr %sect.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %sect.addr, metadata !2682, metadata !DIExpression()), !dbg !2688
  store i64 %type, ptr %type.addr, align 8, !tbaa !902
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2683, metadata !DIExpression()), !dbg !2689
  store ptr %sym, ptr %sym.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %sym.addr, metadata !2684, metadata !DIExpression()), !dbg !2690
  store i32 %is_global, ptr %is_global.addr, align 4, !tbaa !1147
  tail call void @llvm.dbg.declare(metadata ptr %is_global.addr, metadata !2685, metadata !DIExpression()), !dbg !2691
  call void @llvm.lifetime.start.p0(i64 8, ptr %bc) #7, !dbg !2692
  tail call void @llvm.dbg.declare(metadata ptr %bc, metadata !2686, metadata !DIExpression()), !dbg !2693
  call void @llvm.lifetime.start.p0(i64 8, ptr %cvs) #7, !dbg !2694
  tail call void @llvm.dbg.declare(metadata ptr %cvs, metadata !2687, metadata !DIExpression()), !dbg !2695
  %0 = load ptr, ptr @yasm_xmalloc, align 8, !dbg !2696, !tbaa !827
  %call = call ptr %0(i64 noundef 96), !dbg !2696
  store ptr %call, ptr %cvs, align 8, !dbg !2695, !tbaa !827
  %1 = load i32, ptr %is_global.addr, align 4, !dbg !2697, !tbaa !1147
  %tobool = icmp ne i32 %1, 0, !dbg !2697
  %2 = zext i1 %tobool to i64, !dbg !2697
  %cond = select i1 %tobool, i32 4365, i32 4364, !dbg !2697
  %3 = load ptr, ptr %cvs, align 8, !dbg !2698, !tbaa !827
  %type1 = getelementptr inbounds %struct.cv_sym, ptr %3, i32 0, i32 0, !dbg !2699
  store i32 %cond, ptr %type1, align 8, !dbg !2700, !tbaa !1367
  %4 = load ptr, ptr %cvs, align 8, !dbg !2701, !tbaa !827
  %format = getelementptr inbounds %struct.cv_sym, ptr %4, i32 0, i32 1, !dbg !2702
  store ptr @.str.20, ptr %format, align 8, !dbg !2703, !tbaa !1372
  %5 = load i64, ptr %type.addr, align 8, !dbg !2704, !tbaa !902
  %6 = load ptr, ptr %cvs, align 8, !dbg !2705, !tbaa !827
  %args = getelementptr inbounds %struct.cv_sym, ptr %6, i32 0, i32 2, !dbg !2706
  %arrayidx = getelementptr inbounds [10 x %union.anon], ptr %args, i64 0, i64 0, !dbg !2705
  store i64 %5, ptr %arrayidx, align 8, !dbg !2707, !tbaa !1376
  %7 = load ptr, ptr %sym.addr, align 8, !dbg !2708, !tbaa !827
  %8 = load ptr, ptr %cvs, align 8, !dbg !2709, !tbaa !827
  %args2 = getelementptr inbounds %struct.cv_sym, ptr %8, i32 0, i32 2, !dbg !2710
  %arrayidx3 = getelementptr inbounds [10 x %union.anon], ptr %args2, i64 0, i64 1, !dbg !2709
  store ptr %7, ptr %arrayidx3, align 8, !dbg !2711, !tbaa !1376
  %9 = load ptr, ptr %sym.addr, align 8, !dbg !2712, !tbaa !827
  %call4 = call ptr @yasm_symrec_get_name(ptr noundef %9), !dbg !2713
  %call5 = call ptr @yasm__xstrdup(ptr noundef %call4), !dbg !2714
  %10 = load ptr, ptr %cvs, align 8, !dbg !2715, !tbaa !827
  %args6 = getelementptr inbounds %struct.cv_sym, ptr %10, i32 0, i32 2, !dbg !2716
  %arrayidx7 = getelementptr inbounds [10 x %union.anon], ptr %args6, i64 0, i64 2, !dbg !2715
  store ptr %call5, ptr %arrayidx7, align 8, !dbg !2717, !tbaa !1376
  %11 = load ptr, ptr %cvs, align 8, !dbg !2718, !tbaa !827
  %call8 = call ptr @yasm_bc_create_common(ptr noundef @cv_sym_bc_callback, ptr noundef %11, i64 noundef 0), !dbg !2719
  store ptr %call8, ptr %bc, align 8, !dbg !2720, !tbaa !827
  %12 = load ptr, ptr %cvs, align 8, !dbg !2721, !tbaa !827
  %call9 = call i64 @cv_sym_size(ptr noundef %12), !dbg !2722
  %13 = load ptr, ptr %bc, align 8, !dbg !2723, !tbaa !827
  %len = getelementptr inbounds %struct.yasm_bytecode, ptr %13, i32 0, i32 4, !dbg !2724
  store i64 %call9, ptr %len, align 8, !dbg !2725, !tbaa !949
  %14 = load ptr, ptr %sect.addr, align 8, !dbg !2726, !tbaa !827
  %15 = load ptr, ptr %bc, align 8, !dbg !2727, !tbaa !827
  %call10 = call ptr @yasm_cv__append_bc(ptr noundef %14, ptr noundef %15), !dbg !2728
  %16 = load ptr, ptr %cvs, align 8, !dbg !2729, !tbaa !827
  call void @llvm.lifetime.end.p0(i64 8, ptr %cvs) #7, !dbg !2730
  call void @llvm.lifetime.end.p0(i64 8, ptr %bc) #7, !dbg !2730
  ret ptr %16, !dbg !2731
}

declare !dbg !2732 i32 @yasm_symrec_get_visibility(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @cv8_symhead_bc_destroy(ptr noundef %contents) #0 !dbg !2736 {
entry:
  %contents.addr = alloca ptr, align 8
  store ptr %contents, ptr %contents.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %contents.addr, metadata !2738, metadata !DIExpression()), !dbg !2739
  %0 = load ptr, ptr @yasm_xfree, align 8, !dbg !2740, !tbaa !827
  %1 = load ptr, ptr %contents.addr, align 8, !dbg !2741, !tbaa !827
  call void %0(ptr noundef %1), !dbg !2740
  ret void, !dbg !2742
}

; Function Attrs: nounwind uwtable
define internal void @cv8_symhead_bc_print(ptr noundef %contents, ptr noundef %f, i32 noundef %indent_level) #0 !dbg !2743 {
entry:
  %contents.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %indent_level.addr = alloca i32, align 4
  store ptr %contents, ptr %contents.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %contents.addr, metadata !2745, metadata !DIExpression()), !dbg !2748
  store ptr %f, ptr %f.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !2746, metadata !DIExpression()), !dbg !2749
  store i32 %indent_level, ptr %indent_level.addr, align 4, !tbaa !1147
  tail call void @llvm.dbg.declare(metadata ptr %indent_level.addr, metadata !2747, metadata !DIExpression()), !dbg !2750
  ret void, !dbg !2751
}

; Function Attrs: nounwind uwtable
define internal i32 @cv8_symhead_bc_calc_len(ptr noundef %bc, ptr noundef %add_span, ptr noundef %add_span_data) #0 !dbg !2752 {
entry:
  %bc.addr = alloca ptr, align 8
  %add_span.addr = alloca ptr, align 8
  %add_span_data.addr = alloca ptr, align 8
  store ptr %bc, ptr %bc.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !2754, metadata !DIExpression()), !dbg !2757
  store ptr %add_span, ptr %add_span.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %add_span.addr, metadata !2755, metadata !DIExpression()), !dbg !2758
  store ptr %add_span_data, ptr %add_span_data.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %add_span_data.addr, metadata !2756, metadata !DIExpression()), !dbg !2759
  %0 = load ptr, ptr @yasm_internal_error_, align 8, !dbg !2760, !tbaa !827
  call void %0(ptr noundef @.str.8, i32 noundef 718, ptr noundef @.str.21), !dbg !2760
  ret i32 0, !dbg !2761
}

; Function Attrs: nounwind uwtable
define internal i32 @cv8_symhead_bc_tobytes(ptr noundef %bc, ptr noundef %bufp, ptr noundef %bufstart, ptr noundef %d, ptr noundef %output_value, ptr noundef %output_reloc) #0 !dbg !2762 {
entry:
  %bc.addr = alloca ptr, align 8
  %bufp.addr = alloca ptr, align 8
  %bufstart.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %output_value.addr = alloca ptr, align 8
  %output_reloc.addr = alloca ptr, align 8
  %object = alloca ptr, align 8
  %head = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %intn = alloca ptr, align 8
  %cval = alloca ptr, align 8
  store ptr %bc, ptr %bc.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !2764, metadata !DIExpression()), !dbg !2775
  store ptr %bufp, ptr %bufp.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %bufp.addr, metadata !2765, metadata !DIExpression()), !dbg !2776
  store ptr %bufstart, ptr %bufstart.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %bufstart.addr, metadata !2766, metadata !DIExpression()), !dbg !2777
  store ptr %d, ptr %d.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2767, metadata !DIExpression()), !dbg !2778
  store ptr %output_value, ptr %output_value.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %output_value.addr, metadata !2768, metadata !DIExpression()), !dbg !2779
  store ptr %output_reloc, ptr %output_reloc.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %output_reloc.addr, metadata !2769, metadata !DIExpression()), !dbg !2780
  call void @llvm.lifetime.start.p0(i64 8, ptr %object) #7, !dbg !2781
  tail call void @llvm.dbg.declare(metadata ptr %object, metadata !2770, metadata !DIExpression()), !dbg !2782
  %0 = load ptr, ptr %bc.addr, align 8, !dbg !2783, !tbaa !827
  %section = getelementptr inbounds %struct.yasm_bytecode, ptr %0, i32 0, i32 2, !dbg !2784
  %1 = load ptr, ptr %section, align 8, !dbg !2784, !tbaa !2146
  %call = call ptr @yasm_section_get_object(ptr noundef %1), !dbg !2785
  store ptr %call, ptr %object, align 8, !dbg !2782, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #7, !dbg !2786
  tail call void @llvm.dbg.declare(metadata ptr %head, metadata !2771, metadata !DIExpression()), !dbg !2787
  %2 = load ptr, ptr %bc.addr, align 8, !dbg !2788, !tbaa !827
  %contents = getelementptr inbounds %struct.yasm_bytecode, ptr %2, i32 0, i32 10, !dbg !2789
  %3 = load ptr, ptr %contents, align 8, !dbg !2789, !tbaa !2152
  store ptr %3, ptr %head, align 8, !dbg !2787, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #7, !dbg !2790
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !2772, metadata !DIExpression()), !dbg !2791
  %4 = load ptr, ptr %bufp.addr, align 8, !dbg !2792, !tbaa !827
  %5 = load ptr, ptr %4, align 8, !dbg !2793, !tbaa !827
  store ptr %5, ptr %buf, align 8, !dbg !2791, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %intn) #7, !dbg !2794
  tail call void @llvm.dbg.declare(metadata ptr %intn, metadata !2773, metadata !DIExpression()), !dbg !2795
  call void @llvm.lifetime.start.p0(i64 8, ptr %cval) #7, !dbg !2794
  tail call void @llvm.dbg.declare(metadata ptr %cval, metadata !2774, metadata !DIExpression()), !dbg !2796
  %call1 = call ptr @yasm_intnum_create_uint(i64 noundef 4), !dbg !2797
  store ptr %call1, ptr %cval, align 8, !dbg !2798, !tbaa !827
  %6 = load ptr, ptr %head, align 8, !dbg !2799, !tbaa !827
  %first = getelementptr inbounds %struct.cv8_symhead, ptr %6, i32 0, i32 3, !dbg !2801
  %7 = load i32, ptr %first, align 8, !dbg !2801, !tbaa !1165
  %tobool = icmp ne i32 %7, 0, !dbg !2799
  br i1 %tobool, label %if.then, label %if.end, !dbg !2802

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %object, align 8, !dbg !2803, !tbaa !827
  %arch = getelementptr inbounds %struct.yasm_object, ptr %8, i32 0, i32 3, !dbg !2803
  %9 = load ptr, ptr %arch, align 8, !dbg !2803, !tbaa !1429
  %module = getelementptr inbounds %struct.yasm_arch_base, ptr %9, i32 0, i32 0, !dbg !2803
  %10 = load ptr, ptr %module, align 8, !dbg !2803, !tbaa !1430
  %intnum_tobytes = getelementptr inbounds %struct.yasm_arch_module, ptr %10, i32 0, i32 12, !dbg !2803
  %11 = load ptr, ptr %intnum_tobytes, align 8, !dbg !2803, !tbaa !2188
  %12 = load ptr, ptr %object, align 8, !dbg !2803, !tbaa !827
  %arch2 = getelementptr inbounds %struct.yasm_object, ptr %12, i32 0, i32 3, !dbg !2803
  %13 = load ptr, ptr %arch2, align 8, !dbg !2803, !tbaa !1429
  %14 = load ptr, ptr %cval, align 8, !dbg !2803, !tbaa !827
  %15 = load ptr, ptr %buf, align 8, !dbg !2803, !tbaa !827
  %16 = load ptr, ptr %bc.addr, align 8, !dbg !2803, !tbaa !827
  %call3 = call i32 %11(ptr noundef %13, ptr noundef %14, ptr noundef %15, i64 noundef 4, i64 noundef 32, i32 noundef 0, ptr noundef %16, i32 noundef 0), !dbg !2803
  %17 = load ptr, ptr %buf, align 8, !dbg !2805, !tbaa !827
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 4, !dbg !2805
  store ptr %add.ptr, ptr %buf, align 8, !dbg !2805, !tbaa !827
  br label %if.end, !dbg !2806

if.end:                                           ; preds = %if.then, %entry
  %18 = load ptr, ptr %cval, align 8, !dbg !2807, !tbaa !827
  %19 = load ptr, ptr %head, align 8, !dbg !2808, !tbaa !827
  %type = getelementptr inbounds %struct.cv8_symhead, ptr %19, i32 0, i32 0, !dbg !2809
  %20 = load i32, ptr %type, align 8, !dbg !2809, !tbaa !1159
  %conv = zext i32 %20 to i64, !dbg !2808
  call void @yasm_intnum_set_uint(ptr noundef %18, i64 noundef %conv), !dbg !2810
  %21 = load ptr, ptr %object, align 8, !dbg !2811, !tbaa !827
  %arch4 = getelementptr inbounds %struct.yasm_object, ptr %21, i32 0, i32 3, !dbg !2811
  %22 = load ptr, ptr %arch4, align 8, !dbg !2811, !tbaa !1429
  %module5 = getelementptr inbounds %struct.yasm_arch_base, ptr %22, i32 0, i32 0, !dbg !2811
  %23 = load ptr, ptr %module5, align 8, !dbg !2811, !tbaa !1430
  %intnum_tobytes6 = getelementptr inbounds %struct.yasm_arch_module, ptr %23, i32 0, i32 12, !dbg !2811
  %24 = load ptr, ptr %intnum_tobytes6, align 8, !dbg !2811, !tbaa !2188
  %25 = load ptr, ptr %object, align 8, !dbg !2811, !tbaa !827
  %arch7 = getelementptr inbounds %struct.yasm_object, ptr %25, i32 0, i32 3, !dbg !2811
  %26 = load ptr, ptr %arch7, align 8, !dbg !2811, !tbaa !1429
  %27 = load ptr, ptr %cval, align 8, !dbg !2811, !tbaa !827
  %28 = load ptr, ptr %buf, align 8, !dbg !2811, !tbaa !827
  %29 = load ptr, ptr %bc.addr, align 8, !dbg !2811, !tbaa !827
  %call8 = call i32 %24(ptr noundef %26, ptr noundef %27, ptr noundef %28, i64 noundef 4, i64 noundef 32, i32 noundef 0, ptr noundef %29, i32 noundef 0), !dbg !2811
  %30 = load ptr, ptr %buf, align 8, !dbg !2812, !tbaa !827
  %add.ptr9 = getelementptr inbounds i8, ptr %30, i64 4, !dbg !2812
  store ptr %add.ptr9, ptr %buf, align 8, !dbg !2812, !tbaa !827
  %31 = load ptr, ptr %cval, align 8, !dbg !2813, !tbaa !827
  %32 = load ptr, ptr %bc.addr, align 8, !dbg !2814, !tbaa !827
  %len = getelementptr inbounds %struct.yasm_bytecode, ptr %32, i32 0, i32 4, !dbg !2815
  %33 = load i64, ptr %len, align 8, !dbg !2815, !tbaa !949
  call void @yasm_intnum_set_uint(ptr noundef %31, i64 noundef %33), !dbg !2816
  %34 = load ptr, ptr %head, align 8, !dbg !2817, !tbaa !827
  %start_prevbc = getelementptr inbounds %struct.cv8_symhead, ptr %34, i32 0, i32 1, !dbg !2818
  %35 = load ptr, ptr %start_prevbc, align 8, !dbg !2818, !tbaa !1171
  %36 = load ptr, ptr %head, align 8, !dbg !2819, !tbaa !827
  %end_prevbc = getelementptr inbounds %struct.cv8_symhead, ptr %36, i32 0, i32 2, !dbg !2820
  %37 = load ptr, ptr %end_prevbc, align 8, !dbg !2820, !tbaa !1188
  %call10 = call ptr @yasm_calc_bc_dist(ptr noundef %35, ptr noundef %37), !dbg !2821
  store ptr %call10, ptr %intn, align 8, !dbg !2822, !tbaa !827
  %38 = load ptr, ptr %intn, align 8, !dbg !2823, !tbaa !827
  %39 = load ptr, ptr %cval, align 8, !dbg !2824, !tbaa !827
  %call11 = call i32 @yasm_intnum_calc(ptr noundef %38, i32 noundef 2, ptr noundef %39), !dbg !2825
  %40 = load ptr, ptr %object, align 8, !dbg !2826, !tbaa !827
  %arch12 = getelementptr inbounds %struct.yasm_object, ptr %40, i32 0, i32 3, !dbg !2826
  %41 = load ptr, ptr %arch12, align 8, !dbg !2826, !tbaa !1429
  %module13 = getelementptr inbounds %struct.yasm_arch_base, ptr %41, i32 0, i32 0, !dbg !2826
  %42 = load ptr, ptr %module13, align 8, !dbg !2826, !tbaa !1430
  %intnum_tobytes14 = getelementptr inbounds %struct.yasm_arch_module, ptr %42, i32 0, i32 12, !dbg !2826
  %43 = load ptr, ptr %intnum_tobytes14, align 8, !dbg !2826, !tbaa !2188
  %44 = load ptr, ptr %object, align 8, !dbg !2826, !tbaa !827
  %arch15 = getelementptr inbounds %struct.yasm_object, ptr %44, i32 0, i32 3, !dbg !2826
  %45 = load ptr, ptr %arch15, align 8, !dbg !2826, !tbaa !1429
  %46 = load ptr, ptr %intn, align 8, !dbg !2826, !tbaa !827
  %47 = load ptr, ptr %buf, align 8, !dbg !2826, !tbaa !827
  %48 = load ptr, ptr %bc.addr, align 8, !dbg !2826, !tbaa !827
  %call16 = call i32 %43(ptr noundef %45, ptr noundef %46, ptr noundef %47, i64 noundef 4, i64 noundef 32, i32 noundef 0, ptr noundef %48, i32 noundef 0), !dbg !2826
  %49 = load ptr, ptr %buf, align 8, !dbg !2827, !tbaa !827
  %add.ptr17 = getelementptr inbounds i8, ptr %49, i64 4, !dbg !2827
  store ptr %add.ptr17, ptr %buf, align 8, !dbg !2827, !tbaa !827
  %50 = load ptr, ptr %intn, align 8, !dbg !2828, !tbaa !827
  call void @yasm_intnum_destroy(ptr noundef %50), !dbg !2829
  %51 = load ptr, ptr %buf, align 8, !dbg !2830, !tbaa !827
  %52 = load ptr, ptr %bufp.addr, align 8, !dbg !2831, !tbaa !827
  store ptr %51, ptr %52, align 8, !dbg !2832, !tbaa !827
  %53 = load ptr, ptr %cval, align 8, !dbg !2833, !tbaa !827
  call void @yasm_intnum_destroy(ptr noundef %53), !dbg !2834
  call void @llvm.lifetime.end.p0(i64 8, ptr %cval) #7, !dbg !2835
  call void @llvm.lifetime.end.p0(i64 8, ptr %intn) #7, !dbg !2835
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #7, !dbg !2835
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #7, !dbg !2835
  call void @llvm.lifetime.end.p0(i64 8, ptr %object) #7, !dbg !2835
  ret i32 0, !dbg !2836
}

declare !dbg !2837 i32 @yasm_intnum_calc(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @cv8_fileinfo_bc_destroy(ptr noundef %contents) #0 !dbg !2840 {
entry:
  %contents.addr = alloca ptr, align 8
  store ptr %contents, ptr %contents.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %contents.addr, metadata !2842, metadata !DIExpression()), !dbg !2843
  %0 = load ptr, ptr @yasm_xfree, align 8, !dbg !2844, !tbaa !827
  %1 = load ptr, ptr %contents.addr, align 8, !dbg !2845, !tbaa !827
  call void %0(ptr noundef %1), !dbg !2844
  ret void, !dbg !2846
}

; Function Attrs: nounwind uwtable
define internal void @cv8_fileinfo_bc_print(ptr noundef %contents, ptr noundef %f, i32 noundef %indent_level) #0 !dbg !2847 {
entry:
  %contents.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %indent_level.addr = alloca i32, align 4
  store ptr %contents, ptr %contents.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %contents.addr, metadata !2849, metadata !DIExpression()), !dbg !2852
  store ptr %f, ptr %f.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !2850, metadata !DIExpression()), !dbg !2853
  store i32 %indent_level, ptr %indent_level.addr, align 4, !tbaa !1147
  tail call void @llvm.dbg.declare(metadata ptr %indent_level.addr, metadata !2851, metadata !DIExpression()), !dbg !2854
  ret void, !dbg !2855
}

; Function Attrs: nounwind uwtable
define internal i32 @cv8_fileinfo_bc_calc_len(ptr noundef %bc, ptr noundef %add_span, ptr noundef %add_span_data) #0 !dbg !2856 {
entry:
  %bc.addr = alloca ptr, align 8
  %add_span.addr = alloca ptr, align 8
  %add_span_data.addr = alloca ptr, align 8
  store ptr %bc, ptr %bc.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !2858, metadata !DIExpression()), !dbg !2861
  store ptr %add_span, ptr %add_span.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %add_span.addr, metadata !2859, metadata !DIExpression()), !dbg !2862
  store ptr %add_span_data, ptr %add_span_data.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %add_span_data.addr, metadata !2860, metadata !DIExpression()), !dbg !2863
  %0 = load ptr, ptr @yasm_internal_error_, align 8, !dbg !2864, !tbaa !827
  call void %0(ptr noundef @.str.8, i32 noundef 792, ptr noundef @.str.22), !dbg !2864
  ret i32 0, !dbg !2865
}

; Function Attrs: nounwind uwtable
define internal i32 @cv8_fileinfo_bc_tobytes(ptr noundef %bc, ptr noundef %bufp, ptr noundef %bufstart, ptr noundef %d, ptr noundef %output_value, ptr noundef %output_reloc) #0 !dbg !2866 {
entry:
  %bc.addr = alloca ptr, align 8
  %bufp.addr = alloca ptr, align 8
  %bufstart.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %output_value.addr = alloca ptr, align 8
  %output_reloc.addr = alloca ptr, align 8
  %object = alloca ptr, align 8
  %fi = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %cval = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %bc, ptr %bc.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %bc.addr, metadata !2868, metadata !DIExpression()), !dbg !2879
  store ptr %bufp, ptr %bufp.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %bufp.addr, metadata !2869, metadata !DIExpression()), !dbg !2880
  store ptr %bufstart, ptr %bufstart.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %bufstart.addr, metadata !2870, metadata !DIExpression()), !dbg !2881
  store ptr %d, ptr %d.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2871, metadata !DIExpression()), !dbg !2882
  store ptr %output_value, ptr %output_value.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %output_value.addr, metadata !2872, metadata !DIExpression()), !dbg !2883
  store ptr %output_reloc, ptr %output_reloc.addr, align 8, !tbaa !827
  tail call void @llvm.dbg.declare(metadata ptr %output_reloc.addr, metadata !2873, metadata !DIExpression()), !dbg !2884
  call void @llvm.lifetime.start.p0(i64 8, ptr %object) #7, !dbg !2885
  tail call void @llvm.dbg.declare(metadata ptr %object, metadata !2874, metadata !DIExpression()), !dbg !2886
  %0 = load ptr, ptr %bc.addr, align 8, !dbg !2887, !tbaa !827
  %section = getelementptr inbounds %struct.yasm_bytecode, ptr %0, i32 0, i32 2, !dbg !2888
  %1 = load ptr, ptr %section, align 8, !dbg !2888, !tbaa !2146
  %call = call ptr @yasm_section_get_object(ptr noundef %1), !dbg !2889
  store ptr %call, ptr %object, align 8, !dbg !2886, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %fi) #7, !dbg !2890
  tail call void @llvm.dbg.declare(metadata ptr %fi, metadata !2875, metadata !DIExpression()), !dbg !2891
  %2 = load ptr, ptr %bc.addr, align 8, !dbg !2892, !tbaa !827
  %contents = getelementptr inbounds %struct.yasm_bytecode, ptr %2, i32 0, i32 10, !dbg !2893
  %3 = load ptr, ptr %contents, align 8, !dbg !2893, !tbaa !2152
  store ptr %3, ptr %fi, align 8, !dbg !2891, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #7, !dbg !2894
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !2876, metadata !DIExpression()), !dbg !2895
  %4 = load ptr, ptr %bufp.addr, align 8, !dbg !2896, !tbaa !827
  %5 = load ptr, ptr %4, align 8, !dbg !2897, !tbaa !827
  store ptr %5, ptr %buf, align 8, !dbg !2895, !tbaa !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %cval) #7, !dbg !2898
  tail call void @llvm.dbg.declare(metadata ptr %cval, metadata !2877, metadata !DIExpression()), !dbg !2899
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !2900
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2878, metadata !DIExpression()), !dbg !2901
  %6 = load ptr, ptr %fi, align 8, !dbg !2902, !tbaa !827
  %fn = getelementptr inbounds %struct.cv8_fileinfo, ptr %6, i32 0, i32 0, !dbg !2903
  %7 = load ptr, ptr %fn, align 8, !dbg !2903, !tbaa !1298
  %str_off = getelementptr inbounds %struct.cv_filename, ptr %7, i32 0, i32 2, !dbg !2904
  %8 = load i64, ptr %str_off, align 8, !dbg !2904, !tbaa !946
  %call1 = call ptr @yasm_intnum_create_uint(i64 noundef %8), !dbg !2905
  store ptr %call1, ptr %cval, align 8, !dbg !2906, !tbaa !827
  %9 = load ptr, ptr %object, align 8, !dbg !2907, !tbaa !827
  %arch = getelementptr inbounds %struct.yasm_object, ptr %9, i32 0, i32 3, !dbg !2907
  %10 = load ptr, ptr %arch, align 8, !dbg !2907, !tbaa !1429
  %module = getelementptr inbounds %struct.yasm_arch_base, ptr %10, i32 0, i32 0, !dbg !2907
  %11 = load ptr, ptr %module, align 8, !dbg !2907, !tbaa !1430
  %intnum_tobytes = getelementptr inbounds %struct.yasm_arch_module, ptr %11, i32 0, i32 12, !dbg !2907
  %12 = load ptr, ptr %intnum_tobytes, align 8, !dbg !2907, !tbaa !2188
  %13 = load ptr, ptr %object, align 8, !dbg !2907, !tbaa !827
  %arch2 = getelementptr inbounds %struct.yasm_object, ptr %13, i32 0, i32 3, !dbg !2907
  %14 = load ptr, ptr %arch2, align 8, !dbg !2907, !tbaa !1429
  %15 = load ptr, ptr %cval, align 8, !dbg !2907, !tbaa !827
  %16 = load ptr, ptr %buf, align 8, !dbg !2907, !tbaa !827
  %17 = load ptr, ptr %bc.addr, align 8, !dbg !2907, !tbaa !827
  %call3 = call i32 %12(ptr noundef %14, ptr noundef %15, ptr noundef %16, i64 noundef 4, i64 noundef 32, i32 noundef 0, ptr noundef %17, i32 noundef 0), !dbg !2907
  %18 = load ptr, ptr %buf, align 8, !dbg !2908, !tbaa !827
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 4, !dbg !2908
  store ptr %add.ptr, ptr %buf, align 8, !dbg !2908, !tbaa !827
  %19 = load ptr, ptr %cval, align 8, !dbg !2909, !tbaa !827
  call void @yasm_intnum_set_uint(ptr noundef %19, i64 noundef 272), !dbg !2910
  %20 = load ptr, ptr %object, align 8, !dbg !2911, !tbaa !827
  %arch4 = getelementptr inbounds %struct.yasm_object, ptr %20, i32 0, i32 3, !dbg !2911
  %21 = load ptr, ptr %arch4, align 8, !dbg !2911, !tbaa !1429
  %module5 = getelementptr inbounds %struct.yasm_arch_base, ptr %21, i32 0, i32 0, !dbg !2911
  %22 = load ptr, ptr %module5, align 8, !dbg !2911, !tbaa !1430
  %intnum_tobytes6 = getelementptr inbounds %struct.yasm_arch_module, ptr %22, i32 0, i32 12, !dbg !2911
  %23 = load ptr, ptr %intnum_tobytes6, align 8, !dbg !2911, !tbaa !2188
  %24 = load ptr, ptr %object, align 8, !dbg !2911, !tbaa !827
  %arch7 = getelementptr inbounds %struct.yasm_object, ptr %24, i32 0, i32 3, !dbg !2911
  %25 = load ptr, ptr %arch7, align 8, !dbg !2911, !tbaa !1429
  %26 = load ptr, ptr %cval, align 8, !dbg !2911, !tbaa !827
  %27 = load ptr, ptr %buf, align 8, !dbg !2911, !tbaa !827
  %28 = load ptr, ptr %bc.addr, align 8, !dbg !2911, !tbaa !827
  %call8 = call i32 %23(ptr noundef %25, ptr noundef %26, ptr noundef %27, i64 noundef 2, i64 noundef 16, i32 noundef 0, ptr noundef %28, i32 noundef 0), !dbg !2911
  %29 = load ptr, ptr %buf, align 8, !dbg !2912, !tbaa !827
  %add.ptr9 = getelementptr inbounds i8, ptr %29, i64 2, !dbg !2912
  store ptr %add.ptr9, ptr %buf, align 8, !dbg !2912, !tbaa !827
  store i32 0, ptr %i, align 4, !dbg !2913, !tbaa !1147
  br label %for.cond, !dbg !2915

for.cond:                                         ; preds = %for.inc, %entry
  %30 = load i32, ptr %i, align 4, !dbg !2916, !tbaa !1147
  %cmp = icmp slt i32 %30, 16, !dbg !2918
  br i1 %cmp, label %for.body, label %for.end, !dbg !2919

for.body:                                         ; preds = %for.cond
  %31 = load ptr, ptr %fi, align 8, !dbg !2920, !tbaa !827
  %fn10 = getelementptr inbounds %struct.cv8_fileinfo, ptr %31, i32 0, i32 0, !dbg !2920
  %32 = load ptr, ptr %fn10, align 8, !dbg !2920, !tbaa !1298
  %digest = getelementptr inbounds %struct.cv_filename, ptr %32, i32 0, i32 4, !dbg !2920
  %33 = load i32, ptr %i, align 4, !dbg !2920, !tbaa !1147
  %idxprom = sext i32 %33 to i64, !dbg !2920
  %arrayidx = getelementptr inbounds [16 x i8], ptr %digest, i64 0, i64 %idxprom, !dbg !2920
  %34 = load i8, ptr %arrayidx, align 1, !dbg !2920, !tbaa !1376
  %conv = zext i8 %34 to i32, !dbg !2920
  %and = and i32 %conv, 255, !dbg !2920
  %conv11 = trunc i32 %and to i8, !dbg !2920
  %35 = load ptr, ptr %buf, align 8, !dbg !2920, !tbaa !827
  %incdec.ptr = getelementptr inbounds i8, ptr %35, i32 1, !dbg !2920
  store ptr %incdec.ptr, ptr %buf, align 8, !dbg !2920, !tbaa !827
  store i8 %conv11, ptr %35, align 1, !dbg !2920, !tbaa !1376
  br label %for.inc, !dbg !2920

for.inc:                                          ; preds = %for.body
  %36 = load i32, ptr %i, align 4, !dbg !2921, !tbaa !1147
  %inc = add nsw i32 %36, 1, !dbg !2921
  store i32 %inc, ptr %i, align 4, !dbg !2921, !tbaa !1147
  br label %for.cond, !dbg !2922, !llvm.loop !2923

for.end:                                          ; preds = %for.cond
  %37 = load ptr, ptr %buf, align 8, !dbg !2925, !tbaa !827
  %incdec.ptr12 = getelementptr inbounds i8, ptr %37, i32 1, !dbg !2925
  store ptr %incdec.ptr12, ptr %buf, align 8, !dbg !2925, !tbaa !827
  store i8 0, ptr %37, align 1, !dbg !2925, !tbaa !1376
  %38 = load ptr, ptr %buf, align 8, !dbg !2926, !tbaa !827
  %incdec.ptr13 = getelementptr inbounds i8, ptr %38, i32 1, !dbg !2926
  store ptr %incdec.ptr13, ptr %buf, align 8, !dbg !2926, !tbaa !827
  store i8 0, ptr %38, align 1, !dbg !2926, !tbaa !1376
  %39 = load ptr, ptr %buf, align 8, !dbg !2927, !tbaa !827
  %40 = load ptr, ptr %bufp.addr, align 8, !dbg !2928, !tbaa !827
  store ptr %39, ptr %40, align 8, !dbg !2929, !tbaa !827
  %41 = load ptr, ptr %cval, align 8, !dbg !2930, !tbaa !827
  call void @yasm_intnum_destroy(ptr noundef %41), !dbg !2931
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !2932
  call void @llvm.lifetime.end.p0(i64 8, ptr %cval) #7, !dbg !2932
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #7, !dbg !2932
  call void @llvm.lifetime.end.p0(i64 8, ptr %fi) #7, !dbg !2932
  call void @llvm.lifetime.end.p0(i64 8, ptr %object) #7, !dbg !2932
  ret i32 0, !dbg !2933
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!805, !806, !807, !808, !809, !810}
!llvm.ident = !{!811}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 564, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "modules/dbgfmts/codeview/cv-symline.c", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "e6d78c74c17730339d1c3ddb521396a0")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 572, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 1)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 577, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 35)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "cv8_lineinfo_bc_callback", scope: !19, file: !2, line: 224, type: !313, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !20, retainedTypes: !189, globals: !717, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21, !28, !64, !75, !82, !87, !93, !112, !118, !123, !130, !181}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_param_type", file: !22, line: 43, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "./libyasm/valparam.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "345460cb5d2689afdbce8a9a43dd6428")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "YASM_PARAM_ID", value: 0)
!26 = !DIEnumerator(name: "YASM_PARAM_STRING", value: 1)
!27 = !DIEnumerator(name: "YASM_PARAM_EXPR", value: 2)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_expr_op", file: !29, line: 218, baseType: !23, size: 32, elements: !30)
!29 = !DIFile(filename: "./libyasm/coretype.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "9dfc5415d2e988670aaac0a7c37cb8d6")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!31 = !DIEnumerator(name: "YASM_EXPR_IDENT", value: 0)
!32 = !DIEnumerator(name: "YASM_EXPR_ADD", value: 1)
!33 = !DIEnumerator(name: "YASM_EXPR_SUB", value: 2)
!34 = !DIEnumerator(name: "YASM_EXPR_MUL", value: 3)
!35 = !DIEnumerator(name: "YASM_EXPR_DIV", value: 4)
!36 = !DIEnumerator(name: "YASM_EXPR_SIGNDIV", value: 5)
!37 = !DIEnumerator(name: "YASM_EXPR_MOD", value: 6)
!38 = !DIEnumerator(name: "YASM_EXPR_SIGNMOD", value: 7)
!39 = !DIEnumerator(name: "YASM_EXPR_NEG", value: 8)
!40 = !DIEnumerator(name: "YASM_EXPR_NOT", value: 9)
!41 = !DIEnumerator(name: "YASM_EXPR_OR", value: 10)
!42 = !DIEnumerator(name: "YASM_EXPR_AND", value: 11)
!43 = !DIEnumerator(name: "YASM_EXPR_XOR", value: 12)
!44 = !DIEnumerator(name: "YASM_EXPR_XNOR", value: 13)
!45 = !DIEnumerator(name: "YASM_EXPR_NOR", value: 14)
!46 = !DIEnumerator(name: "YASM_EXPR_SHL", value: 15)
!47 = !DIEnumerator(name: "YASM_EXPR_SHR", value: 16)
!48 = !DIEnumerator(name: "YASM_EXPR_LOR", value: 17)
!49 = !DIEnumerator(name: "YASM_EXPR_LAND", value: 18)
!50 = !DIEnumerator(name: "YASM_EXPR_LNOT", value: 19)
!51 = !DIEnumerator(name: "YASM_EXPR_LXOR", value: 20)
!52 = !DIEnumerator(name: "YASM_EXPR_LXNOR", value: 21)
!53 = !DIEnumerator(name: "YASM_EXPR_LNOR", value: 22)
!54 = !DIEnumerator(name: "YASM_EXPR_LT", value: 23)
!55 = !DIEnumerator(name: "YASM_EXPR_GT", value: 24)
!56 = !DIEnumerator(name: "YASM_EXPR_EQ", value: 25)
!57 = !DIEnumerator(name: "YASM_EXPR_LE", value: 26)
!58 = !DIEnumerator(name: "YASM_EXPR_GE", value: 27)
!59 = !DIEnumerator(name: "YASM_EXPR_NE", value: 28)
!60 = !DIEnumerator(name: "YASM_EXPR_NONNUM", value: 29)
!61 = !DIEnumerator(name: "YASM_EXPR_SEG", value: 30)
!62 = !DIEnumerator(name: "YASM_EXPR_WRT", value: 31)
!63 = !DIEnumerator(name: "YASM_EXPR_SEGOFF", value: 32)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_expr__type", file: !65, line: 42, baseType: !23, size: 32, elements: !66)
!65 = !DIFile(filename: "./libyasm/expr.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "56c4cabf03e15977fb62c919c460e24b")
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74}
!67 = !DIEnumerator(name: "YASM_EXPR_NONE", value: 0)
!68 = !DIEnumerator(name: "YASM_EXPR_REG", value: 1)
!69 = !DIEnumerator(name: "YASM_EXPR_INT", value: 2)
!70 = !DIEnumerator(name: "YASM_EXPR_SUBST", value: 4)
!71 = !DIEnumerator(name: "YASM_EXPR_FLOAT", value: 8)
!72 = !DIEnumerator(name: "YASM_EXPR_SYM", value: 16)
!73 = !DIEnumerator(name: "YASM_EXPR_PRECBC", value: 32)
!74 = !DIEnumerator(name: "YASM_EXPR_EXPR", value: 64)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_bytecode_special_type", file: !76, line: 168, baseType: !23, size: 32, elements: !77)
!76 = !DIFile(filename: "./libyasm/bytecode.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "0499d1c9795aedbcd3282f1a8076b927")
!77 = !{!78, !79, !80, !81}
!78 = !DIEnumerator(name: "YASM_BC_SPECIAL_NONE", value: 0)
!79 = !DIEnumerator(name: "YASM_BC_SPECIAL_RESERVE", value: 1)
!80 = !DIEnumerator(name: "YASM_BC_SPECIAL_OFFSET", value: 2)
!81 = !DIEnumerator(name: "YASM_BC_SPECIAL_INSN", value: 3)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_directive_flags", file: !22, line: 88, baseType: !23, size: 32, elements: !83)
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "YASM_DIR_ANY", value: 0)
!85 = !DIEnumerator(name: "YASM_DIR_ARG_REQUIRED", value: 1)
!86 = !DIEnumerator(name: "YASM_DIR_ID_REQUIRED", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cv8_symheadtype", file: !2, line: 36, baseType: !23, size: 32, elements: !88)
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "CV8_DEBUG_SYMS", value: 241)
!90 = !DIEnumerator(name: "CV8_LINE_NUMS", value: 242)
!91 = !DIEnumerator(name: "CV8_FILE_STRTAB", value: 243)
!92 = !DIEnumerator(name: "CV8_FILE_INFO", value: 244)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_error_class", file: !94, line: 50, baseType: !23, size: 32, elements: !95)
!94 = !DIFile(filename: "./libyasm/errwarn.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "e8ddf1933c5e2c4fd74d90f9312311d9")
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!96 = !DIEnumerator(name: "YASM_ERROR_NONE", value: 0)
!97 = !DIEnumerator(name: "YASM_ERROR_GENERAL", value: 65535)
!98 = !DIEnumerator(name: "YASM_ERROR_ARITHMETIC", value: 1)
!99 = !DIEnumerator(name: "YASM_ERROR_OVERFLOW", value: 32769)
!100 = !DIEnumerator(name: "YASM_ERROR_FLOATING_POINT", value: 16385)
!101 = !DIEnumerator(name: "YASM_ERROR_ZERO_DIVISION", value: 8193)
!102 = !DIEnumerator(name: "YASM_ERROR_ASSERTION", value: 2)
!103 = !DIEnumerator(name: "YASM_ERROR_VALUE", value: 4)
!104 = !DIEnumerator(name: "YASM_ERROR_NOT_ABSOLUTE", value: 32772)
!105 = !DIEnumerator(name: "YASM_ERROR_TOO_COMPLEX", value: 16388)
!106 = !DIEnumerator(name: "YASM_ERROR_NOT_CONSTANT", value: 8196)
!107 = !DIEnumerator(name: "YASM_ERROR_IO", value: 8)
!108 = !DIEnumerator(name: "YASM_ERROR_NOT_IMPLEMENTED", value: 16)
!109 = !DIEnumerator(name: "YASM_ERROR_TYPE", value: 32)
!110 = !DIEnumerator(name: "YASM_ERROR_SYNTAX", value: 64)
!111 = !DIEnumerator(name: "YASM_ERROR_PARSE", value: 32832)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_arch_create_error", file: !113, line: 34, baseType: !23, size: 32, elements: !114)
!113 = !DIFile(filename: "./libyasm/arch.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "77f71bc1a4e496e53cd435f5de451074")
!114 = !{!115, !116, !117}
!115 = !DIEnumerator(name: "YASM_ARCH_CREATE_OK", value: 0)
!116 = !DIEnumerator(name: "YASM_ARCH_CREATE_BAD_MACHINE", value: 1)
!117 = !DIEnumerator(name: "YASM_ARCH_CREATE_BAD_PARSER", value: 2)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_arch_insnprefix", file: !113, line: 41, baseType: !23, size: 32, elements: !119)
!119 = !{!120, !121, !122}
!120 = !DIEnumerator(name: "YASM_ARCH_NOTINSNPREFIX", value: 0)
!121 = !DIEnumerator(name: "YASM_ARCH_INSN", value: 1)
!122 = !DIEnumerator(name: "YASM_ARCH_PREFIX", value: 2)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_arch_regtmod", file: !113, line: 50, baseType: !23, size: 32, elements: !124)
!124 = !{!125, !126, !127, !128, !129}
!125 = !DIEnumerator(name: "YASM_ARCH_NOTREGTMOD", value: 0)
!126 = !DIEnumerator(name: "YASM_ARCH_REG", value: 1)
!127 = !DIEnumerator(name: "YASM_ARCH_REGGROUP", value: 2)
!128 = !DIEnumerator(name: "YASM_ARCH_SEGREG", value: 3)
!129 = !DIEnumerator(name: "YASM_ARCH_TARGETMOD", value: 4)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cv_symtype", file: !2, line: 43, baseType: !23, size: 32, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!132 = !DIEnumerator(name: "CV_S_COMPILE", value: 1)
!133 = !DIEnumerator(name: "CV_S_REGISTER", value: 2)
!134 = !DIEnumerator(name: "CV_S_CONSTANT", value: 3)
!135 = !DIEnumerator(name: "CV_S_UDT", value: 4)
!136 = !DIEnumerator(name: "CV_S_SSEARCH", value: 5)
!137 = !DIEnumerator(name: "CV_S_END", value: 6)
!138 = !DIEnumerator(name: "CV_S_SKIP", value: 7)
!139 = !DIEnumerator(name: "CV_S_OBJNAME", value: 9)
!140 = !DIEnumerator(name: "CV_S_ENDARG", value: 10)
!141 = !DIEnumerator(name: "CV_S_COBOLUDT", value: 11)
!142 = !DIEnumerator(name: "CV_S_MANYREG", value: 12)
!143 = !DIEnumerator(name: "CV_S_RETURN", value: 13)
!144 = !DIEnumerator(name: "CV_S_ENTRYTHIS", value: 14)
!145 = !DIEnumerator(name: "CV_S_BPREL16", value: 256)
!146 = !DIEnumerator(name: "CV_S_LDATA16", value: 257)
!147 = !DIEnumerator(name: "CV_S_GDATA16", value: 258)
!148 = !DIEnumerator(name: "CV_S_PUB16", value: 259)
!149 = !DIEnumerator(name: "CV_S_LPROC16", value: 260)
!150 = !DIEnumerator(name: "CV_S_GPROC16", value: 261)
!151 = !DIEnumerator(name: "CV_S_THUNK16", value: 262)
!152 = !DIEnumerator(name: "CV_S_BLOCK16", value: 263)
!153 = !DIEnumerator(name: "CV_S_WITH16", value: 264)
!154 = !DIEnumerator(name: "CV_S_LABEL16", value: 265)
!155 = !DIEnumerator(name: "CV_S_CEXMODEL16", value: 272)
!156 = !DIEnumerator(name: "CV_S_VFTPATH16", value: 267)
!157 = !DIEnumerator(name: "CV_S_REGREL16", value: 268)
!158 = !DIEnumerator(name: "CV_S_BPREL32", value: 512)
!159 = !DIEnumerator(name: "CV_S_LDATA32", value: 513)
!160 = !DIEnumerator(name: "CV_S_GDATA32", value: 514)
!161 = !DIEnumerator(name: "CV_S_PUB32", value: 515)
!162 = !DIEnumerator(name: "CV_S_LPROC32", value: 516)
!163 = !DIEnumerator(name: "CV_S_GPROC32", value: 517)
!164 = !DIEnumerator(name: "CV_S_THUNK32", value: 518)
!165 = !DIEnumerator(name: "CV_S_BLOCK32", value: 519)
!166 = !DIEnumerator(name: "CV_S_WITH32", value: 520)
!167 = !DIEnumerator(name: "CV_S_LABEL32", value: 521)
!168 = !DIEnumerator(name: "CV_S_CEXMODEL32", value: 528)
!169 = !DIEnumerator(name: "CV_S_VFTPATH32", value: 523)
!170 = !DIEnumerator(name: "CV_S_REGREL32", value: 524)
!171 = !DIEnumerator(name: "CV_S_LTHREAD32", value: 525)
!172 = !DIEnumerator(name: "CV_S_GTHREAD32", value: 526)
!173 = !DIEnumerator(name: "CV_S_LPROCMIPS", value: 768)
!174 = !DIEnumerator(name: "CV_S_GPROCMIPS", value: 769)
!175 = !DIEnumerator(name: "CV8_S_OBJNAME", value: 4353)
!176 = !DIEnumerator(name: "CV8_S_LABEL32", value: 4357)
!177 = !DIEnumerator(name: "CV8_S_LDATA32", value: 4364)
!178 = !DIEnumerator(name: "CV8_S_GDATA32", value: 4365)
!179 = !DIEnumerator(name: "CV8_S_LPROC32", value: 4368)
!180 = !DIEnumerator(name: "CV8_S_COMPILE", value: 4374)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_sym_vis", file: !182, line: 52, baseType: !23, size: 32, elements: !183)
!182 = !DIFile(filename: "./libyasm/symrec.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "dfb116438a620dd87f0db3310d44d920")
!183 = !{!184, !185, !186, !187, !188}
!184 = !DIEnumerator(name: "YASM_SYM_LOCAL", value: 0)
!185 = !DIEnumerator(name: "YASM_SYM_GLOBAL", value: 1)
!186 = !DIEnumerator(name: "YASM_SYM_COMMON", value: 2)
!187 = !DIEnumerator(name: "YASM_SYM_EXTERN", value: 4)
!188 = !DIEnumerator(name: "YASM_SYM_DLOCAL", value: 8)
!189 = !{!190, !505, !321, !288, !429, !506, !560, !430, !565, !690, !406, !227, !206, !704, !712}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_dbgfmt_cv", file: !192, line: 47, baseType: !193)
!192 = !DIFile(filename: "modules/dbgfmts/codeview/cv-dbgfmt.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "04455f70d3eb64c8b7a7af7a168aa366")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_dbgfmt_cv", file: !192, line: 39, size: 320, elements: !194)
!194 = !{!195, !489, !502, !503, !504}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "dbgfmt", scope: !193, file: !192, line: 40, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_dbgfmt_base", file: !197, line: 40, baseType: !198)
!197 = !DIFile(filename: "./libyasm/dbgfmt.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "7a63e9e5d68a274fccf929049b351cb9")
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_dbgfmt_base", file: !197, line: 37, size: 64, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !198, file: !197, line: 39, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_dbgfmt_module", file: !197, line: 44, size: 384, elements: !204)
!204 = !{!205, !208, !209, !471, !475, !479}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !197, line: 46, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !203, file: !197, line: 49, baseType: !206, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "directives", scope: !203, file: !197, line: 52, baseType: !210, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_directive", file: !29, line: 205, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_directive", file: !22, line: 69, size: 256, elements: !214)
!214 = !{!215, !216, !217, !470}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !22, line: 74, baseType: !206, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parser", scope: !213, file: !22, line: 76, baseType: !206, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !213, file: !22, line: 84, baseType: !218, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !221, !261, !261, !288}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_object", file: !29, line: 96, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_object", file: !224, line: 49, size: 768, elements: !225)
!224 = !DIFile(filename: "./libyasm/section.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "ba239fc7317ff7164be158d14b67c691")
!225 = !{!226, !228, !229, !233, !237, !241, !245, !249, !256, !259, !260}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "src_filename", scope: !223, file: !224, line: 50, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "obj_filename", scope: !223, file: !224, line: 51, baseType: !227, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !223, file: !224, line: 53, baseType: !230, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_symtab", file: !29, line: 102, baseType: !232)
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_symtab", file: !29, line: 102, flags: DIFlagFwdDecl)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !223, file: !224, line: 54, baseType: !234, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_arch", file: !29, line: 38, baseType: !236)
!236 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_arch", file: !29, line: 38, flags: DIFlagFwdDecl)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "objfmt", scope: !223, file: !224, line: 55, baseType: !238, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_objfmt", file: !29, line: 44, baseType: !240)
!240 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_objfmt", file: !29, line: 44, flags: DIFlagFwdDecl)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "dbgfmt", scope: !223, file: !224, line: 56, baseType: !242, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_dbgfmt", file: !29, line: 46, baseType: !244)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_dbgfmt", file: !29, line: 46, flags: DIFlagFwdDecl)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "cur_section", scope: !223, file: !224, line: 61, baseType: !246, size: 64, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_section", file: !29, line: 99, baseType: !248)
!248 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_section", file: !29, line: 99, flags: DIFlagFwdDecl)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sections", scope: !223, file: !224, line: 64, baseType: !250, size: 128, offset: 448)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_sectionhead", file: !224, line: 64, size: 128, elements: !251)
!251 = !{!252, !254}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !250, file: !224, line: 64, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !250, file: !224, line: 64, baseType: !255, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "directives", scope: !223, file: !224, line: 69, baseType: !257, size: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "HAMT", file: !224, line: 69, flags: DIFlagFwdDecl)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "global_prefix", scope: !223, file: !224, line: 72, baseType: !227, size: 64, offset: 640)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "global_suffix", scope: !223, file: !224, line: 75, baseType: !227, size: 64, offset: 704)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_valparamhead", file: !29, line: 201, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_valparamhead", file: !22, line: 66, size: 128, elements: !264)
!264 = !{!265, !468}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !263, file: !22, line: 66, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_valparam", file: !22, line: 38, size: 320, elements: !268)
!268 = !{!269, !273, !274, !275, !467}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !267, file: !22, line: 39, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !267, file: !22, line: 39, size: 64, elements: !271)
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !270, file: !22, line: 39, baseType: !266, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !267, file: !22, line: 40, baseType: !227, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !267, file: !22, line: 47, baseType: !21, size: 32, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !267, file: !22, line: 54, baseType: !276, size: 64, offset: 192)
!276 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "yasm_param", file: !22, line: 50, size: 64, elements: !277)
!277 = !{!278, !279, !280}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !276, file: !22, line: 51, baseType: !227, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !276, file: !22, line: 52, baseType: !227, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !276, file: !22, line: 53, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_expr", file: !29, line: 108, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_expr", file: !65, line: 70, size: 448, elements: !284)
!284 = !{!285, !287, !289, !291}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !283, file: !65, line: 71, baseType: !286, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_expr_op", file: !29, line: 253, baseType: !28)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !283, file: !65, line: 72, baseType: !288, size: 64, offset: 64)
!288 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "numterms", scope: !283, file: !65, line: 73, baseType: !290, size: 32, offset: 128)
!290 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "terms", scope: !283, file: !65, line: 79, baseType: !292, size: 256, offset: 192)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 256, elements: !465)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_expr__item", file: !65, line: 67, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_expr__item", file: !65, line: 54, size: 128, elements: !295)
!295 = !{!296, !298}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !294, file: !65, line: 55, baseType: !297, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_expr__type", file: !65, line: 51, baseType: !64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !294, file: !65, line: 66, baseType: !299, size: 64, offset: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !294, file: !65, line: 58, size: 64, elements: !300)
!300 = !{!301, !451, !452, !453, !457, !461, !464}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "precbc", scope: !299, file: !65, line: 59, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_bytecode", file: !29, line: 93, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_bytecode", file: !76, line: 183, size: 704, elements: !305)
!305 = !{!306, !311, !441, !442, !443, !444, !445, !446, !447, !448, !450}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !304, file: !76, line: 187, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !304, file: !76, line: 187, size: 64, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !307, file: !76, line: 187, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !304, file: !76, line: 192, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_bytecode_callback", file: !76, line: 180, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_bytecode_callback", file: !76, line: 63, size: 512, elements: !316)
!316 = !{!317, !322, !383, !387, !391, !419, !424, !440}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !315, file: !76, line: 68, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !321}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !315, file: !76, line: 76, baseType: !323, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !326, !328, !290}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !330, line: 7, baseType: !331)
!330 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !332, line: 49, size: 1728, elements: !333)
!332 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !349, !351, !352, !353, !357, !359, !361, !362, !365, !367, !370, !373, !374, !375, !378, !379}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !331, file: !332, line: 51, baseType: !290, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !331, file: !332, line: 54, baseType: !227, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !331, file: !332, line: 55, baseType: !227, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !331, file: !332, line: 56, baseType: !227, size: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !331, file: !332, line: 57, baseType: !227, size: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !331, file: !332, line: 58, baseType: !227, size: 64, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !331, file: !332, line: 59, baseType: !227, size: 64, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !331, file: !332, line: 60, baseType: !227, size: 64, offset: 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !331, file: !332, line: 61, baseType: !227, size: 64, offset: 512)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !331, file: !332, line: 64, baseType: !227, size: 64, offset: 576)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !331, file: !332, line: 65, baseType: !227, size: 64, offset: 640)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !331, file: !332, line: 66, baseType: !227, size: 64, offset: 704)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !331, file: !332, line: 68, baseType: !347, size: 64, offset: 768)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !332, line: 36, flags: DIFlagFwdDecl)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !331, file: !332, line: 70, baseType: !350, size: 64, offset: 832)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !331, file: !332, line: 72, baseType: !290, size: 32, offset: 896)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !331, file: !332, line: 73, baseType: !290, size: 32, offset: 928)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !331, file: !332, line: 74, baseType: !354, size: 64, offset: 960)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !355, line: 152, baseType: !356)
!355 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!356 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !331, file: !332, line: 77, baseType: !358, size: 16, offset: 1024)
!358 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !331, file: !332, line: 78, baseType: !360, size: 8, offset: 1040)
!360 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !331, file: !332, line: 79, baseType: !9, size: 8, offset: 1048)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !331, file: !332, line: 81, baseType: !363, size: 64, offset: 1088)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !332, line: 43, baseType: null)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !331, file: !332, line: 89, baseType: !366, size: 64, offset: 1152)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !355, line: 153, baseType: !356)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !331, file: !332, line: 91, baseType: !368, size: 64, offset: 1216)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !332, line: 37, flags: DIFlagFwdDecl)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !331, file: !332, line: 92, baseType: !371, size: 64, offset: 1280)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !332, line: 38, flags: DIFlagFwdDecl)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !331, file: !332, line: 93, baseType: !350, size: 64, offset: 1344)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !331, file: !332, line: 94, baseType: !321, size: 64, offset: 1408)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !331, file: !332, line: 95, baseType: !376, size: 64, offset: 1472)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !377, line: 70, baseType: !288)
!377 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !331, file: !332, line: 96, baseType: !290, size: 32, offset: 1536)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !331, file: !332, line: 98, baseType: !380, size: 160, offset: 1568)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 20)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !315, file: !76, line: 83, baseType: !384, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !302, !302}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !315, file: !76, line: 91, baseType: !388, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!290, !302}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "calc_len", scope: !315, file: !76, line: 108, baseType: !392, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!290, !302, !395, !321}
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_bc_add_span_func", file: !76, line: 55, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !321, !302, !290, !399, !356, !356}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_value", file: !29, line: 184, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_value", file: !29, line: 121, size: 256, elements: !403)
!403 = !{!404, !405, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "abs", scope: !402, file: !29, line: 126, baseType: !281, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "rel", scope: !402, file: !29, line: 131, baseType: !406, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_symrec", file: !29, line: 105, baseType: !408)
!408 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_symrec", file: !29, line: 105, flags: DIFlagFwdDecl)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "wrt", scope: !402, file: !29, line: 134, baseType: !406, size: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "seg_of", scope: !402, file: !29, line: 139, baseType: !23, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "rshift", scope: !402, file: !29, line: 145, baseType: !23, size: 7, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "curpos_rel", scope: !402, file: !29, line: 152, baseType: !23, size: 1, offset: 200, flags: DIFlagBitField, extraData: i64 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ip_rel", scope: !402, file: !29, line: 158, baseType: !23, size: 1, offset: 201, flags: DIFlagBitField, extraData: i64 192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "jump_target", scope: !402, file: !29, line: 164, baseType: !23, size: 1, offset: 202, flags: DIFlagBitField, extraData: i64 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "section_rel", scope: !402, file: !29, line: 172, baseType: !23, size: 1, offset: 203, flags: DIFlagBitField, extraData: i64 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "no_warn", scope: !402, file: !29, line: 175, baseType: !23, size: 1, offset: 204, flags: DIFlagBitField, extraData: i64 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !402, file: !29, line: 180, baseType: !23, size: 1, offset: 205, flags: DIFlagBitField, extraData: i64 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !402, file: !29, line: 183, baseType: !23, size: 8, offset: 206, flags: DIFlagBitField, extraData: i64 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !315, file: !76, line: 132, baseType: !420, size: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!290, !302, !290, !356, !356, !423, !423}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "tobytes", scope: !315, file: !76, line: 159, baseType: !425, size: 64, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!290, !302, !428, !429, !321, !431, !436}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_output_value_func", file: !29, line: 273, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!290, !435, !429, !23, !288, !302, !290, !321}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_output_reloc_func", file: !29, line: 294, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!290, !406, !302, !429, !23, !23, !290, !321}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "special", scope: !315, file: !76, line: 179, baseType: !75, size: 32, offset: 448)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !304, file: !76, line: 197, baseType: !246, size: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "multiple", scope: !304, file: !76, line: 202, baseType: !281, size: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !304, file: !76, line: 205, baseType: !288, size: 64, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mult_int", scope: !304, file: !76, line: 208, baseType: !356, size: 64, offset: 320)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !304, file: !76, line: 211, baseType: !288, size: 64, offset: 384)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !304, file: !76, line: 216, baseType: !288, size: 64, offset: 448)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "bc_index", scope: !304, file: !76, line: 219, baseType: !288, size: 64, offset: 512)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "symrecs", scope: !304, file: !76, line: 224, baseType: !449, size: 64, offset: 576)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !304, file: !76, line: 227, baseType: !321, size: 64, offset: 640)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sym", scope: !299, file: !65, line: 60, baseType: !406, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "expn", scope: !299, file: !65, line: 61, baseType: !281, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "intn", scope: !299, file: !65, line: 62, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_intnum", file: !29, line: 110, baseType: !456)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_intnum", file: !29, line: 110, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "flt", scope: !299, file: !65, line: 63, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_floatnum", file: !29, line: 114, baseType: !460)
!460 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_floatnum", file: !29, line: 114, flags: DIFlagFwdDecl)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !299, file: !65, line: 64, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !463, line: 90, baseType: !288)
!463 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!464 = !DIDerivedType(tag: DW_TAG_member, name: "subst", scope: !299, file: !65, line: 65, baseType: !23, size: 32)
!465 = !{!466}
!466 = !DISubrange(count: 2)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "id_prefix", scope: !267, file: !22, line: 62, baseType: !4, size: 8, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !263, file: !22, line: 66, baseType: !469, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !213, file: !22, line: 92, baseType: !82, size: 32, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !203, file: !197, line: 60, baseType: !472, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!242, !221}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !203, file: !197, line: 65, baseType: !476, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !242}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "generate", scope: !203, file: !197, line: 70, baseType: !480, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !221, !483, !486}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_linemap", file: !29, line: 192, baseType: !485)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_linemap", file: !29, line: 192, flags: DIFlagFwdDecl)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_errwarns", file: !29, line: 90, baseType: !488)
!488 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_errwarns", file: !29, line: 90, flags: DIFlagFwdDecl)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "filenames", scope: !193, file: !192, line: 42, baseType: !490, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv_filename", file: !192, line: 36, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !192, line: 30, size: 384, elements: !493)
!493 = !{!494, !495, !496, !497, !498}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "pathname", scope: !492, file: !192, line: 31, baseType: !227, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !492, file: !192, line: 32, baseType: !227, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "str_off", scope: !492, file: !192, line: 33, baseType: !288, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "info_off", scope: !492, file: !192, line: 34, baseType: !288, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !492, file: !192, line: 35, baseType: !499, size: 128, offset: 256)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 128, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 16)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "filenames_size", scope: !193, file: !192, line: 43, baseType: !376, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "filenames_allocated", scope: !193, file: !192, line: 44, baseType: !376, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !193, file: !192, line: 46, baseType: !290, size: 32, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv_line_info", file: !2, line: 427, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv_line_info", file: !2, line: 417, size: 640, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !515, !516, !559, !562}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "debug_symline", scope: !508, file: !2, line: 418, baseType: !246, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !508, file: !2, line: 419, baseType: !221, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dbgfmt_cv", scope: !508, file: !2, line: 420, baseType: !190, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "linemap", scope: !508, file: !2, line: 421, baseType: !483, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "errwarns", scope: !508, file: !2, line: 422, baseType: !486, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "num_lineinfos", scope: !508, file: !2, line: 423, baseType: !23, size: 32, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "cv8_lineinfos", scope: !508, file: !2, line: 424, baseType: !517, size: 128, offset: 384)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv8_lineinfo_head", file: !2, line: 424, size: 128, elements: !518)
!518 = !{!519, !557}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !517, file: !2, line: 424, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv8_lineinfo", file: !2, line: 132, size: 512, elements: !522)
!522 = !{!523, !527, !530, !531, !532, !533, !534}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !521, file: !2, line: 133, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !521, file: !2, line: 133, size: 64, elements: !525)
!525 = !{!526}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !524, file: !2, line: 133, baseType: !520, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !521, file: !2, line: 134, baseType: !528, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !521, file: !2, line: 135, baseType: !246, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sectsym", scope: !521, file: !2, line: 136, baseType: !406, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "num_linenums", scope: !521, file: !2, line: 137, baseType: !288, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "first_in_sect", scope: !521, file: !2, line: 138, baseType: !290, size: 32, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "linesets", scope: !521, file: !2, line: 139, baseType: !535, size: 128, offset: 384)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv8_lineset_head", file: !2, line: 139, size: 128, elements: !536)
!536 = !{!537, !555}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !535, file: !2, line: 139, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv8_lineset", file: !2, line: 124, size: 16256, elements: !540)
!540 = !{!541, !545, !554}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !539, file: !2, line: 125, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !539, file: !2, line: 125, size: 64, elements: !543)
!543 = !{!544}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !542, file: !2, line: 125, baseType: !538, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "pairs", scope: !539, file: !2, line: 126, baseType: !546, size: 16128, offset: 64)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 16128, elements: !552)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv8_linepair", file: !2, line: 121, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv8_linepair", file: !2, line: 118, size: 128, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !548, file: !2, line: 119, baseType: !288, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !548, file: !2, line: 120, baseType: !288, size: 64, offset: 64)
!552 = !{!553}
!553 = !DISubrange(count: 126)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "num_pairs", scope: !539, file: !2, line: 127, baseType: !376, size: 64, offset: 16192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !535, file: !2, line: 139, baseType: !556, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !517, file: !2, line: 424, baseType: !558, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "cv8_cur_li", scope: !508, file: !2, line: 425, baseType: !560, size: 64, offset: 512)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv8_lineinfo", file: !2, line: 140, baseType: !521)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "cv8_cur_ls", scope: !508, file: !2, line: 426, baseType: !563, size: 64, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv8_lineset", file: !2, line: 128, baseType: !539)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_arch_base", file: !113, line: 65, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_arch_base", file: !113, line: 62, size: 64, elements: !568)
!568 = !{!569}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !567, file: !113, line: 64, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_arch_module", file: !113, line: 88, size: 1536, elements: !573)
!573 = !{!574, !575, !576, !577, !583, !587, !593, !597, !601, !608, !613, !620, !626, !634, !638, !642, !646, !647, !665, !669, !675, !679, !687, !688, !689}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !572, file: !113, line: 92, baseType: !206, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !572, file: !113, line: 97, baseType: !206, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "directives", scope: !572, file: !113, line: 100, baseType: !210, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !572, file: !113, line: 106, baseType: !578, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!234, !206, !206, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_arch_create_error", file: !113, line: 38, baseType: !112)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !572, file: !113, line: 112, baseType: !584, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !234}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "get_machine", scope: !572, file: !113, line: 117, baseType: !588, size: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!206, !591}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "get_address_size", scope: !572, file: !113, line: 122, baseType: !594, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!23, !591}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "set_var", scope: !572, file: !113, line: 127, baseType: !598, size: 64, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!290, !234, !206, !288}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "parse_check_insnprefix", scope: !572, file: !113, line: 132, baseType: !602, size: 64, offset: 512)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!605, !234, !206, !376, !288, !606, !607}
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_arch_insnprefix", file: !113, line: 45, baseType: !118)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "parse_check_regtmod", scope: !572, file: !113, line: 139, baseType: !609, size: 64, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!612, !234, !206, !376, !607}
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_arch_regtmod", file: !113, line: 56, baseType: !123)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "get_fill", scope: !572, file: !113, line: 146, baseType: !614, size: 64, offset: 640)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!617, !591}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "floatnum_tobytes", scope: !572, file: !113, line: 151, baseType: !621, size: 64, offset: 704)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!290, !234, !624, !429, !376, !376, !376, !290}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "intnum_tobytes", scope: !572, file: !113, line: 158, baseType: !627, size: 64, offset: 768)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!290, !234, !630, !429, !376, !376, !290, !632, !290}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "get_reg_size", scope: !572, file: !113, line: 166, baseType: !635, size: 64, offset: 832)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!23, !234, !462}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "reggroup_get_reg", scope: !572, file: !113, line: 171, baseType: !639, size: 64, offset: 896)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!462, !234, !462, !288}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "reg_print", scope: !572, file: !113, line: 177, baseType: !643, size: 64, offset: 960)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !234, !462, !328}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "segreg_print", scope: !572, file: !113, line: 182, baseType: !643, size: 64, offset: 1024)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ea_create", scope: !572, file: !113, line: 187, baseType: !648, size: 64, offset: 1088)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!651, !234, !281}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_effaddr", file: !29, line: 210, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_effaddr", file: !654, line: 41, size: 384, elements: !655)
!654 = !DIFile(filename: "./libyasm/insn.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "7177eb936f3e998e7f2eb2f048a35e75")
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !664}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "disp", scope: !653, file: !654, line: 42, baseType: !401, size: 256)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "segreg", scope: !653, file: !654, line: 45, baseType: !462, size: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "need_nonzero_len", scope: !653, file: !654, line: 48, baseType: !23, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "need_disp", scope: !653, file: !654, line: 51, baseType: !23, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "nosplit", scope: !653, file: !654, line: 59, baseType: !23, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "strong", scope: !653, file: !654, line: 66, baseType: !23, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "pc_rel", scope: !653, file: !654, line: 69, baseType: !23, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "not_pc_rel", scope: !653, file: !654, line: 72, baseType: !23, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !653, file: !654, line: 75, baseType: !23, size: 32, offset: 352)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ea_destroy", scope: !572, file: !113, line: 192, baseType: !666, size: 64, offset: 1152)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !651}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ea_print", scope: !572, file: !113, line: 197, baseType: !670, size: 64, offset: 1216)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !673, !328, !290}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "create_empty_insn", scope: !572, file: !113, line: 202, baseType: !676, size: 64, offset: 1280)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!302, !234, !288}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "machines", scope: !572, file: !113, line: 209, baseType: !680, size: 64, offset: 1344)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_arch_machine", file: !113, line: 80, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_arch_machine", file: !113, line: 74, size: 128, elements: !684)
!684 = !{!685, !686}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !683, file: !113, line: 76, baseType: !206, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !683, file: !113, line: 79, baseType: !206, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "default_machine_keyword", scope: !572, file: !113, line: 215, baseType: !206, size: 64, offset: 1408)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "wordsize", scope: !572, file: !113, line: 221, baseType: !23, size: 32, offset: 1472)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "min_insn_len", scope: !572, file: !113, line: 227, baseType: !23, size: 32, offset: 1504)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv_sym", file: !2, line: 159, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv_sym", file: !2, line: 152, size: 768, elements: !693)
!693 = !{!694, !695, !696}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !692, file: !2, line: 153, baseType: !130, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !692, file: !2, line: 154, baseType: !206, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !692, file: !2, line: 158, baseType: !697, size: 640, offset: 128)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 640, elements: !702)
!698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !692, file: !2, line: 155, size: 64, elements: !699)
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !698, file: !2, line: 156, baseType: !288, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !698, file: !2, line: 157, baseType: !321, size: 64)
!702 = !{!703}
!703 = !DISubrange(count: 10)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv8_symhead", file: !2, line: 111, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv8_symhead", file: !2, line: 106, size: 256, elements: !707)
!707 = !{!708, !709, !710, !711}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !706, file: !2, line: 107, baseType: !87, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevbc", scope: !706, file: !2, line: 108, baseType: !302, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "end_prevbc", scope: !706, file: !2, line: 109, baseType: !302, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !706, file: !2, line: 110, baseType: !290, size: 32, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv8_fileinfo", file: !2, line: 115, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv8_fileinfo", file: !2, line: 113, size: 64, elements: !715)
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !714, file: !2, line: 114, baseType: !528, size: 64)
!717 = !{!0, !7, !12, !718, !721, !724, !729, !734, !739, !744, !749, !17, !754, !759, !761, !763, !768, !773, !778, !783, !788, !790, !792, !794, !796, !801, !803}
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !2, line: 635, type: !720, isLocal: true, isDefinition: true)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !500)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(scope: null, file: !2, line: 637, type: !723, isLocal: true, isDefinition: true)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !702)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !2, line: 640, type: !726, isLocal: true, isDefinition: true)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !727)
!727 = !{!728}
!728 = !DISubrange(count: 11)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !2, line: 376, type: !731, isLocal: true, isDefinition: true)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 3)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !2, line: 378, type: !736, isLocal: true, isDefinition: true)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !737)
!737 = !{!738}
!738 = !DISubrange(count: 37)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !2, line: 457, type: !741, isLocal: true, isDefinition: true)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 38)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !2, line: 457, type: !746, isLocal: true, isDefinition: true)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 33)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !2, line: 468, type: !751, isLocal: true, isDefinition: true)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !752)
!752 = !{!753}
!753 = !DISubrange(count: 6)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !2, line: 860, type: !756, isLocal: true, isDefinition: true)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 47)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !2, line: 262, type: !731, isLocal: true, isDefinition: true)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(name: "cv_sym_bc_callback", scope: !19, file: !2, line: 235, type: !313, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1002, type: !765, isLocal: true, isDefinition: true)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 29)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1020, type: !770, isLocal: true, isDefinition: true)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !771)
!771 = !{!772}
!772 = !DISubrange(count: 42)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1093, type: !775, isLocal: true, isDefinition: true)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !776)
!776 = !{!777}
!777 = !DISubrange(count: 30)
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !780, isLocal: true, isDefinition: true)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !781)
!781 = !{!782}
!782 = !DISubrange(count: 7)
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(scope: null, file: !2, line: 283, type: !785, isLocal: true, isDefinition: true)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !786)
!786 = !{!787}
!787 = !DISubrange(count: 4)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !2, line: 284, type: !751, isLocal: true, isDefinition: true)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(scope: null, file: !2, line: 308, type: !785, isLocal: true, isDefinition: true)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(scope: null, file: !2, line: 326, type: !785, isLocal: true, isDefinition: true)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(name: "cv8_symhead_bc_callback", scope: !19, file: !2, line: 202, type: !313, isLocal: true, isDefinition: true)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(scope: null, file: !2, line: 718, type: !798, isLocal: true, isDefinition: true)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 46)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(name: "cv8_fileinfo_bc_callback", scope: !19, file: !2, line: 213, type: !313, isLocal: true, isDefinition: true)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(scope: null, file: !2, line: 792, type: !756, isLocal: true, isDefinition: true)
!805 = !{i32 7, !"Dwarf Version", i32 5}
!806 = !{i32 2, !"Debug Info Version", i32 3}
!807 = !{i32 1, !"wchar_size", i32 4}
!808 = !{i32 8, !"PIC Level", i32 2}
!809 = !{i32 7, !"PIE Level", i32 2}
!810 = !{i32 7, !"uwtable", i32 2}
!811 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!812 = distinct !DISubprogram(name: "yasm_cv__generate_symline", scope: !2, file: !2, line: 543, type: !813, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !815)
!813 = !DISubroutineType(types: !814)
!814 = !{!246, !221, !483, !486}
!815 = !{!816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826}
!816 = !DILocalVariable(name: "object", arg: 1, scope: !812, file: !2, line: 543, type: !221)
!817 = !DILocalVariable(name: "linemap", arg: 2, scope: !812, file: !2, line: 543, type: !483)
!818 = !DILocalVariable(name: "errwarns", arg: 3, scope: !812, file: !2, line: 544, type: !486)
!819 = !DILocalVariable(name: "dbgfmt_cv", scope: !812, file: !2, line: 546, type: !190)
!820 = !DILocalVariable(name: "info", scope: !812, file: !2, line: 547, type: !507)
!821 = !DILocalVariable(name: "new", scope: !812, file: !2, line: 548, type: !290)
!822 = !DILocalVariable(name: "i", scope: !812, file: !2, line: 549, type: !376)
!823 = !DILocalVariable(name: "head", scope: !812, file: !2, line: 550, type: !704)
!824 = !DILocalVariable(name: "li", scope: !812, file: !2, line: 551, type: !560)
!825 = !DILocalVariable(name: "bc", scope: !812, file: !2, line: 552, type: !302)
!826 = !DILocalVariable(name: "off", scope: !812, file: !2, line: 553, type: !288)
!827 = !{!828, !828, i64 0}
!828 = !{!"any pointer", !829, i64 0}
!829 = !{!"omnipotent char", !830, i64 0}
!830 = !{!"Simple C/C++ TBAA"}
!831 = !DILocation(line: 543, column: 40, scope: !812)
!832 = !DILocation(line: 543, column: 62, scope: !812)
!833 = !DILocation(line: 544, column: 42, scope: !812)
!834 = !DILocation(line: 546, column: 5, scope: !812)
!835 = !DILocation(line: 546, column: 21, scope: !812)
!836 = !DILocation(line: 546, column: 51, scope: !812)
!837 = !DILocation(line: 546, column: 59, scope: !812)
!838 = !{!839, !828, i64 40}
!839 = !{!"yasm_object", !828, i64 0, !828, i64 8, !828, i64 16, !828, i64 24, !828, i64 32, !828, i64 40, !828, i64 48, !840, i64 56, !828, i64 72, !828, i64 80, !828, i64 88}
!840 = !{!"yasm_sectionhead", !828, i64 0, !828, i64 8}
!841 = !DILocation(line: 547, column: 5, scope: !812)
!842 = !DILocation(line: 547, column: 18, scope: !812)
!843 = !DILocation(line: 548, column: 5, scope: !812)
!844 = !DILocation(line: 548, column: 9, scope: !812)
!845 = !DILocation(line: 549, column: 5, scope: !812)
!846 = !DILocation(line: 549, column: 12, scope: !812)
!847 = !DILocation(line: 550, column: 5, scope: !812)
!848 = !DILocation(line: 550, column: 18, scope: !812)
!849 = !DILocation(line: 551, column: 5, scope: !812)
!850 = !DILocation(line: 551, column: 19, scope: !812)
!851 = !DILocation(line: 552, column: 5, scope: !812)
!852 = !DILocation(line: 552, column: 20, scope: !812)
!853 = !DILocation(line: 553, column: 5, scope: !812)
!854 = !DILocation(line: 553, column: 19, scope: !812)
!855 = !DILocation(line: 556, column: 37, scope: !812)
!856 = !DILocation(line: 556, column: 46, scope: !812)
!857 = !DILocation(line: 556, column: 5, scope: !812)
!858 = !DILocation(line: 559, column: 19, scope: !812)
!859 = !DILocation(line: 559, column: 10, scope: !812)
!860 = !DILocation(line: 559, column: 17, scope: !812)
!861 = !{!862, !828, i64 8}
!862 = !{!"cv_line_info", !828, i64 0, !828, i64 8, !828, i64 16, !828, i64 24, !828, i64 32, !863, i64 40, !864, i64 48, !828, i64 64, !828, i64 72}
!863 = !{!"int", !829, i64 0}
!864 = !{!"cv8_lineinfo_head", !828, i64 0, !828, i64 8}
!865 = !DILocation(line: 560, column: 22, scope: !812)
!866 = !DILocation(line: 560, column: 10, scope: !812)
!867 = !DILocation(line: 560, column: 20, scope: !812)
!868 = !{!862, !828, i64 16}
!869 = !DILocation(line: 561, column: 20, scope: !812)
!870 = !DILocation(line: 561, column: 10, scope: !812)
!871 = !DILocation(line: 561, column: 18, scope: !812)
!872 = !{!862, !828, i64 24}
!873 = !DILocation(line: 562, column: 21, scope: !812)
!874 = !DILocation(line: 562, column: 10, scope: !812)
!875 = !DILocation(line: 562, column: 19, scope: !812)
!876 = !{!862, !828, i64 32}
!877 = !DILocation(line: 564, column: 33, scope: !812)
!878 = !DILocation(line: 564, column: 9, scope: !812)
!879 = !DILocation(line: 563, column: 10, scope: !812)
!880 = !DILocation(line: 563, column: 24, scope: !812)
!881 = !{!862, !828, i64 0}
!882 = !DILocation(line: 565, column: 10, scope: !812)
!883 = !DILocation(line: 565, column: 24, scope: !812)
!884 = !{!862, !863, i64 40}
!885 = !DILocation(line: 566, column: 5, scope: !812)
!886 = !DILocation(line: 566, column: 5, scope: !887)
!887 = distinct !DILexicalBlock(scope: !812, file: !2, line: 566, column: 5)
!888 = !{!862, !828, i64 48}
!889 = !{!862, !828, i64 56}
!890 = !DILocation(line: 567, column: 10, scope: !812)
!891 = !DILocation(line: 567, column: 21, scope: !812)
!892 = !{!862, !828, i64 64}
!893 = !DILocation(line: 568, column: 10, scope: !812)
!894 = !DILocation(line: 568, column: 21, scope: !812)
!895 = !{!862, !828, i64 72}
!896 = !DILocation(line: 571, column: 33, scope: !812)
!897 = !DILocation(line: 571, column: 12, scope: !812)
!898 = !DILocation(line: 571, column: 10, scope: !812)
!899 = !DILocation(line: 572, column: 24, scope: !812)
!900 = !DILocation(line: 572, column: 5, scope: !812)
!901 = !DILocation(line: 573, column: 9, scope: !812)
!902 = !{!903, !903, i64 0}
!903 = !{!"long", !829, i64 0}
!904 = !DILocation(line: 574, column: 11, scope: !905)
!905 = distinct !DILexicalBlock(scope: !812, file: !2, line: 574, column: 5)
!906 = !DILocation(line: 574, column: 10, scope: !905)
!907 = !DILocation(line: 574, column: 15, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !2, line: 574, column: 5)
!909 = !DILocation(line: 574, column: 17, scope: !908)
!910 = !DILocation(line: 574, column: 28, scope: !908)
!911 = !{!912, !903, i64 16}
!912 = !{!"yasm_dbgfmt_cv", !913, i64 0, !828, i64 8, !903, i64 16, !903, i64 24, !863, i64 32}
!913 = !{!"yasm_dbgfmt_base", !828, i64 0}
!914 = !DILocation(line: 574, column: 16, scope: !908)
!915 = !DILocation(line: 574, column: 5, scope: !905)
!916 = !DILocation(line: 575, column: 14, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !2, line: 575, column: 13)
!918 = distinct !DILexicalBlock(scope: !908, file: !2, line: 574, column: 49)
!919 = !DILocation(line: 575, column: 25, scope: !917)
!920 = !{!912, !828, i64 8}
!921 = !DILocation(line: 575, column: 35, scope: !917)
!922 = !DILocation(line: 575, column: 38, scope: !917)
!923 = !{!924, !828, i64 0}
!924 = !{!"", !828, i64 0, !828, i64 8, !903, i64 16, !903, i64 24, !829, i64 32}
!925 = !DILocation(line: 575, column: 13, scope: !918)
!926 = !DILocation(line: 577, column: 70, scope: !927)
!927 = distinct !DILexicalBlock(scope: !917, file: !2, line: 575, column: 48)
!928 = !DILocation(line: 577, column: 71, scope: !927)
!929 = !DILocation(line: 576, column: 13, scope: !927)
!930 = !DILocation(line: 578, column: 36, scope: !927)
!931 = !DILocation(line: 578, column: 13, scope: !927)
!932 = !DILocation(line: 579, column: 13, scope: !927)
!933 = !DILocation(line: 581, column: 33, scope: !918)
!934 = !DILocation(line: 582, column: 28, scope: !918)
!935 = !DILocation(line: 582, column: 39, scope: !918)
!936 = !DILocation(line: 582, column: 49, scope: !918)
!937 = !DILocation(line: 582, column: 52, scope: !918)
!938 = !DILocation(line: 581, column: 14, scope: !918)
!939 = !DILocation(line: 581, column: 12, scope: !918)
!940 = !DILocation(line: 583, column: 43, scope: !918)
!941 = !DILocation(line: 583, column: 9, scope: !918)
!942 = !DILocation(line: 583, column: 20, scope: !918)
!943 = !DILocation(line: 583, column: 30, scope: !918)
!944 = !DILocation(line: 583, column: 33, scope: !918)
!945 = !DILocation(line: 583, column: 41, scope: !918)
!946 = !{!924, !903, i64 16}
!947 = !DILocation(line: 584, column: 16, scope: !918)
!948 = !DILocation(line: 584, column: 20, scope: !918)
!949 = !{!950, !903, i64 32}
!950 = !{!"yasm_bytecode", !951, i64 0, !828, i64 8, !828, i64 16, !828, i64 24, !903, i64 32, !903, i64 40, !903, i64 48, !903, i64 56, !903, i64 64, !828, i64 72, !828, i64 80}
!951 = !{!"", !828, i64 0}
!952 = !DILocation(line: 584, column: 13, scope: !918)
!953 = !DILocation(line: 585, column: 5, scope: !918)
!954 = !DILocation(line: 574, column: 45, scope: !908)
!955 = !DILocation(line: 574, column: 5, scope: !908)
!956 = distinct !{!956, !915, !957, !958}
!957 = !DILocation(line: 585, column: 5, scope: !905)
!958 = !{!"llvm.loop.mustprogress"}
!959 = !DILocation(line: 586, column: 25, scope: !812)
!960 = !DILocation(line: 586, column: 58, scope: !812)
!961 = !DILocation(line: 586, column: 31, scope: !812)
!962 = !DILocation(line: 586, column: 5, scope: !812)
!963 = !DILocation(line: 590, column: 10, scope: !812)
!964 = !DILocation(line: 589, column: 10, scope: !812)
!965 = !DILocation(line: 589, column: 8, scope: !812)
!966 = !DILocation(line: 592, column: 22, scope: !812)
!967 = !DILocation(line: 592, column: 50, scope: !812)
!968 = !DILocation(line: 592, column: 65, scope: !812)
!969 = !DILocation(line: 592, column: 26, scope: !812)
!970 = !DILocation(line: 592, column: 5, scope: !812)
!971 = !DILocation(line: 593, column: 22, scope: !812)
!972 = !DILocation(line: 593, column: 5, scope: !812)
!973 = !DILocation(line: 596, column: 33, scope: !812)
!974 = !DILocation(line: 596, column: 12, scope: !812)
!975 = !DILocation(line: 596, column: 10, scope: !812)
!976 = !DILocation(line: 597, column: 9, scope: !812)
!977 = !DILocation(line: 598, column: 11, scope: !978)
!978 = distinct !DILexicalBlock(scope: !812, file: !2, line: 598, column: 5)
!979 = !DILocation(line: 598, column: 10, scope: !978)
!980 = !DILocation(line: 598, column: 15, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !2, line: 598, column: 5)
!982 = !DILocation(line: 598, column: 17, scope: !981)
!983 = !DILocation(line: 598, column: 28, scope: !981)
!984 = !DILocation(line: 598, column: 16, scope: !981)
!985 = !DILocation(line: 598, column: 5, scope: !978)
!986 = !DILocation(line: 599, column: 14, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !2, line: 599, column: 13)
!988 = distinct !DILexicalBlock(scope: !981, file: !2, line: 598, column: 49)
!989 = !DILocation(line: 599, column: 25, scope: !987)
!990 = !DILocation(line: 599, column: 35, scope: !987)
!991 = !DILocation(line: 599, column: 38, scope: !987)
!992 = !DILocation(line: 599, column: 13, scope: !988)
!993 = !DILocation(line: 600, column: 13, scope: !987)
!994 = !DILocation(line: 601, column: 36, scope: !988)
!995 = !DILocation(line: 601, column: 52, scope: !988)
!996 = !DILocation(line: 601, column: 63, scope: !988)
!997 = !DILocation(line: 601, column: 73, scope: !988)
!998 = !DILocation(line: 601, column: 14, scope: !988)
!999 = !DILocation(line: 601, column: 12, scope: !988)
!1000 = !DILocation(line: 602, column: 44, scope: !988)
!1001 = !DILocation(line: 602, column: 9, scope: !988)
!1002 = !DILocation(line: 602, column: 20, scope: !988)
!1003 = !DILocation(line: 602, column: 30, scope: !988)
!1004 = !DILocation(line: 602, column: 33, scope: !988)
!1005 = !DILocation(line: 602, column: 42, scope: !988)
!1006 = !{!924, !903, i64 24}
!1007 = !DILocation(line: 603, column: 16, scope: !988)
!1008 = !DILocation(line: 603, column: 20, scope: !988)
!1009 = !DILocation(line: 603, column: 13, scope: !988)
!1010 = !DILocation(line: 604, column: 5, scope: !988)
!1011 = !DILocation(line: 598, column: 45, scope: !981)
!1012 = !DILocation(line: 598, column: 5, scope: !981)
!1013 = distinct !{!1013, !985, !1014, !958}
!1014 = !DILocation(line: 604, column: 5, scope: !978)
!1015 = !DILocation(line: 605, column: 25, scope: !812)
!1016 = !DILocation(line: 605, column: 58, scope: !812)
!1017 = !DILocation(line: 605, column: 31, scope: !812)
!1018 = !DILocation(line: 605, column: 5, scope: !812)
!1019 = !DILocation(line: 610, column: 35, scope: !812)
!1020 = !DILocation(line: 610, column: 5, scope: !812)
!1021 = !DILocation(line: 614, column: 10, scope: !812)
!1022 = !DILocation(line: 615, column: 5, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !812, file: !2, line: 615, column: 5)
!1024 = !DILocation(line: 615, column: 5, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 615, column: 5)
!1026 = !DILocation(line: 616, column: 13, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !2, line: 616, column: 13)
!1028 = distinct !DILexicalBlock(scope: !1025, file: !2, line: 615, column: 51)
!1029 = !DILocation(line: 616, column: 17, scope: !1027)
!1030 = !{!1031, !863, i64 40}
!1031 = !{!"cv8_lineinfo", !951, i64 0, !828, i64 8, !828, i64 16, !828, i64 24, !903, i64 32, !863, i64 40, !1032, i64 48}
!1032 = !{!"cv8_lineset_head", !828, i64 0, !828, i64 8}
!1033 = !DILocation(line: 616, column: 13, scope: !1028)
!1034 = !DILocation(line: 617, column: 17, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 617, column: 17)
!1036 = distinct !DILexicalBlock(scope: !1027, file: !2, line: 616, column: 32)
!1037 = !DILocation(line: 617, column: 17, scope: !1036)
!1038 = !DILocation(line: 618, column: 37, scope: !1035)
!1039 = !DILocation(line: 618, column: 70, scope: !1035)
!1040 = !DILocation(line: 618, column: 43, scope: !1035)
!1041 = !DILocation(line: 618, column: 17, scope: !1035)
!1042 = !DILocation(line: 619, column: 41, scope: !1036)
!1043 = !DILocation(line: 619, column: 20, scope: !1036)
!1044 = !DILocation(line: 619, column: 18, scope: !1036)
!1045 = !DILocation(line: 620, column: 9, scope: !1036)
!1046 = !DILocation(line: 621, column: 63, scope: !1028)
!1047 = !DILocation(line: 621, column: 14, scope: !1028)
!1048 = !DILocation(line: 621, column: 12, scope: !1028)
!1049 = !DILocation(line: 622, column: 20, scope: !1028)
!1050 = !DILocation(line: 622, column: 24, scope: !1028)
!1051 = !DILocation(line: 622, column: 19, scope: !1028)
!1052 = !DILocation(line: 622, column: 51, scope: !1028)
!1053 = !DILocation(line: 622, column: 55, scope: !1028)
!1054 = !{!1031, !903, i64 32}
!1055 = !DILocation(line: 622, column: 67, scope: !1028)
!1056 = !DILocation(line: 622, column: 49, scope: !1028)
!1057 = !DILocation(line: 622, column: 9, scope: !1028)
!1058 = !DILocation(line: 622, column: 13, scope: !1028)
!1059 = !DILocation(line: 622, column: 17, scope: !1028)
!1060 = !DILocation(line: 623, column: 33, scope: !1028)
!1061 = !DILocation(line: 623, column: 48, scope: !1028)
!1062 = !DILocation(line: 623, column: 9, scope: !1028)
!1063 = !DILocation(line: 624, column: 5, scope: !1028)
!1064 = !{!1031, !828, i64 0}
!1065 = distinct !{!1065, !1022, !1066, !958}
!1066 = !DILocation(line: 624, column: 5, scope: !1023)
!1067 = !DILocation(line: 625, column: 9, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !812, file: !2, line: 625, column: 9)
!1069 = !DILocation(line: 625, column: 9, scope: !812)
!1070 = !DILocation(line: 626, column: 29, scope: !1068)
!1071 = !DILocation(line: 626, column: 62, scope: !1068)
!1072 = !DILocation(line: 626, column: 35, scope: !1068)
!1073 = !DILocation(line: 626, column: 9, scope: !1068)
!1074 = !DILocation(line: 631, column: 33, scope: !812)
!1075 = !DILocation(line: 631, column: 12, scope: !812)
!1076 = !DILocation(line: 631, column: 10, scope: !812)
!1077 = !DILocation(line: 633, column: 30, scope: !812)
!1078 = !DILocation(line: 634, column: 39, scope: !812)
!1079 = !DILocation(line: 634, column: 47, scope: !812)
!1080 = !{!839, !828, i64 8}
!1081 = !DILocation(line: 634, column: 25, scope: !812)
!1082 = !DILocation(line: 633, column: 5, scope: !812)
!1083 = !DILocation(line: 635, column: 9, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !812, file: !2, line: 635, column: 9)
!1085 = !DILocation(line: 635, column: 9, scope: !812)
!1086 = !DILocation(line: 636, column: 29, scope: !1084)
!1087 = !DILocation(line: 636, column: 42, scope: !1084)
!1088 = !DILocation(line: 637, column: 29, scope: !1084)
!1089 = !DILocation(line: 636, column: 9, scope: !1084)
!1090 = !DILocation(line: 639, column: 29, scope: !1084)
!1091 = !DILocation(line: 639, column: 42, scope: !1084)
!1092 = !DILocation(line: 640, column: 29, scope: !1084)
!1093 = !DILocation(line: 639, column: 9, scope: !1084)
!1094 = !DILocation(line: 642, column: 26, scope: !812)
!1095 = !DILocation(line: 642, column: 34, scope: !812)
!1096 = !{!839, !828, i64 16}
!1097 = !DILocation(line: 642, column: 5, scope: !812)
!1098 = !DILocation(line: 643, column: 25, scope: !812)
!1099 = !DILocation(line: 643, column: 58, scope: !812)
!1100 = !DILocation(line: 643, column: 31, scope: !812)
!1101 = !DILocation(line: 643, column: 5, scope: !812)
!1102 = !DILocation(line: 647, column: 10, scope: !812)
!1103 = !DILocation(line: 646, column: 10, scope: !812)
!1104 = !DILocation(line: 646, column: 8, scope: !812)
!1105 = !DILocation(line: 649, column: 22, scope: !812)
!1106 = !DILocation(line: 649, column: 50, scope: !812)
!1107 = !DILocation(line: 649, column: 65, scope: !812)
!1108 = !DILocation(line: 649, column: 26, scope: !812)
!1109 = !DILocation(line: 649, column: 5, scope: !812)
!1110 = !DILocation(line: 650, column: 22, scope: !812)
!1111 = !DILocation(line: 650, column: 5, scope: !812)
!1112 = !DILocation(line: 652, column: 17, scope: !812)
!1113 = !DILocation(line: 653, column: 1, scope: !812)
!1114 = !DILocation(line: 652, column: 5, scope: !812)
!1115 = !DISubprogram(name: "yasm_linemap_traverse_filenames", scope: !1116, file: !1116, line: 137, type: !1117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1116 = !DIFile(filename: "./libyasm/linemap.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "581487d92d5c987fb0442b799c055e60")
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!290, !483, !321, !1119}
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!290, !206, !321}
!1122 = distinct !DISubprogram(name: "cv_generate_filename", scope: !2, file: !2, line: 513, type: !1120, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1123)
!1123 = !{!1124, !1125}
!1124 = !DILocalVariable(name: "filename", arg: 1, scope: !1122, file: !2, line: 513, type: !206)
!1125 = !DILocalVariable(name: "d", arg: 2, scope: !1122, file: !2, line: 513, type: !321)
!1126 = !DILocation(line: 513, column: 34, scope: !1122)
!1127 = !DILocation(line: 513, column: 50, scope: !1122)
!1128 = !DILocation(line: 515, column: 42, scope: !1122)
!1129 = !DILocation(line: 515, column: 48, scope: !1122)
!1130 = !DILocation(line: 515, column: 5, scope: !1122)
!1131 = !DILocation(line: 516, column: 5, scope: !1122)
!1132 = !DISubprogram(name: "yasm_object_get_general", scope: !224, file: !224, line: 110, type: !1133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!246, !221, !206, !288, !290, !290, !1135, !288}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!1136 = distinct !DISubprogram(name: "cv8_add_symhead", scope: !2, file: !2, line: 675, type: !1137, scopeLine: 676, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1139)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!704, !246, !288, !290}
!1139 = !{!1140, !1141, !1142, !1143, !1144}
!1140 = !DILocalVariable(name: "sect", arg: 1, scope: !1136, file: !2, line: 675, type: !246)
!1141 = !DILocalVariable(name: "type", arg: 2, scope: !1136, file: !2, line: 675, type: !288)
!1142 = !DILocalVariable(name: "first", arg: 3, scope: !1136, file: !2, line: 675, type: !290)
!1143 = !DILocalVariable(name: "head", scope: !1136, file: !2, line: 677, type: !704)
!1144 = !DILocalVariable(name: "bc", scope: !1136, file: !2, line: 678, type: !302)
!1145 = !DILocation(line: 675, column: 31, scope: !1136)
!1146 = !DILocation(line: 675, column: 51, scope: !1136)
!1147 = !{!863, !863, i64 0}
!1148 = !DILocation(line: 675, column: 61, scope: !1136)
!1149 = !DILocation(line: 677, column: 5, scope: !1136)
!1150 = !DILocation(line: 677, column: 18, scope: !1136)
!1151 = !DILocation(line: 678, column: 5, scope: !1136)
!1152 = !DILocation(line: 678, column: 20, scope: !1136)
!1153 = !DILocation(line: 680, column: 12, scope: !1136)
!1154 = !DILocation(line: 680, column: 10, scope: !1136)
!1155 = !DILocation(line: 681, column: 18, scope: !1136)
!1156 = !DILocation(line: 681, column: 5, scope: !1136)
!1157 = !DILocation(line: 681, column: 11, scope: !1136)
!1158 = !DILocation(line: 681, column: 16, scope: !1136)
!1159 = !{!1160, !829, i64 0}
!1160 = !{!"cv8_symhead", !829, i64 0, !828, i64 8, !828, i64 16, !863, i64 24}
!1161 = !DILocation(line: 682, column: 19, scope: !1136)
!1162 = !DILocation(line: 682, column: 5, scope: !1136)
!1163 = !DILocation(line: 682, column: 11, scope: !1136)
!1164 = !DILocation(line: 682, column: 17, scope: !1136)
!1165 = !{!1160, !863, i64 24}
!1166 = !DILocation(line: 683, column: 48, scope: !1136)
!1167 = !DILocation(line: 683, column: 26, scope: !1136)
!1168 = !DILocation(line: 683, column: 5, scope: !1136)
!1169 = !DILocation(line: 683, column: 11, scope: !1136)
!1170 = !DILocation(line: 683, column: 24, scope: !1136)
!1171 = !{!1160, !828, i64 8}
!1172 = !DILocation(line: 685, column: 58, scope: !1136)
!1173 = !DILocation(line: 685, column: 10, scope: !1136)
!1174 = !DILocation(line: 685, column: 8, scope: !1136)
!1175 = !DILocation(line: 686, column: 9, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 686, column: 9)
!1177 = !DILocation(line: 686, column: 9, scope: !1136)
!1178 = !DILocation(line: 687, column: 9, scope: !1176)
!1179 = !DILocation(line: 687, column: 13, scope: !1176)
!1180 = !DILocation(line: 687, column: 17, scope: !1176)
!1181 = !DILocation(line: 689, column: 9, scope: !1176)
!1182 = !DILocation(line: 689, column: 13, scope: !1176)
!1183 = !DILocation(line: 689, column: 17, scope: !1176)
!1184 = !DILocation(line: 691, column: 24, scope: !1136)
!1185 = !DILocation(line: 691, column: 5, scope: !1136)
!1186 = !DILocation(line: 691, column: 11, scope: !1136)
!1187 = !DILocation(line: 691, column: 22, scope: !1136)
!1188 = !{!1160, !828, i64 16}
!1189 = !DILocation(line: 692, column: 24, scope: !1136)
!1190 = !DILocation(line: 692, column: 30, scope: !1136)
!1191 = !DILocation(line: 692, column: 5, scope: !1136)
!1192 = !DILocation(line: 693, column: 12, scope: !1136)
!1193 = !DILocation(line: 694, column: 1, scope: !1136)
!1194 = !DILocation(line: 693, column: 5, scope: !1136)
!1195 = distinct !DISubprogram(name: "cv_append_str", scope: !2, file: !2, line: 403, type: !1196, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1198)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!302, !246, !206}
!1198 = !{!1199, !1200, !1201, !1210}
!1199 = !DILocalVariable(name: "sect", arg: 1, scope: !1195, file: !2, line: 403, type: !246)
!1200 = !DILocalVariable(name: "str", arg: 2, scope: !1195, file: !2, line: 403, type: !206)
!1201 = !DILocalVariable(name: "dvs", scope: !1195, file: !2, line: 405, type: !1202)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_datavalhead", file: !76, line: 40, baseType: !1203)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_datavalhead", file: !76, line: 43, size: 128, elements: !1204)
!1204 = !{!1205, !1208}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !1203, file: !76, line: 43, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_dataval", file: !76, line: 38, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !1203, file: !76, line: 43, baseType: !1209, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1210 = !DILocalVariable(name: "bc", scope: !1195, file: !2, line: 406, type: !302)
!1211 = !DILocation(line: 403, column: 29, scope: !1195)
!1212 = !DILocation(line: 403, column: 47, scope: !1195)
!1213 = !DILocation(line: 405, column: 5, scope: !1195)
!1214 = !DILocation(line: 405, column: 22, scope: !1195)
!1215 = !DILocation(line: 406, column: 5, scope: !1195)
!1216 = !DILocation(line: 406, column: 20, scope: !1195)
!1217 = !DILocation(line: 408, column: 5, scope: !1195)
!1218 = !DILocation(line: 408, column: 5, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 408, column: 5)
!1220 = !{!1221, !828, i64 0}
!1221 = !{!"yasm_datavalhead", !828, i64 0, !828, i64 8}
!1222 = !{!1221, !828, i64 8}
!1223 = !DILocation(line: 409, column: 27, scope: !1195)
!1224 = !DILocation(line: 409, column: 5, scope: !1195)
!1225 = !DILocation(line: 411, column: 10, scope: !1195)
!1226 = !DILocation(line: 411, column: 8, scope: !1195)
!1227 = !DILocation(line: 412, column: 22, scope: !1195)
!1228 = !DILocation(line: 412, column: 45, scope: !1195)
!1229 = !DILocation(line: 412, column: 51, scope: !1195)
!1230 = !DILocation(line: 412, column: 26, scope: !1195)
!1231 = !DILocation(line: 412, column: 5, scope: !1195)
!1232 = !DILocation(line: 413, column: 22, scope: !1195)
!1233 = !DILocation(line: 413, column: 5, scope: !1195)
!1234 = !DILocation(line: 414, column: 12, scope: !1195)
!1235 = !DILocation(line: 415, column: 1, scope: !1195)
!1236 = !DILocation(line: 414, column: 5, scope: !1195)
!1237 = !DISubprogram(name: "yasm_error_set", scope: !94, file: !94, line: 162, type: !1238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !1240, !206, null}
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_error_class", file: !94, line: 68, baseType: !93)
!1241 = !DISubprogram(name: "yasm_errwarn_propagate", scope: !94, file: !94, line: 289, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !486, !288}
!1244 = distinct !DISubprogram(name: "cv8_set_symhead_end", scope: !2, file: !2, line: 697, type: !1245, scopeLine: 698, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1247)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{null, !704, !302}
!1247 = !{!1248, !1249}
!1248 = !DILocalVariable(name: "head", arg: 1, scope: !1244, file: !2, line: 697, type: !704)
!1249 = !DILocalVariable(name: "end_prevbc", arg: 2, scope: !1244, file: !2, line: 697, type: !302)
!1250 = !DILocation(line: 697, column: 34, scope: !1244)
!1251 = !DILocation(line: 697, column: 55, scope: !1244)
!1252 = !DILocation(line: 699, column: 24, scope: !1244)
!1253 = !DILocation(line: 699, column: 5, scope: !1244)
!1254 = !DILocation(line: 699, column: 11, scope: !1244)
!1255 = !DILocation(line: 699, column: 22, scope: !1244)
!1256 = !DILocation(line: 700, column: 1, scope: !1244)
!1257 = !DISubprogram(name: "yasm_section_bcs_last", scope: !224, file: !224, line: 319, type: !1258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!302, !246}
!1260 = !DISubprogram(name: "yasm_bc_create_align", scope: !76, file: !76, line: 374, type: !1261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!302, !281, !281, !281, !617, !288}
!1263 = !DISubprogram(name: "yasm_expr_create", scope: !65, file: !65, line: 90, type: !1264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!281, !286, !505, !505, !288}
!1266 = !DISubprogram(name: "yasm_expr_int", scope: !65, file: !65, line: 120, type: !1267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!505, !454}
!1269 = !DISubprogram(name: "yasm_intnum_create_uint", scope: !1270, file: !1270, line: 96, type: !1271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1270 = !DIFile(filename: "./libyasm/intnum.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "42af26c6ae684cef89aa66e5164f3d8f")
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!454, !288}
!1273 = !DISubprogram(name: "yasm_bc_finalize", scope: !76, file: !76, line: 426, type: !385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1274 = !DISubprogram(name: "yasm_cv__append_bc", scope: !192, file: !192, line: 49, type: !1275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!302, !246, !302}
!1277 = !DISubprogram(name: "yasm_bc_calc_len", scope: !76, file: !76, line: 470, type: !393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1278 = distinct !DISubprogram(name: "cv8_add_fileinfo", scope: !2, file: !2, line: 761, type: !1279, scopeLine: 762, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1281)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!302, !246, !528}
!1281 = !{!1282, !1283, !1284, !1285}
!1282 = !DILocalVariable(name: "sect", arg: 1, scope: !1278, file: !2, line: 761, type: !246)
!1283 = !DILocalVariable(name: "fn", arg: 2, scope: !1278, file: !2, line: 761, type: !528)
!1284 = !DILocalVariable(name: "fi", scope: !1278, file: !2, line: 763, type: !712)
!1285 = !DILocalVariable(name: "bc", scope: !1278, file: !2, line: 764, type: !302)
!1286 = !DILocation(line: 761, column: 32, scope: !1278)
!1287 = !DILocation(line: 761, column: 57, scope: !1278)
!1288 = !DILocation(line: 763, column: 5, scope: !1278)
!1289 = !DILocation(line: 763, column: 19, scope: !1278)
!1290 = !DILocation(line: 764, column: 5, scope: !1278)
!1291 = !DILocation(line: 764, column: 20, scope: !1278)
!1292 = !DILocation(line: 766, column: 10, scope: !1278)
!1293 = !DILocation(line: 766, column: 8, scope: !1278)
!1294 = !DILocation(line: 767, column: 14, scope: !1278)
!1295 = !DILocation(line: 767, column: 5, scope: !1278)
!1296 = !DILocation(line: 767, column: 9, scope: !1278)
!1297 = !DILocation(line: 767, column: 12, scope: !1278)
!1298 = !{!1299, !828, i64 0}
!1299 = !{!"cv8_fileinfo", !828, i64 0}
!1300 = !DILocation(line: 769, column: 59, scope: !1278)
!1301 = !DILocation(line: 769, column: 10, scope: !1278)
!1302 = !DILocation(line: 769, column: 8, scope: !1278)
!1303 = !DILocation(line: 770, column: 5, scope: !1278)
!1304 = !DILocation(line: 770, column: 9, scope: !1278)
!1305 = !DILocation(line: 770, column: 13, scope: !1278)
!1306 = !DILocation(line: 772, column: 24, scope: !1278)
!1307 = !DILocation(line: 772, column: 30, scope: !1278)
!1308 = !DILocation(line: 772, column: 5, scope: !1278)
!1309 = !DILocation(line: 773, column: 12, scope: !1278)
!1310 = !DILocation(line: 774, column: 1, scope: !1278)
!1311 = !DILocation(line: 773, column: 5, scope: !1278)
!1312 = !DISubprogram(name: "yasm_object_sections_traverse", scope: !224, file: !224, line: 161, type: !1313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!290, !221, !321, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!290, !246, !321}
!1318 = distinct !DISubprogram(name: "cv_generate_line_section", scope: !2, file: !2, line: 497, type: !1316, scopeLine: 498, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1319)
!1319 = !{!1320, !1321, !1322}
!1320 = !DILocalVariable(name: "sect", arg: 1, scope: !1318, file: !2, line: 497, type: !246)
!1321 = !DILocalVariable(name: "d", arg: 2, scope: !1318, file: !2, line: 497, type: !321)
!1322 = !DILocalVariable(name: "info", scope: !1318, file: !2, line: 499, type: !506)
!1323 = !DILocation(line: 497, column: 40, scope: !1318)
!1324 = !DILocation(line: 497, column: 63, scope: !1318)
!1325 = !DILocation(line: 499, column: 5, scope: !1318)
!1326 = !DILocation(line: 499, column: 19, scope: !1318)
!1327 = !DILocation(line: 499, column: 42, scope: !1318)
!1328 = !DILocation(line: 501, column: 31, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1318, file: !2, line: 501, column: 9)
!1330 = !DILocation(line: 501, column: 10, scope: !1329)
!1331 = !DILocation(line: 501, column: 9, scope: !1318)
!1332 = !DILocation(line: 502, column: 9, scope: !1329)
!1333 = !DILocation(line: 504, column: 5, scope: !1318)
!1334 = !DILocation(line: 504, column: 11, scope: !1318)
!1335 = !DILocation(line: 504, column: 22, scope: !1318)
!1336 = !DILocation(line: 505, column: 5, scope: !1318)
!1337 = !DILocation(line: 505, column: 11, scope: !1318)
!1338 = !DILocation(line: 505, column: 22, scope: !1318)
!1339 = !DILocation(line: 507, column: 31, scope: !1318)
!1340 = !DILocation(line: 507, column: 37, scope: !1318)
!1341 = !DILocation(line: 507, column: 43, scope: !1318)
!1342 = !DILocation(line: 507, column: 53, scope: !1318)
!1343 = !DILocation(line: 507, column: 5, scope: !1318)
!1344 = !DILocation(line: 509, column: 5, scope: !1318)
!1345 = !DILocation(line: 510, column: 1, scope: !1318)
!1346 = !DISubprogram(name: "yasm_bc_create_common", scope: !76, file: !76, line: 238, type: !1347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!302, !312, !321, !288}
!1349 = distinct !DISubprogram(name: "cv8_add_sym_objname", scope: !2, file: !2, line: 257, type: !1350, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1352)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!690, !246, !227}
!1352 = !{!1353, !1354, !1355, !1356}
!1353 = !DILocalVariable(name: "sect", arg: 1, scope: !1349, file: !2, line: 257, type: !246)
!1354 = !DILocalVariable(name: "objname", arg: 2, scope: !1349, file: !2, line: 257, type: !227)
!1355 = !DILocalVariable(name: "bc", scope: !1349, file: !2, line: 259, type: !302)
!1356 = !DILocalVariable(name: "cvs", scope: !1349, file: !2, line: 260, type: !690)
!1357 = !DILocation(line: 257, column: 35, scope: !1349)
!1358 = !DILocation(line: 257, column: 58, scope: !1349)
!1359 = !DILocation(line: 259, column: 5, scope: !1349)
!1360 = !DILocation(line: 259, column: 20, scope: !1349)
!1361 = !DILocation(line: 260, column: 5, scope: !1349)
!1362 = !DILocation(line: 260, column: 13, scope: !1349)
!1363 = !DILocation(line: 260, column: 19, scope: !1349)
!1364 = !DILocation(line: 261, column: 5, scope: !1349)
!1365 = !DILocation(line: 261, column: 10, scope: !1349)
!1366 = !DILocation(line: 261, column: 15, scope: !1349)
!1367 = !{!1368, !829, i64 0}
!1368 = !{!"cv_sym", !829, i64 0, !828, i64 8, !829, i64 16}
!1369 = !DILocation(line: 262, column: 5, scope: !1349)
!1370 = !DILocation(line: 262, column: 10, scope: !1349)
!1371 = !DILocation(line: 262, column: 17, scope: !1349)
!1372 = !{!1368, !828, i64 8}
!1373 = !DILocation(line: 263, column: 5, scope: !1349)
!1374 = !DILocation(line: 263, column: 10, scope: !1349)
!1375 = !DILocation(line: 263, column: 20, scope: !1349)
!1376 = !{!829, !829, i64 0}
!1377 = !DILocation(line: 264, column: 22, scope: !1349)
!1378 = !DILocation(line: 264, column: 5, scope: !1349)
!1379 = !DILocation(line: 264, column: 10, scope: !1349)
!1380 = !DILocation(line: 264, column: 20, scope: !1349)
!1381 = !DILocation(line: 266, column: 53, scope: !1349)
!1382 = !DILocation(line: 266, column: 10, scope: !1349)
!1383 = !DILocation(line: 266, column: 8, scope: !1349)
!1384 = !DILocation(line: 267, column: 27, scope: !1349)
!1385 = !DILocation(line: 267, column: 15, scope: !1349)
!1386 = !DILocation(line: 267, column: 5, scope: !1349)
!1387 = !DILocation(line: 267, column: 9, scope: !1349)
!1388 = !DILocation(line: 267, column: 13, scope: !1349)
!1389 = !DILocation(line: 268, column: 24, scope: !1349)
!1390 = !DILocation(line: 268, column: 30, scope: !1349)
!1391 = !DILocation(line: 268, column: 5, scope: !1349)
!1392 = !DILocation(line: 269, column: 12, scope: !1349)
!1393 = !DILocation(line: 270, column: 1, scope: !1349)
!1394 = !DILocation(line: 269, column: 5, scope: !1349)
!1395 = !DISubprogram(name: "yasm__abspath", scope: !1396, file: !1396, line: 136, type: !1397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1396 = !DIFile(filename: "./libyasm/file.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "53153c86a957e5d13378a565ca3fb6c4")
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!227, !206}
!1399 = !DISubprogram(name: "getenv", scope: !1400, file: !1400, line: 641, type: !1397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1400 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1401 = distinct !DISubprogram(name: "cv8_add_sym_compile", scope: !2, file: !2, line: 273, type: !1402, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1404)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!690, !221, !246, !227}
!1404 = !{!1405, !1406, !1407, !1408, !1409}
!1405 = !DILocalVariable(name: "object", arg: 1, scope: !1401, file: !2, line: 273, type: !221)
!1406 = !DILocalVariable(name: "sect", arg: 2, scope: !1401, file: !2, line: 273, type: !246)
!1407 = !DILocalVariable(name: "creator", arg: 3, scope: !1401, file: !2, line: 274, type: !227)
!1408 = !DILocalVariable(name: "bc", scope: !1401, file: !2, line: 276, type: !302)
!1409 = !DILocalVariable(name: "cvs", scope: !1401, file: !2, line: 277, type: !690)
!1410 = !DILocation(line: 273, column: 34, scope: !1401)
!1411 = !DILocation(line: 273, column: 56, scope: !1401)
!1412 = !DILocation(line: 274, column: 38, scope: !1401)
!1413 = !DILocation(line: 276, column: 5, scope: !1401)
!1414 = !DILocation(line: 276, column: 20, scope: !1401)
!1415 = !DILocation(line: 277, column: 5, scope: !1401)
!1416 = !DILocation(line: 277, column: 13, scope: !1401)
!1417 = !DILocation(line: 277, column: 19, scope: !1401)
!1418 = !DILocation(line: 278, column: 5, scope: !1401)
!1419 = !DILocation(line: 278, column: 10, scope: !1401)
!1420 = !DILocation(line: 278, column: 15, scope: !1401)
!1421 = !DILocation(line: 279, column: 5, scope: !1401)
!1422 = !DILocation(line: 279, column: 10, scope: !1401)
!1423 = !DILocation(line: 279, column: 17, scope: !1401)
!1424 = !DILocation(line: 280, column: 5, scope: !1401)
!1425 = !DILocation(line: 280, column: 10, scope: !1401)
!1426 = !DILocation(line: 280, column: 20, scope: !1401)
!1427 = !DILocation(line: 283, column: 16, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 283, column: 9)
!1429 = !{!839, !828, i64 24}
!1430 = !{!1431, !828, i64 0}
!1431 = !{!"yasm_arch_base", !828, i64 0}
!1432 = !{!1433, !828, i64 8}
!1433 = !{!"yasm_arch_module", !828, i64 0, !828, i64 8, !828, i64 16, !828, i64 24, !828, i64 32, !828, i64 40, !828, i64 48, !828, i64 56, !828, i64 64, !828, i64 72, !828, i64 80, !828, i64 88, !828, i64 96, !828, i64 104, !828, i64 112, !828, i64 120, !828, i64 128, !828, i64 136, !828, i64 144, !828, i64 152, !828, i64 160, !828, i64 168, !828, i64 176, !863, i64 184, !863, i64 188}
!1434 = !DILocation(line: 283, column: 9, scope: !1428)
!1435 = !DILocation(line: 283, column: 56, scope: !1428)
!1436 = !DILocation(line: 283, column: 9, scope: !1401)
!1437 = !DILocation(line: 284, column: 20, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !2, line: 284, column: 13)
!1439 = distinct !DILexicalBlock(scope: !1428, file: !2, line: 283, column: 62)
!1440 = !{!1433, !828, i64 40}
!1441 = !DILocation(line: 284, column: 13, scope: !1438)
!1442 = !DILocation(line: 284, column: 66, scope: !1438)
!1443 = !DILocation(line: 284, column: 13, scope: !1439)
!1444 = !DILocation(line: 285, column: 13, scope: !1438)
!1445 = !DILocation(line: 285, column: 18, scope: !1438)
!1446 = !DILocation(line: 285, column: 28, scope: !1438)
!1447 = !DILocation(line: 287, column: 13, scope: !1438)
!1448 = !DILocation(line: 287, column: 18, scope: !1438)
!1449 = !DILocation(line: 287, column: 28, scope: !1438)
!1450 = !DILocation(line: 288, column: 5, scope: !1439)
!1451 = !DILocation(line: 289, column: 9, scope: !1428)
!1452 = !DILocation(line: 289, column: 14, scope: !1428)
!1453 = !DILocation(line: 289, column: 24, scope: !1428)
!1454 = !DILocation(line: 291, column: 5, scope: !1401)
!1455 = !DILocation(line: 291, column: 10, scope: !1401)
!1456 = !DILocation(line: 291, column: 20, scope: !1401)
!1457 = !DILocation(line: 292, column: 5, scope: !1401)
!1458 = !DILocation(line: 292, column: 10, scope: !1401)
!1459 = !DILocation(line: 292, column: 20, scope: !1401)
!1460 = !DILocation(line: 293, column: 22, scope: !1401)
!1461 = !DILocation(line: 293, column: 5, scope: !1401)
!1462 = !DILocation(line: 293, column: 10, scope: !1401)
!1463 = !DILocation(line: 293, column: 20, scope: !1401)
!1464 = !DILocation(line: 294, column: 5, scope: !1401)
!1465 = !DILocation(line: 294, column: 10, scope: !1401)
!1466 = !DILocation(line: 294, column: 20, scope: !1401)
!1467 = !DILocation(line: 296, column: 53, scope: !1401)
!1468 = !DILocation(line: 296, column: 10, scope: !1401)
!1469 = !DILocation(line: 296, column: 8, scope: !1401)
!1470 = !DILocation(line: 297, column: 27, scope: !1401)
!1471 = !DILocation(line: 297, column: 15, scope: !1401)
!1472 = !DILocation(line: 297, column: 5, scope: !1401)
!1473 = !DILocation(line: 297, column: 9, scope: !1401)
!1474 = !DILocation(line: 297, column: 13, scope: !1401)
!1475 = !DILocation(line: 298, column: 24, scope: !1401)
!1476 = !DILocation(line: 298, column: 30, scope: !1401)
!1477 = !DILocation(line: 298, column: 5, scope: !1401)
!1478 = !DILocation(line: 299, column: 12, scope: !1401)
!1479 = !DILocation(line: 300, column: 1, scope: !1401)
!1480 = !DILocation(line: 299, column: 5, scope: !1401)
!1481 = !DISubprogram(name: "yasm__xstrdup", scope: !29, file: !29, line: 343, type: !1397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1482 = !DISubprogram(name: "yasm_symtab_traverse", scope: !182, file: !182, line: 205, type: !1483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!290, !230, !321, !1485}
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_symtab_traverse_callback", file: !182, line: 194, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!290, !406, !321}
!1489 = distinct !DISubprogram(name: "cv_generate_sym", scope: !2, file: !2, line: 520, type: !1487, scopeLine: 521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1490)
!1490 = !{!1491, !1492, !1493, !1494, !1495}
!1491 = !DILocalVariable(name: "sym", arg: 1, scope: !1489, file: !2, line: 520, type: !406)
!1492 = !DILocalVariable(name: "d", arg: 2, scope: !1489, file: !2, line: 520, type: !321)
!1493 = !DILocalVariable(name: "info", scope: !1489, file: !2, line: 522, type: !506)
!1494 = !DILocalVariable(name: "precbc", scope: !1489, file: !2, line: 523, type: !302)
!1495 = !DILocalVariable(name: "name", scope: !1489, file: !2, line: 524, type: !206)
!1496 = !DILocation(line: 520, column: 30, scope: !1489)
!1497 = !DILocation(line: 520, column: 41, scope: !1489)
!1498 = !DILocation(line: 522, column: 5, scope: !1489)
!1499 = !DILocation(line: 522, column: 19, scope: !1489)
!1500 = !DILocation(line: 522, column: 42, scope: !1489)
!1501 = !DILocation(line: 523, column: 5, scope: !1489)
!1502 = !DILocation(line: 523, column: 20, scope: !1489)
!1503 = !DILocation(line: 524, column: 5, scope: !1489)
!1504 = !DILocation(line: 524, column: 17, scope: !1489)
!1505 = !DILocation(line: 524, column: 45, scope: !1489)
!1506 = !DILocation(line: 524, column: 24, scope: !1489)
!1507 = !DILocation(line: 530, column: 9, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 530, column: 9)
!1509 = !DILocation(line: 530, column: 17, scope: !1508)
!1510 = !DILocation(line: 530, column: 24, scope: !1508)
!1511 = !DILocation(line: 530, column: 50, scope: !1508)
!1512 = !DILocation(line: 530, column: 28, scope: !1508)
!1513 = !DILocation(line: 530, column: 9, scope: !1489)
!1514 = !DILocation(line: 531, column: 9, scope: !1508)
!1515 = !DILocation(line: 534, column: 50, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 534, column: 9)
!1517 = !DILocation(line: 534, column: 30, scope: !1516)
!1518 = !DILocation(line: 534, column: 9, scope: !1516)
!1519 = !DILocation(line: 534, column: 9, scope: !1489)
!1520 = !DILocation(line: 535, column: 27, scope: !1516)
!1521 = !DILocation(line: 535, column: 33, scope: !1516)
!1522 = !DILocation(line: 535, column: 48, scope: !1516)
!1523 = !DILocation(line: 535, column: 9, scope: !1516)
!1524 = !DILocation(line: 537, column: 26, scope: !1516)
!1525 = !DILocation(line: 537, column: 32, scope: !1516)
!1526 = !DILocation(line: 537, column: 53, scope: !1516)
!1527 = !DILocation(line: 538, column: 40, scope: !1516)
!1528 = !DILocation(line: 538, column: 13, scope: !1516)
!1529 = !DILocation(line: 538, column: 45, scope: !1516)
!1530 = !DILocation(line: 537, column: 9, scope: !1516)
!1531 = !DILocation(line: 539, column: 5, scope: !1489)
!1532 = !DILocation(line: 540, column: 1, scope: !1489)
!1533 = distinct !DISubprogram(name: "cv_dbgfmt_add_file", scope: !2, file: !2, line: 338, type: !1534, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1536)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!376, !190, !376, !206}
!1536 = !{!1537, !1538, !1539, !1540, !1541, !1542, !1555, !1556, !1557, !1558}
!1537 = !DILocalVariable(name: "dbgfmt_cv", arg: 1, scope: !1533, file: !2, line: 338, type: !190)
!1538 = !DILocalVariable(name: "filenum", arg: 2, scope: !1533, file: !2, line: 338, type: !376)
!1539 = !DILocalVariable(name: "filename", arg: 3, scope: !1533, file: !2, line: 339, type: !206)
!1540 = !DILocalVariable(name: "pathname", scope: !1533, file: !2, line: 341, type: !227)
!1541 = !DILocalVariable(name: "i", scope: !1533, file: !2, line: 342, type: !376)
!1542 = !DILocalVariable(name: "context", scope: !1533, file: !2, line: 343, type: !1543)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_md5_context", file: !1544, line: 20, baseType: !1545)
!1544 = !DIFile(filename: "./libyasm/md5.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "af331efba39fcdc739a55558798a02ab")
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_md5_context", file: !1544, line: 16, size: 896, elements: !1546)
!1546 = !{!1547, !1549, !1551}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1545, file: !1544, line: 17, baseType: !1548, size: 256)
!1548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 256, elements: !786)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1545, file: !1544, line: 18, baseType: !1550, size: 128, offset: 256)
!1550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 128, elements: !465)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1545, file: !1544, line: 19, baseType: !1552, size: 512, offset: 384)
!1552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 512, elements: !1553)
!1553 = !{!1554}
!1554 = !DISubrange(count: 64)
!1555 = !DILocalVariable(name: "f", scope: !1533, file: !2, line: 344, type: !328)
!1556 = !DILocalVariable(name: "buf", scope: !1533, file: !2, line: 345, type: !429)
!1557 = !DILocalVariable(name: "len", scope: !1533, file: !2, line: 346, type: !376)
!1558 = !DILocalVariable(name: "old_allocated", scope: !1559, file: !2, line: 361, type: !376)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 360, column: 52)
!1560 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 360, column: 9)
!1561 = !DILocation(line: 338, column: 36, scope: !1533)
!1562 = !DILocation(line: 338, column: 54, scope: !1533)
!1563 = !DILocation(line: 339, column: 32, scope: !1533)
!1564 = !DILocation(line: 341, column: 5, scope: !1533)
!1565 = !DILocation(line: 341, column: 11, scope: !1533)
!1566 = !DILocation(line: 342, column: 5, scope: !1533)
!1567 = !DILocation(line: 342, column: 12, scope: !1533)
!1568 = !DILocation(line: 343, column: 5, scope: !1533)
!1569 = !DILocation(line: 343, column: 22, scope: !1533)
!1570 = !DILocation(line: 344, column: 5, scope: !1533)
!1571 = !DILocation(line: 344, column: 11, scope: !1533)
!1572 = !DILocation(line: 345, column: 5, scope: !1533)
!1573 = !DILocation(line: 345, column: 20, scope: !1533)
!1574 = !DILocation(line: 346, column: 5, scope: !1533)
!1575 = !DILocation(line: 346, column: 12, scope: !1533)
!1576 = !DILocation(line: 349, column: 9, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 349, column: 9)
!1578 = !DILocation(line: 349, column: 17, scope: !1577)
!1579 = !DILocation(line: 349, column: 9, scope: !1533)
!1580 = !DILocation(line: 351, column: 9, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 349, column: 23)
!1582 = !DILocation(line: 351, column: 16, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !2, line: 351, column: 9)
!1584 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 351, column: 9)
!1585 = !DILocation(line: 351, column: 24, scope: !1583)
!1586 = !DILocation(line: 351, column: 35, scope: !1583)
!1587 = !DILocation(line: 351, column: 23, scope: !1583)
!1588 = !DILocation(line: 351, column: 9, scope: !1584)
!1589 = !DILocation(line: 352, column: 18, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !2, line: 352, column: 17)
!1591 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 351, column: 62)
!1592 = !DILocation(line: 352, column: 29, scope: !1590)
!1593 = !DILocation(line: 352, column: 39, scope: !1590)
!1594 = !DILocation(line: 352, column: 48, scope: !1590)
!1595 = !{!924, !828, i64 8}
!1596 = !DILocation(line: 352, column: 57, scope: !1590)
!1597 = !DILocation(line: 353, column: 24, scope: !1590)
!1598 = !DILocation(line: 353, column: 35, scope: !1590)
!1599 = !DILocation(line: 353, column: 45, scope: !1590)
!1600 = !DILocation(line: 353, column: 54, scope: !1590)
!1601 = !DILocation(line: 353, column: 64, scope: !1590)
!1602 = !DILocation(line: 353, column: 17, scope: !1590)
!1603 = !DILocation(line: 353, column: 74, scope: !1590)
!1604 = !DILocation(line: 352, column: 17, scope: !1591)
!1605 = !DILocation(line: 354, column: 17, scope: !1590)
!1606 = !DILocation(line: 355, column: 9, scope: !1591)
!1607 = !DILocation(line: 351, column: 58, scope: !1583)
!1608 = !DILocation(line: 351, column: 9, scope: !1583)
!1609 = distinct !{!1609, !1588, !1610, !958}
!1610 = !DILocation(line: 355, column: 9, scope: !1584)
!1611 = !DILocation(line: 356, column: 5, scope: !1581)
!1612 = !DILocation(line: 357, column: 16, scope: !1577)
!1613 = !DILocation(line: 360, column: 9, scope: !1560)
!1614 = !DILocation(line: 360, column: 20, scope: !1560)
!1615 = !DILocation(line: 360, column: 31, scope: !1560)
!1616 = !{!912, !903, i64 24}
!1617 = !DILocation(line: 360, column: 17, scope: !1560)
!1618 = !DILocation(line: 360, column: 9, scope: !1533)
!1619 = !DILocation(line: 361, column: 9, scope: !1559)
!1620 = !DILocation(line: 361, column: 16, scope: !1559)
!1621 = !DILocation(line: 361, column: 32, scope: !1559)
!1622 = !DILocation(line: 361, column: 43, scope: !1559)
!1623 = !DILocation(line: 362, column: 42, scope: !1559)
!1624 = !DILocation(line: 362, column: 49, scope: !1559)
!1625 = !DILocation(line: 362, column: 9, scope: !1559)
!1626 = !DILocation(line: 362, column: 20, scope: !1559)
!1627 = !DILocation(line: 362, column: 40, scope: !1559)
!1628 = !DILocation(line: 363, column: 32, scope: !1559)
!1629 = !DILocation(line: 363, column: 46, scope: !1559)
!1630 = !DILocation(line: 363, column: 57, scope: !1559)
!1631 = !DILocation(line: 364, column: 33, scope: !1559)
!1632 = !DILocation(line: 364, column: 44, scope: !1559)
!1633 = !DILocation(line: 364, column: 32, scope: !1559)
!1634 = !DILocation(line: 363, column: 9, scope: !1559)
!1635 = !DILocation(line: 363, column: 20, scope: !1559)
!1636 = !DILocation(line: 363, column: 30, scope: !1559)
!1637 = !DILocation(line: 365, column: 16, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 365, column: 9)
!1639 = !DILocation(line: 365, column: 15, scope: !1638)
!1640 = !DILocation(line: 365, column: 14, scope: !1638)
!1641 = !DILocation(line: 365, column: 31, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1638, file: !2, line: 365, column: 9)
!1643 = !DILocation(line: 365, column: 33, scope: !1642)
!1644 = !DILocation(line: 365, column: 44, scope: !1642)
!1645 = !DILocation(line: 365, column: 32, scope: !1642)
!1646 = !DILocation(line: 365, column: 9, scope: !1638)
!1647 = !DILocation(line: 366, column: 13, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1642, file: !2, line: 365, column: 70)
!1649 = !DILocation(line: 366, column: 24, scope: !1648)
!1650 = !DILocation(line: 366, column: 34, scope: !1648)
!1651 = !DILocation(line: 366, column: 37, scope: !1648)
!1652 = !DILocation(line: 366, column: 46, scope: !1648)
!1653 = !DILocation(line: 367, column: 13, scope: !1648)
!1654 = !DILocation(line: 367, column: 24, scope: !1648)
!1655 = !DILocation(line: 367, column: 34, scope: !1648)
!1656 = !DILocation(line: 367, column: 37, scope: !1648)
!1657 = !DILocation(line: 367, column: 46, scope: !1648)
!1658 = !DILocation(line: 368, column: 13, scope: !1648)
!1659 = !DILocation(line: 368, column: 24, scope: !1648)
!1660 = !DILocation(line: 368, column: 34, scope: !1648)
!1661 = !DILocation(line: 368, column: 37, scope: !1648)
!1662 = !DILocation(line: 368, column: 45, scope: !1648)
!1663 = !DILocation(line: 369, column: 13, scope: !1648)
!1664 = !DILocation(line: 369, column: 24, scope: !1648)
!1665 = !DILocation(line: 369, column: 34, scope: !1648)
!1666 = !DILocation(line: 369, column: 37, scope: !1648)
!1667 = !DILocation(line: 369, column: 46, scope: !1648)
!1668 = !DILocation(line: 370, column: 9, scope: !1648)
!1669 = !DILocation(line: 365, column: 66, scope: !1642)
!1670 = !DILocation(line: 365, column: 9, scope: !1642)
!1671 = distinct !{!1671, !1646, !1672, !958}
!1672 = !DILocation(line: 370, column: 9, scope: !1638)
!1673 = !DILocation(line: 371, column: 5, scope: !1560)
!1674 = !DILocation(line: 371, column: 5, scope: !1559)
!1675 = !DILocation(line: 374, column: 11, scope: !1533)
!1676 = !DILocation(line: 374, column: 9, scope: !1533)
!1677 = !DILocation(line: 375, column: 5, scope: !1533)
!1678 = !DILocation(line: 376, column: 15, scope: !1533)
!1679 = !DILocation(line: 376, column: 9, scope: !1533)
!1680 = !DILocation(line: 376, column: 7, scope: !1533)
!1681 = !DILocation(line: 377, column: 10, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 377, column: 9)
!1683 = !DILocation(line: 377, column: 9, scope: !1533)
!1684 = !DILocation(line: 378, column: 9, scope: !1682)
!1685 = !DILocation(line: 379, column: 5, scope: !1533)
!1686 = !DILocation(line: 379, column: 25, scope: !1533)
!1687 = !DILocation(line: 379, column: 39, scope: !1533)
!1688 = !DILocation(line: 379, column: 19, scope: !1533)
!1689 = !DILocation(line: 379, column: 17, scope: !1533)
!1690 = !DILocation(line: 379, column: 43, scope: !1533)
!1691 = !DILocation(line: 380, column: 35, scope: !1533)
!1692 = !DILocation(line: 380, column: 55, scope: !1533)
!1693 = !DILocation(line: 380, column: 9, scope: !1533)
!1694 = distinct !{!1694, !1685, !1695, !958}
!1695 = !DILocation(line: 380, column: 58, scope: !1533)
!1696 = !DILocation(line: 381, column: 20, scope: !1533)
!1697 = !DILocation(line: 381, column: 31, scope: !1533)
!1698 = !DILocation(line: 381, column: 41, scope: !1533)
!1699 = !DILocation(line: 381, column: 50, scope: !1533)
!1700 = !DILocation(line: 381, column: 5, scope: !1533)
!1701 = !DILocation(line: 382, column: 12, scope: !1533)
!1702 = !DILocation(line: 382, column: 5, scope: !1533)
!1703 = !DILocation(line: 383, column: 5, scope: !1533)
!1704 = !DILocation(line: 383, column: 16, scope: !1533)
!1705 = !DILocation(line: 386, column: 9, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 386, column: 9)
!1707 = !DILocation(line: 386, column: 20, scope: !1706)
!1708 = !DILocation(line: 386, column: 30, scope: !1706)
!1709 = !DILocation(line: 386, column: 39, scope: !1706)
!1710 = !DILocation(line: 386, column: 9, scope: !1533)
!1711 = !DILocation(line: 387, column: 9, scope: !1706)
!1712 = !DILocation(line: 387, column: 20, scope: !1706)
!1713 = !DILocation(line: 387, column: 31, scope: !1706)
!1714 = !DILocation(line: 387, column: 41, scope: !1706)
!1715 = !DILocation(line: 387, column: 50, scope: !1706)
!1716 = !DILocation(line: 388, column: 9, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 388, column: 9)
!1718 = !DILocation(line: 388, column: 20, scope: !1717)
!1719 = !DILocation(line: 388, column: 30, scope: !1717)
!1720 = !DILocation(line: 388, column: 39, scope: !1717)
!1721 = !DILocation(line: 388, column: 9, scope: !1533)
!1722 = !DILocation(line: 389, column: 9, scope: !1717)
!1723 = !DILocation(line: 389, column: 20, scope: !1717)
!1724 = !DILocation(line: 389, column: 31, scope: !1717)
!1725 = !DILocation(line: 389, column: 41, scope: !1717)
!1726 = !DILocation(line: 389, column: 50, scope: !1717)
!1727 = !DILocation(line: 391, column: 30, scope: !1533)
!1728 = !DILocation(line: 391, column: 16, scope: !1533)
!1729 = !DILocation(line: 391, column: 14, scope: !1533)
!1730 = !DILocation(line: 392, column: 46, scope: !1533)
!1731 = !DILocation(line: 392, column: 5, scope: !1533)
!1732 = !DILocation(line: 392, column: 16, scope: !1533)
!1733 = !DILocation(line: 392, column: 26, scope: !1533)
!1734 = !DILocation(line: 392, column: 35, scope: !1533)
!1735 = !DILocation(line: 392, column: 44, scope: !1533)
!1736 = !DILocation(line: 393, column: 60, scope: !1533)
!1737 = !DILocation(line: 393, column: 46, scope: !1533)
!1738 = !DILocation(line: 393, column: 5, scope: !1533)
!1739 = !DILocation(line: 393, column: 16, scope: !1533)
!1740 = !DILocation(line: 393, column: 26, scope: !1533)
!1741 = !DILocation(line: 393, column: 35, scope: !1533)
!1742 = !DILocation(line: 393, column: 44, scope: !1533)
!1743 = !DILocation(line: 396, column: 9, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 396, column: 9)
!1745 = !DILocation(line: 396, column: 20, scope: !1744)
!1746 = !DILocation(line: 396, column: 31, scope: !1744)
!1747 = !DILocation(line: 396, column: 17, scope: !1744)
!1748 = !DILocation(line: 396, column: 9, scope: !1533)
!1749 = !DILocation(line: 397, column: 37, scope: !1744)
!1750 = !DILocation(line: 397, column: 45, scope: !1744)
!1751 = !DILocation(line: 397, column: 9, scope: !1744)
!1752 = !DILocation(line: 397, column: 20, scope: !1744)
!1753 = !DILocation(line: 397, column: 35, scope: !1744)
!1754 = !DILocation(line: 399, column: 12, scope: !1533)
!1755 = !DILocation(line: 400, column: 1, scope: !1533)
!1756 = !DILocation(line: 399, column: 5, scope: !1533)
!1757 = !DISubprogram(name: "strcmp", scope: !1758, file: !1758, line: 156, type: !1759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1758 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!290, !206, !206}
!1761 = !DISubprogram(name: "yasm_md5_init", scope: !1544, file: !1544, line: 23, type: !1762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1764}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1765 = !DISubprogram(name: "fopen", scope: !1766, file: !1766, line: 258, type: !1767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1766 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!328, !1769, !1769}
!1769 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !206)
!1770 = !DISubprogram(name: "yasm__fatal", scope: !94, file: !94, line: 115, type: !1771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{null, !206, null}
!1773 = !DISubprogram(name: "fread", scope: !1766, file: !1766, line: 675, type: !1774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!288, !1776, !376, !376, !1777}
!1776 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !321)
!1777 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !328)
!1778 = !DISubprogram(name: "yasm_md5_update", scope: !1544, file: !1544, line: 25, type: !1779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{null, !1764, !618, !288}
!1781 = !DISubprogram(name: "yasm_md5_final", scope: !1544, file: !1544, line: 28, type: !1782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{null, !429, !1764}
!1784 = !DISubprogram(name: "fclose", scope: !1766, file: !1766, line: 178, type: !1785, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!290, !328}
!1787 = !DISubprogram(name: "yasm_dvs_append", scope: !76, file: !76, line: 627, type: !1788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!1790, !1792, !1790}
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_dataval", file: !76, line: 38, baseType: !1207)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1793 = !DISubprogram(name: "yasm_dv_create_raw", scope: !76, file: !76, line: 565, type: !1794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!1790, !429, !288}
!1796 = !DISubprogram(name: "strlen", scope: !1758, file: !1758, line: 407, type: !1797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!288, !206}
!1799 = !DISubprogram(name: "yasm_bc_create_data", scope: !76, file: !76, line: 309, type: !1800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!302, !1792, !23, !290, !234, !288}
!1802 = !DISubprogram(name: "yasm_section_is_code", scope: !224, file: !224, line: 209, type: !1803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!290, !246}
!1805 = !DISubprogram(name: "yasm_section_bcs_traverse", scope: !224, file: !224, line: 346, type: !1806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!290, !246, !486, !321, !1808}
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!290, !302, !321}
!1811 = distinct !DISubprogram(name: "cv_generate_line_bc", scope: !2, file: !2, line: 430, type: !1809, scopeLine: 431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !1812)
!1812 = !{!1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1825, !1829}
!1813 = !DILocalVariable(name: "bc", arg: 1, scope: !1811, file: !2, line: 430, type: !302)
!1814 = !DILocalVariable(name: "d", arg: 2, scope: !1811, file: !2, line: 430, type: !321)
!1815 = !DILocalVariable(name: "info", scope: !1811, file: !2, line: 432, type: !506)
!1816 = !DILocalVariable(name: "dbgfmt_cv", scope: !1811, file: !2, line: 433, type: !190)
!1817 = !DILocalVariable(name: "i", scope: !1811, file: !2, line: 434, type: !376)
!1818 = !DILocalVariable(name: "filename", scope: !1811, file: !2, line: 435, type: !206)
!1819 = !DILocalVariable(name: "line", scope: !1811, file: !2, line: 436, type: !288)
!1820 = !DILocalVariable(name: "nextbc", scope: !1811, file: !2, line: 437, type: !302)
!1821 = !DILocalVariable(name: "sect", scope: !1811, file: !2, line: 438, type: !246)
!1822 = !DILocalVariable(name: "sectbc", scope: !1823, file: !2, line: 447, type: !302)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 446, column: 67)
!1824 = distinct !DILexicalBlock(scope: !1811, file: !2, line: 445, column: 9)
!1825 = !DILocalVariable(name: "symname", scope: !1823, file: !2, line: 448, type: !1826)
!1826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1827)
!1827 = !{!1828}
!1828 = !DISubrange(count: 8)
!1829 = !DILocalVariable(name: "first_in_sect", scope: !1823, file: !2, line: 449, type: !290)
!1830 = !DILocation(line: 430, column: 36, scope: !1811)
!1831 = !DILocation(line: 430, column: 57, scope: !1811)
!1832 = !DILocation(line: 432, column: 5, scope: !1811)
!1833 = !DILocation(line: 432, column: 19, scope: !1811)
!1834 = !DILocation(line: 432, column: 42, scope: !1811)
!1835 = !DILocation(line: 433, column: 5, scope: !1811)
!1836 = !DILocation(line: 433, column: 21, scope: !1811)
!1837 = !DILocation(line: 433, column: 33, scope: !1811)
!1838 = !DILocation(line: 433, column: 39, scope: !1811)
!1839 = !DILocation(line: 434, column: 5, scope: !1811)
!1840 = !DILocation(line: 434, column: 12, scope: !1811)
!1841 = !DILocation(line: 435, column: 5, scope: !1811)
!1842 = !DILocation(line: 435, column: 17, scope: !1811)
!1843 = !DILocation(line: 436, column: 5, scope: !1811)
!1844 = !DILocation(line: 436, column: 19, scope: !1811)
!1845 = !DILocation(line: 437, column: 16, scope: !1811)
!1846 = !DILocation(line: 437, column: 31, scope: !1811)
!1847 = !DILocation(line: 437, column: 40, scope: !1811)
!1848 = !{!950, !828, i64 0}
!1849 = !DILocation(line: 438, column: 5, scope: !1811)
!1850 = !DILocation(line: 438, column: 19, scope: !1811)
!1851 = !DILocation(line: 438, column: 46, scope: !1811)
!1852 = !DILocation(line: 438, column: 26, scope: !1811)
!1853 = !DILocation(line: 440, column: 9, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1811, file: !2, line: 440, column: 9)
!1855 = !DILocation(line: 440, column: 16, scope: !1854)
!1856 = !DILocation(line: 440, column: 19, scope: !1854)
!1857 = !DILocation(line: 440, column: 23, scope: !1854)
!1858 = !{!950, !903, i64 56}
!1859 = !DILocation(line: 440, column: 33, scope: !1854)
!1860 = !DILocation(line: 440, column: 41, scope: !1854)
!1861 = !DILocation(line: 440, column: 30, scope: !1854)
!1862 = !DILocation(line: 440, column: 9, scope: !1811)
!1863 = !DILocation(line: 441, column: 9, scope: !1854)
!1864 = !DILocation(line: 443, column: 25, scope: !1811)
!1865 = !DILocation(line: 443, column: 31, scope: !1811)
!1866 = !DILocation(line: 443, column: 40, scope: !1811)
!1867 = !DILocation(line: 443, column: 44, scope: !1811)
!1868 = !{!950, !903, i64 48}
!1869 = !DILocation(line: 443, column: 5, scope: !1811)
!1870 = !DILocation(line: 445, column: 10, scope: !1824)
!1871 = !DILocation(line: 445, column: 16, scope: !1824)
!1872 = !DILocation(line: 446, column: 9, scope: !1824)
!1873 = !DILocation(line: 446, column: 19, scope: !1824)
!1874 = !DILocation(line: 446, column: 29, scope: !1824)
!1875 = !DILocation(line: 446, column: 35, scope: !1824)
!1876 = !DILocation(line: 446, column: 47, scope: !1824)
!1877 = !{!1031, !828, i64 8}
!1878 = !DILocation(line: 446, column: 51, scope: !1824)
!1879 = !DILocation(line: 446, column: 12, scope: !1824)
!1880 = !DILocation(line: 446, column: 61, scope: !1824)
!1881 = !DILocation(line: 445, column: 9, scope: !1811)
!1882 = !DILocation(line: 447, column: 9, scope: !1823)
!1883 = !DILocation(line: 447, column: 24, scope: !1823)
!1884 = !DILocation(line: 448, column: 9, scope: !1823)
!1885 = !DILocation(line: 448, column: 14, scope: !1823)
!1886 = !DILocation(line: 449, column: 9, scope: !1823)
!1887 = !DILocation(line: 449, column: 13, scope: !1823)
!1888 = !DILocation(line: 449, column: 30, scope: !1823)
!1889 = !DILocation(line: 449, column: 36, scope: !1823)
!1890 = !DILocation(line: 449, column: 29, scope: !1823)
!1891 = !DILocation(line: 452, column: 15, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1823, file: !2, line: 452, column: 9)
!1893 = !DILocation(line: 452, column: 14, scope: !1892)
!1894 = !DILocation(line: 452, column: 19, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1892, file: !2, line: 452, column: 9)
!1896 = !DILocation(line: 452, column: 21, scope: !1895)
!1897 = !DILocation(line: 452, column: 32, scope: !1895)
!1898 = !DILocation(line: 452, column: 20, scope: !1895)
!1899 = !DILocation(line: 452, column: 9, scope: !1892)
!1900 = !DILocation(line: 453, column: 24, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !2, line: 453, column: 17)
!1902 = distinct !DILexicalBlock(scope: !1895, file: !2, line: 452, column: 53)
!1903 = !DILocation(line: 453, column: 34, scope: !1901)
!1904 = !DILocation(line: 453, column: 45, scope: !1901)
!1905 = !DILocation(line: 453, column: 55, scope: !1901)
!1906 = !DILocation(line: 453, column: 58, scope: !1901)
!1907 = !DILocation(line: 453, column: 17, scope: !1901)
!1908 = !DILocation(line: 453, column: 68, scope: !1901)
!1909 = !DILocation(line: 453, column: 17, scope: !1902)
!1910 = !DILocation(line: 454, column: 17, scope: !1901)
!1911 = !DILocation(line: 455, column: 9, scope: !1902)
!1912 = !DILocation(line: 452, column: 49, scope: !1895)
!1913 = !DILocation(line: 452, column: 9, scope: !1895)
!1914 = distinct !{!1914, !1899, !1915, !958}
!1915 = !DILocation(line: 455, column: 9, scope: !1892)
!1916 = !DILocation(line: 456, column: 13, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1823, file: !2, line: 456, column: 13)
!1918 = !DILocation(line: 456, column: 18, scope: !1917)
!1919 = !DILocation(line: 456, column: 29, scope: !1917)
!1920 = !DILocation(line: 456, column: 15, scope: !1917)
!1921 = !DILocation(line: 456, column: 13, scope: !1823)
!1922 = !DILocation(line: 457, column: 13, scope: !1917)
!1923 = !DILocation(line: 460, column: 28, scope: !1823)
!1924 = !DILocation(line: 460, column: 9, scope: !1823)
!1925 = !DILocation(line: 460, column: 15, scope: !1823)
!1926 = !DILocation(line: 460, column: 26, scope: !1823)
!1927 = !DILocation(line: 461, column: 33, scope: !1823)
!1928 = !DILocation(line: 461, column: 44, scope: !1823)
!1929 = !DILocation(line: 461, column: 54, scope: !1823)
!1930 = !DILocation(line: 461, column: 9, scope: !1823)
!1931 = !DILocation(line: 461, column: 15, scope: !1823)
!1932 = !DILocation(line: 461, column: 27, scope: !1823)
!1933 = !DILocation(line: 461, column: 30, scope: !1823)
!1934 = !DILocation(line: 462, column: 34, scope: !1823)
!1935 = !DILocation(line: 462, column: 9, scope: !1823)
!1936 = !DILocation(line: 462, column: 15, scope: !1823)
!1937 = !DILocation(line: 462, column: 27, scope: !1823)
!1938 = !DILocation(line: 462, column: 32, scope: !1823)
!1939 = !{!1031, !828, i64 16}
!1940 = !DILocation(line: 463, column: 43, scope: !1823)
!1941 = !DILocation(line: 463, column: 9, scope: !1823)
!1942 = !DILocation(line: 463, column: 15, scope: !1823)
!1943 = !DILocation(line: 463, column: 27, scope: !1823)
!1944 = !DILocation(line: 463, column: 41, scope: !1823)
!1945 = !DILocation(line: 464, column: 41, scope: !1823)
!1946 = !DILocation(line: 464, column: 18, scope: !1823)
!1947 = !DILocation(line: 464, column: 16, scope: !1823)
!1948 = !DILocation(line: 465, column: 13, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1823, file: !2, line: 465, column: 13)
!1950 = !DILocation(line: 465, column: 21, scope: !1949)
!1951 = !{!950, !828, i64 72}
!1952 = !DILocation(line: 465, column: 29, scope: !1949)
!1953 = !DILocation(line: 465, column: 32, scope: !1949)
!1954 = !DILocation(line: 465, column: 40, scope: !1949)
!1955 = !DILocation(line: 465, column: 13, scope: !1823)
!1956 = !DILocation(line: 466, column: 41, scope: !1949)
!1957 = !DILocation(line: 466, column: 49, scope: !1949)
!1958 = !DILocation(line: 466, column: 13, scope: !1949)
!1959 = !DILocation(line: 466, column: 19, scope: !1949)
!1960 = !DILocation(line: 466, column: 31, scope: !1949)
!1961 = !DILocation(line: 466, column: 39, scope: !1949)
!1962 = !{!1031, !828, i64 24}
!1963 = !DILocation(line: 468, column: 21, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1949, file: !2, line: 467, column: 14)
!1965 = !DILocation(line: 468, column: 39, scope: !1964)
!1966 = !DILocation(line: 468, column: 45, scope: !1964)
!1967 = !DILocation(line: 468, column: 58, scope: !1964)
!1968 = !DILocation(line: 468, column: 13, scope: !1964)
!1969 = !DILocation(line: 470, column: 42, scope: !1964)
!1970 = !DILocation(line: 470, column: 48, scope: !1964)
!1971 = !DILocation(line: 470, column: 56, scope: !1964)
!1972 = !DILocation(line: 470, column: 64, scope: !1964)
!1973 = !DILocation(line: 470, column: 73, scope: !1964)
!1974 = !DILocation(line: 470, column: 17, scope: !1964)
!1975 = !DILocation(line: 469, column: 13, scope: !1964)
!1976 = !DILocation(line: 469, column: 19, scope: !1964)
!1977 = !DILocation(line: 469, column: 31, scope: !1964)
!1978 = !DILocation(line: 469, column: 39, scope: !1964)
!1979 = !DILocation(line: 473, column: 9, scope: !1823)
!1980 = !DILocation(line: 473, column: 15, scope: !1823)
!1981 = !DILocation(line: 473, column: 27, scope: !1823)
!1982 = !DILocation(line: 473, column: 40, scope: !1823)
!1983 = !DILocation(line: 474, column: 9, scope: !1823)
!1984 = !DILocation(line: 474, column: 9, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1823, file: !2, line: 474, column: 9)
!1986 = !{!1031, !828, i64 48}
!1987 = !{!1031, !828, i64 56}
!1988 = !DILocation(line: 475, column: 9, scope: !1823)
!1989 = !DILocation(line: 475, column: 9, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1823, file: !2, line: 475, column: 9)
!1991 = !DILocation(line: 476, column: 9, scope: !1823)
!1992 = !DILocation(line: 476, column: 15, scope: !1823)
!1993 = !DILocation(line: 476, column: 26, scope: !1823)
!1994 = !DILocation(line: 477, column: 5, scope: !1824)
!1995 = !DILocation(line: 477, column: 5, scope: !1823)
!1996 = !DILocation(line: 480, column: 10, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1811, file: !2, line: 480, column: 9)
!1998 = !DILocation(line: 480, column: 16, scope: !1997)
!1999 = !DILocation(line: 480, column: 27, scope: !1997)
!2000 = !DILocation(line: 480, column: 30, scope: !1997)
!2001 = !DILocation(line: 480, column: 36, scope: !1997)
!2002 = !DILocation(line: 480, column: 48, scope: !1997)
!2003 = !{!2004, !903, i64 2024}
!2004 = !{!"cv8_lineset", !951, i64 0, !829, i64 8, !903, i64 2024}
!2005 = !DILocation(line: 480, column: 58, scope: !1997)
!2006 = !DILocation(line: 480, column: 9, scope: !1811)
!2007 = !DILocation(line: 481, column: 28, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1997, file: !2, line: 480, column: 66)
!2009 = !DILocation(line: 481, column: 9, scope: !2008)
!2010 = !DILocation(line: 481, column: 15, scope: !2008)
!2011 = !DILocation(line: 481, column: 26, scope: !2008)
!2012 = !DILocation(line: 482, column: 9, scope: !2008)
!2013 = !DILocation(line: 482, column: 15, scope: !2008)
!2014 = !DILocation(line: 482, column: 27, scope: !2008)
!2015 = !DILocation(line: 482, column: 37, scope: !2008)
!2016 = !DILocation(line: 483, column: 9, scope: !2008)
!2017 = !DILocation(line: 483, column: 9, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2008, file: !2, line: 483, column: 9)
!2019 = !{!2004, !828, i64 0}
!2020 = !DILocation(line: 484, column: 5, scope: !2008)
!2021 = !DILocation(line: 487, column: 67, scope: !1811)
!2022 = !DILocation(line: 487, column: 71, scope: !1811)
!2023 = !DILocation(line: 487, column: 5, scope: !1811)
!2024 = !DILocation(line: 487, column: 11, scope: !1811)
!2025 = !DILocation(line: 487, column: 23, scope: !1811)
!2026 = !DILocation(line: 487, column: 29, scope: !1811)
!2027 = !DILocation(line: 487, column: 35, scope: !1811)
!2028 = !DILocation(line: 487, column: 47, scope: !1811)
!2029 = !DILocation(line: 487, column: 58, scope: !1811)
!2030 = !DILocation(line: 487, column: 65, scope: !1811)
!2031 = !{!2032, !903, i64 0}
!2032 = !{!"cv8_linepair", !903, i64 0, !903, i64 8}
!2033 = !DILocation(line: 489, column: 22, scope: !1811)
!2034 = !DILocation(line: 489, column: 20, scope: !1811)
!2035 = !DILocation(line: 488, column: 5, scope: !1811)
!2036 = !DILocation(line: 488, column: 11, scope: !1811)
!2037 = !DILocation(line: 488, column: 23, scope: !1811)
!2038 = !DILocation(line: 488, column: 29, scope: !1811)
!2039 = !DILocation(line: 488, column: 35, scope: !1811)
!2040 = !DILocation(line: 488, column: 47, scope: !1811)
!2041 = !DILocation(line: 488, column: 58, scope: !1811)
!2042 = !DILocation(line: 488, column: 63, scope: !1811)
!2043 = !{!2032, !903, i64 8}
!2044 = !DILocation(line: 490, column: 5, scope: !1811)
!2045 = !DILocation(line: 490, column: 11, scope: !1811)
!2046 = !DILocation(line: 490, column: 23, scope: !1811)
!2047 = !DILocation(line: 490, column: 32, scope: !1811)
!2048 = !DILocation(line: 491, column: 5, scope: !1811)
!2049 = !DILocation(line: 491, column: 11, scope: !1811)
!2050 = !DILocation(line: 491, column: 23, scope: !1811)
!2051 = !DILocation(line: 491, column: 35, scope: !1811)
!2052 = !DILocation(line: 493, column: 5, scope: !1811)
!2053 = !DILocation(line: 494, column: 1, scope: !1811)
!2054 = !DISubprogram(name: "yasm_bc_get_section", scope: !76, file: !76, line: 396, type: !2055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!246, !302}
!2057 = !DISubprogram(name: "yasm_linemap_lookup", scope: !1116, file: !1116, line: 124, type: !2058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !483, !288, !2060, !2061}
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!2062 = !DISubprogram(name: "yasm_section_bcs_first", scope: !224, file: !224, line: 311, type: !1258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2063 = !DISubprogram(name: "sprintf", scope: !1766, file: !1766, line: 358, type: !2064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!290, !2066, !1769, null}
!2066 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !227)
!2067 = !DISubprogram(name: "yasm_symtab_define_label", scope: !182, file: !182, line: 135, type: !2068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!406, !230, !206, !302, !290, !288}
!2070 = distinct !DISubprogram(name: "cv8_lineinfo_bc_destroy", scope: !2, file: !2, line: 834, type: !319, scopeLine: 835, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2071)
!2071 = !{!2072, !2073, !2074, !2075}
!2072 = !DILocalVariable(name: "contents", arg: 1, scope: !2070, file: !2, line: 834, type: !321)
!2073 = !DILocalVariable(name: "li", scope: !2070, file: !2, line: 836, type: !560)
!2074 = !DILocalVariable(name: "ls1", scope: !2070, file: !2, line: 837, type: !563)
!2075 = !DILocalVariable(name: "ls2", scope: !2070, file: !2, line: 837, type: !563)
!2076 = !DILocation(line: 834, column: 31, scope: !2070)
!2077 = !DILocation(line: 836, column: 5, scope: !2070)
!2078 = !DILocation(line: 836, column: 19, scope: !2070)
!2079 = !DILocation(line: 836, column: 40, scope: !2070)
!2080 = !DILocation(line: 837, column: 5, scope: !2070)
!2081 = !DILocation(line: 837, column: 18, scope: !2070)
!2082 = !DILocation(line: 837, column: 24, scope: !2070)
!2083 = !DILocation(line: 840, column: 11, scope: !2070)
!2084 = !DILocation(line: 840, column: 9, scope: !2070)
!2085 = !DILocation(line: 841, column: 5, scope: !2070)
!2086 = !DILocation(line: 841, column: 12, scope: !2070)
!2087 = !DILocation(line: 842, column: 15, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2070, file: !2, line: 841, column: 17)
!2089 = !DILocation(line: 842, column: 13, scope: !2088)
!2090 = !DILocation(line: 843, column: 9, scope: !2088)
!2091 = !DILocation(line: 843, column: 20, scope: !2088)
!2092 = !DILocation(line: 844, column: 15, scope: !2088)
!2093 = !DILocation(line: 844, column: 13, scope: !2088)
!2094 = distinct !{!2094, !2085, !2095, !958}
!2095 = !DILocation(line: 845, column: 5, scope: !2070)
!2096 = !DILocation(line: 847, column: 5, scope: !2070)
!2097 = !DILocation(line: 847, column: 16, scope: !2070)
!2098 = !DILocation(line: 848, column: 1, scope: !2070)
!2099 = distinct !DISubprogram(name: "cv8_lineinfo_bc_print", scope: !2, file: !2, line: 851, type: !324, scopeLine: 852, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2100)
!2100 = !{!2101, !2102, !2103}
!2101 = !DILocalVariable(name: "contents", arg: 1, scope: !2099, file: !2, line: 851, type: !326)
!2102 = !DILocalVariable(name: "f", arg: 2, scope: !2099, file: !2, line: 851, type: !328)
!2103 = !DILocalVariable(name: "indent_level", arg: 3, scope: !2099, file: !2, line: 851, type: !290)
!2104 = !DILocation(line: 851, column: 35, scope: !2099)
!2105 = !DILocation(line: 851, column: 51, scope: !2099)
!2106 = !DILocation(line: 851, column: 58, scope: !2099)
!2107 = !DILocation(line: 854, column: 1, scope: !2099)
!2108 = distinct !DISubprogram(name: "cv8_lineinfo_bc_calc_len", scope: !2, file: !2, line: 857, type: !393, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2109)
!2109 = !{!2110, !2111, !2112}
!2110 = !DILocalVariable(name: "bc", arg: 1, scope: !2108, file: !2, line: 857, type: !302)
!2111 = !DILocalVariable(name: "add_span", arg: 2, scope: !2108, file: !2, line: 857, type: !395)
!2112 = !DILocalVariable(name: "add_span_data", arg: 3, scope: !2108, file: !2, line: 858, type: !321)
!2113 = !DILocation(line: 857, column: 41, scope: !2108)
!2114 = !DILocation(line: 857, column: 67, scope: !2108)
!2115 = !DILocation(line: 858, column: 32, scope: !2108)
!2116 = !DILocation(line: 860, column: 5, scope: !2108)
!2117 = !DILocation(line: 862, column: 5, scope: !2108)
!2118 = distinct !DISubprogram(name: "cv8_lineinfo_bc_tobytes", scope: !2, file: !2, line: 866, type: !426, scopeLine: 870, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2119)
!2119 = !{!2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132}
!2120 = !DILocalVariable(name: "bc", arg: 1, scope: !2118, file: !2, line: 866, type: !302)
!2121 = !DILocalVariable(name: "bufp", arg: 2, scope: !2118, file: !2, line: 866, type: !428)
!2122 = !DILocalVariable(name: "bufstart", arg: 3, scope: !2118, file: !2, line: 867, type: !429)
!2123 = !DILocalVariable(name: "d", arg: 4, scope: !2118, file: !2, line: 867, type: !321)
!2124 = !DILocalVariable(name: "output_value", arg: 5, scope: !2118, file: !2, line: 868, type: !431)
!2125 = !DILocalVariable(name: "output_reloc", arg: 6, scope: !2118, file: !2, line: 869, type: !436)
!2126 = !DILocalVariable(name: "object", scope: !2118, file: !2, line: 871, type: !221)
!2127 = !DILocalVariable(name: "li", scope: !2118, file: !2, line: 872, type: !560)
!2128 = !DILocalVariable(name: "buf", scope: !2118, file: !2, line: 873, type: !429)
!2129 = !DILocalVariable(name: "cval", scope: !2118, file: !2, line: 874, type: !454)
!2130 = !DILocalVariable(name: "i", scope: !2118, file: !2, line: 875, type: !288)
!2131 = !DILocalVariable(name: "ls", scope: !2118, file: !2, line: 876, type: !563)
!2132 = !DILocalVariable(name: "j", scope: !2133, file: !2, line: 913, type: !288)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !2, line: 912, column: 45)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !2, line: 912, column: 5)
!2135 = distinct !DILexicalBlock(scope: !2118, file: !2, line: 912, column: 5)
!2136 = !DILocation(line: 866, column: 40, scope: !2118)
!2137 = !DILocation(line: 866, column: 60, scope: !2118)
!2138 = !DILocation(line: 867, column: 40, scope: !2118)
!2139 = !DILocation(line: 867, column: 56, scope: !2118)
!2140 = !DILocation(line: 868, column: 48, scope: !2118)
!2141 = !DILocation(line: 869, column: 48, scope: !2118)
!2142 = !DILocation(line: 871, column: 5, scope: !2118)
!2143 = !DILocation(line: 871, column: 18, scope: !2118)
!2144 = !DILocation(line: 871, column: 51, scope: !2118)
!2145 = !DILocation(line: 871, column: 55, scope: !2118)
!2146 = !{!950, !828, i64 16}
!2147 = !DILocation(line: 871, column: 27, scope: !2118)
!2148 = !DILocation(line: 872, column: 5, scope: !2118)
!2149 = !DILocation(line: 872, column: 19, scope: !2118)
!2150 = !DILocation(line: 872, column: 40, scope: !2118)
!2151 = !DILocation(line: 872, column: 44, scope: !2118)
!2152 = !{!950, !828, i64 80}
!2153 = !DILocation(line: 873, column: 5, scope: !2118)
!2154 = !DILocation(line: 873, column: 20, scope: !2118)
!2155 = !DILocation(line: 873, column: 27, scope: !2118)
!2156 = !DILocation(line: 873, column: 26, scope: !2118)
!2157 = !DILocation(line: 874, column: 5, scope: !2118)
!2158 = !DILocation(line: 874, column: 18, scope: !2118)
!2159 = !DILocation(line: 875, column: 5, scope: !2118)
!2160 = !DILocation(line: 875, column: 19, scope: !2118)
!2161 = !DILocation(line: 876, column: 5, scope: !2118)
!2162 = !DILocation(line: 876, column: 18, scope: !2118)
!2163 = !DILocation(line: 878, column: 9, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2118, file: !2, line: 878, column: 9)
!2165 = !DILocation(line: 878, column: 13, scope: !2164)
!2166 = !DILocation(line: 878, column: 9, scope: !2118)
!2167 = !DILocation(line: 880, column: 20, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 878, column: 28)
!2169 = !DILocation(line: 880, column: 24, scope: !2168)
!2170 = !DILocation(line: 880, column: 49, scope: !2168)
!2171 = !DILocation(line: 880, column: 55, scope: !2168)
!2172 = !DILocation(line: 880, column: 53, scope: !2168)
!2173 = !DILocation(line: 880, column: 66, scope: !2168)
!2174 = !DILocation(line: 881, column: 20, scope: !2168)
!2175 = !DILocation(line: 881, column: 23, scope: !2168)
!2176 = !DILocation(line: 880, column: 9, scope: !2168)
!2177 = !DILocation(line: 884, column: 9, scope: !2168)
!2178 = !DILocation(line: 885, column: 9, scope: !2168)
!2179 = !DILocation(line: 888, column: 57, scope: !2168)
!2180 = !DILocation(line: 888, column: 61, scope: !2168)
!2181 = !DILocation(line: 888, column: 34, scope: !2168)
!2182 = !DILocation(line: 889, column: 56, scope: !2168)
!2183 = !DILocation(line: 889, column: 60, scope: !2168)
!2184 = !DILocation(line: 889, column: 34, scope: !2168)
!2185 = !DILocation(line: 888, column: 16, scope: !2168)
!2186 = !DILocation(line: 888, column: 14, scope: !2168)
!2187 = !DILocation(line: 890, column: 9, scope: !2168)
!2188 = !{!1433, !828, i64 96}
!2189 = !DILocation(line: 891, column: 29, scope: !2168)
!2190 = !DILocation(line: 891, column: 9, scope: !2168)
!2191 = !DILocation(line: 892, column: 13, scope: !2168)
!2192 = !DILocation(line: 893, column: 5, scope: !2168)
!2193 = !DILocation(line: 896, column: 36, scope: !2118)
!2194 = !DILocation(line: 896, column: 40, scope: !2118)
!2195 = !DILocation(line: 896, column: 44, scope: !2118)
!2196 = !DILocation(line: 896, column: 12, scope: !2118)
!2197 = !DILocation(line: 896, column: 10, scope: !2118)
!2198 = !DILocation(line: 897, column: 5, scope: !2118)
!2199 = !DILocation(line: 898, column: 9, scope: !2118)
!2200 = !DILocation(line: 901, column: 26, scope: !2118)
!2201 = !DILocation(line: 901, column: 32, scope: !2118)
!2202 = !DILocation(line: 901, column: 36, scope: !2118)
!2203 = !DILocation(line: 901, column: 5, scope: !2118)
!2204 = !DILocation(line: 902, column: 5, scope: !2118)
!2205 = !DILocation(line: 903, column: 9, scope: !2118)
!2206 = !DILocation(line: 906, column: 26, scope: !2118)
!2207 = !DILocation(line: 906, column: 32, scope: !2118)
!2208 = !DILocation(line: 906, column: 36, scope: !2118)
!2209 = !DILocation(line: 906, column: 48, scope: !2118)
!2210 = !DILocation(line: 906, column: 50, scope: !2118)
!2211 = !DILocation(line: 906, column: 5, scope: !2118)
!2212 = !DILocation(line: 907, column: 5, scope: !2118)
!2213 = !DILocation(line: 908, column: 9, scope: !2118)
!2214 = !DILocation(line: 911, column: 7, scope: !2118)
!2215 = !DILocation(line: 912, column: 5, scope: !2135)
!2216 = !DILocation(line: 912, column: 5, scope: !2134)
!2217 = !DILocation(line: 913, column: 9, scope: !2133)
!2218 = !DILocation(line: 913, column: 23, scope: !2133)
!2219 = !DILocation(line: 914, column: 15, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2133, file: !2, line: 914, column: 9)
!2221 = !DILocation(line: 914, column: 14, scope: !2220)
!2222 = !DILocation(line: 914, column: 19, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2220, file: !2, line: 914, column: 9)
!2224 = !DILocation(line: 914, column: 21, scope: !2223)
!2225 = !DILocation(line: 914, column: 25, scope: !2223)
!2226 = !DILocation(line: 914, column: 20, scope: !2223)
!2227 = !DILocation(line: 914, column: 38, scope: !2223)
!2228 = !DILocation(line: 914, column: 41, scope: !2223)
!2229 = !DILocation(line: 914, column: 42, scope: !2223)
!2230 = !DILocation(line: 0, scope: !2223)
!2231 = !DILocation(line: 914, column: 9, scope: !2220)
!2232 = !DILocation(line: 916, column: 34, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2223, file: !2, line: 914, column: 58)
!2234 = !DILocation(line: 916, column: 40, scope: !2233)
!2235 = !DILocation(line: 916, column: 44, scope: !2233)
!2236 = !DILocation(line: 916, column: 50, scope: !2233)
!2237 = !DILocation(line: 916, column: 53, scope: !2233)
!2238 = !DILocation(line: 916, column: 13, scope: !2233)
!2239 = !DILocation(line: 917, column: 13, scope: !2233)
!2240 = !DILocation(line: 918, column: 17, scope: !2233)
!2241 = !DILocation(line: 921, column: 34, scope: !2233)
!2242 = !DILocation(line: 921, column: 40, scope: !2233)
!2243 = !DILocation(line: 921, column: 44, scope: !2233)
!2244 = !DILocation(line: 921, column: 50, scope: !2233)
!2245 = !DILocation(line: 921, column: 53, scope: !2233)
!2246 = !DILocation(line: 921, column: 13, scope: !2233)
!2247 = !DILocation(line: 922, column: 13, scope: !2233)
!2248 = !DILocation(line: 923, column: 17, scope: !2233)
!2249 = !DILocation(line: 924, column: 9, scope: !2233)
!2250 = !DILocation(line: 914, column: 49, scope: !2223)
!2251 = !DILocation(line: 914, column: 54, scope: !2223)
!2252 = !DILocation(line: 914, column: 9, scope: !2223)
!2253 = distinct !{!2253, !2231, !2254, !958}
!2254 = !DILocation(line: 924, column: 9, scope: !2220)
!2255 = !DILocation(line: 925, column: 5, scope: !2134)
!2256 = !DILocation(line: 925, column: 5, scope: !2133)
!2257 = distinct !{!2257, !2215, !2258, !958}
!2258 = !DILocation(line: 925, column: 5, scope: !2135)
!2259 = !DILocation(line: 927, column: 13, scope: !2118)
!2260 = !DILocation(line: 927, column: 6, scope: !2118)
!2261 = !DILocation(line: 927, column: 11, scope: !2118)
!2262 = !DILocation(line: 929, column: 25, scope: !2118)
!2263 = !DILocation(line: 929, column: 5, scope: !2118)
!2264 = !DILocation(line: 931, column: 1, scope: !2118)
!2265 = !DILocation(line: 930, column: 5, scope: !2118)
!2266 = !DISubprogram(name: "yasm_section_get_object", scope: !224, file: !224, line: 245, type: !2267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!221, !2269}
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!2271 = distinct !DISubprogram(name: "cv_out_sym", scope: !2, file: !2, line: 656, type: !2272, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{null, !406, !288, !302, !428, !321, !431}
!2274 = !{!2275, !2276, !2277, !2278, !2279, !2280, !2281}
!2275 = !DILocalVariable(name: "sym", arg: 1, scope: !2271, file: !2, line: 656, type: !406)
!2276 = !DILocalVariable(name: "off", arg: 2, scope: !2271, file: !2, line: 656, type: !288)
!2277 = !DILocalVariable(name: "bc", arg: 3, scope: !2271, file: !2, line: 656, type: !302)
!2278 = !DILocalVariable(name: "bufp", arg: 4, scope: !2271, file: !2, line: 657, type: !428)
!2279 = !DILocalVariable(name: "d", arg: 5, scope: !2271, file: !2, line: 657, type: !321)
!2280 = !DILocalVariable(name: "output_value", arg: 6, scope: !2271, file: !2, line: 657, type: !431)
!2281 = !DILocalVariable(name: "val", scope: !2271, file: !2, line: 659, type: !401)
!2282 = !DILocation(line: 656, column: 25, scope: !2271)
!2283 = !DILocation(line: 656, column: 44, scope: !2271)
!2284 = !DILocation(line: 656, column: 64, scope: !2271)
!2285 = !DILocation(line: 657, column: 28, scope: !2271)
!2286 = !DILocation(line: 657, column: 40, scope: !2271)
!2287 = !DILocation(line: 657, column: 66, scope: !2271)
!2288 = !DILocation(line: 659, column: 5, scope: !2271)
!2289 = !DILocation(line: 659, column: 16, scope: !2271)
!2290 = !DILocation(line: 662, column: 31, scope: !2271)
!2291 = !DILocation(line: 662, column: 5, scope: !2271)
!2292 = !DILocation(line: 663, column: 9, scope: !2271)
!2293 = !DILocation(line: 663, column: 21, scope: !2271)
!2294 = !DILocation(line: 664, column: 5, scope: !2271)
!2295 = !DILocation(line: 664, column: 25, scope: !2271)
!2296 = !DILocation(line: 664, column: 24, scope: !2271)
!2297 = !DILocation(line: 664, column: 34, scope: !2271)
!2298 = !DILocation(line: 664, column: 39, scope: !2271)
!2299 = !DILocation(line: 664, column: 46, scope: !2271)
!2300 = !DILocation(line: 665, column: 6, scope: !2271)
!2301 = !DILocation(line: 665, column: 11, scope: !2271)
!2302 = !DILocation(line: 668, column: 31, scope: !2271)
!2303 = !DILocation(line: 668, column: 5, scope: !2271)
!2304 = !DILocation(line: 669, column: 9, scope: !2271)
!2305 = !DILocation(line: 669, column: 16, scope: !2271)
!2306 = !DILocation(line: 670, column: 5, scope: !2271)
!2307 = !DILocation(line: 670, column: 25, scope: !2271)
!2308 = !DILocation(line: 670, column: 24, scope: !2271)
!2309 = !DILocation(line: 670, column: 34, scope: !2271)
!2310 = !DILocation(line: 670, column: 37, scope: !2271)
!2311 = !DILocation(line: 670, column: 41, scope: !2271)
!2312 = !DILocation(line: 670, column: 48, scope: !2271)
!2313 = !DILocation(line: 671, column: 6, scope: !2271)
!2314 = !DILocation(line: 671, column: 11, scope: !2271)
!2315 = !DILocation(line: 672, column: 1, scope: !2271)
!2316 = !DISubprogram(name: "yasm_calc_bc_dist", scope: !76, file: !76, line: 436, type: !2317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!454, !302, !302}
!2319 = !DISubprogram(name: "yasm_intnum_destroy", scope: !1270, file: !1270, line: 138, type: !2320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{null, !454}
!2322 = !DISubprogram(name: "yasm_intnum_set_uint", scope: !1270, file: !1270, line: 177, type: !2323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{null, !454, !288}
!2325 = !DISubprogram(name: "yasm_value_init_sym", scope: !2326, file: !2326, line: 61, type: !2327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2326 = !DIFile(filename: "./libyasm/value.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "142e0bbf164f2a173a50a67c59b7b18d")
!2327 = !DISubroutineType(types: !2328)
!2328 = !{null, !435, !406, !23}
!2329 = distinct !DISubprogram(name: "cv_sym_size", scope: !2, file: !2, line: 934, type: !2330, scopeLine: 935, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2334)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!288, !2332}
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !691)
!2334 = !{!2335, !2336, !2337, !2338, !2339}
!2335 = !DILocalVariable(name: "cvs", arg: 1, scope: !2329, file: !2, line: 934, type: !2332)
!2336 = !DILocalVariable(name: "ch", scope: !2329, file: !2, line: 936, type: !206)
!2337 = !DILocalVariable(name: "len", scope: !2329, file: !2, line: 937, type: !288)
!2338 = !DILocalVariable(name: "slen", scope: !2329, file: !2, line: 938, type: !288)
!2339 = !DILocalVariable(name: "arg", scope: !2329, file: !2, line: 939, type: !290)
!2340 = !DILocation(line: 934, column: 27, scope: !2329)
!2341 = !DILocation(line: 936, column: 5, scope: !2329)
!2342 = !DILocation(line: 936, column: 17, scope: !2329)
!2343 = !DILocation(line: 936, column: 22, scope: !2329)
!2344 = !DILocation(line: 936, column: 27, scope: !2329)
!2345 = !DILocation(line: 937, column: 5, scope: !2329)
!2346 = !DILocation(line: 937, column: 19, scope: !2329)
!2347 = !DILocation(line: 938, column: 5, scope: !2329)
!2348 = !DILocation(line: 938, column: 19, scope: !2329)
!2349 = !DILocation(line: 939, column: 5, scope: !2329)
!2350 = !DILocation(line: 939, column: 9, scope: !2329)
!2351 = !DILocation(line: 941, column: 5, scope: !2329)
!2352 = !DILocation(line: 941, column: 13, scope: !2329)
!2353 = !DILocation(line: 941, column: 12, scope: !2329)
!2354 = !DILocation(line: 942, column: 18, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2329, file: !2, line: 941, column: 17)
!2356 = !DILocation(line: 942, column: 17, scope: !2355)
!2357 = !DILocation(line: 942, column: 9, scope: !2355)
!2358 = !DILocation(line: 944, column: 20, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2355, file: !2, line: 942, column: 22)
!2360 = !DILocation(line: 945, column: 20, scope: !2359)
!2361 = !DILocation(line: 946, column: 17, scope: !2359)
!2362 = !DILocation(line: 948, column: 21, scope: !2359)
!2363 = !DILocation(line: 949, column: 20, scope: !2359)
!2364 = !DILocation(line: 950, column: 17, scope: !2359)
!2365 = !DILocation(line: 952, column: 21, scope: !2359)
!2366 = !DILocation(line: 953, column: 20, scope: !2359)
!2367 = !DILocation(line: 954, column: 17, scope: !2359)
!2368 = !DILocation(line: 956, column: 21, scope: !2359)
!2369 = !DILocation(line: 957, column: 20, scope: !2359)
!2370 = !DILocation(line: 958, column: 17, scope: !2359)
!2371 = !DILocation(line: 960, column: 21, scope: !2359)
!2372 = !DILocation(line: 961, column: 20, scope: !2359)
!2373 = !DILocation(line: 962, column: 17, scope: !2359)
!2374 = !DILocation(line: 964, column: 21, scope: !2359)
!2375 = !DILocation(line: 965, column: 60, scope: !2359)
!2376 = !DILocation(line: 965, column: 65, scope: !2359)
!2377 = !DILocation(line: 965, column: 73, scope: !2359)
!2378 = !DILocation(line: 965, column: 77, scope: !2359)
!2379 = !DILocation(line: 965, column: 39, scope: !2359)
!2380 = !DILocation(line: 965, column: 22, scope: !2359)
!2381 = !DILocation(line: 966, column: 24, scope: !2359)
!2382 = !DILocation(line: 966, column: 29, scope: !2359)
!2383 = !DILocation(line: 966, column: 39, scope: !2359)
!2384 = !DILocation(line: 966, column: 21, scope: !2359)
!2385 = !DILocation(line: 967, column: 17, scope: !2359)
!2386 = !DILocation(line: 970, column: 57, scope: !2359)
!2387 = !DILocation(line: 970, column: 62, scope: !2359)
!2388 = !DILocation(line: 970, column: 70, scope: !2359)
!2389 = !DILocation(line: 970, column: 74, scope: !2359)
!2390 = !DILocation(line: 970, column: 36, scope: !2359)
!2391 = !DILocation(line: 970, column: 77, scope: !2359)
!2392 = !DILocation(line: 969, column: 21, scope: !2359)
!2393 = !DILocation(line: 971, column: 17, scope: !2359)
!2394 = !DILocation(line: 973, column: 17, scope: !2359)
!2395 = !DILocation(line: 974, column: 9, scope: !2359)
!2396 = !DILocation(line: 975, column: 11, scope: !2355)
!2397 = distinct !{!2397, !2351, !2398, !958}
!2398 = !DILocation(line: 976, column: 5, scope: !2329)
!2399 = !DILocation(line: 978, column: 12, scope: !2329)
!2400 = !DILocation(line: 979, column: 1, scope: !2329)
!2401 = !DILocation(line: 978, column: 5, scope: !2329)
!2402 = distinct !DISubprogram(name: "cv_sym_bc_destroy", scope: !2, file: !2, line: 982, type: !319, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2403)
!2403 = !{!2404, !2405, !2406, !2407}
!2404 = !DILocalVariable(name: "contents", arg: 1, scope: !2402, file: !2, line: 982, type: !321)
!2405 = !DILocalVariable(name: "cvs", scope: !2402, file: !2, line: 984, type: !690)
!2406 = !DILocalVariable(name: "ch", scope: !2402, file: !2, line: 985, type: !206)
!2407 = !DILocalVariable(name: "arg", scope: !2402, file: !2, line: 986, type: !290)
!2408 = !DILocation(line: 982, column: 25, scope: !2402)
!2409 = !DILocation(line: 984, column: 5, scope: !2402)
!2410 = !DILocation(line: 984, column: 13, scope: !2402)
!2411 = !DILocation(line: 984, column: 29, scope: !2402)
!2412 = !DILocation(line: 985, column: 5, scope: !2402)
!2413 = !DILocation(line: 985, column: 17, scope: !2402)
!2414 = !DILocation(line: 985, column: 22, scope: !2402)
!2415 = !DILocation(line: 985, column: 27, scope: !2402)
!2416 = !DILocation(line: 986, column: 5, scope: !2402)
!2417 = !DILocation(line: 986, column: 9, scope: !2402)
!2418 = !DILocation(line: 988, column: 5, scope: !2402)
!2419 = !DILocation(line: 988, column: 13, scope: !2402)
!2420 = !DILocation(line: 988, column: 12, scope: !2402)
!2421 = !DILocation(line: 989, column: 18, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2402, file: !2, line: 988, column: 17)
!2423 = !DILocation(line: 989, column: 17, scope: !2422)
!2424 = !DILocation(line: 989, column: 9, scope: !2422)
!2425 = !DILocation(line: 995, column: 20, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2422, file: !2, line: 989, column: 22)
!2427 = !DILocation(line: 996, column: 17, scope: !2426)
!2428 = !DILocation(line: 999, column: 17, scope: !2426)
!2429 = !DILocation(line: 999, column: 28, scope: !2426)
!2430 = !DILocation(line: 999, column: 33, scope: !2426)
!2431 = !DILocation(line: 999, column: 41, scope: !2426)
!2432 = !DILocation(line: 999, column: 45, scope: !2426)
!2433 = !DILocation(line: 1000, column: 17, scope: !2426)
!2434 = !DILocation(line: 1002, column: 17, scope: !2426)
!2435 = !DILocation(line: 1003, column: 9, scope: !2426)
!2436 = !DILocation(line: 1004, column: 11, scope: !2422)
!2437 = distinct !{!2437, !2418, !2438, !958}
!2438 = !DILocation(line: 1005, column: 5, scope: !2402)
!2439 = !DILocation(line: 1007, column: 5, scope: !2402)
!2440 = !DILocation(line: 1007, column: 16, scope: !2402)
!2441 = !DILocation(line: 1008, column: 1, scope: !2402)
!2442 = distinct !DISubprogram(name: "cv_sym_bc_print", scope: !2, file: !2, line: 1011, type: !324, scopeLine: 1012, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2443)
!2443 = !{!2444, !2445, !2446}
!2444 = !DILocalVariable(name: "contents", arg: 1, scope: !2442, file: !2, line: 1011, type: !326)
!2445 = !DILocalVariable(name: "f", arg: 2, scope: !2442, file: !2, line: 1011, type: !328)
!2446 = !DILocalVariable(name: "indent_level", arg: 3, scope: !2442, file: !2, line: 1011, type: !290)
!2447 = !DILocation(line: 1011, column: 29, scope: !2442)
!2448 = !DILocation(line: 1011, column: 45, scope: !2442)
!2449 = !DILocation(line: 1011, column: 52, scope: !2442)
!2450 = !DILocation(line: 1014, column: 1, scope: !2442)
!2451 = distinct !DISubprogram(name: "cv_sym_bc_calc_len", scope: !2, file: !2, line: 1017, type: !393, scopeLine: 1019, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2452)
!2452 = !{!2453, !2454, !2455}
!2453 = !DILocalVariable(name: "bc", arg: 1, scope: !2451, file: !2, line: 1017, type: !302)
!2454 = !DILocalVariable(name: "add_span", arg: 2, scope: !2451, file: !2, line: 1017, type: !395)
!2455 = !DILocalVariable(name: "add_span_data", arg: 3, scope: !2451, file: !2, line: 1018, type: !321)
!2456 = !DILocation(line: 1017, column: 35, scope: !2451)
!2457 = !DILocation(line: 1017, column: 61, scope: !2451)
!2458 = !DILocation(line: 1018, column: 26, scope: !2451)
!2459 = !DILocation(line: 1020, column: 5, scope: !2451)
!2460 = !DILocation(line: 1022, column: 5, scope: !2451)
!2461 = distinct !DISubprogram(name: "cv_sym_bc_tobytes", scope: !2, file: !2, line: 1026, type: !426, scopeLine: 1030, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2462)
!2462 = !{!2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475}
!2463 = !DILocalVariable(name: "bc", arg: 1, scope: !2461, file: !2, line: 1026, type: !302)
!2464 = !DILocalVariable(name: "bufp", arg: 2, scope: !2461, file: !2, line: 1026, type: !428)
!2465 = !DILocalVariable(name: "bufstart", arg: 3, scope: !2461, file: !2, line: 1027, type: !429)
!2466 = !DILocalVariable(name: "d", arg: 4, scope: !2461, file: !2, line: 1027, type: !321)
!2467 = !DILocalVariable(name: "output_value", arg: 5, scope: !2461, file: !2, line: 1028, type: !431)
!2468 = !DILocalVariable(name: "output_reloc", arg: 6, scope: !2461, file: !2, line: 1029, type: !436)
!2469 = !DILocalVariable(name: "object", scope: !2461, file: !2, line: 1031, type: !221)
!2470 = !DILocalVariable(name: "cvs", scope: !2461, file: !2, line: 1032, type: !690)
!2471 = !DILocalVariable(name: "buf", scope: !2461, file: !2, line: 1033, type: !429)
!2472 = !DILocalVariable(name: "cval", scope: !2461, file: !2, line: 1034, type: !454)
!2473 = !DILocalVariable(name: "ch", scope: !2461, file: !2, line: 1035, type: !206)
!2474 = !DILocalVariable(name: "len", scope: !2461, file: !2, line: 1036, type: !376)
!2475 = !DILocalVariable(name: "arg", scope: !2461, file: !2, line: 1037, type: !290)
!2476 = !DILocation(line: 1026, column: 34, scope: !2461)
!2477 = !DILocation(line: 1026, column: 54, scope: !2461)
!2478 = !DILocation(line: 1027, column: 34, scope: !2461)
!2479 = !DILocation(line: 1027, column: 50, scope: !2461)
!2480 = !DILocation(line: 1028, column: 42, scope: !2461)
!2481 = !DILocation(line: 1029, column: 42, scope: !2461)
!2482 = !DILocation(line: 1031, column: 5, scope: !2461)
!2483 = !DILocation(line: 1031, column: 18, scope: !2461)
!2484 = !DILocation(line: 1031, column: 51, scope: !2461)
!2485 = !DILocation(line: 1031, column: 55, scope: !2461)
!2486 = !DILocation(line: 1031, column: 27, scope: !2461)
!2487 = !DILocation(line: 1032, column: 5, scope: !2461)
!2488 = !DILocation(line: 1032, column: 13, scope: !2461)
!2489 = !DILocation(line: 1032, column: 29, scope: !2461)
!2490 = !DILocation(line: 1032, column: 33, scope: !2461)
!2491 = !DILocation(line: 1033, column: 5, scope: !2461)
!2492 = !DILocation(line: 1033, column: 20, scope: !2461)
!2493 = !DILocation(line: 1033, column: 27, scope: !2461)
!2494 = !DILocation(line: 1033, column: 26, scope: !2461)
!2495 = !DILocation(line: 1034, column: 5, scope: !2461)
!2496 = !DILocation(line: 1034, column: 18, scope: !2461)
!2497 = !DILocation(line: 1035, column: 5, scope: !2461)
!2498 = !DILocation(line: 1035, column: 17, scope: !2461)
!2499 = !DILocation(line: 1035, column: 22, scope: !2461)
!2500 = !DILocation(line: 1035, column: 27, scope: !2461)
!2501 = !DILocation(line: 1036, column: 5, scope: !2461)
!2502 = !DILocation(line: 1036, column: 12, scope: !2461)
!2503 = !DILocation(line: 1037, column: 5, scope: !2461)
!2504 = !DILocation(line: 1037, column: 9, scope: !2461)
!2505 = !DILocation(line: 1040, column: 36, scope: !2461)
!2506 = !DILocation(line: 1040, column: 40, scope: !2461)
!2507 = !DILocation(line: 1040, column: 43, scope: !2461)
!2508 = !DILocation(line: 1040, column: 12, scope: !2461)
!2509 = !DILocation(line: 1040, column: 10, scope: !2461)
!2510 = !DILocation(line: 1041, column: 5, scope: !2461)
!2511 = !DILocation(line: 1042, column: 9, scope: !2461)
!2512 = !DILocation(line: 1045, column: 26, scope: !2461)
!2513 = !DILocation(line: 1045, column: 32, scope: !2461)
!2514 = !DILocation(line: 1045, column: 37, scope: !2461)
!2515 = !DILocation(line: 1045, column: 5, scope: !2461)
!2516 = !DILocation(line: 1046, column: 5, scope: !2461)
!2517 = !DILocation(line: 1047, column: 9, scope: !2461)
!2518 = !DILocation(line: 1049, column: 5, scope: !2461)
!2519 = !DILocation(line: 1049, column: 13, scope: !2461)
!2520 = !DILocation(line: 1049, column: 12, scope: !2461)
!2521 = !DILocation(line: 1050, column: 18, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2461, file: !2, line: 1049, column: 17)
!2523 = !DILocation(line: 1050, column: 17, scope: !2522)
!2524 = !DILocation(line: 1050, column: 9, scope: !2522)
!2525 = !DILocation(line: 1052, column: 17, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2522, file: !2, line: 1050, column: 22)
!2527 = !DILocation(line: 1053, column: 20, scope: !2526)
!2528 = !DILocation(line: 1054, column: 17, scope: !2526)
!2529 = !DILocation(line: 1056, column: 38, scope: !2526)
!2530 = !DILocation(line: 1056, column: 44, scope: !2526)
!2531 = !DILocation(line: 1056, column: 49, scope: !2526)
!2532 = !DILocation(line: 1056, column: 57, scope: !2526)
!2533 = !DILocation(line: 1056, column: 61, scope: !2526)
!2534 = !DILocation(line: 1056, column: 17, scope: !2526)
!2535 = !DILocation(line: 1057, column: 17, scope: !2526)
!2536 = !DILocation(line: 1059, column: 21, scope: !2526)
!2537 = !DILocation(line: 1060, column: 17, scope: !2526)
!2538 = !DILocation(line: 1062, column: 38, scope: !2526)
!2539 = !DILocation(line: 1062, column: 44, scope: !2526)
!2540 = !DILocation(line: 1062, column: 49, scope: !2526)
!2541 = !DILocation(line: 1062, column: 57, scope: !2526)
!2542 = !DILocation(line: 1062, column: 61, scope: !2526)
!2543 = !DILocation(line: 1062, column: 17, scope: !2526)
!2544 = !DILocation(line: 1063, column: 17, scope: !2526)
!2545 = !DILocation(line: 1065, column: 21, scope: !2526)
!2546 = !DILocation(line: 1066, column: 17, scope: !2526)
!2547 = !DILocation(line: 1068, column: 43, scope: !2526)
!2548 = !DILocation(line: 1068, column: 48, scope: !2526)
!2549 = !DILocation(line: 1068, column: 56, scope: !2526)
!2550 = !DILocation(line: 1068, column: 60, scope: !2526)
!2551 = !DILocation(line: 1069, column: 44, scope: !2526)
!2552 = !DILocation(line: 1069, column: 48, scope: !2526)
!2553 = !DILocation(line: 1069, column: 47, scope: !2526)
!2554 = !DILocation(line: 1069, column: 59, scope: !2526)
!2555 = !DILocation(line: 1069, column: 69, scope: !2526)
!2556 = !DILocation(line: 1070, column: 28, scope: !2526)
!2557 = !DILocation(line: 1068, column: 17, scope: !2526)
!2558 = !DILocation(line: 1071, column: 17, scope: !2526)
!2559 = !DILocation(line: 1073, column: 38, scope: !2526)
!2560 = !DILocation(line: 1073, column: 44, scope: !2526)
!2561 = !DILocation(line: 1073, column: 49, scope: !2526)
!2562 = !DILocation(line: 1073, column: 57, scope: !2526)
!2563 = !DILocation(line: 1073, column: 61, scope: !2526)
!2564 = !DILocation(line: 1073, column: 17, scope: !2526)
!2565 = !DILocation(line: 1074, column: 17, scope: !2526)
!2566 = !DILocation(line: 1076, column: 21, scope: !2526)
!2567 = !DILocation(line: 1077, column: 17, scope: !2526)
!2568 = !DILocation(line: 1079, column: 38, scope: !2526)
!2569 = !DILocation(line: 1079, column: 43, scope: !2526)
!2570 = !DILocation(line: 1079, column: 48, scope: !2526)
!2571 = !DILocation(line: 1079, column: 53, scope: !2526)
!2572 = !DILocation(line: 1079, column: 23, scope: !2526)
!2573 = !DILocation(line: 1079, column: 21, scope: !2526)
!2574 = !DILocation(line: 1080, column: 23, scope: !2526)
!2575 = !DILocation(line: 1080, column: 27, scope: !2526)
!2576 = !DILocation(line: 1080, column: 37, scope: !2526)
!2577 = !DILocation(line: 1080, column: 21, scope: !2526)
!2578 = !DILocation(line: 1081, column: 17, scope: !2526)
!2579 = !DILocation(line: 1082, column: 24, scope: !2526)
!2580 = !DILocation(line: 1082, column: 37, scope: !2526)
!2581 = !DILocation(line: 1082, column: 42, scope: !2526)
!2582 = !DILocation(line: 1082, column: 47, scope: !2526)
!2583 = !DILocation(line: 1082, column: 52, scope: !2526)
!2584 = !DILocation(line: 1082, column: 55, scope: !2526)
!2585 = !DILocation(line: 1082, column: 17, scope: !2526)
!2586 = !DILocation(line: 1083, column: 24, scope: !2526)
!2587 = !DILocation(line: 1083, column: 21, scope: !2526)
!2588 = !DILocation(line: 1084, column: 20, scope: !2526)
!2589 = !DILocation(line: 1085, column: 17, scope: !2526)
!2590 = !DILocation(line: 1087, column: 38, scope: !2526)
!2591 = !DILocation(line: 1087, column: 43, scope: !2526)
!2592 = !DILocation(line: 1087, column: 48, scope: !2526)
!2593 = !DILocation(line: 1087, column: 53, scope: !2526)
!2594 = !DILocation(line: 1087, column: 23, scope: !2526)
!2595 = !DILocation(line: 1087, column: 55, scope: !2526)
!2596 = !DILocation(line: 1087, column: 21, scope: !2526)
!2597 = !DILocation(line: 1088, column: 24, scope: !2526)
!2598 = !DILocation(line: 1088, column: 37, scope: !2526)
!2599 = !DILocation(line: 1088, column: 42, scope: !2526)
!2600 = !DILocation(line: 1088, column: 47, scope: !2526)
!2601 = !DILocation(line: 1088, column: 52, scope: !2526)
!2602 = !DILocation(line: 1088, column: 55, scope: !2526)
!2603 = !DILocation(line: 1088, column: 17, scope: !2526)
!2604 = !DILocation(line: 1089, column: 24, scope: !2526)
!2605 = !DILocation(line: 1089, column: 21, scope: !2526)
!2606 = !DILocation(line: 1090, column: 20, scope: !2526)
!2607 = !DILocation(line: 1091, column: 17, scope: !2526)
!2608 = !DILocation(line: 1093, column: 17, scope: !2526)
!2609 = !DILocation(line: 1094, column: 9, scope: !2526)
!2610 = !DILocation(line: 1095, column: 11, scope: !2522)
!2611 = distinct !{!2611, !2518, !2612, !958}
!2612 = !DILocation(line: 1096, column: 5, scope: !2461)
!2613 = !DILocation(line: 1098, column: 13, scope: !2461)
!2614 = !DILocation(line: 1098, column: 6, scope: !2461)
!2615 = !DILocation(line: 1098, column: 11, scope: !2461)
!2616 = !DILocation(line: 1100, column: 25, scope: !2461)
!2617 = !DILocation(line: 1100, column: 5, scope: !2461)
!2618 = !DILocation(line: 1102, column: 1, scope: !2461)
!2619 = !DILocation(line: 1101, column: 5, scope: !2461)
!2620 = !DISubprogram(name: "yasm_symrec_get_name", scope: !182, file: !182, line: 258, type: !2621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!206, !2623}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!2625 = !DISubprogram(name: "yasm_symrec_get_label", scope: !182, file: !182, line: 322, type: !2626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!290, !2623, !2628}
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_symrec_get_label_bytecodep", file: !182, line: 313, baseType: !302)
!2630 = distinct !DISubprogram(name: "cv8_add_sym_label", scope: !2, file: !2, line: 303, type: !2631, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!690, !246, !406}
!2633 = !{!2634, !2635, !2636, !2637}
!2634 = !DILocalVariable(name: "sect", arg: 1, scope: !2630, file: !2, line: 303, type: !246)
!2635 = !DILocalVariable(name: "sym", arg: 2, scope: !2630, file: !2, line: 303, type: !406)
!2636 = !DILocalVariable(name: "bc", scope: !2630, file: !2, line: 305, type: !302)
!2637 = !DILocalVariable(name: "cvs", scope: !2630, file: !2, line: 306, type: !690)
!2638 = !DILocation(line: 303, column: 33, scope: !2630)
!2639 = !DILocation(line: 303, column: 52, scope: !2630)
!2640 = !DILocation(line: 305, column: 5, scope: !2630)
!2641 = !DILocation(line: 305, column: 20, scope: !2630)
!2642 = !DILocation(line: 306, column: 5, scope: !2630)
!2643 = !DILocation(line: 306, column: 13, scope: !2630)
!2644 = !DILocation(line: 306, column: 19, scope: !2630)
!2645 = !DILocation(line: 307, column: 5, scope: !2630)
!2646 = !DILocation(line: 307, column: 10, scope: !2630)
!2647 = !DILocation(line: 307, column: 15, scope: !2630)
!2648 = !DILocation(line: 308, column: 5, scope: !2630)
!2649 = !DILocation(line: 308, column: 10, scope: !2630)
!2650 = !DILocation(line: 308, column: 17, scope: !2630)
!2651 = !DILocation(line: 309, column: 22, scope: !2630)
!2652 = !DILocation(line: 309, column: 5, scope: !2630)
!2653 = !DILocation(line: 309, column: 10, scope: !2630)
!2654 = !DILocation(line: 309, column: 20, scope: !2630)
!2655 = !DILocation(line: 310, column: 5, scope: !2630)
!2656 = !DILocation(line: 310, column: 10, scope: !2630)
!2657 = !DILocation(line: 310, column: 20, scope: !2630)
!2658 = !DILocation(line: 311, column: 57, scope: !2630)
!2659 = !DILocation(line: 311, column: 36, scope: !2630)
!2660 = !DILocation(line: 311, column: 22, scope: !2630)
!2661 = !DILocation(line: 311, column: 5, scope: !2630)
!2662 = !DILocation(line: 311, column: 10, scope: !2630)
!2663 = !DILocation(line: 311, column: 20, scope: !2630)
!2664 = !DILocation(line: 313, column: 53, scope: !2630)
!2665 = !DILocation(line: 313, column: 10, scope: !2630)
!2666 = !DILocation(line: 313, column: 8, scope: !2630)
!2667 = !DILocation(line: 314, column: 27, scope: !2630)
!2668 = !DILocation(line: 314, column: 15, scope: !2630)
!2669 = !DILocation(line: 314, column: 5, scope: !2630)
!2670 = !DILocation(line: 314, column: 9, scope: !2630)
!2671 = !DILocation(line: 314, column: 13, scope: !2630)
!2672 = !DILocation(line: 315, column: 24, scope: !2630)
!2673 = !DILocation(line: 315, column: 30, scope: !2630)
!2674 = !DILocation(line: 315, column: 5, scope: !2630)
!2675 = !DILocation(line: 316, column: 12, scope: !2630)
!2676 = !DILocation(line: 317, column: 1, scope: !2630)
!2677 = !DILocation(line: 316, column: 5, scope: !2630)
!2678 = distinct !DISubprogram(name: "cv8_add_sym_data", scope: !2, file: !2, line: 320, type: !2679, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!690, !246, !288, !406, !290}
!2681 = !{!2682, !2683, !2684, !2685, !2686, !2687}
!2682 = !DILocalVariable(name: "sect", arg: 1, scope: !2678, file: !2, line: 320, type: !246)
!2683 = !DILocalVariable(name: "type", arg: 2, scope: !2678, file: !2, line: 320, type: !288)
!2684 = !DILocalVariable(name: "sym", arg: 3, scope: !2678, file: !2, line: 320, type: !406)
!2685 = !DILocalVariable(name: "is_global", arg: 4, scope: !2678, file: !2, line: 321, type: !290)
!2686 = !DILocalVariable(name: "bc", scope: !2678, file: !2, line: 323, type: !302)
!2687 = !DILocalVariable(name: "cvs", scope: !2678, file: !2, line: 324, type: !690)
!2688 = !DILocation(line: 320, column: 32, scope: !2678)
!2689 = !DILocation(line: 320, column: 52, scope: !2678)
!2690 = !DILocation(line: 320, column: 71, scope: !2678)
!2691 = !DILocation(line: 321, column: 22, scope: !2678)
!2692 = !DILocation(line: 323, column: 5, scope: !2678)
!2693 = !DILocation(line: 323, column: 20, scope: !2678)
!2694 = !DILocation(line: 324, column: 5, scope: !2678)
!2695 = !DILocation(line: 324, column: 13, scope: !2678)
!2696 = !DILocation(line: 324, column: 19, scope: !2678)
!2697 = !DILocation(line: 325, column: 17, scope: !2678)
!2698 = !DILocation(line: 325, column: 5, scope: !2678)
!2699 = !DILocation(line: 325, column: 10, scope: !2678)
!2700 = !DILocation(line: 325, column: 15, scope: !2678)
!2701 = !DILocation(line: 326, column: 5, scope: !2678)
!2702 = !DILocation(line: 326, column: 10, scope: !2678)
!2703 = !DILocation(line: 326, column: 17, scope: !2678)
!2704 = !DILocation(line: 327, column: 22, scope: !2678)
!2705 = !DILocation(line: 327, column: 5, scope: !2678)
!2706 = !DILocation(line: 327, column: 10, scope: !2678)
!2707 = !DILocation(line: 327, column: 20, scope: !2678)
!2708 = !DILocation(line: 328, column: 22, scope: !2678)
!2709 = !DILocation(line: 328, column: 5, scope: !2678)
!2710 = !DILocation(line: 328, column: 10, scope: !2678)
!2711 = !DILocation(line: 328, column: 20, scope: !2678)
!2712 = !DILocation(line: 329, column: 57, scope: !2678)
!2713 = !DILocation(line: 329, column: 36, scope: !2678)
!2714 = !DILocation(line: 329, column: 22, scope: !2678)
!2715 = !DILocation(line: 329, column: 5, scope: !2678)
!2716 = !DILocation(line: 329, column: 10, scope: !2678)
!2717 = !DILocation(line: 329, column: 20, scope: !2678)
!2718 = !DILocation(line: 331, column: 53, scope: !2678)
!2719 = !DILocation(line: 331, column: 10, scope: !2678)
!2720 = !DILocation(line: 331, column: 8, scope: !2678)
!2721 = !DILocation(line: 332, column: 27, scope: !2678)
!2722 = !DILocation(line: 332, column: 15, scope: !2678)
!2723 = !DILocation(line: 332, column: 5, scope: !2678)
!2724 = !DILocation(line: 332, column: 9, scope: !2678)
!2725 = !DILocation(line: 332, column: 13, scope: !2678)
!2726 = !DILocation(line: 333, column: 24, scope: !2678)
!2727 = !DILocation(line: 333, column: 30, scope: !2678)
!2728 = !DILocation(line: 333, column: 5, scope: !2678)
!2729 = !DILocation(line: 334, column: 12, scope: !2678)
!2730 = !DILocation(line: 335, column: 1, scope: !2678)
!2731 = !DILocation(line: 334, column: 5, scope: !2678)
!2732 = !DISubprogram(name: "yasm_symrec_get_visibility", scope: !182, file: !182, line: 274, type: !2733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!2735, !2623}
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_sym_vis", file: !182, line: 58, baseType: !181)
!2736 = distinct !DISubprogram(name: "cv8_symhead_bc_destroy", scope: !2, file: !2, line: 703, type: !319, scopeLine: 704, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2737)
!2737 = !{!2738}
!2738 = !DILocalVariable(name: "contents", arg: 1, scope: !2736, file: !2, line: 703, type: !321)
!2739 = !DILocation(line: 703, column: 30, scope: !2736)
!2740 = !DILocation(line: 705, column: 5, scope: !2736)
!2741 = !DILocation(line: 705, column: 16, scope: !2736)
!2742 = !DILocation(line: 706, column: 1, scope: !2736)
!2743 = distinct !DISubprogram(name: "cv8_symhead_bc_print", scope: !2, file: !2, line: 709, type: !324, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2744)
!2744 = !{!2745, !2746, !2747}
!2745 = !DILocalVariable(name: "contents", arg: 1, scope: !2743, file: !2, line: 709, type: !326)
!2746 = !DILocalVariable(name: "f", arg: 2, scope: !2743, file: !2, line: 709, type: !328)
!2747 = !DILocalVariable(name: "indent_level", arg: 3, scope: !2743, file: !2, line: 709, type: !290)
!2748 = !DILocation(line: 709, column: 34, scope: !2743)
!2749 = !DILocation(line: 709, column: 50, scope: !2743)
!2750 = !DILocation(line: 709, column: 57, scope: !2743)
!2751 = !DILocation(line: 712, column: 1, scope: !2743)
!2752 = distinct !DISubprogram(name: "cv8_symhead_bc_calc_len", scope: !2, file: !2, line: 715, type: !393, scopeLine: 717, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2753)
!2753 = !{!2754, !2755, !2756}
!2754 = !DILocalVariable(name: "bc", arg: 1, scope: !2752, file: !2, line: 715, type: !302)
!2755 = !DILocalVariable(name: "add_span", arg: 2, scope: !2752, file: !2, line: 715, type: !395)
!2756 = !DILocalVariable(name: "add_span_data", arg: 3, scope: !2752, file: !2, line: 716, type: !321)
!2757 = !DILocation(line: 715, column: 40, scope: !2752)
!2758 = !DILocation(line: 715, column: 66, scope: !2752)
!2759 = !DILocation(line: 716, column: 31, scope: !2752)
!2760 = !DILocation(line: 718, column: 5, scope: !2752)
!2761 = !DILocation(line: 720, column: 5, scope: !2752)
!2762 = distinct !DISubprogram(name: "cv8_symhead_bc_tobytes", scope: !2, file: !2, line: 724, type: !426, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2763)
!2763 = !{!2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774}
!2764 = !DILocalVariable(name: "bc", arg: 1, scope: !2762, file: !2, line: 724, type: !302)
!2765 = !DILocalVariable(name: "bufp", arg: 2, scope: !2762, file: !2, line: 724, type: !428)
!2766 = !DILocalVariable(name: "bufstart", arg: 3, scope: !2762, file: !2, line: 725, type: !429)
!2767 = !DILocalVariable(name: "d", arg: 4, scope: !2762, file: !2, line: 725, type: !321)
!2768 = !DILocalVariable(name: "output_value", arg: 5, scope: !2762, file: !2, line: 726, type: !431)
!2769 = !DILocalVariable(name: "output_reloc", arg: 6, scope: !2762, file: !2, line: 727, type: !436)
!2770 = !DILocalVariable(name: "object", scope: !2762, file: !2, line: 729, type: !221)
!2771 = !DILocalVariable(name: "head", scope: !2762, file: !2, line: 730, type: !704)
!2772 = !DILocalVariable(name: "buf", scope: !2762, file: !2, line: 731, type: !429)
!2773 = !DILocalVariable(name: "intn", scope: !2762, file: !2, line: 732, type: !454)
!2774 = !DILocalVariable(name: "cval", scope: !2762, file: !2, line: 732, type: !454)
!2775 = !DILocation(line: 724, column: 39, scope: !2762)
!2776 = !DILocation(line: 724, column: 59, scope: !2762)
!2777 = !DILocation(line: 725, column: 39, scope: !2762)
!2778 = !DILocation(line: 725, column: 55, scope: !2762)
!2779 = !DILocation(line: 726, column: 47, scope: !2762)
!2780 = !DILocation(line: 727, column: 47, scope: !2762)
!2781 = !DILocation(line: 729, column: 5, scope: !2762)
!2782 = !DILocation(line: 729, column: 18, scope: !2762)
!2783 = !DILocation(line: 729, column: 51, scope: !2762)
!2784 = !DILocation(line: 729, column: 55, scope: !2762)
!2785 = !DILocation(line: 729, column: 27, scope: !2762)
!2786 = !DILocation(line: 730, column: 5, scope: !2762)
!2787 = !DILocation(line: 730, column: 18, scope: !2762)
!2788 = !DILocation(line: 730, column: 40, scope: !2762)
!2789 = !DILocation(line: 730, column: 44, scope: !2762)
!2790 = !DILocation(line: 731, column: 5, scope: !2762)
!2791 = !DILocation(line: 731, column: 20, scope: !2762)
!2792 = !DILocation(line: 731, column: 27, scope: !2762)
!2793 = !DILocation(line: 731, column: 26, scope: !2762)
!2794 = !DILocation(line: 732, column: 5, scope: !2762)
!2795 = !DILocation(line: 732, column: 18, scope: !2762)
!2796 = !DILocation(line: 732, column: 25, scope: !2762)
!2797 = !DILocation(line: 734, column: 12, scope: !2762)
!2798 = !DILocation(line: 734, column: 10, scope: !2762)
!2799 = !DILocation(line: 736, column: 9, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2762, file: !2, line: 736, column: 9)
!2801 = !DILocation(line: 736, column: 15, scope: !2800)
!2802 = !DILocation(line: 736, column: 9, scope: !2762)
!2803 = !DILocation(line: 737, column: 9, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2800, file: !2, line: 736, column: 22)
!2805 = !DILocation(line: 738, column: 13, scope: !2804)
!2806 = !DILocation(line: 739, column: 5, scope: !2804)
!2807 = !DILocation(line: 742, column: 26, scope: !2762)
!2808 = !DILocation(line: 742, column: 32, scope: !2762)
!2809 = !DILocation(line: 742, column: 38, scope: !2762)
!2810 = !DILocation(line: 742, column: 5, scope: !2762)
!2811 = !DILocation(line: 743, column: 5, scope: !2762)
!2812 = !DILocation(line: 744, column: 9, scope: !2762)
!2813 = !DILocation(line: 747, column: 26, scope: !2762)
!2814 = !DILocation(line: 747, column: 32, scope: !2762)
!2815 = !DILocation(line: 747, column: 36, scope: !2762)
!2816 = !DILocation(line: 747, column: 5, scope: !2762)
!2817 = !DILocation(line: 748, column: 30, scope: !2762)
!2818 = !DILocation(line: 748, column: 36, scope: !2762)
!2819 = !DILocation(line: 748, column: 50, scope: !2762)
!2820 = !DILocation(line: 748, column: 56, scope: !2762)
!2821 = !DILocation(line: 748, column: 12, scope: !2762)
!2822 = !DILocation(line: 748, column: 10, scope: !2762)
!2823 = !DILocation(line: 749, column: 22, scope: !2762)
!2824 = !DILocation(line: 749, column: 43, scope: !2762)
!2825 = !DILocation(line: 749, column: 5, scope: !2762)
!2826 = !DILocation(line: 750, column: 5, scope: !2762)
!2827 = !DILocation(line: 751, column: 9, scope: !2762)
!2828 = !DILocation(line: 752, column: 25, scope: !2762)
!2829 = !DILocation(line: 752, column: 5, scope: !2762)
!2830 = !DILocation(line: 754, column: 13, scope: !2762)
!2831 = !DILocation(line: 754, column: 6, scope: !2762)
!2832 = !DILocation(line: 754, column: 11, scope: !2762)
!2833 = !DILocation(line: 756, column: 25, scope: !2762)
!2834 = !DILocation(line: 756, column: 5, scope: !2762)
!2835 = !DILocation(line: 758, column: 1, scope: !2762)
!2836 = !DILocation(line: 757, column: 5, scope: !2762)
!2837 = !DISubprogram(name: "yasm_intnum_calc", scope: !1270, file: !1270, line: 149, type: !2838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!290, !454, !286, !454}
!2840 = distinct !DISubprogram(name: "cv8_fileinfo_bc_destroy", scope: !2, file: !2, line: 777, type: !319, scopeLine: 778, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2841)
!2841 = !{!2842}
!2842 = !DILocalVariable(name: "contents", arg: 1, scope: !2840, file: !2, line: 777, type: !321)
!2843 = !DILocation(line: 777, column: 31, scope: !2840)
!2844 = !DILocation(line: 779, column: 5, scope: !2840)
!2845 = !DILocation(line: 779, column: 16, scope: !2840)
!2846 = !DILocation(line: 780, column: 1, scope: !2840)
!2847 = distinct !DISubprogram(name: "cv8_fileinfo_bc_print", scope: !2, file: !2, line: 783, type: !324, scopeLine: 784, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2848)
!2848 = !{!2849, !2850, !2851}
!2849 = !DILocalVariable(name: "contents", arg: 1, scope: !2847, file: !2, line: 783, type: !326)
!2850 = !DILocalVariable(name: "f", arg: 2, scope: !2847, file: !2, line: 783, type: !328)
!2851 = !DILocalVariable(name: "indent_level", arg: 3, scope: !2847, file: !2, line: 783, type: !290)
!2852 = !DILocation(line: 783, column: 35, scope: !2847)
!2853 = !DILocation(line: 783, column: 51, scope: !2847)
!2854 = !DILocation(line: 783, column: 58, scope: !2847)
!2855 = !DILocation(line: 786, column: 1, scope: !2847)
!2856 = distinct !DISubprogram(name: "cv8_fileinfo_bc_calc_len", scope: !2, file: !2, line: 789, type: !393, scopeLine: 791, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2857)
!2857 = !{!2858, !2859, !2860}
!2858 = !DILocalVariable(name: "bc", arg: 1, scope: !2856, file: !2, line: 789, type: !302)
!2859 = !DILocalVariable(name: "add_span", arg: 2, scope: !2856, file: !2, line: 789, type: !395)
!2860 = !DILocalVariable(name: "add_span_data", arg: 3, scope: !2856, file: !2, line: 790, type: !321)
!2861 = !DILocation(line: 789, column: 41, scope: !2856)
!2862 = !DILocation(line: 789, column: 67, scope: !2856)
!2863 = !DILocation(line: 790, column: 32, scope: !2856)
!2864 = !DILocation(line: 792, column: 5, scope: !2856)
!2865 = !DILocation(line: 794, column: 5, scope: !2856)
!2866 = distinct !DISubprogram(name: "cv8_fileinfo_bc_tobytes", scope: !2, file: !2, line: 798, type: !426, scopeLine: 802, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2867)
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878}
!2868 = !DILocalVariable(name: "bc", arg: 1, scope: !2866, file: !2, line: 798, type: !302)
!2869 = !DILocalVariable(name: "bufp", arg: 2, scope: !2866, file: !2, line: 798, type: !428)
!2870 = !DILocalVariable(name: "bufstart", arg: 3, scope: !2866, file: !2, line: 799, type: !429)
!2871 = !DILocalVariable(name: "d", arg: 4, scope: !2866, file: !2, line: 799, type: !321)
!2872 = !DILocalVariable(name: "output_value", arg: 5, scope: !2866, file: !2, line: 800, type: !431)
!2873 = !DILocalVariable(name: "output_reloc", arg: 6, scope: !2866, file: !2, line: 801, type: !436)
!2874 = !DILocalVariable(name: "object", scope: !2866, file: !2, line: 803, type: !221)
!2875 = !DILocalVariable(name: "fi", scope: !2866, file: !2, line: 804, type: !712)
!2876 = !DILocalVariable(name: "buf", scope: !2866, file: !2, line: 805, type: !429)
!2877 = !DILocalVariable(name: "cval", scope: !2866, file: !2, line: 806, type: !454)
!2878 = !DILocalVariable(name: "i", scope: !2866, file: !2, line: 807, type: !290)
!2879 = !DILocation(line: 798, column: 40, scope: !2866)
!2880 = !DILocation(line: 798, column: 60, scope: !2866)
!2881 = !DILocation(line: 799, column: 40, scope: !2866)
!2882 = !DILocation(line: 799, column: 56, scope: !2866)
!2883 = !DILocation(line: 800, column: 48, scope: !2866)
!2884 = !DILocation(line: 801, column: 48, scope: !2866)
!2885 = !DILocation(line: 803, column: 5, scope: !2866)
!2886 = !DILocation(line: 803, column: 18, scope: !2866)
!2887 = !DILocation(line: 803, column: 51, scope: !2866)
!2888 = !DILocation(line: 803, column: 55, scope: !2866)
!2889 = !DILocation(line: 803, column: 27, scope: !2866)
!2890 = !DILocation(line: 804, column: 5, scope: !2866)
!2891 = !DILocation(line: 804, column: 19, scope: !2866)
!2892 = !DILocation(line: 804, column: 40, scope: !2866)
!2893 = !DILocation(line: 804, column: 44, scope: !2866)
!2894 = !DILocation(line: 805, column: 5, scope: !2866)
!2895 = !DILocation(line: 805, column: 20, scope: !2866)
!2896 = !DILocation(line: 805, column: 27, scope: !2866)
!2897 = !DILocation(line: 805, column: 26, scope: !2866)
!2898 = !DILocation(line: 806, column: 5, scope: !2866)
!2899 = !DILocation(line: 806, column: 18, scope: !2866)
!2900 = !DILocation(line: 807, column: 5, scope: !2866)
!2901 = !DILocation(line: 807, column: 9, scope: !2866)
!2902 = !DILocation(line: 810, column: 36, scope: !2866)
!2903 = !DILocation(line: 810, column: 40, scope: !2866)
!2904 = !DILocation(line: 810, column: 44, scope: !2866)
!2905 = !DILocation(line: 810, column: 12, scope: !2866)
!2906 = !DILocation(line: 810, column: 10, scope: !2866)
!2907 = !DILocation(line: 811, column: 5, scope: !2866)
!2908 = !DILocation(line: 812, column: 9, scope: !2866)
!2909 = !DILocation(line: 815, column: 26, scope: !2866)
!2910 = !DILocation(line: 815, column: 5, scope: !2866)
!2911 = !DILocation(line: 816, column: 5, scope: !2866)
!2912 = !DILocation(line: 817, column: 9, scope: !2866)
!2913 = !DILocation(line: 820, column: 11, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2866, file: !2, line: 820, column: 5)
!2915 = !DILocation(line: 820, column: 10, scope: !2914)
!2916 = !DILocation(line: 820, column: 15, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2914, file: !2, line: 820, column: 5)
!2918 = !DILocation(line: 820, column: 16, scope: !2917)
!2919 = !DILocation(line: 820, column: 5, scope: !2914)
!2920 = !DILocation(line: 821, column: 9, scope: !2917)
!2921 = !DILocation(line: 820, column: 22, scope: !2917)
!2922 = !DILocation(line: 820, column: 5, scope: !2917)
!2923 = distinct !{!2923, !2919, !2924, !958}
!2924 = !DILocation(line: 821, column: 9, scope: !2914)
!2925 = !DILocation(line: 824, column: 5, scope: !2866)
!2926 = !DILocation(line: 825, column: 5, scope: !2866)
!2927 = !DILocation(line: 827, column: 13, scope: !2866)
!2928 = !DILocation(line: 827, column: 6, scope: !2866)
!2929 = !DILocation(line: 827, column: 11, scope: !2866)
!2930 = !DILocation(line: 829, column: 25, scope: !2866)
!2931 = !DILocation(line: 829, column: 5, scope: !2866)
!2932 = !DILocation(line: 831, column: 1, scope: !2866)
!2933 = !DILocation(line: 830, column: 5, scope: !2866)
