; ModuleID = 'samples/549.bc'
source_filename = "mod_session_dbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command_struct = type { ptr, %union.cmd_func, ptr, i32, i32, ptr }
%union.cmd_func = type { ptr }
%struct.module_struct = type { i32, i32, i32, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.session_dbd_dir_conf = type { ptr, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.cmd_parms_struct = type { ptr, i32, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ap_directive_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.request_rec = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i64, ptr, i32, i32, ptr, i64, ptr, ptr, i64, i64, i64, ptr, i64, i32, i32, i32, i32, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.apr_uri_t, %struct.apr_finfo_t, ptr, ptr, ptr, ptr, ptr, i32, i64 }
%struct.apr_uri_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8 }
%struct.apr_finfo_t = type { ptr, i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.session_rec = type { ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32 }
%struct.ap_dbd_t = type { ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [18 x i8] c"mod_session_dbd.c\00", align 1, !dbg !0
@session_dbd_cmds = internal constant [9 x %struct.command_struct] [%struct.command_struct { ptr @.str.5, %union.cmd_func { ptr @ap_set_string_slot }, ptr inttoptr (i64 64 to ptr), i32 136, i32 1, ptr @.str.6 }, %struct.command_struct { ptr @.str.7, %union.cmd_func { ptr @ap_set_string_slot }, ptr inttoptr (i64 72 to ptr), i32 136, i32 1, ptr @.str.8 }, %struct.command_struct { ptr @.str.9, %union.cmd_func { ptr @ap_set_string_slot }, ptr inttoptr (i64 80 to ptr), i32 136, i32 1, ptr @.str.10 }, %struct.command_struct { ptr @.str.11, %union.cmd_func { ptr @ap_set_string_slot }, ptr inttoptr (i64 88 to ptr), i32 136, i32 1, ptr @.str.12 }, %struct.command_struct { ptr @.str.13, %union.cmd_func { ptr @set_dbd_peruser }, ptr null, i32 136, i32 5, ptr @.str.14 }, %struct.command_struct { ptr @.str.15, %union.cmd_func { ptr @set_dbd_cookie_remove }, ptr null, i32 136, i32 5, ptr @.str.16 }, %struct.command_struct { ptr @.str.17, %union.cmd_func { ptr @set_cookie_name }, ptr null, i32 136, i32 0, ptr @.str.18 }, %struct.command_struct { ptr @.str.19, %union.cmd_func { ptr @set_cookie_name2 }, ptr null, i32 136, i32 0, ptr @.str.20 }, %struct.command_struct zeroinitializer], align 16, !dbg !7
@session_dbd_module = global %struct.module_struct { i32 20120211, i32 126, i32 -1, ptr @.str, ptr null, ptr null, i64 1095774772, ptr null, ptr @create_session_dbd_dir_config, ptr @merge_session_dbd_dir_config, ptr null, ptr null, ptr @session_dbd_cmds, ptr @register_hooks, i32 0 }, align 8, !dbg !630
@.str.1 = private unnamed_addr constant [14 x i8] c"selectsession\00", align 1, !dbg !763
@.str.2 = private unnamed_addr constant [14 x i8] c"insertsession\00", align 1, !dbg !768
@.str.3 = private unnamed_addr constant [14 x i8] c"updatesession\00", align 1, !dbg !770
@.str.4 = private unnamed_addr constant [14 x i8] c"deletesession\00", align 1, !dbg !772
@.str.5 = private unnamed_addr constant [22 x i8] c"SessionDBDSelectLabel\00", align 1, !dbg !774
@.str.6 = private unnamed_addr constant [41 x i8] c"Query label used to select a new session\00", align 1, !dbg !779
@.str.7 = private unnamed_addr constant [22 x i8] c"SessionDBDInsertLabel\00", align 1, !dbg !784
@.str.8 = private unnamed_addr constant [41 x i8] c"Query label used to insert a new session\00", align 1, !dbg !786
@.str.9 = private unnamed_addr constant [22 x i8] c"SessionDBDUpdateLabel\00", align 1, !dbg !788
@.str.10 = private unnamed_addr constant [47 x i8] c"Query label used to update an existing session\00", align 1, !dbg !790
@.str.11 = private unnamed_addr constant [22 x i8] c"SessionDBDDeleteLabel\00", align 1, !dbg !795
@.str.12 = private unnamed_addr constant [47 x i8] c"Query label used to delete an existing session\00", align 1, !dbg !797
@.str.13 = private unnamed_addr constant [18 x i8] c"SessionDBDPerUser\00", align 1, !dbg !799
@.str.14 = private unnamed_addr constant [26 x i8] c"Save the session per user\00", align 1, !dbg !801
@.str.15 = private unnamed_addr constant [23 x i8] c"SessionDBDCookieRemove\00", align 1, !dbg !806
@.str.16 = private unnamed_addr constant [61 x i8] c"Remove the session cookie after session load. On by default.\00", align 1, !dbg !811
@.str.17 = private unnamed_addr constant [21 x i8] c"SessionDBDCookieName\00", align 1, !dbg !816
@.str.18 = private unnamed_addr constant [56 x i8] c"The name of the RFC2109 cookie carrying the session key\00", align 1, !dbg !821
@.str.19 = private unnamed_addr constant [22 x i8] c"SessionDBDCookieName2\00", align 1, !dbg !826
@.str.20 = private unnamed_addr constant [56 x i8] c"The name of the RFC2965 cookie carrying the session key\00", align 1, !dbg !828
@.str.21 = private unnamed_addr constant [3 x i8] c" \09\00", align 1, !dbg !830
@.str.22 = private unnamed_addr constant [46 x i8] c" cannot be empty, or contain '=', ';' or '&'.\00", align 1, !dbg !835
@.str.23 = private unnamed_addr constant [16 x i8] c"mod_session_dbd\00", align 1, !dbg !840
@.str.24 = private unnamed_addr constant [14 x i8] c"Cache-Control\00", align 1, !dbg !843
@.str.25 = private unnamed_addr constant [18 x i8] c"no-cache, private\00", align 1, !dbg !845
@.str.26 = private unnamed_addr constant [53 x i8] c"AH01853: no SessionDBDselectlabel has been specified\00", align 1, !dbg !852
@.str.27 = private unnamed_addr constant [84 x i8] c"AH01854: query execution error saving session '%s' in database using query '%s': %s\00", align 1, !dbg !857
@.str.28 = private unnamed_addr constant [85 x i8] c"AH01855: error retrieving results while saving '%s' in database using query '%s': %s\00", align 1, !dbg !862
@session_dbd_prepare_fn = internal global ptr null, align 8, !dbg !883
@session_dbd_acquire_fn = internal global ptr null, align 8, !dbg !886
@.str.29 = private unnamed_addr constant [15 x i8] c"ap_dbd_prepare\00", align 1, !dbg !867
@.str.30 = private unnamed_addr constant [15 x i8] c"ap_dbd_acquire\00", align 1, !dbg !872
@.str.31 = private unnamed_addr constant [59 x i8] c"AH01850: You must load mod_dbd to enable AuthDBD functions\00", align 1, !dbg !874
@.str.32 = private unnamed_addr constant [47 x i8] c"AH01851: failed to acquire database connection\00", align 1, !dbg !879
@.str.33 = private unnamed_addr constant [59 x i8] c"AH01852: failed to find the prepared statement called '%s'\00", align 1, !dbg !881
@.str.34 = private unnamed_addr constant [90 x i8] c"AH01865: peruser sessions can only be saved if a user is logged in, session not saved: %s\00", align 1, !dbg !889
@.str.35 = private unnamed_addr constant [53 x i8] c"AH01856: no SessionDBDupdatelabel has been specified\00", align 1, !dbg !894
@.str.36 = private unnamed_addr constant [86 x i8] c"AH01857: query execution error updating session '%s' using database query '%s': %s/%s\00", align 1, !dbg !896
@.str.37 = private unnamed_addr constant [53 x i8] c"AH01858: no SessionDBDinsertlabel has been specified\00", align 1, !dbg !901
@.str.38 = private unnamed_addr constant [80 x i8] c"AH01859: query execution error inserting session '%s' in database with '%s': %s\00", align 1, !dbg !903
@.str.39 = private unnamed_addr constant [124 x i8] c"AH01860: the session insert query did not cause any rows to be added to the database for session '%s', session not inserted\00", align 1, !dbg !908
@.str.40 = private unnamed_addr constant [53 x i8] c"AH01862: no SessionDBDdeletelabel has been specified\00", align 1, !dbg !913
@.str.41 = private unnamed_addr constant [67 x i8] c"AH01864: query execution error removing session '%s' from database\00", align 1, !dbg !915

; Function Attrs: nounwind uwtable
define internal ptr @create_session_dbd_dir_config(ptr noundef %p, ptr noundef %dummy) #0 !dbg !929 {
entry:
  %p.addr = alloca ptr, align 8
  %dummy.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !931, metadata !DIExpression()), !dbg !938
  store ptr %dummy, ptr %dummy.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %dummy.addr, metadata !932, metadata !DIExpression()), !dbg !939
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #6, !dbg !940
  tail call void @llvm.dbg.declare(metadata ptr %new, metadata !933, metadata !DIExpression()), !dbg !941
  %0 = load ptr, ptr %p.addr, align 8, !dbg !942, !tbaa !934
  %call = call ptr @apr_palloc(ptr noundef %0, i64 noundef 96), !dbg !942
  call void @llvm.memset.p0.i64(ptr align 1 %call, i8 0, i64 96, i1 false), !dbg !942
  store ptr %call, ptr %new, align 8, !dbg !941, !tbaa !934
  %1 = load ptr, ptr %new, align 8, !dbg !943, !tbaa !934
  %remove = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %1, i32 0, i32 8, !dbg !944
  store i32 1, ptr %remove, align 8, !dbg !945, !tbaa !946
  %2 = load ptr, ptr %new, align 8, !dbg !949, !tbaa !934
  %selectlabel = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %2, i32 0, i32 10, !dbg !950
  store ptr @.str.1, ptr %selectlabel, align 8, !dbg !951, !tbaa !952
  %3 = load ptr, ptr %new, align 8, !dbg !953, !tbaa !934
  %insertlabel = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %3, i32 0, i32 11, !dbg !954
  store ptr @.str.2, ptr %insertlabel, align 8, !dbg !955, !tbaa !956
  %4 = load ptr, ptr %new, align 8, !dbg !957, !tbaa !934
  %updatelabel = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %4, i32 0, i32 12, !dbg !958
  store ptr @.str.3, ptr %updatelabel, align 8, !dbg !959, !tbaa !960
  %5 = load ptr, ptr %new, align 8, !dbg !961, !tbaa !934
  %deletelabel = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %5, i32 0, i32 13, !dbg !962
  store ptr @.str.4, ptr %deletelabel, align 8, !dbg !963, !tbaa !964
  %6 = load ptr, ptr %new, align 8, !dbg !965, !tbaa !934
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #6, !dbg !966
  ret ptr %6, !dbg !967
}

; Function Attrs: nounwind uwtable
define internal ptr @merge_session_dbd_dir_config(ptr noundef %p, ptr noundef %basev, ptr noundef %addv) #0 !dbg !968 {
entry:
  %p.addr = alloca ptr, align 8
  %basev.addr = alloca ptr, align 8
  %addv.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  %add = alloca ptr, align 8
  %base = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !970, metadata !DIExpression()), !dbg !976
  store ptr %basev, ptr %basev.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %basev.addr, metadata !971, metadata !DIExpression()), !dbg !977
  store ptr %addv, ptr %addv.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %addv.addr, metadata !972, metadata !DIExpression()), !dbg !978
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #6, !dbg !979
  tail call void @llvm.dbg.declare(metadata ptr %new, metadata !973, metadata !DIExpression()), !dbg !980
  %0 = load ptr, ptr %p.addr, align 8, !dbg !981, !tbaa !934
  %call = call ptr @apr_palloc(ptr noundef %0, i64 noundef 96), !dbg !981
  call void @llvm.memset.p0.i64(ptr align 1 %call, i8 0, i64 96, i1 false), !dbg !981
  store ptr %call, ptr %new, align 8, !dbg !980, !tbaa !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %add) #6, !dbg !982
  tail call void @llvm.dbg.declare(metadata ptr %add, metadata !974, metadata !DIExpression()), !dbg !983
  %1 = load ptr, ptr %addv.addr, align 8, !dbg !984, !tbaa !934
  store ptr %1, ptr %add, align 8, !dbg !983, !tbaa !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #6, !dbg !985
  tail call void @llvm.dbg.declare(metadata ptr %base, metadata !975, metadata !DIExpression()), !dbg !986
  %2 = load ptr, ptr %basev.addr, align 8, !dbg !987, !tbaa !934
  store ptr %2, ptr %base, align 8, !dbg !986, !tbaa !934
  %3 = load ptr, ptr %add, align 8, !dbg !988, !tbaa !934
  %name_set = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %3, i32 0, i32 1, !dbg !989
  %4 = load i32, ptr %name_set, align 8, !dbg !989, !tbaa !990
  %cmp = icmp eq i32 %4, 0, !dbg !991
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !992

cond.true:                                        ; preds = %entry
  %5 = load ptr, ptr %base, align 8, !dbg !993, !tbaa !934
  %name = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %5, i32 0, i32 0, !dbg !994
  %6 = load ptr, ptr %name, align 8, !dbg !994, !tbaa !995
  br label %cond.end, !dbg !992

cond.false:                                       ; preds = %entry
  %7 = load ptr, ptr %add, align 8, !dbg !996, !tbaa !934
  %name1 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %7, i32 0, i32 0, !dbg !997
  %8 = load ptr, ptr %name1, align 8, !dbg !997, !tbaa !995
  br label %cond.end, !dbg !992

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ %8, %cond.false ], !dbg !992
  %9 = load ptr, ptr %new, align 8, !dbg !998, !tbaa !934
  %name2 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %9, i32 0, i32 0, !dbg !999
  store ptr %cond, ptr %name2, align 8, !dbg !1000, !tbaa !995
  %10 = load ptr, ptr %add, align 8, !dbg !1001, !tbaa !934
  %name_set3 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %10, i32 0, i32 1, !dbg !1002
  %11 = load i32, ptr %name_set3, align 8, !dbg !1002, !tbaa !990
  %cmp4 = icmp eq i32 %11, 0, !dbg !1003
  br i1 %cmp4, label %cond.true5, label %cond.false6, !dbg !1004

cond.true5:                                       ; preds = %cond.end
  %12 = load ptr, ptr %base, align 8, !dbg !1005, !tbaa !934
  %name_attrs = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %12, i32 0, i32 2, !dbg !1006
  %13 = load ptr, ptr %name_attrs, align 8, !dbg !1006, !tbaa !1007
  br label %cond.end8, !dbg !1004

cond.false6:                                      ; preds = %cond.end
  %14 = load ptr, ptr %add, align 8, !dbg !1008, !tbaa !934
  %name_attrs7 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %14, i32 0, i32 2, !dbg !1009
  %15 = load ptr, ptr %name_attrs7, align 8, !dbg !1009, !tbaa !1007
  br label %cond.end8, !dbg !1004

cond.end8:                                        ; preds = %cond.false6, %cond.true5
  %cond9 = phi ptr [ %13, %cond.true5 ], [ %15, %cond.false6 ], !dbg !1004
  %16 = load ptr, ptr %new, align 8, !dbg !1010, !tbaa !934
  %name_attrs10 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %16, i32 0, i32 2, !dbg !1011
  store ptr %cond9, ptr %name_attrs10, align 8, !dbg !1012, !tbaa !1007
  %17 = load ptr, ptr %add, align 8, !dbg !1013, !tbaa !934
  %name_set11 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %17, i32 0, i32 1, !dbg !1014
  %18 = load i32, ptr %name_set11, align 8, !dbg !1014, !tbaa !990
  %tobool = icmp ne i32 %18, 0, !dbg !1013
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1015

lor.rhs:                                          ; preds = %cond.end8
  %19 = load ptr, ptr %base, align 8, !dbg !1016, !tbaa !934
  %name_set12 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %19, i32 0, i32 1, !dbg !1017
  %20 = load i32, ptr %name_set12, align 8, !dbg !1017, !tbaa !990
  %tobool13 = icmp ne i32 %20, 0, !dbg !1015
  br label %lor.end, !dbg !1015

lor.end:                                          ; preds = %lor.rhs, %cond.end8
  %21 = phi i1 [ true, %cond.end8 ], [ %tobool13, %lor.rhs ]
  %lor.ext = zext i1 %21 to i32, !dbg !1015
  %22 = load ptr, ptr %new, align 8, !dbg !1018, !tbaa !934
  %name_set14 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %22, i32 0, i32 1, !dbg !1019
  store i32 %lor.ext, ptr %name_set14, align 8, !dbg !1020, !tbaa !990
  %23 = load ptr, ptr %add, align 8, !dbg !1021, !tbaa !934
  %name2_set = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %23, i32 0, i32 4, !dbg !1022
  %24 = load i32, ptr %name2_set, align 8, !dbg !1022, !tbaa !1023
  %cmp15 = icmp eq i32 %24, 0, !dbg !1024
  br i1 %cmp15, label %cond.true16, label %cond.false18, !dbg !1025

cond.true16:                                      ; preds = %lor.end
  %25 = load ptr, ptr %base, align 8, !dbg !1026, !tbaa !934
  %name217 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %25, i32 0, i32 3, !dbg !1027
  %26 = load ptr, ptr %name217, align 8, !dbg !1027, !tbaa !1028
  br label %cond.end20, !dbg !1025

cond.false18:                                     ; preds = %lor.end
  %27 = load ptr, ptr %add, align 8, !dbg !1029, !tbaa !934
  %name219 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %27, i32 0, i32 3, !dbg !1030
  %28 = load ptr, ptr %name219, align 8, !dbg !1030, !tbaa !1028
  br label %cond.end20, !dbg !1025

cond.end20:                                       ; preds = %cond.false18, %cond.true16
  %cond21 = phi ptr [ %26, %cond.true16 ], [ %28, %cond.false18 ], !dbg !1025
  %29 = load ptr, ptr %new, align 8, !dbg !1031, !tbaa !934
  %name222 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %29, i32 0, i32 3, !dbg !1032
  store ptr %cond21, ptr %name222, align 8, !dbg !1033, !tbaa !1028
  %30 = load ptr, ptr %add, align 8, !dbg !1034, !tbaa !934
  %name2_set23 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %30, i32 0, i32 4, !dbg !1035
  %31 = load i32, ptr %name2_set23, align 8, !dbg !1035, !tbaa !1023
  %cmp24 = icmp eq i32 %31, 0, !dbg !1036
  br i1 %cmp24, label %cond.true25, label %cond.false26, !dbg !1037

cond.true25:                                      ; preds = %cond.end20
  %32 = load ptr, ptr %base, align 8, !dbg !1038, !tbaa !934
  %name2_attrs = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %32, i32 0, i32 5, !dbg !1039
  %33 = load ptr, ptr %name2_attrs, align 8, !dbg !1039, !tbaa !1040
  br label %cond.end28, !dbg !1037

cond.false26:                                     ; preds = %cond.end20
  %34 = load ptr, ptr %add, align 8, !dbg !1041, !tbaa !934
  %name2_attrs27 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %34, i32 0, i32 5, !dbg !1042
  %35 = load ptr, ptr %name2_attrs27, align 8, !dbg !1042, !tbaa !1040
  br label %cond.end28, !dbg !1037

cond.end28:                                       ; preds = %cond.false26, %cond.true25
  %cond29 = phi ptr [ %33, %cond.true25 ], [ %35, %cond.false26 ], !dbg !1037
  %36 = load ptr, ptr %new, align 8, !dbg !1043, !tbaa !934
  %name2_attrs30 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %36, i32 0, i32 5, !dbg !1044
  store ptr %cond29, ptr %name2_attrs30, align 8, !dbg !1045, !tbaa !1040
  %37 = load ptr, ptr %add, align 8, !dbg !1046, !tbaa !934
  %name2_set31 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %37, i32 0, i32 4, !dbg !1047
  %38 = load i32, ptr %name2_set31, align 8, !dbg !1047, !tbaa !1023
  %tobool32 = icmp ne i32 %38, 0, !dbg !1046
  br i1 %tobool32, label %lor.end36, label %lor.rhs33, !dbg !1048

lor.rhs33:                                        ; preds = %cond.end28
  %39 = load ptr, ptr %base, align 8, !dbg !1049, !tbaa !934
  %name2_set34 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %39, i32 0, i32 4, !dbg !1050
  %40 = load i32, ptr %name2_set34, align 8, !dbg !1050, !tbaa !1023
  %tobool35 = icmp ne i32 %40, 0, !dbg !1048
  br label %lor.end36, !dbg !1048

lor.end36:                                        ; preds = %lor.rhs33, %cond.end28
  %41 = phi i1 [ true, %cond.end28 ], [ %tobool35, %lor.rhs33 ]
  %lor.ext37 = zext i1 %41 to i32, !dbg !1048
  %42 = load ptr, ptr %new, align 8, !dbg !1051, !tbaa !934
  %name2_set38 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %42, i32 0, i32 4, !dbg !1052
  store i32 %lor.ext37, ptr %name2_set38, align 8, !dbg !1053, !tbaa !1023
  %43 = load ptr, ptr %add, align 8, !dbg !1054, !tbaa !934
  %peruser_set = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %43, i32 0, i32 7, !dbg !1055
  %44 = load i32, ptr %peruser_set, align 4, !dbg !1055, !tbaa !1056
  %cmp39 = icmp eq i32 %44, 0, !dbg !1057
  br i1 %cmp39, label %cond.true40, label %cond.false41, !dbg !1058

cond.true40:                                      ; preds = %lor.end36
  %45 = load ptr, ptr %base, align 8, !dbg !1059, !tbaa !934
  %peruser = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %45, i32 0, i32 6, !dbg !1060
  %46 = load i32, ptr %peruser, align 8, !dbg !1060, !tbaa !1061
  br label %cond.end43, !dbg !1058

cond.false41:                                     ; preds = %lor.end36
  %47 = load ptr, ptr %add, align 8, !dbg !1062, !tbaa !934
  %peruser42 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %47, i32 0, i32 6, !dbg !1063
  %48 = load i32, ptr %peruser42, align 8, !dbg !1063, !tbaa !1061
  br label %cond.end43, !dbg !1058

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i32 [ %46, %cond.true40 ], [ %48, %cond.false41 ], !dbg !1058
  %49 = load ptr, ptr %new, align 8, !dbg !1064, !tbaa !934
  %peruser45 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %49, i32 0, i32 6, !dbg !1065
  store i32 %cond44, ptr %peruser45, align 8, !dbg !1066, !tbaa !1061
  %50 = load ptr, ptr %add, align 8, !dbg !1067, !tbaa !934
  %peruser_set46 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %50, i32 0, i32 7, !dbg !1068
  %51 = load i32, ptr %peruser_set46, align 4, !dbg !1068, !tbaa !1056
  %tobool47 = icmp ne i32 %51, 0, !dbg !1067
  br i1 %tobool47, label %lor.end51, label %lor.rhs48, !dbg !1069

lor.rhs48:                                        ; preds = %cond.end43
  %52 = load ptr, ptr %base, align 8, !dbg !1070, !tbaa !934
  %peruser_set49 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %52, i32 0, i32 7, !dbg !1071
  %53 = load i32, ptr %peruser_set49, align 4, !dbg !1071, !tbaa !1056
  %tobool50 = icmp ne i32 %53, 0, !dbg !1069
  br label %lor.end51, !dbg !1069

lor.end51:                                        ; preds = %lor.rhs48, %cond.end43
  %54 = phi i1 [ true, %cond.end43 ], [ %tobool50, %lor.rhs48 ]
  %lor.ext52 = zext i1 %54 to i32, !dbg !1069
  %55 = load ptr, ptr %new, align 8, !dbg !1072, !tbaa !934
  %peruser_set53 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %55, i32 0, i32 7, !dbg !1073
  store i32 %lor.ext52, ptr %peruser_set53, align 4, !dbg !1074, !tbaa !1056
  %56 = load ptr, ptr %add, align 8, !dbg !1075, !tbaa !934
  %remove_set = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %56, i32 0, i32 9, !dbg !1076
  %57 = load i32, ptr %remove_set, align 4, !dbg !1076, !tbaa !1077
  %cmp54 = icmp eq i32 %57, 0, !dbg !1078
  br i1 %cmp54, label %cond.true55, label %cond.false56, !dbg !1079

cond.true55:                                      ; preds = %lor.end51
  %58 = load ptr, ptr %base, align 8, !dbg !1080, !tbaa !934
  %remove = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %58, i32 0, i32 8, !dbg !1081
  %59 = load i32, ptr %remove, align 8, !dbg !1081, !tbaa !946
  br label %cond.end58, !dbg !1079

cond.false56:                                     ; preds = %lor.end51
  %60 = load ptr, ptr %add, align 8, !dbg !1082, !tbaa !934
  %remove57 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %60, i32 0, i32 8, !dbg !1083
  %61 = load i32, ptr %remove57, align 8, !dbg !1083, !tbaa !946
  br label %cond.end58, !dbg !1079

cond.end58:                                       ; preds = %cond.false56, %cond.true55
  %cond59 = phi i32 [ %59, %cond.true55 ], [ %61, %cond.false56 ], !dbg !1079
  %62 = load ptr, ptr %new, align 8, !dbg !1084, !tbaa !934
  %remove60 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %62, i32 0, i32 8, !dbg !1085
  store i32 %cond59, ptr %remove60, align 8, !dbg !1086, !tbaa !946
  %63 = load ptr, ptr %add, align 8, !dbg !1087, !tbaa !934
  %remove_set61 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %63, i32 0, i32 9, !dbg !1088
  %64 = load i32, ptr %remove_set61, align 4, !dbg !1088, !tbaa !1077
  %tobool62 = icmp ne i32 %64, 0, !dbg !1087
  br i1 %tobool62, label %lor.end66, label %lor.rhs63, !dbg !1089

lor.rhs63:                                        ; preds = %cond.end58
  %65 = load ptr, ptr %base, align 8, !dbg !1090, !tbaa !934
  %remove_set64 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %65, i32 0, i32 9, !dbg !1091
  %66 = load i32, ptr %remove_set64, align 4, !dbg !1091, !tbaa !1077
  %tobool65 = icmp ne i32 %66, 0, !dbg !1089
  br label %lor.end66, !dbg !1089

lor.end66:                                        ; preds = %lor.rhs63, %cond.end58
  %67 = phi i1 [ true, %cond.end58 ], [ %tobool65, %lor.rhs63 ]
  %lor.ext67 = zext i1 %67 to i32, !dbg !1089
  %68 = load ptr, ptr %new, align 8, !dbg !1092, !tbaa !934
  %remove_set68 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %68, i32 0, i32 9, !dbg !1093
  store i32 %lor.ext67, ptr %remove_set68, align 4, !dbg !1094, !tbaa !1077
  %69 = load ptr, ptr %add, align 8, !dbg !1095, !tbaa !934
  %selectlabel = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %69, i32 0, i32 10, !dbg !1096
  %70 = load ptr, ptr %selectlabel, align 8, !dbg !1096, !tbaa !952
  %tobool69 = icmp ne ptr %70, null, !dbg !1095
  br i1 %tobool69, label %cond.false72, label %cond.true70, !dbg !1097

cond.true70:                                      ; preds = %lor.end66
  %71 = load ptr, ptr %base, align 8, !dbg !1098, !tbaa !934
  %selectlabel71 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %71, i32 0, i32 10, !dbg !1099
  %72 = load ptr, ptr %selectlabel71, align 8, !dbg !1099, !tbaa !952
  br label %cond.end74, !dbg !1097

cond.false72:                                     ; preds = %lor.end66
  %73 = load ptr, ptr %add, align 8, !dbg !1100, !tbaa !934
  %selectlabel73 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %73, i32 0, i32 10, !dbg !1101
  %74 = load ptr, ptr %selectlabel73, align 8, !dbg !1101, !tbaa !952
  br label %cond.end74, !dbg !1097

cond.end74:                                       ; preds = %cond.false72, %cond.true70
  %cond75 = phi ptr [ %72, %cond.true70 ], [ %74, %cond.false72 ], !dbg !1097
  %75 = load ptr, ptr %new, align 8, !dbg !1102, !tbaa !934
  %selectlabel76 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %75, i32 0, i32 10, !dbg !1103
  store ptr %cond75, ptr %selectlabel76, align 8, !dbg !1104, !tbaa !952
  %76 = load ptr, ptr %add, align 8, !dbg !1105, !tbaa !934
  %updatelabel = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %76, i32 0, i32 12, !dbg !1106
  %77 = load ptr, ptr %updatelabel, align 8, !dbg !1106, !tbaa !960
  %tobool77 = icmp ne ptr %77, null, !dbg !1105
  br i1 %tobool77, label %cond.false80, label %cond.true78, !dbg !1107

cond.true78:                                      ; preds = %cond.end74
  %78 = load ptr, ptr %base, align 8, !dbg !1108, !tbaa !934
  %updatelabel79 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %78, i32 0, i32 12, !dbg !1109
  %79 = load ptr, ptr %updatelabel79, align 8, !dbg !1109, !tbaa !960
  br label %cond.end82, !dbg !1107

cond.false80:                                     ; preds = %cond.end74
  %80 = load ptr, ptr %add, align 8, !dbg !1110, !tbaa !934
  %updatelabel81 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %80, i32 0, i32 12, !dbg !1111
  %81 = load ptr, ptr %updatelabel81, align 8, !dbg !1111, !tbaa !960
  br label %cond.end82, !dbg !1107

cond.end82:                                       ; preds = %cond.false80, %cond.true78
  %cond83 = phi ptr [ %79, %cond.true78 ], [ %81, %cond.false80 ], !dbg !1107
  %82 = load ptr, ptr %new, align 8, !dbg !1112, !tbaa !934
  %updatelabel84 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %82, i32 0, i32 12, !dbg !1113
  store ptr %cond83, ptr %updatelabel84, align 8, !dbg !1114, !tbaa !960
  %83 = load ptr, ptr %add, align 8, !dbg !1115, !tbaa !934
  %insertlabel = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %83, i32 0, i32 11, !dbg !1116
  %84 = load ptr, ptr %insertlabel, align 8, !dbg !1116, !tbaa !956
  %tobool85 = icmp ne ptr %84, null, !dbg !1115
  br i1 %tobool85, label %cond.false88, label %cond.true86, !dbg !1117

cond.true86:                                      ; preds = %cond.end82
  %85 = load ptr, ptr %base, align 8, !dbg !1118, !tbaa !934
  %insertlabel87 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %85, i32 0, i32 11, !dbg !1119
  %86 = load ptr, ptr %insertlabel87, align 8, !dbg !1119, !tbaa !956
  br label %cond.end90, !dbg !1117

cond.false88:                                     ; preds = %cond.end82
  %87 = load ptr, ptr %add, align 8, !dbg !1120, !tbaa !934
  %insertlabel89 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %87, i32 0, i32 11, !dbg !1121
  %88 = load ptr, ptr %insertlabel89, align 8, !dbg !1121, !tbaa !956
  br label %cond.end90, !dbg !1117

cond.end90:                                       ; preds = %cond.false88, %cond.true86
  %cond91 = phi ptr [ %86, %cond.true86 ], [ %88, %cond.false88 ], !dbg !1117
  %89 = load ptr, ptr %new, align 8, !dbg !1122, !tbaa !934
  %insertlabel92 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %89, i32 0, i32 11, !dbg !1123
  store ptr %cond91, ptr %insertlabel92, align 8, !dbg !1124, !tbaa !956
  %90 = load ptr, ptr %add, align 8, !dbg !1125, !tbaa !934
  %deletelabel = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %90, i32 0, i32 13, !dbg !1126
  %91 = load ptr, ptr %deletelabel, align 8, !dbg !1126, !tbaa !964
  %tobool93 = icmp ne ptr %91, null, !dbg !1125
  br i1 %tobool93, label %cond.false96, label %cond.true94, !dbg !1127

cond.true94:                                      ; preds = %cond.end90
  %92 = load ptr, ptr %base, align 8, !dbg !1128, !tbaa !934
  %deletelabel95 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %92, i32 0, i32 13, !dbg !1129
  %93 = load ptr, ptr %deletelabel95, align 8, !dbg !1129, !tbaa !964
  br label %cond.end98, !dbg !1127

cond.false96:                                     ; preds = %cond.end90
  %94 = load ptr, ptr %add, align 8, !dbg !1130, !tbaa !934
  %deletelabel97 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %94, i32 0, i32 13, !dbg !1131
  %95 = load ptr, ptr %deletelabel97, align 8, !dbg !1131, !tbaa !964
  br label %cond.end98, !dbg !1127

cond.end98:                                       ; preds = %cond.false96, %cond.true94
  %cond99 = phi ptr [ %93, %cond.true94 ], [ %95, %cond.false96 ], !dbg !1127
  %96 = load ptr, ptr %new, align 8, !dbg !1132, !tbaa !934
  %deletelabel100 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %96, i32 0, i32 13, !dbg !1133
  store ptr %cond99, ptr %deletelabel100, align 8, !dbg !1134, !tbaa !964
  %97 = load ptr, ptr %new, align 8, !dbg !1135, !tbaa !934
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #6, !dbg !1136
  call void @llvm.lifetime.end.p0(i64 8, ptr %add) #6, !dbg !1136
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #6, !dbg !1136
  ret ptr %97, !dbg !1137
}

; Function Attrs: nounwind uwtable
define internal void @register_hooks(ptr noundef %p) #0 !dbg !1138 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1140, metadata !DIExpression()), !dbg !1141
  call void @ap_hook_session_load(ptr noundef @session_dbd_load, ptr noundef null, ptr noundef null, i32 noundef 10), !dbg !1142
  call void @ap_hook_session_save(ptr noundef @session_dbd_save, ptr noundef null, ptr noundef null, i32 noundef 10), !dbg !1143
  call void @ap_hook_monitor(ptr noundef @session_dbd_monitor, ptr noundef null, ptr noundef null, i32 noundef 10), !dbg !1144
  ret void, !dbg !1145
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !1146 ptr @apr_palloc(ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @ap_set_string_slot(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @set_dbd_peruser(ptr noundef %parms, ptr noundef %dconf, i32 noundef %flag) #0 !dbg !1149 {
entry:
  %parms.addr = alloca ptr, align 8
  %dconf.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  %conf = alloca ptr, align 8
  store ptr %parms, ptr %parms.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %parms.addr, metadata !1151, metadata !DIExpression()), !dbg !1155
  store ptr %dconf, ptr %dconf.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %dconf.addr, metadata !1152, metadata !DIExpression()), !dbg !1156
  store i32 %flag, ptr %flag.addr, align 4, !tbaa !1157
  tail call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !1153, metadata !DIExpression()), !dbg !1158
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #6, !dbg !1159
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !1154, metadata !DIExpression()), !dbg !1160
  %0 = load ptr, ptr %dconf.addr, align 8, !dbg !1161, !tbaa !934
  store ptr %0, ptr %conf, align 8, !dbg !1160, !tbaa !934
  %1 = load i32, ptr %flag.addr, align 4, !dbg !1162, !tbaa !1157
  %2 = load ptr, ptr %conf, align 8, !dbg !1163, !tbaa !934
  %peruser = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %2, i32 0, i32 6, !dbg !1164
  store i32 %1, ptr %peruser, align 8, !dbg !1165, !tbaa !1061
  %3 = load ptr, ptr %conf, align 8, !dbg !1166, !tbaa !934
  %peruser_set = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %3, i32 0, i32 7, !dbg !1167
  store i32 1, ptr %peruser_set, align 4, !dbg !1168, !tbaa !1056
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #6, !dbg !1169
  ret ptr null, !dbg !1170
}

; Function Attrs: nounwind uwtable
define internal ptr @set_dbd_cookie_remove(ptr noundef %parms, ptr noundef %dconf, i32 noundef %flag) #0 !dbg !1171 {
entry:
  %parms.addr = alloca ptr, align 8
  %dconf.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  %conf = alloca ptr, align 8
  store ptr %parms, ptr %parms.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %parms.addr, metadata !1173, metadata !DIExpression()), !dbg !1177
  store ptr %dconf, ptr %dconf.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %dconf.addr, metadata !1174, metadata !DIExpression()), !dbg !1178
  store i32 %flag, ptr %flag.addr, align 4, !tbaa !1157
  tail call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !1175, metadata !DIExpression()), !dbg !1179
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #6, !dbg !1180
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !1176, metadata !DIExpression()), !dbg !1181
  %0 = load ptr, ptr %dconf.addr, align 8, !dbg !1182, !tbaa !934
  store ptr %0, ptr %conf, align 8, !dbg !1181, !tbaa !934
  %1 = load i32, ptr %flag.addr, align 4, !dbg !1183, !tbaa !1157
  %2 = load ptr, ptr %conf, align 8, !dbg !1184, !tbaa !934
  %remove = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %2, i32 0, i32 8, !dbg !1185
  store i32 %1, ptr %remove, align 8, !dbg !1186, !tbaa !946
  %3 = load ptr, ptr %conf, align 8, !dbg !1187, !tbaa !934
  %remove_set = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %3, i32 0, i32 9, !dbg !1188
  store i32 1, ptr %remove_set, align 4, !dbg !1189, !tbaa !1077
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #6, !dbg !1190
  ret ptr null, !dbg !1191
}

; Function Attrs: nounwind uwtable
define internal ptr @set_cookie_name(ptr noundef %cmd, ptr noundef %config, ptr noundef %args) #0 !dbg !1192 {
entry:
  %cmd.addr = alloca ptr, align 8
  %config.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %last = alloca ptr, align 8
  %line = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %cookie = alloca ptr, align 8
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !1194, metadata !DIExpression()), !dbg !1201
  store ptr %config, ptr %config.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %config.addr, metadata !1195, metadata !DIExpression()), !dbg !1202
  store ptr %args, ptr %args.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !1196, metadata !DIExpression()), !dbg !1203
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #6, !dbg !1204
  tail call void @llvm.dbg.declare(metadata ptr %last, metadata !1197, metadata !DIExpression()), !dbg !1205
  call void @llvm.lifetime.start.p0(i64 8, ptr %line) #6, !dbg !1206
  tail call void @llvm.dbg.declare(metadata ptr %line, metadata !1198, metadata !DIExpression()), !dbg !1207
  %0 = load ptr, ptr %cmd.addr, align 8, !dbg !1208, !tbaa !934
  %pool = getelementptr inbounds %struct.cmd_parms_struct, ptr %0, i32 0, i32 9, !dbg !1209
  %1 = load ptr, ptr %pool, align 8, !dbg !1209, !tbaa !1210
  %2 = load ptr, ptr %args.addr, align 8, !dbg !1213, !tbaa !934
  %call = call ptr @apr_pstrdup(ptr noundef %1, ptr noundef %2), !dbg !1214
  store ptr %call, ptr %line, align 8, !dbg !1207, !tbaa !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #6, !dbg !1215
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !1199, metadata !DIExpression()), !dbg !1216
  %3 = load ptr, ptr %config.addr, align 8, !dbg !1217, !tbaa !934
  store ptr %3, ptr %conf, align 8, !dbg !1216, !tbaa !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %cookie) #6, !dbg !1218
  tail call void @llvm.dbg.declare(metadata ptr %cookie, metadata !1200, metadata !DIExpression()), !dbg !1219
  %4 = load ptr, ptr %line, align 8, !dbg !1220, !tbaa !934
  %call1 = call ptr @apr_strtok(ptr noundef %4, ptr noundef @.str.21, ptr noundef %last), !dbg !1221
  store ptr %call1, ptr %cookie, align 8, !dbg !1219, !tbaa !934
  %5 = load ptr, ptr %cookie, align 8, !dbg !1222, !tbaa !934
  %6 = load ptr, ptr %conf, align 8, !dbg !1223, !tbaa !934
  %name = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %6, i32 0, i32 0, !dbg !1224
  store ptr %5, ptr %name, align 8, !dbg !1225, !tbaa !995
  %7 = load ptr, ptr %conf, align 8, !dbg !1226, !tbaa !934
  %name_set = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %7, i32 0, i32 1, !dbg !1227
  store i32 1, ptr %name_set, align 8, !dbg !1228, !tbaa !990
  br label %while.cond, !dbg !1229

while.cond:                                       ; preds = %while.body, %entry
  %call2 = call ptr @__ctype_b_loc() #7, !dbg !1230
  %8 = load ptr, ptr %call2, align 8, !dbg !1230, !tbaa !934
  %9 = load ptr, ptr %last, align 8, !dbg !1230, !tbaa !934
  %10 = load i8, ptr %9, align 1, !dbg !1230, !tbaa !1231
  %conv = zext i8 %10 to i32, !dbg !1230
  %idxprom = sext i32 %conv to i64, !dbg !1230
  %arrayidx = getelementptr inbounds i16, ptr %8, i64 %idxprom, !dbg !1230
  %11 = load i16, ptr %arrayidx, align 2, !dbg !1230, !tbaa !1232
  %conv3 = zext i16 %11 to i32, !dbg !1230
  %and = and i32 %conv3, 8192, !dbg !1230
  %tobool = icmp ne i32 %and, 0, !dbg !1229
  br i1 %tobool, label %while.body, label %while.end, !dbg !1229

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %last, align 8, !dbg !1234, !tbaa !934
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1, !dbg !1234
  store ptr %incdec.ptr, ptr %last, align 8, !dbg !1234, !tbaa !934
  br label %while.cond, !dbg !1229, !llvm.loop !1236

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %last, align 8, !dbg !1239, !tbaa !934
  %14 = load ptr, ptr %conf, align 8, !dbg !1240, !tbaa !934
  %name_attrs = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %14, i32 0, i32 2, !dbg !1241
  store ptr %13, ptr %name_attrs, align 8, !dbg !1242, !tbaa !1007
  %15 = load ptr, ptr %cmd.addr, align 8, !dbg !1243, !tbaa !934
  %16 = load ptr, ptr %cookie, align 8, !dbg !1244, !tbaa !934
  %call4 = call ptr @check_string(ptr noundef %15, ptr noundef %16), !dbg !1245
  call void @llvm.lifetime.end.p0(i64 8, ptr %cookie) #6, !dbg !1246
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #6, !dbg !1246
  call void @llvm.lifetime.end.p0(i64 8, ptr %line) #6, !dbg !1246
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #6, !dbg !1246
  ret ptr %call4, !dbg !1247
}

; Function Attrs: nounwind uwtable
define internal ptr @set_cookie_name2(ptr noundef %cmd, ptr noundef %config, ptr noundef %args) #0 !dbg !1248 {
entry:
  %cmd.addr = alloca ptr, align 8
  %config.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %last = alloca ptr, align 8
  %line = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %cookie = alloca ptr, align 8
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !1250, metadata !DIExpression()), !dbg !1257
  store ptr %config, ptr %config.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %config.addr, metadata !1251, metadata !DIExpression()), !dbg !1258
  store ptr %args, ptr %args.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !1252, metadata !DIExpression()), !dbg !1259
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #6, !dbg !1260
  tail call void @llvm.dbg.declare(metadata ptr %last, metadata !1253, metadata !DIExpression()), !dbg !1261
  call void @llvm.lifetime.start.p0(i64 8, ptr %line) #6, !dbg !1262
  tail call void @llvm.dbg.declare(metadata ptr %line, metadata !1254, metadata !DIExpression()), !dbg !1263
  %0 = load ptr, ptr %cmd.addr, align 8, !dbg !1264, !tbaa !934
  %pool = getelementptr inbounds %struct.cmd_parms_struct, ptr %0, i32 0, i32 9, !dbg !1265
  %1 = load ptr, ptr %pool, align 8, !dbg !1265, !tbaa !1210
  %2 = load ptr, ptr %args.addr, align 8, !dbg !1266, !tbaa !934
  %call = call ptr @apr_pstrdup(ptr noundef %1, ptr noundef %2), !dbg !1267
  store ptr %call, ptr %line, align 8, !dbg !1263, !tbaa !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #6, !dbg !1268
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !1255, metadata !DIExpression()), !dbg !1269
  %3 = load ptr, ptr %config.addr, align 8, !dbg !1270, !tbaa !934
  store ptr %3, ptr %conf, align 8, !dbg !1269, !tbaa !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %cookie) #6, !dbg !1271
  tail call void @llvm.dbg.declare(metadata ptr %cookie, metadata !1256, metadata !DIExpression()), !dbg !1272
  %4 = load ptr, ptr %line, align 8, !dbg !1273, !tbaa !934
  %call1 = call ptr @apr_strtok(ptr noundef %4, ptr noundef @.str.21, ptr noundef %last), !dbg !1274
  store ptr %call1, ptr %cookie, align 8, !dbg !1272, !tbaa !934
  %5 = load ptr, ptr %cookie, align 8, !dbg !1275, !tbaa !934
  %6 = load ptr, ptr %conf, align 8, !dbg !1276, !tbaa !934
  %name2 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %6, i32 0, i32 3, !dbg !1277
  store ptr %5, ptr %name2, align 8, !dbg !1278, !tbaa !1028
  %7 = load ptr, ptr %conf, align 8, !dbg !1279, !tbaa !934
  %name2_set = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %7, i32 0, i32 4, !dbg !1280
  store i32 1, ptr %name2_set, align 8, !dbg !1281, !tbaa !1023
  br label %while.cond, !dbg !1282

while.cond:                                       ; preds = %while.body, %entry
  %call2 = call ptr @__ctype_b_loc() #7, !dbg !1283
  %8 = load ptr, ptr %call2, align 8, !dbg !1283, !tbaa !934
  %9 = load ptr, ptr %last, align 8, !dbg !1283, !tbaa !934
  %10 = load i8, ptr %9, align 1, !dbg !1283, !tbaa !1231
  %conv = zext i8 %10 to i32, !dbg !1283
  %idxprom = sext i32 %conv to i64, !dbg !1283
  %arrayidx = getelementptr inbounds i16, ptr %8, i64 %idxprom, !dbg !1283
  %11 = load i16, ptr %arrayidx, align 2, !dbg !1283, !tbaa !1232
  %conv3 = zext i16 %11 to i32, !dbg !1283
  %and = and i32 %conv3, 8192, !dbg !1283
  %tobool = icmp ne i32 %and, 0, !dbg !1282
  br i1 %tobool, label %while.body, label %while.end, !dbg !1282

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %last, align 8, !dbg !1284, !tbaa !934
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1, !dbg !1284
  store ptr %incdec.ptr, ptr %last, align 8, !dbg !1284, !tbaa !934
  br label %while.cond, !dbg !1282, !llvm.loop !1286

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %last, align 8, !dbg !1288, !tbaa !934
  %14 = load ptr, ptr %conf, align 8, !dbg !1289, !tbaa !934
  %name2_attrs = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %14, i32 0, i32 5, !dbg !1290
  store ptr %13, ptr %name2_attrs, align 8, !dbg !1291, !tbaa !1040
  %15 = load ptr, ptr %cmd.addr, align 8, !dbg !1292, !tbaa !934
  %16 = load ptr, ptr %cookie, align 8, !dbg !1293, !tbaa !934
  %call4 = call ptr @check_string(ptr noundef %15, ptr noundef %16), !dbg !1294
  call void @llvm.lifetime.end.p0(i64 8, ptr %cookie) #6, !dbg !1295
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #6, !dbg !1295
  call void @llvm.lifetime.end.p0(i64 8, ptr %line) #6, !dbg !1295
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #6, !dbg !1295
  ret ptr %call4, !dbg !1296
}

declare !dbg !1297 ptr @apr_pstrdup(ptr noundef, ptr noundef) #2

declare !dbg !1301 ptr @apr_strtok(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !1305 ptr @__ctype_b_loc() #4

; Function Attrs: nounwind uwtable
define internal ptr @check_string(ptr noundef %cmd, ptr noundef %string) #0 !dbg !1311 {
entry:
  %retval = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !1315, metadata !DIExpression()), !dbg !1317
  store ptr %string, ptr %string.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !1316, metadata !DIExpression()), !dbg !1318
  %0 = load ptr, ptr %string.addr, align 8, !dbg !1319, !tbaa !934
  %call = call i32 @ap_cookie_check_string(ptr noundef %0), !dbg !1321
  %cmp = icmp ne i32 0, %call, !dbg !1322
  br i1 %cmp, label %if.then, label %if.end, !dbg !1323

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cmd.addr, align 8, !dbg !1324, !tbaa !934
  %pool = getelementptr inbounds %struct.cmd_parms_struct, ptr %1, i32 0, i32 9, !dbg !1326
  %2 = load ptr, ptr %pool, align 8, !dbg !1326, !tbaa !1210
  %3 = load ptr, ptr %cmd.addr, align 8, !dbg !1327, !tbaa !934
  %directive = getelementptr inbounds %struct.cmd_parms_struct, ptr %3, i32 0, i32 8, !dbg !1328
  %4 = load ptr, ptr %directive, align 8, !dbg !1328, !tbaa !1329
  %directive1 = getelementptr inbounds %struct.ap_directive_t, ptr %4, i32 0, i32 0, !dbg !1330
  %5 = load ptr, ptr %directive1, align 8, !dbg !1330, !tbaa !1331
  %call2 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %2, ptr noundef %5, ptr noundef @.str.22, ptr noundef null), !dbg !1333
  store ptr %call2, ptr %retval, align 8, !dbg !1334
  br label %return, !dbg !1334

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1335
  br label %return, !dbg !1335

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8, !dbg !1336
  ret ptr %6, !dbg !1336
}

declare !dbg !1337 i32 @ap_cookie_check_string(ptr noundef) #2

declare !dbg !1341 ptr @apr_pstrcat(ptr noundef, ...) #2

declare !dbg !1344 void @ap_hook_session_load(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @session_dbd_load(ptr noundef %r, ptr noundef %z) #0 !dbg !1352 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %ret = alloca i32, align 4
  %zz = alloca ptr, align 8
  %name = alloca ptr, align 8
  %note = alloca ptr, align 8
  %val = alloca ptr, align 8
  %key = alloca ptr, align 8
  %m = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %uuid = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1354, metadata !DIExpression()), !dbg !1367
  store ptr %z, ptr %z.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %z.addr, metadata !1355, metadata !DIExpression()), !dbg !1368
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #6, !dbg !1369
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !1356, metadata !DIExpression()), !dbg !1370
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1371, !tbaa !934
  %per_dir_config = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 54, !dbg !1371
  %1 = load ptr, ptr %per_dir_config, align 8, !dbg !1371, !tbaa !1372
  %2 = load i32, ptr getelementptr inbounds (%struct.module_struct, ptr @session_dbd_module, i32 0, i32 2), align 8, !dbg !1371, !tbaa !1376
  %idxprom = sext i32 %2 to i64, !dbg !1371
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom, !dbg !1371
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1371, !tbaa !934
  store ptr %3, ptr %conf, align 8, !dbg !1370, !tbaa !934
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !1378
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1357, metadata !DIExpression()), !dbg !1379
  store i32 0, ptr %ret, align 4, !dbg !1379, !tbaa !1157
  call void @llvm.lifetime.start.p0(i64 8, ptr %zz) #6, !dbg !1380
  tail call void @llvm.dbg.declare(metadata ptr %zz, metadata !1358, metadata !DIExpression()), !dbg !1381
  store ptr null, ptr %zz, align 8, !dbg !1381, !tbaa !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #6, !dbg !1382
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !1359, metadata !DIExpression()), !dbg !1383
  store ptr null, ptr %name, align 8, !dbg !1383, !tbaa !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %note) #6, !dbg !1384
  tail call void @llvm.dbg.declare(metadata ptr %note, metadata !1360, metadata !DIExpression()), !dbg !1385
  store ptr null, ptr %note, align 8, !dbg !1385, !tbaa !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #6, !dbg !1386
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !1361, metadata !DIExpression()), !dbg !1387
  store ptr null, ptr %val, align 8, !dbg !1387, !tbaa !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #6, !dbg !1388
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !1362, metadata !DIExpression()), !dbg !1389
  store ptr null, ptr %key, align 8, !dbg !1389, !tbaa !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #6, !dbg !1390
  tail call void @llvm.dbg.declare(metadata ptr %m, metadata !1363, metadata !DIExpression()), !dbg !1391
  %4 = load ptr, ptr %r.addr, align 8, !dbg !1392, !tbaa !934
  %main = getelementptr inbounds %struct.request_rec, ptr %4, i32 0, i32 5, !dbg !1393
  %5 = load ptr, ptr %main, align 8, !dbg !1393, !tbaa !1394
  %tobool = icmp ne ptr %5, null, !dbg !1392
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1392

cond.true:                                        ; preds = %entry
  %6 = load ptr, ptr %r.addr, align 8, !dbg !1395, !tbaa !934
  %main1 = getelementptr inbounds %struct.request_rec, ptr %6, i32 0, i32 5, !dbg !1396
  %7 = load ptr, ptr %main1, align 8, !dbg !1396, !tbaa !1394
  br label %cond.end, !dbg !1392

cond.false:                                       ; preds = %entry
  %8 = load ptr, ptr %r.addr, align 8, !dbg !1397, !tbaa !934
  br label %cond.end, !dbg !1392

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ %8, %cond.false ], !dbg !1392
  store ptr %cond, ptr %m, align 8, !dbg !1391, !tbaa !934
  %9 = load ptr, ptr %conf, align 8, !dbg !1398, !tbaa !934
  %name2_set = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %9, i32 0, i32 4, !dbg !1400
  %10 = load i32, ptr %name2_set, align 8, !dbg !1400, !tbaa !1023
  %tobool2 = icmp ne i32 %10, 0, !dbg !1398
  br i1 %tobool2, label %if.then, label %if.else, !dbg !1401

if.then:                                          ; preds = %cond.end
  %11 = load ptr, ptr %conf, align 8, !dbg !1402, !tbaa !934
  %name2 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %11, i32 0, i32 3, !dbg !1404
  %12 = load ptr, ptr %name2, align 8, !dbg !1404, !tbaa !1028
  store ptr %12, ptr %name, align 8, !dbg !1405, !tbaa !934
  br label %if.end13, !dbg !1406

if.else:                                          ; preds = %cond.end
  %13 = load ptr, ptr %conf, align 8, !dbg !1407, !tbaa !934
  %name_set = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %13, i32 0, i32 1, !dbg !1409
  %14 = load i32, ptr %name_set, align 8, !dbg !1409, !tbaa !990
  %tobool3 = icmp ne i32 %14, 0, !dbg !1407
  br i1 %tobool3, label %if.then4, label %if.else6, !dbg !1410

if.then4:                                         ; preds = %if.else
  %15 = load ptr, ptr %conf, align 8, !dbg !1411, !tbaa !934
  %name5 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %15, i32 0, i32 0, !dbg !1413
  %16 = load ptr, ptr %name5, align 8, !dbg !1413, !tbaa !995
  store ptr %16, ptr %name, align 8, !dbg !1414, !tbaa !934
  br label %if.end12, !dbg !1415

if.else6:                                         ; preds = %if.else
  %17 = load ptr, ptr %conf, align 8, !dbg !1416, !tbaa !934
  %peruser_set = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %17, i32 0, i32 7, !dbg !1418
  %18 = load i32, ptr %peruser_set, align 4, !dbg !1418, !tbaa !1056
  %tobool7 = icmp ne i32 %18, 0, !dbg !1416
  br i1 %tobool7, label %land.lhs.true, label %if.else11, !dbg !1419

land.lhs.true:                                    ; preds = %if.else6
  %19 = load ptr, ptr %r.addr, align 8, !dbg !1420, !tbaa !934
  %user = getelementptr inbounds %struct.request_rec, ptr %19, i32 0, i32 44, !dbg !1421
  %20 = load ptr, ptr %user, align 8, !dbg !1421, !tbaa !1422
  %tobool8 = icmp ne ptr %20, null, !dbg !1420
  br i1 %tobool8, label %if.then9, label %if.else11, !dbg !1423

if.then9:                                         ; preds = %land.lhs.true
  %21 = load ptr, ptr %r.addr, align 8, !dbg !1424, !tbaa !934
  %user10 = getelementptr inbounds %struct.request_rec, ptr %21, i32 0, i32 44, !dbg !1426
  %22 = load ptr, ptr %user10, align 8, !dbg !1426, !tbaa !1422
  store ptr %22, ptr %name, align 8, !dbg !1427, !tbaa !934
  br label %if.end, !dbg !1428

if.else11:                                        ; preds = %land.lhs.true, %if.else6
  store i32 -1, ptr %retval, align 4, !dbg !1429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1429

if.end:                                           ; preds = %if.then9
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then4
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then
  %23 = load ptr, ptr %m, align 8, !dbg !1431, !tbaa !934
  %pool = getelementptr inbounds %struct.request_rec, ptr %23, i32 0, i32 0, !dbg !1432
  %24 = load ptr, ptr %pool, align 8, !dbg !1432, !tbaa !1433
  %25 = load ptr, ptr %name, align 8, !dbg !1434, !tbaa !934
  %call = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %24, ptr noundef @.str.23, ptr noundef %25, ptr noundef null), !dbg !1435
  store ptr %call, ptr %note, align 8, !dbg !1436, !tbaa !934
  %26 = load ptr, ptr %m, align 8, !dbg !1437, !tbaa !934
  %notes = getelementptr inbounds %struct.request_rec, ptr %26, i32 0, i32 38, !dbg !1438
  %27 = load ptr, ptr %notes, align 8, !dbg !1438, !tbaa !1439
  %28 = load ptr, ptr %note, align 8, !dbg !1440, !tbaa !934
  %call14 = call ptr @apr_table_get(ptr noundef %27, ptr noundef %28), !dbg !1441
  store ptr %call14, ptr %zz, align 8, !dbg !1442, !tbaa !934
  %29 = load ptr, ptr %zz, align 8, !dbg !1443, !tbaa !934
  %tobool15 = icmp ne ptr %29, null, !dbg !1443
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1445

if.then16:                                        ; preds = %if.end13
  %30 = load ptr, ptr %zz, align 8, !dbg !1446, !tbaa !934
  %31 = load ptr, ptr %z.addr, align 8, !dbg !1448, !tbaa !934
  store ptr %30, ptr %31, align 8, !dbg !1449, !tbaa !934
  store i32 0, ptr %retval, align 4, !dbg !1450
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1450

if.end17:                                         ; preds = %if.end13
  %32 = load ptr, ptr %conf, align 8, !dbg !1451, !tbaa !934
  %name_set18 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %32, i32 0, i32 1, !dbg !1453
  %33 = load i32, ptr %name_set18, align 8, !dbg !1453, !tbaa !990
  %tobool19 = icmp ne i32 %33, 0, !dbg !1451
  br i1 %tobool19, label %if.then22, label %lor.lhs.false, !dbg !1454

lor.lhs.false:                                    ; preds = %if.end17
  %34 = load ptr, ptr %conf, align 8, !dbg !1455, !tbaa !934
  %name2_set20 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %34, i32 0, i32 4, !dbg !1456
  %35 = load i32, ptr %name2_set20, align 8, !dbg !1456, !tbaa !1023
  %tobool21 = icmp ne i32 %35, 0, !dbg !1455
  br i1 %tobool21, label %if.then22, label %if.else31, !dbg !1457

if.then22:                                        ; preds = %lor.lhs.false, %if.end17
  %36 = load ptr, ptr %r.addr, align 8, !dbg !1458, !tbaa !934
  %37 = load ptr, ptr %name, align 8, !dbg !1460, !tbaa !934
  %38 = load ptr, ptr %conf, align 8, !dbg !1461, !tbaa !934
  %remove = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %38, i32 0, i32 8, !dbg !1462
  %39 = load i32, ptr %remove, align 8, !dbg !1462, !tbaa !946
  %call23 = call i32 @ap_cookie_read(ptr noundef %36, ptr noundef %37, ptr noundef %key, i32 noundef %39), !dbg !1463
  %40 = load ptr, ptr %key, align 8, !dbg !1464, !tbaa !934
  %tobool24 = icmp ne ptr %40, null, !dbg !1464
  br i1 %tobool24, label %if.then25, label %if.end30, !dbg !1466

if.then25:                                        ; preds = %if.then22
  %41 = load ptr, ptr %m, align 8, !dbg !1467, !tbaa !934
  %pool26 = getelementptr inbounds %struct.request_rec, ptr %41, i32 0, i32 0, !dbg !1469
  %42 = load ptr, ptr %pool26, align 8, !dbg !1469, !tbaa !1433
  %43 = load ptr, ptr %r.addr, align 8, !dbg !1470, !tbaa !934
  %44 = load ptr, ptr %key, align 8, !dbg !1471, !tbaa !934
  %call27 = call i32 @dbd_load(ptr noundef %42, ptr noundef %43, ptr noundef %44, ptr noundef %val), !dbg !1472
  store i32 %call27, ptr %ret, align 4, !dbg !1473, !tbaa !1157
  %45 = load i32, ptr %ret, align 4, !dbg !1474, !tbaa !1157
  %cmp = icmp ne i32 %45, 0, !dbg !1476
  br i1 %cmp, label %if.then28, label %if.end29, !dbg !1477

if.then28:                                        ; preds = %if.then25
  %46 = load i32, ptr %ret, align 4, !dbg !1478, !tbaa !1157
  store i32 %46, ptr %retval, align 4, !dbg !1480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1480

if.end29:                                         ; preds = %if.then25
  br label %if.end30, !dbg !1481

if.end30:                                         ; preds = %if.end29, %if.then22
  br label %if.end46, !dbg !1482

if.else31:                                        ; preds = %lor.lhs.false
  %47 = load ptr, ptr %conf, align 8, !dbg !1483, !tbaa !934
  %peruser = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %47, i32 0, i32 6, !dbg !1485
  %48 = load i32, ptr %peruser, align 8, !dbg !1485, !tbaa !1061
  %tobool32 = icmp ne i32 %48, 0, !dbg !1483
  br i1 %tobool32, label %if.then33, label %if.else44, !dbg !1486

if.then33:                                        ; preds = %if.else31
  %49 = load ptr, ptr %r.addr, align 8, !dbg !1487, !tbaa !934
  %user34 = getelementptr inbounds %struct.request_rec, ptr %49, i32 0, i32 44, !dbg !1490
  %50 = load ptr, ptr %user34, align 8, !dbg !1490, !tbaa !1422
  %tobool35 = icmp ne ptr %50, null, !dbg !1487
  br i1 %tobool35, label %if.then36, label %if.end43, !dbg !1491

if.then36:                                        ; preds = %if.then33
  %51 = load ptr, ptr %m, align 8, !dbg !1492, !tbaa !934
  %pool37 = getelementptr inbounds %struct.request_rec, ptr %51, i32 0, i32 0, !dbg !1494
  %52 = load ptr, ptr %pool37, align 8, !dbg !1494, !tbaa !1433
  %53 = load ptr, ptr %r.addr, align 8, !dbg !1495, !tbaa !934
  %54 = load ptr, ptr %r.addr, align 8, !dbg !1496, !tbaa !934
  %user38 = getelementptr inbounds %struct.request_rec, ptr %54, i32 0, i32 44, !dbg !1497
  %55 = load ptr, ptr %user38, align 8, !dbg !1497, !tbaa !1422
  %call39 = call i32 @dbd_load(ptr noundef %52, ptr noundef %53, ptr noundef %55, ptr noundef %val), !dbg !1498
  store i32 %call39, ptr %ret, align 4, !dbg !1499, !tbaa !1157
  %56 = load i32, ptr %ret, align 4, !dbg !1500, !tbaa !1157
  %cmp40 = icmp ne i32 %56, 0, !dbg !1502
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !1503

if.then41:                                        ; preds = %if.then36
  %57 = load i32, ptr %ret, align 4, !dbg !1504, !tbaa !1157
  store i32 %57, ptr %retval, align 4, !dbg !1506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1506

if.end42:                                         ; preds = %if.then36
  br label %if.end43, !dbg !1507

if.end43:                                         ; preds = %if.end42, %if.then33
  br label %if.end45, !dbg !1508

if.else44:                                        ; preds = %if.else31
  store i32 -1, ptr %retval, align 4, !dbg !1509
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1509

if.end45:                                         ; preds = %if.end43
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end30
  %58 = load ptr, ptr %m, align 8, !dbg !1511, !tbaa !934
  %pool47 = getelementptr inbounds %struct.request_rec, ptr %58, i32 0, i32 0, !dbg !1511
  %59 = load ptr, ptr %pool47, align 8, !dbg !1511, !tbaa !1433
  %call48 = call ptr @apr_palloc(ptr noundef %59, i64 noundef 72), !dbg !1511
  call void @llvm.memset.p0.i64(ptr align 1 %call48, i8 0, i64 72, i1 false), !dbg !1511
  store ptr %call48, ptr %zz, align 8, !dbg !1512, !tbaa !934
  %60 = load ptr, ptr %m, align 8, !dbg !1513, !tbaa !934
  %pool49 = getelementptr inbounds %struct.request_rec, ptr %60, i32 0, i32 0, !dbg !1514
  %61 = load ptr, ptr %pool49, align 8, !dbg !1514, !tbaa !1433
  %62 = load ptr, ptr %zz, align 8, !dbg !1515, !tbaa !934
  %pool50 = getelementptr inbounds %struct.session_rec, ptr %62, i32 0, i32 0, !dbg !1516
  store ptr %61, ptr %pool50, align 8, !dbg !1517, !tbaa !1518
  %63 = load ptr, ptr %zz, align 8, !dbg !1520, !tbaa !934
  %pool51 = getelementptr inbounds %struct.session_rec, ptr %63, i32 0, i32 0, !dbg !1521
  %64 = load ptr, ptr %pool51, align 8, !dbg !1521, !tbaa !1518
  %call52 = call ptr @apr_table_make(ptr noundef %64, i32 noundef 10), !dbg !1522
  %65 = load ptr, ptr %zz, align 8, !dbg !1523, !tbaa !934
  %entries = getelementptr inbounds %struct.session_rec, ptr %65, i32 0, i32 3, !dbg !1524
  store ptr %call52, ptr %entries, align 8, !dbg !1525, !tbaa !1526
  %66 = load ptr, ptr %key, align 8, !dbg !1527, !tbaa !934
  %tobool53 = icmp ne ptr %66, null, !dbg !1527
  br i1 %tobool53, label %land.lhs.true54, label %if.end64, !dbg !1528

land.lhs.true54:                                  ; preds = %if.end46
  %67 = load ptr, ptr %val, align 8, !dbg !1529, !tbaa !934
  %tobool55 = icmp ne ptr %67, null, !dbg !1529
  br i1 %tobool55, label %if.then56, label %if.end64, !dbg !1530

if.then56:                                        ; preds = %land.lhs.true54
  call void @llvm.lifetime.start.p0(i64 8, ptr %uuid) #6, !dbg !1531
  tail call void @llvm.dbg.declare(metadata ptr %uuid, metadata !1364, metadata !DIExpression()), !dbg !1532
  %68 = load ptr, ptr %zz, align 8, !dbg !1533, !tbaa !934
  %pool57 = getelementptr inbounds %struct.session_rec, ptr %68, i32 0, i32 0, !dbg !1533
  %69 = load ptr, ptr %pool57, align 8, !dbg !1533, !tbaa !1518
  %call58 = call ptr @apr_palloc(ptr noundef %69, i64 noundef 16), !dbg !1533
  call void @llvm.memset.p0.i64(ptr align 1 %call58, i8 0, i64 16, i1 false), !dbg !1533
  store ptr %call58, ptr %uuid, align 8, !dbg !1532, !tbaa !934
  %70 = load ptr, ptr %uuid, align 8, !dbg !1534, !tbaa !934
  %71 = load ptr, ptr %key, align 8, !dbg !1536, !tbaa !934
  %call59 = call i32 @apr_uuid_parse(ptr noundef %70, ptr noundef %71), !dbg !1537
  %cmp60 = icmp eq i32 0, %call59, !dbg !1538
  br i1 %cmp60, label %if.then61, label %if.end63, !dbg !1539

if.then61:                                        ; preds = %if.then56
  %72 = load ptr, ptr %uuid, align 8, !dbg !1540, !tbaa !934
  %73 = load ptr, ptr %zz, align 8, !dbg !1542, !tbaa !934
  %uuid62 = getelementptr inbounds %struct.session_rec, ptr %73, i32 0, i32 1, !dbg !1543
  store ptr %72, ptr %uuid62, align 8, !dbg !1544, !tbaa !1545
  br label %if.end63, !dbg !1546

if.end63:                                         ; preds = %if.then61, %if.then56
  call void @llvm.lifetime.end.p0(i64 8, ptr %uuid) #6, !dbg !1547
  br label %if.end64, !dbg !1548

if.end64:                                         ; preds = %if.end63, %land.lhs.true54, %if.end46
  %74 = load ptr, ptr %val, align 8, !dbg !1549, !tbaa !934
  %75 = load ptr, ptr %zz, align 8, !dbg !1550, !tbaa !934
  %encoded = getelementptr inbounds %struct.session_rec, ptr %75, i32 0, i32 4, !dbg !1551
  store ptr %74, ptr %encoded, align 8, !dbg !1552, !tbaa !1553
  %76 = load ptr, ptr %zz, align 8, !dbg !1554, !tbaa !934
  %77 = load ptr, ptr %z.addr, align 8, !dbg !1555, !tbaa !934
  store ptr %76, ptr %77, align 8, !dbg !1556, !tbaa !934
  %78 = load ptr, ptr %m, align 8, !dbg !1557, !tbaa !934
  %notes65 = getelementptr inbounds %struct.request_rec, ptr %78, i32 0, i32 38, !dbg !1558
  %79 = load ptr, ptr %notes65, align 8, !dbg !1558, !tbaa !1439
  %80 = load ptr, ptr %note, align 8, !dbg !1559, !tbaa !934
  %81 = load ptr, ptr %zz, align 8, !dbg !1560, !tbaa !934
  call void @apr_table_setn(ptr noundef %79, ptr noundef %80, ptr noundef %81), !dbg !1561
  %82 = load ptr, ptr %r.addr, align 8, !dbg !1562, !tbaa !934
  %headers_out = getelementptr inbounds %struct.request_rec, ptr %82, i32 0, i32 35, !dbg !1563
  %83 = load ptr, ptr %headers_out, align 8, !dbg !1563, !tbaa !1564
  call void @apr_table_addn(ptr noundef %83, ptr noundef @.str.24, ptr noundef @.str.25), !dbg !1565
  store i32 0, ptr %retval, align 4, !dbg !1566
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1566

cleanup:                                          ; preds = %if.end64, %if.else44, %if.then41, %if.then28, %if.then16, %if.else11
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #6, !dbg !1567
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #6, !dbg !1567
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #6, !dbg !1567
  call void @llvm.lifetime.end.p0(i64 8, ptr %note) #6, !dbg !1567
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #6, !dbg !1567
  call void @llvm.lifetime.end.p0(i64 8, ptr %zz) #6, !dbg !1567
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !1567
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #6, !dbg !1567
  %84 = load i32, ptr %retval, align 4, !dbg !1567
  ret i32 %84, !dbg !1567
}

declare !dbg !1568 void @ap_hook_session_save(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @session_dbd_save(ptr noundef %r, ptr noundef %z) #0 !dbg !1575 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %conf = alloca ptr, align 8
  %oldkey = alloca ptr, align 8
  %newkey = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1577, metadata !DIExpression()), !dbg !1585
  store ptr %z, ptr %z.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %z.addr, metadata !1578, metadata !DIExpression()), !dbg !1586
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !1587
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1579, metadata !DIExpression()), !dbg !1588
  store i32 0, ptr %ret, align 4, !dbg !1588, !tbaa !1157
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #6, !dbg !1589
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !1580, metadata !DIExpression()), !dbg !1590
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1591, !tbaa !934
  %per_dir_config = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 54, !dbg !1591
  %1 = load ptr, ptr %per_dir_config, align 8, !dbg !1591, !tbaa !1372
  %2 = load i32, ptr getelementptr inbounds (%struct.module_struct, ptr @session_dbd_module, i32 0, i32 2), align 8, !dbg !1591, !tbaa !1376
  %idxprom = sext i32 %2 to i64, !dbg !1591
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom, !dbg !1591
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1591, !tbaa !934
  store ptr %3, ptr %conf, align 8, !dbg !1590, !tbaa !934
  %4 = load ptr, ptr %conf, align 8, !dbg !1592, !tbaa !934
  %name_set = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %4, i32 0, i32 1, !dbg !1593
  %5 = load i32, ptr %name_set, align 8, !dbg !1593, !tbaa !990
  %tobool = icmp ne i32 %5, 0, !dbg !1592
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !1594

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %conf, align 8, !dbg !1595, !tbaa !934
  %name2_set = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %6, i32 0, i32 4, !dbg !1596
  %7 = load i32, ptr %name2_set, align 8, !dbg !1596, !tbaa !1023
  %tobool1 = icmp ne i32 %7, 0, !dbg !1595
  br i1 %tobool1, label %if.then, label %if.else44, !dbg !1597

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldkey) #6, !dbg !1598
  tail call void @llvm.dbg.declare(metadata ptr %oldkey, metadata !1581, metadata !DIExpression()), !dbg !1599
  store ptr null, ptr %oldkey, align 8, !dbg !1599, !tbaa !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %newkey) #6, !dbg !1598
  tail call void @llvm.dbg.declare(metadata ptr %newkey, metadata !1584, metadata !DIExpression()), !dbg !1600
  store ptr null, ptr %newkey, align 8, !dbg !1600, !tbaa !934
  %8 = load ptr, ptr %z.addr, align 8, !dbg !1601, !tbaa !934
  %uuid = getelementptr inbounds %struct.session_rec, ptr %8, i32 0, i32 1, !dbg !1603
  %9 = load ptr, ptr %uuid, align 8, !dbg !1603, !tbaa !1545
  %tobool2 = icmp ne ptr %9, null, !dbg !1601
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !1604

if.then3:                                         ; preds = %if.then
  %10 = load ptr, ptr %r.addr, align 8, !dbg !1605, !tbaa !934
  %pool = getelementptr inbounds %struct.request_rec, ptr %10, i32 0, i32 0, !dbg !1605
  %11 = load ptr, ptr %pool, align 8, !dbg !1605, !tbaa !1433
  %call = call ptr @apr_palloc(ptr noundef %11, i64 noundef 37), !dbg !1605
  call void @llvm.memset.p0.i64(ptr align 1 %call, i8 0, i64 37, i1 false), !dbg !1605
  store ptr %call, ptr %oldkey, align 8, !dbg !1607, !tbaa !934
  %12 = load ptr, ptr %oldkey, align 8, !dbg !1608, !tbaa !934
  %13 = load ptr, ptr %z.addr, align 8, !dbg !1609, !tbaa !934
  %uuid4 = getelementptr inbounds %struct.session_rec, ptr %13, i32 0, i32 1, !dbg !1610
  %14 = load ptr, ptr %uuid4, align 8, !dbg !1610, !tbaa !1545
  call void @apr_uuid_format(ptr noundef %12, ptr noundef %14), !dbg !1611
  br label %if.end, !dbg !1612

if.end:                                           ; preds = %if.then3, %if.then
  %15 = load ptr, ptr %z.addr, align 8, !dbg !1613, !tbaa !934
  %dirty = getelementptr inbounds %struct.session_rec, ptr %15, i32 0, i32 7, !dbg !1615
  %16 = load i32, ptr %dirty, align 8, !dbg !1615, !tbaa !1616
  %tobool5 = icmp ne i32 %16, 0, !dbg !1613
  br i1 %tobool5, label %if.then8, label %lor.lhs.false6, !dbg !1617

lor.lhs.false6:                                   ; preds = %if.end
  %17 = load ptr, ptr %oldkey, align 8, !dbg !1618, !tbaa !934
  %tobool7 = icmp ne ptr %17, null, !dbg !1618
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !1619

if.then8:                                         ; preds = %lor.lhs.false6, %if.end
  %18 = load ptr, ptr %z.addr, align 8, !dbg !1620, !tbaa !934
  %pool9 = getelementptr inbounds %struct.session_rec, ptr %18, i32 0, i32 0, !dbg !1620
  %19 = load ptr, ptr %pool9, align 8, !dbg !1620, !tbaa !1518
  %call10 = call ptr @apr_palloc(ptr noundef %19, i64 noundef 16), !dbg !1620
  call void @llvm.memset.p0.i64(ptr align 1 %call10, i8 0, i64 16, i1 false), !dbg !1620
  %20 = load ptr, ptr %z.addr, align 8, !dbg !1622, !tbaa !934
  %uuid11 = getelementptr inbounds %struct.session_rec, ptr %20, i32 0, i32 1, !dbg !1623
  store ptr %call10, ptr %uuid11, align 8, !dbg !1624, !tbaa !1545
  %21 = load ptr, ptr %z.addr, align 8, !dbg !1625, !tbaa !934
  %uuid12 = getelementptr inbounds %struct.session_rec, ptr %21, i32 0, i32 1, !dbg !1626
  %22 = load ptr, ptr %uuid12, align 8, !dbg !1626, !tbaa !1545
  call void @apr_uuid_get(ptr noundef %22), !dbg !1627
  %23 = load ptr, ptr %r.addr, align 8, !dbg !1628, !tbaa !934
  %pool13 = getelementptr inbounds %struct.request_rec, ptr %23, i32 0, i32 0, !dbg !1628
  %24 = load ptr, ptr %pool13, align 8, !dbg !1628, !tbaa !1433
  %call14 = call ptr @apr_palloc(ptr noundef %24, i64 noundef 37), !dbg !1628
  call void @llvm.memset.p0.i64(ptr align 1 %call14, i8 0, i64 37, i1 false), !dbg !1628
  store ptr %call14, ptr %newkey, align 8, !dbg !1629, !tbaa !934
  %25 = load ptr, ptr %newkey, align 8, !dbg !1630, !tbaa !934
  %26 = load ptr, ptr %z.addr, align 8, !dbg !1631, !tbaa !934
  %uuid15 = getelementptr inbounds %struct.session_rec, ptr %26, i32 0, i32 1, !dbg !1632
  %27 = load ptr, ptr %uuid15, align 8, !dbg !1632, !tbaa !1545
  call void @apr_uuid_format(ptr noundef %25, ptr noundef %27), !dbg !1633
  br label %if.end16, !dbg !1634

if.else:                                          ; preds = %lor.lhs.false6
  %28 = load ptr, ptr %oldkey, align 8, !dbg !1635, !tbaa !934
  store ptr %28, ptr %newkey, align 8, !dbg !1637, !tbaa !934
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then8
  %29 = load ptr, ptr %z.addr, align 8, !dbg !1638, !tbaa !934
  %encoded = getelementptr inbounds %struct.session_rec, ptr %29, i32 0, i32 4, !dbg !1640
  %30 = load ptr, ptr %encoded, align 8, !dbg !1640, !tbaa !1553
  %tobool17 = icmp ne ptr %30, null, !dbg !1638
  br i1 %tobool17, label %land.lhs.true, label %if.else24, !dbg !1641

land.lhs.true:                                    ; preds = %if.end16
  %31 = load ptr, ptr %z.addr, align 8, !dbg !1642, !tbaa !934
  %encoded18 = getelementptr inbounds %struct.session_rec, ptr %31, i32 0, i32 4, !dbg !1643
  %32 = load ptr, ptr %encoded18, align 8, !dbg !1643, !tbaa !1553
  %arrayidx19 = getelementptr inbounds i8, ptr %32, i64 0, !dbg !1642
  %33 = load i8, ptr %arrayidx19, align 1, !dbg !1642, !tbaa !1231
  %conv = sext i8 %33 to i32, !dbg !1642
  %tobool20 = icmp ne i32 %conv, 0, !dbg !1642
  br i1 %tobool20, label %if.then21, label %if.else24, !dbg !1644

if.then21:                                        ; preds = %land.lhs.true
  %34 = load ptr, ptr %r.addr, align 8, !dbg !1645, !tbaa !934
  %35 = load ptr, ptr %oldkey, align 8, !dbg !1647, !tbaa !934
  %36 = load ptr, ptr %newkey, align 8, !dbg !1648, !tbaa !934
  %37 = load ptr, ptr %z.addr, align 8, !dbg !1649, !tbaa !934
  %encoded22 = getelementptr inbounds %struct.session_rec, ptr %37, i32 0, i32 4, !dbg !1650
  %38 = load ptr, ptr %encoded22, align 8, !dbg !1650, !tbaa !1553
  %39 = load ptr, ptr %z.addr, align 8, !dbg !1651, !tbaa !934
  %expiry = getelementptr inbounds %struct.session_rec, ptr %39, i32 0, i32 5, !dbg !1652
  %40 = load i64, ptr %expiry, align 8, !dbg !1652, !tbaa !1653
  %call23 = call i32 @dbd_save(ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %38, i64 noundef %40), !dbg !1654
  store i32 %call23, ptr %ret, align 4, !dbg !1655, !tbaa !1157
  br label %if.end26, !dbg !1656

if.else24:                                        ; preds = %land.lhs.true, %if.end16
  %41 = load ptr, ptr %r.addr, align 8, !dbg !1657, !tbaa !934
  %42 = load ptr, ptr %oldkey, align 8, !dbg !1659, !tbaa !934
  %call25 = call i32 @dbd_remove(ptr noundef %41, ptr noundef %42), !dbg !1660
  store i32 %call25, ptr %ret, align 4, !dbg !1661, !tbaa !1157
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then21
  %43 = load i32, ptr %ret, align 4, !dbg !1662, !tbaa !1157
  %cmp = icmp ne i32 %43, 0, !dbg !1664
  br i1 %cmp, label %if.then28, label %if.end29, !dbg !1665

if.then28:                                        ; preds = %if.end26
  %44 = load i32, ptr %ret, align 4, !dbg !1666, !tbaa !1157
  store i32 %44, ptr %retval, align 4, !dbg !1668
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1668

if.end29:                                         ; preds = %if.end26
  %45 = load ptr, ptr %conf, align 8, !dbg !1669, !tbaa !934
  %name_set30 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %45, i32 0, i32 1, !dbg !1671
  %46 = load i32, ptr %name_set30, align 8, !dbg !1671, !tbaa !990
  %tobool31 = icmp ne i32 %46, 0, !dbg !1669
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !1672

if.then32:                                        ; preds = %if.end29
  %47 = load ptr, ptr %r.addr, align 8, !dbg !1673, !tbaa !934
  %48 = load ptr, ptr %conf, align 8, !dbg !1675, !tbaa !934
  %name = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %48, i32 0, i32 0, !dbg !1676
  %49 = load ptr, ptr %name, align 8, !dbg !1676, !tbaa !995
  %50 = load ptr, ptr %newkey, align 8, !dbg !1677, !tbaa !934
  %51 = load ptr, ptr %conf, align 8, !dbg !1678, !tbaa !934
  %name_attrs = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %51, i32 0, i32 2, !dbg !1679
  %52 = load ptr, ptr %name_attrs, align 8, !dbg !1679, !tbaa !1007
  %53 = load ptr, ptr %z.addr, align 8, !dbg !1680, !tbaa !934
  %maxage = getelementptr inbounds %struct.session_rec, ptr %53, i32 0, i32 6, !dbg !1681
  %54 = load i64, ptr %maxage, align 8, !dbg !1681, !tbaa !1682
  %55 = load ptr, ptr %r.addr, align 8, !dbg !1683, !tbaa !934
  %headers_out = getelementptr inbounds %struct.request_rec, ptr %55, i32 0, i32 35, !dbg !1684
  %56 = load ptr, ptr %headers_out, align 8, !dbg !1684, !tbaa !1564
  %57 = load ptr, ptr %r.addr, align 8, !dbg !1685, !tbaa !934
  %err_headers_out = getelementptr inbounds %struct.request_rec, ptr %57, i32 0, i32 36, !dbg !1686
  %58 = load ptr, ptr %err_headers_out, align 8, !dbg !1686, !tbaa !1687
  %call33 = call i32 (ptr, ptr, ptr, ptr, i64, ...) @ap_cookie_write(ptr noundef %47, ptr noundef %49, ptr noundef %50, ptr noundef %52, i64 noundef %54, ptr noundef %56, ptr noundef %58, ptr noundef null), !dbg !1688
  br label %if.end34, !dbg !1689

if.end34:                                         ; preds = %if.then32, %if.end29
  %59 = load ptr, ptr %conf, align 8, !dbg !1690, !tbaa !934
  %name2_set35 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %59, i32 0, i32 4, !dbg !1692
  %60 = load i32, ptr %name2_set35, align 8, !dbg !1692, !tbaa !1023
  %tobool36 = icmp ne i32 %60, 0, !dbg !1690
  br i1 %tobool36, label %if.then37, label %if.end42, !dbg !1693

if.then37:                                        ; preds = %if.end34
  %61 = load ptr, ptr %r.addr, align 8, !dbg !1694, !tbaa !934
  %62 = load ptr, ptr %conf, align 8, !dbg !1696, !tbaa !934
  %name2 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %62, i32 0, i32 3, !dbg !1697
  %63 = load ptr, ptr %name2, align 8, !dbg !1697, !tbaa !1028
  %64 = load ptr, ptr %newkey, align 8, !dbg !1698, !tbaa !934
  %65 = load ptr, ptr %conf, align 8, !dbg !1699, !tbaa !934
  %name2_attrs = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %65, i32 0, i32 5, !dbg !1700
  %66 = load ptr, ptr %name2_attrs, align 8, !dbg !1700, !tbaa !1040
  %67 = load ptr, ptr %z.addr, align 8, !dbg !1701, !tbaa !934
  %maxage38 = getelementptr inbounds %struct.session_rec, ptr %67, i32 0, i32 6, !dbg !1702
  %68 = load i64, ptr %maxage38, align 8, !dbg !1702, !tbaa !1682
  %69 = load ptr, ptr %r.addr, align 8, !dbg !1703, !tbaa !934
  %headers_out39 = getelementptr inbounds %struct.request_rec, ptr %69, i32 0, i32 35, !dbg !1704
  %70 = load ptr, ptr %headers_out39, align 8, !dbg !1704, !tbaa !1564
  %71 = load ptr, ptr %r.addr, align 8, !dbg !1705, !tbaa !934
  %err_headers_out40 = getelementptr inbounds %struct.request_rec, ptr %71, i32 0, i32 36, !dbg !1706
  %72 = load ptr, ptr %err_headers_out40, align 8, !dbg !1706, !tbaa !1687
  %call41 = call i32 (ptr, ptr, ptr, ptr, i64, ...) @ap_cookie_write2(ptr noundef %61, ptr noundef %63, ptr noundef %64, ptr noundef %66, i64 noundef %68, ptr noundef %70, ptr noundef %72, ptr noundef null), !dbg !1707
  br label %if.end42, !dbg !1708

if.end42:                                         ; preds = %if.then37, %if.end34
  store i32 0, ptr %retval, align 4, !dbg !1709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1709

cleanup:                                          ; preds = %if.end42, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %newkey) #6, !dbg !1710
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldkey) #6, !dbg !1710
  br label %cleanup63

if.else44:                                        ; preds = %lor.lhs.false
  %73 = load ptr, ptr %conf, align 8, !dbg !1711, !tbaa !934
  %peruser = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %73, i32 0, i32 6, !dbg !1713
  %74 = load i32, ptr %peruser, align 8, !dbg !1713, !tbaa !1061
  %tobool45 = icmp ne i32 %74, 0, !dbg !1711
  br i1 %tobool45, label %if.then46, label %if.end61, !dbg !1714

if.then46:                                        ; preds = %if.else44
  %75 = load ptr, ptr %r.addr, align 8, !dbg !1715, !tbaa !934
  %headers_out47 = getelementptr inbounds %struct.request_rec, ptr %75, i32 0, i32 35, !dbg !1717
  %76 = load ptr, ptr %headers_out47, align 8, !dbg !1717, !tbaa !1564
  call void @apr_table_addn(ptr noundef %76, ptr noundef @.str.24, ptr noundef @.str.25), !dbg !1718
  %77 = load ptr, ptr %r.addr, align 8, !dbg !1719, !tbaa !934
  %user = getelementptr inbounds %struct.request_rec, ptr %77, i32 0, i32 44, !dbg !1721
  %78 = load ptr, ptr %user, align 8, !dbg !1721, !tbaa !1422
  %tobool48 = icmp ne ptr %78, null, !dbg !1719
  br i1 %tobool48, label %if.then49, label %if.else59, !dbg !1722

if.then49:                                        ; preds = %if.then46
  %79 = load ptr, ptr %r.addr, align 8, !dbg !1723, !tbaa !934
  %80 = load ptr, ptr %r.addr, align 8, !dbg !1725, !tbaa !934
  %user50 = getelementptr inbounds %struct.request_rec, ptr %80, i32 0, i32 44, !dbg !1726
  %81 = load ptr, ptr %user50, align 8, !dbg !1726, !tbaa !1422
  %82 = load ptr, ptr %r.addr, align 8, !dbg !1727, !tbaa !934
  %user51 = getelementptr inbounds %struct.request_rec, ptr %82, i32 0, i32 44, !dbg !1728
  %83 = load ptr, ptr %user51, align 8, !dbg !1728, !tbaa !1422
  %84 = load ptr, ptr %z.addr, align 8, !dbg !1729, !tbaa !934
  %encoded52 = getelementptr inbounds %struct.session_rec, ptr %84, i32 0, i32 4, !dbg !1730
  %85 = load ptr, ptr %encoded52, align 8, !dbg !1730, !tbaa !1553
  %86 = load ptr, ptr %z.addr, align 8, !dbg !1731, !tbaa !934
  %expiry53 = getelementptr inbounds %struct.session_rec, ptr %86, i32 0, i32 5, !dbg !1732
  %87 = load i64, ptr %expiry53, align 8, !dbg !1732, !tbaa !1653
  %call54 = call i32 @dbd_save(ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, i64 noundef %87), !dbg !1733
  store i32 %call54, ptr %ret, align 4, !dbg !1734, !tbaa !1157
  %88 = load i32, ptr %ret, align 4, !dbg !1735, !tbaa !1157
  %cmp55 = icmp ne i32 %88, 0, !dbg !1737
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !1738

if.then57:                                        ; preds = %if.then49
  %89 = load i32, ptr %ret, align 4, !dbg !1739, !tbaa !1157
  store i32 %89, ptr %retval, align 4, !dbg !1741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !1741

if.end58:                                         ; preds = %if.then49
  store i32 0, ptr %retval, align 4, !dbg !1742
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !1742

if.else59:                                        ; preds = %if.then46
  br label %do.body, !dbg !1743

do.body:                                          ; preds = %if.else59
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_dbd_module, i64 8), ptr null), label %cond.true, label %cond.false, !dbg !1745

cond.true:                                        ; preds = %do.body
  %90 = load i32, ptr getelementptr (i8, ptr @session_dbd_module, i64 8), align 4, !dbg !1745, !tbaa !1157
  br label %cond.end, !dbg !1745

cond.false:                                       ; preds = %do.body
  br label %cond.end, !dbg !1745

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %90, %cond.true ], [ -1, %cond.false ], !dbg !1745
  %91 = load ptr, ptr %r.addr, align 8, !dbg !1745, !tbaa !934
  %92 = load ptr, ptr %r.addr, align 8, !dbg !1745, !tbaa !934
  %uri = getelementptr inbounds %struct.request_rec, ptr %92, i32 0, i32 47, !dbg !1745
  %93 = load ptr, ptr %uri, align 8, !dbg !1745, !tbaa !1748
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 471, i32 noundef %cond, i32 noundef 3, i32 noundef 0, ptr noundef %91, ptr noundef @.str.34, ptr noundef %93), !dbg !1745
  br label %do.cond, !dbg !1749

do.cond:                                          ; preds = %cond.end
  br label %do.end, !dbg !1749

do.end:                                           ; preds = %do.cond
  br label %if.end60

if.end60:                                         ; preds = %do.end
  br label %if.end61, !dbg !1750

if.end61:                                         ; preds = %if.end60, %if.else44
  br label %if.end62

if.end62:                                         ; preds = %if.end61
  store i32 -1, ptr %retval, align 4, !dbg !1751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !1751

cleanup63:                                        ; preds = %if.end62, %if.end58, %if.then57, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #6, !dbg !1752
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !1752
  %94 = load i32, ptr %retval, align 4, !dbg !1752
  ret i32 %94, !dbg !1752
}

declare !dbg !1753 void @ap_hook_monitor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @session_dbd_monitor(ptr noundef %p, ptr noundef %s) #0 !dbg !1761 {
entry:
  %p.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1763, metadata !DIExpression()), !dbg !1765
  store ptr %s, ptr %s.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1764, metadata !DIExpression()), !dbg !1766
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1767, !tbaa !934
  %1 = load ptr, ptr %s.addr, align 8, !dbg !1768, !tbaa !934
  %call = call i32 @dbd_clean(ptr noundef %0, ptr noundef %1), !dbg !1769
  ret i32 0, !dbg !1770
}

declare !dbg !1771 ptr @apr_table_get(ptr noundef, ptr noundef) #2

declare !dbg !1776 i32 @ap_cookie_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @dbd_load(ptr noundef %p, ptr noundef %r, ptr noundef %key, ptr noundef %val) #0 !dbg !1779 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %dbd = alloca ptr, align 8
  %statement = alloca ptr, align 8
  %res = alloca ptr, align 8
  %row = alloca ptr, align 8
  %expiry = alloca i64, align 8
  %conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1783, metadata !DIExpression()), !dbg !1803
  store ptr %r, ptr %r.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1784, metadata !DIExpression()), !dbg !1804
  store ptr %key, ptr %key.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1785, metadata !DIExpression()), !dbg !1805
  store ptr %val, ptr %val.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1786, metadata !DIExpression()), !dbg !1806
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6, !dbg !1807
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !1787, metadata !DIExpression()), !dbg !1808
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbd) #6, !dbg !1809
  tail call void @llvm.dbg.declare(metadata ptr %dbd, metadata !1788, metadata !DIExpression()), !dbg !1810
  store ptr null, ptr %dbd, align 8, !dbg !1810, !tbaa !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %statement) #6, !dbg !1811
  tail call void @llvm.dbg.declare(metadata ptr %statement, metadata !1789, metadata !DIExpression()), !dbg !1812
  store ptr null, ptr %statement, align 8, !dbg !1812, !tbaa !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #6, !dbg !1813
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !1793, metadata !DIExpression()), !dbg !1814
  store ptr null, ptr %res, align 8, !dbg !1814, !tbaa !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %row) #6, !dbg !1815
  tail call void @llvm.dbg.declare(metadata ptr %row, metadata !1797, metadata !DIExpression()), !dbg !1816
  store ptr null, ptr %row, align 8, !dbg !1816, !tbaa !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %expiry) #6, !dbg !1817
  tail call void @llvm.dbg.declare(metadata ptr %expiry, metadata !1801, metadata !DIExpression()), !dbg !1818
  %call = call i64 @apr_time_now(), !dbg !1819
  store i64 %call, ptr %expiry, align 8, !dbg !1818, !tbaa !1820
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #6, !dbg !1821
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !1802, metadata !DIExpression()), !dbg !1822
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1823, !tbaa !934
  %per_dir_config = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 54, !dbg !1823
  %1 = load ptr, ptr %per_dir_config, align 8, !dbg !1823, !tbaa !1372
  %2 = load i32, ptr getelementptr inbounds (%struct.module_struct, ptr @session_dbd_module, i32 0, i32 2), align 8, !dbg !1823, !tbaa !1376
  %idxprom = sext i32 %2 to i64, !dbg !1823
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom, !dbg !1823
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1823, !tbaa !934
  store ptr %3, ptr %conf, align 8, !dbg !1822, !tbaa !934
  %4 = load ptr, ptr %conf, align 8, !dbg !1824, !tbaa !934
  %selectlabel = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %4, i32 0, i32 10, !dbg !1826
  %5 = load ptr, ptr %selectlabel, align 8, !dbg !1826, !tbaa !952
  %cmp = icmp eq ptr %5, null, !dbg !1827
  br i1 %cmp, label %if.then, label %if.end, !dbg !1828

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1829

do.body:                                          ; preds = %if.then
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_dbd_module, i64 8), ptr null), label %cond.true, label %cond.false, !dbg !1831

cond.true:                                        ; preds = %do.body
  %6 = load i32, ptr getelementptr (i8, ptr @session_dbd_module, i64 8), align 4, !dbg !1831, !tbaa !1157
  br label %cond.end, !dbg !1831

cond.false:                                       ; preds = %do.body
  br label %cond.end, !dbg !1831

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ -1, %cond.false ], !dbg !1831
  %7 = load ptr, ptr %r.addr, align 8, !dbg !1831, !tbaa !934
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 115, i32 noundef %cond, i32 noundef 3, i32 noundef 0, ptr noundef %7, ptr noundef @.str.26), !dbg !1831
  br label %do.cond, !dbg !1834

do.cond:                                          ; preds = %cond.end
  br label %do.end, !dbg !1834

do.end:                                           ; preds = %do.cond
  store i32 20014, ptr %retval, align 4, !dbg !1835
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1835

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %r.addr, align 8, !dbg !1836, !tbaa !934
  %9 = load ptr, ptr %conf, align 8, !dbg !1837, !tbaa !934
  %selectlabel1 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %9, i32 0, i32 10, !dbg !1838
  %10 = load ptr, ptr %selectlabel1, align 8, !dbg !1838, !tbaa !952
  %call2 = call i32 @dbd_init(ptr noundef %8, ptr noundef %10, ptr noundef %dbd, ptr noundef %statement), !dbg !1839
  store i32 %call2, ptr %rv, align 4, !dbg !1840, !tbaa !1157
  %11 = load i32, ptr %rv, align 4, !dbg !1841, !tbaa !1157
  %tobool = icmp ne i32 %11, 0, !dbg !1841
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !1843

if.then3:                                         ; preds = %if.end
  %12 = load i32, ptr %rv, align 4, !dbg !1844, !tbaa !1157
  store i32 %12, ptr %retval, align 4, !dbg !1846
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1846

if.end4:                                          ; preds = %if.end
  %13 = load ptr, ptr %dbd, align 8, !dbg !1847, !tbaa !934
  %driver = getelementptr inbounds %struct.ap_dbd_t, ptr %13, i32 0, i32 1, !dbg !1848
  %14 = load ptr, ptr %driver, align 8, !dbg !1848, !tbaa !1849
  %15 = load ptr, ptr %r.addr, align 8, !dbg !1851, !tbaa !934
  %pool = getelementptr inbounds %struct.request_rec, ptr %15, i32 0, i32 0, !dbg !1852
  %16 = load ptr, ptr %pool, align 8, !dbg !1852, !tbaa !1433
  %17 = load ptr, ptr %dbd, align 8, !dbg !1853, !tbaa !934
  %handle = getelementptr inbounds %struct.ap_dbd_t, ptr %17, i32 0, i32 0, !dbg !1854
  %18 = load ptr, ptr %handle, align 8, !dbg !1854, !tbaa !1855
  %19 = load ptr, ptr %statement, align 8, !dbg !1856, !tbaa !934
  %20 = load ptr, ptr %key.addr, align 8, !dbg !1857, !tbaa !934
  %call5 = call i32 (ptr, ptr, ptr, ptr, ptr, i32, ...) @apr_dbd_pvbselect(ptr noundef %14, ptr noundef %16, ptr noundef %18, ptr noundef %res, ptr noundef %19, i32 noundef 0, ptr noundef %20, ptr noundef %expiry, ptr noundef null), !dbg !1858
  store i32 %call5, ptr %rv, align 4, !dbg !1859, !tbaa !1157
  %21 = load i32, ptr %rv, align 4, !dbg !1860, !tbaa !1157
  %tobool6 = icmp ne i32 %21, 0, !dbg !1860
  br i1 %tobool6, label %if.then7, label %if.end19, !dbg !1862

if.then7:                                         ; preds = %if.end4
  br label %do.body8, !dbg !1863

do.body8:                                         ; preds = %if.then7
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_dbd_module, i64 8), ptr null), label %cond.true9, label %cond.false10, !dbg !1865

cond.true9:                                       ; preds = %do.body8
  %22 = load i32, ptr getelementptr (i8, ptr @session_dbd_module, i64 8), align 4, !dbg !1865, !tbaa !1157
  br label %cond.end11, !dbg !1865

cond.false10:                                     ; preds = %do.body8
  br label %cond.end11, !dbg !1865

cond.end11:                                       ; preds = %cond.false10, %cond.true9
  %cond12 = phi i32 [ %22, %cond.true9 ], [ -1, %cond.false10 ], !dbg !1865
  %23 = load ptr, ptr %r.addr, align 8, !dbg !1865, !tbaa !934
  %24 = load ptr, ptr %key.addr, align 8, !dbg !1865, !tbaa !934
  %25 = load ptr, ptr %conf, align 8, !dbg !1865, !tbaa !934
  %selectlabel13 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %25, i32 0, i32 10, !dbg !1865
  %26 = load ptr, ptr %selectlabel13, align 8, !dbg !1865, !tbaa !952
  %27 = load ptr, ptr %dbd, align 8, !dbg !1865, !tbaa !934
  %driver14 = getelementptr inbounds %struct.ap_dbd_t, ptr %27, i32 0, i32 1, !dbg !1865
  %28 = load ptr, ptr %driver14, align 8, !dbg !1865, !tbaa !1849
  %29 = load ptr, ptr %dbd, align 8, !dbg !1865, !tbaa !934
  %handle15 = getelementptr inbounds %struct.ap_dbd_t, ptr %29, i32 0, i32 0, !dbg !1865
  %30 = load ptr, ptr %handle15, align 8, !dbg !1865, !tbaa !1855
  %31 = load i32, ptr %rv, align 4, !dbg !1865, !tbaa !1157
  %call16 = call ptr @apr_dbd_error(ptr noundef %28, ptr noundef %30, i32 noundef %31), !dbg !1865
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 127, i32 noundef %cond12, i32 noundef 3, i32 noundef 0, ptr noundef %23, ptr noundef @.str.27, ptr noundef %24, ptr noundef %26, ptr noundef %call16), !dbg !1865
  br label %do.cond17, !dbg !1868

do.cond17:                                        ; preds = %cond.end11
  br label %do.end18, !dbg !1868

do.end18:                                         ; preds = %do.cond17
  store i32 20014, ptr %retval, align 4, !dbg !1869
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1869

if.end19:                                         ; preds = %if.end4
  %32 = load ptr, ptr %dbd, align 8, !dbg !1870, !tbaa !934
  %driver20 = getelementptr inbounds %struct.ap_dbd_t, ptr %32, i32 0, i32 1, !dbg !1872
  %33 = load ptr, ptr %driver20, align 8, !dbg !1872, !tbaa !1849
  %34 = load ptr, ptr %r.addr, align 8, !dbg !1873, !tbaa !934
  %pool21 = getelementptr inbounds %struct.request_rec, ptr %34, i32 0, i32 0, !dbg !1874
  %35 = load ptr, ptr %pool21, align 8, !dbg !1874, !tbaa !1433
  %36 = load ptr, ptr %res, align 8, !dbg !1875, !tbaa !934
  %call22 = call i32 @apr_dbd_get_row(ptr noundef %33, ptr noundef %35, ptr noundef %36, ptr noundef %row, i32 noundef -1), !dbg !1876
  store i32 %call22, ptr %rv, align 4, !dbg !1877, !tbaa !1157
  br label %for.cond, !dbg !1878

for.cond:                                         ; preds = %for.inc, %if.end19
  %37 = load i32, ptr %rv, align 4, !dbg !1879, !tbaa !1157
  %cmp23 = icmp ne i32 %37, -1, !dbg !1881
  br i1 %cmp23, label %for.body, label %for.end, !dbg !1882

for.body:                                         ; preds = %for.cond
  %38 = load i32, ptr %rv, align 4, !dbg !1883, !tbaa !1157
  %cmp24 = icmp ne i32 %38, 0, !dbg !1886
  br i1 %cmp24, label %if.then25, label %if.end37, !dbg !1887

if.then25:                                        ; preds = %for.body
  br label %do.body26, !dbg !1888

do.body26:                                        ; preds = %if.then25
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_dbd_module, i64 8), ptr null), label %cond.true27, label %cond.false28, !dbg !1890

cond.true27:                                      ; preds = %do.body26
  %39 = load i32, ptr getelementptr (i8, ptr @session_dbd_module, i64 8), align 4, !dbg !1890, !tbaa !1157
  br label %cond.end29, !dbg !1890

cond.false28:                                     ; preds = %do.body26
  br label %cond.end29, !dbg !1890

cond.end29:                                       ; preds = %cond.false28, %cond.true27
  %cond30 = phi i32 [ %39, %cond.true27 ], [ -1, %cond.false28 ], !dbg !1890
  %40 = load i32, ptr %rv, align 4, !dbg !1890, !tbaa !1157
  %41 = load ptr, ptr %r.addr, align 8, !dbg !1890, !tbaa !934
  %42 = load ptr, ptr %key.addr, align 8, !dbg !1890, !tbaa !934
  %43 = load ptr, ptr %conf, align 8, !dbg !1890, !tbaa !934
  %selectlabel31 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %43, i32 0, i32 10, !dbg !1890
  %44 = load ptr, ptr %selectlabel31, align 8, !dbg !1890, !tbaa !952
  %45 = load ptr, ptr %dbd, align 8, !dbg !1890, !tbaa !934
  %driver32 = getelementptr inbounds %struct.ap_dbd_t, ptr %45, i32 0, i32 1, !dbg !1890
  %46 = load ptr, ptr %driver32, align 8, !dbg !1890, !tbaa !1849
  %47 = load ptr, ptr %dbd, align 8, !dbg !1890, !tbaa !934
  %handle33 = getelementptr inbounds %struct.ap_dbd_t, ptr %47, i32 0, i32 0, !dbg !1890
  %48 = load ptr, ptr %handle33, align 8, !dbg !1890, !tbaa !1855
  %49 = load i32, ptr %rv, align 4, !dbg !1890, !tbaa !1157
  %call34 = call ptr @apr_dbd_error(ptr noundef %46, ptr noundef %48, i32 noundef %49), !dbg !1890
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 137, i32 noundef %cond30, i32 noundef 3, i32 noundef %40, ptr noundef %41, ptr noundef @.str.28, ptr noundef %42, ptr noundef %44, ptr noundef %call34), !dbg !1890
  br label %do.cond35, !dbg !1893

do.cond35:                                        ; preds = %cond.end29
  br label %do.end36, !dbg !1893

do.end36:                                         ; preds = %do.cond35
  store i32 20014, ptr %retval, align 4, !dbg !1894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1894

if.end37:                                         ; preds = %for.body
  %50 = load ptr, ptr %val.addr, align 8, !dbg !1895, !tbaa !934
  %51 = load ptr, ptr %50, align 8, !dbg !1897, !tbaa !934
  %cmp38 = icmp eq ptr %51, null, !dbg !1898
  br i1 %cmp38, label %if.then39, label %if.end43, !dbg !1899

if.then39:                                        ; preds = %if.end37
  %52 = load ptr, ptr %p.addr, align 8, !dbg !1900, !tbaa !934
  %53 = load ptr, ptr %dbd, align 8, !dbg !1902, !tbaa !934
  %driver40 = getelementptr inbounds %struct.ap_dbd_t, ptr %53, i32 0, i32 1, !dbg !1903
  %54 = load ptr, ptr %driver40, align 8, !dbg !1903, !tbaa !1849
  %55 = load ptr, ptr %row, align 8, !dbg !1904, !tbaa !934
  %call41 = call ptr @apr_dbd_get_entry(ptr noundef %54, ptr noundef %55, i32 noundef 0), !dbg !1905
  %call42 = call ptr @apr_pstrdup(ptr noundef %52, ptr noundef %call41), !dbg !1906
  %56 = load ptr, ptr %val.addr, align 8, !dbg !1907, !tbaa !934
  store ptr %call42, ptr %56, align 8, !dbg !1908, !tbaa !934
  br label %if.end43, !dbg !1909

if.end43:                                         ; preds = %if.then39, %if.end37
  br label %for.inc, !dbg !1910

for.inc:                                          ; preds = %if.end43
  %57 = load ptr, ptr %dbd, align 8, !dbg !1911, !tbaa !934
  %driver44 = getelementptr inbounds %struct.ap_dbd_t, ptr %57, i32 0, i32 1, !dbg !1912
  %58 = load ptr, ptr %driver44, align 8, !dbg !1912, !tbaa !1849
  %59 = load ptr, ptr %r.addr, align 8, !dbg !1913, !tbaa !934
  %pool45 = getelementptr inbounds %struct.request_rec, ptr %59, i32 0, i32 0, !dbg !1914
  %60 = load ptr, ptr %pool45, align 8, !dbg !1914, !tbaa !1433
  %61 = load ptr, ptr %res, align 8, !dbg !1915, !tbaa !934
  %call46 = call i32 @apr_dbd_get_row(ptr noundef %58, ptr noundef %60, ptr noundef %61, ptr noundef %row, i32 noundef -1), !dbg !1916
  store i32 %call46, ptr %rv, align 4, !dbg !1917, !tbaa !1157
  br label %for.cond, !dbg !1918, !llvm.loop !1919

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1921
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1921

cleanup:                                          ; preds = %for.end, %do.end36, %do.end18, %if.then3, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #6, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 8, ptr %expiry) #6, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 8, ptr %row) #6, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #6, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 8, ptr %statement) #6, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbd) #6, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6, !dbg !1922
  %62 = load i32, ptr %retval, align 4, !dbg !1922
  ret i32 %62, !dbg !1922
}

declare !dbg !1923 ptr @apr_table_make(ptr noundef, i32 noundef) #2

declare !dbg !1926 i32 @apr_uuid_parse(ptr noundef, ptr noundef) #2

declare !dbg !1929 void @apr_table_setn(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1932 void @apr_table_addn(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1933 i64 @apr_time_now() #2

declare !dbg !1936 void @ap_log_rerror_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @dbd_init(ptr noundef %r, ptr noundef %query, ptr noundef %dbdp, ptr noundef %statementp) #0 !dbg !1941 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %query.addr = alloca ptr, align 8
  %dbdp.addr = alloca ptr, align 8
  %statementp.addr = alloca ptr, align 8
  %dbd = alloca ptr, align 8
  %statement = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1947, metadata !DIExpression()), !dbg !1953
  store ptr %query, ptr %query.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %query.addr, metadata !1948, metadata !DIExpression()), !dbg !1954
  store ptr %dbdp, ptr %dbdp.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %dbdp.addr, metadata !1949, metadata !DIExpression()), !dbg !1955
  store ptr %statementp, ptr %statementp.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %statementp.addr, metadata !1950, metadata !DIExpression()), !dbg !1956
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbd) #6, !dbg !1957
  tail call void @llvm.dbg.declare(metadata ptr %dbd, metadata !1951, metadata !DIExpression()), !dbg !1958
  call void @llvm.lifetime.start.p0(i64 8, ptr %statement) #6, !dbg !1959
  tail call void @llvm.dbg.declare(metadata ptr %statement, metadata !1952, metadata !DIExpression()), !dbg !1960
  %0 = load ptr, ptr @session_dbd_prepare_fn, align 8, !dbg !1961, !tbaa !934
  %tobool = icmp ne ptr %0, null, !dbg !1961
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1963

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @session_dbd_acquire_fn, align 8, !dbg !1964, !tbaa !934
  %tobool1 = icmp ne ptr %1, null, !dbg !1964
  br i1 %tobool1, label %if.end7, label %if.then, !dbg !1965

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call ptr @apr_dynamic_fn_retrieve(ptr noundef @.str.29), !dbg !1966
  store ptr %call, ptr @session_dbd_prepare_fn, align 8, !dbg !1968, !tbaa !934
  %call2 = call ptr @apr_dynamic_fn_retrieve(ptr noundef @.str.30), !dbg !1969
  store ptr %call2, ptr @session_dbd_acquire_fn, align 8, !dbg !1970, !tbaa !934
  %2 = load ptr, ptr @session_dbd_prepare_fn, align 8, !dbg !1971, !tbaa !934
  %tobool3 = icmp ne ptr %2, null, !dbg !1971
  br i1 %tobool3, label %lor.lhs.false4, label %if.then6, !dbg !1973

lor.lhs.false4:                                   ; preds = %if.then
  %3 = load ptr, ptr @session_dbd_acquire_fn, align 8, !dbg !1974, !tbaa !934
  %tobool5 = icmp ne ptr %3, null, !dbg !1974
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !1975

if.then6:                                         ; preds = %lor.lhs.false4, %if.then
  br label %do.body, !dbg !1976

do.body:                                          ; preds = %if.then6
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_dbd_module, i64 8), ptr null), label %cond.true, label %cond.false, !dbg !1978

cond.true:                                        ; preds = %do.body
  %4 = load i32, ptr getelementptr (i8, ptr @session_dbd_module, i64 8), align 4, !dbg !1978, !tbaa !1157
  br label %cond.end, !dbg !1978

cond.false:                                       ; preds = %do.body
  br label %cond.end, !dbg !1978

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ -1, %cond.false ], !dbg !1978
  %5 = load ptr, ptr %r.addr, align 8, !dbg !1978, !tbaa !934
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 69, i32 noundef %cond, i32 noundef 3, i32 noundef 0, ptr noundef %5, ptr noundef @.str.31), !dbg !1978
  br label %do.cond, !dbg !1981

do.cond:                                          ; preds = %cond.end
  br label %do.end, !dbg !1981

do.end:                                           ; preds = %do.cond
  store i32 20014, ptr %retval, align 4, !dbg !1982
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1982

if.end:                                           ; preds = %lor.lhs.false4
  br label %if.end7, !dbg !1983

if.end7:                                          ; preds = %if.end, %lor.lhs.false
  %6 = load ptr, ptr @session_dbd_acquire_fn, align 8, !dbg !1984, !tbaa !934
  %7 = load ptr, ptr %r.addr, align 8, !dbg !1985, !tbaa !934
  %call8 = call ptr %6(ptr noundef %7), !dbg !1984
  store ptr %call8, ptr %dbd, align 8, !dbg !1986, !tbaa !934
  %8 = load ptr, ptr %dbd, align 8, !dbg !1987, !tbaa !934
  %tobool9 = icmp ne ptr %8, null, !dbg !1987
  br i1 %tobool9, label %if.end18, label %if.then10, !dbg !1989

if.then10:                                        ; preds = %if.end7
  br label %do.body11, !dbg !1990

do.body11:                                        ; preds = %if.then10
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_dbd_module, i64 8), ptr null), label %cond.true12, label %cond.false13, !dbg !1992

cond.true12:                                      ; preds = %do.body11
  %9 = load i32, ptr getelementptr (i8, ptr @session_dbd_module, i64 8), align 4, !dbg !1992, !tbaa !1157
  br label %cond.end14, !dbg !1992

cond.false13:                                     ; preds = %do.body11
  br label %cond.end14, !dbg !1992

cond.end14:                                       ; preds = %cond.false13, %cond.true12
  %cond15 = phi i32 [ %9, %cond.true12 ], [ -1, %cond.false13 ], !dbg !1992
  %10 = load ptr, ptr %r.addr, align 8, !dbg !1992, !tbaa !934
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 77, i32 noundef %cond15, i32 noundef 3, i32 noundef 0, ptr noundef %10, ptr noundef @.str.32), !dbg !1992
  br label %do.cond16, !dbg !1995

do.cond16:                                        ; preds = %cond.end14
  br label %do.end17, !dbg !1995

do.end17:                                         ; preds = %do.cond16
  store i32 20014, ptr %retval, align 4, !dbg !1996
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1996

if.end18:                                         ; preds = %if.end7
  %11 = load ptr, ptr %dbd, align 8, !dbg !1997, !tbaa !934
  %prepared = getelementptr inbounds %struct.ap_dbd_t, ptr %11, i32 0, i32 2, !dbg !1998
  %12 = load ptr, ptr %prepared, align 8, !dbg !1998, !tbaa !1999
  %13 = load ptr, ptr %query.addr, align 8, !dbg !2000, !tbaa !934
  %call19 = call ptr @apr_hash_get(ptr noundef %12, ptr noundef %13, i64 noundef -1), !dbg !2001
  store ptr %call19, ptr %statement, align 8, !dbg !2002, !tbaa !934
  %14 = load ptr, ptr %statement, align 8, !dbg !2003, !tbaa !934
  %tobool20 = icmp ne ptr %14, null, !dbg !2003
  br i1 %tobool20, label %if.end29, label %if.then21, !dbg !2005

if.then21:                                        ; preds = %if.end18
  br label %do.body22, !dbg !2006

do.body22:                                        ; preds = %if.then21
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_dbd_module, i64 8), ptr null), label %cond.true23, label %cond.false24, !dbg !2008

cond.true23:                                      ; preds = %do.body22
  %15 = load i32, ptr getelementptr (i8, ptr @session_dbd_module, i64 8), align 4, !dbg !2008, !tbaa !1157
  br label %cond.end25, !dbg !2008

cond.false24:                                     ; preds = %do.body22
  br label %cond.end25, !dbg !2008

cond.end25:                                       ; preds = %cond.false24, %cond.true23
  %cond26 = phi i32 [ %15, %cond.true23 ], [ -1, %cond.false24 ], !dbg !2008
  %16 = load ptr, ptr %r.addr, align 8, !dbg !2008, !tbaa !934
  %17 = load ptr, ptr %query.addr, align 8, !dbg !2008, !tbaa !934
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 84, i32 noundef %cond26, i32 noundef 3, i32 noundef 0, ptr noundef %16, ptr noundef @.str.33, ptr noundef %17), !dbg !2008
  br label %do.cond27, !dbg !2011

do.cond27:                                        ; preds = %cond.end25
  br label %do.end28, !dbg !2011

do.end28:                                         ; preds = %do.cond27
  store i32 20014, ptr %retval, align 4, !dbg !2012
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2012

if.end29:                                         ; preds = %if.end18
  %18 = load ptr, ptr %dbd, align 8, !dbg !2013, !tbaa !934
  %19 = load ptr, ptr %dbdp.addr, align 8, !dbg !2014, !tbaa !934
  store ptr %18, ptr %19, align 8, !dbg !2015, !tbaa !934
  %20 = load ptr, ptr %statement, align 8, !dbg !2016, !tbaa !934
  %21 = load ptr, ptr %statementp.addr, align 8, !dbg !2017, !tbaa !934
  store ptr %20, ptr %21, align 8, !dbg !2018, !tbaa !934
  store i32 0, ptr %retval, align 4, !dbg !2019
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2019

cleanup:                                          ; preds = %if.end29, %do.end28, %do.end17, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %statement) #6, !dbg !2020
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbd) #6, !dbg !2020
  %22 = load i32, ptr %retval, align 4, !dbg !2020
  ret i32 %22, !dbg !2020
}

declare !dbg !2021 i32 @apr_dbd_pvbselect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ...) #2

declare !dbg !2025 ptr @apr_dbd_error(ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !2028 i32 @apr_dbd_get_row(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !2032 ptr @apr_dbd_get_entry(ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !2035 ptr @apr_dynamic_fn_retrieve(ptr noundef) #2

declare !dbg !2043 ptr @apr_hash_get(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !2051 void @apr_uuid_format(ptr noundef, ptr noundef) #2

declare !dbg !2056 void @apr_uuid_get(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @dbd_save(ptr noundef %r, ptr noundef %oldkey, ptr noundef %newkey, ptr noundef %val, i64 noundef %expiry) #0 !dbg !2059 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldkey.addr = alloca ptr, align 8
  %newkey.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %expiry.addr = alloca i64, align 8
  %rv = alloca i32, align 4
  %dbd = alloca ptr, align 8
  %statement = alloca ptr, align 8
  %rows = alloca i32, align 4
  %conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2063, metadata !DIExpression()), !dbg !2073
  store ptr %oldkey, ptr %oldkey.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %oldkey.addr, metadata !2064, metadata !DIExpression()), !dbg !2074
  store ptr %newkey, ptr %newkey.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %newkey.addr, metadata !2065, metadata !DIExpression()), !dbg !2075
  store ptr %val, ptr %val.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2066, metadata !DIExpression()), !dbg !2076
  store i64 %expiry, ptr %expiry.addr, align 8, !tbaa !1820
  tail call void @llvm.dbg.declare(metadata ptr %expiry.addr, metadata !2067, metadata !DIExpression()), !dbg !2077
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6, !dbg !2078
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !2068, metadata !DIExpression()), !dbg !2079
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbd) #6, !dbg !2080
  tail call void @llvm.dbg.declare(metadata ptr %dbd, metadata !2069, metadata !DIExpression()), !dbg !2081
  store ptr null, ptr %dbd, align 8, !dbg !2081, !tbaa !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %statement) #6, !dbg !2082
  tail call void @llvm.dbg.declare(metadata ptr %statement, metadata !2070, metadata !DIExpression()), !dbg !2083
  call void @llvm.lifetime.start.p0(i64 4, ptr %rows) #6, !dbg !2084
  tail call void @llvm.dbg.declare(metadata ptr %rows, metadata !2071, metadata !DIExpression()), !dbg !2085
  store i32 0, ptr %rows, align 4, !dbg !2085, !tbaa !1157
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #6, !dbg !2086
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !2072, metadata !DIExpression()), !dbg !2087
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2088, !tbaa !934
  %per_dir_config = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 54, !dbg !2088
  %1 = load ptr, ptr %per_dir_config, align 8, !dbg !2088, !tbaa !1372
  %2 = load i32, ptr getelementptr inbounds (%struct.module_struct, ptr @session_dbd_module, i32 0, i32 2), align 8, !dbg !2088, !tbaa !1376
  %idxprom = sext i32 %2 to i64, !dbg !2088
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom, !dbg !2088
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2088, !tbaa !934
  store ptr %3, ptr %conf, align 8, !dbg !2087, !tbaa !934
  %4 = load ptr, ptr %conf, align 8, !dbg !2089, !tbaa !934
  %updatelabel = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %4, i32 0, i32 12, !dbg !2091
  %5 = load ptr, ptr %updatelabel, align 8, !dbg !2091, !tbaa !960
  %cmp = icmp eq ptr %5, null, !dbg !2092
  br i1 %cmp, label %if.then, label %if.end, !dbg !2093

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2094

do.body:                                          ; preds = %if.then
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_dbd_module, i64 8), ptr null), label %cond.true, label %cond.false, !dbg !2096

cond.true:                                        ; preds = %do.body
  %6 = load i32, ptr getelementptr (i8, ptr @session_dbd_module, i64 8), align 4, !dbg !2096, !tbaa !1157
  br label %cond.end, !dbg !2096

cond.false:                                       ; preds = %do.body
  br label %cond.end, !dbg !2096

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ -1, %cond.false ], !dbg !2096
  %7 = load ptr, ptr %r.addr, align 8, !dbg !2096, !tbaa !934
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 271, i32 noundef %cond, i32 noundef 3, i32 noundef 0, ptr noundef %7, ptr noundef @.str.35), !dbg !2096
  br label %do.cond, !dbg !2099

do.cond:                                          ; preds = %cond.end
  br label %do.end, !dbg !2099

do.end:                                           ; preds = %do.cond
  store i32 20014, ptr %retval, align 4, !dbg !2100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2100

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %r.addr, align 8, !dbg !2101, !tbaa !934
  %9 = load ptr, ptr %conf, align 8, !dbg !2102, !tbaa !934
  %updatelabel1 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %9, i32 0, i32 12, !dbg !2103
  %10 = load ptr, ptr %updatelabel1, align 8, !dbg !2103, !tbaa !960
  %call = call i32 @dbd_init(ptr noundef %8, ptr noundef %10, ptr noundef %dbd, ptr noundef %statement), !dbg !2104
  store i32 %call, ptr %rv, align 4, !dbg !2105, !tbaa !1157
  %11 = load i32, ptr %rv, align 4, !dbg !2106, !tbaa !1157
  %tobool = icmp ne i32 %11, 0, !dbg !2106
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !2108

if.then2:                                         ; preds = %if.end
  %12 = load i32, ptr %rv, align 4, !dbg !2109, !tbaa !1157
  store i32 %12, ptr %retval, align 4, !dbg !2111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2111

if.end3:                                          ; preds = %if.end
  %13 = load ptr, ptr %oldkey.addr, align 8, !dbg !2112, !tbaa !934
  %tobool4 = icmp ne ptr %13, null, !dbg !2112
  br i1 %tobool4, label %if.then5, label %if.end24, !dbg !2114

if.then5:                                         ; preds = %if.end3
  %14 = load ptr, ptr %dbd, align 8, !dbg !2115, !tbaa !934
  %driver = getelementptr inbounds %struct.ap_dbd_t, ptr %14, i32 0, i32 1, !dbg !2117
  %15 = load ptr, ptr %driver, align 8, !dbg !2117, !tbaa !1849
  %16 = load ptr, ptr %r.addr, align 8, !dbg !2118, !tbaa !934
  %pool = getelementptr inbounds %struct.request_rec, ptr %16, i32 0, i32 0, !dbg !2119
  %17 = load ptr, ptr %pool, align 8, !dbg !2119, !tbaa !1433
  %18 = load ptr, ptr %dbd, align 8, !dbg !2120, !tbaa !934
  %handle = getelementptr inbounds %struct.ap_dbd_t, ptr %18, i32 0, i32 0, !dbg !2121
  %19 = load ptr, ptr %handle, align 8, !dbg !2121, !tbaa !1855
  %20 = load ptr, ptr %statement, align 8, !dbg !2122, !tbaa !934
  %21 = load ptr, ptr %val.addr, align 8, !dbg !2123, !tbaa !934
  %22 = load ptr, ptr %newkey.addr, align 8, !dbg !2124, !tbaa !934
  %23 = load ptr, ptr %oldkey.addr, align 8, !dbg !2125, !tbaa !934
  %call6 = call i32 (ptr, ptr, ptr, ptr, ptr, ...) @apr_dbd_pvbquery(ptr noundef %15, ptr noundef %17, ptr noundef %19, ptr noundef %rows, ptr noundef %20, ptr noundef %21, ptr noundef %expiry.addr, ptr noundef %22, ptr noundef %23, ptr noundef null), !dbg !2126
  store i32 %call6, ptr %rv, align 4, !dbg !2127, !tbaa !1157
  %24 = load i32, ptr %rv, align 4, !dbg !2128, !tbaa !1157
  %tobool7 = icmp ne i32 %24, 0, !dbg !2128
  br i1 %tobool7, label %if.then8, label %if.end20, !dbg !2130

if.then8:                                         ; preds = %if.then5
  br label %do.body9, !dbg !2131

do.body9:                                         ; preds = %if.then8
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_dbd_module, i64 8), ptr null), label %cond.true10, label %cond.false11, !dbg !2133

cond.true10:                                      ; preds = %do.body9
  %25 = load i32, ptr getelementptr (i8, ptr @session_dbd_module, i64 8), align 4, !dbg !2133, !tbaa !1157
  br label %cond.end12, !dbg !2133

cond.false11:                                     ; preds = %do.body9
  br label %cond.end12, !dbg !2133

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %25, %cond.true10 ], [ -1, %cond.false11 ], !dbg !2133
  %26 = load ptr, ptr %r.addr, align 8, !dbg !2133, !tbaa !934
  %27 = load ptr, ptr %oldkey.addr, align 8, !dbg !2133, !tbaa !934
  %28 = load ptr, ptr %newkey.addr, align 8, !dbg !2133, !tbaa !934
  %29 = load ptr, ptr %conf, align 8, !dbg !2133, !tbaa !934
  %updatelabel14 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %29, i32 0, i32 12, !dbg !2133
  %30 = load ptr, ptr %updatelabel14, align 8, !dbg !2133, !tbaa !960
  %31 = load ptr, ptr %dbd, align 8, !dbg !2133, !tbaa !934
  %driver15 = getelementptr inbounds %struct.ap_dbd_t, ptr %31, i32 0, i32 1, !dbg !2133
  %32 = load ptr, ptr %driver15, align 8, !dbg !2133, !tbaa !1849
  %33 = load ptr, ptr %dbd, align 8, !dbg !2133, !tbaa !934
  %handle16 = getelementptr inbounds %struct.ap_dbd_t, ptr %33, i32 0, i32 0, !dbg !2133
  %34 = load ptr, ptr %handle16, align 8, !dbg !2133, !tbaa !1855
  %35 = load i32, ptr %rv, align 4, !dbg !2133, !tbaa !1157
  %call17 = call ptr @apr_dbd_error(ptr noundef %32, ptr noundef %34, i32 noundef %35), !dbg !2133
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 286, i32 noundef %cond13, i32 noundef 3, i32 noundef 0, ptr noundef %26, ptr noundef @.str.36, ptr noundef %27, ptr noundef %28, ptr noundef %30, ptr noundef %call17), !dbg !2133
  br label %do.cond18, !dbg !2136

do.cond18:                                        ; preds = %cond.end12
  br label %do.end19, !dbg !2136

do.end19:                                         ; preds = %do.cond18
  store i32 20014, ptr %retval, align 4, !dbg !2137
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2137

if.end20:                                         ; preds = %if.then5
  %36 = load i32, ptr %rows, align 4, !dbg !2138, !tbaa !1157
  %cmp21 = icmp ne i32 %36, 0, !dbg !2140
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2141

if.then22:                                        ; preds = %if.end20
  store i32 0, ptr %retval, align 4, !dbg !2142
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2142

if.end23:                                         ; preds = %if.end20
  br label %if.end24, !dbg !2144

if.end24:                                         ; preds = %if.end23, %if.end3
  %37 = load ptr, ptr %conf, align 8, !dbg !2145, !tbaa !934
  %insertlabel = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %37, i32 0, i32 11, !dbg !2147
  %38 = load ptr, ptr %insertlabel, align 8, !dbg !2147, !tbaa !956
  %cmp25 = icmp eq ptr %38, null, !dbg !2148
  br i1 %cmp25, label %if.then26, label %if.end34, !dbg !2149

if.then26:                                        ; preds = %if.end24
  br label %do.body27, !dbg !2150

do.body27:                                        ; preds = %if.then26
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_dbd_module, i64 8), ptr null), label %cond.true28, label %cond.false29, !dbg !2152

cond.true28:                                      ; preds = %do.body27
  %39 = load i32, ptr getelementptr (i8, ptr @session_dbd_module, i64 8), align 4, !dbg !2152, !tbaa !1157
  br label %cond.end30, !dbg !2152

cond.false29:                                     ; preds = %do.body27
  br label %cond.end30, !dbg !2152

cond.end30:                                       ; preds = %cond.false29, %cond.true28
  %cond31 = phi i32 [ %39, %cond.true28 ], [ -1, %cond.false29 ], !dbg !2152
  %40 = load ptr, ptr %r.addr, align 8, !dbg !2152, !tbaa !934
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 301, i32 noundef %cond31, i32 noundef 3, i32 noundef 0, ptr noundef %40, ptr noundef @.str.37), !dbg !2152
  br label %do.cond32, !dbg !2155

do.cond32:                                        ; preds = %cond.end30
  br label %do.end33, !dbg !2155

do.end33:                                         ; preds = %do.cond32
  store i32 20014, ptr %retval, align 4, !dbg !2156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2156

if.end34:                                         ; preds = %if.end24
  %41 = load ptr, ptr %r.addr, align 8, !dbg !2157, !tbaa !934
  %42 = load ptr, ptr %conf, align 8, !dbg !2158, !tbaa !934
  %insertlabel35 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %42, i32 0, i32 11, !dbg !2159
  %43 = load ptr, ptr %insertlabel35, align 8, !dbg !2159, !tbaa !956
  %call36 = call i32 @dbd_init(ptr noundef %41, ptr noundef %43, ptr noundef %dbd, ptr noundef %statement), !dbg !2160
  store i32 %call36, ptr %rv, align 4, !dbg !2161, !tbaa !1157
  %44 = load i32, ptr %rv, align 4, !dbg !2162, !tbaa !1157
  %tobool37 = icmp ne i32 %44, 0, !dbg !2162
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !2164

if.then38:                                        ; preds = %if.end34
  %45 = load i32, ptr %rv, align 4, !dbg !2165, !tbaa !1157
  store i32 %45, ptr %retval, align 4, !dbg !2167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2167

if.end39:                                         ; preds = %if.end34
  %46 = load ptr, ptr %dbd, align 8, !dbg !2168, !tbaa !934
  %driver40 = getelementptr inbounds %struct.ap_dbd_t, ptr %46, i32 0, i32 1, !dbg !2169
  %47 = load ptr, ptr %driver40, align 8, !dbg !2169, !tbaa !1849
  %48 = load ptr, ptr %r.addr, align 8, !dbg !2170, !tbaa !934
  %pool41 = getelementptr inbounds %struct.request_rec, ptr %48, i32 0, i32 0, !dbg !2171
  %49 = load ptr, ptr %pool41, align 8, !dbg !2171, !tbaa !1433
  %50 = load ptr, ptr %dbd, align 8, !dbg !2172, !tbaa !934
  %handle42 = getelementptr inbounds %struct.ap_dbd_t, ptr %50, i32 0, i32 0, !dbg !2173
  %51 = load ptr, ptr %handle42, align 8, !dbg !2173, !tbaa !1855
  %52 = load ptr, ptr %statement, align 8, !dbg !2174, !tbaa !934
  %53 = load ptr, ptr %val.addr, align 8, !dbg !2175, !tbaa !934
  %54 = load ptr, ptr %newkey.addr, align 8, !dbg !2176, !tbaa !934
  %call43 = call i32 (ptr, ptr, ptr, ptr, ptr, ...) @apr_dbd_pvbquery(ptr noundef %47, ptr noundef %49, ptr noundef %51, ptr noundef %rows, ptr noundef %52, ptr noundef %53, ptr noundef %expiry.addr, ptr noundef %54, ptr noundef null), !dbg !2177
  store i32 %call43, ptr %rv, align 4, !dbg !2178, !tbaa !1157
  %55 = load i32, ptr %rv, align 4, !dbg !2179, !tbaa !1157
  %tobool44 = icmp ne i32 %55, 0, !dbg !2179
  br i1 %tobool44, label %if.then45, label %if.end57, !dbg !2181

if.then45:                                        ; preds = %if.end39
  br label %do.body46, !dbg !2182

do.body46:                                        ; preds = %if.then45
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_dbd_module, i64 8), ptr null), label %cond.true47, label %cond.false48, !dbg !2184

cond.true47:                                      ; preds = %do.body46
  %56 = load i32, ptr getelementptr (i8, ptr @session_dbd_module, i64 8), align 4, !dbg !2184, !tbaa !1157
  br label %cond.end49, !dbg !2184

cond.false48:                                     ; preds = %do.body46
  br label %cond.end49, !dbg !2184

cond.end49:                                       ; preds = %cond.false48, %cond.true47
  %cond50 = phi i32 [ %56, %cond.true47 ], [ -1, %cond.false48 ], !dbg !2184
  %57 = load i32, ptr %rv, align 4, !dbg !2184, !tbaa !1157
  %58 = load ptr, ptr %r.addr, align 8, !dbg !2184, !tbaa !934
  %59 = load ptr, ptr %newkey.addr, align 8, !dbg !2184, !tbaa !934
  %60 = load ptr, ptr %conf, align 8, !dbg !2184, !tbaa !934
  %insertlabel51 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %60, i32 0, i32 11, !dbg !2184
  %61 = load ptr, ptr %insertlabel51, align 8, !dbg !2184, !tbaa !956
  %62 = load ptr, ptr %dbd, align 8, !dbg !2184, !tbaa !934
  %driver52 = getelementptr inbounds %struct.ap_dbd_t, ptr %62, i32 0, i32 1, !dbg !2184
  %63 = load ptr, ptr %driver52, align 8, !dbg !2184, !tbaa !1849
  %64 = load ptr, ptr %dbd, align 8, !dbg !2184, !tbaa !934
  %handle53 = getelementptr inbounds %struct.ap_dbd_t, ptr %64, i32 0, i32 0, !dbg !2184
  %65 = load ptr, ptr %handle53, align 8, !dbg !2184, !tbaa !1855
  %66 = load i32, ptr %rv, align 4, !dbg !2184, !tbaa !1157
  %call54 = call ptr @apr_dbd_error(ptr noundef %63, ptr noundef %65, i32 noundef %66), !dbg !2184
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 313, i32 noundef %cond50, i32 noundef 3, i32 noundef %57, ptr noundef %58, ptr noundef @.str.38, ptr noundef %59, ptr noundef %61, ptr noundef %call54), !dbg !2184
  br label %do.cond55, !dbg !2187

do.cond55:                                        ; preds = %cond.end49
  br label %do.end56, !dbg !2187

do.end56:                                         ; preds = %do.cond55
  store i32 20014, ptr %retval, align 4, !dbg !2188
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2188

if.end57:                                         ; preds = %if.end39
  %67 = load i32, ptr %rows, align 4, !dbg !2189, !tbaa !1157
  %cmp58 = icmp ne i32 %67, 0, !dbg !2191
  br i1 %cmp58, label %if.then59, label %if.end60, !dbg !2192

if.then59:                                        ; preds = %if.end57
  store i32 0, ptr %retval, align 4, !dbg !2193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2193

if.end60:                                         ; preds = %if.end57
  br label %do.body61, !dbg !2195

do.body61:                                        ; preds = %if.end60
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_dbd_module, i64 8), ptr null), label %cond.true62, label %cond.false63, !dbg !2196

cond.true62:                                      ; preds = %do.body61
  %68 = load i32, ptr getelementptr (i8, ptr @session_dbd_module, i64 8), align 4, !dbg !2196, !tbaa !1157
  br label %cond.end64, !dbg !2196

cond.false63:                                     ; preds = %do.body61
  br label %cond.end64, !dbg !2196

cond.end64:                                       ; preds = %cond.false63, %cond.true62
  %cond65 = phi i32 [ %68, %cond.true62 ], [ -1, %cond.false63 ], !dbg !2196
  %69 = load ptr, ptr %r.addr, align 8, !dbg !2196, !tbaa !934
  %70 = load ptr, ptr %newkey.addr, align 8, !dbg !2196, !tbaa !934
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 328, i32 noundef %cond65, i32 noundef 3, i32 noundef 0, ptr noundef %69, ptr noundef @.str.39, ptr noundef %70), !dbg !2196
  br label %do.cond66, !dbg !2199

do.cond66:                                        ; preds = %cond.end64
  br label %do.end67, !dbg !2199

do.end67:                                         ; preds = %do.cond66
  store i32 20014, ptr %retval, align 4, !dbg !2200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2200

cleanup:                                          ; preds = %do.end67, %if.then59, %do.end56, %if.then38, %do.end33, %if.then22, %do.end19, %if.then2, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #6, !dbg !2201
  call void @llvm.lifetime.end.p0(i64 4, ptr %rows) #6, !dbg !2201
  call void @llvm.lifetime.end.p0(i64 8, ptr %statement) #6, !dbg !2201
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbd) #6, !dbg !2201
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6, !dbg !2201
  %71 = load i32, ptr %retval, align 4, !dbg !2201
  ret i32 %71, !dbg !2201
}

; Function Attrs: nounwind uwtable
define internal i32 @dbd_remove(ptr noundef %r, ptr noundef %key) #0 !dbg !2202 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %rv = alloca i32, align 4
  %dbd = alloca ptr, align 8
  %statement = alloca ptr, align 8
  %rows = alloca i32, align 4
  %conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2206, metadata !DIExpression()), !dbg !2213
  store ptr %key, ptr %key.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2207, metadata !DIExpression()), !dbg !2214
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6, !dbg !2215
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !2208, metadata !DIExpression()), !dbg !2216
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbd) #6, !dbg !2217
  tail call void @llvm.dbg.declare(metadata ptr %dbd, metadata !2209, metadata !DIExpression()), !dbg !2218
  call void @llvm.lifetime.start.p0(i64 8, ptr %statement) #6, !dbg !2219
  tail call void @llvm.dbg.declare(metadata ptr %statement, metadata !2210, metadata !DIExpression()), !dbg !2220
  call void @llvm.lifetime.start.p0(i64 4, ptr %rows) #6, !dbg !2221
  tail call void @llvm.dbg.declare(metadata ptr %rows, metadata !2211, metadata !DIExpression()), !dbg !2222
  store i32 0, ptr %rows, align 4, !dbg !2222, !tbaa !1157
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #6, !dbg !2223
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !2212, metadata !DIExpression()), !dbg !2224
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2225, !tbaa !934
  %per_dir_config = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 54, !dbg !2225
  %1 = load ptr, ptr %per_dir_config, align 8, !dbg !2225, !tbaa !1372
  %2 = load i32, ptr getelementptr inbounds (%struct.module_struct, ptr @session_dbd_module, i32 0, i32 2), align 8, !dbg !2225, !tbaa !1376
  %idxprom = sext i32 %2 to i64, !dbg !2225
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom, !dbg !2225
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2225, !tbaa !934
  store ptr %3, ptr %conf, align 8, !dbg !2224, !tbaa !934
  %4 = load ptr, ptr %conf, align 8, !dbg !2226, !tbaa !934
  %deletelabel = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %4, i32 0, i32 13, !dbg !2228
  %5 = load ptr, ptr %deletelabel, align 8, !dbg !2228, !tbaa !964
  %cmp = icmp eq ptr %5, null, !dbg !2229
  br i1 %cmp, label %if.then, label %if.end, !dbg !2230

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2231

do.body:                                          ; preds = %if.then
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_dbd_module, i64 8), ptr null), label %cond.true, label %cond.false, !dbg !2233

cond.true:                                        ; preds = %do.body
  %6 = load i32, ptr getelementptr (i8, ptr @session_dbd_module, i64 8), align 4, !dbg !2233, !tbaa !1157
  br label %cond.end, !dbg !2233

cond.false:                                       ; preds = %do.body
  br label %cond.end, !dbg !2233

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ -1, %cond.false ], !dbg !2233
  %7 = load ptr, ptr %r.addr, align 8, !dbg !2233, !tbaa !934
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 351, i32 noundef %cond, i32 noundef 3, i32 noundef 0, ptr noundef %7, ptr noundef @.str.40), !dbg !2233
  br label %do.cond, !dbg !2236

do.cond:                                          ; preds = %cond.end
  br label %do.end, !dbg !2236

do.end:                                           ; preds = %do.cond
  store i32 20014, ptr %retval, align 4, !dbg !2237
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2237

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %r.addr, align 8, !dbg !2238, !tbaa !934
  %9 = load ptr, ptr %conf, align 8, !dbg !2239, !tbaa !934
  %deletelabel1 = getelementptr inbounds %struct.session_dbd_dir_conf, ptr %9, i32 0, i32 13, !dbg !2240
  %10 = load ptr, ptr %deletelabel1, align 8, !dbg !2240, !tbaa !964
  %call = call i32 @dbd_init(ptr noundef %8, ptr noundef %10, ptr noundef %dbd, ptr noundef %statement), !dbg !2241
  store i32 %call, ptr %rv, align 4, !dbg !2242, !tbaa !1157
  %11 = load i32, ptr %rv, align 4, !dbg !2243, !tbaa !1157
  %cmp2 = icmp ne i32 %11, 0, !dbg !2245
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !2246

if.then3:                                         ; preds = %if.end
  %12 = load i32, ptr %rv, align 4, !dbg !2247, !tbaa !1157
  store i32 %12, ptr %retval, align 4, !dbg !2249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2249

if.end4:                                          ; preds = %if.end
  %13 = load ptr, ptr %dbd, align 8, !dbg !2250, !tbaa !934
  %driver = getelementptr inbounds %struct.ap_dbd_t, ptr %13, i32 0, i32 1, !dbg !2251
  %14 = load ptr, ptr %driver, align 8, !dbg !2251, !tbaa !1849
  %15 = load ptr, ptr %r.addr, align 8, !dbg !2252, !tbaa !934
  %pool = getelementptr inbounds %struct.request_rec, ptr %15, i32 0, i32 0, !dbg !2253
  %16 = load ptr, ptr %pool, align 8, !dbg !2253, !tbaa !1433
  %17 = load ptr, ptr %dbd, align 8, !dbg !2254, !tbaa !934
  %handle = getelementptr inbounds %struct.ap_dbd_t, ptr %17, i32 0, i32 0, !dbg !2255
  %18 = load ptr, ptr %handle, align 8, !dbg !2255, !tbaa !1855
  %19 = load ptr, ptr %statement, align 8, !dbg !2256, !tbaa !934
  %20 = load ptr, ptr %key.addr, align 8, !dbg !2257, !tbaa !934
  %call5 = call i32 (ptr, ptr, ptr, ptr, ptr, ...) @apr_dbd_pvbquery(ptr noundef %14, ptr noundef %16, ptr noundef %18, ptr noundef %rows, ptr noundef %19, ptr noundef %20, ptr noundef null), !dbg !2258
  store i32 %call5, ptr %rv, align 4, !dbg !2259, !tbaa !1157
  %21 = load i32, ptr %rv, align 4, !dbg !2260, !tbaa !1157
  %cmp6 = icmp ne i32 %21, 0, !dbg !2262
  br i1 %cmp6, label %if.then7, label %if.end15, !dbg !2263

if.then7:                                         ; preds = %if.end4
  br label %do.body8, !dbg !2264

do.body8:                                         ; preds = %if.then7
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_dbd_module, i64 8), ptr null), label %cond.true9, label %cond.false10, !dbg !2266

cond.true9:                                       ; preds = %do.body8
  %22 = load i32, ptr getelementptr (i8, ptr @session_dbd_module, i64 8), align 4, !dbg !2266, !tbaa !1157
  br label %cond.end11, !dbg !2266

cond.false10:                                     ; preds = %do.body8
  br label %cond.end11, !dbg !2266

cond.end11:                                       ; preds = %cond.false10, %cond.true9
  %cond12 = phi i32 [ %22, %cond.true9 ], [ -1, %cond.false10 ], !dbg !2266
  %23 = load i32, ptr %rv, align 4, !dbg !2266, !tbaa !1157
  %24 = load ptr, ptr %r.addr, align 8, !dbg !2266, !tbaa !934
  %25 = load ptr, ptr %key.addr, align 8, !dbg !2266, !tbaa !934
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 366, i32 noundef %cond12, i32 noundef 3, i32 noundef %23, ptr noundef %24, ptr noundef @.str.41, ptr noundef %25), !dbg !2266
  br label %do.cond13, !dbg !2269

do.cond13:                                        ; preds = %cond.end11
  br label %do.end14, !dbg !2269

do.end14:                                         ; preds = %do.cond13
  %26 = load i32, ptr %rv, align 4, !dbg !2270, !tbaa !1157
  store i32 %26, ptr %retval, align 4, !dbg !2271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2271

if.end15:                                         ; preds = %if.end4
  store i32 0, ptr %retval, align 4, !dbg !2272
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2272

cleanup:                                          ; preds = %if.end15, %do.end14, %if.then3, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #6, !dbg !2273
  call void @llvm.lifetime.end.p0(i64 4, ptr %rows) #6, !dbg !2273
  call void @llvm.lifetime.end.p0(i64 8, ptr %statement) #6, !dbg !2273
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbd) #6, !dbg !2273
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6, !dbg !2273
  %27 = load i32, ptr %retval, align 4, !dbg !2273
  ret i32 %27, !dbg !2273
}

declare !dbg !2274 i32 @ap_cookie_write(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ...) #2

declare !dbg !2277 i32 @ap_cookie_write2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ...) #2

declare !dbg !2278 i32 @apr_dbd_pvbquery(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @dbd_clean(ptr noundef %p, ptr noundef %s) #0 !dbg !2281 {
entry:
  %p.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2285, metadata !DIExpression()), !dbg !2287
  store ptr %s, ptr %s.addr, align 8, !tbaa !934
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2286, metadata !DIExpression()), !dbg !2288
  ret i32 70023, !dbg !2289
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!923, !924, !925, !926, !927}
!llvm.ident = !{!928}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 632, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "mod_session_dbd.c", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src/modules/session", checksumkind: CSK_MD5, checksum: "e119f87b8bf915b1f4d9941d4a68008e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 18)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "session_dbd_cmds", scope: !9, file: !2, line: 598, type: !920, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !159, globals: !629, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !28, !43, !55, !60, !65, !123, !147}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cmd_how", file: !12, line: 49, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "include/http_config.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "478a5811bd142d8034ca8ebc320f852f")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!15 = !DIEnumerator(name: "RAW_ARGS", value: 0)
!16 = !DIEnumerator(name: "TAKE1", value: 1)
!17 = !DIEnumerator(name: "TAKE2", value: 2)
!18 = !DIEnumerator(name: "ITERATE", value: 3)
!19 = !DIEnumerator(name: "ITERATE2", value: 4)
!20 = !DIEnumerator(name: "FLAG", value: 5)
!21 = !DIEnumerator(name: "NO_ARGS", value: 6)
!22 = !DIEnumerator(name: "TAKE12", value: 7)
!23 = !DIEnumerator(name: "TAKE3", value: 8)
!24 = !DIEnumerator(name: "TAKE23", value: 9)
!25 = !DIEnumerator(name: "TAKE123", value: 10)
!26 = !DIEnumerator(name: "TAKE13", value: 11)
!27 = !DIEnumerator(name: "TAKE_ARGV", value: 12)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 46, baseType: !13, size: 32, elements: !30)
!29 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!31 = !DIEnumerator(name: "_ISupper", value: 256)
!32 = !DIEnumerator(name: "_ISlower", value: 512)
!33 = !DIEnumerator(name: "_ISalpha", value: 1024)
!34 = !DIEnumerator(name: "_ISdigit", value: 2048)
!35 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!36 = !DIEnumerator(name: "_ISspace", value: 8192)
!37 = !DIEnumerator(name: "_ISprint", value: 16384)
!38 = !DIEnumerator(name: "_ISgraph", value: 32768)
!39 = !DIEnumerator(name: "_ISblank", value: 1)
!40 = !DIEnumerator(name: "_IScntrl", value: 2)
!41 = !DIEnumerator(name: "_ISpunct", value: 4)
!42 = !DIEnumerator(name: "_ISalnum", value: 8)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !44, line: 1251, baseType: !13, size: 32, elements: !45)
!44 = !DIFile(filename: "include/httpd.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "13796706810e88ffd526cf3216ebbaab")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54}
!46 = !DIEnumerator(name: "CONN_STATE_CHECK_REQUEST_LINE_READABLE", value: 0)
!47 = !DIEnumerator(name: "CONN_STATE_READ_REQUEST_LINE", value: 1)
!48 = !DIEnumerator(name: "CONN_STATE_HANDLER", value: 2)
!49 = !DIEnumerator(name: "CONN_STATE_WRITE_COMPLETION", value: 3)
!50 = !DIEnumerator(name: "CONN_STATE_SUSPENDED", value: 4)
!51 = !DIEnumerator(name: "CONN_STATE_LINGER", value: 5)
!52 = !DIEnumerator(name: "CONN_STATE_LINGER_NORMAL", value: 6)
!53 = !DIEnumerator(name: "CONN_STATE_LINGER_SHORT", value: 7)
!54 = !DIEnumerator(name: "CONN_STATE_NUM", value: 8)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !44, line: 1264, baseType: !13, size: 32, elements: !56)
!56 = !{!57, !58, !59}
!57 = !DIEnumerator(name: "CONN_SENSE_DEFAULT", value: 0)
!58 = !DIEnumerator(name: "CONN_SENSE_WANT_READ", value: 1)
!59 = !DIEnumerator(name: "CONN_SENSE_WANT_WRITE", value: 2)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !44, line: 1136, baseType: !13, size: 32, elements: !61)
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "AP_CONN_UNKNOWN", value: 0)
!63 = !DIEnumerator(name: "AP_CONN_CLOSE", value: 1)
!64 = !DIEnumerator(name: "AP_CONN_KEEPALIVE", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !67, file: !66, line: 151, baseType: !13, size: 32, elements: !144)
!66 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_buckets.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "afcd28b2e200d46cb3a438f3ad8fc6de")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_type_t", file: !66, line: 131, size: 448, elements: !68)
!68 = !{!69, !72, !74, !75, !80, !127, !135, !139}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !67, file: !66, line: 135, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "num_func", scope: !67, file: !66, line: 140, baseType: !73, size: 32, offset: 64)
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "is_metadata", scope: !67, file: !66, line: 156, baseType: !65, size: 32, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !67, file: !66, line: 164, baseType: !76, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !79}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !67, file: !66, line: 176, baseType: !81, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !86, !120, !121, !122}
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_status_t", file: !85, line: 44, baseType: !73)
!85 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_errno.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "571a7b9d4a9f11f6d27db63c8ba4bc85")
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_bucket", file: !66, line: 121, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket", file: !66, line: 224, size: 512, elements: !89)
!89 = !{!90, !97, !101, !107, !114, !115, !116}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !88, file: !66, line: 226, baseType: !91, size: 128)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !66, line: 226, size: 128, elements: !92)
!92 = !{!93, !96}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !66, line: 226, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !91, file: !66, line: 226, baseType: !94, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !66, line: 228, baseType: !98, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_bucket_type_t", file: !66, line: 126, baseType: !67)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !88, file: !66, line: 234, baseType: !102, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_size_t", file: !103, line: 379, baseType: !104)
!103 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "73077acfd8398d55139f48047843856b")
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 70, baseType: !106)
!105 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!106 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !88, file: !66, line: 242, baseType: !108, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_off_t", file: !103, line: 381, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !110, line: 85, baseType: !111)
!110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !112, line: 152, baseType: !113)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!113 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !88, file: !66, line: 244, baseType: !79, size: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !88, file: !66, line: 252, baseType: !76, size: 64, offset: 384)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !88, file: !66, line: 254, baseType: !117, size: 64, offset: 448)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_bucket_alloc_t", file: !66, line: 123, baseType: !119)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_alloc_t", file: !66, line: 123, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_read_type_e", file: !66, line: 60, baseType: !123)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !66, line: 57, baseType: !13, size: 32, elements: !124)
!124 = !{!125, !126}
!125 = !DIEnumerator(name: "APR_BLOCK_READ", value: 0)
!126 = !DIEnumerator(name: "APR_NONBLOCK_READ", value: 1)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "setaside", scope: !67, file: !66, line: 192, baseType: !128, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!84, !86, !131}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_pool_t", file: !133, line: 60, baseType: !134)
!133 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_pools.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "ca846d53df1698194c1a577ccf147813")
!134 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_pool_t", file: !133, line: 60, flags: DIFlagFwdDecl)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !67, file: !66, line: 203, baseType: !136, size: 64, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!84, !86, !102}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !67, file: !66, line: 211, baseType: !140, size: 64, offset: 384)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!84, !86, !143}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!144 = !{!145, !146}
!145 = !DIEnumerator(name: "APR_BUCKET_DATA", value: 0)
!146 = !DIEnumerator(name: "APR_BUCKET_METADATA", value: 1)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 62, baseType: !13, size: 32, elements: !149)
!148 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_file_info.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "58895203e42ced4eaee1557b60315f00")
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158}
!150 = !DIEnumerator(name: "APR_NOFILE", value: 0)
!151 = !DIEnumerator(name: "APR_REG", value: 1)
!152 = !DIEnumerator(name: "APR_DIR", value: 2)
!153 = !DIEnumerator(name: "APR_CHR", value: 3)
!154 = !DIEnumerator(name: "APR_BLK", value: 4)
!155 = !DIEnumerator(name: "APR_PIPE", value: 5)
!156 = !DIEnumerator(name: "APR_LNK", value: 6)
!157 = !DIEnumerator(name: "APR_SOCK", value: 7)
!158 = !DIEnumerator(name: "APR_UNKFILE", value: 127)
!159 = !{!79, !160, !73, !178, !179, !180, !181, !215, !207, !216, !383}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "session_dbd_dir_conf", file: !2, line: 48, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 33, size: 768, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !2, line: 34, baseType: !70, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name_set", scope: !162, file: !2, line: 35, baseType: !73, size: 32, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "name_attrs", scope: !162, file: !2, line: 36, baseType: !70, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "name2", scope: !162, file: !2, line: 37, baseType: !70, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "name2_set", scope: !162, file: !2, line: 38, baseType: !73, size: 32, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "name2_attrs", scope: !162, file: !2, line: 39, baseType: !70, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "peruser", scope: !162, file: !2, line: 40, baseType: !73, size: 32, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "peruser_set", scope: !162, file: !2, line: 41, baseType: !73, size: 32, offset: 416)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !162, file: !2, line: 42, baseType: !73, size: 32, offset: 448)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "remove_set", scope: !162, file: !2, line: 43, baseType: !73, size: 32, offset: 480)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "selectlabel", scope: !162, file: !2, line: 44, baseType: !70, size: 64, offset: 512)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "insertlabel", scope: !162, file: !2, line: 45, baseType: !70, size: 64, offset: 576)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "updatelabel", scope: !162, file: !2, line: 46, baseType: !70, size: 64, offset: 640)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "deletelabel", scope: !162, file: !2, line: 47, baseType: !70, size: 64, offset: 704)
!178 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!179 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "session_rec", file: !183, line: 98, baseType: !184)
!183 = !DIFile(filename: "./mod_session.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src/modules/session", checksumkind: CSK_MD5, checksum: "2f96d0badaf5cfa127e9fd7fcb409f35")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !183, line: 84, size: 576, elements: !185)
!185 = !{!186, !187, !197, !198, !203, !204, !211, !212, !213, !214}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !184, file: !183, line: 85, baseType: !131, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !184, file: !183, line: 86, baseType: !188, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uuid_t", file: !190, line: 43, baseType: !191)
!190 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_uuid.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "02e66ef2200a85dd769e8f697000309e")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !190, line: 41, size: 128, elements: !192)
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !191, file: !190, line: 42, baseType: !194, size: 128)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 128, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 16)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "remote_user", scope: !184, file: !183, line: 87, baseType: !70, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !184, file: !183, line: 88, baseType: !199, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_table_t", file: !201, line: 56, baseType: !202)
!201 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_tables.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "82dd315cfdbab9381cd05a1d2abe34a2")
!202 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_table_t", file: !201, line: 56, flags: DIFlagFwdDecl)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "encoded", scope: !184, file: !183, line: 89, baseType: !70, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !184, file: !183, line: 90, baseType: !205, size: 64, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_time_t", file: !206, line: 45, baseType: !207)
!206 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_time.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "1a8b9732d4ee010f71e3eb03e6e3a16e")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_int64_t", file: !103, line: 371, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !209, line: 27, baseType: !210)
!209 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !112, line: 44, baseType: !113)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "maxage", scope: !184, file: !183, line: 91, baseType: !113, size: 64, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !184, file: !183, line: 93, baseType: !73, size: 32, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !184, file: !183, line: 94, baseType: !73, size: 32, offset: 480)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !184, file: !183, line: 96, baseType: !73, size: 32, offset: 512)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_OFN_ap_dbd_prepare_t", file: !218, line: 116, baseType: !219)
!218 = !DIFile(filename: "database/mod_dbd.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src/modules", checksumkind: CSK_MD5, checksum: "09cf755ea018fe3ee484fb4f061fd873")
!219 = !DISubroutineType(types: !220)
!220 = !{null, !221, !70, !70}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "server_rec", file: !44, line: 807, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "server_rec", file: !44, line: 1315, size: 1536, elements: !224)
!224 = !{!225, !237, !238, !239, !244, !251, !254, !255, !256, !257, !258, !262, !263, !264, !265, !360, !362, !363, !364, !365, !375, !376, !377, !378, !379, !380, !381, !382}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !223, file: !44, line: 1317, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "process_rec", file: !44, line: 805, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "process_rec", file: !44, line: 822, size: 320, elements: !229)
!229 = !{!230, !231, !232, !233, !236}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !228, file: !44, line: 824, baseType: !131, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "pconf", scope: !228, file: !44, line: 826, baseType: !131, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "short_name", scope: !228, file: !44, line: 828, baseType: !70, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !228, file: !44, line: 830, baseType: !234, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !228, file: !44, line: 832, baseType: !73, size: 32, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !44, line: 1319, baseType: !221, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "error_fname", scope: !223, file: !44, line: 1324, baseType: !215, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "error_log", scope: !223, file: !44, line: 1326, baseType: !240, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_file_t", file: !242, line: 188, baseType: !243)
!242 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_file_io.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "9f1a845f7255d07e28e3a10d24320b5d")
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_file_t", file: !148, line: 212, flags: DIFlagFwdDecl)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !223, file: !44, line: 1328, baseType: !245, size: 128, offset: 256)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_logconf", file: !44, line: 1305, size: 128, elements: !246)
!246 = !{!247, !250}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "module_levels", scope: !245, file: !44, line: 1307, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !245, file: !44, line: 1310, baseType: !73, size: 32, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "module_config", scope: !223, file: !44, line: 1334, baseType: !252, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DICompositeType(tag: DW_TAG_structure_type, name: "ap_conf_vector_t", file: !44, line: 791, flags: DIFlagFwdDecl)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_defaults", scope: !223, file: !44, line: 1336, baseType: !252, size: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "defn_name", scope: !223, file: !44, line: 1339, baseType: !70, size: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "defn_line_number", scope: !223, file: !44, line: 1341, baseType: !13, size: 32, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !223, file: !44, line: 1343, baseType: !4, size: 8, offset: 608)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !223, file: !44, line: 1349, baseType: !259, size: 16, offset: 624)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_port_t", file: !260, line: 230, baseType: !261)
!260 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_network_io.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "d28b53dbcb33f6acce926c2efb3f7365")
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uint16_t", file: !103, line: 331, baseType: !179)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "server_scheme", scope: !223, file: !44, line: 1351, baseType: !70, size: 64, offset: 640)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "server_admin", scope: !223, file: !44, line: 1356, baseType: !215, size: 64, offset: 704)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "server_hostname", scope: !223, file: !44, line: 1358, baseType: !215, size: 64, offset: 768)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !223, file: !44, line: 1363, baseType: !266, size: 64, offset: 832)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "server_addr_rec", file: !44, line: 1293, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "server_addr_rec", file: !44, line: 1294, size: 256, elements: !269)
!269 = !{!270, !271, !272, !359}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !44, line: 1296, baseType: !266, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "virthost", scope: !268, file: !44, line: 1298, baseType: !215, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "host_addr", scope: !268, file: !44, line: 1300, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_sockaddr_t", file: !260, line: 235, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_sockaddr_t", file: !260, line: 239, size: 1536, elements: !276)
!276 = !{!277, !278, !279, !280, !281, !283, !288, !289, !290, !291, !292}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !275, file: !260, line: 241, baseType: !131, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !275, file: !260, line: 243, baseType: !215, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "servname", scope: !275, file: !260, line: 245, baseType: !215, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !275, file: !260, line: 247, baseType: !259, size: 16, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !275, file: !260, line: 249, baseType: !282, size: 32, offset: 224)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_int32_t", file: !103, line: 333, baseType: !73)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "salen", scope: !275, file: !260, line: 251, baseType: !284, size: 32, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_socklen_t", file: !103, line: 382, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !286, line: 33, baseType: !287)
!286 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !112, line: 210, baseType: !13)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ipaddr_len", scope: !275, file: !260, line: 253, baseType: !73, size: 32, offset: 288)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "addr_str_len", scope: !275, file: !260, line: 256, baseType: !73, size: 32, offset: 320)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ipaddr_ptr", scope: !275, file: !260, line: 259, baseType: !79, size: 64, offset: 384)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !275, file: !260, line: 262, baseType: !273, size: 64, offset: 448)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !275, file: !260, line: 280, baseType: !293, size: 1024, offset: 512)
!293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !275, file: !260, line: 264, size: 1024, elements: !294)
!294 = !{!295, !318, !341, !350}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !293, file: !260, line: 266, baseType: !296, size: 128)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !297, line: 245, size: 128, elements: !298)
!297 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!298 = !{!299, !302, !307, !314}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !296, file: !297, line: 247, baseType: !300, size: 16)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !301, line: 28, baseType: !179)
!301 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!302 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !296, file: !297, line: 248, baseType: !303, size: 16, offset: 16)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !297, line: 123, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !305, line: 25, baseType: !306)
!305 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !112, line: 40, baseType: !179)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !296, file: !297, line: 249, baseType: !308, size: 32, offset: 32)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !297, line: 31, size: 32, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !308, file: !297, line: 33, baseType: !311, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !297, line: 30, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !305, line: 26, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !112, line: 42, baseType: !13)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !296, file: !297, line: 252, baseType: !315, size: 64, offset: 64)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 64, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 8)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sin6", scope: !293, file: !260, line: 269, baseType: !319, size: 224)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !297, line: 260, size: 224, elements: !320)
!320 = !{!321, !322, !323, !324, !340}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !319, file: !297, line: 262, baseType: !300, size: 16)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !319, file: !297, line: 263, baseType: !303, size: 16, offset: 16)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !319, file: !297, line: 264, baseType: !312, size: 32, offset: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !319, file: !297, line: 265, baseType: !325, size: 128, offset: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !297, line: 219, size: 128, elements: !326)
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !325, file: !297, line: 226, baseType: !328, size: 128)
!328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !325, file: !297, line: 221, size: 128, elements: !329)
!329 = !{!330, !334, !336}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !328, file: !297, line: 223, baseType: !331, size: 128)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 128, elements: !195)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !305, line: 24, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !112, line: 38, baseType: !178)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !328, file: !297, line: 224, baseType: !335, size: 128)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 128, elements: !316)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !328, file: !297, line: 225, baseType: !337, size: 128)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 128, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 4)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !319, file: !297, line: 266, baseType: !312, size: 32, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "sas", scope: !293, file: !260, line: 274, baseType: !342, size: 1024)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !286, line: 193, size: 1024, elements: !343)
!343 = !{!344, !345, !349}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !342, file: !286, line: 195, baseType: !300, size: 16)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !342, file: !286, line: 196, baseType: !346, size: 944, offset: 16)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 944, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 118)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !342, file: !286, line: 197, baseType: !106, size: 64, offset: 960)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "unx", scope: !293, file: !260, line: 278, baseType: !351, size: 880)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !352, line: 29, size: 880, elements: !353)
!352 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "", checksumkind: CSK_MD5, checksum: "543d98cd612c9215c9333043f81a0cd3")
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !351, file: !352, line: 31, baseType: !300, size: 16)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !351, file: !352, line: 32, baseType: !356, size: 864, offset: 16)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 864, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 108)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "host_port", scope: !268, file: !44, line: 1302, baseType: !259, size: 16, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !223, file: !44, line: 1365, baseType: !361, size: 64, offset: 896)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_interval_time_t", file: !206, line: 55, baseType: !207)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout", scope: !223, file: !44, line: 1367, baseType: !361, size: 64, offset: 960)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_max", scope: !223, file: !44, line: 1369, baseType: !73, size: 32, offset: 1024)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !223, file: !44, line: 1371, baseType: !73, size: 32, offset: 1056)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !223, file: !44, line: 1374, baseType: !366, size: 64, offset: 1088)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_array_header_t", file: !201, line: 59, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_array_header_t", file: !201, line: 62, size: 256, elements: !369)
!369 = !{!370, !371, !372, !373, !374}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !368, file: !201, line: 64, baseType: !131, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "elt_size", scope: !368, file: !201, line: 66, baseType: !73, size: 32, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !368, file: !201, line: 68, baseType: !73, size: 32, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !368, file: !201, line: 70, baseType: !73, size: 32, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !368, file: !201, line: 72, baseType: !215, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wild_names", scope: !223, file: !44, line: 1376, baseType: !366, size: 64, offset: 1152)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !223, file: !44, line: 1379, baseType: !70, size: 64, offset: 1216)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pathlen", scope: !223, file: !44, line: 1381, baseType: !73, size: 32, offset: 1280)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_line", scope: !223, file: !44, line: 1384, baseType: !73, size: 32, offset: 1312)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_fieldsize", scope: !223, file: !44, line: 1386, baseType: !73, size: 32, offset: 1344)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_fields", scope: !223, file: !44, line: 1388, baseType: !73, size: 32, offset: 1376)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !223, file: !44, line: 1391, baseType: !79, size: 64, offset: 1408)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout_set", scope: !223, file: !44, line: 1396, baseType: !13, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_OFN_ap_dbd_acquire_t", file: !218, line: 114, baseType: !385)
!385 = !DISubroutineType(types: !386)
!386 = !{!387, !407}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_dbd_t", file: !218, line: 81, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !218, line: 76, size: 256, elements: !390)
!390 = !{!391, !396, !401, !406}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !389, file: !218, line: 77, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_dbd_t", file: !394, line: 83, baseType: !395)
!394 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_dbd.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "7b373cd8c49a6d7a9dfdb789b761eade")
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_dbd_t", file: !394, line: 83, flags: DIFlagFwdDecl)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !389, file: !218, line: 78, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_dbd_driver_t", file: !394, line: 82, baseType: !400)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_dbd_driver_t", file: !394, line: 82, flags: DIFlagFwdDecl)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "prepared", scope: !389, file: !218, line: 79, baseType: !402, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_hash_t", file: !404, line: 52, baseType: !405)
!404 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_hash.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "200f319f929840eb1031e0c6813d7a15")
!405 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_hash_t", file: !404, line: 52, flags: DIFlagFwdDecl)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !389, file: !218, line: 80, baseType: !131, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_rec", file: !44, line: 811, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_rec", file: !44, line: 838, size: 5888, elements: !410)
!410 = !{!411, !412, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !549, !550, !551, !552, !553, !554, !555, !560, !581, !618, !619, !620, !621, !622, !623, !624}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !409, file: !44, line: 840, baseType: !131, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !409, file: !44, line: 842, baseType: !413, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_rec", file: !44, line: 809, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn_rec", file: !44, line: 1145, size: 1664, elements: !416)
!416 = !{!417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !433, !434, !435, !437, !446, !447, !448, !449, !450, !451, !453, !454, !457, !458, !463, !464}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !415, file: !44, line: 1147, baseType: !131, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "base_server", scope: !415, file: !44, line: 1149, baseType: !221, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "vhost_lookup_data", scope: !415, file: !44, line: 1151, baseType: !79, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr", scope: !415, file: !44, line: 1155, baseType: !273, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "client_addr", scope: !415, file: !44, line: 1159, baseType: !273, size: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "client_ip", scope: !415, file: !44, line: 1164, baseType: !215, size: 64, offset: 320)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "remote_host", scope: !415, file: !44, line: 1168, baseType: !215, size: 64, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "remote_logname", scope: !415, file: !44, line: 1171, baseType: !215, size: 64, offset: 448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !415, file: !44, line: 1174, baseType: !215, size: 64, offset: 512)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "local_host", scope: !415, file: !44, line: 1177, baseType: !215, size: 64, offset: 576)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !415, file: !44, line: 1180, baseType: !113, size: 64, offset: 640)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "conn_config", scope: !415, file: !44, line: 1183, baseType: !252, size: 64, offset: 704)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !415, file: !44, line: 1186, baseType: !199, size: 64, offset: 768)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "input_filters", scope: !415, file: !44, line: 1188, baseType: !431, size: 64, offset: 832)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "ap_filter_t", file: !44, line: 1063, flags: DIFlagFwdDecl)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "output_filters", scope: !415, file: !44, line: 1190, baseType: !431, size: 64, offset: 896)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sbh", scope: !415, file: !44, line: 1192, baseType: !79, size: 64, offset: 960)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_alloc", scope: !415, file: !44, line: 1194, baseType: !436, size: 64, offset: 1024)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !415, file: !44, line: 1196, baseType: !438, size: 64, offset: 1088)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_state_t", file: !44, line: 813, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn_state_t", file: !44, line: 1273, size: 64, elements: !441)
!441 = !{!442, !444}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !440, file: !44, line: 1275, baseType: !443, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_state_e", file: !44, line: 1262, baseType: !43)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sense", scope: !440, file: !44, line: 1277, baseType: !445, size: 32, offset: 32)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_sense_e", file: !44, line: 1268, baseType: !55)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "data_in_input_filters", scope: !415, file: !44, line: 1198, baseType: !73, size: 32, offset: 1152)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "data_in_output_filters", scope: !415, file: !44, line: 1200, baseType: !73, size: 32, offset: 1184)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "clogging_input_filters", scope: !415, file: !44, line: 1205, baseType: !13, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "double_reverse", scope: !415, file: !44, line: 1209, baseType: !73, size: 2, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "aborted", scope: !415, file: !44, line: 1212, baseType: !13, size: 32, offset: 1248)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !415, file: !44, line: 1216, baseType: !452, size: 32, offset: 1280)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_conn_keepalive_e", file: !44, line: 1140, baseType: !60)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "keepalives", scope: !415, file: !44, line: 1219, baseType: !73, size: 32, offset: 1312)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !415, file: !44, line: 1223, baseType: !455, size: 64, offset: 1344)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "log_id", scope: !415, file: !44, line: 1228, baseType: !70, size: 64, offset: 1408)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "current_thread", scope: !415, file: !44, line: 1237, baseType: !459, size: 64, offset: 1472)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_thread_t", file: !461, line: 178, baseType: !462)
!461 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_thread_proc.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "86521d0dbb7f1fbad577c4bb2abede6c")
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_thread_t", file: !461, line: 178, flags: DIFlagFwdDecl)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !415, file: !44, line: 1241, baseType: !413, size: 64, offset: 1536)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "outgoing", scope: !415, file: !44, line: 1243, baseType: !73, size: 32, offset: 1600)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !409, file: !44, line: 844, baseType: !221, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !409, file: !44, line: 847, baseType: !407, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !409, file: !44, line: 849, baseType: !407, size: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !409, file: !44, line: 853, baseType: !407, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "the_request", scope: !409, file: !44, line: 859, baseType: !215, size: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "assbackwards", scope: !409, file: !44, line: 861, baseType: !73, size: 32, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "proxyreq", scope: !409, file: !44, line: 866, baseType: !73, size: 32, offset: 480)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "header_only", scope: !409, file: !44, line: 868, baseType: !73, size: 32, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "proto_num", scope: !409, file: !44, line: 870, baseType: !73, size: 32, offset: 544)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !409, file: !44, line: 872, baseType: !215, size: 64, offset: 576)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !409, file: !44, line: 876, baseType: !70, size: 64, offset: 640)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "request_time", scope: !409, file: !44, line: 879, baseType: !205, size: 64, offset: 704)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !409, file: !44, line: 882, baseType: !70, size: 64, offset: 768)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !409, file: !44, line: 884, baseType: !73, size: 32, offset: 832)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "method_number", scope: !409, file: !44, line: 891, baseType: !73, size: 32, offset: 864)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !409, file: !44, line: 893, baseType: !70, size: 64, offset: 896)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !409, file: !44, line: 915, baseType: !207, size: 64, offset: 960)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_xmethods", scope: !409, file: !44, line: 917, baseType: !366, size: 64, offset: 1024)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_methods", scope: !409, file: !44, line: 919, baseType: !484, size: 64, offset: 1088)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_method_list_t", file: !44, line: 634, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_method_list_t", file: !44, line: 643, size: 128, elements: !487)
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "method_mask", scope: !486, file: !44, line: 645, baseType: !207, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "method_list", scope: !486, file: !44, line: 647, baseType: !366, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "sent_bodyct", scope: !409, file: !44, line: 922, baseType: !108, size: 64, offset: 1152)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_sent", scope: !409, file: !44, line: 924, baseType: !108, size: 64, offset: 1216)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !409, file: !44, line: 926, baseType: !205, size: 64, offset: 1280)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !409, file: !44, line: 931, baseType: !70, size: 64, offset: 1344)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "clength", scope: !409, file: !44, line: 933, baseType: !108, size: 64, offset: 1408)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !409, file: !44, line: 935, baseType: !73, size: 32, offset: 1472)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "read_body", scope: !409, file: !44, line: 940, baseType: !73, size: 32, offset: 1504)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "read_chunked", scope: !409, file: !44, line: 942, baseType: !73, size: 32, offset: 1536)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "expecting_100", scope: !409, file: !44, line: 944, baseType: !13, size: 32, offset: 1568)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "kept_body", scope: !409, file: !44, line: 946, baseType: !500, size: 64, offset: 1600)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_bucket_brigade", file: !66, line: 119, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_brigade", file: !66, line: 258, size: 256, elements: !503)
!503 = !{!504, !505, !510}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !502, file: !66, line: 264, baseType: !131, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !502, file: !66, line: 273, baseType: !506, size: 128, offset: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_list", file: !66, line: 273, size: 128, elements: !507)
!507 = !{!508, !509}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !506, file: !66, line: 273, baseType: !94, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !506, file: !66, line: 273, baseType: !94, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_alloc", scope: !502, file: !66, line: 275, baseType: !117, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "body_table", scope: !409, file: !44, line: 950, baseType: !199, size: 64, offset: 1664)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !409, file: !44, line: 952, baseType: !108, size: 64, offset: 1728)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "read_length", scope: !409, file: !44, line: 954, baseType: !108, size: 64, offset: 1792)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !409, file: !44, line: 969, baseType: !199, size: 64, offset: 1856)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "headers_out", scope: !409, file: !44, line: 971, baseType: !199, size: 64, offset: 1920)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "err_headers_out", scope: !409, file: !44, line: 974, baseType: !199, size: 64, offset: 1984)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "subprocess_env", scope: !409, file: !44, line: 976, baseType: !199, size: 64, offset: 2048)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !409, file: !44, line: 978, baseType: !199, size: 64, offset: 2112)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !409, file: !44, line: 985, baseType: !70, size: 64, offset: 2176)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !409, file: !44, line: 987, baseType: !70, size: 64, offset: 2240)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "content_encoding", scope: !409, file: !44, line: 990, baseType: !70, size: 64, offset: 2304)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "content_languages", scope: !409, file: !44, line: 992, baseType: !366, size: 64, offset: 2368)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "vlist_validator", scope: !409, file: !44, line: 995, baseType: !215, size: 64, offset: 2432)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !409, file: !44, line: 998, baseType: !215, size: 64, offset: 2496)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ap_auth_type", scope: !409, file: !44, line: 1000, baseType: !215, size: 64, offset: 2560)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "unparsed_uri", scope: !409, file: !44, line: 1007, baseType: !215, size: 64, offset: 2624)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !409, file: !44, line: 1009, baseType: !215, size: 64, offset: 2688)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !409, file: !44, line: 1011, baseType: !215, size: 64, offset: 2752)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_filename", scope: !409, file: !44, line: 1015, baseType: !215, size: 64, offset: 2816)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "path_info", scope: !409, file: !44, line: 1017, baseType: !215, size: 64, offset: 2880)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !409, file: !44, line: 1019, baseType: !215, size: 64, offset: 2944)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "used_path_info", scope: !409, file: !44, line: 1029, baseType: !73, size: 32, offset: 3008)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "eos_sent", scope: !409, file: !44, line: 1032, baseType: !73, size: 32, offset: 3040)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "per_dir_config", scope: !409, file: !44, line: 1040, baseType: !252, size: 64, offset: 3072)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "request_config", scope: !409, file: !44, line: 1042, baseType: !252, size: 64, offset: 3136)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !409, file: !44, line: 1047, baseType: !455, size: 64, offset: 3200)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "log_id", scope: !409, file: !44, line: 1052, baseType: !70, size: 64, offset: 3264)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "htaccess", scope: !409, file: !44, line: 1060, baseType: !539, size: 64, offset: 3328)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htaccess_result", file: !44, line: 781, size: 320, elements: !542)
!542 = !{!543, !544, !545, !546, !547, !548}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !541, file: !44, line: 783, baseType: !70, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "override", scope: !541, file: !44, line: 785, baseType: !73, size: 32, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "override_opts", scope: !541, file: !44, line: 787, baseType: !73, size: 32, offset: 96)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "override_list", scope: !541, file: !44, line: 789, baseType: !199, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "htaccess", scope: !541, file: !44, line: 791, baseType: !252, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !541, file: !44, line: 793, baseType: !539, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "output_filters", scope: !409, file: !44, line: 1063, baseType: !431, size: 64, offset: 3392)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "input_filters", scope: !409, file: !44, line: 1065, baseType: !431, size: 64, offset: 3456)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "proto_output_filters", scope: !409, file: !44, line: 1069, baseType: !431, size: 64, offset: 3520)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "proto_input_filters", scope: !409, file: !44, line: 1072, baseType: !431, size: 64, offset: 3584)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !409, file: !44, line: 1075, baseType: !73, size: 32, offset: 3648)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "no_local_copy", scope: !409, file: !44, line: 1077, baseType: !73, size: 32, offset: 3680)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "invoke_mtx", scope: !409, file: !44, line: 1082, baseType: !556, size: 64, offset: 3712)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_thread_mutex_t", file: !558, line: 41, baseType: !559)
!558 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_thread_mutex.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "333d6b386ebd5ebf2a57c53b3ab4b684")
!559 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_thread_mutex_t", file: !558, line: 41, flags: DIFlagFwdDecl)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "parsed_uri", scope: !409, file: !44, line: 1085, baseType: !561, size: 704, offset: 3776)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uri_t", file: !562, line: 80, baseType: !563)
!562 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_uri.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "9269047179f727bd075392a12871b578")
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_uri_t", file: !562, line: 85, size: 704, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !577, !578, !579, !580}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "scheme", scope: !563, file: !562, line: 87, baseType: !215, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "hostinfo", scope: !563, file: !562, line: 89, baseType: !215, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !563, file: !562, line: 91, baseType: !215, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !563, file: !562, line: 93, baseType: !215, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !563, file: !562, line: 95, baseType: !215, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "port_str", scope: !563, file: !562, line: 97, baseType: !215, size: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !563, file: !562, line: 99, baseType: !215, size: 64, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !563, file: !562, line: 101, baseType: !215, size: 64, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "fragment", scope: !563, file: !562, line: 103, baseType: !215, size: 64, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "hostent", scope: !563, file: !562, line: 106, baseType: !575, size: 64, offset: 576)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "hostent", file: !562, line: 106, flags: DIFlagFwdDecl)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !563, file: !562, line: 109, baseType: !259, size: 16, offset: 640)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "is_initialized", scope: !563, file: !562, line: 112, baseType: !13, size: 1, offset: 656, flags: DIFlagBitField, extraData: i64 656)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "dns_looked_up", scope: !563, file: !562, line: 115, baseType: !13, size: 1, offset: 657, flags: DIFlagBitField, extraData: i64 656)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dns_resolved", scope: !563, file: !562, line: 117, baseType: !13, size: 1, offset: 658, flags: DIFlagBitField, extraData: i64 656)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "finfo", scope: !409, file: !44, line: 1087, baseType: !582, size: 960, offset: 4480)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_finfo_t", file: !148, line: 143, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_finfo_t", file: !148, line: 174, size: 960, elements: !584)
!584 = !{!585, !586, !587, !589, !591, !596, !600, !604, !608, !609, !610, !611, !612, !613, !614, !615, !616}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !583, file: !148, line: 176, baseType: !131, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !583, file: !148, line: 179, baseType: !282, size: 32, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "protection", scope: !583, file: !148, line: 181, baseType: !588, size: 32, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_fileperms_t", file: !148, line: 125, baseType: !282)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "filetype", scope: !583, file: !148, line: 186, baseType: !590, size: 32, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_filetype_e", file: !148, line: 72, baseType: !147)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !583, file: !148, line: 188, baseType: !592, size: 32, offset: 160)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uid_t", file: !593, line: 45, baseType: !594)
!593 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_user.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "724f26fd838740b0ca4b55f59030741b")
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !110, line: 79, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !112, line: 146, baseType: !13)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !583, file: !148, line: 190, baseType: !597, size: 32, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_gid_t", file: !593, line: 54, baseType: !598)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !110, line: 64, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !112, line: 147, baseType: !13)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !583, file: !148, line: 192, baseType: !601, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_ino_t", file: !103, line: 383, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !110, line: 47, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !112, line: 148, baseType: !106)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !583, file: !148, line: 194, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_dev_t", file: !148, line: 135, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !110, line: 59, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !112, line: 145, baseType: !106)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !583, file: !148, line: 196, baseType: !282, size: 32, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !583, file: !148, line: 198, baseType: !108, size: 64, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "csize", scope: !583, file: !148, line: 200, baseType: !108, size: 64, offset: 512)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !583, file: !148, line: 202, baseType: !205, size: 64, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !583, file: !148, line: 204, baseType: !205, size: 64, offset: 640)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !583, file: !148, line: 206, baseType: !205, size: 64, offset: 704)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !583, file: !148, line: 208, baseType: !70, size: 64, offset: 768)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !583, file: !148, line: 210, baseType: !70, size: 64, offset: 832)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "filehand", scope: !583, file: !148, line: 212, baseType: !617, size: 64, offset: 896)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "useragent_addr", scope: !409, file: !44, line: 1093, baseType: !273, size: 64, offset: 5440)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "useragent_ip", scope: !409, file: !44, line: 1094, baseType: !215, size: 64, offset: 5504)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "trailers_in", scope: !409, file: !44, line: 1097, baseType: !199, size: 64, offset: 5568)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "trailers_out", scope: !409, file: !44, line: 1099, baseType: !199, size: 64, offset: 5632)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "useragent_host", scope: !409, file: !44, line: 1104, baseType: !215, size: 64, offset: 5696)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "double_reverse", scope: !409, file: !44, line: 1108, baseType: !73, size: 32, offset: 5760)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "bnotes", scope: !409, file: !44, line: 1113, baseType: !625, size: 64, offset: 5824)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_request_bnotes_t", file: !44, line: 662, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uint64_t", file: !103, line: 372, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !305, line: 27, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !112, line: 45, baseType: !106)
!629 = !{!0, !630, !763, !768, !770, !772, !774, !779, !784, !786, !788, !790, !795, !797, !799, !801, !806, !811, !816, !821, !826, !828, !7, !830, !835, !840, !843, !845, !847, !852, !857, !862, !867, !872, !874, !879, !881, !883, !886, !889, !894, !896, !901, !903, !908, !913, !915}
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "session_dbd_module", scope: !9, file: !2, line: 630, type: !632, isLocal: false, isDefinition: true)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "module", file: !12, line: 344, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_struct", file: !12, line: 345, size: 896, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !640, !642, !643, !647, !651, !655, !659, !660, !758, !762}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !633, file: !12, line: 349, baseType: !73, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "minor_version", scope: !633, file: !12, line: 352, baseType: !73, size: 32, offset: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "module_index", scope: !633, file: !12, line: 354, baseType: !73, size: 32, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !633, file: !12, line: 357, baseType: !70, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_load_handle", scope: !633, file: !12, line: 359, baseType: !79, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !633, file: !12, line: 364, baseType: !641, size: 64, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !633, file: !12, line: 368, baseType: !106, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_args", scope: !633, file: !12, line: 374, baseType: !644, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !226}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "create_dir_config", scope: !633, file: !12, line: 381, baseType: !648, size: 64, offset: 448)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!79, !131, !215}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "merge_dir_config", scope: !633, file: !12, line: 389, baseType: !652, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!79, !131, !79, !79}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_config", scope: !633, file: !12, line: 396, baseType: !656, size: 64, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!79, !131, !221}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "merge_server_config", scope: !633, file: !12, line: 404, baseType: !652, size: 64, offset: 640)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "cmds", scope: !633, file: !12, line: 409, baseType: !661, size: 64, offset: 704)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "command_rec", file: !12, line: 203, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "command_struct", file: !12, line: 204, size: 320, elements: !665)
!665 = !{!666, !667, !754, !755, !756, !757}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !664, file: !12, line: 206, baseType: !70, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !664, file: !12, line: 208, baseType: !668, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmd_func", file: !12, line: 101, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !12, line: 82, size: 64, elements: !670)
!670 = !{!671, !731, !735, !741, !742, !746, !750}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "no_args", scope: !669, file: !12, line: 84, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!70, !675, !79}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmd_parms", file: !12, line: 74, baseType: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmd_parms_struct", file: !12, line: 288, size: 960, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !706, !722, !723, !724, !725, !726, !727, !728}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !677, file: !12, line: 290, baseType: !79, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "override", scope: !677, file: !12, line: 292, baseType: !73, size: 32, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "override_opts", scope: !677, file: !12, line: 294, baseType: !73, size: 32, offset: 96)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "override_list", scope: !677, file: !12, line: 296, baseType: !199, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "limited", scope: !677, file: !12, line: 298, baseType: !207, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "limited_xmethods", scope: !677, file: !12, line: 300, baseType: !366, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "xlimited", scope: !677, file: !12, line: 302, baseType: !484, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "config_file", scope: !677, file: !12, line: 305, baseType: !687, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_configfile_t", file: !12, line: 267, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_configfile_t", file: !12, line: 268, size: 384, elements: !690)
!690 = !{!691, !695, !699, !703, !704, !705}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "getch", scope: !689, file: !12, line: 270, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!84, !215, !79}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "getstr", scope: !689, file: !12, line: 272, baseType: !696, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!84, !79, !102, !79}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !689, file: !12, line: 274, baseType: !700, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!84, !79}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !689, file: !12, line: 276, baseType: !79, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !689, file: !12, line: 278, baseType: !70, size: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !689, file: !12, line: 280, baseType: !13, size: 32, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !677, file: !12, line: 307, baseType: !707, size: 64, offset: 448)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_directive_t", file: !709, line: 35, baseType: !710)
!709 = !DIFile(filename: "include/util_cfgtree.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "c91452b9a51fb2ed560e306e1998c613")
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_directive_t", file: !709, line: 46, size: 576, elements: !711)
!711 = !{!712, !713, !714, !716, !717, !718, !719, !720, !721}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !710, file: !709, line: 48, baseType: !70, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !710, file: !709, line: 51, baseType: !70, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !710, file: !709, line: 53, baseType: !715, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "first_child", scope: !710, file: !709, line: 55, baseType: !715, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !710, file: !709, line: 57, baseType: !715, size: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !710, file: !709, line: 60, baseType: !79, size: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !710, file: !709, line: 64, baseType: !70, size: 64, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "line_num", scope: !710, file: !709, line: 66, baseType: !73, size: 32, offset: 448)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !710, file: !709, line: 73, baseType: !715, size: 64, offset: 512)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !677, file: !12, line: 310, baseType: !131, size: 64, offset: 512)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "temp_pool", scope: !677, file: !12, line: 313, baseType: !131, size: 64, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !677, file: !12, line: 315, baseType: !221, size: 64, offset: 640)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !677, file: !12, line: 322, baseType: !215, size: 64, offset: 704)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !677, file: !12, line: 324, baseType: !661, size: 64, offset: 768)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !677, file: !12, line: 327, baseType: !252, size: 64, offset: 832)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "err_directive", scope: !677, file: !12, line: 329, baseType: !729, size: 64, offset: 896)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !708)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "raw_args", scope: !669, file: !12, line: 86, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!70, !675, !79, !70}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "take_argv", scope: !669, file: !12, line: 89, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!70, !675, !79, !73, !739}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "take1", scope: !669, file: !12, line: 92, baseType: !732, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "take2", scope: !669, file: !12, line: 94, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!70, !675, !79, !70, !70}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "take3", scope: !669, file: !12, line: 97, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!70, !675, !79, !70, !70, !70}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !669, file: !12, line: 100, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!70, !675, !79, !73}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_data", scope: !664, file: !12, line: 210, baseType: !79, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "req_override", scope: !664, file: !12, line: 212, baseType: !73, size: 32, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "args_how", scope: !664, file: !12, line: 214, baseType: !11, size: 32, offset: 224)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "errmsg", scope: !664, file: !12, line: 217, baseType: !70, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "register_hooks", scope: !633, file: !12, line: 417, baseType: !759, size: 64, offset: 768)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !131}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !12, line: 420, baseType: !73, size: 32, offset: 832)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !2, line: 500, type: !765, isLocal: true, isDefinition: true)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 14)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(scope: null, file: !2, line: 501, type: !765, isLocal: true, isDefinition: true)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(scope: null, file: !2, line: 502, type: !765, isLocal: true, isDefinition: true)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(scope: null, file: !2, line: 503, type: !765, isLocal: true, isDefinition: true)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !2, line: 600, type: !776, isLocal: true, isDefinition: true)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 22)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !2, line: 600, type: !781, isLocal: true, isDefinition: true)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !782)
!782 = !{!783}
!783 = !DISubrange(count: 41)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !2, line: 603, type: !776, isLocal: true, isDefinition: true)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(scope: null, file: !2, line: 603, type: !781, isLocal: true, isDefinition: true)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !2, line: 606, type: !776, isLocal: true, isDefinition: true)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(scope: null, file: !2, line: 606, type: !792, isLocal: true, isDefinition: true)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !793)
!793 = !{!794}
!794 = !DISubrange(count: 47)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(scope: null, file: !2, line: 609, type: !776, isLocal: true, isDefinition: true)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(scope: null, file: !2, line: 609, type: !792, isLocal: true, isDefinition: true)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !2, line: 612, type: !3, isLocal: true, isDefinition: true)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(scope: null, file: !2, line: 612, type: !803, isLocal: true, isDefinition: true)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !804)
!804 = !{!805}
!805 = !DISubrange(count: 26)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(scope: null, file: !2, line: 614, type: !808, isLocal: true, isDefinition: true)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 23)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(scope: null, file: !2, line: 614, type: !813, isLocal: true, isDefinition: true)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 61)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !2, line: 616, type: !818, isLocal: true, isDefinition: true)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 21)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(scope: null, file: !2, line: 616, type: !823, isLocal: true, isDefinition: true)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !824)
!824 = !{!825}
!825 = !DISubrange(count: 56)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(scope: null, file: !2, line: 618, type: !776, isLocal: true, isDefinition: true)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(scope: null, file: !2, line: 618, type: !823, isLocal: true, isDefinition: true)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(scope: null, file: !2, line: 573, type: !832, isLocal: true, isDefinition: true)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 3)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(scope: null, file: !2, line: 540, type: !837, isLocal: true, isDefinition: true)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 46)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(scope: null, file: !2, line: 196, type: !842, isLocal: true, isDefinition: true)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !195)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !765, isLocal: true, isDefinition: true)
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !3, isLocal: true, isDefinition: true)
!847 = !DIGlobalVariableExpression(var: !848, expr: !DIExpression())
!848 = distinct !DIGlobalVariable(name: "aplog_module_index", scope: !9, file: !849, line: 148, type: !850, isLocal: true, isDefinition: true)
!849 = !DIFile(filename: "include/http_log.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "ce7bde9ead508f1c34c81b1931b44b16")
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !854, isLocal: true, isDefinition: true)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !855)
!855 = !{!856}
!856 = !DISubrange(count: 53)
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression())
!858 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !859, isLocal: true, isDefinition: true)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 672, elements: !860)
!860 = !{!861}
!861 = !DISubrange(count: 84)
!862 = !DIGlobalVariableExpression(var: !863, expr: !DIExpression())
!863 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !864, isLocal: true, isDefinition: true)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 680, elements: !865)
!865 = !{!866}
!866 = !DISubrange(count: 85)
!867 = !DIGlobalVariableExpression(var: !868, expr: !DIExpression())
!868 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !869, isLocal: true, isDefinition: true)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !870)
!870 = !{!871}
!871 = !DISubrange(count: 15)
!872 = !DIGlobalVariableExpression(var: !873, expr: !DIExpression())
!873 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !869, isLocal: true, isDefinition: true)
!874 = !DIGlobalVariableExpression(var: !875, expr: !DIExpression())
!875 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !876, isLocal: true, isDefinition: true)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !877)
!877 = !{!878}
!878 = !DISubrange(count: 59)
!879 = !DIGlobalVariableExpression(var: !880, expr: !DIExpression())
!880 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !792, isLocal: true, isDefinition: true)
!881 = !DIGlobalVariableExpression(var: !882, expr: !DIExpression())
!882 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !876, isLocal: true, isDefinition: true)
!883 = !DIGlobalVariableExpression(var: !884, expr: !DIExpression())
!884 = distinct !DIGlobalVariable(name: "session_dbd_prepare_fn", scope: !9, file: !2, line: 52, type: !885, isLocal: true, isDefinition: true)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!886 = !DIGlobalVariableExpression(var: !887, expr: !DIExpression())
!887 = distinct !DIGlobalVariable(name: "session_dbd_acquire_fn", scope: !9, file: !2, line: 51, type: !888, isLocal: true, isDefinition: true)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression())
!890 = distinct !DIGlobalVariable(scope: null, file: !2, line: 471, type: !891, isLocal: true, isDefinition: true)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 720, elements: !892)
!892 = !{!893}
!893 = !DISubrange(count: 90)
!894 = !DIGlobalVariableExpression(var: !895, expr: !DIExpression())
!895 = distinct !DIGlobalVariable(scope: null, file: !2, line: 271, type: !854, isLocal: true, isDefinition: true)
!896 = !DIGlobalVariableExpression(var: !897, expr: !DIExpression())
!897 = distinct !DIGlobalVariable(scope: null, file: !2, line: 285, type: !898, isLocal: true, isDefinition: true)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 688, elements: !899)
!899 = !{!900}
!900 = !DISubrange(count: 86)
!901 = !DIGlobalVariableExpression(var: !902, expr: !DIExpression())
!902 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !854, isLocal: true, isDefinition: true)
!903 = !DIGlobalVariableExpression(var: !904, expr: !DIExpression())
!904 = distinct !DIGlobalVariable(scope: null, file: !2, line: 313, type: !905, isLocal: true, isDefinition: true)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !906)
!906 = !{!907}
!907 = !DISubrange(count: 80)
!908 = !DIGlobalVariableExpression(var: !909, expr: !DIExpression())
!909 = distinct !DIGlobalVariable(scope: null, file: !2, line: 328, type: !910, isLocal: true, isDefinition: true)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 992, elements: !911)
!911 = !{!912}
!912 = !DISubrange(count: 124)
!913 = !DIGlobalVariableExpression(var: !914, expr: !DIExpression())
!914 = distinct !DIGlobalVariable(scope: null, file: !2, line: 351, type: !854, isLocal: true, isDefinition: true)
!915 = !DIGlobalVariableExpression(var: !916, expr: !DIExpression())
!916 = distinct !DIGlobalVariable(scope: null, file: !2, line: 366, type: !917, isLocal: true, isDefinition: true)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 536, elements: !918)
!918 = !{!919}
!919 = !DISubrange(count: 67)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, size: 2880, elements: !921)
!921 = !{!922}
!922 = !DISubrange(count: 9)
!923 = !{i32 7, !"Dwarf Version", i32 5}
!924 = !{i32 2, !"Debug Info Version", i32 3}
!925 = !{i32 1, !"wchar_size", i32 4}
!926 = !{i32 8, !"PIC Level", i32 2}
!927 = !{i32 7, !"uwtable", i32 2}
!928 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!929 = distinct !DISubprogram(name: "create_session_dbd_dir_config", scope: !2, file: !2, line: 493, type: !649, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !930)
!930 = !{!931, !932, !933}
!931 = !DILocalVariable(name: "p", arg: 1, scope: !929, file: !2, line: 493, type: !131)
!932 = !DILocalVariable(name: "dummy", arg: 2, scope: !929, file: !2, line: 493, type: !215)
!933 = !DILocalVariable(name: "new", scope: !929, file: !2, line: 495, type: !160)
!934 = !{!935, !935, i64 0}
!935 = !{!"any pointer", !936, i64 0}
!936 = !{!"omnipotent char", !937, i64 0}
!937 = !{!"Simple C/C++ TBAA"}
!938 = !DILocation(line: 493, column: 57, scope: !929)
!939 = !DILocation(line: 493, column: 66, scope: !929)
!940 = !DILocation(line: 495, column: 5, scope: !929)
!941 = !DILocation(line: 495, column: 27, scope: !929)
!942 = !DILocation(line: 496, column: 30, scope: !929)
!943 = !DILocation(line: 498, column: 5, scope: !929)
!944 = !DILocation(line: 498, column: 10, scope: !929)
!945 = !DILocation(line: 498, column: 17, scope: !929)
!946 = !{!947, !948, i64 56}
!947 = !{!"", !935, i64 0, !948, i64 8, !935, i64 16, !935, i64 24, !948, i64 32, !935, i64 40, !948, i64 48, !948, i64 52, !948, i64 56, !948, i64 60, !935, i64 64, !935, i64 72, !935, i64 80, !935, i64 88}
!948 = !{!"int", !936, i64 0}
!949 = !DILocation(line: 500, column: 5, scope: !929)
!950 = !DILocation(line: 500, column: 10, scope: !929)
!951 = !DILocation(line: 500, column: 22, scope: !929)
!952 = !{!947, !935, i64 64}
!953 = !DILocation(line: 501, column: 5, scope: !929)
!954 = !DILocation(line: 501, column: 10, scope: !929)
!955 = !DILocation(line: 501, column: 22, scope: !929)
!956 = !{!947, !935, i64 72}
!957 = !DILocation(line: 502, column: 5, scope: !929)
!958 = !DILocation(line: 502, column: 10, scope: !929)
!959 = !DILocation(line: 502, column: 22, scope: !929)
!960 = !{!947, !935, i64 80}
!961 = !DILocation(line: 503, column: 5, scope: !929)
!962 = !DILocation(line: 503, column: 10, scope: !929)
!963 = !DILocation(line: 503, column: 22, scope: !929)
!964 = !{!947, !935, i64 88}
!965 = !DILocation(line: 505, column: 21, scope: !929)
!966 = !DILocation(line: 506, column: 1, scope: !929)
!967 = !DILocation(line: 505, column: 5, scope: !929)
!968 = distinct !DISubprogram(name: "merge_session_dbd_dir_config", scope: !2, file: !2, line: 508, type: !653, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !969)
!969 = !{!970, !971, !972, !973, !974, !975}
!970 = !DILocalVariable(name: "p", arg: 1, scope: !968, file: !2, line: 508, type: !131)
!971 = !DILocalVariable(name: "basev", arg: 2, scope: !968, file: !2, line: 508, type: !79)
!972 = !DILocalVariable(name: "addv", arg: 3, scope: !968, file: !2, line: 508, type: !79)
!973 = !DILocalVariable(name: "new", scope: !968, file: !2, line: 510, type: !160)
!974 = !DILocalVariable(name: "add", scope: !968, file: !2, line: 511, type: !160)
!975 = !DILocalVariable(name: "base", scope: !968, file: !2, line: 512, type: !160)
!976 = !DILocation(line: 508, column: 56, scope: !968)
!977 = !DILocation(line: 508, column: 65, scope: !968)
!978 = !DILocation(line: 508, column: 78, scope: !968)
!979 = !DILocation(line: 510, column: 5, scope: !968)
!980 = !DILocation(line: 510, column: 27, scope: !968)
!981 = !DILocation(line: 510, column: 58, scope: !968)
!982 = !DILocation(line: 511, column: 5, scope: !968)
!983 = !DILocation(line: 511, column: 27, scope: !968)
!984 = !DILocation(line: 511, column: 58, scope: !968)
!985 = !DILocation(line: 512, column: 5, scope: !968)
!986 = !DILocation(line: 512, column: 27, scope: !968)
!987 = !DILocation(line: 512, column: 59, scope: !968)
!988 = !DILocation(line: 514, column: 18, scope: !968)
!989 = !DILocation(line: 514, column: 23, scope: !968)
!990 = !{!947, !948, i64 8}
!991 = !DILocation(line: 514, column: 32, scope: !968)
!992 = !DILocation(line: 514, column: 17, scope: !968)
!993 = !DILocation(line: 514, column: 40, scope: !968)
!994 = !DILocation(line: 514, column: 46, scope: !968)
!995 = !{!947, !935, i64 0}
!996 = !DILocation(line: 514, column: 53, scope: !968)
!997 = !DILocation(line: 514, column: 58, scope: !968)
!998 = !DILocation(line: 514, column: 5, scope: !968)
!999 = !DILocation(line: 514, column: 10, scope: !968)
!1000 = !DILocation(line: 514, column: 15, scope: !968)
!1001 = !DILocation(line: 515, column: 24, scope: !968)
!1002 = !DILocation(line: 515, column: 29, scope: !968)
!1003 = !DILocation(line: 515, column: 38, scope: !968)
!1004 = !DILocation(line: 515, column: 23, scope: !968)
!1005 = !DILocation(line: 515, column: 46, scope: !968)
!1006 = !DILocation(line: 515, column: 52, scope: !968)
!1007 = !{!947, !935, i64 16}
!1008 = !DILocation(line: 515, column: 65, scope: !968)
!1009 = !DILocation(line: 515, column: 70, scope: !968)
!1010 = !DILocation(line: 515, column: 5, scope: !968)
!1011 = !DILocation(line: 515, column: 10, scope: !968)
!1012 = !DILocation(line: 515, column: 21, scope: !968)
!1013 = !DILocation(line: 516, column: 21, scope: !968)
!1014 = !DILocation(line: 516, column: 26, scope: !968)
!1015 = !DILocation(line: 516, column: 35, scope: !968)
!1016 = !DILocation(line: 516, column: 38, scope: !968)
!1017 = !DILocation(line: 516, column: 44, scope: !968)
!1018 = !DILocation(line: 516, column: 5, scope: !968)
!1019 = !DILocation(line: 516, column: 10, scope: !968)
!1020 = !DILocation(line: 516, column: 19, scope: !968)
!1021 = !DILocation(line: 517, column: 19, scope: !968)
!1022 = !DILocation(line: 517, column: 24, scope: !968)
!1023 = !{!947, !948, i64 32}
!1024 = !DILocation(line: 517, column: 34, scope: !968)
!1025 = !DILocation(line: 517, column: 18, scope: !968)
!1026 = !DILocation(line: 517, column: 42, scope: !968)
!1027 = !DILocation(line: 517, column: 48, scope: !968)
!1028 = !{!947, !935, i64 24}
!1029 = !DILocation(line: 517, column: 56, scope: !968)
!1030 = !DILocation(line: 517, column: 61, scope: !968)
!1031 = !DILocation(line: 517, column: 5, scope: !968)
!1032 = !DILocation(line: 517, column: 10, scope: !968)
!1033 = !DILocation(line: 517, column: 16, scope: !968)
!1034 = !DILocation(line: 518, column: 25, scope: !968)
!1035 = !DILocation(line: 518, column: 30, scope: !968)
!1036 = !DILocation(line: 518, column: 40, scope: !968)
!1037 = !DILocation(line: 518, column: 24, scope: !968)
!1038 = !DILocation(line: 518, column: 48, scope: !968)
!1039 = !DILocation(line: 518, column: 54, scope: !968)
!1040 = !{!947, !935, i64 40}
!1041 = !DILocation(line: 518, column: 68, scope: !968)
!1042 = !DILocation(line: 518, column: 73, scope: !968)
!1043 = !DILocation(line: 518, column: 5, scope: !968)
!1044 = !DILocation(line: 518, column: 10, scope: !968)
!1045 = !DILocation(line: 518, column: 22, scope: !968)
!1046 = !DILocation(line: 519, column: 22, scope: !968)
!1047 = !DILocation(line: 519, column: 27, scope: !968)
!1048 = !DILocation(line: 519, column: 37, scope: !968)
!1049 = !DILocation(line: 519, column: 40, scope: !968)
!1050 = !DILocation(line: 519, column: 46, scope: !968)
!1051 = !DILocation(line: 519, column: 5, scope: !968)
!1052 = !DILocation(line: 519, column: 10, scope: !968)
!1053 = !DILocation(line: 519, column: 20, scope: !968)
!1054 = !DILocation(line: 520, column: 21, scope: !968)
!1055 = !DILocation(line: 520, column: 26, scope: !968)
!1056 = !{!947, !948, i64 52}
!1057 = !DILocation(line: 520, column: 38, scope: !968)
!1058 = !DILocation(line: 520, column: 20, scope: !968)
!1059 = !DILocation(line: 520, column: 46, scope: !968)
!1060 = !DILocation(line: 520, column: 52, scope: !968)
!1061 = !{!947, !948, i64 48}
!1062 = !DILocation(line: 520, column: 62, scope: !968)
!1063 = !DILocation(line: 520, column: 67, scope: !968)
!1064 = !DILocation(line: 520, column: 5, scope: !968)
!1065 = !DILocation(line: 520, column: 10, scope: !968)
!1066 = !DILocation(line: 520, column: 18, scope: !968)
!1067 = !DILocation(line: 521, column: 24, scope: !968)
!1068 = !DILocation(line: 521, column: 29, scope: !968)
!1069 = !DILocation(line: 521, column: 41, scope: !968)
!1070 = !DILocation(line: 521, column: 44, scope: !968)
!1071 = !DILocation(line: 521, column: 50, scope: !968)
!1072 = !DILocation(line: 521, column: 5, scope: !968)
!1073 = !DILocation(line: 521, column: 10, scope: !968)
!1074 = !DILocation(line: 521, column: 22, scope: !968)
!1075 = !DILocation(line: 522, column: 20, scope: !968)
!1076 = !DILocation(line: 522, column: 25, scope: !968)
!1077 = !{!947, !948, i64 60}
!1078 = !DILocation(line: 522, column: 36, scope: !968)
!1079 = !DILocation(line: 522, column: 19, scope: !968)
!1080 = !DILocation(line: 522, column: 44, scope: !968)
!1081 = !DILocation(line: 522, column: 50, scope: !968)
!1082 = !DILocation(line: 522, column: 59, scope: !968)
!1083 = !DILocation(line: 522, column: 64, scope: !968)
!1084 = !DILocation(line: 522, column: 5, scope: !968)
!1085 = !DILocation(line: 522, column: 10, scope: !968)
!1086 = !DILocation(line: 522, column: 17, scope: !968)
!1087 = !DILocation(line: 523, column: 23, scope: !968)
!1088 = !DILocation(line: 523, column: 28, scope: !968)
!1089 = !DILocation(line: 523, column: 39, scope: !968)
!1090 = !DILocation(line: 523, column: 42, scope: !968)
!1091 = !DILocation(line: 523, column: 48, scope: !968)
!1092 = !DILocation(line: 523, column: 5, scope: !968)
!1093 = !DILocation(line: 523, column: 10, scope: !968)
!1094 = !DILocation(line: 523, column: 21, scope: !968)
!1095 = !DILocation(line: 524, column: 26, scope: !968)
!1096 = !DILocation(line: 524, column: 31, scope: !968)
!1097 = !DILocation(line: 524, column: 24, scope: !968)
!1098 = !DILocation(line: 524, column: 46, scope: !968)
!1099 = !DILocation(line: 524, column: 52, scope: !968)
!1100 = !DILocation(line: 524, column: 66, scope: !968)
!1101 = !DILocation(line: 524, column: 71, scope: !968)
!1102 = !DILocation(line: 524, column: 5, scope: !968)
!1103 = !DILocation(line: 524, column: 10, scope: !968)
!1104 = !DILocation(line: 524, column: 22, scope: !968)
!1105 = !DILocation(line: 525, column: 26, scope: !968)
!1106 = !DILocation(line: 525, column: 31, scope: !968)
!1107 = !DILocation(line: 525, column: 24, scope: !968)
!1108 = !DILocation(line: 525, column: 46, scope: !968)
!1109 = !DILocation(line: 525, column: 52, scope: !968)
!1110 = !DILocation(line: 525, column: 66, scope: !968)
!1111 = !DILocation(line: 525, column: 71, scope: !968)
!1112 = !DILocation(line: 525, column: 5, scope: !968)
!1113 = !DILocation(line: 525, column: 10, scope: !968)
!1114 = !DILocation(line: 525, column: 22, scope: !968)
!1115 = !DILocation(line: 526, column: 26, scope: !968)
!1116 = !DILocation(line: 526, column: 31, scope: !968)
!1117 = !DILocation(line: 526, column: 24, scope: !968)
!1118 = !DILocation(line: 526, column: 46, scope: !968)
!1119 = !DILocation(line: 526, column: 52, scope: !968)
!1120 = !DILocation(line: 526, column: 66, scope: !968)
!1121 = !DILocation(line: 526, column: 71, scope: !968)
!1122 = !DILocation(line: 526, column: 5, scope: !968)
!1123 = !DILocation(line: 526, column: 10, scope: !968)
!1124 = !DILocation(line: 526, column: 22, scope: !968)
!1125 = !DILocation(line: 527, column: 26, scope: !968)
!1126 = !DILocation(line: 527, column: 31, scope: !968)
!1127 = !DILocation(line: 527, column: 24, scope: !968)
!1128 = !DILocation(line: 527, column: 46, scope: !968)
!1129 = !DILocation(line: 527, column: 52, scope: !968)
!1130 = !DILocation(line: 527, column: 66, scope: !968)
!1131 = !DILocation(line: 527, column: 71, scope: !968)
!1132 = !DILocation(line: 527, column: 5, scope: !968)
!1133 = !DILocation(line: 527, column: 10, scope: !968)
!1134 = !DILocation(line: 527, column: 22, scope: !968)
!1135 = !DILocation(line: 529, column: 12, scope: !968)
!1136 = !DILocation(line: 530, column: 1, scope: !968)
!1137 = !DILocation(line: 529, column: 5, scope: !968)
!1138 = distinct !DISubprogram(name: "register_hooks", scope: !2, file: !2, line: 623, type: !760, scopeLine: 624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1139)
!1139 = !{!1140}
!1140 = !DILocalVariable(name: "p", arg: 1, scope: !1138, file: !2, line: 623, type: !131)
!1141 = !DILocation(line: 623, column: 41, scope: !1138)
!1142 = !DILocation(line: 625, column: 5, scope: !1138)
!1143 = !DILocation(line: 626, column: 5, scope: !1138)
!1144 = !DILocation(line: 627, column: 5, scope: !1138)
!1145 = !DILocation(line: 628, column: 1, scope: !1138)
!1146 = !DISubprogram(name: "apr_palloc", scope: !133, file: !133, line: 430, type: !1147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!79, !131, !102}
!1149 = distinct !DISubprogram(name: "set_dbd_peruser", scope: !2, file: !2, line: 547, type: !752, scopeLine: 548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1150)
!1150 = !{!1151, !1152, !1153, !1154}
!1151 = !DILocalVariable(name: "parms", arg: 1, scope: !1149, file: !2, line: 547, type: !675)
!1152 = !DILocalVariable(name: "dconf", arg: 2, scope: !1149, file: !2, line: 547, type: !79)
!1153 = !DILocalVariable(name: "flag", arg: 3, scope: !1149, file: !2, line: 547, type: !73)
!1154 = !DILocalVariable(name: "conf", scope: !1149, file: !2, line: 549, type: !160)
!1155 = !DILocation(line: 547, column: 34, scope: !1149)
!1156 = !DILocation(line: 547, column: 47, scope: !1149)
!1157 = !{!948, !948, i64 0}
!1158 = !DILocation(line: 547, column: 58, scope: !1149)
!1159 = !DILocation(line: 549, column: 5, scope: !1149)
!1160 = !DILocation(line: 549, column: 27, scope: !1149)
!1161 = !DILocation(line: 549, column: 34, scope: !1149)
!1162 = !DILocation(line: 551, column: 21, scope: !1149)
!1163 = !DILocation(line: 551, column: 5, scope: !1149)
!1164 = !DILocation(line: 551, column: 11, scope: !1149)
!1165 = !DILocation(line: 551, column: 19, scope: !1149)
!1166 = !DILocation(line: 552, column: 5, scope: !1149)
!1167 = !DILocation(line: 552, column: 11, scope: !1149)
!1168 = !DILocation(line: 552, column: 23, scope: !1149)
!1169 = !DILocation(line: 555, column: 1, scope: !1149)
!1170 = !DILocation(line: 554, column: 5, scope: !1149)
!1171 = distinct !DISubprogram(name: "set_dbd_cookie_remove", scope: !2, file: !2, line: 558, type: !752, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1172)
!1172 = !{!1173, !1174, !1175, !1176}
!1173 = !DILocalVariable(name: "parms", arg: 1, scope: !1171, file: !2, line: 558, type: !675)
!1174 = !DILocalVariable(name: "dconf", arg: 2, scope: !1171, file: !2, line: 558, type: !79)
!1175 = !DILocalVariable(name: "flag", arg: 3, scope: !1171, file: !2, line: 558, type: !73)
!1176 = !DILocalVariable(name: "conf", scope: !1171, file: !2, line: 560, type: !160)
!1177 = !DILocation(line: 558, column: 40, scope: !1171)
!1178 = !DILocation(line: 558, column: 53, scope: !1171)
!1179 = !DILocation(line: 558, column: 64, scope: !1171)
!1180 = !DILocation(line: 560, column: 5, scope: !1171)
!1181 = !DILocation(line: 560, column: 27, scope: !1171)
!1182 = !DILocation(line: 560, column: 34, scope: !1171)
!1183 = !DILocation(line: 562, column: 20, scope: !1171)
!1184 = !DILocation(line: 562, column: 5, scope: !1171)
!1185 = !DILocation(line: 562, column: 11, scope: !1171)
!1186 = !DILocation(line: 562, column: 18, scope: !1171)
!1187 = !DILocation(line: 563, column: 5, scope: !1171)
!1188 = !DILocation(line: 563, column: 11, scope: !1171)
!1189 = !DILocation(line: 563, column: 22, scope: !1171)
!1190 = !DILocation(line: 566, column: 1, scope: !1171)
!1191 = !DILocation(line: 565, column: 5, scope: !1171)
!1192 = distinct !DISubprogram(name: "set_cookie_name", scope: !2, file: !2, line: 568, type: !733, scopeLine: 569, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1193)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199, !1200}
!1194 = !DILocalVariable(name: "cmd", arg: 1, scope: !1192, file: !2, line: 568, type: !675)
!1195 = !DILocalVariable(name: "config", arg: 2, scope: !1192, file: !2, line: 568, type: !79)
!1196 = !DILocalVariable(name: "args", arg: 3, scope: !1192, file: !2, line: 568, type: !70)
!1197 = !DILocalVariable(name: "last", scope: !1192, file: !2, line: 570, type: !215)
!1198 = !DILocalVariable(name: "line", scope: !1192, file: !2, line: 571, type: !215)
!1199 = !DILocalVariable(name: "conf", scope: !1192, file: !2, line: 572, type: !160)
!1200 = !DILocalVariable(name: "cookie", scope: !1192, file: !2, line: 573, type: !215)
!1201 = !DILocation(line: 568, column: 48, scope: !1192)
!1202 = !DILocation(line: 568, column: 59, scope: !1192)
!1203 = !DILocation(line: 568, column: 79, scope: !1192)
!1204 = !DILocation(line: 570, column: 5, scope: !1192)
!1205 = !DILocation(line: 570, column: 11, scope: !1192)
!1206 = !DILocation(line: 571, column: 5, scope: !1192)
!1207 = !DILocation(line: 571, column: 11, scope: !1192)
!1208 = !DILocation(line: 571, column: 30, scope: !1192)
!1209 = !DILocation(line: 571, column: 35, scope: !1192)
!1210 = !{!1211, !935, i64 64}
!1211 = !{!"cmd_parms_struct", !935, i64 0, !948, i64 8, !948, i64 12, !935, i64 16, !1212, i64 24, !935, i64 32, !935, i64 40, !935, i64 48, !935, i64 56, !935, i64 64, !935, i64 72, !935, i64 80, !935, i64 88, !935, i64 96, !935, i64 104, !935, i64 112}
!1212 = !{!"long", !936, i64 0}
!1213 = !DILocation(line: 571, column: 41, scope: !1192)
!1214 = !DILocation(line: 571, column: 18, scope: !1192)
!1215 = !DILocation(line: 572, column: 5, scope: !1192)
!1216 = !DILocation(line: 572, column: 27, scope: !1192)
!1217 = !DILocation(line: 572, column: 59, scope: !1192)
!1218 = !DILocation(line: 573, column: 5, scope: !1192)
!1219 = !DILocation(line: 573, column: 11, scope: !1192)
!1220 = !DILocation(line: 573, column: 31, scope: !1192)
!1221 = !DILocation(line: 573, column: 20, scope: !1192)
!1222 = !DILocation(line: 574, column: 18, scope: !1192)
!1223 = !DILocation(line: 574, column: 5, scope: !1192)
!1224 = !DILocation(line: 574, column: 11, scope: !1192)
!1225 = !DILocation(line: 574, column: 16, scope: !1192)
!1226 = !DILocation(line: 575, column: 5, scope: !1192)
!1227 = !DILocation(line: 575, column: 11, scope: !1192)
!1228 = !DILocation(line: 575, column: 20, scope: !1192)
!1229 = !DILocation(line: 576, column: 5, scope: !1192)
!1230 = !DILocation(line: 576, column: 12, scope: !1192)
!1231 = !{!936, !936, i64 0}
!1232 = !{!1233, !1233, i64 0}
!1233 = !{!"short", !936, i64 0}
!1234 = !DILocation(line: 577, column: 13, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 576, column: 32)
!1236 = distinct !{!1236, !1229, !1237, !1238}
!1237 = !DILocation(line: 578, column: 5, scope: !1192)
!1238 = !{!"llvm.loop.mustprogress"}
!1239 = !DILocation(line: 579, column: 24, scope: !1192)
!1240 = !DILocation(line: 579, column: 5, scope: !1192)
!1241 = !DILocation(line: 579, column: 11, scope: !1192)
!1242 = !DILocation(line: 579, column: 22, scope: !1192)
!1243 = !DILocation(line: 580, column: 25, scope: !1192)
!1244 = !DILocation(line: 580, column: 30, scope: !1192)
!1245 = !DILocation(line: 580, column: 12, scope: !1192)
!1246 = !DILocation(line: 581, column: 1, scope: !1192)
!1247 = !DILocation(line: 580, column: 5, scope: !1192)
!1248 = distinct !DISubprogram(name: "set_cookie_name2", scope: !2, file: !2, line: 583, type: !733, scopeLine: 584, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256}
!1250 = !DILocalVariable(name: "cmd", arg: 1, scope: !1248, file: !2, line: 583, type: !675)
!1251 = !DILocalVariable(name: "config", arg: 2, scope: !1248, file: !2, line: 583, type: !79)
!1252 = !DILocalVariable(name: "args", arg: 3, scope: !1248, file: !2, line: 583, type: !70)
!1253 = !DILocalVariable(name: "last", scope: !1248, file: !2, line: 585, type: !215)
!1254 = !DILocalVariable(name: "line", scope: !1248, file: !2, line: 586, type: !215)
!1255 = !DILocalVariable(name: "conf", scope: !1248, file: !2, line: 587, type: !160)
!1256 = !DILocalVariable(name: "cookie", scope: !1248, file: !2, line: 588, type: !215)
!1257 = !DILocation(line: 583, column: 49, scope: !1248)
!1258 = !DILocation(line: 583, column: 60, scope: !1248)
!1259 = !DILocation(line: 583, column: 80, scope: !1248)
!1260 = !DILocation(line: 585, column: 5, scope: !1248)
!1261 = !DILocation(line: 585, column: 11, scope: !1248)
!1262 = !DILocation(line: 586, column: 5, scope: !1248)
!1263 = !DILocation(line: 586, column: 11, scope: !1248)
!1264 = !DILocation(line: 586, column: 30, scope: !1248)
!1265 = !DILocation(line: 586, column: 35, scope: !1248)
!1266 = !DILocation(line: 586, column: 41, scope: !1248)
!1267 = !DILocation(line: 586, column: 18, scope: !1248)
!1268 = !DILocation(line: 587, column: 5, scope: !1248)
!1269 = !DILocation(line: 587, column: 27, scope: !1248)
!1270 = !DILocation(line: 587, column: 59, scope: !1248)
!1271 = !DILocation(line: 588, column: 5, scope: !1248)
!1272 = !DILocation(line: 588, column: 11, scope: !1248)
!1273 = !DILocation(line: 588, column: 31, scope: !1248)
!1274 = !DILocation(line: 588, column: 20, scope: !1248)
!1275 = !DILocation(line: 589, column: 19, scope: !1248)
!1276 = !DILocation(line: 589, column: 5, scope: !1248)
!1277 = !DILocation(line: 589, column: 11, scope: !1248)
!1278 = !DILocation(line: 589, column: 17, scope: !1248)
!1279 = !DILocation(line: 590, column: 5, scope: !1248)
!1280 = !DILocation(line: 590, column: 11, scope: !1248)
!1281 = !DILocation(line: 590, column: 21, scope: !1248)
!1282 = !DILocation(line: 591, column: 5, scope: !1248)
!1283 = !DILocation(line: 591, column: 12, scope: !1248)
!1284 = !DILocation(line: 592, column: 13, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 591, column: 32)
!1286 = distinct !{!1286, !1282, !1287, !1238}
!1287 = !DILocation(line: 593, column: 5, scope: !1248)
!1288 = !DILocation(line: 594, column: 25, scope: !1248)
!1289 = !DILocation(line: 594, column: 5, scope: !1248)
!1290 = !DILocation(line: 594, column: 11, scope: !1248)
!1291 = !DILocation(line: 594, column: 23, scope: !1248)
!1292 = !DILocation(line: 595, column: 25, scope: !1248)
!1293 = !DILocation(line: 595, column: 30, scope: !1248)
!1294 = !DILocation(line: 595, column: 12, scope: !1248)
!1295 = !DILocation(line: 596, column: 1, scope: !1248)
!1296 = !DILocation(line: 595, column: 5, scope: !1248)
!1297 = !DISubprogram(name: "apr_pstrdup", scope: !1298, file: !1298, line: 95, type: !1299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1298 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_strings.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "f876519c65276b07631e818685d4ffb3")
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!215, !131, !70}
!1301 = !DISubprogram(name: "apr_strtok", scope: !1298, file: !1298, line: 247, type: !1302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!215, !215, !70, !1304}
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!1305 = !DISubprogram(name: "__ctype_b_loc", scope: !29, file: !29, line: 79, type: !1306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!1308}
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!1311 = distinct !DISubprogram(name: "check_string", scope: !2, file: !2, line: 536, type: !1312, scopeLine: 537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1314)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!70, !675, !70}
!1314 = !{!1315, !1316}
!1315 = !DILocalVariable(name: "cmd", arg: 1, scope: !1311, file: !2, line: 536, type: !675)
!1316 = !DILocalVariable(name: "string", arg: 2, scope: !1311, file: !2, line: 536, type: !70)
!1317 = !DILocation(line: 536, column: 45, scope: !1311)
!1318 = !DILocation(line: 536, column: 62, scope: !1311)
!1319 = !DILocation(line: 538, column: 47, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1311, file: !2, line: 538, column: 9)
!1321 = !DILocation(line: 538, column: 24, scope: !1320)
!1322 = !DILocation(line: 538, column: 21, scope: !1320)
!1323 = !DILocation(line: 538, column: 9, scope: !1311)
!1324 = !DILocation(line: 539, column: 28, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1320, file: !2, line: 538, column: 56)
!1326 = !DILocation(line: 539, column: 33, scope: !1325)
!1327 = !DILocation(line: 539, column: 39, scope: !1325)
!1328 = !DILocation(line: 539, column: 44, scope: !1325)
!1329 = !{!1211, !935, i64 56}
!1330 = !DILocation(line: 539, column: 55, scope: !1325)
!1331 = !{!1332, !935, i64 0}
!1332 = !{!"ap_directive_t", !935, i64 0, !935, i64 8, !935, i64 16, !935, i64 24, !935, i64 32, !935, i64 40, !935, i64 48, !948, i64 56, !935, i64 64}
!1333 = !DILocation(line: 539, column: 16, scope: !1325)
!1334 = !DILocation(line: 539, column: 9, scope: !1325)
!1335 = !DILocation(line: 543, column: 5, scope: !1311)
!1336 = !DILocation(line: 544, column: 1, scope: !1311)
!1337 = !DISubprogram(name: "ap_cookie_check_string", scope: !1338, file: !1338, line: 136, type: !1339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1338 = !DIFile(filename: "include/util_cookies.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "94f8705d2e51073454c05dad3d6079a7")
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!84, !70}
!1341 = !DISubprogram(name: "apr_pstrcat", scope: !1298, file: !1298, line: 147, type: !1342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!215, !131, null}
!1344 = !DISubprogram(name: "ap_hook_session_load", scope: !183, file: !183, line: 131, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{null, !1347, !234, !234, !73}
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_HOOK_session_load_t", file: !183, line: 131, baseType: !1349)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!84, !407, !1351}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!1352 = distinct !DISubprogram(name: "session_dbd_load", scope: !2, file: !2, line: 167, type: !1349, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1353)
!1353 = !{!1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364}
!1354 = !DILocalVariable(name: "r", arg: 1, scope: !1352, file: !2, line: 167, type: !407)
!1355 = !DILocalVariable(name: "z", arg: 2, scope: !1352, file: !2, line: 167, type: !1351)
!1356 = !DILocalVariable(name: "conf", scope: !1352, file: !2, line: 170, type: !160)
!1357 = !DILocalVariable(name: "ret", scope: !1352, file: !2, line: 173, type: !84)
!1358 = !DILocalVariable(name: "zz", scope: !1352, file: !2, line: 174, type: !181)
!1359 = !DILocalVariable(name: "name", scope: !1352, file: !2, line: 175, type: !70)
!1360 = !DILocalVariable(name: "note", scope: !1352, file: !2, line: 176, type: !70)
!1361 = !DILocalVariable(name: "val", scope: !1352, file: !2, line: 177, type: !70)
!1362 = !DILocalVariable(name: "key", scope: !1352, file: !2, line: 178, type: !70)
!1363 = !DILocalVariable(name: "m", scope: !1352, file: !2, line: 179, type: !407)
!1364 = !DILocalVariable(name: "uuid", scope: !1365, file: !2, line: 237, type: !188)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 236, column: 21)
!1366 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 236, column: 9)
!1367 = !DILocation(line: 167, column: 52, scope: !1352)
!1368 = !DILocation(line: 167, column: 70, scope: !1352)
!1369 = !DILocation(line: 170, column: 5, scope: !1352)
!1370 = !DILocation(line: 170, column: 27, scope: !1352)
!1371 = !DILocation(line: 170, column: 34, scope: !1352)
!1372 = !{!1373, !935, i64 384}
!1373 = !{!"request_rec", !935, i64 0, !935, i64 8, !935, i64 16, !935, i64 24, !935, i64 32, !935, i64 40, !935, i64 48, !948, i64 56, !948, i64 60, !948, i64 64, !948, i64 68, !935, i64 72, !935, i64 80, !1212, i64 88, !935, i64 96, !948, i64 104, !948, i64 108, !935, i64 112, !1212, i64 120, !935, i64 128, !935, i64 136, !1212, i64 144, !1212, i64 152, !1212, i64 160, !935, i64 168, !1212, i64 176, !948, i64 184, !948, i64 188, !948, i64 192, !948, i64 196, !935, i64 200, !935, i64 208, !1212, i64 216, !1212, i64 224, !935, i64 232, !935, i64 240, !935, i64 248, !935, i64 256, !935, i64 264, !935, i64 272, !935, i64 280, !935, i64 288, !935, i64 296, !935, i64 304, !935, i64 312, !935, i64 320, !935, i64 328, !935, i64 336, !935, i64 344, !935, i64 352, !935, i64 360, !935, i64 368, !948, i64 376, !948, i64 380, !935, i64 384, !935, i64 392, !935, i64 400, !935, i64 408, !935, i64 416, !935, i64 424, !935, i64 432, !935, i64 440, !935, i64 448, !948, i64 456, !948, i64 460, !935, i64 464, !1374, i64 472, !1375, i64 560, !935, i64 680, !935, i64 688, !935, i64 696, !935, i64 704, !935, i64 712, !948, i64 720, !1212, i64 728}
!1374 = !{!"apr_uri_t", !935, i64 0, !935, i64 8, !935, i64 16, !935, i64 24, !935, i64 32, !935, i64 40, !935, i64 48, !935, i64 56, !935, i64 64, !935, i64 72, !1233, i64 80, !948, i64 82, !948, i64 82, !948, i64 82}
!1375 = !{!"apr_finfo_t", !935, i64 0, !948, i64 8, !948, i64 12, !936, i64 16, !948, i64 20, !948, i64 24, !1212, i64 32, !1212, i64 40, !948, i64 48, !1212, i64 56, !1212, i64 64, !1212, i64 72, !1212, i64 80, !1212, i64 88, !935, i64 96, !935, i64 104, !935, i64 112}
!1376 = !{!1377, !948, i64 8}
!1377 = !{!"module_struct", !948, i64 0, !948, i64 4, !948, i64 8, !935, i64 16, !935, i64 24, !935, i64 32, !1212, i64 40, !935, i64 48, !935, i64 56, !935, i64 64, !935, i64 72, !935, i64 80, !935, i64 88, !935, i64 96, !948, i64 104}
!1378 = !DILocation(line: 173, column: 5, scope: !1352)
!1379 = !DILocation(line: 173, column: 18, scope: !1352)
!1380 = !DILocation(line: 174, column: 5, scope: !1352)
!1381 = !DILocation(line: 174, column: 18, scope: !1352)
!1382 = !DILocation(line: 175, column: 5, scope: !1352)
!1383 = !DILocation(line: 175, column: 17, scope: !1352)
!1384 = !DILocation(line: 176, column: 5, scope: !1352)
!1385 = !DILocation(line: 176, column: 17, scope: !1352)
!1386 = !DILocation(line: 177, column: 5, scope: !1352)
!1387 = !DILocation(line: 177, column: 17, scope: !1352)
!1388 = !DILocation(line: 178, column: 5, scope: !1352)
!1389 = !DILocation(line: 178, column: 17, scope: !1352)
!1390 = !DILocation(line: 179, column: 5, scope: !1352)
!1391 = !DILocation(line: 179, column: 18, scope: !1352)
!1392 = !DILocation(line: 179, column: 22, scope: !1352)
!1393 = !DILocation(line: 179, column: 25, scope: !1352)
!1394 = !{!1373, !935, i64 40}
!1395 = !DILocation(line: 179, column: 32, scope: !1352)
!1396 = !DILocation(line: 179, column: 35, scope: !1352)
!1397 = !DILocation(line: 179, column: 42, scope: !1352)
!1398 = !DILocation(line: 182, column: 9, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 182, column: 9)
!1400 = !DILocation(line: 182, column: 15, scope: !1399)
!1401 = !DILocation(line: 182, column: 9, scope: !1352)
!1402 = !DILocation(line: 183, column: 16, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 182, column: 26)
!1404 = !DILocation(line: 183, column: 22, scope: !1403)
!1405 = !DILocation(line: 183, column: 14, scope: !1403)
!1406 = !DILocation(line: 184, column: 5, scope: !1403)
!1407 = !DILocation(line: 185, column: 14, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1399, file: !2, line: 185, column: 14)
!1409 = !DILocation(line: 185, column: 20, scope: !1408)
!1410 = !DILocation(line: 185, column: 14, scope: !1399)
!1411 = !DILocation(line: 186, column: 16, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 185, column: 30)
!1413 = !DILocation(line: 186, column: 22, scope: !1412)
!1414 = !DILocation(line: 186, column: 14, scope: !1412)
!1415 = !DILocation(line: 187, column: 5, scope: !1412)
!1416 = !DILocation(line: 188, column: 14, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 188, column: 14)
!1418 = !DILocation(line: 188, column: 20, scope: !1417)
!1419 = !DILocation(line: 188, column: 32, scope: !1417)
!1420 = !DILocation(line: 188, column: 35, scope: !1417)
!1421 = !DILocation(line: 188, column: 38, scope: !1417)
!1422 = !{!1373, !935, i64 312}
!1423 = !DILocation(line: 188, column: 14, scope: !1408)
!1424 = !DILocation(line: 189, column: 16, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 188, column: 44)
!1426 = !DILocation(line: 189, column: 19, scope: !1425)
!1427 = !DILocation(line: 189, column: 14, scope: !1425)
!1428 = !DILocation(line: 190, column: 5, scope: !1425)
!1429 = !DILocation(line: 192, column: 9, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 191, column: 10)
!1431 = !DILocation(line: 196, column: 24, scope: !1352)
!1432 = !DILocation(line: 196, column: 27, scope: !1352)
!1433 = !{!1373, !935, i64 0}
!1434 = !DILocation(line: 196, column: 50, scope: !1352)
!1435 = !DILocation(line: 196, column: 12, scope: !1352)
!1436 = !DILocation(line: 196, column: 10, scope: !1352)
!1437 = !DILocation(line: 197, column: 39, scope: !1352)
!1438 = !DILocation(line: 197, column: 42, scope: !1352)
!1439 = !{!1373, !935, i64 264}
!1440 = !DILocation(line: 197, column: 49, scope: !1352)
!1441 = !DILocation(line: 197, column: 25, scope: !1352)
!1442 = !DILocation(line: 197, column: 8, scope: !1352)
!1443 = !DILocation(line: 198, column: 9, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 198, column: 9)
!1445 = !DILocation(line: 198, column: 9, scope: !1352)
!1446 = !DILocation(line: 199, column: 14, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1444, file: !2, line: 198, column: 13)
!1448 = !DILocation(line: 199, column: 10, scope: !1447)
!1449 = !DILocation(line: 199, column: 12, scope: !1447)
!1450 = !DILocation(line: 200, column: 9, scope: !1447)
!1451 = !DILocation(line: 204, column: 9, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 204, column: 9)
!1453 = !DILocation(line: 204, column: 15, scope: !1452)
!1454 = !DILocation(line: 204, column: 24, scope: !1452)
!1455 = !DILocation(line: 204, column: 27, scope: !1452)
!1456 = !DILocation(line: 204, column: 33, scope: !1452)
!1457 = !DILocation(line: 204, column: 9, scope: !1352)
!1458 = !DILocation(line: 207, column: 24, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1452, file: !2, line: 204, column: 44)
!1460 = !DILocation(line: 207, column: 27, scope: !1459)
!1461 = !DILocation(line: 207, column: 39, scope: !1459)
!1462 = !DILocation(line: 207, column: 45, scope: !1459)
!1463 = !DILocation(line: 207, column: 9, scope: !1459)
!1464 = !DILocation(line: 208, column: 13, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1459, file: !2, line: 208, column: 13)
!1466 = !DILocation(line: 208, column: 13, scope: !1459)
!1467 = !DILocation(line: 209, column: 28, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 208, column: 18)
!1469 = !DILocation(line: 209, column: 31, scope: !1468)
!1470 = !DILocation(line: 209, column: 37, scope: !1468)
!1471 = !DILocation(line: 209, column: 40, scope: !1468)
!1472 = !DILocation(line: 209, column: 19, scope: !1468)
!1473 = !DILocation(line: 209, column: 17, scope: !1468)
!1474 = !DILocation(line: 210, column: 17, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 210, column: 17)
!1476 = !DILocation(line: 210, column: 21, scope: !1475)
!1477 = !DILocation(line: 210, column: 17, scope: !1468)
!1478 = !DILocation(line: 211, column: 24, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1475, file: !2, line: 210, column: 37)
!1480 = !DILocation(line: 211, column: 17, scope: !1479)
!1481 = !DILocation(line: 213, column: 9, scope: !1468)
!1482 = !DILocation(line: 215, column: 5, scope: !1459)
!1483 = !DILocation(line: 218, column: 14, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1452, file: !2, line: 218, column: 14)
!1485 = !DILocation(line: 218, column: 20, scope: !1484)
!1486 = !DILocation(line: 218, column: 14, scope: !1452)
!1487 = !DILocation(line: 219, column: 13, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 219, column: 13)
!1489 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 218, column: 29)
!1490 = !DILocation(line: 219, column: 16, scope: !1488)
!1491 = !DILocation(line: 219, column: 13, scope: !1489)
!1492 = !DILocation(line: 220, column: 28, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 219, column: 22)
!1494 = !DILocation(line: 220, column: 31, scope: !1493)
!1495 = !DILocation(line: 220, column: 37, scope: !1493)
!1496 = !DILocation(line: 220, column: 40, scope: !1493)
!1497 = !DILocation(line: 220, column: 43, scope: !1493)
!1498 = !DILocation(line: 220, column: 19, scope: !1493)
!1499 = !DILocation(line: 220, column: 17, scope: !1493)
!1500 = !DILocation(line: 221, column: 17, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 221, column: 17)
!1502 = !DILocation(line: 221, column: 21, scope: !1501)
!1503 = !DILocation(line: 221, column: 17, scope: !1493)
!1504 = !DILocation(line: 222, column: 24, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !2, line: 221, column: 37)
!1506 = !DILocation(line: 222, column: 17, scope: !1505)
!1507 = !DILocation(line: 224, column: 9, scope: !1493)
!1508 = !DILocation(line: 225, column: 5, scope: !1489)
!1509 = !DILocation(line: 229, column: 9, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 228, column: 10)
!1511 = !DILocation(line: 233, column: 26, scope: !1352)
!1512 = !DILocation(line: 233, column: 8, scope: !1352)
!1513 = !DILocation(line: 234, column: 16, scope: !1352)
!1514 = !DILocation(line: 234, column: 19, scope: !1352)
!1515 = !DILocation(line: 234, column: 5, scope: !1352)
!1516 = !DILocation(line: 234, column: 9, scope: !1352)
!1517 = !DILocation(line: 234, column: 14, scope: !1352)
!1518 = !{!1519, !935, i64 0}
!1519 = !{!"", !935, i64 0, !935, i64 8, !935, i64 16, !935, i64 24, !935, i64 32, !1212, i64 40, !1212, i64 48, !948, i64 56, !948, i64 60, !948, i64 64}
!1520 = !DILocation(line: 235, column: 34, scope: !1352)
!1521 = !DILocation(line: 235, column: 38, scope: !1352)
!1522 = !DILocation(line: 235, column: 19, scope: !1352)
!1523 = !DILocation(line: 235, column: 5, scope: !1352)
!1524 = !DILocation(line: 235, column: 9, scope: !1352)
!1525 = !DILocation(line: 235, column: 17, scope: !1352)
!1526 = !{!1519, !935, i64 24}
!1527 = !DILocation(line: 236, column: 9, scope: !1366)
!1528 = !DILocation(line: 236, column: 13, scope: !1366)
!1529 = !DILocation(line: 236, column: 16, scope: !1366)
!1530 = !DILocation(line: 236, column: 9, scope: !1352)
!1531 = !DILocation(line: 237, column: 9, scope: !1365)
!1532 = !DILocation(line: 237, column: 21, scope: !1365)
!1533 = !DILocation(line: 237, column: 28, scope: !1365)
!1534 = !DILocation(line: 238, column: 43, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1365, file: !2, line: 238, column: 13)
!1536 = !DILocation(line: 238, column: 49, scope: !1535)
!1537 = !DILocation(line: 238, column: 28, scope: !1535)
!1538 = !DILocation(line: 238, column: 25, scope: !1535)
!1539 = !DILocation(line: 238, column: 13, scope: !1365)
!1540 = !DILocation(line: 239, column: 24, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 238, column: 55)
!1542 = !DILocation(line: 239, column: 13, scope: !1541)
!1543 = !DILocation(line: 239, column: 17, scope: !1541)
!1544 = !DILocation(line: 239, column: 22, scope: !1541)
!1545 = !{!1519, !935, i64 8}
!1546 = !DILocation(line: 240, column: 9, scope: !1541)
!1547 = !DILocation(line: 241, column: 5, scope: !1366)
!1548 = !DILocation(line: 241, column: 5, scope: !1365)
!1549 = !DILocation(line: 242, column: 19, scope: !1352)
!1550 = !DILocation(line: 242, column: 5, scope: !1352)
!1551 = !DILocation(line: 242, column: 9, scope: !1352)
!1552 = !DILocation(line: 242, column: 17, scope: !1352)
!1553 = !{!1519, !935, i64 32}
!1554 = !DILocation(line: 243, column: 10, scope: !1352)
!1555 = !DILocation(line: 243, column: 6, scope: !1352)
!1556 = !DILocation(line: 243, column: 8, scope: !1352)
!1557 = !DILocation(line: 246, column: 20, scope: !1352)
!1558 = !DILocation(line: 246, column: 23, scope: !1352)
!1559 = !DILocation(line: 246, column: 30, scope: !1352)
!1560 = !DILocation(line: 246, column: 44, scope: !1352)
!1561 = !DILocation(line: 246, column: 5, scope: !1352)
!1562 = !DILocation(line: 249, column: 20, scope: !1352)
!1563 = !DILocation(line: 249, column: 23, scope: !1352)
!1564 = !{!1373, !935, i64 240}
!1565 = !DILocation(line: 249, column: 5, scope: !1352)
!1566 = !DILocation(line: 251, column: 5, scope: !1352)
!1567 = !DILocation(line: 253, column: 1, scope: !1352)
!1568 = !DISubprogram(name: "ap_hook_session_save", scope: !183, file: !183, line: 143, type: !1569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{null, !1571, !234, !234, !73}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_HOOK_session_save_t", file: !183, line: 143, baseType: !1573)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!84, !407, !181}
!1575 = distinct !DISubprogram(name: "session_dbd_save", scope: !2, file: !2, line: 404, type: !1573, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1576)
!1576 = !{!1577, !1578, !1579, !1580, !1581, !1584}
!1577 = !DILocalVariable(name: "r", arg: 1, scope: !1575, file: !2, line: 404, type: !407)
!1578 = !DILocalVariable(name: "z", arg: 2, scope: !1575, file: !2, line: 404, type: !181)
!1579 = !DILocalVariable(name: "ret", scope: !1575, file: !2, line: 407, type: !84)
!1580 = !DILocalVariable(name: "conf", scope: !1575, file: !2, line: 408, type: !160)
!1581 = !DILocalVariable(name: "oldkey", scope: !1582, file: !2, line: 413, type: !215)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 412, column: 44)
!1583 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 412, column: 9)
!1584 = !DILocalVariable(name: "newkey", scope: !1582, file: !2, line: 413, type: !215)
!1585 = !DILocation(line: 404, column: 52, scope: !1575)
!1586 = !DILocation(line: 404, column: 69, scope: !1575)
!1587 = !DILocation(line: 407, column: 5, scope: !1575)
!1588 = !DILocation(line: 407, column: 18, scope: !1575)
!1589 = !DILocation(line: 408, column: 5, scope: !1575)
!1590 = !DILocation(line: 408, column: 27, scope: !1575)
!1591 = !DILocation(line: 408, column: 34, scope: !1575)
!1592 = !DILocation(line: 412, column: 9, scope: !1583)
!1593 = !DILocation(line: 412, column: 15, scope: !1583)
!1594 = !DILocation(line: 412, column: 24, scope: !1583)
!1595 = !DILocation(line: 412, column: 27, scope: !1583)
!1596 = !DILocation(line: 412, column: 33, scope: !1583)
!1597 = !DILocation(line: 412, column: 9, scope: !1575)
!1598 = !DILocation(line: 413, column: 9, scope: !1582)
!1599 = !DILocation(line: 413, column: 15, scope: !1582)
!1600 = !DILocation(line: 413, column: 31, scope: !1582)
!1601 = !DILocation(line: 416, column: 13, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 416, column: 13)
!1603 = !DILocation(line: 416, column: 16, scope: !1602)
!1604 = !DILocation(line: 416, column: 13, scope: !1582)
!1605 = !DILocation(line: 417, column: 22, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !2, line: 416, column: 22)
!1607 = !DILocation(line: 417, column: 20, scope: !1606)
!1608 = !DILocation(line: 418, column: 29, scope: !1606)
!1609 = !DILocation(line: 418, column: 37, scope: !1606)
!1610 = !DILocation(line: 418, column: 40, scope: !1606)
!1611 = !DILocation(line: 418, column: 13, scope: !1606)
!1612 = !DILocation(line: 419, column: 9, scope: !1606)
!1613 = !DILocation(line: 420, column: 13, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 420, column: 13)
!1615 = !DILocation(line: 420, column: 16, scope: !1614)
!1616 = !{!1519, !948, i64 56}
!1617 = !DILocation(line: 420, column: 22, scope: !1614)
!1618 = !DILocation(line: 420, column: 26, scope: !1614)
!1619 = !DILocation(line: 420, column: 13, scope: !1582)
!1620 = !DILocation(line: 421, column: 23, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 420, column: 34)
!1622 = !DILocation(line: 421, column: 13, scope: !1621)
!1623 = !DILocation(line: 421, column: 16, scope: !1621)
!1624 = !DILocation(line: 421, column: 21, scope: !1621)
!1625 = !DILocation(line: 422, column: 26, scope: !1621)
!1626 = !DILocation(line: 422, column: 29, scope: !1621)
!1627 = !DILocation(line: 422, column: 13, scope: !1621)
!1628 = !DILocation(line: 423, column: 22, scope: !1621)
!1629 = !DILocation(line: 423, column: 20, scope: !1621)
!1630 = !DILocation(line: 424, column: 29, scope: !1621)
!1631 = !DILocation(line: 424, column: 37, scope: !1621)
!1632 = !DILocation(line: 424, column: 40, scope: !1621)
!1633 = !DILocation(line: 424, column: 13, scope: !1621)
!1634 = !DILocation(line: 425, column: 9, scope: !1621)
!1635 = !DILocation(line: 427, column: 22, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 426, column: 14)
!1637 = !DILocation(line: 427, column: 20, scope: !1636)
!1638 = !DILocation(line: 431, column: 13, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 431, column: 13)
!1640 = !DILocation(line: 431, column: 16, scope: !1639)
!1641 = !DILocation(line: 431, column: 24, scope: !1639)
!1642 = !DILocation(line: 431, column: 27, scope: !1639)
!1643 = !DILocation(line: 431, column: 30, scope: !1639)
!1644 = !DILocation(line: 431, column: 13, scope: !1582)
!1645 = !DILocation(line: 432, column: 28, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1639, file: !2, line: 431, column: 42)
!1647 = !DILocation(line: 432, column: 31, scope: !1646)
!1648 = !DILocation(line: 432, column: 39, scope: !1646)
!1649 = !DILocation(line: 432, column: 47, scope: !1646)
!1650 = !DILocation(line: 432, column: 50, scope: !1646)
!1651 = !DILocation(line: 432, column: 59, scope: !1646)
!1652 = !DILocation(line: 432, column: 62, scope: !1646)
!1653 = !{!1519, !1212, i64 40}
!1654 = !DILocation(line: 432, column: 19, scope: !1646)
!1655 = !DILocation(line: 432, column: 17, scope: !1646)
!1656 = !DILocation(line: 433, column: 9, scope: !1646)
!1657 = !DILocation(line: 435, column: 30, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1639, file: !2, line: 434, column: 14)
!1659 = !DILocation(line: 435, column: 33, scope: !1658)
!1660 = !DILocation(line: 435, column: 19, scope: !1658)
!1661 = !DILocation(line: 435, column: 17, scope: !1658)
!1662 = !DILocation(line: 437, column: 13, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 437, column: 13)
!1664 = !DILocation(line: 437, column: 17, scope: !1663)
!1665 = !DILocation(line: 437, column: 13, scope: !1582)
!1666 = !DILocation(line: 438, column: 20, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1663, file: !2, line: 437, column: 33)
!1668 = !DILocation(line: 438, column: 13, scope: !1667)
!1669 = !DILocation(line: 442, column: 13, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 442, column: 13)
!1671 = !DILocation(line: 442, column: 19, scope: !1670)
!1672 = !DILocation(line: 442, column: 13, scope: !1582)
!1673 = !DILocation(line: 443, column: 29, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 442, column: 29)
!1675 = !DILocation(line: 443, column: 32, scope: !1674)
!1676 = !DILocation(line: 443, column: 38, scope: !1674)
!1677 = !DILocation(line: 443, column: 44, scope: !1674)
!1678 = !DILocation(line: 443, column: 52, scope: !1674)
!1679 = !DILocation(line: 443, column: 58, scope: !1674)
!1680 = !DILocation(line: 443, column: 70, scope: !1674)
!1681 = !DILocation(line: 443, column: 73, scope: !1674)
!1682 = !{!1519, !1212, i64 48}
!1683 = !DILocation(line: 444, column: 29, scope: !1674)
!1684 = !DILocation(line: 444, column: 32, scope: !1674)
!1685 = !DILocation(line: 444, column: 45, scope: !1674)
!1686 = !DILocation(line: 444, column: 48, scope: !1674)
!1687 = !{!1373, !935, i64 248}
!1688 = !DILocation(line: 443, column: 13, scope: !1674)
!1689 = !DILocation(line: 445, column: 9, scope: !1674)
!1690 = !DILocation(line: 448, column: 13, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 448, column: 13)
!1692 = !DILocation(line: 448, column: 19, scope: !1691)
!1693 = !DILocation(line: 448, column: 13, scope: !1582)
!1694 = !DILocation(line: 449, column: 30, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1691, file: !2, line: 448, column: 30)
!1696 = !DILocation(line: 449, column: 33, scope: !1695)
!1697 = !DILocation(line: 449, column: 39, scope: !1695)
!1698 = !DILocation(line: 449, column: 46, scope: !1695)
!1699 = !DILocation(line: 449, column: 54, scope: !1695)
!1700 = !DILocation(line: 449, column: 60, scope: !1695)
!1701 = !DILocation(line: 449, column: 73, scope: !1695)
!1702 = !DILocation(line: 449, column: 76, scope: !1695)
!1703 = !DILocation(line: 450, column: 30, scope: !1695)
!1704 = !DILocation(line: 450, column: 33, scope: !1695)
!1705 = !DILocation(line: 450, column: 46, scope: !1695)
!1706 = !DILocation(line: 450, column: 49, scope: !1695)
!1707 = !DILocation(line: 449, column: 13, scope: !1695)
!1708 = !DILocation(line: 451, column: 9, scope: !1695)
!1709 = !DILocation(line: 453, column: 9, scope: !1582)
!1710 = !DILocation(line: 455, column: 5, scope: !1583)
!1711 = !DILocation(line: 458, column: 14, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 458, column: 14)
!1713 = !DILocation(line: 458, column: 20, scope: !1712)
!1714 = !DILocation(line: 458, column: 14, scope: !1583)
!1715 = !DILocation(line: 461, column: 24, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1712, file: !2, line: 458, column: 29)
!1717 = !DILocation(line: 461, column: 27, scope: !1716)
!1718 = !DILocation(line: 461, column: 9, scope: !1716)
!1719 = !DILocation(line: 463, column: 13, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1716, file: !2, line: 463, column: 13)
!1721 = !DILocation(line: 463, column: 16, scope: !1720)
!1722 = !DILocation(line: 463, column: 13, scope: !1716)
!1723 = !DILocation(line: 464, column: 28, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1720, file: !2, line: 463, column: 22)
!1725 = !DILocation(line: 464, column: 31, scope: !1724)
!1726 = !DILocation(line: 464, column: 34, scope: !1724)
!1727 = !DILocation(line: 464, column: 40, scope: !1724)
!1728 = !DILocation(line: 464, column: 43, scope: !1724)
!1729 = !DILocation(line: 464, column: 49, scope: !1724)
!1730 = !DILocation(line: 464, column: 52, scope: !1724)
!1731 = !DILocation(line: 464, column: 61, scope: !1724)
!1732 = !DILocation(line: 464, column: 64, scope: !1724)
!1733 = !DILocation(line: 464, column: 19, scope: !1724)
!1734 = !DILocation(line: 464, column: 17, scope: !1724)
!1735 = !DILocation(line: 465, column: 17, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1724, file: !2, line: 465, column: 17)
!1737 = !DILocation(line: 465, column: 21, scope: !1736)
!1738 = !DILocation(line: 465, column: 17, scope: !1724)
!1739 = !DILocation(line: 466, column: 24, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1736, file: !2, line: 465, column: 37)
!1741 = !DILocation(line: 466, column: 17, scope: !1740)
!1742 = !DILocation(line: 468, column: 13, scope: !1724)
!1743 = !DILocation(line: 471, column: 13, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1720, file: !2, line: 470, column: 14)
!1745 = !DILocation(line: 471, column: 13, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !2, line: 471, column: 13)
!1747 = distinct !DILexicalBlock(scope: !1744, file: !2, line: 471, column: 13)
!1748 = !{!1373, !935, i64 336}
!1749 = !DILocation(line: 471, column: 13, scope: !1747)
!1750 = !DILocation(line: 475, column: 5, scope: !1716)
!1751 = !DILocation(line: 477, column: 5, scope: !1575)
!1752 = !DILocation(line: 479, column: 1, scope: !1575)
!1753 = !DISubprogram(name: "ap_hook_monitor", scope: !1754, file: !1754, line: 395, type: !1755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1754 = !DIFile(filename: "include/mpm_common.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "2cf8281ca4f6fe649abc2ffb5eab965a")
!1755 = !DISubroutineType(types: !1756)
!1756 = !{null, !1757, !234, !234, !73}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_HOOK_monitor_t", file: !1754, line: 395, baseType: !1759)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!73, !131, !221}
!1761 = distinct !DISubprogram(name: "session_dbd_monitor", scope: !2, file: !2, line: 485, type: !1759, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1762)
!1762 = !{!1763, !1764}
!1763 = !DILocalVariable(name: "p", arg: 1, scope: !1761, file: !2, line: 485, type: !131)
!1764 = !DILocalVariable(name: "s", arg: 2, scope: !1761, file: !2, line: 485, type: !221)
!1765 = !DILocation(line: 485, column: 44, scope: !1761)
!1766 = !DILocation(line: 485, column: 59, scope: !1761)
!1767 = !DILocation(line: 488, column: 15, scope: !1761)
!1768 = !DILocation(line: 488, column: 18, scope: !1761)
!1769 = !DILocation(line: 488, column: 5, scope: !1761)
!1770 = !DILocation(line: 489, column: 5, scope: !1761)
!1771 = !DISubprogram(name: "apr_table_get", scope: !201, file: !201, line: 268, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!70, !1774, !70}
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!1776 = !DISubprogram(name: "ap_cookie_read", scope: !1338, file: !1338, line: 127, type: !1777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!84, !407, !70, !120, !73}
!1779 = distinct !DISubprogram(name: "dbd_load", scope: !2, file: !2, line: 100, type: !1780, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1782)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!84, !131, !407, !70, !120}
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788, !1789, !1793, !1797, !1801, !1802}
!1783 = !DILocalVariable(name: "p", arg: 1, scope: !1779, file: !2, line: 100, type: !131)
!1784 = !DILocalVariable(name: "r", arg: 2, scope: !1779, file: !2, line: 100, type: !407)
!1785 = !DILocalVariable(name: "key", arg: 3, scope: !1779, file: !2, line: 101, type: !70)
!1786 = !DILocalVariable(name: "val", arg: 4, scope: !1779, file: !2, line: 101, type: !120)
!1787 = !DILocalVariable(name: "rv", scope: !1779, file: !2, line: 104, type: !84)
!1788 = !DILocalVariable(name: "dbd", scope: !1779, file: !2, line: 105, type: !387)
!1789 = !DILocalVariable(name: "statement", scope: !1779, file: !2, line: 106, type: !1790)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_dbd_prepared_t", file: !394, line: 87, baseType: !1792)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_dbd_prepared_t", file: !394, line: 87, flags: DIFlagFwdDecl)
!1793 = !DILocalVariable(name: "res", scope: !1779, file: !2, line: 107, type: !1794)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_dbd_results_t", file: !394, line: 85, baseType: !1796)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_dbd_results_t", file: !394, line: 85, flags: DIFlagFwdDecl)
!1797 = !DILocalVariable(name: "row", scope: !1779, file: !2, line: 108, type: !1798)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_dbd_row_t", file: !394, line: 86, baseType: !1800)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_dbd_row_t", file: !394, line: 86, flags: DIFlagFwdDecl)
!1801 = !DILocalVariable(name: "expiry", scope: !1779, file: !2, line: 109, type: !207)
!1802 = !DILocalVariable(name: "conf", scope: !1779, file: !2, line: 111, type: !160)
!1803 = !DILocation(line: 100, column: 42, scope: !1779)
!1804 = !DILocation(line: 100, column: 59, scope: !1779)
!1805 = !DILocation(line: 101, column: 42, scope: !1779)
!1806 = !DILocation(line: 101, column: 60, scope: !1779)
!1807 = !DILocation(line: 104, column: 5, scope: !1779)
!1808 = !DILocation(line: 104, column: 18, scope: !1779)
!1809 = !DILocation(line: 105, column: 5, scope: !1779)
!1810 = !DILocation(line: 105, column: 15, scope: !1779)
!1811 = !DILocation(line: 106, column: 5, scope: !1779)
!1812 = !DILocation(line: 106, column: 25, scope: !1779)
!1813 = !DILocation(line: 107, column: 5, scope: !1779)
!1814 = !DILocation(line: 107, column: 24, scope: !1779)
!1815 = !DILocation(line: 108, column: 5, scope: !1779)
!1816 = !DILocation(line: 108, column: 20, scope: !1779)
!1817 = !DILocation(line: 109, column: 5, scope: !1779)
!1818 = !DILocation(line: 109, column: 17, scope: !1779)
!1819 = !DILocation(line: 109, column: 40, scope: !1779)
!1820 = !{!1212, !1212, i64 0}
!1821 = !DILocation(line: 111, column: 5, scope: !1779)
!1822 = !DILocation(line: 111, column: 27, scope: !1779)
!1823 = !DILocation(line: 111, column: 34, scope: !1779)
!1824 = !DILocation(line: 114, column: 9, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1779, file: !2, line: 114, column: 9)
!1826 = !DILocation(line: 114, column: 15, scope: !1825)
!1827 = !DILocation(line: 114, column: 27, scope: !1825)
!1828 = !DILocation(line: 114, column: 9, scope: !1779)
!1829 = !DILocation(line: 115, column: 9, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1825, file: !2, line: 114, column: 36)
!1831 = !DILocation(line: 115, column: 9, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !2, line: 115, column: 9)
!1833 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 115, column: 9)
!1834 = !DILocation(line: 115, column: 9, scope: !1833)
!1835 = !DILocation(line: 117, column: 9, scope: !1830)
!1836 = !DILocation(line: 120, column: 19, scope: !1779)
!1837 = !DILocation(line: 120, column: 22, scope: !1779)
!1838 = !DILocation(line: 120, column: 28, scope: !1779)
!1839 = !DILocation(line: 120, column: 10, scope: !1779)
!1840 = !DILocation(line: 120, column: 8, scope: !1779)
!1841 = !DILocation(line: 121, column: 9, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1779, file: !2, line: 121, column: 9)
!1843 = !DILocation(line: 121, column: 9, scope: !1779)
!1844 = !DILocation(line: 122, column: 16, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1842, file: !2, line: 121, column: 13)
!1846 = !DILocation(line: 122, column: 9, scope: !1845)
!1847 = !DILocation(line: 124, column: 28, scope: !1779)
!1848 = !DILocation(line: 124, column: 33, scope: !1779)
!1849 = !{!1850, !935, i64 8}
!1850 = !{!"", !935, i64 0, !935, i64 8, !935, i64 16, !935, i64 24}
!1851 = !DILocation(line: 124, column: 41, scope: !1779)
!1852 = !DILocation(line: 124, column: 44, scope: !1779)
!1853 = !DILocation(line: 124, column: 50, scope: !1779)
!1854 = !DILocation(line: 124, column: 55, scope: !1779)
!1855 = !{!1850, !935, i64 0}
!1856 = !DILocation(line: 124, column: 69, scope: !1779)
!1857 = !DILocation(line: 125, column: 30, scope: !1779)
!1858 = !DILocation(line: 124, column: 10, scope: !1779)
!1859 = !DILocation(line: 124, column: 8, scope: !1779)
!1860 = !DILocation(line: 126, column: 9, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1779, file: !2, line: 126, column: 9)
!1862 = !DILocation(line: 126, column: 9, scope: !1779)
!1863 = !DILocation(line: 127, column: 9, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1861, file: !2, line: 126, column: 13)
!1865 = !DILocation(line: 127, column: 9, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !2, line: 127, column: 9)
!1867 = distinct !DILexicalBlock(scope: !1864, file: !2, line: 127, column: 9)
!1868 = !DILocation(line: 127, column: 9, scope: !1867)
!1869 = !DILocation(line: 131, column: 9, scope: !1864)
!1870 = !DILocation(line: 133, column: 31, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1779, file: !2, line: 133, column: 5)
!1872 = !DILocation(line: 133, column: 36, scope: !1871)
!1873 = !DILocation(line: 133, column: 44, scope: !1871)
!1874 = !DILocation(line: 133, column: 47, scope: !1871)
!1875 = !DILocation(line: 133, column: 53, scope: !1871)
!1876 = !DILocation(line: 133, column: 15, scope: !1871)
!1877 = !DILocation(line: 133, column: 13, scope: !1871)
!1878 = !DILocation(line: 133, column: 10, scope: !1871)
!1879 = !DILocation(line: 134, column: 10, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 133, column: 5)
!1881 = !DILocation(line: 134, column: 13, scope: !1880)
!1882 = !DILocation(line: 133, column: 5, scope: !1871)
!1883 = !DILocation(line: 136, column: 13, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !2, line: 136, column: 13)
!1885 = distinct !DILexicalBlock(scope: !1880, file: !2, line: 135, column: 69)
!1886 = !DILocation(line: 136, column: 16, scope: !1884)
!1887 = !DILocation(line: 136, column: 13, scope: !1885)
!1888 = !DILocation(line: 137, column: 13, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1884, file: !2, line: 136, column: 22)
!1890 = !DILocation(line: 137, column: 13, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !2, line: 137, column: 13)
!1892 = distinct !DILexicalBlock(scope: !1889, file: !2, line: 137, column: 13)
!1893 = !DILocation(line: 137, column: 13, scope: !1892)
!1894 = !DILocation(line: 141, column: 13, scope: !1889)
!1895 = !DILocation(line: 143, column: 14, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1885, file: !2, line: 143, column: 13)
!1897 = !DILocation(line: 143, column: 13, scope: !1896)
!1898 = !DILocation(line: 143, column: 18, scope: !1896)
!1899 = !DILocation(line: 143, column: 13, scope: !1885)
!1900 = !DILocation(line: 144, column: 32, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1896, file: !2, line: 143, column: 27)
!1902 = !DILocation(line: 144, column: 53, scope: !1901)
!1903 = !DILocation(line: 144, column: 58, scope: !1901)
!1904 = !DILocation(line: 144, column: 66, scope: !1901)
!1905 = !DILocation(line: 144, column: 35, scope: !1901)
!1906 = !DILocation(line: 144, column: 20, scope: !1901)
!1907 = !DILocation(line: 144, column: 14, scope: !1901)
!1908 = !DILocation(line: 144, column: 18, scope: !1901)
!1909 = !DILocation(line: 145, column: 9, scope: !1901)
!1910 = !DILocation(line: 147, column: 5, scope: !1885)
!1911 = !DILocation(line: 135, column: 31, scope: !1880)
!1912 = !DILocation(line: 135, column: 36, scope: !1880)
!1913 = !DILocation(line: 135, column: 44, scope: !1880)
!1914 = !DILocation(line: 135, column: 47, scope: !1880)
!1915 = !DILocation(line: 135, column: 53, scope: !1880)
!1916 = !DILocation(line: 135, column: 15, scope: !1880)
!1917 = !DILocation(line: 135, column: 13, scope: !1880)
!1918 = !DILocation(line: 133, column: 5, scope: !1880)
!1919 = distinct !{!1919, !1882, !1920, !1238}
!1920 = !DILocation(line: 147, column: 5, scope: !1871)
!1921 = !DILocation(line: 149, column: 5, scope: !1779)
!1922 = !DILocation(line: 151, column: 1, scope: !1779)
!1923 = !DISubprogram(name: "apr_table_make", scope: !201, file: !201, line: 232, type: !1924, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!199, !131, !73}
!1926 = !DISubprogram(name: "apr_uuid_parse", scope: !190, file: !190, line: 69, type: !1927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!84, !188, !70}
!1929 = !DISubprogram(name: "apr_table_setn", scope: !201, file: !201, line: 304, type: !1930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{null, !199, !70, !70}
!1932 = !DISubprogram(name: "apr_table_addn", scope: !201, file: !201, line: 360, type: !1930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1933 = !DISubprogram(name: "apr_time_now", scope: !206, file: !206, line: 87, type: !1934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!205}
!1936 = !DISubprogram(name: "ap_log_rerror_", scope: !849, file: !849, line: 456, type: !1937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !70, !73, !73, !73, !84, !1939, !70, null}
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!1941 = distinct !DISubprogram(name: "dbd_init", scope: !2, file: !2, line: 59, type: !1942, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1946)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!84, !407, !70, !1944, !1945}
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1946 = !{!1947, !1948, !1949, !1950, !1951, !1952}
!1947 = !DILocalVariable(name: "r", arg: 1, scope: !1941, file: !2, line: 59, type: !407)
!1948 = !DILocalVariable(name: "query", arg: 2, scope: !1941, file: !2, line: 59, type: !70)
!1949 = !DILocalVariable(name: "dbdp", arg: 3, scope: !1941, file: !2, line: 59, type: !1944)
!1950 = !DILocalVariable(name: "statementp", arg: 4, scope: !1941, file: !2, line: 60, type: !1945)
!1951 = !DILocalVariable(name: "dbd", scope: !1941, file: !2, line: 62, type: !387)
!1952 = !DILocalVariable(name: "statement", scope: !1941, file: !2, line: 63, type: !1790)
!1953 = !DILocation(line: 59, column: 43, scope: !1941)
!1954 = !DILocation(line: 59, column: 58, scope: !1941)
!1955 = !DILocation(line: 59, column: 76, scope: !1941)
!1956 = !DILocation(line: 60, column: 51, scope: !1941)
!1957 = !DILocation(line: 62, column: 5, scope: !1941)
!1958 = !DILocation(line: 62, column: 15, scope: !1941)
!1959 = !DILocation(line: 63, column: 5, scope: !1941)
!1960 = !DILocation(line: 63, column: 25, scope: !1941)
!1961 = !DILocation(line: 65, column: 10, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1941, file: !2, line: 65, column: 9)
!1963 = !DILocation(line: 65, column: 33, scope: !1962)
!1964 = !DILocation(line: 65, column: 37, scope: !1962)
!1965 = !DILocation(line: 65, column: 9, scope: !1941)
!1966 = !DILocation(line: 66, column: 34, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1962, file: !2, line: 65, column: 61)
!1968 = !DILocation(line: 66, column: 32, scope: !1967)
!1969 = !DILocation(line: 67, column: 34, scope: !1967)
!1970 = !DILocation(line: 67, column: 32, scope: !1967)
!1971 = !DILocation(line: 68, column: 14, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1967, file: !2, line: 68, column: 13)
!1973 = !DILocation(line: 68, column: 37, scope: !1972)
!1974 = !DILocation(line: 68, column: 41, scope: !1972)
!1975 = !DILocation(line: 68, column: 13, scope: !1967)
!1976 = !DILocation(line: 69, column: 13, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1972, file: !2, line: 68, column: 65)
!1978 = !DILocation(line: 69, column: 13, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !2, line: 69, column: 13)
!1980 = distinct !DILexicalBlock(scope: !1977, file: !2, line: 69, column: 13)
!1981 = !DILocation(line: 69, column: 13, scope: !1980)
!1982 = !DILocation(line: 71, column: 13, scope: !1977)
!1983 = !DILocation(line: 73, column: 5, scope: !1967)
!1984 = !DILocation(line: 75, column: 11, scope: !1941)
!1985 = !DILocation(line: 75, column: 34, scope: !1941)
!1986 = !DILocation(line: 75, column: 9, scope: !1941)
!1987 = !DILocation(line: 76, column: 10, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1941, file: !2, line: 76, column: 9)
!1989 = !DILocation(line: 76, column: 9, scope: !1941)
!1990 = !DILocation(line: 77, column: 9, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1988, file: !2, line: 76, column: 15)
!1992 = !DILocation(line: 77, column: 9, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !2, line: 77, column: 9)
!1994 = distinct !DILexicalBlock(scope: !1991, file: !2, line: 77, column: 9)
!1995 = !DILocation(line: 77, column: 9, scope: !1994)
!1996 = !DILocation(line: 79, column: 9, scope: !1991)
!1997 = !DILocation(line: 82, column: 30, scope: !1941)
!1998 = !DILocation(line: 82, column: 35, scope: !1941)
!1999 = !{!1850, !935, i64 16}
!2000 = !DILocation(line: 82, column: 45, scope: !1941)
!2001 = !DILocation(line: 82, column: 17, scope: !1941)
!2002 = !DILocation(line: 82, column: 15, scope: !1941)
!2003 = !DILocation(line: 83, column: 10, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1941, file: !2, line: 83, column: 9)
!2005 = !DILocation(line: 83, column: 9, scope: !1941)
!2006 = !DILocation(line: 84, column: 9, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 83, column: 21)
!2008 = !DILocation(line: 84, column: 9, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 84, column: 9)
!2010 = distinct !DILexicalBlock(scope: !2007, file: !2, line: 84, column: 9)
!2011 = !DILocation(line: 84, column: 9, scope: !2010)
!2012 = !DILocation(line: 86, column: 9, scope: !2007)
!2013 = !DILocation(line: 89, column: 13, scope: !1941)
!2014 = !DILocation(line: 89, column: 6, scope: !1941)
!2015 = !DILocation(line: 89, column: 11, scope: !1941)
!2016 = !DILocation(line: 90, column: 19, scope: !1941)
!2017 = !DILocation(line: 90, column: 6, scope: !1941)
!2018 = !DILocation(line: 90, column: 17, scope: !1941)
!2019 = !DILocation(line: 92, column: 5, scope: !1941)
!2020 = !DILocation(line: 93, column: 1, scope: !1941)
!2021 = !DISubprogram(name: "apr_dbd_pvbselect", scope: !394, file: !394, line: 524, type: !2022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!73, !397, !131, !392, !2024, !1790, !73, null}
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!2025 = !DISubprogram(name: "apr_dbd_error", scope: !394, file: !394, line: 352, type: !2026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!70, !397, !392, !73}
!2028 = !DISubprogram(name: "apr_dbd_get_row", scope: !394, file: !394, line: 319, type: !2029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!73, !397, !131, !1794, !2031, !73}
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!2032 = !DISubprogram(name: "apr_dbd_get_entry", scope: !394, file: !394, line: 330, type: !2033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!70, !397, !1798, !73}
!2035 = !DISubprogram(name: "apr_dynamic_fn_retrieve", scope: !2036, file: !2036, line: 78, type: !2037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2036 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_optional.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "9d84a07cc1a598073ddbf179f8094c5d")
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!2039, !70}
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_opt_fn_t", file: !2036, line: 59, baseType: !2041)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{null}
!2043 = !DISubprogram(name: "apr_hash_get", scope: !404, file: !404, line: 118, type: !2044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!79, !402, !2046, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_ssize_t", file: !103, line: 380, baseType: !2049)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !110, line: 108, baseType: !2050)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !112, line: 194, baseType: !113)
!2051 = !DISubprogram(name: "apr_uuid_format", scope: !190, file: !190, line: 62, type: !2052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !215, !2054}
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!2056 = !DISubprogram(name: "apr_uuid_get", scope: !190, file: !190, line: 53, type: !2057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{null, !188}
!2059 = distinct !DISubprogram(name: "dbd_save", scope: !2, file: !2, line: 258, type: !2060, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2062)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!84, !407, !70, !70, !70, !207}
!2062 = !{!2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072}
!2063 = !DILocalVariable(name: "r", arg: 1, scope: !2059, file: !2, line: 258, type: !407)
!2064 = !DILocalVariable(name: "oldkey", arg: 2, scope: !2059, file: !2, line: 258, type: !70)
!2065 = !DILocalVariable(name: "newkey", arg: 3, scope: !2059, file: !2, line: 259, type: !70)
!2066 = !DILocalVariable(name: "val", arg: 4, scope: !2059, file: !2, line: 259, type: !70)
!2067 = !DILocalVariable(name: "expiry", arg: 5, scope: !2059, file: !2, line: 259, type: !207)
!2068 = !DILocalVariable(name: "rv", scope: !2059, file: !2, line: 262, type: !84)
!2069 = !DILocalVariable(name: "dbd", scope: !2059, file: !2, line: 263, type: !387)
!2070 = !DILocalVariable(name: "statement", scope: !2059, file: !2, line: 264, type: !1790)
!2071 = !DILocalVariable(name: "rows", scope: !2059, file: !2, line: 265, type: !73)
!2072 = !DILocalVariable(name: "conf", scope: !2059, file: !2, line: 267, type: !160)
!2073 = !DILocation(line: 258, column: 44, scope: !2059)
!2074 = !DILocation(line: 258, column: 59, scope: !2059)
!2075 = !DILocation(line: 259, column: 21, scope: !2059)
!2076 = !DILocation(line: 259, column: 41, scope: !2059)
!2077 = !DILocation(line: 259, column: 58, scope: !2059)
!2078 = !DILocation(line: 262, column: 5, scope: !2059)
!2079 = !DILocation(line: 262, column: 18, scope: !2059)
!2080 = !DILocation(line: 263, column: 5, scope: !2059)
!2081 = !DILocation(line: 263, column: 15, scope: !2059)
!2082 = !DILocation(line: 264, column: 5, scope: !2059)
!2083 = !DILocation(line: 264, column: 25, scope: !2059)
!2084 = !DILocation(line: 265, column: 5, scope: !2059)
!2085 = !DILocation(line: 265, column: 9, scope: !2059)
!2086 = !DILocation(line: 267, column: 5, scope: !2059)
!2087 = !DILocation(line: 267, column: 27, scope: !2059)
!2088 = !DILocation(line: 267, column: 34, scope: !2059)
!2089 = !DILocation(line: 270, column: 9, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2059, file: !2, line: 270, column: 9)
!2091 = !DILocation(line: 270, column: 15, scope: !2090)
!2092 = !DILocation(line: 270, column: 27, scope: !2090)
!2093 = !DILocation(line: 270, column: 9, scope: !2059)
!2094 = !DILocation(line: 271, column: 9, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2090, file: !2, line: 270, column: 36)
!2096 = !DILocation(line: 271, column: 9, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !2, line: 271, column: 9)
!2098 = distinct !DILexicalBlock(scope: !2095, file: !2, line: 271, column: 9)
!2099 = !DILocation(line: 271, column: 9, scope: !2098)
!2100 = !DILocation(line: 273, column: 9, scope: !2095)
!2101 = !DILocation(line: 276, column: 19, scope: !2059)
!2102 = !DILocation(line: 276, column: 22, scope: !2059)
!2103 = !DILocation(line: 276, column: 28, scope: !2059)
!2104 = !DILocation(line: 276, column: 10, scope: !2059)
!2105 = !DILocation(line: 276, column: 8, scope: !2059)
!2106 = !DILocation(line: 277, column: 9, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2059, file: !2, line: 277, column: 9)
!2108 = !DILocation(line: 277, column: 9, scope: !2059)
!2109 = !DILocation(line: 278, column: 16, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 277, column: 13)
!2111 = !DILocation(line: 278, column: 9, scope: !2110)
!2112 = !DILocation(line: 281, column: 9, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2059, file: !2, line: 281, column: 9)
!2114 = !DILocation(line: 281, column: 9, scope: !2059)
!2115 = !DILocation(line: 282, column: 31, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2113, file: !2, line: 281, column: 17)
!2117 = !DILocation(line: 282, column: 36, scope: !2116)
!2118 = !DILocation(line: 282, column: 44, scope: !2116)
!2119 = !DILocation(line: 282, column: 47, scope: !2116)
!2120 = !DILocation(line: 282, column: 53, scope: !2116)
!2121 = !DILocation(line: 282, column: 58, scope: !2116)
!2122 = !DILocation(line: 283, column: 17, scope: !2116)
!2123 = !DILocation(line: 283, column: 28, scope: !2116)
!2124 = !DILocation(line: 283, column: 42, scope: !2116)
!2125 = !DILocation(line: 283, column: 50, scope: !2116)
!2126 = !DILocation(line: 282, column: 14, scope: !2116)
!2127 = !DILocation(line: 282, column: 12, scope: !2116)
!2128 = !DILocation(line: 284, column: 13, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2116, file: !2, line: 284, column: 13)
!2130 = !DILocation(line: 284, column: 13, scope: !2116)
!2131 = !DILocation(line: 285, column: 13, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2129, file: !2, line: 284, column: 17)
!2133 = !DILocation(line: 285, column: 13, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !2, line: 285, column: 13)
!2135 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 285, column: 13)
!2136 = !DILocation(line: 285, column: 13, scope: !2135)
!2137 = !DILocation(line: 288, column: 13, scope: !2132)
!2138 = !DILocation(line: 295, column: 13, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2116, file: !2, line: 295, column: 13)
!2140 = !DILocation(line: 295, column: 18, scope: !2139)
!2141 = !DILocation(line: 295, column: 13, scope: !2116)
!2142 = !DILocation(line: 296, column: 13, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2139, file: !2, line: 295, column: 24)
!2144 = !DILocation(line: 298, column: 5, scope: !2116)
!2145 = !DILocation(line: 300, column: 9, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2059, file: !2, line: 300, column: 9)
!2147 = !DILocation(line: 300, column: 15, scope: !2146)
!2148 = !DILocation(line: 300, column: 27, scope: !2146)
!2149 = !DILocation(line: 300, column: 9, scope: !2059)
!2150 = !DILocation(line: 301, column: 9, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2146, file: !2, line: 300, column: 36)
!2152 = !DILocation(line: 301, column: 9, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !2, line: 301, column: 9)
!2154 = distinct !DILexicalBlock(scope: !2151, file: !2, line: 301, column: 9)
!2155 = !DILocation(line: 301, column: 9, scope: !2154)
!2156 = !DILocation(line: 303, column: 9, scope: !2151)
!2157 = !DILocation(line: 306, column: 19, scope: !2059)
!2158 = !DILocation(line: 306, column: 22, scope: !2059)
!2159 = !DILocation(line: 306, column: 28, scope: !2059)
!2160 = !DILocation(line: 306, column: 10, scope: !2059)
!2161 = !DILocation(line: 306, column: 8, scope: !2059)
!2162 = !DILocation(line: 307, column: 9, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2059, file: !2, line: 307, column: 9)
!2164 = !DILocation(line: 307, column: 9, scope: !2059)
!2165 = !DILocation(line: 308, column: 16, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2163, file: !2, line: 307, column: 13)
!2167 = !DILocation(line: 308, column: 9, scope: !2166)
!2168 = !DILocation(line: 310, column: 27, scope: !2059)
!2169 = !DILocation(line: 310, column: 32, scope: !2059)
!2170 = !DILocation(line: 310, column: 40, scope: !2059)
!2171 = !DILocation(line: 310, column: 43, scope: !2059)
!2172 = !DILocation(line: 310, column: 49, scope: !2059)
!2173 = !DILocation(line: 310, column: 54, scope: !2059)
!2174 = !DILocation(line: 310, column: 69, scope: !2059)
!2175 = !DILocation(line: 311, column: 27, scope: !2059)
!2176 = !DILocation(line: 311, column: 41, scope: !2059)
!2177 = !DILocation(line: 310, column: 10, scope: !2059)
!2178 = !DILocation(line: 310, column: 8, scope: !2059)
!2179 = !DILocation(line: 312, column: 9, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2059, file: !2, line: 312, column: 9)
!2181 = !DILocation(line: 312, column: 9, scope: !2059)
!2182 = !DILocation(line: 313, column: 9, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2180, file: !2, line: 312, column: 13)
!2184 = !DILocation(line: 313, column: 9, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !2, line: 313, column: 9)
!2186 = distinct !DILexicalBlock(scope: !2183, file: !2, line: 313, column: 9)
!2187 = !DILocation(line: 313, column: 9, scope: !2186)
!2188 = !DILocation(line: 317, column: 9, scope: !2183)
!2189 = !DILocation(line: 324, column: 9, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2059, file: !2, line: 324, column: 9)
!2191 = !DILocation(line: 324, column: 14, scope: !2190)
!2192 = !DILocation(line: 324, column: 9, scope: !2059)
!2193 = !DILocation(line: 325, column: 9, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2190, file: !2, line: 324, column: 20)
!2195 = !DILocation(line: 328, column: 5, scope: !2059)
!2196 = !DILocation(line: 328, column: 5, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !2, line: 328, column: 5)
!2198 = distinct !DILexicalBlock(scope: !2059, file: !2, line: 328, column: 5)
!2199 = !DILocation(line: 328, column: 5, scope: !2198)
!2200 = !DILocation(line: 332, column: 5, scope: !2059)
!2201 = !DILocation(line: 334, column: 1, scope: !2059)
!2202 = distinct !DISubprogram(name: "dbd_remove", scope: !2, file: !2, line: 339, type: !2203, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2205)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!84, !407, !70}
!2205 = !{!2206, !2207, !2208, !2209, !2210, !2211, !2212}
!2206 = !DILocalVariable(name: "r", arg: 1, scope: !2202, file: !2, line: 339, type: !407)
!2207 = !DILocalVariable(name: "key", arg: 2, scope: !2202, file: !2, line: 339, type: !70)
!2208 = !DILocalVariable(name: "rv", scope: !2202, file: !2, line: 342, type: !84)
!2209 = !DILocalVariable(name: "dbd", scope: !2202, file: !2, line: 343, type: !387)
!2210 = !DILocalVariable(name: "statement", scope: !2202, file: !2, line: 344, type: !1790)
!2211 = !DILocalVariable(name: "rows", scope: !2202, file: !2, line: 345, type: !73)
!2212 = !DILocalVariable(name: "conf", scope: !2202, file: !2, line: 347, type: !160)
!2213 = !DILocation(line: 339, column: 46, scope: !2202)
!2214 = !DILocation(line: 339, column: 61, scope: !2202)
!2215 = !DILocation(line: 342, column: 5, scope: !2202)
!2216 = !DILocation(line: 342, column: 18, scope: !2202)
!2217 = !DILocation(line: 343, column: 5, scope: !2202)
!2218 = !DILocation(line: 343, column: 15, scope: !2202)
!2219 = !DILocation(line: 344, column: 5, scope: !2202)
!2220 = !DILocation(line: 344, column: 25, scope: !2202)
!2221 = !DILocation(line: 345, column: 5, scope: !2202)
!2222 = !DILocation(line: 345, column: 9, scope: !2202)
!2223 = !DILocation(line: 347, column: 5, scope: !2202)
!2224 = !DILocation(line: 347, column: 27, scope: !2202)
!2225 = !DILocation(line: 347, column: 34, scope: !2202)
!2226 = !DILocation(line: 350, column: 9, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 350, column: 9)
!2228 = !DILocation(line: 350, column: 15, scope: !2227)
!2229 = !DILocation(line: 350, column: 27, scope: !2227)
!2230 = !DILocation(line: 350, column: 9, scope: !2202)
!2231 = !DILocation(line: 351, column: 9, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2227, file: !2, line: 350, column: 36)
!2233 = !DILocation(line: 351, column: 9, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !2, line: 351, column: 9)
!2235 = distinct !DILexicalBlock(scope: !2232, file: !2, line: 351, column: 9)
!2236 = !DILocation(line: 351, column: 9, scope: !2235)
!2237 = !DILocation(line: 353, column: 9, scope: !2232)
!2238 = !DILocation(line: 356, column: 19, scope: !2202)
!2239 = !DILocation(line: 356, column: 22, scope: !2202)
!2240 = !DILocation(line: 356, column: 28, scope: !2202)
!2241 = !DILocation(line: 356, column: 10, scope: !2202)
!2242 = !DILocation(line: 356, column: 8, scope: !2202)
!2243 = !DILocation(line: 357, column: 9, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 357, column: 9)
!2245 = !DILocation(line: 357, column: 12, scope: !2244)
!2246 = !DILocation(line: 357, column: 9, scope: !2202)
!2247 = !DILocation(line: 360, column: 16, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2244, file: !2, line: 357, column: 28)
!2249 = !DILocation(line: 360, column: 9, scope: !2248)
!2250 = !DILocation(line: 363, column: 27, scope: !2202)
!2251 = !DILocation(line: 363, column: 32, scope: !2202)
!2252 = !DILocation(line: 363, column: 40, scope: !2202)
!2253 = !DILocation(line: 363, column: 43, scope: !2202)
!2254 = !DILocation(line: 363, column: 49, scope: !2202)
!2255 = !DILocation(line: 363, column: 54, scope: !2202)
!2256 = !DILocation(line: 363, column: 69, scope: !2202)
!2257 = !DILocation(line: 364, column: 27, scope: !2202)
!2258 = !DILocation(line: 363, column: 10, scope: !2202)
!2259 = !DILocation(line: 363, column: 8, scope: !2202)
!2260 = !DILocation(line: 365, column: 9, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 365, column: 9)
!2262 = !DILocation(line: 365, column: 12, scope: !2261)
!2263 = !DILocation(line: 365, column: 9, scope: !2202)
!2264 = !DILocation(line: 366, column: 9, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 365, column: 28)
!2266 = !DILocation(line: 366, column: 9, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !2, line: 366, column: 9)
!2268 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 366, column: 9)
!2269 = !DILocation(line: 366, column: 9, scope: !2268)
!2270 = !DILocation(line: 369, column: 16, scope: !2265)
!2271 = !DILocation(line: 369, column: 9, scope: !2265)
!2272 = !DILocation(line: 372, column: 5, scope: !2202)
!2273 = !DILocation(line: 374, column: 1, scope: !2202)
!2274 = !DISubprogram(name: "ap_cookie_write", scope: !1338, file: !1338, line: 68, type: !2275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!84, !407, !70, !70, !70, !113, null}
!2277 = !DISubprogram(name: "ap_cookie_write2", scope: !1338, file: !1338, line: 85, type: !2275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2278 = !DISubprogram(name: "apr_dbd_pvbquery", scope: !394, file: !394, line: 508, type: !2279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!73, !397, !131, !392, !851, !1790, null}
!2281 = distinct !DISubprogram(name: "dbd_clean", scope: !2, file: !2, line: 383, type: !2282, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2284)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!84, !131, !221}
!2284 = !{!2285, !2286}
!2285 = !DILocalVariable(name: "p", arg: 1, scope: !2281, file: !2, line: 383, type: !131)
!2286 = !DILocalVariable(name: "s", arg: 2, scope: !2281, file: !2, line: 383, type: !221)
!2287 = !DILocation(line: 383, column: 43, scope: !2281)
!2288 = !DILocation(line: 383, column: 58, scope: !2281)
!2289 = !DILocation(line: 386, column: 5, scope: !2281)
