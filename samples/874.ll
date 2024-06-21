; ModuleID = 'samples/874.bc'
source_filename = "mod_session_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command_struct = type { ptr, %union.cmd_func, ptr, i32, i32, ptr }
%union.cmd_func = type { ptr }
%struct.module_struct = type { i32, i32, i32, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.session_crypto_dir_conf = type { ptr, i32, ptr, i32 }
%struct.session_crypto_conf = type { ptr, ptr, i32 }
%struct.cmd_parms_struct = type { ptr, i32, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.server_rec = type { ptr, ptr, ptr, ptr, %struct.ap_logconf, ptr, ptr, ptr, i32, i8, i16, ptr, ptr, ptr, ptr, i64, i64, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i8 }
%struct.ap_logconf = type { ptr, i32 }
%struct.request_rec = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i64, ptr, i32, i32, ptr, i64, ptr, ptr, i64, i64, i64, ptr, i64, i32, i32, i32, i32, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.apr_uri_t, %struct.apr_finfo_t, ptr, ptr, ptr, ptr, ptr, i32, i64 }
%struct.apr_uri_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8 }
%struct.apr_finfo_t = type { ptr, i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.session_rec = type { ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32 }
%struct.process_rec = type { ptr, ptr, ptr, ptr, i32 }
%struct.conn_rec = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.apu_err_t = type { ptr, ptr, i32 }
%struct.apr_uuid_t = type { [16 x i8] }
%struct.apr_array_header_t = type { ptr, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [21 x i8] c"mod_session_crypto.c\00", align 1, !dbg !0
@session_crypto_cmds = internal constant [5 x %struct.command_struct] [%struct.command_struct { ptr @.str.3, %union.cmd_func { ptr @set_crypto_passphrase }, ptr null, i32 136, i32 3, ptr @.str.4 }, %struct.command_struct { ptr @.str.5, %union.cmd_func { ptr @set_crypto_passphrase_file }, ptr null, i32 192, i32 1, ptr @.str.6 }, %struct.command_struct { ptr @.str.7, %union.cmd_func { ptr @set_crypto_cipher }, ptr null, i32 136, i32 1, ptr @.str.8 }, %struct.command_struct { ptr @.str.9, %union.cmd_func { ptr @set_crypto_driver }, ptr null, i32 128, i32 0, ptr @.str.10 }, %struct.command_struct zeroinitializer], align 16, !dbg !7
@session_crypto_module = global %struct.module_struct { i32 20120211, i32 126, i32 -1, ptr @.str, ptr null, ptr null, i64 1095774772, ptr null, ptr @create_session_crypto_dir_config, ptr @merge_session_crypto_dir_config, ptr @create_session_crypto_config, ptr null, ptr @session_crypto_cmds, ptr @register_hooks, i32 0 }, align 8, !dbg !212
@.str.1 = private unnamed_addr constant [7 x i8] c"aes256\00", align 1, !dbg !513
@.str.2 = private unnamed_addr constant [8 x i8] c"openssl\00", align 1, !dbg !518
@.str.3 = private unnamed_addr constant [24 x i8] c"SessionCryptoPassphrase\00", align 1, !dbg !521
@.str.4 = private unnamed_addr constant [126 x i8] c"The passphrase(s) used to encrypt the session. First will be used for encryption, all phrases will be accepted for decryption\00", align 1, !dbg !526
@.str.5 = private unnamed_addr constant [28 x i8] c"SessionCryptoPassphraseFile\00", align 1, !dbg !531
@.str.6 = private unnamed_addr constant [152 x i8] c"File containing passphrase(s) used to encrypt the session, one per line. First will be used for encryption, all phrases will be accepted for decryption\00", align 1, !dbg !536
@.str.7 = private unnamed_addr constant [20 x i8] c"SessionCryptoCipher\00", align 1, !dbg !541
@.str.8 = private unnamed_addr constant [36 x i8] c"The underlying crypto cipher to use\00", align 1, !dbg !546
@.str.9 = private unnamed_addr constant [20 x i8] c"SessionCryptoDriver\00", align 1, !dbg !551
@.str.10 = private unnamed_addr constant [44 x i8] c"The underlying crypto library driver to use\00", align 1, !dbg !553
@.str.11 = private unnamed_addr constant [6 x i8] c"exec:\00", align 1, !dbg !558
@.str.12 = private unnamed_addr constant [37 x i8] c"Unable to parse exec arguments from \00", align 1, !dbg !563
@.str.13 = private unnamed_addr constant [47 x i8] c"Invalid SessionCryptoPassphrase exec location:\00", align 1, !dbg !568
@.str.14 = private unnamed_addr constant [42 x i8] c"Unable to get bind password from exec of \00", align 1, !dbg !573
@.str.15 = private unnamed_addr constant [32 x i8] c"%s: Could not open file %s: %pm\00", align 1, !dbg !578
@.str.16 = private unnamed_addr constant [23 x i8] c"session_crypto_context\00", align 1, !dbg !583
@.str.17 = private unnamed_addr constant [32 x i8] c"AH01841: encrypt session failed\00", align 1, !dbg !593
@.str.18 = private unnamed_addr constant [48 x i8] c"AH01825: failure generating key from passphrase\00", align 1, !dbg !595
@.str.19 = private unnamed_addr constant [45 x i8] c"AH01826: padding is not supported for cipher\00", align 1, !dbg !600
@.str.20 = private unnamed_addr constant [35 x i8] c"AH01827: the key type is not known\00", align 1, !dbg !605
@.str.21 = private unnamed_addr constant [45 x i8] c"AH01828: encryption could not be configured.\00", align 1, !dbg !610
@.str.22 = private unnamed_addr constant [46 x i8] c"AH01829: apr_crypto_block_encrypt_init failed\00", align 1, !dbg !612
@.str.23 = private unnamed_addr constant [41 x i8] c"AH01830: apr_crypto_block_encrypt failed\00", align 1, !dbg !617
@.str.24 = private unnamed_addr constant [48 x i8] c"AH01831: apr_crypto_block_encrypt_finish failed\00", align 1, !dbg !622
@.str.25 = private unnamed_addr constant [69 x i8] c"AH01823: no ciphers returned by APR. session encryption not possible\00", align 1, !dbg !624
@.str.26 = private unnamed_addr constant [99 x i8] c"AH01824: cipher '%s' not recognised by crypto driver. session encryption not possible, options: %s\00", align 1, !dbg !629
@.str.27 = private unnamed_addr constant [51 x i8] c"AH01842: decrypt session failed, wrong passphrase?\00", align 1, !dbg !634
@.str.28 = private unnamed_addr constant [40 x i8] c"AH10005: too short to decrypt, aborting\00", align 1, !dbg !639
@.str.29 = private unnamed_addr constant [39 x i8] c"AH10006: auth does not match, skipping\00", align 1, !dbg !644
@.str.30 = private unnamed_addr constant [48 x i8] c"AH01832: failure generating key from passphrase\00", align 1, !dbg !649
@.str.31 = private unnamed_addr constant [45 x i8] c"AH01833: padding is not supported for cipher\00", align 1, !dbg !651
@.str.32 = private unnamed_addr constant [35 x i8] c"AH01834: the key type is not known\00", align 1, !dbg !653
@.str.33 = private unnamed_addr constant [45 x i8] c"AH01835: encryption could not be configured.\00", align 1, !dbg !655
@.str.34 = private unnamed_addr constant [40 x i8] c"AH01836: too short to decrypt, skipping\00", align 1, !dbg !657
@.str.35 = private unnamed_addr constant [46 x i8] c"AH01837: apr_crypto_block_decrypt_init failed\00", align 1, !dbg !659
@.str.36 = private unnamed_addr constant [41 x i8] c"AH01838: apr_crypto_block_decrypt failed\00", align 1, !dbg !661
@.str.37 = private unnamed_addr constant [48 x i8] c"AH01839: apr_crypto_block_decrypt_finish failed\00", align 1, !dbg !663
@.str.38 = private unnamed_addr constant [27 x i8] c"AH01840: decryption failed\00", align 1, !dbg !665
@.str.39 = private unnamed_addr constant [45 x i8] c"AH01843: APR crypto could not be initialised\00", align 1, !dbg !670
@.str.40 = private unnamed_addr constant [88 x i8] c"AH01844: warning: crypto for '%s' was already initialised, using existing configuration\00", align 1, !dbg !672
@.str.41 = private unnamed_addr constant [66 x i8] c"AH01845: The crypto library '%s' could not be loaded: %s (%s: %d)\00", align 1, !dbg !677
@.str.42 = private unnamed_addr constant [52 x i8] c"AH01846: The crypto library '%s' could not be found\00", align 1, !dbg !682
@.str.43 = private unnamed_addr constant [53 x i8] c"AH01847: The crypto library '%s' could not be loaded\00", align 1, !dbg !687
@.str.44 = private unnamed_addr constant [58 x i8] c"AH01848: The crypto library '%s' could not be initialised\00", align 1, !dbg !692
@.str.45 = private unnamed_addr constant [57 x i8] c"AH01849: The crypto library '%s' was loaded successfully\00", align 1, !dbg !697

; Function Attrs: nounwind uwtable
define internal ptr @create_session_crypto_dir_config(ptr noundef %p, ptr noundef %dummy) #0 !dbg !711 {
entry:
  %p.addr = alloca ptr, align 8
  %dummy.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !713, metadata !DIExpression()), !dbg !720
  store ptr %dummy, ptr %dummy.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %dummy.addr, metadata !714, metadata !DIExpression()), !dbg !721
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #8, !dbg !722
  tail call void @llvm.dbg.declare(metadata ptr %new, metadata !715, metadata !DIExpression()), !dbg !723
  %0 = load ptr, ptr %p.addr, align 8, !dbg !724, !tbaa !716
  %call = call ptr @apr_palloc(ptr noundef %0, i64 noundef 32), !dbg !724
  call void @llvm.memset.p0.i64(ptr align 1 %call, i8 0, i64 32, i1 false), !dbg !724
  store ptr %call, ptr %new, align 8, !dbg !723, !tbaa !716
  %1 = load ptr, ptr %p.addr, align 8, !dbg !725, !tbaa !716
  %call1 = call ptr @apr_array_make(ptr noundef %1, i32 noundef 10, i32 noundef 8), !dbg !726
  %2 = load ptr, ptr %new, align 8, !dbg !727, !tbaa !716
  %passphrases = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %2, i32 0, i32 0, !dbg !728
  store ptr %call1, ptr %passphrases, align 8, !dbg !729, !tbaa !730
  %3 = load ptr, ptr %new, align 8, !dbg !733, !tbaa !716
  %cipher = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %3, i32 0, i32 2, !dbg !734
  store ptr @.str.1, ptr %cipher, align 8, !dbg !735, !tbaa !736
  %4 = load ptr, ptr %new, align 8, !dbg !737, !tbaa !716
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #8, !dbg !738
  ret ptr %4, !dbg !739
}

; Function Attrs: nounwind uwtable
define internal ptr @merge_session_crypto_dir_config(ptr noundef %p, ptr noundef %basev, ptr noundef %addv) #0 !dbg !740 {
entry:
  %p.addr = alloca ptr, align 8
  %basev.addr = alloca ptr, align 8
  %addv.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  %add = alloca ptr, align 8
  %base = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !742, metadata !DIExpression()), !dbg !748
  store ptr %basev, ptr %basev.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %basev.addr, metadata !743, metadata !DIExpression()), !dbg !749
  store ptr %addv, ptr %addv.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %addv.addr, metadata !744, metadata !DIExpression()), !dbg !750
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #8, !dbg !751
  tail call void @llvm.dbg.declare(metadata ptr %new, metadata !745, metadata !DIExpression()), !dbg !752
  %0 = load ptr, ptr %p.addr, align 8, !dbg !753, !tbaa !716
  %call = call ptr @apr_palloc(ptr noundef %0, i64 noundef 32), !dbg !753
  call void @llvm.memset.p0.i64(ptr align 1 %call, i8 0, i64 32, i1 false), !dbg !753
  store ptr %call, ptr %new, align 8, !dbg !752, !tbaa !716
  call void @llvm.lifetime.start.p0(i64 8, ptr %add) #8, !dbg !754
  tail call void @llvm.dbg.declare(metadata ptr %add, metadata !746, metadata !DIExpression()), !dbg !755
  %1 = load ptr, ptr %addv.addr, align 8, !dbg !756, !tbaa !716
  store ptr %1, ptr %add, align 8, !dbg !755, !tbaa !716
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #8, !dbg !757
  tail call void @llvm.dbg.declare(metadata ptr %base, metadata !747, metadata !DIExpression()), !dbg !758
  %2 = load ptr, ptr %basev.addr, align 8, !dbg !759, !tbaa !716
  store ptr %2, ptr %base, align 8, !dbg !758, !tbaa !716
  %3 = load ptr, ptr %add, align 8, !dbg !760, !tbaa !716
  %passphrases_set = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %3, i32 0, i32 1, !dbg !761
  %4 = load i32, ptr %passphrases_set, align 8, !dbg !761, !tbaa !762
  %cmp = icmp eq i32 %4, 0, !dbg !763
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !764

cond.true:                                        ; preds = %entry
  %5 = load ptr, ptr %base, align 8, !dbg !765, !tbaa !716
  %passphrases = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %5, i32 0, i32 0, !dbg !766
  %6 = load ptr, ptr %passphrases, align 8, !dbg !766, !tbaa !730
  br label %cond.end, !dbg !764

cond.false:                                       ; preds = %entry
  %7 = load ptr, ptr %add, align 8, !dbg !767, !tbaa !716
  %passphrases1 = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %7, i32 0, i32 0, !dbg !768
  %8 = load ptr, ptr %passphrases1, align 8, !dbg !768, !tbaa !730
  br label %cond.end, !dbg !764

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ %8, %cond.false ], !dbg !764
  %9 = load ptr, ptr %new, align 8, !dbg !769, !tbaa !716
  %passphrases2 = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %9, i32 0, i32 0, !dbg !770
  store ptr %cond, ptr %passphrases2, align 8, !dbg !771, !tbaa !730
  %10 = load ptr, ptr %add, align 8, !dbg !772, !tbaa !716
  %passphrases_set3 = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %10, i32 0, i32 1, !dbg !773
  %11 = load i32, ptr %passphrases_set3, align 8, !dbg !773, !tbaa !762
  %tobool = icmp ne i32 %11, 0, !dbg !772
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !774

lor.rhs:                                          ; preds = %cond.end
  %12 = load ptr, ptr %base, align 8, !dbg !775, !tbaa !716
  %passphrases_set4 = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %12, i32 0, i32 1, !dbg !776
  %13 = load i32, ptr %passphrases_set4, align 8, !dbg !776, !tbaa !762
  %tobool5 = icmp ne i32 %13, 0, !dbg !774
  br label %lor.end, !dbg !774

lor.end:                                          ; preds = %lor.rhs, %cond.end
  %14 = phi i1 [ true, %cond.end ], [ %tobool5, %lor.rhs ]
  %lor.ext = zext i1 %14 to i32, !dbg !774
  %15 = load ptr, ptr %new, align 8, !dbg !777, !tbaa !716
  %passphrases_set6 = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %15, i32 0, i32 1, !dbg !778
  store i32 %lor.ext, ptr %passphrases_set6, align 8, !dbg !779, !tbaa !762
  %16 = load ptr, ptr %add, align 8, !dbg !780, !tbaa !716
  %cipher_set = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %16, i32 0, i32 3, !dbg !781
  %17 = load i32, ptr %cipher_set, align 8, !dbg !781, !tbaa !782
  %cmp7 = icmp eq i32 %17, 0, !dbg !783
  br i1 %cmp7, label %cond.true8, label %cond.false9, !dbg !784

cond.true8:                                       ; preds = %lor.end
  %18 = load ptr, ptr %base, align 8, !dbg !785, !tbaa !716
  %cipher = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %18, i32 0, i32 2, !dbg !786
  %19 = load ptr, ptr %cipher, align 8, !dbg !786, !tbaa !736
  br label %cond.end11, !dbg !784

cond.false9:                                      ; preds = %lor.end
  %20 = load ptr, ptr %add, align 8, !dbg !787, !tbaa !716
  %cipher10 = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %20, i32 0, i32 2, !dbg !788
  %21 = load ptr, ptr %cipher10, align 8, !dbg !788, !tbaa !736
  br label %cond.end11, !dbg !784

cond.end11:                                       ; preds = %cond.false9, %cond.true8
  %cond12 = phi ptr [ %19, %cond.true8 ], [ %21, %cond.false9 ], !dbg !784
  %22 = load ptr, ptr %new, align 8, !dbg !789, !tbaa !716
  %cipher13 = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %22, i32 0, i32 2, !dbg !790
  store ptr %cond12, ptr %cipher13, align 8, !dbg !791, !tbaa !736
  %23 = load ptr, ptr %add, align 8, !dbg !792, !tbaa !716
  %cipher_set14 = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %23, i32 0, i32 3, !dbg !793
  %24 = load i32, ptr %cipher_set14, align 8, !dbg !793, !tbaa !782
  %tobool15 = icmp ne i32 %24, 0, !dbg !792
  br i1 %tobool15, label %lor.end19, label %lor.rhs16, !dbg !794

lor.rhs16:                                        ; preds = %cond.end11
  %25 = load ptr, ptr %base, align 8, !dbg !795, !tbaa !716
  %cipher_set17 = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %25, i32 0, i32 3, !dbg !796
  %26 = load i32, ptr %cipher_set17, align 8, !dbg !796, !tbaa !782
  %tobool18 = icmp ne i32 %26, 0, !dbg !794
  br label %lor.end19, !dbg !794

lor.end19:                                        ; preds = %lor.rhs16, %cond.end11
  %27 = phi i1 [ true, %cond.end11 ], [ %tobool18, %lor.rhs16 ]
  %lor.ext20 = zext i1 %27 to i32, !dbg !794
  %28 = load ptr, ptr %new, align 8, !dbg !797, !tbaa !716
  %cipher_set21 = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %28, i32 0, i32 3, !dbg !798
  store i32 %lor.ext20, ptr %cipher_set21, align 8, !dbg !799, !tbaa !782
  %29 = load ptr, ptr %new, align 8, !dbg !800, !tbaa !716
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #8, !dbg !801
  call void @llvm.lifetime.end.p0(i64 8, ptr %add) #8, !dbg !801
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #8, !dbg !801
  ret ptr %29, !dbg !802
}

; Function Attrs: nounwind uwtable
define internal ptr @create_session_crypto_config(ptr noundef %p, ptr noundef %s) #0 !dbg !803 {
entry:
  %p.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !805, metadata !DIExpression()), !dbg !808
  store ptr %s, ptr %s.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !806, metadata !DIExpression()), !dbg !809
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #8, !dbg !810
  tail call void @llvm.dbg.declare(metadata ptr %new, metadata !807, metadata !DIExpression()), !dbg !811
  %0 = load ptr, ptr %p.addr, align 8, !dbg !812, !tbaa !716
  %call = call ptr @apr_palloc(ptr noundef %0, i64 noundef 24), !dbg !812
  call void @llvm.memset.p0.i64(ptr align 1 %call, i8 0, i64 24, i1 false), !dbg !812
  store ptr %call, ptr %new, align 8, !dbg !811, !tbaa !716
  %1 = load ptr, ptr %new, align 8, !dbg !813, !tbaa !716
  %library = getelementptr inbounds %struct.session_crypto_conf, ptr %1, i32 0, i32 0, !dbg !814
  store ptr @.str.2, ptr %library, align 8, !dbg !815, !tbaa !816
  %2 = load ptr, ptr %new, align 8, !dbg !818, !tbaa !716
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #8, !dbg !819
  ret ptr %2, !dbg !820
}

; Function Attrs: nounwind uwtable
define internal void @register_hooks(ptr noundef %p) #0 !dbg !821 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !823, metadata !DIExpression()), !dbg !824
  call void @ap_hook_session_encode(ptr noundef @session_crypto_encode, ptr noundef null, ptr noundef null, i32 noundef 20), !dbg !825
  call void @ap_hook_session_decode(ptr noundef @session_crypto_decode, ptr noundef null, ptr noundef null, i32 noundef 0), !dbg !826
  call void @ap_hook_post_config(ptr noundef @session_crypto_init, ptr noundef null, ptr noundef null, i32 noundef 20), !dbg !827
  ret void, !dbg !828
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !829 ptr @apr_palloc(ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare !dbg !832 ptr @apr_array_make(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal ptr @set_crypto_passphrase(ptr noundef %cmd, ptr noundef %config, ptr noundef %arg) #0 !dbg !835 {
entry:
  %retval = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %config.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %arglen = alloca i32, align 4
  %argv = alloca ptr, align 8
  %result = alloca ptr, align 8
  %passphrase = alloca ptr, align 8
  %dconf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !837, metadata !DIExpression()), !dbg !845
  store ptr %config, ptr %config.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %config.addr, metadata !838, metadata !DIExpression()), !dbg !846
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !839, metadata !DIExpression()), !dbg !847
  call void @llvm.lifetime.start.p0(i64 4, ptr %arglen) #8, !dbg !848
  tail call void @llvm.dbg.declare(metadata ptr %arglen, metadata !840, metadata !DIExpression()), !dbg !849
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !850, !tbaa !716
  %call = call i64 @strlen(ptr noundef %0) #9, !dbg !851
  %conv = trunc i64 %call to i32, !dbg !851
  store i32 %conv, ptr %arglen, align 4, !dbg !849, !tbaa !852
  call void @llvm.lifetime.start.p0(i64 8, ptr %argv) #8, !dbg !853
  tail call void @llvm.dbg.declare(metadata ptr %argv, metadata !841, metadata !DIExpression()), !dbg !854
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #8, !dbg !855
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !842, metadata !DIExpression()), !dbg !856
  call void @llvm.lifetime.start.p0(i64 8, ptr %passphrase) #8, !dbg !857
  tail call void @llvm.dbg.declare(metadata ptr %passphrase, metadata !843, metadata !DIExpression()), !dbg !858
  call void @llvm.lifetime.start.p0(i64 8, ptr %dconf) #8, !dbg !859
  tail call void @llvm.dbg.declare(metadata ptr %dconf, metadata !844, metadata !DIExpression()), !dbg !860
  %1 = load ptr, ptr %config.addr, align 8, !dbg !861, !tbaa !716
  store ptr %1, ptr %dconf, align 8, !dbg !860, !tbaa !716
  %2 = load ptr, ptr %dconf, align 8, !dbg !862, !tbaa !716
  %passphrases = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %2, i32 0, i32 0, !dbg !863
  %3 = load ptr, ptr %passphrases, align 8, !dbg !863, !tbaa !730
  %call1 = call ptr @apr_array_push(ptr noundef %3), !dbg !864
  store ptr %call1, ptr %passphrase, align 8, !dbg !865, !tbaa !716
  %4 = load i32, ptr %arglen, align 4, !dbg !866, !tbaa !852
  %cmp = icmp sgt i32 %4, 5, !dbg !868
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !869

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %arg.addr, align 8, !dbg !870, !tbaa !716
  %call3 = call i32 @strncmp(ptr noundef %5, ptr noundef @.str.11, i64 noundef 5) #9, !dbg !871
  %cmp4 = icmp eq i32 %call3, 0, !dbg !872
  br i1 %cmp4, label %if.then, label %if.else, !dbg !873

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %arg.addr, align 8, !dbg !874, !tbaa !716
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 5, !dbg !877
  %7 = load ptr, ptr %cmd.addr, align 8, !dbg !878, !tbaa !716
  %temp_pool = getelementptr inbounds %struct.cmd_parms_struct, ptr %7, i32 0, i32 10, !dbg !879
  %8 = load ptr, ptr %temp_pool, align 8, !dbg !879, !tbaa !880
  %call6 = call i32 @apr_tokenize_to_argv(ptr noundef %add.ptr, ptr noundef %argv, ptr noundef %8), !dbg !883
  %cmp7 = icmp ne i32 %call6, 0, !dbg !884
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !885

if.then9:                                         ; preds = %if.then
  %9 = load ptr, ptr %cmd.addr, align 8, !dbg !886, !tbaa !716
  %pool = getelementptr inbounds %struct.cmd_parms_struct, ptr %9, i32 0, i32 9, !dbg !888
  %10 = load ptr, ptr %pool, align 8, !dbg !888, !tbaa !889
  %11 = load ptr, ptr %arg.addr, align 8, !dbg !890, !tbaa !716
  %add.ptr10 = getelementptr inbounds i8, ptr %11, i64 5, !dbg !891
  %call11 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %10, ptr noundef @.str.12, ptr noundef %add.ptr10, ptr noundef null), !dbg !892
  store ptr %call11, ptr %retval, align 8, !dbg !893
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !893

if.end:                                           ; preds = %if.then
  %12 = load ptr, ptr %cmd.addr, align 8, !dbg !894, !tbaa !716
  %temp_pool12 = getelementptr inbounds %struct.cmd_parms_struct, ptr %12, i32 0, i32 10, !dbg !895
  %13 = load ptr, ptr %temp_pool12, align 8, !dbg !895, !tbaa !880
  %14 = load ptr, ptr %argv, align 8, !dbg !896, !tbaa !716
  %arrayidx = getelementptr inbounds ptr, ptr %14, i64 0, !dbg !896
  %15 = load ptr, ptr %arrayidx, align 8, !dbg !896, !tbaa !716
  %call13 = call ptr @ap_server_root_relative(ptr noundef %13, ptr noundef %15), !dbg !897
  %16 = load ptr, ptr %argv, align 8, !dbg !898, !tbaa !716
  %arrayidx14 = getelementptr inbounds ptr, ptr %16, i64 0, !dbg !898
  store ptr %call13, ptr %arrayidx14, align 8, !dbg !899, !tbaa !716
  %17 = load ptr, ptr %argv, align 8, !dbg !900, !tbaa !716
  %arrayidx15 = getelementptr inbounds ptr, ptr %17, i64 0, !dbg !900
  %18 = load ptr, ptr %arrayidx15, align 8, !dbg !900, !tbaa !716
  %tobool = icmp ne ptr %18, null, !dbg !900
  br i1 %tobool, label %if.end20, label %if.then16, !dbg !902

if.then16:                                        ; preds = %if.end
  %19 = load ptr, ptr %cmd.addr, align 8, !dbg !903, !tbaa !716
  %pool17 = getelementptr inbounds %struct.cmd_parms_struct, ptr %19, i32 0, i32 9, !dbg !905
  %20 = load ptr, ptr %pool17, align 8, !dbg !905, !tbaa !889
  %21 = load ptr, ptr %arg.addr, align 8, !dbg !906, !tbaa !716
  %add.ptr18 = getelementptr inbounds i8, ptr %21, i64 5, !dbg !907
  %call19 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %20, ptr noundef @.str.13, ptr noundef %add.ptr18, ptr noundef null), !dbg !908
  store ptr %call19, ptr %retval, align 8, !dbg !909
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !909

if.end20:                                         ; preds = %if.end
  %22 = load ptr, ptr %cmd.addr, align 8, !dbg !910, !tbaa !716
  %pool21 = getelementptr inbounds %struct.cmd_parms_struct, ptr %22, i32 0, i32 9, !dbg !911
  %23 = load ptr, ptr %pool21, align 8, !dbg !911, !tbaa !889
  %24 = load ptr, ptr %argv, align 8, !dbg !912, !tbaa !716
  %arrayidx22 = getelementptr inbounds ptr, ptr %24, i64 0, !dbg !912
  %25 = load ptr, ptr %arrayidx22, align 8, !dbg !912, !tbaa !716
  %26 = load ptr, ptr %argv, align 8, !dbg !913, !tbaa !716
  %call23 = call ptr @ap_get_exec_line(ptr noundef %23, ptr noundef %25, ptr noundef %26), !dbg !914
  store ptr %call23, ptr %result, align 8, !dbg !915, !tbaa !716
  %27 = load ptr, ptr %result, align 8, !dbg !916, !tbaa !716
  %tobool24 = icmp ne ptr %27, null, !dbg !916
  br i1 %tobool24, label %if.end29, label %if.then25, !dbg !918

if.then25:                                        ; preds = %if.end20
  %28 = load ptr, ptr %cmd.addr, align 8, !dbg !919, !tbaa !716
  %pool26 = getelementptr inbounds %struct.cmd_parms_struct, ptr %28, i32 0, i32 9, !dbg !921
  %29 = load ptr, ptr %pool26, align 8, !dbg !921, !tbaa !889
  %30 = load ptr, ptr %arg.addr, align 8, !dbg !922, !tbaa !716
  %add.ptr27 = getelementptr inbounds i8, ptr %30, i64 5, !dbg !923
  %call28 = call ptr (ptr, ...) @apr_pstrcat(ptr noundef %29, ptr noundef @.str.14, ptr noundef %add.ptr27, ptr noundef null), !dbg !924
  store ptr %call28, ptr %retval, align 8, !dbg !925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !925

if.end29:                                         ; preds = %if.end20
  %31 = load ptr, ptr %result, align 8, !dbg !926, !tbaa !716
  %32 = load ptr, ptr %passphrase, align 8, !dbg !927, !tbaa !716
  store ptr %31, ptr %32, align 8, !dbg !928, !tbaa !716
  br label %if.end30, !dbg !929

if.else:                                          ; preds = %land.lhs.true, %entry
  %33 = load ptr, ptr %arg.addr, align 8, !dbg !930, !tbaa !716
  %34 = load ptr, ptr %passphrase, align 8, !dbg !932, !tbaa !716
  store ptr %33, ptr %34, align 8, !dbg !933, !tbaa !716
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.end29
  %35 = load ptr, ptr %dconf, align 8, !dbg !934, !tbaa !716
  %passphrases_set = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %35, i32 0, i32 1, !dbg !935
  store i32 1, ptr %passphrases_set, align 8, !dbg !936, !tbaa !762
  store ptr null, ptr %retval, align 8, !dbg !937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !937

cleanup:                                          ; preds = %if.end30, %if.then25, %if.then16, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %dconf) #8, !dbg !938
  call void @llvm.lifetime.end.p0(i64 8, ptr %passphrase) #8, !dbg !938
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #8, !dbg !938
  call void @llvm.lifetime.end.p0(i64 8, ptr %argv) #8, !dbg !938
  call void @llvm.lifetime.end.p0(i64 4, ptr %arglen) #8, !dbg !938
  %36 = load ptr, ptr %retval, align 8, !dbg !938
  ret ptr %36, !dbg !938
}

; Function Attrs: nounwind uwtable
define internal ptr @set_crypto_passphrase_file(ptr noundef %cmd, ptr noundef %config, ptr noundef %filename) #0 !dbg !939 {
entry:
  %retval = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %config.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %buffer = alloca [8192 x i8], align 16
  %arg = alloca ptr, align 8
  %args = alloca ptr, align 8
  %file = alloca ptr, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !941, metadata !DIExpression()), !dbg !952
  store ptr %config, ptr %config.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %config.addr, metadata !942, metadata !DIExpression()), !dbg !953
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !943, metadata !DIExpression()), !dbg !954
  call void @llvm.lifetime.start.p0(i64 8192, ptr %buffer) #8, !dbg !955
  tail call void @llvm.dbg.declare(metadata ptr %buffer, metadata !944, metadata !DIExpression()), !dbg !956
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #8, !dbg !957
  tail call void @llvm.dbg.declare(metadata ptr %arg, metadata !948, metadata !DIExpression()), !dbg !958
  call void @llvm.lifetime.start.p0(i64 8, ptr %args) #8, !dbg !959
  tail call void @llvm.dbg.declare(metadata ptr %args, metadata !949, metadata !DIExpression()), !dbg !960
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #8, !dbg !961
  tail call void @llvm.dbg.declare(metadata ptr %file, metadata !950, metadata !DIExpression()), !dbg !962
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !963
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !951, metadata !DIExpression()), !dbg !964
  %0 = load ptr, ptr %cmd.addr, align 8, !dbg !965, !tbaa !716
  %temp_pool = getelementptr inbounds %struct.cmd_parms_struct, ptr %0, i32 0, i32 10, !dbg !966
  %1 = load ptr, ptr %temp_pool, align 8, !dbg !966, !tbaa !880
  %2 = load ptr, ptr %filename.addr, align 8, !dbg !967, !tbaa !716
  %call = call ptr @ap_server_root_relative(ptr noundef %1, ptr noundef %2), !dbg !968
  store ptr %call, ptr %filename.addr, align 8, !dbg !969, !tbaa !716
  %3 = load ptr, ptr %cmd.addr, align 8, !dbg !970, !tbaa !716
  %temp_pool1 = getelementptr inbounds %struct.cmd_parms_struct, ptr %3, i32 0, i32 10, !dbg !971
  %4 = load ptr, ptr %temp_pool1, align 8, !dbg !971, !tbaa !880
  %5 = load ptr, ptr %filename.addr, align 8, !dbg !972, !tbaa !716
  %call2 = call i32 @ap_pcfg_openfile(ptr noundef %file, ptr noundef %4, ptr noundef %5), !dbg !973
  store i32 %call2, ptr %rv, align 4, !dbg !974, !tbaa !852
  %6 = load i32, ptr %rv, align 4, !dbg !975, !tbaa !852
  %cmp = icmp ne i32 %6, 0, !dbg !977
  br i1 %cmp, label %if.then, label %if.end, !dbg !978

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %cmd.addr, align 8, !dbg !979, !tbaa !716
  %pool = getelementptr inbounds %struct.cmd_parms_struct, ptr %7, i32 0, i32 9, !dbg !981
  %8 = load ptr, ptr %pool, align 8, !dbg !981, !tbaa !889
  %9 = load ptr, ptr %cmd.addr, align 8, !dbg !982, !tbaa !716
  %cmd3 = getelementptr inbounds %struct.cmd_parms_struct, ptr %9, i32 0, i32 13, !dbg !983
  %10 = load ptr, ptr %cmd3, align 8, !dbg !983, !tbaa !984
  %name = getelementptr inbounds %struct.command_struct, ptr %10, i32 0, i32 0, !dbg !985
  %11 = load ptr, ptr %name, align 8, !dbg !985, !tbaa !986
  %12 = load ptr, ptr %filename.addr, align 8, !dbg !988, !tbaa !716
  %call4 = call ptr (ptr, ptr, ...) @apr_psprintf(ptr noundef %8, ptr noundef @.str.15, ptr noundef %11, ptr noundef %12, ptr noundef %rv), !dbg !989
  store ptr %call4, ptr %retval, align 8, !dbg !990
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !990

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !991

while.cond:                                       ; preds = %while.end, %if.end
  %arraydecay = getelementptr inbounds [8192 x i8], ptr %buffer, i64 0, i64 0, !dbg !992
  %13 = load ptr, ptr %file, align 8, !dbg !993, !tbaa !716
  %call5 = call i32 @ap_cfg_getline(ptr noundef %arraydecay, i64 noundef 8192, ptr noundef %13), !dbg !994
  %tobool = icmp ne i32 %call5, 0, !dbg !995
  %lnot = xor i1 %tobool, true, !dbg !995
  br i1 %lnot, label %while.body, label %while.end19, !dbg !991

while.body:                                       ; preds = %while.cond
  %arraydecay6 = getelementptr inbounds [8192 x i8], ptr %buffer, i64 0, i64 0, !dbg !996
  store ptr %arraydecay6, ptr %args, align 8, !dbg !998, !tbaa !716
  br label %while.cond7, !dbg !999

while.cond7:                                      ; preds = %if.end17, %while.body
  %14 = load ptr, ptr %cmd.addr, align 8, !dbg !1000, !tbaa !716
  %pool8 = getelementptr inbounds %struct.cmd_parms_struct, ptr %14, i32 0, i32 9, !dbg !1001
  %15 = load ptr, ptr %pool8, align 8, !dbg !1001, !tbaa !889
  %call9 = call ptr @ap_getword_conf(ptr noundef %15, ptr noundef %args), !dbg !1002
  store ptr %call9, ptr %arg, align 8, !dbg !1003, !tbaa !716
  %16 = load i8, ptr %call9, align 1, !dbg !1004, !tbaa !1005
  %conv = sext i8 %16 to i32, !dbg !1004
  %cmp10 = icmp ne i32 %conv, 0, !dbg !1006
  br i1 %cmp10, label %while.body12, label %while.end, !dbg !999

while.body12:                                     ; preds = %while.cond7
  %17 = load ptr, ptr %arg, align 8, !dbg !1007, !tbaa !716
  %18 = load i8, ptr %17, align 1, !dbg !1010, !tbaa !1005
  %conv13 = sext i8 %18 to i32, !dbg !1010
  %cmp14 = icmp eq i32 %conv13, 35, !dbg !1011
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !1012

if.then16:                                        ; preds = %while.body12
  br label %while.end, !dbg !1013

if.end17:                                         ; preds = %while.body12
  %19 = load ptr, ptr %cmd.addr, align 8, !dbg !1015, !tbaa !716
  %20 = load ptr, ptr %config.addr, align 8, !dbg !1016, !tbaa !716
  %21 = load ptr, ptr %arg, align 8, !dbg !1017, !tbaa !716
  %call18 = call ptr @set_crypto_passphrase(ptr noundef %19, ptr noundef %20, ptr noundef %21), !dbg !1018
  br label %while.cond7, !dbg !999, !llvm.loop !1019

while.end:                                        ; preds = %if.then16, %while.cond7
  br label %while.cond, !dbg !991, !llvm.loop !1022

while.end19:                                      ; preds = %while.cond
  %22 = load ptr, ptr %file, align 8, !dbg !1024, !tbaa !716
  %call20 = call i32 @ap_cfg_closefile(ptr noundef %22), !dbg !1025
  store ptr null, ptr %retval, align 8, !dbg !1026
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1026

cleanup:                                          ; preds = %while.end19, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !1027
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #8, !dbg !1027
  call void @llvm.lifetime.end.p0(i64 8, ptr %args) #8, !dbg !1027
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #8, !dbg !1027
  call void @llvm.lifetime.end.p0(i64 8192, ptr %buffer) #8, !dbg !1027
  %23 = load ptr, ptr %retval, align 8, !dbg !1027
  ret ptr %23, !dbg !1027
}

; Function Attrs: nounwind uwtable
define internal ptr @set_crypto_cipher(ptr noundef %cmd, ptr noundef %config, ptr noundef %cipher) #0 !dbg !1028 {
entry:
  %cmd.addr = alloca ptr, align 8
  %config.addr = alloca ptr, align 8
  %cipher.addr = alloca ptr, align 8
  %dconf = alloca ptr, align 8
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !1030, metadata !DIExpression()), !dbg !1034
  store ptr %config, ptr %config.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %config.addr, metadata !1031, metadata !DIExpression()), !dbg !1035
  store ptr %cipher, ptr %cipher.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %cipher.addr, metadata !1032, metadata !DIExpression()), !dbg !1036
  call void @llvm.lifetime.start.p0(i64 8, ptr %dconf) #8, !dbg !1037
  tail call void @llvm.dbg.declare(metadata ptr %dconf, metadata !1033, metadata !DIExpression()), !dbg !1038
  %0 = load ptr, ptr %config.addr, align 8, !dbg !1039, !tbaa !716
  store ptr %0, ptr %dconf, align 8, !dbg !1038, !tbaa !716
  %1 = load ptr, ptr %cipher.addr, align 8, !dbg !1040, !tbaa !716
  %2 = load ptr, ptr %dconf, align 8, !dbg !1041, !tbaa !716
  %cipher1 = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %2, i32 0, i32 2, !dbg !1042
  store ptr %1, ptr %cipher1, align 8, !dbg !1043, !tbaa !736
  %3 = load ptr, ptr %dconf, align 8, !dbg !1044, !tbaa !716
  %cipher_set = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %3, i32 0, i32 3, !dbg !1045
  store i32 1, ptr %cipher_set, align 8, !dbg !1046, !tbaa !782
  call void @llvm.lifetime.end.p0(i64 8, ptr %dconf) #8, !dbg !1047
  ret ptr null, !dbg !1048
}

; Function Attrs: nounwind uwtable
define internal ptr @set_crypto_driver(ptr noundef %cmd, ptr noundef %config, ptr noundef %arg) #0 !dbg !1049 {
entry:
  %retval = alloca ptr, align 8
  %cmd.addr = alloca ptr, align 8
  %config.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %err = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !1051, metadata !DIExpression()), !dbg !1056
  store ptr %config, ptr %config.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %config.addr, metadata !1052, metadata !DIExpression()), !dbg !1057
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !1053, metadata !DIExpression()), !dbg !1058
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #8, !dbg !1059
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !1054, metadata !DIExpression()), !dbg !1060
  %0 = load ptr, ptr %cmd.addr, align 8, !dbg !1061, !tbaa !716
  %server = getelementptr inbounds %struct.cmd_parms_struct, ptr %0, i32 0, i32 11, !dbg !1061
  %1 = load ptr, ptr %server, align 8, !dbg !1061, !tbaa !1062
  %module_config = getelementptr inbounds %struct.server_rec, ptr %1, i32 0, i32 5, !dbg !1061
  %2 = load ptr, ptr %module_config, align 8, !dbg !1061, !tbaa !1063
  %3 = load i32, ptr getelementptr inbounds (%struct.module_struct, ptr @session_crypto_module, i32 0, i32 2), align 8, !dbg !1061, !tbaa !1067
  %idxprom = sext i32 %3 to i64, !dbg !1061
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom, !dbg !1061
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !1061, !tbaa !716
  store ptr %4, ptr %conf, align 8, !dbg !1060, !tbaa !716
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #8, !dbg !1069
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1055, metadata !DIExpression()), !dbg !1070
  %5 = load ptr, ptr %cmd.addr, align 8, !dbg !1071, !tbaa !716
  %call = call ptr @ap_check_cmd_context(ptr noundef %5, i32 noundef 95), !dbg !1072
  store ptr %call, ptr %err, align 8, !dbg !1070, !tbaa !716
  %6 = load ptr, ptr %err, align 8, !dbg !1073, !tbaa !716
  %cmp = icmp ne ptr %6, null, !dbg !1075
  br i1 %cmp, label %if.then, label %if.end, !dbg !1076

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %err, align 8, !dbg !1077, !tbaa !716
  store ptr %7, ptr %retval, align 8, !dbg !1079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1079

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %cmd.addr, align 8, !dbg !1080, !tbaa !716
  %pool = getelementptr inbounds %struct.cmd_parms_struct, ptr %8, i32 0, i32 9, !dbg !1081
  %9 = load ptr, ptr %pool, align 8, !dbg !1081, !tbaa !889
  %call1 = call ptr @ap_getword_conf(ptr noundef %9, ptr noundef %arg.addr), !dbg !1082
  %10 = load ptr, ptr %conf, align 8, !dbg !1083, !tbaa !716
  %library = getelementptr inbounds %struct.session_crypto_conf, ptr %10, i32 0, i32 0, !dbg !1084
  store ptr %call1, ptr %library, align 8, !dbg !1085, !tbaa !816
  %11 = load ptr, ptr %arg.addr, align 8, !dbg !1086, !tbaa !716
  %12 = load ptr, ptr %conf, align 8, !dbg !1087, !tbaa !716
  %params = getelementptr inbounds %struct.session_crypto_conf, ptr %12, i32 0, i32 1, !dbg !1088
  store ptr %11, ptr %params, align 8, !dbg !1089, !tbaa !1090
  %13 = load ptr, ptr %conf, align 8, !dbg !1091, !tbaa !716
  %library_set = getelementptr inbounds %struct.session_crypto_conf, ptr %13, i32 0, i32 2, !dbg !1092
  store i32 1, ptr %library_set, align 8, !dbg !1093, !tbaa !1094
  store ptr null, ptr %retval, align 8, !dbg !1095
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1095

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #8, !dbg !1096
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #8, !dbg !1096
  %14 = load ptr, ptr %retval, align 8, !dbg !1096
  ret ptr %14, !dbg !1096
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1097 i64 @strlen(ptr noundef) #4

declare !dbg !1101 ptr @apr_array_push(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1104 i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

declare !dbg !1107 i32 @apr_tokenize_to_argv(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1112 ptr @apr_pstrcat(ptr noundef, ...) #2

declare !dbg !1115 ptr @ap_server_root_relative(ptr noundef, ptr noundef) #2

declare !dbg !1118 ptr @ap_get_exec_line(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1121 i32 @ap_pcfg_openfile(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1125 ptr @apr_psprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !1128 i32 @ap_cfg_getline(ptr noundef, i64 noundef, ptr noundef) #2

declare !dbg !1131 ptr @ap_getword_conf(ptr noundef, ptr noundef) #2

declare !dbg !1134 i32 @ap_cfg_closefile(ptr noundef) #2

declare !dbg !1137 ptr @ap_check_cmd_context(ptr noundef, i32 noundef) #2

declare !dbg !1140 void @ap_hook_session_encode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @session_crypto_encode(ptr noundef %r, ptr noundef %z) #0 !dbg !1429 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %encoded = alloca ptr, align 8
  %res = alloca i32, align 4
  %f = alloca ptr, align 8
  %dconf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1431, metadata !DIExpression()), !dbg !1441
  store ptr %z, ptr %z.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %z.addr, metadata !1432, metadata !DIExpression()), !dbg !1442
  call void @llvm.lifetime.start.p0(i64 8, ptr %encoded) #8, !dbg !1443
  tail call void @llvm.dbg.declare(metadata ptr %encoded, metadata !1433, metadata !DIExpression()), !dbg !1444
  store ptr null, ptr %encoded, align 8, !dbg !1444, !tbaa !716
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #8, !dbg !1445
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !1434, metadata !DIExpression()), !dbg !1446
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #8, !dbg !1447
  tail call void @llvm.dbg.declare(metadata ptr %f, metadata !1435, metadata !DIExpression()), !dbg !1448
  store ptr null, ptr %f, align 8, !dbg !1448, !tbaa !716
  call void @llvm.lifetime.start.p0(i64 8, ptr %dconf) #8, !dbg !1449
  tail call void @llvm.dbg.declare(metadata ptr %dconf, metadata !1440, metadata !DIExpression()), !dbg !1450
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1451, !tbaa !716
  %per_dir_config = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 54, !dbg !1451
  %1 = load ptr, ptr %per_dir_config, align 8, !dbg !1451, !tbaa !1452
  %2 = load i32, ptr getelementptr inbounds (%struct.module_struct, ptr @session_crypto_module, i32 0, i32 2), align 8, !dbg !1451, !tbaa !1067
  %idxprom = sext i32 %2 to i64, !dbg !1451
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom, !dbg !1451
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1451, !tbaa !716
  store ptr %3, ptr %dconf, align 8, !dbg !1450, !tbaa !716
  %4 = load ptr, ptr %dconf, align 8, !dbg !1456, !tbaa !716
  %passphrases_set = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %4, i32 0, i32 1, !dbg !1458
  %5 = load i32, ptr %passphrases_set, align 8, !dbg !1458, !tbaa !762
  %tobool = icmp ne i32 %5, 0, !dbg !1456
  br i1 %tobool, label %land.lhs.true, label %if.end116, !dbg !1459

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %z.addr, align 8, !dbg !1460, !tbaa !716
  %encoded1 = getelementptr inbounds %struct.session_rec, ptr %6, i32 0, i32 4, !dbg !1461
  %7 = load ptr, ptr %encoded1, align 8, !dbg !1461, !tbaa !1462
  %tobool2 = icmp ne ptr %7, null, !dbg !1460
  br i1 %tobool2, label %land.lhs.true3, label %if.end116, !dbg !1464

land.lhs.true3:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %z.addr, align 8, !dbg !1465, !tbaa !716
  %encoded4 = getelementptr inbounds %struct.session_rec, ptr %8, i32 0, i32 4, !dbg !1466
  %9 = load ptr, ptr %encoded4, align 8, !dbg !1466, !tbaa !1462
  %10 = load i8, ptr %9, align 1, !dbg !1467, !tbaa !1005
  %conv = sext i8 %10 to i32, !dbg !1467
  %tobool5 = icmp ne i32 %conv, 0, !dbg !1467
  br i1 %tobool5, label %if.then, label %if.end116, !dbg !1468

if.then:                                          ; preds = %land.lhs.true3
  %11 = load ptr, ptr %r.addr, align 8, !dbg !1469, !tbaa !716
  %server = getelementptr inbounds %struct.request_rec, ptr %11, i32 0, i32 2, !dbg !1471
  %12 = load ptr, ptr %server, align 8, !dbg !1471, !tbaa !1472
  %process = getelementptr inbounds %struct.server_rec, ptr %12, i32 0, i32 0, !dbg !1473
  %13 = load ptr, ptr %process, align 8, !dbg !1473, !tbaa !1474
  %pconf = getelementptr inbounds %struct.process_rec, ptr %13, i32 0, i32 1, !dbg !1475
  %14 = load ptr, ptr %pconf, align 8, !dbg !1475, !tbaa !1476
  %call = call i32 @apr_pool_userdata_get(ptr noundef %f, ptr noundef @.str.16, ptr noundef %14), !dbg !1478
  %15 = load ptr, ptr %r.addr, align 8, !dbg !1479, !tbaa !716
  %16 = load ptr, ptr %f, align 8, !dbg !1480, !tbaa !716
  %17 = load ptr, ptr %dconf, align 8, !dbg !1481, !tbaa !716
  %18 = load ptr, ptr %z.addr, align 8, !dbg !1482, !tbaa !716
  %encoded6 = getelementptr inbounds %struct.session_rec, ptr %18, i32 0, i32 4, !dbg !1483
  %19 = load ptr, ptr %encoded6, align 8, !dbg !1483, !tbaa !1462
  %call7 = call i32 @encrypt_string(ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %19, ptr noundef %encoded), !dbg !1484
  store i32 %call7, ptr %res, align 4, !dbg !1485, !tbaa !852
  %20 = load i32, ptr %res, align 4, !dbg !1486, !tbaa !852
  %cmp = icmp ne i32 %20, 0, !dbg !1488
  br i1 %cmp, label %if.then9, label %if.end114, !dbg !1489

if.then9:                                         ; preds = %if.then
  br label %do.body, !dbg !1490

do.body:                                          ; preds = %if.then9
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true, label %cond.false, !dbg !1492

cond.true:                                        ; preds = %do.body
  %21 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1492, !tbaa !852
  br label %cond.end, !dbg !1492

cond.false:                                       ; preds = %do.body
  br label %cond.end, !dbg !1492

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ -1, %cond.false ], !dbg !1492
  %cmp10 = icmp slt i32 %cond, 0, !dbg !1492
  br i1 %cmp10, label %cond.true59, label %lor.lhs.false, !dbg !1492

lor.lhs.false:                                    ; preds = %cond.end
  %22 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %log = getelementptr inbounds %struct.request_rec, ptr %22, i32 0, i32 56, !dbg !1492
  %23 = load ptr, ptr %log, align 8, !dbg !1492, !tbaa !1495
  %tobool12 = icmp ne ptr %23, null, !dbg !1492
  br i1 %tobool12, label %cond.true13, label %cond.false15, !dbg !1492

cond.true13:                                      ; preds = %lor.lhs.false
  %24 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %log14 = getelementptr inbounds %struct.request_rec, ptr %24, i32 0, i32 56, !dbg !1492
  %25 = load ptr, ptr %log14, align 8, !dbg !1492, !tbaa !1495
  br label %cond.end26, !dbg !1492

cond.false15:                                     ; preds = %lor.lhs.false
  %26 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %connection = getelementptr inbounds %struct.request_rec, ptr %26, i32 0, i32 1, !dbg !1492
  %27 = load ptr, ptr %connection, align 8, !dbg !1492, !tbaa !1496
  %log16 = getelementptr inbounds %struct.conn_rec, ptr %27, i32 0, i32 24, !dbg !1492
  %28 = load ptr, ptr %log16, align 8, !dbg !1492, !tbaa !1497
  %tobool17 = icmp ne ptr %28, null, !dbg !1492
  br i1 %tobool17, label %cond.true18, label %cond.false21, !dbg !1492

cond.true18:                                      ; preds = %cond.false15
  %29 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %connection19 = getelementptr inbounds %struct.request_rec, ptr %29, i32 0, i32 1, !dbg !1492
  %30 = load ptr, ptr %connection19, align 8, !dbg !1492, !tbaa !1496
  %log20 = getelementptr inbounds %struct.conn_rec, ptr %30, i32 0, i32 24, !dbg !1492
  %31 = load ptr, ptr %log20, align 8, !dbg !1492, !tbaa !1497
  br label %cond.end24, !dbg !1492

cond.false21:                                     ; preds = %cond.false15
  %32 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %server22 = getelementptr inbounds %struct.request_rec, ptr %32, i32 0, i32 2, !dbg !1492
  %33 = load ptr, ptr %server22, align 8, !dbg !1492, !tbaa !1472
  %log23 = getelementptr inbounds %struct.server_rec, ptr %33, i32 0, i32 4, !dbg !1492
  br label %cond.end24, !dbg !1492

cond.end24:                                       ; preds = %cond.false21, %cond.true18
  %cond25 = phi ptr [ %31, %cond.true18 ], [ %log23, %cond.false21 ], !dbg !1492
  br label %cond.end26, !dbg !1492

cond.end26:                                       ; preds = %cond.end24, %cond.true13
  %cond27 = phi ptr [ %25, %cond.true13 ], [ %cond25, %cond.end24 ], !dbg !1492
  %module_levels = getelementptr inbounds %struct.ap_logconf, ptr %cond27, i32 0, i32 0, !dbg !1492
  %34 = load ptr, ptr %module_levels, align 8, !dbg !1492, !tbaa !1499
  %cmp28 = icmp eq ptr %34, null, !dbg !1492
  br i1 %cmp28, label %cond.true59, label %lor.lhs.false30, !dbg !1492

lor.lhs.false30:                                  ; preds = %cond.end26
  %35 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %log31 = getelementptr inbounds %struct.request_rec, ptr %35, i32 0, i32 56, !dbg !1492
  %36 = load ptr, ptr %log31, align 8, !dbg !1492, !tbaa !1495
  %tobool32 = icmp ne ptr %36, null, !dbg !1492
  br i1 %tobool32, label %cond.true33, label %cond.false35, !dbg !1492

cond.true33:                                      ; preds = %lor.lhs.false30
  %37 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %log34 = getelementptr inbounds %struct.request_rec, ptr %37, i32 0, i32 56, !dbg !1492
  %38 = load ptr, ptr %log34, align 8, !dbg !1492, !tbaa !1495
  br label %cond.end47, !dbg !1492

cond.false35:                                     ; preds = %lor.lhs.false30
  %39 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %connection36 = getelementptr inbounds %struct.request_rec, ptr %39, i32 0, i32 1, !dbg !1492
  %40 = load ptr, ptr %connection36, align 8, !dbg !1492, !tbaa !1496
  %log37 = getelementptr inbounds %struct.conn_rec, ptr %40, i32 0, i32 24, !dbg !1492
  %41 = load ptr, ptr %log37, align 8, !dbg !1492, !tbaa !1497
  %tobool38 = icmp ne ptr %41, null, !dbg !1492
  br i1 %tobool38, label %cond.true39, label %cond.false42, !dbg !1492

cond.true39:                                      ; preds = %cond.false35
  %42 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %connection40 = getelementptr inbounds %struct.request_rec, ptr %42, i32 0, i32 1, !dbg !1492
  %43 = load ptr, ptr %connection40, align 8, !dbg !1492, !tbaa !1496
  %log41 = getelementptr inbounds %struct.conn_rec, ptr %43, i32 0, i32 24, !dbg !1492
  %44 = load ptr, ptr %log41, align 8, !dbg !1492, !tbaa !1497
  br label %cond.end45, !dbg !1492

cond.false42:                                     ; preds = %cond.false35
  %45 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %server43 = getelementptr inbounds %struct.request_rec, ptr %45, i32 0, i32 2, !dbg !1492
  %46 = load ptr, ptr %server43, align 8, !dbg !1492, !tbaa !1472
  %log44 = getelementptr inbounds %struct.server_rec, ptr %46, i32 0, i32 4, !dbg !1492
  br label %cond.end45, !dbg !1492

cond.end45:                                       ; preds = %cond.false42, %cond.true39
  %cond46 = phi ptr [ %44, %cond.true39 ], [ %log44, %cond.false42 ], !dbg !1492
  br label %cond.end47, !dbg !1492

cond.end47:                                       ; preds = %cond.end45, %cond.true33
  %cond48 = phi ptr [ %38, %cond.true33 ], [ %cond46, %cond.end45 ], !dbg !1492
  %module_levels49 = getelementptr inbounds %struct.ap_logconf, ptr %cond48, i32 0, i32 0, !dbg !1492
  %47 = load ptr, ptr %module_levels49, align 8, !dbg !1492, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true50, label %cond.false51, !dbg !1492

cond.true50:                                      ; preds = %cond.end47
  %48 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1492, !tbaa !852
  br label %cond.end52, !dbg !1492

cond.false51:                                     ; preds = %cond.end47
  br label %cond.end52, !dbg !1492

cond.end52:                                       ; preds = %cond.false51, %cond.true50
  %cond53 = phi i32 [ %48, %cond.true50 ], [ -1, %cond.false51 ], !dbg !1492
  %idxprom54 = sext i32 %cond53 to i64, !dbg !1492
  %arrayidx55 = getelementptr inbounds i8, ptr %47, i64 %idxprom54, !dbg !1492
  %49 = load i8, ptr %arrayidx55, align 1, !dbg !1492, !tbaa !1005
  %conv56 = sext i8 %49 to i32, !dbg !1492
  %cmp57 = icmp slt i32 %conv56, 0, !dbg !1492
  br i1 %cmp57, label %cond.true59, label %cond.false78, !dbg !1492

cond.true59:                                      ; preds = %cond.end52, %cond.end26, %cond.end
  %50 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %log60 = getelementptr inbounds %struct.request_rec, ptr %50, i32 0, i32 56, !dbg !1492
  %51 = load ptr, ptr %log60, align 8, !dbg !1492, !tbaa !1495
  %tobool61 = icmp ne ptr %51, null, !dbg !1492
  br i1 %tobool61, label %cond.true62, label %cond.false64, !dbg !1492

cond.true62:                                      ; preds = %cond.true59
  %52 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %log63 = getelementptr inbounds %struct.request_rec, ptr %52, i32 0, i32 56, !dbg !1492
  %53 = load ptr, ptr %log63, align 8, !dbg !1492, !tbaa !1495
  br label %cond.end76, !dbg !1492

cond.false64:                                     ; preds = %cond.true59
  %54 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %connection65 = getelementptr inbounds %struct.request_rec, ptr %54, i32 0, i32 1, !dbg !1492
  %55 = load ptr, ptr %connection65, align 8, !dbg !1492, !tbaa !1496
  %log66 = getelementptr inbounds %struct.conn_rec, ptr %55, i32 0, i32 24, !dbg !1492
  %56 = load ptr, ptr %log66, align 8, !dbg !1492, !tbaa !1497
  %tobool67 = icmp ne ptr %56, null, !dbg !1492
  br i1 %tobool67, label %cond.true68, label %cond.false71, !dbg !1492

cond.true68:                                      ; preds = %cond.false64
  %57 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %connection69 = getelementptr inbounds %struct.request_rec, ptr %57, i32 0, i32 1, !dbg !1492
  %58 = load ptr, ptr %connection69, align 8, !dbg !1492, !tbaa !1496
  %log70 = getelementptr inbounds %struct.conn_rec, ptr %58, i32 0, i32 24, !dbg !1492
  %59 = load ptr, ptr %log70, align 8, !dbg !1492, !tbaa !1497
  br label %cond.end74, !dbg !1492

cond.false71:                                     ; preds = %cond.false64
  %60 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %server72 = getelementptr inbounds %struct.request_rec, ptr %60, i32 0, i32 2, !dbg !1492
  %61 = load ptr, ptr %server72, align 8, !dbg !1492, !tbaa !1472
  %log73 = getelementptr inbounds %struct.server_rec, ptr %61, i32 0, i32 4, !dbg !1492
  br label %cond.end74, !dbg !1492

cond.end74:                                       ; preds = %cond.false71, %cond.true68
  %cond75 = phi ptr [ %59, %cond.true68 ], [ %log73, %cond.false71 ], !dbg !1492
  br label %cond.end76, !dbg !1492

cond.end76:                                       ; preds = %cond.end74, %cond.true62
  %cond77 = phi ptr [ %53, %cond.true62 ], [ %cond75, %cond.end74 ], !dbg !1492
  %level = getelementptr inbounds %struct.ap_logconf, ptr %cond77, i32 0, i32 1, !dbg !1492
  %62 = load i32, ptr %level, align 8, !dbg !1492, !tbaa !1500
  br label %cond.end105, !dbg !1492

cond.false78:                                     ; preds = %cond.end52
  %63 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %log79 = getelementptr inbounds %struct.request_rec, ptr %63, i32 0, i32 56, !dbg !1492
  %64 = load ptr, ptr %log79, align 8, !dbg !1492, !tbaa !1495
  %tobool80 = icmp ne ptr %64, null, !dbg !1492
  br i1 %tobool80, label %cond.true81, label %cond.false83, !dbg !1492

cond.true81:                                      ; preds = %cond.false78
  %65 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %log82 = getelementptr inbounds %struct.request_rec, ptr %65, i32 0, i32 56, !dbg !1492
  %66 = load ptr, ptr %log82, align 8, !dbg !1492, !tbaa !1495
  br label %cond.end95, !dbg !1492

cond.false83:                                     ; preds = %cond.false78
  %67 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %connection84 = getelementptr inbounds %struct.request_rec, ptr %67, i32 0, i32 1, !dbg !1492
  %68 = load ptr, ptr %connection84, align 8, !dbg !1492, !tbaa !1496
  %log85 = getelementptr inbounds %struct.conn_rec, ptr %68, i32 0, i32 24, !dbg !1492
  %69 = load ptr, ptr %log85, align 8, !dbg !1492, !tbaa !1497
  %tobool86 = icmp ne ptr %69, null, !dbg !1492
  br i1 %tobool86, label %cond.true87, label %cond.false90, !dbg !1492

cond.true87:                                      ; preds = %cond.false83
  %70 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %connection88 = getelementptr inbounds %struct.request_rec, ptr %70, i32 0, i32 1, !dbg !1492
  %71 = load ptr, ptr %connection88, align 8, !dbg !1492, !tbaa !1496
  %log89 = getelementptr inbounds %struct.conn_rec, ptr %71, i32 0, i32 24, !dbg !1492
  %72 = load ptr, ptr %log89, align 8, !dbg !1492, !tbaa !1497
  br label %cond.end93, !dbg !1492

cond.false90:                                     ; preds = %cond.false83
  %73 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  %server91 = getelementptr inbounds %struct.request_rec, ptr %73, i32 0, i32 2, !dbg !1492
  %74 = load ptr, ptr %server91, align 8, !dbg !1492, !tbaa !1472
  %log92 = getelementptr inbounds %struct.server_rec, ptr %74, i32 0, i32 4, !dbg !1492
  br label %cond.end93, !dbg !1492

cond.end93:                                       ; preds = %cond.false90, %cond.true87
  %cond94 = phi ptr [ %72, %cond.true87 ], [ %log92, %cond.false90 ], !dbg !1492
  br label %cond.end95, !dbg !1492

cond.end95:                                       ; preds = %cond.end93, %cond.true81
  %cond96 = phi ptr [ %66, %cond.true81 ], [ %cond94, %cond.end93 ], !dbg !1492
  %module_levels97 = getelementptr inbounds %struct.ap_logconf, ptr %cond96, i32 0, i32 0, !dbg !1492
  %75 = load ptr, ptr %module_levels97, align 8, !dbg !1492, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true98, label %cond.false99, !dbg !1492

cond.true98:                                      ; preds = %cond.end95
  %76 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1492, !tbaa !852
  br label %cond.end100, !dbg !1492

cond.false99:                                     ; preds = %cond.end95
  br label %cond.end100, !dbg !1492

cond.end100:                                      ; preds = %cond.false99, %cond.true98
  %cond101 = phi i32 [ %76, %cond.true98 ], [ -1, %cond.false99 ], !dbg !1492
  %idxprom102 = sext i32 %cond101 to i64, !dbg !1492
  %arrayidx103 = getelementptr inbounds i8, ptr %75, i64 %idxprom102, !dbg !1492
  %77 = load i8, ptr %arrayidx103, align 1, !dbg !1492, !tbaa !1005
  %conv104 = sext i8 %77 to i32, !dbg !1492
  br label %cond.end105, !dbg !1492

cond.end105:                                      ; preds = %cond.end100, %cond.end76
  %cond106 = phi i32 [ %62, %cond.end76 ], [ %conv104, %cond.end100 ], !dbg !1492
  %cmp107 = icmp sge i32 %cond106, 7, !dbg !1492
  br i1 %cmp107, label %if.then109, label %if.end, !dbg !1501

if.then109:                                       ; preds = %cond.end105
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true110, label %cond.false111, !dbg !1492

cond.true110:                                     ; preds = %if.then109
  %78 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1492, !tbaa !852
  br label %cond.end112, !dbg !1492

cond.false111:                                    ; preds = %if.then109
  br label %cond.end112, !dbg !1492

cond.end112:                                      ; preds = %cond.false111, %cond.true110
  %cond113 = phi i32 [ %78, %cond.true110 ], [ -1, %cond.false111 ], !dbg !1492
  %79 = load i32, ptr %res, align 4, !dbg !1492, !tbaa !852
  %80 = load ptr, ptr %r.addr, align 8, !dbg !1492, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 513, i32 noundef %cond113, i32 noundef 7, i32 noundef %79, ptr noundef %80, ptr noundef @.str.17), !dbg !1492
  br label %if.end, !dbg !1492

if.end:                                           ; preds = %cond.end112, %cond.end105
  br label %do.cond, !dbg !1501

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1501

do.end:                                           ; preds = %do.cond
  %81 = load i32, ptr %res, align 4, !dbg !1502, !tbaa !852
  store i32 %81, ptr %retval, align 4, !dbg !1503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1503

if.end114:                                        ; preds = %if.then
  %82 = load ptr, ptr %encoded, align 8, !dbg !1504, !tbaa !716
  %83 = load ptr, ptr %z.addr, align 8, !dbg !1505, !tbaa !716
  %encoded115 = getelementptr inbounds %struct.session_rec, ptr %83, i32 0, i32 4, !dbg !1506
  store ptr %82, ptr %encoded115, align 8, !dbg !1507, !tbaa !1462
  br label %if.end116, !dbg !1508

if.end116:                                        ; preds = %if.end114, %land.lhs.true3, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !1509
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1509

cleanup:                                          ; preds = %if.end116, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %dconf) #8, !dbg !1510
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #8, !dbg !1510
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #8, !dbg !1510
  call void @llvm.lifetime.end.p0(i64 8, ptr %encoded) #8, !dbg !1510
  %84 = load i32, ptr %retval, align 4, !dbg !1510
  ret i32 %84, !dbg !1510
}

declare !dbg !1511 void @ap_hook_session_decode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @session_crypto_decode(ptr noundef %r, ptr noundef %z) #0 !dbg !1516 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %encoded = alloca ptr, align 8
  %res = alloca i32, align 4
  %f = alloca ptr, align 8
  %dconf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1518, metadata !DIExpression()), !dbg !1524
  store ptr %z, ptr %z.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %z.addr, metadata !1519, metadata !DIExpression()), !dbg !1525
  call void @llvm.lifetime.start.p0(i64 8, ptr %encoded) #8, !dbg !1526
  tail call void @llvm.dbg.declare(metadata ptr %encoded, metadata !1520, metadata !DIExpression()), !dbg !1527
  store ptr null, ptr %encoded, align 8, !dbg !1527, !tbaa !716
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #8, !dbg !1528
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !1521, metadata !DIExpression()), !dbg !1529
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #8, !dbg !1530
  tail call void @llvm.dbg.declare(metadata ptr %f, metadata !1522, metadata !DIExpression()), !dbg !1531
  store ptr null, ptr %f, align 8, !dbg !1531, !tbaa !716
  call void @llvm.lifetime.start.p0(i64 8, ptr %dconf) #8, !dbg !1532
  tail call void @llvm.dbg.declare(metadata ptr %dconf, metadata !1523, metadata !DIExpression()), !dbg !1533
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1534, !tbaa !716
  %per_dir_config = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 54, !dbg !1534
  %1 = load ptr, ptr %per_dir_config, align 8, !dbg !1534, !tbaa !1452
  %2 = load i32, ptr getelementptr inbounds (%struct.module_struct, ptr @session_crypto_module, i32 0, i32 2), align 8, !dbg !1534, !tbaa !1067
  %idxprom = sext i32 %2 to i64, !dbg !1534
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom, !dbg !1534
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1534, !tbaa !716
  store ptr %3, ptr %dconf, align 8, !dbg !1533, !tbaa !716
  %4 = load ptr, ptr %dconf, align 8, !dbg !1535, !tbaa !716
  %passphrases_set = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %4, i32 0, i32 1, !dbg !1537
  %5 = load i32, ptr %passphrases_set, align 8, !dbg !1537, !tbaa !762
  %tobool = icmp ne i32 %5, 0, !dbg !1538
  br i1 %tobool, label %land.lhs.true, label %if.end11, !dbg !1539

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %z.addr, align 8, !dbg !1540, !tbaa !716
  %encoded1 = getelementptr inbounds %struct.session_rec, ptr %6, i32 0, i32 4, !dbg !1541
  %7 = load ptr, ptr %encoded1, align 8, !dbg !1541, !tbaa !1462
  %tobool2 = icmp ne ptr %7, null, !dbg !1540
  br i1 %tobool2, label %land.lhs.true3, label %if.end11, !dbg !1542

land.lhs.true3:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %z.addr, align 8, !dbg !1543, !tbaa !716
  %encoded4 = getelementptr inbounds %struct.session_rec, ptr %8, i32 0, i32 4, !dbg !1544
  %9 = load ptr, ptr %encoded4, align 8, !dbg !1544, !tbaa !1462
  %10 = load i8, ptr %9, align 1, !dbg !1545, !tbaa !1005
  %conv = sext i8 %10 to i32, !dbg !1545
  %tobool5 = icmp ne i32 %conv, 0, !dbg !1545
  br i1 %tobool5, label %if.then, label %if.end11, !dbg !1546

if.then:                                          ; preds = %land.lhs.true3
  %11 = load ptr, ptr %r.addr, align 8, !dbg !1547, !tbaa !716
  %server = getelementptr inbounds %struct.request_rec, ptr %11, i32 0, i32 2, !dbg !1549
  %12 = load ptr, ptr %server, align 8, !dbg !1549, !tbaa !1472
  %process = getelementptr inbounds %struct.server_rec, ptr %12, i32 0, i32 0, !dbg !1550
  %13 = load ptr, ptr %process, align 8, !dbg !1550, !tbaa !1474
  %pconf = getelementptr inbounds %struct.process_rec, ptr %13, i32 0, i32 1, !dbg !1551
  %14 = load ptr, ptr %pconf, align 8, !dbg !1551, !tbaa !1476
  %call = call i32 @apr_pool_userdata_get(ptr noundef %f, ptr noundef @.str.16, ptr noundef %14), !dbg !1552
  %15 = load ptr, ptr %r.addr, align 8, !dbg !1553, !tbaa !716
  %16 = load ptr, ptr %f, align 8, !dbg !1554, !tbaa !716
  %17 = load ptr, ptr %dconf, align 8, !dbg !1555, !tbaa !716
  %18 = load ptr, ptr %z.addr, align 8, !dbg !1556, !tbaa !716
  %encoded6 = getelementptr inbounds %struct.session_rec, ptr %18, i32 0, i32 4, !dbg !1557
  %19 = load ptr, ptr %encoded6, align 8, !dbg !1557, !tbaa !1462
  %call7 = call i32 @decrypt_string(ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %19, ptr noundef %encoded), !dbg !1558
  store i32 %call7, ptr %res, align 4, !dbg !1559, !tbaa !852
  %20 = load i32, ptr %res, align 4, !dbg !1560, !tbaa !852
  %cmp = icmp ne i32 %20, 0, !dbg !1562
  br i1 %cmp, label %if.then9, label %if.end, !dbg !1563

if.then9:                                         ; preds = %if.then
  br label %do.body, !dbg !1564

do.body:                                          ; preds = %if.then9
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true, label %cond.false, !dbg !1566

cond.true:                                        ; preds = %do.body
  %21 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1566, !tbaa !852
  br label %cond.end, !dbg !1566

cond.false:                                       ; preds = %do.body
  br label %cond.end, !dbg !1566

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ -1, %cond.false ], !dbg !1566
  %22 = load i32, ptr %res, align 4, !dbg !1566, !tbaa !852
  %23 = load ptr, ptr %r.addr, align 8, !dbg !1566, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 545, i32 noundef %cond, i32 noundef 3, i32 noundef %22, ptr noundef %23, ptr noundef @.str.27), !dbg !1566
  br label %do.cond, !dbg !1569

do.cond:                                          ; preds = %cond.end
  br label %do.end, !dbg !1569

do.end:                                           ; preds = %do.cond
  %24 = load i32, ptr %res, align 4, !dbg !1570, !tbaa !852
  store i32 %24, ptr %retval, align 4, !dbg !1571
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1571

if.end:                                           ; preds = %if.then
  %25 = load ptr, ptr %encoded, align 8, !dbg !1572, !tbaa !716
  %26 = load ptr, ptr %z.addr, align 8, !dbg !1573, !tbaa !716
  %encoded10 = getelementptr inbounds %struct.session_rec, ptr %26, i32 0, i32 4, !dbg !1574
  store ptr %25, ptr %encoded10, align 8, !dbg !1575, !tbaa !1462
  br label %if.end11, !dbg !1576

if.end11:                                         ; preds = %if.end, %land.lhs.true3, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !1577
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1577

cleanup:                                          ; preds = %if.end11, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %dconf) #8, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #8, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #8, !dbg !1578
  call void @llvm.lifetime.end.p0(i64 8, ptr %encoded) #8, !dbg !1578
  %27 = load i32, ptr %retval, align 4, !dbg !1578
  ret i32 %27, !dbg !1578
}

declare !dbg !1579 void @ap_hook_post_config(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @session_crypto_init(ptr noundef %p, ptr noundef %plog, ptr noundef %ptemp, ptr noundef %s) #0 !dbg !1586 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %plog.addr = alloca ptr, align 8
  %ptemp.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %driver = alloca ptr, align 8
  %f = alloca ptr, align 8
  %conf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %err = alloca ptr, align 8
  %rv = alloca i32, align 4
  %sr__ = alloca ptr, align 8
  %sr__11 = alloca ptr, align 8
  %sr__24 = alloca ptr, align 8
  %sr__36 = alloca ptr, align 8
  %sr__49 = alloca ptr, align 8
  %sr__63 = alloca ptr, align 8
  %sr__73 = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1588, metadata !DIExpression()), !dbg !1641
  store ptr %plog, ptr %plog.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %plog.addr, metadata !1589, metadata !DIExpression()), !dbg !1642
  store ptr %ptemp, ptr %ptemp.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %ptemp.addr, metadata !1590, metadata !DIExpression()), !dbg !1643
  store ptr %s, ptr %s.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1591, metadata !DIExpression()), !dbg !1644
  call void @llvm.lifetime.start.p0(i64 8, ptr %driver) #8, !dbg !1645
  tail call void @llvm.dbg.declare(metadata ptr %driver, metadata !1592, metadata !DIExpression()), !dbg !1646
  store ptr null, ptr %driver, align 8, !dbg !1646, !tbaa !716
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #8, !dbg !1647
  tail call void @llvm.dbg.declare(metadata ptr %f, metadata !1597, metadata !DIExpression()), !dbg !1648
  store ptr null, ptr %f, align 8, !dbg !1648, !tbaa !716
  call void @llvm.lifetime.start.p0(i64 8, ptr %conf) #8, !dbg !1649
  tail call void @llvm.dbg.declare(metadata ptr %conf, metadata !1599, metadata !DIExpression()), !dbg !1650
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1651, !tbaa !716
  %module_config = getelementptr inbounds %struct.server_rec, ptr %0, i32 0, i32 5, !dbg !1651
  %1 = load ptr, ptr %module_config, align 8, !dbg !1651, !tbaa !1063
  %2 = load i32, ptr getelementptr inbounds (%struct.module_struct, ptr @session_crypto_module, i32 0, i32 2), align 8, !dbg !1651, !tbaa !1067
  %idxprom = sext i32 %2 to i64, !dbg !1651
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom, !dbg !1651
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1651, !tbaa !716
  store ptr %3, ptr %conf, align 8, !dbg !1650, !tbaa !716
  %call = call i32 @ap_state_query(i32 noundef 0), !dbg !1652
  %cmp = icmp eq i32 %call, 2, !dbg !1654
  br i1 %cmp, label %if.then, label %if.end, !dbg !1655

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1656
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup122, !dbg !1656

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %conf, align 8, !dbg !1658, !tbaa !716
  %library = getelementptr inbounds %struct.session_crypto_conf, ptr %4, i32 0, i32 0, !dbg !1659
  %5 = load ptr, ptr %library, align 8, !dbg !1659, !tbaa !816
  %tobool = icmp ne ptr %5, null, !dbg !1658
  br i1 %tobool, label %if.then1, label %if.end121, !dbg !1660

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #8, !dbg !1661
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1600, metadata !DIExpression()), !dbg !1662
  store ptr null, ptr %err, align 8, !dbg !1662, !tbaa !716
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8, !dbg !1663
  tail call void @llvm.dbg.declare(metadata ptr %rv, metadata !1612, metadata !DIExpression()), !dbg !1664
  %6 = load ptr, ptr %p.addr, align 8, !dbg !1665, !tbaa !716
  %call2 = call i32 @apr_crypto_init(ptr noundef %6), !dbg !1666
  store i32 %call2, ptr %rv, align 4, !dbg !1667, !tbaa !852
  %7 = load i32, ptr %rv, align 4, !dbg !1668, !tbaa !852
  %cmp3 = icmp ne i32 0, %7, !dbg !1669
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1670

if.then4:                                         ; preds = %if.then1
  br label %do.body, !dbg !1671

do.body:                                          ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sr__) #8, !dbg !1672
  tail call void @llvm.dbg.declare(metadata ptr %sr__, metadata !1613, metadata !DIExpression()), !dbg !1672
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1672, !tbaa !716
  store ptr %8, ptr %sr__, align 8, !dbg !1672, !tbaa !716
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true, label %cond.false, !dbg !1673

cond.true:                                        ; preds = %do.body
  %9 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1673, !tbaa !852
  br label %cond.end, !dbg !1673

cond.false:                                       ; preds = %do.body
  br label %cond.end, !dbg !1673

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ -1, %cond.false ], !dbg !1673
  %10 = load i32, ptr %rv, align 4, !dbg !1673, !tbaa !852
  %11 = load ptr, ptr %sr__, align 8, !dbg !1673, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_error_(ptr noundef @.str, i32 noundef 582, i32 noundef %cond, i32 noundef 3, i32 noundef %10, ptr noundef %11, ptr noundef @.str.39), !dbg !1673
  call void @llvm.lifetime.end.p0(i64 8, ptr %sr__) #8, !dbg !1671
  br label %do.cond, !dbg !1672

do.cond:                                          ; preds = %cond.end
  br label %do.end, !dbg !1672

do.end:                                           ; preds = %do.cond
  %12 = load i32, ptr %rv, align 4, !dbg !1675, !tbaa !852
  store i32 %12, ptr %retval, align 4, !dbg !1676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1676

if.end5:                                          ; preds = %if.then1
  %13 = load ptr, ptr %conf, align 8, !dbg !1677, !tbaa !716
  %library6 = getelementptr inbounds %struct.session_crypto_conf, ptr %13, i32 0, i32 0, !dbg !1678
  %14 = load ptr, ptr %library6, align 8, !dbg !1678, !tbaa !816
  %15 = load ptr, ptr %conf, align 8, !dbg !1679, !tbaa !716
  %params = getelementptr inbounds %struct.session_crypto_conf, ptr %15, i32 0, i32 1, !dbg !1680
  %16 = load ptr, ptr %params, align 8, !dbg !1680, !tbaa !1090
  %17 = load ptr, ptr %p.addr, align 8, !dbg !1681, !tbaa !716
  %call7 = call i32 @apr_crypto_get_driver(ptr noundef %driver, ptr noundef %14, ptr noundef %16, ptr noundef %err, ptr noundef %17), !dbg !1682
  store i32 %call7, ptr %rv, align 4, !dbg !1683, !tbaa !852
  %18 = load i32, ptr %rv, align 4, !dbg !1684, !tbaa !852
  %cmp8 = icmp eq i32 100012, %18, !dbg !1685
  br i1 %cmp8, label %if.then9, label %if.end19, !dbg !1686

if.then9:                                         ; preds = %if.end5
  br label %do.body10, !dbg !1687

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 8, ptr %sr__11) #8, !dbg !1688
  tail call void @llvm.dbg.declare(metadata ptr %sr__11, metadata !1619, metadata !DIExpression()), !dbg !1688
  %19 = load ptr, ptr %s.addr, align 8, !dbg !1688, !tbaa !716
  store ptr %19, ptr %sr__11, align 8, !dbg !1688, !tbaa !716
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true12, label %cond.false13, !dbg !1689

cond.true12:                                      ; preds = %do.body10
  %20 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1689, !tbaa !852
  br label %cond.end14, !dbg !1689

cond.false13:                                     ; preds = %do.body10
  br label %cond.end14, !dbg !1689

cond.end14:                                       ; preds = %cond.false13, %cond.true12
  %cond15 = phi i32 [ %20, %cond.true12 ], [ -1, %cond.false13 ], !dbg !1689
  %21 = load i32, ptr %rv, align 4, !dbg !1689, !tbaa !852
  %22 = load ptr, ptr %sr__11, align 8, !dbg !1689, !tbaa !716
  %23 = load ptr, ptr %conf, align 8, !dbg !1689, !tbaa !716
  %library16 = getelementptr inbounds %struct.session_crypto_conf, ptr %23, i32 0, i32 0, !dbg !1689
  %24 = load ptr, ptr %library16, align 8, !dbg !1689, !tbaa !816
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_error_(ptr noundef @.str, i32 noundef 589, i32 noundef %cond15, i32 noundef 4, i32 noundef %21, ptr noundef %22, ptr noundef @.str.40, ptr noundef %24), !dbg !1689
  call void @llvm.lifetime.end.p0(i64 8, ptr %sr__11) #8, !dbg !1687
  br label %do.cond17, !dbg !1688

do.cond17:                                        ; preds = %cond.end14
  br label %do.end18, !dbg !1688

do.end18:                                         ; preds = %do.cond17
  store i32 0, ptr %rv, align 4, !dbg !1691, !tbaa !852
  br label %if.end19, !dbg !1692

if.end19:                                         ; preds = %do.end18, %if.end5
  %25 = load i32, ptr %rv, align 4, !dbg !1693, !tbaa !852
  %cmp20 = icmp ne i32 0, %25, !dbg !1694
  br i1 %cmp20, label %land.lhs.true, label %if.end32, !dbg !1695

land.lhs.true:                                    ; preds = %if.end19
  %26 = load ptr, ptr %err, align 8, !dbg !1696, !tbaa !716
  %tobool21 = icmp ne ptr %26, null, !dbg !1696
  br i1 %tobool21, label %if.then22, label %if.end32, !dbg !1697

if.then22:                                        ; preds = %land.lhs.true
  br label %do.body23, !dbg !1698

do.body23:                                        ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 8, ptr %sr__24) #8, !dbg !1699
  tail call void @llvm.dbg.declare(metadata ptr %sr__24, metadata !1623, metadata !DIExpression()), !dbg !1699
  %27 = load ptr, ptr %s.addr, align 8, !dbg !1699, !tbaa !716
  store ptr %27, ptr %sr__24, align 8, !dbg !1699, !tbaa !716
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true25, label %cond.false26, !dbg !1700

cond.true25:                                      ; preds = %do.body23
  %28 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1700, !tbaa !852
  br label %cond.end27, !dbg !1700

cond.false26:                                     ; preds = %do.body23
  br label %cond.end27, !dbg !1700

cond.end27:                                       ; preds = %cond.false26, %cond.true25
  %cond28 = phi i32 [ %28, %cond.true25 ], [ -1, %cond.false26 ], !dbg !1700
  %29 = load i32, ptr %rv, align 4, !dbg !1700, !tbaa !852
  %30 = load ptr, ptr %sr__24, align 8, !dbg !1700, !tbaa !716
  %31 = load ptr, ptr %conf, align 8, !dbg !1700, !tbaa !716
  %library29 = getelementptr inbounds %struct.session_crypto_conf, ptr %31, i32 0, i32 0, !dbg !1700
  %32 = load ptr, ptr %library29, align 8, !dbg !1700, !tbaa !816
  %33 = load ptr, ptr %err, align 8, !dbg !1700, !tbaa !716
  %msg = getelementptr inbounds %struct.apu_err_t, ptr %33, i32 0, i32 1, !dbg !1700
  %34 = load ptr, ptr %msg, align 8, !dbg !1700, !tbaa !1702
  %35 = load ptr, ptr %err, align 8, !dbg !1700, !tbaa !716
  %reason = getelementptr inbounds %struct.apu_err_t, ptr %35, i32 0, i32 0, !dbg !1700
  %36 = load ptr, ptr %reason, align 8, !dbg !1700, !tbaa !1704
  %37 = load ptr, ptr %err, align 8, !dbg !1700, !tbaa !716
  %rc = getelementptr inbounds %struct.apu_err_t, ptr %37, i32 0, i32 2, !dbg !1700
  %38 = load i32, ptr %rc, align 8, !dbg !1700, !tbaa !1705
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_error_(ptr noundef @.str, i32 noundef 595, i32 noundef %cond28, i32 noundef 3, i32 noundef %29, ptr noundef %30, ptr noundef @.str.41, ptr noundef %32, ptr noundef %34, ptr noundef %36, i32 noundef %38), !dbg !1700
  call void @llvm.lifetime.end.p0(i64 8, ptr %sr__24) #8, !dbg !1698
  br label %do.cond30, !dbg !1699

do.cond30:                                        ; preds = %cond.end27
  br label %do.end31, !dbg !1699

do.end31:                                         ; preds = %do.cond30
  %39 = load i32, ptr %rv, align 4, !dbg !1706, !tbaa !852
  store i32 %39, ptr %retval, align 4, !dbg !1707
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1707

if.end32:                                         ; preds = %land.lhs.true, %if.end19
  %40 = load i32, ptr %rv, align 4, !dbg !1708, !tbaa !852
  %cmp33 = icmp eq i32 70023, %40, !dbg !1709
  br i1 %cmp33, label %if.then34, label %if.end44, !dbg !1710

if.then34:                                        ; preds = %if.end32
  br label %do.body35, !dbg !1711

do.body35:                                        ; preds = %if.then34
  call void @llvm.lifetime.start.p0(i64 8, ptr %sr__36) #8, !dbg !1712
  tail call void @llvm.dbg.declare(metadata ptr %sr__36, metadata !1627, metadata !DIExpression()), !dbg !1712
  %41 = load ptr, ptr %s.addr, align 8, !dbg !1712, !tbaa !716
  store ptr %41, ptr %sr__36, align 8, !dbg !1712, !tbaa !716
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true37, label %cond.false38, !dbg !1713

cond.true37:                                      ; preds = %do.body35
  %42 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1713, !tbaa !852
  br label %cond.end39, !dbg !1713

cond.false38:                                     ; preds = %do.body35
  br label %cond.end39, !dbg !1713

cond.end39:                                       ; preds = %cond.false38, %cond.true37
  %cond40 = phi i32 [ %42, %cond.true37 ], [ -1, %cond.false38 ], !dbg !1713
  %43 = load i32, ptr %rv, align 4, !dbg !1713, !tbaa !852
  %44 = load ptr, ptr %sr__36, align 8, !dbg !1713, !tbaa !716
  %45 = load ptr, ptr %conf, align 8, !dbg !1713, !tbaa !716
  %library41 = getelementptr inbounds %struct.session_crypto_conf, ptr %45, i32 0, i32 0, !dbg !1713
  %46 = load ptr, ptr %library41, align 8, !dbg !1713, !tbaa !816
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_error_(ptr noundef @.str, i32 noundef 600, i32 noundef %cond40, i32 noundef 3, i32 noundef %43, ptr noundef %44, ptr noundef @.str.42, ptr noundef %46), !dbg !1713
  call void @llvm.lifetime.end.p0(i64 8, ptr %sr__36) #8, !dbg !1711
  br label %do.cond42, !dbg !1712

do.cond42:                                        ; preds = %cond.end39
  br label %do.end43, !dbg !1712

do.end43:                                         ; preds = %do.cond42
  %47 = load i32, ptr %rv, align 4, !dbg !1715, !tbaa !852
  store i32 %47, ptr %retval, align 4, !dbg !1716
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1716

if.end44:                                         ; preds = %if.end32
  %48 = load i32, ptr %rv, align 4, !dbg !1717, !tbaa !852
  %cmp45 = icmp ne i32 0, %48, !dbg !1718
  br i1 %cmp45, label %if.then47, label %lor.lhs.false, !dbg !1719

lor.lhs.false:                                    ; preds = %if.end44
  %49 = load ptr, ptr %driver, align 8, !dbg !1720, !tbaa !716
  %tobool46 = icmp ne ptr %49, null, !dbg !1720
  br i1 %tobool46, label %if.end57, label %if.then47, !dbg !1721

if.then47:                                        ; preds = %lor.lhs.false, %if.end44
  br label %do.body48, !dbg !1722

do.body48:                                        ; preds = %if.then47
  call void @llvm.lifetime.start.p0(i64 8, ptr %sr__49) #8, !dbg !1723
  tail call void @llvm.dbg.declare(metadata ptr %sr__49, metadata !1631, metadata !DIExpression()), !dbg !1723
  %50 = load ptr, ptr %s.addr, align 8, !dbg !1723, !tbaa !716
  store ptr %50, ptr %sr__49, align 8, !dbg !1723, !tbaa !716
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true50, label %cond.false51, !dbg !1724

cond.true50:                                      ; preds = %do.body48
  %51 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1724, !tbaa !852
  br label %cond.end52, !dbg !1724

cond.false51:                                     ; preds = %do.body48
  br label %cond.end52, !dbg !1724

cond.end52:                                       ; preds = %cond.false51, %cond.true50
  %cond53 = phi i32 [ %51, %cond.true50 ], [ -1, %cond.false51 ], !dbg !1724
  %52 = load i32, ptr %rv, align 4, !dbg !1724, !tbaa !852
  %53 = load ptr, ptr %sr__49, align 8, !dbg !1724, !tbaa !716
  %54 = load ptr, ptr %conf, align 8, !dbg !1724, !tbaa !716
  %library54 = getelementptr inbounds %struct.session_crypto_conf, ptr %54, i32 0, i32 0, !dbg !1724
  %55 = load ptr, ptr %library54, align 8, !dbg !1724, !tbaa !816
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_error_(ptr noundef @.str, i32 noundef 606, i32 noundef %cond53, i32 noundef 3, i32 noundef %52, ptr noundef %53, ptr noundef @.str.43, ptr noundef %55), !dbg !1724
  call void @llvm.lifetime.end.p0(i64 8, ptr %sr__49) #8, !dbg !1722
  br label %do.cond55, !dbg !1723

do.cond55:                                        ; preds = %cond.end52
  br label %do.end56, !dbg !1723

do.end56:                                         ; preds = %do.cond55
  %56 = load i32, ptr %rv, align 4, !dbg !1726, !tbaa !852
  store i32 %56, ptr %retval, align 4, !dbg !1727
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1727

if.end57:                                         ; preds = %lor.lhs.false
  %57 = load ptr, ptr %driver, align 8, !dbg !1728, !tbaa !716
  %58 = load ptr, ptr %conf, align 8, !dbg !1729, !tbaa !716
  %params58 = getelementptr inbounds %struct.session_crypto_conf, ptr %58, i32 0, i32 1, !dbg !1730
  %59 = load ptr, ptr %params58, align 8, !dbg !1730, !tbaa !1090
  %60 = load ptr, ptr %p.addr, align 8, !dbg !1731, !tbaa !716
  %call59 = call i32 @apr_crypto_make(ptr noundef %f, ptr noundef %57, ptr noundef %59, ptr noundef %60), !dbg !1732
  store i32 %call59, ptr %rv, align 4, !dbg !1733, !tbaa !852
  %61 = load i32, ptr %rv, align 4, !dbg !1734, !tbaa !852
  %cmp60 = icmp ne i32 0, %61, !dbg !1735
  br i1 %cmp60, label %if.then61, label %if.end71, !dbg !1736

if.then61:                                        ; preds = %if.end57
  br label %do.body62, !dbg !1737

do.body62:                                        ; preds = %if.then61
  call void @llvm.lifetime.start.p0(i64 8, ptr %sr__63) #8, !dbg !1738
  tail call void @llvm.dbg.declare(metadata ptr %sr__63, metadata !1635, metadata !DIExpression()), !dbg !1738
  %62 = load ptr, ptr %s.addr, align 8, !dbg !1738, !tbaa !716
  store ptr %62, ptr %sr__63, align 8, !dbg !1738, !tbaa !716
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true64, label %cond.false65, !dbg !1739

cond.true64:                                      ; preds = %do.body62
  %63 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1739, !tbaa !852
  br label %cond.end66, !dbg !1739

cond.false65:                                     ; preds = %do.body62
  br label %cond.end66, !dbg !1739

cond.end66:                                       ; preds = %cond.false65, %cond.true64
  %cond67 = phi i32 [ %63, %cond.true64 ], [ -1, %cond.false65 ], !dbg !1739
  %64 = load i32, ptr %rv, align 4, !dbg !1739, !tbaa !852
  %65 = load ptr, ptr %sr__63, align 8, !dbg !1739, !tbaa !716
  %66 = load ptr, ptr %conf, align 8, !dbg !1739, !tbaa !716
  %library68 = getelementptr inbounds %struct.session_crypto_conf, ptr %66, i32 0, i32 0, !dbg !1739
  %67 = load ptr, ptr %library68, align 8, !dbg !1739, !tbaa !816
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_error_(ptr noundef @.str, i32 noundef 614, i32 noundef %cond67, i32 noundef 3, i32 noundef %64, ptr noundef %65, ptr noundef @.str.44, ptr noundef %67), !dbg !1739
  call void @llvm.lifetime.end.p0(i64 8, ptr %sr__63) #8, !dbg !1737
  br label %do.cond69, !dbg !1738

do.cond69:                                        ; preds = %cond.end66
  br label %do.end70, !dbg !1738

do.end70:                                         ; preds = %do.cond69
  %68 = load i32, ptr %rv, align 4, !dbg !1741, !tbaa !852
  store i32 %68, ptr %retval, align 4, !dbg !1742
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1742

if.end71:                                         ; preds = %if.end57
  br label %do.body72, !dbg !1743

do.body72:                                        ; preds = %if.end71
  call void @llvm.lifetime.start.p0(i64 8, ptr %sr__73) #8, !dbg !1744
  tail call void @llvm.dbg.declare(metadata ptr %sr__73, metadata !1639, metadata !DIExpression()), !dbg !1744
  %69 = load ptr, ptr %s.addr, align 8, !dbg !1744, !tbaa !716
  store ptr %69, ptr %sr__73, align 8, !dbg !1744, !tbaa !716
  %70 = load ptr, ptr %sr__73, align 8, !dbg !1745, !tbaa !716
  %cmp74 = icmp eq ptr %70, null, !dbg !1745
  br i1 %cmp74, label %if.then110, label %lor.lhs.false75, !dbg !1745

lor.lhs.false75:                                  ; preds = %do.body72
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true76, label %cond.false77, !dbg !1745

cond.true76:                                      ; preds = %lor.lhs.false75
  %71 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1745, !tbaa !852
  br label %cond.end78, !dbg !1745

cond.false77:                                     ; preds = %lor.lhs.false75
  br label %cond.end78, !dbg !1745

cond.end78:                                       ; preds = %cond.false77, %cond.true76
  %cond79 = phi i32 [ %71, %cond.true76 ], [ -1, %cond.false77 ], !dbg !1745
  %cmp80 = icmp slt i32 %cond79, 0, !dbg !1745
  br i1 %cmp80, label %cond.true94, label %lor.lhs.false81, !dbg !1745

lor.lhs.false81:                                  ; preds = %cond.end78
  %72 = load ptr, ptr %sr__73, align 8, !dbg !1745, !tbaa !716
  %log = getelementptr inbounds %struct.server_rec, ptr %72, i32 0, i32 4, !dbg !1745
  %module_levels = getelementptr inbounds %struct.ap_logconf, ptr %log, i32 0, i32 0, !dbg !1745
  %73 = load ptr, ptr %module_levels, align 8, !dbg !1745, !tbaa !1747
  %cmp82 = icmp eq ptr %73, null, !dbg !1745
  br i1 %cmp82, label %cond.true94, label %lor.lhs.false83, !dbg !1745

lor.lhs.false83:                                  ; preds = %lor.lhs.false81
  %74 = load ptr, ptr %sr__73, align 8, !dbg !1745, !tbaa !716
  %log84 = getelementptr inbounds %struct.server_rec, ptr %74, i32 0, i32 4, !dbg !1745
  %module_levels85 = getelementptr inbounds %struct.ap_logconf, ptr %log84, i32 0, i32 0, !dbg !1745
  %75 = load ptr, ptr %module_levels85, align 8, !dbg !1745, !tbaa !1747
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true86, label %cond.false87, !dbg !1745

cond.true86:                                      ; preds = %lor.lhs.false83
  %76 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1745, !tbaa !852
  br label %cond.end88, !dbg !1745

cond.false87:                                     ; preds = %lor.lhs.false83
  br label %cond.end88, !dbg !1745

cond.end88:                                       ; preds = %cond.false87, %cond.true86
  %cond89 = phi i32 [ %76, %cond.true86 ], [ -1, %cond.false87 ], !dbg !1745
  %idxprom90 = sext i32 %cond89 to i64, !dbg !1745
  %arrayidx91 = getelementptr inbounds i8, ptr %75, i64 %idxprom90, !dbg !1745
  %77 = load i8, ptr %arrayidx91, align 1, !dbg !1745, !tbaa !1005
  %conv = sext i8 %77 to i32, !dbg !1745
  %cmp92 = icmp slt i32 %conv, 0, !dbg !1745
  br i1 %cmp92, label %cond.true94, label %cond.false96, !dbg !1745

cond.true94:                                      ; preds = %cond.end88, %lor.lhs.false81, %cond.end78
  %78 = load ptr, ptr %sr__73, align 8, !dbg !1745, !tbaa !716
  %log95 = getelementptr inbounds %struct.server_rec, ptr %78, i32 0, i32 4, !dbg !1745
  %level = getelementptr inbounds %struct.ap_logconf, ptr %log95, i32 0, i32 1, !dbg !1745
  %79 = load i32, ptr %level, align 8, !dbg !1745, !tbaa !1748
  br label %cond.end106, !dbg !1745

cond.false96:                                     ; preds = %cond.end88
  %80 = load ptr, ptr %sr__73, align 8, !dbg !1745, !tbaa !716
  %log97 = getelementptr inbounds %struct.server_rec, ptr %80, i32 0, i32 4, !dbg !1745
  %module_levels98 = getelementptr inbounds %struct.ap_logconf, ptr %log97, i32 0, i32 0, !dbg !1745
  %81 = load ptr, ptr %module_levels98, align 8, !dbg !1745, !tbaa !1747
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true99, label %cond.false100, !dbg !1745

cond.true99:                                      ; preds = %cond.false96
  %82 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1745, !tbaa !852
  br label %cond.end101, !dbg !1745

cond.false100:                                    ; preds = %cond.false96
  br label %cond.end101, !dbg !1745

cond.end101:                                      ; preds = %cond.false100, %cond.true99
  %cond102 = phi i32 [ %82, %cond.true99 ], [ -1, %cond.false100 ], !dbg !1745
  %idxprom103 = sext i32 %cond102 to i64, !dbg !1745
  %arrayidx104 = getelementptr inbounds i8, ptr %81, i64 %idxprom103, !dbg !1745
  %83 = load i8, ptr %arrayidx104, align 1, !dbg !1745, !tbaa !1005
  %conv105 = sext i8 %83 to i32, !dbg !1745
  br label %cond.end106, !dbg !1745

cond.end106:                                      ; preds = %cond.end101, %cond.true94
  %cond107 = phi i32 [ %79, %cond.true94 ], [ %conv105, %cond.end101 ], !dbg !1745
  %cmp108 = icmp sge i32 %cond107, 6, !dbg !1745
  br i1 %cmp108, label %if.then110, label %if.end116, !dbg !1744

if.then110:                                       ; preds = %cond.end106, %do.body72
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true111, label %cond.false112, !dbg !1745

cond.true111:                                     ; preds = %if.then110
  %84 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1745, !tbaa !852
  br label %cond.end113, !dbg !1745

cond.false112:                                    ; preds = %if.then110
  br label %cond.end113, !dbg !1745

cond.end113:                                      ; preds = %cond.false112, %cond.true111
  %cond114 = phi i32 [ %84, %cond.true111 ], [ -1, %cond.false112 ], !dbg !1745
  %85 = load i32, ptr %rv, align 4, !dbg !1745, !tbaa !852
  %86 = load ptr, ptr %sr__73, align 8, !dbg !1745, !tbaa !716
  %87 = load ptr, ptr %conf, align 8, !dbg !1745, !tbaa !716
  %library115 = getelementptr inbounds %struct.session_crypto_conf, ptr %87, i32 0, i32 0, !dbg !1745
  %88 = load ptr, ptr %library115, align 8, !dbg !1745, !tbaa !816
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_error_(ptr noundef @.str, i32 noundef 620, i32 noundef %cond114, i32 noundef 6, i32 noundef %85, ptr noundef %86, ptr noundef @.str.45, ptr noundef %88), !dbg !1745
  br label %if.end116, !dbg !1745

if.end116:                                        ; preds = %cond.end113, %cond.end106
  call void @llvm.lifetime.end.p0(i64 8, ptr %sr__73) #8, !dbg !1743
  br label %do.cond117, !dbg !1744

do.cond117:                                       ; preds = %if.end116
  br label %do.end118, !dbg !1744

do.end118:                                        ; preds = %do.cond117
  %89 = load ptr, ptr %f, align 8, !dbg !1749, !tbaa !716
  %90 = load ptr, ptr %s.addr, align 8, !dbg !1750, !tbaa !716
  %process = getelementptr inbounds %struct.server_rec, ptr %90, i32 0, i32 0, !dbg !1751
  %91 = load ptr, ptr %process, align 8, !dbg !1751, !tbaa !1474
  %pconf = getelementptr inbounds %struct.process_rec, ptr %91, i32 0, i32 1, !dbg !1752
  %92 = load ptr, ptr %pconf, align 8, !dbg !1752, !tbaa !1476
  %call119 = call i32 @apr_pool_userdata_set(ptr noundef %89, ptr noundef @.str.16, ptr noundef @apr_pool_cleanup_null, ptr noundef %92), !dbg !1753
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1754
  br label %cleanup, !dbg !1754

cleanup:                                          ; preds = %do.end118, %do.end70, %do.end56, %do.end43, %do.end31, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8, !dbg !1754
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #8, !dbg !1754
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup122 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end121, !dbg !1755

if.end121:                                        ; preds = %cleanup.cont, %if.end
  store i32 0, ptr %retval, align 4, !dbg !1756
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup122, !dbg !1756

cleanup122:                                       ; preds = %if.end121, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %conf) #8, !dbg !1757
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #8, !dbg !1757
  call void @llvm.lifetime.end.p0(i64 8, ptr %driver) #8, !dbg !1757
  %93 = load i32, ptr %retval, align 4, !dbg !1757
  ret i32 %93, !dbg !1757
}

declare !dbg !1758 i32 @apr_pool_userdata_get(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @encrypt_string(ptr noundef %r, ptr noundef %f, ptr noundef %dconf, ptr noundef %in, ptr noundef %out) #0 !dbg !1761 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %dconf.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %res = alloca i32, align 4
  %key = alloca ptr, align 8
  %ivSize = alloca i64, align 8
  %block = alloca ptr, align 8
  %encrypt = alloca ptr, align 8
  %combined = alloca ptr, align 8
  %encryptlen = alloca i64, align 8
  %tlen = alloca i64, align 8
  %combinedlen = alloca i64, align 8
  %base64 = alloca ptr, align 8
  %blockSize = alloca i64, align 8
  %iv = alloca ptr, align 8
  %salt = alloca %struct.apr_uuid_t, align 1
  %cipher = alloca ptr, align 8
  %passphrase = alloca ptr, align 8
  %passlen = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1765, metadata !DIExpression()), !dbg !1794
  store ptr %f, ptr %f.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !1766, metadata !DIExpression()), !dbg !1795
  store ptr %dconf, ptr %dconf.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %dconf.addr, metadata !1767, metadata !DIExpression()), !dbg !1796
  store ptr %in, ptr %in.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !1768, metadata !DIExpression()), !dbg !1797
  store ptr %out, ptr %out.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !1769, metadata !DIExpression()), !dbg !1798
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #8, !dbg !1799
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !1770, metadata !DIExpression()), !dbg !1800
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #8, !dbg !1801
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !1771, metadata !DIExpression()), !dbg !1802
  store ptr null, ptr %key, align 8, !dbg !1802, !tbaa !716
  call void @llvm.lifetime.start.p0(i64 8, ptr %ivSize) #8, !dbg !1803
  tail call void @llvm.dbg.declare(metadata ptr %ivSize, metadata !1775, metadata !DIExpression()), !dbg !1804
  store i64 0, ptr %ivSize, align 8, !dbg !1804, !tbaa !1805
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #8, !dbg !1806
  tail call void @llvm.dbg.declare(metadata ptr %block, metadata !1776, metadata !DIExpression()), !dbg !1807
  store ptr null, ptr %block, align 8, !dbg !1807, !tbaa !716
  call void @llvm.lifetime.start.p0(i64 8, ptr %encrypt) #8, !dbg !1808
  tail call void @llvm.dbg.declare(metadata ptr %encrypt, metadata !1780, metadata !DIExpression()), !dbg !1809
  store ptr null, ptr %encrypt, align 8, !dbg !1809, !tbaa !716
  call void @llvm.lifetime.start.p0(i64 8, ptr %combined) #8, !dbg !1810
  tail call void @llvm.dbg.declare(metadata ptr %combined, metadata !1781, metadata !DIExpression()), !dbg !1811
  store ptr null, ptr %combined, align 8, !dbg !1811, !tbaa !716
  call void @llvm.lifetime.start.p0(i64 8, ptr %encryptlen) #8, !dbg !1812
  tail call void @llvm.dbg.declare(metadata ptr %encryptlen, metadata !1782, metadata !DIExpression()), !dbg !1813
  call void @llvm.lifetime.start.p0(i64 8, ptr %tlen) #8, !dbg !1812
  tail call void @llvm.dbg.declare(metadata ptr %tlen, metadata !1783, metadata !DIExpression()), !dbg !1814
  call void @llvm.lifetime.start.p0(i64 8, ptr %combinedlen) #8, !dbg !1812
  tail call void @llvm.dbg.declare(metadata ptr %combinedlen, metadata !1784, metadata !DIExpression()), !dbg !1815
  call void @llvm.lifetime.start.p0(i64 8, ptr %base64) #8, !dbg !1816
  tail call void @llvm.dbg.declare(metadata ptr %base64, metadata !1785, metadata !DIExpression()), !dbg !1817
  call void @llvm.lifetime.start.p0(i64 8, ptr %blockSize) #8, !dbg !1818
  tail call void @llvm.dbg.declare(metadata ptr %blockSize, metadata !1786, metadata !DIExpression()), !dbg !1819
  store i64 0, ptr %blockSize, align 8, !dbg !1819, !tbaa !1805
  call void @llvm.lifetime.start.p0(i64 8, ptr %iv) #8, !dbg !1820
  tail call void @llvm.dbg.declare(metadata ptr %iv, metadata !1787, metadata !DIExpression()), !dbg !1821
  store ptr null, ptr %iv, align 8, !dbg !1821, !tbaa !716
  call void @llvm.lifetime.start.p0(i64 16, ptr %salt) #8, !dbg !1822
  tail call void @llvm.dbg.declare(metadata ptr %salt, metadata !1788, metadata !DIExpression()), !dbg !1823
  call void @llvm.lifetime.start.p0(i64 8, ptr %cipher) #8, !dbg !1824
  tail call void @llvm.dbg.declare(metadata ptr %cipher, metadata !1789, metadata !DIExpression()), !dbg !1825
  call void @llvm.lifetime.start.p0(i64 8, ptr %passphrase) #8, !dbg !1826
  tail call void @llvm.dbg.declare(metadata ptr %passphrase, metadata !1792, metadata !DIExpression()), !dbg !1827
  call void @llvm.lifetime.start.p0(i64 8, ptr %passlen) #8, !dbg !1828
  tail call void @llvm.dbg.declare(metadata ptr %passlen, metadata !1793, metadata !DIExpression()), !dbg !1829
  call void @apr_uuid_get(ptr noundef %salt), !dbg !1830
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1831, !tbaa !716
  %1 = load ptr, ptr %f.addr, align 8, !dbg !1832, !tbaa !716
  %2 = load ptr, ptr %dconf.addr, align 8, !dbg !1833, !tbaa !716
  %call = call i32 @crypt_init(ptr noundef %0, ptr noundef %1, ptr noundef %cipher, ptr noundef %2), !dbg !1834
  store i32 %call, ptr %res, align 4, !dbg !1835, !tbaa !852
  %3 = load i32, ptr %res, align 4, !dbg !1836, !tbaa !852
  %cmp = icmp ne i32 %3, 0, !dbg !1838
  br i1 %cmp, label %if.then, label %if.end, !dbg !1839

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %res, align 4, !dbg !1840, !tbaa !852
  store i32 %4, ptr %retval, align 4, !dbg !1842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1842

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %dconf.addr, align 8, !dbg !1843, !tbaa !716
  %passphrases = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %5, i32 0, i32 0, !dbg !1843
  %6 = load ptr, ptr %passphrases, align 8, !dbg !1843, !tbaa !730
  %elts = getelementptr inbounds %struct.apr_array_header_t, ptr %6, i32 0, i32 4, !dbg !1843
  %7 = load ptr, ptr %elts, align 8, !dbg !1843, !tbaa !1844
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 0, !dbg !1843
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !1843, !tbaa !716
  store ptr %8, ptr %passphrase, align 8, !dbg !1846, !tbaa !716
  %9 = load ptr, ptr %passphrase, align 8, !dbg !1847, !tbaa !716
  %call1 = call i64 @strlen(ptr noundef %9) #9, !dbg !1848
  store i64 %call1, ptr %passlen, align 8, !dbg !1849, !tbaa !1805
  %10 = load ptr, ptr %passphrase, align 8, !dbg !1850, !tbaa !716
  %11 = load i64, ptr %passlen, align 8, !dbg !1851, !tbaa !1805
  %12 = load ptr, ptr %cipher, align 8, !dbg !1852, !tbaa !716
  %13 = load i32, ptr %12, align 4, !dbg !1853, !tbaa !1005
  %14 = load ptr, ptr %f.addr, align 8, !dbg !1854, !tbaa !716
  %15 = load ptr, ptr %r.addr, align 8, !dbg !1855, !tbaa !716
  %pool = getelementptr inbounds %struct.request_rec, ptr %15, i32 0, i32 0, !dbg !1856
  %16 = load ptr, ptr %pool, align 8, !dbg !1856, !tbaa !1857
  %call2 = call i32 @apr_crypto_passphrase(ptr noundef %key, ptr noundef %ivSize, ptr noundef %10, i64 noundef %11, ptr noundef %salt, i64 noundef 16, i32 noundef %13, i32 noundef 2, i32 noundef 1, i32 noundef 4096, ptr noundef %14, ptr noundef %16), !dbg !1858
  store i32 %call2, ptr %res, align 4, !dbg !1859, !tbaa !852
  %17 = load i32, ptr %res, align 4, !dbg !1860, !tbaa !852
  %cmp3 = icmp eq i32 %17, 100001, !dbg !1860
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1862

if.then4:                                         ; preds = %if.end
  br label %do.body, !dbg !1863

do.body:                                          ; preds = %if.then4
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true, label %cond.false, !dbg !1865

cond.true:                                        ; preds = %do.body
  %18 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1865, !tbaa !852
  br label %cond.end, !dbg !1865

cond.false:                                       ; preds = %do.body
  br label %cond.end, !dbg !1865

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ -1, %cond.false ], !dbg !1865
  %19 = load i32, ptr %res, align 4, !dbg !1865, !tbaa !852
  %20 = load ptr, ptr %r.addr, align 8, !dbg !1865, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 295, i32 noundef %cond, i32 noundef 3, i32 noundef %19, ptr noundef %20, ptr noundef @.str.18), !dbg !1865
  br label %do.cond, !dbg !1868

do.cond:                                          ; preds = %cond.end
  br label %do.end, !dbg !1868

do.end:                                           ; preds = %do.cond
  br label %if.end5, !dbg !1869

if.end5:                                          ; preds = %do.end, %if.end
  %21 = load i32, ptr %res, align 4, !dbg !1870, !tbaa !852
  %cmp6 = icmp eq i32 %21, 100006, !dbg !1870
  br i1 %cmp6, label %if.then7, label %if.end15, !dbg !1872

if.then7:                                         ; preds = %if.end5
  br label %do.body8, !dbg !1873

do.body8:                                         ; preds = %if.then7
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true9, label %cond.false10, !dbg !1875

cond.true9:                                       ; preds = %do.body8
  %22 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1875, !tbaa !852
  br label %cond.end11, !dbg !1875

cond.false10:                                     ; preds = %do.body8
  br label %cond.end11, !dbg !1875

cond.end11:                                       ; preds = %cond.false10, %cond.true9
  %cond12 = phi i32 [ %22, %cond.true9 ], [ -1, %cond.false10 ], !dbg !1875
  %23 = load i32, ptr %res, align 4, !dbg !1875, !tbaa !852
  %24 = load ptr, ptr %r.addr, align 8, !dbg !1875, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 299, i32 noundef %cond12, i32 noundef 3, i32 noundef %23, ptr noundef %24, ptr noundef @.str.19), !dbg !1875
  br label %do.cond13, !dbg !1878

do.cond13:                                        ; preds = %cond.end11
  br label %do.end14, !dbg !1878

do.end14:                                         ; preds = %do.cond13
  br label %if.end15, !dbg !1879

if.end15:                                         ; preds = %do.end14, %if.end5
  %25 = load i32, ptr %res, align 4, !dbg !1880, !tbaa !852
  %cmp16 = icmp eq i32 %25, 100003, !dbg !1880
  br i1 %cmp16, label %if.then17, label %if.end25, !dbg !1882

if.then17:                                        ; preds = %if.end15
  br label %do.body18, !dbg !1883

do.body18:                                        ; preds = %if.then17
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true19, label %cond.false20, !dbg !1885

cond.true19:                                      ; preds = %do.body18
  %26 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1885, !tbaa !852
  br label %cond.end21, !dbg !1885

cond.false20:                                     ; preds = %do.body18
  br label %cond.end21, !dbg !1885

cond.end21:                                       ; preds = %cond.false20, %cond.true19
  %cond22 = phi i32 [ %26, %cond.true19 ], [ -1, %cond.false20 ], !dbg !1885
  %27 = load i32, ptr %res, align 4, !dbg !1885, !tbaa !852
  %28 = load ptr, ptr %r.addr, align 8, !dbg !1885, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 303, i32 noundef %cond22, i32 noundef 3, i32 noundef %27, ptr noundef %28, ptr noundef @.str.20), !dbg !1885
  br label %do.cond23, !dbg !1888

do.cond23:                                        ; preds = %cond.end21
  br label %do.end24, !dbg !1888

do.end24:                                         ; preds = %do.cond23
  br label %if.end25, !dbg !1889

if.end25:                                         ; preds = %do.end24, %if.end15
  %29 = load i32, ptr %res, align 4, !dbg !1890, !tbaa !852
  %cmp26 = icmp ne i32 0, %29, !dbg !1892
  br i1 %cmp26, label %if.then27, label %if.end35, !dbg !1893

if.then27:                                        ; preds = %if.end25
  br label %do.body28, !dbg !1894

do.body28:                                        ; preds = %if.then27
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true29, label %cond.false30, !dbg !1896

cond.true29:                                      ; preds = %do.body28
  %30 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1896, !tbaa !852
  br label %cond.end31, !dbg !1896

cond.false30:                                     ; preds = %do.body28
  br label %cond.end31, !dbg !1896

cond.end31:                                       ; preds = %cond.false30, %cond.true29
  %cond32 = phi i32 [ %30, %cond.true29 ], [ -1, %cond.false30 ], !dbg !1896
  %31 = load i32, ptr %res, align 4, !dbg !1896, !tbaa !852
  %32 = load ptr, ptr %r.addr, align 8, !dbg !1896, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 307, i32 noundef %cond32, i32 noundef 3, i32 noundef %31, ptr noundef %32, ptr noundef @.str.21), !dbg !1896
  br label %do.cond33, !dbg !1899

do.cond33:                                        ; preds = %cond.end31
  br label %do.end34, !dbg !1899

do.end34:                                         ; preds = %do.cond33
  %33 = load i32, ptr %res, align 4, !dbg !1900, !tbaa !852
  store i32 %33, ptr %retval, align 4, !dbg !1901
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1901

if.end35:                                         ; preds = %if.end25
  %34 = load ptr, ptr %key, align 8, !dbg !1902, !tbaa !716
  %35 = load ptr, ptr %r.addr, align 8, !dbg !1903, !tbaa !716
  %pool36 = getelementptr inbounds %struct.request_rec, ptr %35, i32 0, i32 0, !dbg !1904
  %36 = load ptr, ptr %pool36, align 8, !dbg !1904, !tbaa !1857
  %call37 = call i32 @apr_crypto_block_encrypt_init(ptr noundef %block, ptr noundef %iv, ptr noundef %34, ptr noundef %blockSize, ptr noundef %36), !dbg !1905
  store i32 %call37, ptr %res, align 4, !dbg !1906, !tbaa !852
  %37 = load i32, ptr %res, align 4, !dbg !1907, !tbaa !852
  %cmp38 = icmp ne i32 0, %37, !dbg !1909
  br i1 %cmp38, label %if.then39, label %if.end47, !dbg !1910

if.then39:                                        ; preds = %if.end35
  br label %do.body40, !dbg !1911

do.body40:                                        ; preds = %if.then39
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true41, label %cond.false42, !dbg !1913

cond.true41:                                      ; preds = %do.body40
  %38 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1913, !tbaa !852
  br label %cond.end43, !dbg !1913

cond.false42:                                     ; preds = %do.body40
  br label %cond.end43, !dbg !1913

cond.end43:                                       ; preds = %cond.false42, %cond.true41
  %cond44 = phi i32 [ %38, %cond.true41 ], [ -1, %cond.false42 ], !dbg !1913
  %39 = load i32, ptr %res, align 4, !dbg !1913, !tbaa !852
  %40 = load ptr, ptr %r.addr, align 8, !dbg !1913, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 314, i32 noundef %cond44, i32 noundef 3, i32 noundef %39, ptr noundef %40, ptr noundef @.str.22), !dbg !1913
  br label %do.cond45, !dbg !1916

do.cond45:                                        ; preds = %cond.end43
  br label %do.end46, !dbg !1916

do.end46:                                         ; preds = %do.cond45
  %41 = load i32, ptr %res, align 4, !dbg !1917, !tbaa !852
  store i32 %41, ptr %retval, align 4, !dbg !1918
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1918

if.end47:                                         ; preds = %if.end35
  %42 = load ptr, ptr %in.addr, align 8, !dbg !1919, !tbaa !716
  %43 = load ptr, ptr %in.addr, align 8, !dbg !1920, !tbaa !716
  %call48 = call i64 @strlen(ptr noundef %43) #9, !dbg !1921
  %44 = load ptr, ptr %block, align 8, !dbg !1922, !tbaa !716
  %call49 = call i32 @apr_crypto_block_encrypt(ptr noundef %encrypt, ptr noundef %encryptlen, ptr noundef %42, i64 noundef %call48, ptr noundef %44), !dbg !1923
  store i32 %call49, ptr %res, align 4, !dbg !1924, !tbaa !852
  %45 = load i32, ptr %res, align 4, !dbg !1925, !tbaa !852
  %cmp50 = icmp ne i32 0, %45, !dbg !1927
  br i1 %cmp50, label %if.then51, label %if.end59, !dbg !1928

if.then51:                                        ; preds = %if.end47
  br label %do.body52, !dbg !1929

do.body52:                                        ; preds = %if.then51
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true53, label %cond.false54, !dbg !1931

cond.true53:                                      ; preds = %do.body52
  %46 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1931, !tbaa !852
  br label %cond.end55, !dbg !1931

cond.false54:                                     ; preds = %do.body52
  br label %cond.end55, !dbg !1931

cond.end55:                                       ; preds = %cond.false54, %cond.true53
  %cond56 = phi i32 [ %46, %cond.true53 ], [ -1, %cond.false54 ], !dbg !1931
  %47 = load i32, ptr %res, align 4, !dbg !1931, !tbaa !852
  %48 = load ptr, ptr %r.addr, align 8, !dbg !1931, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 324, i32 noundef %cond56, i32 noundef 3, i32 noundef %47, ptr noundef %48, ptr noundef @.str.23), !dbg !1931
  br label %do.cond57, !dbg !1934

do.cond57:                                        ; preds = %cond.end55
  br label %do.end58, !dbg !1934

do.end58:                                         ; preds = %do.cond57
  %49 = load i32, ptr %res, align 4, !dbg !1935, !tbaa !852
  store i32 %49, ptr %retval, align 4, !dbg !1936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1936

if.end59:                                         ; preds = %if.end47
  %50 = load ptr, ptr %encrypt, align 8, !dbg !1937, !tbaa !716
  %51 = load i64, ptr %encryptlen, align 8, !dbg !1938, !tbaa !1805
  %add.ptr = getelementptr inbounds i8, ptr %50, i64 %51, !dbg !1939
  %52 = load ptr, ptr %block, align 8, !dbg !1940, !tbaa !716
  %call60 = call i32 @apr_crypto_block_encrypt_finish(ptr noundef %add.ptr, ptr noundef %tlen, ptr noundef %52), !dbg !1941
  store i32 %call60, ptr %res, align 4, !dbg !1942, !tbaa !852
  %53 = load i32, ptr %res, align 4, !dbg !1943, !tbaa !852
  %cmp61 = icmp ne i32 0, %53, !dbg !1945
  br i1 %cmp61, label %if.then62, label %if.end70, !dbg !1946

if.then62:                                        ; preds = %if.end59
  br label %do.body63, !dbg !1947

do.body63:                                        ; preds = %if.then62
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true64, label %cond.false65, !dbg !1949

cond.true64:                                      ; preds = %do.body63
  %54 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !1949, !tbaa !852
  br label %cond.end66, !dbg !1949

cond.false65:                                     ; preds = %do.body63
  br label %cond.end66, !dbg !1949

cond.end66:                                       ; preds = %cond.false65, %cond.true64
  %cond67 = phi i32 [ %54, %cond.true64 ], [ -1, %cond.false65 ], !dbg !1949
  %55 = load i32, ptr %res, align 4, !dbg !1949, !tbaa !852
  %56 = load ptr, ptr %r.addr, align 8, !dbg !1949, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 330, i32 noundef %cond67, i32 noundef 3, i32 noundef %55, ptr noundef %56, ptr noundef @.str.24), !dbg !1949
  br label %do.cond68, !dbg !1952

do.cond68:                                        ; preds = %cond.end66
  br label %do.end69, !dbg !1952

do.end69:                                         ; preds = %do.cond68
  %57 = load i32, ptr %res, align 4, !dbg !1953, !tbaa !852
  store i32 %57, ptr %retval, align 4, !dbg !1954
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1954

if.end70:                                         ; preds = %if.end59
  %58 = load i64, ptr %tlen, align 8, !dbg !1955, !tbaa !1805
  %59 = load i64, ptr %encryptlen, align 8, !dbg !1956, !tbaa !1805
  %add = add i64 %59, %58, !dbg !1956
  store i64 %add, ptr %encryptlen, align 8, !dbg !1956, !tbaa !1805
  %60 = load i64, ptr %ivSize, align 8, !dbg !1957, !tbaa !1805
  %add71 = add i64 24, %60, !dbg !1958
  %61 = load i64, ptr %encryptlen, align 8, !dbg !1959, !tbaa !1805
  %add72 = add i64 %add71, %61, !dbg !1960
  store i64 %add72, ptr %combinedlen, align 8, !dbg !1961, !tbaa !1805
  %62 = load ptr, ptr %r.addr, align 8, !dbg !1962, !tbaa !716
  %pool73 = getelementptr inbounds %struct.request_rec, ptr %62, i32 0, i32 0, !dbg !1963
  %63 = load ptr, ptr %pool73, align 8, !dbg !1963, !tbaa !1857
  %64 = load i64, ptr %combinedlen, align 8, !dbg !1964, !tbaa !1805
  %call74 = call ptr @apr_palloc(ptr noundef %63, i64 noundef %64), !dbg !1965
  store ptr %call74, ptr %combined, align 8, !dbg !1966, !tbaa !716
  %65 = load ptr, ptr %combined, align 8, !dbg !1967, !tbaa !716
  %add.ptr75 = getelementptr inbounds i8, ptr %65, i64 8, !dbg !1968
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr75, ptr align 1 %salt, i64 16, i1 false), !dbg !1969
  %66 = load ptr, ptr %combined, align 8, !dbg !1970, !tbaa !716
  %add.ptr76 = getelementptr inbounds i8, ptr %66, i64 8, !dbg !1971
  %add.ptr77 = getelementptr inbounds i8, ptr %add.ptr76, i64 16, !dbg !1972
  %67 = load ptr, ptr %iv, align 8, !dbg !1973, !tbaa !716
  %68 = load i64, ptr %ivSize, align 8, !dbg !1974, !tbaa !1805
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr77, ptr align 1 %67, i64 %68, i1 false), !dbg !1975
  %69 = load ptr, ptr %combined, align 8, !dbg !1976, !tbaa !716
  %add.ptr78 = getelementptr inbounds i8, ptr %69, i64 8, !dbg !1977
  %add.ptr79 = getelementptr inbounds i8, ptr %add.ptr78, i64 16, !dbg !1978
  %70 = load i64, ptr %ivSize, align 8, !dbg !1979, !tbaa !1805
  %add.ptr80 = getelementptr inbounds i8, ptr %add.ptr79, i64 %70, !dbg !1980
  %71 = load ptr, ptr %encrypt, align 8, !dbg !1981, !tbaa !716
  %72 = load i64, ptr %encryptlen, align 8, !dbg !1982, !tbaa !1805
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr80, ptr align 1 %71, i64 %72, i1 false), !dbg !1983
  %73 = load ptr, ptr %combined, align 8, !dbg !1984, !tbaa !716
  %add.ptr81 = getelementptr inbounds i8, ptr %73, i64 8, !dbg !1985
  %74 = load i64, ptr %combinedlen, align 8, !dbg !1986, !tbaa !1805
  %sub = sub i64 %74, 8, !dbg !1987
  %75 = load ptr, ptr %passphrase, align 8, !dbg !1988, !tbaa !716
  %76 = load i64, ptr %passlen, align 8, !dbg !1989, !tbaa !1805
  %77 = load ptr, ptr %combined, align 8, !dbg !1990, !tbaa !716
  call void @compute_auth(ptr noundef %add.ptr81, i64 noundef %sub, ptr noundef %75, i64 noundef %76, ptr noundef %77), !dbg !1991
  %78 = load ptr, ptr %r.addr, align 8, !dbg !1992, !tbaa !716
  %pool82 = getelementptr inbounds %struct.request_rec, ptr %78, i32 0, i32 0, !dbg !1993
  %79 = load ptr, ptr %pool82, align 8, !dbg !1993, !tbaa !1857
  %80 = load i64, ptr %combinedlen, align 8, !dbg !1994, !tbaa !1805
  %conv = trunc i64 %80 to i32, !dbg !1994
  %call83 = call i32 @apr_base64_encode_len(i32 noundef %conv), !dbg !1995
  %conv84 = sext i32 %call83 to i64, !dbg !1995
  %call85 = call ptr @apr_palloc(ptr noundef %79, i64 noundef %conv84), !dbg !1996
  store ptr %call85, ptr %base64, align 8, !dbg !1997, !tbaa !716
  %81 = load ptr, ptr %base64, align 8, !dbg !1998, !tbaa !716
  %82 = load ptr, ptr %combined, align 8, !dbg !1999, !tbaa !716
  %83 = load i64, ptr %combinedlen, align 8, !dbg !2000, !tbaa !1805
  %conv86 = trunc i64 %83 to i32, !dbg !2000
  %call87 = call i32 @apr_base64_encode(ptr noundef %81, ptr noundef %82, i32 noundef %conv86), !dbg !2001
  %84 = load ptr, ptr %base64, align 8, !dbg !2002, !tbaa !716
  %85 = load ptr, ptr %out.addr, align 8, !dbg !2003, !tbaa !716
  store ptr %84, ptr %85, align 8, !dbg !2004, !tbaa !716
  %86 = load i32, ptr %res, align 4, !dbg !2005, !tbaa !852
  store i32 %86, ptr %retval, align 4, !dbg !2006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2006

cleanup:                                          ; preds = %if.end70, %do.end69, %do.end58, %do.end46, %do.end34, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %passlen) #8, !dbg !2007
  call void @llvm.lifetime.end.p0(i64 8, ptr %passphrase) #8, !dbg !2007
  call void @llvm.lifetime.end.p0(i64 8, ptr %cipher) #8, !dbg !2007
  call void @llvm.lifetime.end.p0(i64 16, ptr %salt) #8, !dbg !2007
  call void @llvm.lifetime.end.p0(i64 8, ptr %iv) #8, !dbg !2007
  call void @llvm.lifetime.end.p0(i64 8, ptr %blockSize) #8, !dbg !2007
  call void @llvm.lifetime.end.p0(i64 8, ptr %base64) #8, !dbg !2007
  call void @llvm.lifetime.end.p0(i64 8, ptr %combinedlen) #8, !dbg !2007
  call void @llvm.lifetime.end.p0(i64 8, ptr %tlen) #8, !dbg !2007
  call void @llvm.lifetime.end.p0(i64 8, ptr %encryptlen) #8, !dbg !2007
  call void @llvm.lifetime.end.p0(i64 8, ptr %combined) #8, !dbg !2007
  call void @llvm.lifetime.end.p0(i64 8, ptr %encrypt) #8, !dbg !2007
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #8, !dbg !2007
  call void @llvm.lifetime.end.p0(i64 8, ptr %ivSize) #8, !dbg !2007
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #8, !dbg !2007
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #8, !dbg !2007
  %87 = load i32, ptr %retval, align 4, !dbg !2007
  ret i32 %87, !dbg !2007
}

declare !dbg !2008 void @ap_log_rerror_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !2013 void @apr_uuid_get(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @crypt_init(ptr noundef %r, ptr noundef %f, ptr noundef %cipher, ptr noundef %dconf) #0 !dbg !2016 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %cipher.addr = alloca ptr, align 8
  %dconf.addr = alloca ptr, align 8
  %res = alloca i32, align 4
  %ciphers = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %hi = alloca ptr, align 8
  %key = alloca ptr, align 8
  %klen = alloca i64, align 8
  %sum = alloca i32, align 4
  %offset = alloca i32, align 4
  %options = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2021, metadata !DIExpression()), !dbg !2045
  store ptr %f, ptr %f.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !2022, metadata !DIExpression()), !dbg !2046
  store ptr %cipher, ptr %cipher.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %cipher.addr, metadata !2023, metadata !DIExpression()), !dbg !2047
  store ptr %dconf, ptr %dconf.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %dconf.addr, metadata !2024, metadata !DIExpression()), !dbg !2048
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #8, !dbg !2049
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !2025, metadata !DIExpression()), !dbg !2050
  call void @llvm.lifetime.start.p0(i64 8, ptr %ciphers) #8, !dbg !2051
  tail call void @llvm.dbg.declare(metadata ptr %ciphers, metadata !2026, metadata !DIExpression()), !dbg !2052
  %0 = load ptr, ptr %f.addr, align 8, !dbg !2053, !tbaa !716
  %call = call i32 @apr_crypto_get_block_key_types(ptr noundef %ciphers, ptr noundef %0), !dbg !2054
  store i32 %call, ptr %res, align 4, !dbg !2055, !tbaa !852
  %1 = load i32, ptr %res, align 4, !dbg !2056, !tbaa !852
  %cmp = icmp ne i32 0, %1, !dbg !2058
  br i1 %cmp, label %if.then, label %if.end, !dbg !2059

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2060

do.body:                                          ; preds = %if.then
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true, label %cond.false, !dbg !2062

cond.true:                                        ; preds = %do.body
  %2 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2062, !tbaa !852
  br label %cond.end, !dbg !2062

cond.false:                                       ; preds = %do.body
  br label %cond.end, !dbg !2062

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ -1, %cond.false ], !dbg !2062
  %3 = load i32, ptr %res, align 4, !dbg !2062, !tbaa !852
  %4 = load ptr, ptr %r.addr, align 8, !dbg !2062, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 215, i32 noundef %cond, i32 noundef 3, i32 noundef %3, ptr noundef %4, ptr noundef @.str.25), !dbg !2062
  br label %do.cond, !dbg !2065

do.cond:                                          ; preds = %cond.end
  br label %do.end, !dbg !2065

do.end:                                           ; preds = %do.cond
  %5 = load i32, ptr %res, align 4, !dbg !2066, !tbaa !852
  store i32 %5, ptr %retval, align 4, !dbg !2067
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2067

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %ciphers, align 8, !dbg !2068, !tbaa !716
  %7 = load ptr, ptr %dconf.addr, align 8, !dbg !2069, !tbaa !716
  %cipher1 = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %7, i32 0, i32 2, !dbg !2070
  %8 = load ptr, ptr %cipher1, align 8, !dbg !2070, !tbaa !736
  %call2 = call ptr @apr_hash_get(ptr noundef %6, ptr noundef %8, i64 noundef -1), !dbg !2071
  %9 = load ptr, ptr %cipher.addr, align 8, !dbg !2072, !tbaa !716
  store ptr %call2, ptr %9, align 8, !dbg !2073, !tbaa !716
  %10 = load ptr, ptr %cipher.addr, align 8, !dbg !2074, !tbaa !716
  %11 = load ptr, ptr %10, align 8, !dbg !2075, !tbaa !716
  %tobool = icmp ne ptr %11, null, !dbg !2076
  br i1 %tobool, label %if.end41, label %if.then3, !dbg !2077

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %hi) #8, !dbg !2078
  tail call void @llvm.dbg.declare(metadata ptr %hi, metadata !2031, metadata !DIExpression()), !dbg !2079
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #8, !dbg !2080
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !2037, metadata !DIExpression()), !dbg !2081
  call void @llvm.lifetime.start.p0(i64 8, ptr %klen) #8, !dbg !2082
  tail call void @llvm.dbg.declare(metadata ptr %klen, metadata !2038, metadata !DIExpression()), !dbg !2083
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #8, !dbg !2084
  tail call void @llvm.dbg.declare(metadata ptr %sum, metadata !2042, metadata !DIExpression()), !dbg !2085
  store i32 0, ptr %sum, align 4, !dbg !2085, !tbaa !852
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #8, !dbg !2086
  tail call void @llvm.dbg.declare(metadata ptr %offset, metadata !2043, metadata !DIExpression()), !dbg !2087
  store i32 0, ptr %offset, align 4, !dbg !2087, !tbaa !852
  call void @llvm.lifetime.start.p0(i64 8, ptr %options) #8, !dbg !2088
  tail call void @llvm.dbg.declare(metadata ptr %options, metadata !2044, metadata !DIExpression()), !dbg !2089
  store ptr null, ptr %options, align 8, !dbg !2089, !tbaa !716
  %12 = load ptr, ptr %r.addr, align 8, !dbg !2090, !tbaa !716
  %pool = getelementptr inbounds %struct.request_rec, ptr %12, i32 0, i32 0, !dbg !2092
  %13 = load ptr, ptr %pool, align 8, !dbg !2092, !tbaa !1857
  %14 = load ptr, ptr %ciphers, align 8, !dbg !2093, !tbaa !716
  %call4 = call ptr @apr_hash_first(ptr noundef %13, ptr noundef %14), !dbg !2094
  store ptr %call4, ptr %hi, align 8, !dbg !2095, !tbaa !716
  br label %for.cond, !dbg !2096

for.cond:                                         ; preds = %for.inc, %if.then3
  %15 = load ptr, ptr %hi, align 8, !dbg !2097, !tbaa !716
  %tobool5 = icmp ne ptr %15, null, !dbg !2099
  br i1 %tobool5, label %for.body, label %for.end, !dbg !2099

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %hi, align 8, !dbg !2100, !tbaa !716
  call void @apr_hash_this(ptr noundef %16, ptr noundef null, ptr noundef %klen, ptr noundef null), !dbg !2102
  %17 = load i64, ptr %klen, align 8, !dbg !2103, !tbaa !1805
  %add = add nsw i64 %17, 2, !dbg !2104
  %18 = load i32, ptr %sum, align 4, !dbg !2105, !tbaa !852
  %conv = sext i32 %18 to i64, !dbg !2105
  %add6 = add nsw i64 %conv, %add, !dbg !2105
  %conv7 = trunc i64 %add6 to i32, !dbg !2105
  store i32 %conv7, ptr %sum, align 4, !dbg !2105, !tbaa !852
  br label %for.inc, !dbg !2106

for.inc:                                          ; preds = %for.body
  %19 = load ptr, ptr %hi, align 8, !dbg !2107, !tbaa !716
  %call8 = call ptr @apr_hash_next(ptr noundef %19), !dbg !2108
  store ptr %call8, ptr %hi, align 8, !dbg !2109, !tbaa !716
  br label %for.cond, !dbg !2110, !llvm.loop !2111

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %r.addr, align 8, !dbg !2113, !tbaa !716
  %pool9 = getelementptr inbounds %struct.request_rec, ptr %20, i32 0, i32 0, !dbg !2115
  %21 = load ptr, ptr %pool9, align 8, !dbg !2115, !tbaa !1857
  %22 = load ptr, ptr %ciphers, align 8, !dbg !2116, !tbaa !716
  %call10 = call ptr @apr_hash_first(ptr noundef %21, ptr noundef %22), !dbg !2117
  store ptr %call10, ptr %hi, align 8, !dbg !2118, !tbaa !716
  br label %for.cond11, !dbg !2119

for.cond11:                                       ; preds = %for.inc28, %for.end
  %23 = load ptr, ptr %hi, align 8, !dbg !2120, !tbaa !716
  %tobool12 = icmp ne ptr %23, null, !dbg !2122
  br i1 %tobool12, label %for.body13, label %for.end30, !dbg !2122

for.body13:                                       ; preds = %for.cond11
  %24 = load ptr, ptr %hi, align 8, !dbg !2123, !tbaa !716
  call void @apr_hash_this(ptr noundef %24, ptr noundef %key, ptr noundef %klen, ptr noundef null), !dbg !2125
  %25 = load ptr, ptr %options, align 8, !dbg !2126, !tbaa !716
  %tobool14 = icmp ne ptr %25, null, !dbg !2126
  br i1 %tobool14, label %if.else, label %if.then15, !dbg !2128

if.then15:                                        ; preds = %for.body13
  %26 = load ptr, ptr %r.addr, align 8, !dbg !2129, !tbaa !716
  %pool16 = getelementptr inbounds %struct.request_rec, ptr %26, i32 0, i32 0, !dbg !2131
  %27 = load ptr, ptr %pool16, align 8, !dbg !2131, !tbaa !1857
  %28 = load i32, ptr %sum, align 4, !dbg !2132, !tbaa !852
  %add17 = add nsw i32 %28, 1, !dbg !2133
  %conv18 = sext i32 %add17 to i64, !dbg !2132
  %call19 = call ptr @apr_palloc(ptr noundef %27, i64 noundef %conv18), !dbg !2134
  store ptr %call19, ptr %options, align 8, !dbg !2135, !tbaa !716
  br label %if.end23, !dbg !2136

if.else:                                          ; preds = %for.body13
  %29 = load ptr, ptr %options, align 8, !dbg !2137, !tbaa !716
  %30 = load i32, ptr %offset, align 4, !dbg !2139, !tbaa !852
  %inc = add nsw i32 %30, 1, !dbg !2139
  store i32 %inc, ptr %offset, align 4, !dbg !2139, !tbaa !852
  %idxprom = sext i32 %30 to i64, !dbg !2137
  %arrayidx = getelementptr inbounds i8, ptr %29, i64 %idxprom, !dbg !2137
  store i8 44, ptr %arrayidx, align 1, !dbg !2140, !tbaa !1005
  %31 = load ptr, ptr %options, align 8, !dbg !2141, !tbaa !716
  %32 = load i32, ptr %offset, align 4, !dbg !2142, !tbaa !852
  %inc20 = add nsw i32 %32, 1, !dbg !2142
  store i32 %inc20, ptr %offset, align 4, !dbg !2142, !tbaa !852
  %idxprom21 = sext i32 %32 to i64, !dbg !2141
  %arrayidx22 = getelementptr inbounds i8, ptr %31, i64 %idxprom21, !dbg !2141
  store i8 32, ptr %arrayidx22, align 1, !dbg !2143, !tbaa !1005
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then15
  %33 = load ptr, ptr %options, align 8, !dbg !2144, !tbaa !716
  %34 = load i32, ptr %offset, align 4, !dbg !2145, !tbaa !852
  %idx.ext = sext i32 %34 to i64, !dbg !2146
  %add.ptr = getelementptr inbounds i8, ptr %33, i64 %idx.ext, !dbg !2146
  %35 = load ptr, ptr %key, align 8, !dbg !2147, !tbaa !716
  %36 = load i64, ptr %klen, align 8, !dbg !2148, !tbaa !1805
  %call24 = call ptr @strncpy(ptr noundef %add.ptr, ptr noundef %35, i64 noundef %36) #8, !dbg !2149
  %37 = load i64, ptr %klen, align 8, !dbg !2150, !tbaa !1805
  %38 = load i32, ptr %offset, align 4, !dbg !2151, !tbaa !852
  %conv25 = sext i32 %38 to i64, !dbg !2151
  %add26 = add nsw i64 %conv25, %37, !dbg !2151
  %conv27 = trunc i64 %add26 to i32, !dbg !2151
  store i32 %conv27, ptr %offset, align 4, !dbg !2151, !tbaa !852
  br label %for.inc28, !dbg !2152

for.inc28:                                        ; preds = %if.end23
  %39 = load ptr, ptr %hi, align 8, !dbg !2153, !tbaa !716
  %call29 = call ptr @apr_hash_next(ptr noundef %39), !dbg !2154
  store ptr %call29, ptr %hi, align 8, !dbg !2155, !tbaa !716
  br label %for.cond11, !dbg !2156, !llvm.loop !2157

for.end30:                                        ; preds = %for.cond11
  %40 = load ptr, ptr %options, align 8, !dbg !2159, !tbaa !716
  %41 = load i32, ptr %offset, align 4, !dbg !2160, !tbaa !852
  %idxprom31 = sext i32 %41 to i64, !dbg !2159
  %arrayidx32 = getelementptr inbounds i8, ptr %40, i64 %idxprom31, !dbg !2159
  store i8 0, ptr %arrayidx32, align 1, !dbg !2161, !tbaa !1005
  br label %do.body33, !dbg !2162

do.body33:                                        ; preds = %for.end30
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true34, label %cond.false35, !dbg !2163

cond.true34:                                      ; preds = %do.body33
  %42 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2163, !tbaa !852
  br label %cond.end36, !dbg !2163

cond.false35:                                     ; preds = %do.body33
  br label %cond.end36, !dbg !2163

cond.end36:                                       ; preds = %cond.false35, %cond.true34
  %cond37 = phi i32 [ %42, %cond.true34 ], [ -1, %cond.false35 ], !dbg !2163
  %43 = load i32, ptr %res, align 4, !dbg !2163, !tbaa !852
  %44 = load ptr, ptr %r.addr, align 8, !dbg !2163, !tbaa !716
  %45 = load ptr, ptr %dconf.addr, align 8, !dbg !2163, !tbaa !716
  %cipher38 = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %45, i32 0, i32 2, !dbg !2163
  %46 = load ptr, ptr %cipher38, align 8, !dbg !2163, !tbaa !736
  %47 = load ptr, ptr %options, align 8, !dbg !2163, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 248, i32 noundef %cond37, i32 noundef 3, i32 noundef %43, ptr noundef %44, ptr noundef @.str.26, ptr noundef %46, ptr noundef %47), !dbg !2163
  br label %do.cond39, !dbg !2166

do.cond39:                                        ; preds = %cond.end36
  br label %do.end40, !dbg !2166

do.end40:                                         ; preds = %do.cond39
  store i32 20014, ptr %retval, align 4, !dbg !2167
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %options) #8, !dbg !2168
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #8, !dbg !2168
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #8, !dbg !2168
  call void @llvm.lifetime.end.p0(i64 8, ptr %klen) #8, !dbg !2168
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #8, !dbg !2168
  call void @llvm.lifetime.end.p0(i64 8, ptr %hi) #8, !dbg !2168
  br label %cleanup

if.end41:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !2169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2169

cleanup:                                          ; preds = %if.end41, %do.end40, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %ciphers) #8, !dbg !2170
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #8, !dbg !2170
  %48 = load i32, ptr %retval, align 4, !dbg !2170
  ret i32 %48, !dbg !2170
}

declare !dbg !2171 i32 @apr_crypto_passphrase(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare !dbg !2179 i32 @apr_crypto_block_encrypt_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2186 i32 @apr_crypto_block_encrypt(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare !dbg !2190 i32 @apr_crypto_block_encrypt_finish(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal void @compute_auth(ptr noundef %src, i64 noundef %len, ptr noundef %passphrase, i64 noundef %passlen, ptr noundef %auth) #0 !dbg !2193 {
entry:
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %passphrase.addr = alloca ptr, align 8
  %passlen.addr = alloca i64, align 8
  %auth.addr = alloca ptr, align 8
  %key = alloca [16 x i8], align 16
  store ptr %src, ptr %src.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !2197, metadata !DIExpression()), !dbg !2203
  store i64 %len, ptr %len.addr, align 8, !tbaa !1805
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2198, metadata !DIExpression()), !dbg !2204
  store ptr %passphrase, ptr %passphrase.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %passphrase.addr, metadata !2199, metadata !DIExpression()), !dbg !2205
  store i64 %passlen, ptr %passlen.addr, align 8, !tbaa !1805
  tail call void @llvm.dbg.declare(metadata ptr %passlen.addr, metadata !2200, metadata !DIExpression()), !dbg !2206
  store ptr %auth, ptr %auth.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %auth.addr, metadata !2201, metadata !DIExpression()), !dbg !2207
  call void @llvm.lifetime.start.p0(i64 16, ptr %key) #8, !dbg !2208
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !2202, metadata !DIExpression()), !dbg !2209
  %arraydecay = getelementptr inbounds [16 x i8], ptr %key, i64 0, i64 0, !dbg !2210
  %0 = load ptr, ptr %passphrase.addr, align 8, !dbg !2211, !tbaa !716
  %1 = load i64, ptr %passlen.addr, align 8, !dbg !2212, !tbaa !1805
  %call = call i32 @apr_md5(ptr noundef %arraydecay, ptr noundef %0, i64 noundef %1), !dbg !2213
  %2 = load ptr, ptr %auth.addr, align 8, !dbg !2214, !tbaa !716
  %3 = load ptr, ptr %src.addr, align 8, !dbg !2215, !tbaa !716
  %4 = load i64, ptr %len.addr, align 8, !dbg !2216, !tbaa !1805
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %key, i64 0, i64 0, !dbg !2217
  call void @apr_siphash24_auth(ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %arraydecay1), !dbg !2218
  call void @llvm.lifetime.end.p0(i64 16, ptr %key) #8, !dbg !2219
  ret void, !dbg !2219
}

declare !dbg !2220 i32 @apr_base64_encode_len(i32 noundef) #2

declare !dbg !2224 i32 @apr_base64_encode(ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !2227 i32 @apr_crypto_get_block_key_types(ptr noundef, ptr noundef) #2

declare !dbg !2231 ptr @apr_hash_get(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !2234 ptr @apr_hash_first(ptr noundef, ptr noundef) #2

declare !dbg !2237 void @apr_hash_this(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2242 ptr @apr_hash_next(ptr noundef) #2

; Function Attrs: nounwind
declare !dbg !2245 ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #6

declare !dbg !2250 i32 @apr_md5(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !2254 void @apr_siphash24_auth(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @decrypt_string(ptr noundef %r, ptr noundef %f, ptr noundef %dconf, ptr noundef %in, ptr noundef %out) #0 !dbg !2258 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %dconf.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %res = alloca i32, align 4
  %key = alloca ptr, align 8
  %ivSize = alloca i64, align 8
  %block = alloca ptr, align 8
  %decrypted = alloca ptr, align 8
  %decryptedlen = alloca i64, align 8
  %tlen = alloca i64, align 8
  %decodedlen = alloca i64, align 8
  %decoded = alloca ptr, align 8
  %blockSize = alloca i64, align 8
  %cipher = alloca ptr, align 8
  %auth = alloca [8 x i8], align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %passphrase = alloca ptr, align 8
  %passlen = alloca i64, align 8
  %len = alloca i64, align 8
  %slider = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2260, metadata !DIExpression()), !dbg !2285
  store ptr %f, ptr %f.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !2261, metadata !DIExpression()), !dbg !2286
  store ptr %dconf, ptr %dconf.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %dconf.addr, metadata !2262, metadata !DIExpression()), !dbg !2287
  store ptr %in, ptr %in.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !2263, metadata !DIExpression()), !dbg !2288
  store ptr %out, ptr %out.addr, align 8, !tbaa !716
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !2264, metadata !DIExpression()), !dbg !2289
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #8, !dbg !2290
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !2265, metadata !DIExpression()), !dbg !2291
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #8, !dbg !2292
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !2266, metadata !DIExpression()), !dbg !2293
  store ptr null, ptr %key, align 8, !dbg !2293, !tbaa !716
  call void @llvm.lifetime.start.p0(i64 8, ptr %ivSize) #8, !dbg !2294
  tail call void @llvm.dbg.declare(metadata ptr %ivSize, metadata !2267, metadata !DIExpression()), !dbg !2295
  store i64 0, ptr %ivSize, align 8, !dbg !2295, !tbaa !1805
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #8, !dbg !2296
  tail call void @llvm.dbg.declare(metadata ptr %block, metadata !2268, metadata !DIExpression()), !dbg !2297
  store ptr null, ptr %block, align 8, !dbg !2297, !tbaa !716
  call void @llvm.lifetime.start.p0(i64 8, ptr %decrypted) #8, !dbg !2298
  tail call void @llvm.dbg.declare(metadata ptr %decrypted, metadata !2269, metadata !DIExpression()), !dbg !2299
  store ptr null, ptr %decrypted, align 8, !dbg !2299, !tbaa !716
  call void @llvm.lifetime.start.p0(i64 8, ptr %decryptedlen) #8, !dbg !2300
  tail call void @llvm.dbg.declare(metadata ptr %decryptedlen, metadata !2270, metadata !DIExpression()), !dbg !2301
  call void @llvm.lifetime.start.p0(i64 8, ptr %tlen) #8, !dbg !2300
  tail call void @llvm.dbg.declare(metadata ptr %tlen, metadata !2271, metadata !DIExpression()), !dbg !2302
  call void @llvm.lifetime.start.p0(i64 8, ptr %decodedlen) #8, !dbg !2303
  tail call void @llvm.dbg.declare(metadata ptr %decodedlen, metadata !2272, metadata !DIExpression()), !dbg !2304
  call void @llvm.lifetime.start.p0(i64 8, ptr %decoded) #8, !dbg !2305
  tail call void @llvm.dbg.declare(metadata ptr %decoded, metadata !2273, metadata !DIExpression()), !dbg !2306
  call void @llvm.lifetime.start.p0(i64 8, ptr %blockSize) #8, !dbg !2307
  tail call void @llvm.dbg.declare(metadata ptr %blockSize, metadata !2274, metadata !DIExpression()), !dbg !2308
  store i64 0, ptr %blockSize, align 8, !dbg !2308, !tbaa !1805
  call void @llvm.lifetime.start.p0(i64 8, ptr %cipher) #8, !dbg !2309
  tail call void @llvm.dbg.declare(metadata ptr %cipher, metadata !2275, metadata !DIExpression()), !dbg !2310
  call void @llvm.lifetime.start.p0(i64 8, ptr %auth) #8, !dbg !2311
  tail call void @llvm.dbg.declare(metadata ptr %auth, metadata !2276, metadata !DIExpression()), !dbg !2312
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !2313
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !2277, metadata !DIExpression()), !dbg !2314
  store i32 0, ptr %i, align 4, !dbg !2314, !tbaa !852
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2315, !tbaa !716
  %pool = getelementptr inbounds %struct.request_rec, ptr %0, i32 0, i32 0, !dbg !2316
  %1 = load ptr, ptr %pool, align 8, !dbg !2316, !tbaa !1857
  %2 = load ptr, ptr %in.addr, align 8, !dbg !2317, !tbaa !716
  %call = call i32 @apr_base64_decode_len(ptr noundef %2), !dbg !2318
  %conv = sext i32 %call to i64, !dbg !2318
  %call1 = call ptr @apr_palloc(ptr noundef %1, i64 noundef %conv), !dbg !2319
  store ptr %call1, ptr %decoded, align 8, !dbg !2320, !tbaa !716
  %3 = load ptr, ptr %decoded, align 8, !dbg !2321, !tbaa !716
  %4 = load ptr, ptr %in.addr, align 8, !dbg !2322, !tbaa !716
  %call2 = call i32 @apr_base64_decode(ptr noundef %3, ptr noundef %4), !dbg !2323
  %conv3 = sext i32 %call2 to i64, !dbg !2323
  store i64 %conv3, ptr %decodedlen, align 8, !dbg !2324, !tbaa !1805
  %5 = load ptr, ptr %decoded, align 8, !dbg !2325, !tbaa !716
  %6 = load i64, ptr %decodedlen, align 8, !dbg !2326, !tbaa !1805
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %6, !dbg !2325
  store i8 0, ptr %arrayidx, align 1, !dbg !2327, !tbaa !1005
  %7 = load i64, ptr %decodedlen, align 8, !dbg !2328, !tbaa !1805
  %cmp = icmp ult i64 %7, 24, !dbg !2330
  br i1 %cmp, label %if.then, label %if.end106, !dbg !2331

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2332

do.body:                                          ; preds = %if.then
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true, label %cond.false, !dbg !2334

cond.true:                                        ; preds = %do.body
  %8 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2334, !tbaa !852
  br label %cond.end, !dbg !2334

cond.false:                                       ; preds = %do.body
  br label %cond.end, !dbg !2334

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ -1, %cond.false ], !dbg !2334
  %cmp5 = icmp slt i32 %cond, 0, !dbg !2334
  br i1 %cmp5, label %cond.true51, label %lor.lhs.false, !dbg !2334

lor.lhs.false:                                    ; preds = %cond.end
  %9 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %log = getelementptr inbounds %struct.request_rec, ptr %9, i32 0, i32 56, !dbg !2334
  %10 = load ptr, ptr %log, align 8, !dbg !2334, !tbaa !1495
  %tobool = icmp ne ptr %10, null, !dbg !2334
  br i1 %tobool, label %cond.true7, label %cond.false9, !dbg !2334

cond.true7:                                       ; preds = %lor.lhs.false
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %log8 = getelementptr inbounds %struct.request_rec, ptr %11, i32 0, i32 56, !dbg !2334
  %12 = load ptr, ptr %log8, align 8, !dbg !2334, !tbaa !1495
  br label %cond.end19, !dbg !2334

cond.false9:                                      ; preds = %lor.lhs.false
  %13 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %connection = getelementptr inbounds %struct.request_rec, ptr %13, i32 0, i32 1, !dbg !2334
  %14 = load ptr, ptr %connection, align 8, !dbg !2334, !tbaa !1496
  %log10 = getelementptr inbounds %struct.conn_rec, ptr %14, i32 0, i32 24, !dbg !2334
  %15 = load ptr, ptr %log10, align 8, !dbg !2334, !tbaa !1497
  %tobool11 = icmp ne ptr %15, null, !dbg !2334
  br i1 %tobool11, label %cond.true12, label %cond.false15, !dbg !2334

cond.true12:                                      ; preds = %cond.false9
  %16 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %connection13 = getelementptr inbounds %struct.request_rec, ptr %16, i32 0, i32 1, !dbg !2334
  %17 = load ptr, ptr %connection13, align 8, !dbg !2334, !tbaa !1496
  %log14 = getelementptr inbounds %struct.conn_rec, ptr %17, i32 0, i32 24, !dbg !2334
  %18 = load ptr, ptr %log14, align 8, !dbg !2334, !tbaa !1497
  br label %cond.end17, !dbg !2334

cond.false15:                                     ; preds = %cond.false9
  %19 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %server = getelementptr inbounds %struct.request_rec, ptr %19, i32 0, i32 2, !dbg !2334
  %20 = load ptr, ptr %server, align 8, !dbg !2334, !tbaa !1472
  %log16 = getelementptr inbounds %struct.server_rec, ptr %20, i32 0, i32 4, !dbg !2334
  br label %cond.end17, !dbg !2334

cond.end17:                                       ; preds = %cond.false15, %cond.true12
  %cond18 = phi ptr [ %18, %cond.true12 ], [ %log16, %cond.false15 ], !dbg !2334
  br label %cond.end19, !dbg !2334

cond.end19:                                       ; preds = %cond.end17, %cond.true7
  %cond20 = phi ptr [ %12, %cond.true7 ], [ %cond18, %cond.end17 ], !dbg !2334
  %module_levels = getelementptr inbounds %struct.ap_logconf, ptr %cond20, i32 0, i32 0, !dbg !2334
  %21 = load ptr, ptr %module_levels, align 8, !dbg !2334, !tbaa !1499
  %cmp21 = icmp eq ptr %21, null, !dbg !2334
  br i1 %cmp21, label %cond.true51, label %lor.lhs.false23, !dbg !2334

lor.lhs.false23:                                  ; preds = %cond.end19
  %22 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %log24 = getelementptr inbounds %struct.request_rec, ptr %22, i32 0, i32 56, !dbg !2334
  %23 = load ptr, ptr %log24, align 8, !dbg !2334, !tbaa !1495
  %tobool25 = icmp ne ptr %23, null, !dbg !2334
  br i1 %tobool25, label %cond.true26, label %cond.false28, !dbg !2334

cond.true26:                                      ; preds = %lor.lhs.false23
  %24 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %log27 = getelementptr inbounds %struct.request_rec, ptr %24, i32 0, i32 56, !dbg !2334
  %25 = load ptr, ptr %log27, align 8, !dbg !2334, !tbaa !1495
  br label %cond.end40, !dbg !2334

cond.false28:                                     ; preds = %lor.lhs.false23
  %26 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %connection29 = getelementptr inbounds %struct.request_rec, ptr %26, i32 0, i32 1, !dbg !2334
  %27 = load ptr, ptr %connection29, align 8, !dbg !2334, !tbaa !1496
  %log30 = getelementptr inbounds %struct.conn_rec, ptr %27, i32 0, i32 24, !dbg !2334
  %28 = load ptr, ptr %log30, align 8, !dbg !2334, !tbaa !1497
  %tobool31 = icmp ne ptr %28, null, !dbg !2334
  br i1 %tobool31, label %cond.true32, label %cond.false35, !dbg !2334

cond.true32:                                      ; preds = %cond.false28
  %29 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %connection33 = getelementptr inbounds %struct.request_rec, ptr %29, i32 0, i32 1, !dbg !2334
  %30 = load ptr, ptr %connection33, align 8, !dbg !2334, !tbaa !1496
  %log34 = getelementptr inbounds %struct.conn_rec, ptr %30, i32 0, i32 24, !dbg !2334
  %31 = load ptr, ptr %log34, align 8, !dbg !2334, !tbaa !1497
  br label %cond.end38, !dbg !2334

cond.false35:                                     ; preds = %cond.false28
  %32 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %server36 = getelementptr inbounds %struct.request_rec, ptr %32, i32 0, i32 2, !dbg !2334
  %33 = load ptr, ptr %server36, align 8, !dbg !2334, !tbaa !1472
  %log37 = getelementptr inbounds %struct.server_rec, ptr %33, i32 0, i32 4, !dbg !2334
  br label %cond.end38, !dbg !2334

cond.end38:                                       ; preds = %cond.false35, %cond.true32
  %cond39 = phi ptr [ %31, %cond.true32 ], [ %log37, %cond.false35 ], !dbg !2334
  br label %cond.end40, !dbg !2334

cond.end40:                                       ; preds = %cond.end38, %cond.true26
  %cond41 = phi ptr [ %25, %cond.true26 ], [ %cond39, %cond.end38 ], !dbg !2334
  %module_levels42 = getelementptr inbounds %struct.ap_logconf, ptr %cond41, i32 0, i32 0, !dbg !2334
  %34 = load ptr, ptr %module_levels42, align 8, !dbg !2334, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true43, label %cond.false44, !dbg !2334

cond.true43:                                      ; preds = %cond.end40
  %35 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2334, !tbaa !852
  br label %cond.end45, !dbg !2334

cond.false44:                                     ; preds = %cond.end40
  br label %cond.end45, !dbg !2334

cond.end45:                                       ; preds = %cond.false44, %cond.true43
  %cond46 = phi i32 [ %35, %cond.true43 ], [ -1, %cond.false44 ], !dbg !2334
  %idxprom = sext i32 %cond46 to i64, !dbg !2334
  %arrayidx47 = getelementptr inbounds i8, ptr %34, i64 %idxprom, !dbg !2334
  %36 = load i8, ptr %arrayidx47, align 1, !dbg !2334, !tbaa !1005
  %conv48 = sext i8 %36 to i32, !dbg !2334
  %cmp49 = icmp slt i32 %conv48, 0, !dbg !2334
  br i1 %cmp49, label %cond.true51, label %cond.false70, !dbg !2334

cond.true51:                                      ; preds = %cond.end45, %cond.end19, %cond.end
  %37 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %log52 = getelementptr inbounds %struct.request_rec, ptr %37, i32 0, i32 56, !dbg !2334
  %38 = load ptr, ptr %log52, align 8, !dbg !2334, !tbaa !1495
  %tobool53 = icmp ne ptr %38, null, !dbg !2334
  br i1 %tobool53, label %cond.true54, label %cond.false56, !dbg !2334

cond.true54:                                      ; preds = %cond.true51
  %39 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %log55 = getelementptr inbounds %struct.request_rec, ptr %39, i32 0, i32 56, !dbg !2334
  %40 = load ptr, ptr %log55, align 8, !dbg !2334, !tbaa !1495
  br label %cond.end68, !dbg !2334

cond.false56:                                     ; preds = %cond.true51
  %41 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %connection57 = getelementptr inbounds %struct.request_rec, ptr %41, i32 0, i32 1, !dbg !2334
  %42 = load ptr, ptr %connection57, align 8, !dbg !2334, !tbaa !1496
  %log58 = getelementptr inbounds %struct.conn_rec, ptr %42, i32 0, i32 24, !dbg !2334
  %43 = load ptr, ptr %log58, align 8, !dbg !2334, !tbaa !1497
  %tobool59 = icmp ne ptr %43, null, !dbg !2334
  br i1 %tobool59, label %cond.true60, label %cond.false63, !dbg !2334

cond.true60:                                      ; preds = %cond.false56
  %44 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %connection61 = getelementptr inbounds %struct.request_rec, ptr %44, i32 0, i32 1, !dbg !2334
  %45 = load ptr, ptr %connection61, align 8, !dbg !2334, !tbaa !1496
  %log62 = getelementptr inbounds %struct.conn_rec, ptr %45, i32 0, i32 24, !dbg !2334
  %46 = load ptr, ptr %log62, align 8, !dbg !2334, !tbaa !1497
  br label %cond.end66, !dbg !2334

cond.false63:                                     ; preds = %cond.false56
  %47 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %server64 = getelementptr inbounds %struct.request_rec, ptr %47, i32 0, i32 2, !dbg !2334
  %48 = load ptr, ptr %server64, align 8, !dbg !2334, !tbaa !1472
  %log65 = getelementptr inbounds %struct.server_rec, ptr %48, i32 0, i32 4, !dbg !2334
  br label %cond.end66, !dbg !2334

cond.end66:                                       ; preds = %cond.false63, %cond.true60
  %cond67 = phi ptr [ %46, %cond.true60 ], [ %log65, %cond.false63 ], !dbg !2334
  br label %cond.end68, !dbg !2334

cond.end68:                                       ; preds = %cond.end66, %cond.true54
  %cond69 = phi ptr [ %40, %cond.true54 ], [ %cond67, %cond.end66 ], !dbg !2334
  %level = getelementptr inbounds %struct.ap_logconf, ptr %cond69, i32 0, i32 1, !dbg !2334
  %49 = load i32, ptr %level, align 8, !dbg !2334, !tbaa !1500
  br label %cond.end97, !dbg !2334

cond.false70:                                     ; preds = %cond.end45
  %50 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %log71 = getelementptr inbounds %struct.request_rec, ptr %50, i32 0, i32 56, !dbg !2334
  %51 = load ptr, ptr %log71, align 8, !dbg !2334, !tbaa !1495
  %tobool72 = icmp ne ptr %51, null, !dbg !2334
  br i1 %tobool72, label %cond.true73, label %cond.false75, !dbg !2334

cond.true73:                                      ; preds = %cond.false70
  %52 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %log74 = getelementptr inbounds %struct.request_rec, ptr %52, i32 0, i32 56, !dbg !2334
  %53 = load ptr, ptr %log74, align 8, !dbg !2334, !tbaa !1495
  br label %cond.end87, !dbg !2334

cond.false75:                                     ; preds = %cond.false70
  %54 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %connection76 = getelementptr inbounds %struct.request_rec, ptr %54, i32 0, i32 1, !dbg !2334
  %55 = load ptr, ptr %connection76, align 8, !dbg !2334, !tbaa !1496
  %log77 = getelementptr inbounds %struct.conn_rec, ptr %55, i32 0, i32 24, !dbg !2334
  %56 = load ptr, ptr %log77, align 8, !dbg !2334, !tbaa !1497
  %tobool78 = icmp ne ptr %56, null, !dbg !2334
  br i1 %tobool78, label %cond.true79, label %cond.false82, !dbg !2334

cond.true79:                                      ; preds = %cond.false75
  %57 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %connection80 = getelementptr inbounds %struct.request_rec, ptr %57, i32 0, i32 1, !dbg !2334
  %58 = load ptr, ptr %connection80, align 8, !dbg !2334, !tbaa !1496
  %log81 = getelementptr inbounds %struct.conn_rec, ptr %58, i32 0, i32 24, !dbg !2334
  %59 = load ptr, ptr %log81, align 8, !dbg !2334, !tbaa !1497
  br label %cond.end85, !dbg !2334

cond.false82:                                     ; preds = %cond.false75
  %60 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  %server83 = getelementptr inbounds %struct.request_rec, ptr %60, i32 0, i32 2, !dbg !2334
  %61 = load ptr, ptr %server83, align 8, !dbg !2334, !tbaa !1472
  %log84 = getelementptr inbounds %struct.server_rec, ptr %61, i32 0, i32 4, !dbg !2334
  br label %cond.end85, !dbg !2334

cond.end85:                                       ; preds = %cond.false82, %cond.true79
  %cond86 = phi ptr [ %59, %cond.true79 ], [ %log84, %cond.false82 ], !dbg !2334
  br label %cond.end87, !dbg !2334

cond.end87:                                       ; preds = %cond.end85, %cond.true73
  %cond88 = phi ptr [ %53, %cond.true73 ], [ %cond86, %cond.end85 ], !dbg !2334
  %module_levels89 = getelementptr inbounds %struct.ap_logconf, ptr %cond88, i32 0, i32 0, !dbg !2334
  %62 = load ptr, ptr %module_levels89, align 8, !dbg !2334, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true90, label %cond.false91, !dbg !2334

cond.true90:                                      ; preds = %cond.end87
  %63 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2334, !tbaa !852
  br label %cond.end92, !dbg !2334

cond.false91:                                     ; preds = %cond.end87
  br label %cond.end92, !dbg !2334

cond.end92:                                       ; preds = %cond.false91, %cond.true90
  %cond93 = phi i32 [ %63, %cond.true90 ], [ -1, %cond.false91 ], !dbg !2334
  %idxprom94 = sext i32 %cond93 to i64, !dbg !2334
  %arrayidx95 = getelementptr inbounds i8, ptr %62, i64 %idxprom94, !dbg !2334
  %64 = load i8, ptr %arrayidx95, align 1, !dbg !2334, !tbaa !1005
  %conv96 = sext i8 %64 to i32, !dbg !2334
  br label %cond.end97, !dbg !2334

cond.end97:                                       ; preds = %cond.end92, %cond.end68
  %cond98 = phi i32 [ %49, %cond.end68 ], [ %conv96, %cond.end92 ], !dbg !2334
  %cmp99 = icmp sge i32 %cond98, 7, !dbg !2334
  br i1 %cmp99, label %if.then101, label %if.end, !dbg !2337

if.then101:                                       ; preds = %cond.end97
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true102, label %cond.false103, !dbg !2334

cond.true102:                                     ; preds = %if.then101
  %65 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2334, !tbaa !852
  br label %cond.end104, !dbg !2334

cond.false103:                                    ; preds = %if.then101
  br label %cond.end104, !dbg !2334

cond.end104:                                      ; preds = %cond.false103, %cond.true102
  %cond105 = phi i32 [ %65, %cond.true102 ], [ -1, %cond.false103 ], !dbg !2334
  %66 = load ptr, ptr %r.addr, align 8, !dbg !2334, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 384, i32 noundef %cond105, i32 noundef 7, i32 noundef 0, ptr noundef %66, ptr noundef @.str.28), !dbg !2334
  br label %if.end, !dbg !2334

if.end:                                           ; preds = %cond.end104, %cond.end97
  br label %do.cond, !dbg !2337

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2337

do.end:                                           ; preds = %do.cond
  store i32 100005, ptr %retval, align 4, !dbg !2338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup1346, !dbg !2338

if.end106:                                        ; preds = %entry
  %67 = load ptr, ptr %r.addr, align 8, !dbg !2339, !tbaa !716
  %68 = load ptr, ptr %f.addr, align 8, !dbg !2340, !tbaa !716
  %69 = load ptr, ptr %dconf.addr, align 8, !dbg !2341, !tbaa !716
  %call107 = call i32 @crypt_init(ptr noundef %67, ptr noundef %68, ptr noundef %cipher, ptr noundef %69), !dbg !2342
  store i32 %call107, ptr %res, align 4, !dbg !2343, !tbaa !852
  %70 = load i32, ptr %res, align 4, !dbg !2344, !tbaa !852
  %cmp108 = icmp ne i32 %70, 0, !dbg !2346
  br i1 %cmp108, label %if.then110, label %if.end111, !dbg !2347

if.then110:                                       ; preds = %if.end106
  %71 = load i32, ptr %res, align 4, !dbg !2348, !tbaa !852
  store i32 %71, ptr %retval, align 4, !dbg !2350
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup1346, !dbg !2350

if.end111:                                        ; preds = %if.end106
  store i32 100005, ptr %res, align 4, !dbg !2351, !tbaa !852
  br label %for.cond, !dbg !2352

for.cond:                                         ; preds = %for.inc, %if.end111
  %72 = load i32, ptr %i, align 4, !dbg !2353, !tbaa !852
  %73 = load ptr, ptr %dconf.addr, align 8, !dbg !2354, !tbaa !716
  %passphrases = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %73, i32 0, i32 0, !dbg !2355
  %74 = load ptr, ptr %passphrases, align 8, !dbg !2355, !tbaa !730
  %nelts = getelementptr inbounds %struct.apr_array_header_t, ptr %74, i32 0, i32 2, !dbg !2356
  %75 = load i32, ptr %nelts, align 4, !dbg !2356, !tbaa !2357
  %cmp112 = icmp slt i32 %72, %75, !dbg !2358
  br i1 %cmp112, label %for.body, label %for.end, !dbg !2359

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %passphrase) #8, !dbg !2360
  tail call void @llvm.dbg.declare(metadata ptr %passphrase, metadata !2278, metadata !DIExpression()), !dbg !2361
  %76 = load ptr, ptr %dconf.addr, align 8, !dbg !2362, !tbaa !716
  %passphrases114 = getelementptr inbounds %struct.session_crypto_dir_conf, ptr %76, i32 0, i32 0, !dbg !2362
  %77 = load ptr, ptr %passphrases114, align 8, !dbg !2362, !tbaa !730
  %elts = getelementptr inbounds %struct.apr_array_header_t, ptr %77, i32 0, i32 4, !dbg !2362
  %78 = load ptr, ptr %elts, align 8, !dbg !2362, !tbaa !1844
  %79 = load i32, ptr %i, align 4, !dbg !2362, !tbaa !852
  %idxprom115 = sext i32 %79 to i64, !dbg !2362
  %arrayidx116 = getelementptr inbounds ptr, ptr %78, i64 %idxprom115, !dbg !2362
  %80 = load ptr, ptr %arrayidx116, align 8, !dbg !2362, !tbaa !716
  store ptr %80, ptr %passphrase, align 8, !dbg !2361, !tbaa !716
  call void @llvm.lifetime.start.p0(i64 8, ptr %passlen) #8, !dbg !2363
  tail call void @llvm.dbg.declare(metadata ptr %passlen, metadata !2282, metadata !DIExpression()), !dbg !2364
  %81 = load ptr, ptr %passphrase, align 8, !dbg !2365, !tbaa !716
  %call117 = call i64 @strlen(ptr noundef %81) #9, !dbg !2366
  store i64 %call117, ptr %passlen, align 8, !dbg !2364, !tbaa !1805
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8, !dbg !2367
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !2283, metadata !DIExpression()), !dbg !2368
  %82 = load i64, ptr %decodedlen, align 8, !dbg !2369, !tbaa !1805
  %sub = sub i64 %82, 8, !dbg !2370
  store i64 %sub, ptr %len, align 8, !dbg !2368, !tbaa !1805
  call void @llvm.lifetime.start.p0(i64 8, ptr %slider) #8, !dbg !2371
  tail call void @llvm.dbg.declare(metadata ptr %slider, metadata !2284, metadata !DIExpression()), !dbg !2372
  %83 = load ptr, ptr %decoded, align 8, !dbg !2373, !tbaa !716
  %add.ptr = getelementptr inbounds i8, ptr %83, i64 8, !dbg !2374
  store ptr %add.ptr, ptr %slider, align 8, !dbg !2372, !tbaa !716
  %84 = load ptr, ptr %slider, align 8, !dbg !2375, !tbaa !716
  %85 = load i64, ptr %len, align 8, !dbg !2376, !tbaa !1805
  %86 = load ptr, ptr %passphrase, align 8, !dbg !2377, !tbaa !716
  %87 = load i64, ptr %passlen, align 8, !dbg !2378, !tbaa !1805
  %arraydecay = getelementptr inbounds [8 x i8], ptr %auth, i64 0, i64 0, !dbg !2379
  call void @compute_auth(ptr noundef %84, i64 noundef %85, ptr noundef %86, i64 noundef %87, ptr noundef %arraydecay), !dbg !2380
  %arraydecay118 = getelementptr inbounds [8 x i8], ptr %auth, i64 0, i64 0, !dbg !2381
  %88 = load ptr, ptr %decoded, align 8, !dbg !2383, !tbaa !716
  %call119 = call i32 @apr_crypto_equals(ptr noundef %arraydecay118, ptr noundef %88, i64 noundef 8), !dbg !2384
  %tobool120 = icmp ne i32 %call119, 0, !dbg !2384
  br i1 %tobool120, label %if.end239, label %if.then121, !dbg !2385

if.then121:                                       ; preds = %for.body
  br label %do.body122, !dbg !2386

do.body122:                                       ; preds = %if.then121
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true123, label %cond.false124, !dbg !2388

cond.true123:                                     ; preds = %do.body122
  %89 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2388, !tbaa !852
  br label %cond.end125, !dbg !2388

cond.false124:                                    ; preds = %do.body122
  br label %cond.end125, !dbg !2388

cond.end125:                                      ; preds = %cond.false124, %cond.true123
  %cond126 = phi i32 [ %89, %cond.true123 ], [ -1, %cond.false124 ], !dbg !2388
  %cmp127 = icmp slt i32 %cond126, 0, !dbg !2388
  br i1 %cmp127, label %cond.true180, label %lor.lhs.false129, !dbg !2388

lor.lhs.false129:                                 ; preds = %cond.end125
  %90 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %log130 = getelementptr inbounds %struct.request_rec, ptr %90, i32 0, i32 56, !dbg !2388
  %91 = load ptr, ptr %log130, align 8, !dbg !2388, !tbaa !1495
  %tobool131 = icmp ne ptr %91, null, !dbg !2388
  br i1 %tobool131, label %cond.true132, label %cond.false134, !dbg !2388

cond.true132:                                     ; preds = %lor.lhs.false129
  %92 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %log133 = getelementptr inbounds %struct.request_rec, ptr %92, i32 0, i32 56, !dbg !2388
  %93 = load ptr, ptr %log133, align 8, !dbg !2388, !tbaa !1495
  br label %cond.end146, !dbg !2388

cond.false134:                                    ; preds = %lor.lhs.false129
  %94 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %connection135 = getelementptr inbounds %struct.request_rec, ptr %94, i32 0, i32 1, !dbg !2388
  %95 = load ptr, ptr %connection135, align 8, !dbg !2388, !tbaa !1496
  %log136 = getelementptr inbounds %struct.conn_rec, ptr %95, i32 0, i32 24, !dbg !2388
  %96 = load ptr, ptr %log136, align 8, !dbg !2388, !tbaa !1497
  %tobool137 = icmp ne ptr %96, null, !dbg !2388
  br i1 %tobool137, label %cond.true138, label %cond.false141, !dbg !2388

cond.true138:                                     ; preds = %cond.false134
  %97 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %connection139 = getelementptr inbounds %struct.request_rec, ptr %97, i32 0, i32 1, !dbg !2388
  %98 = load ptr, ptr %connection139, align 8, !dbg !2388, !tbaa !1496
  %log140 = getelementptr inbounds %struct.conn_rec, ptr %98, i32 0, i32 24, !dbg !2388
  %99 = load ptr, ptr %log140, align 8, !dbg !2388, !tbaa !1497
  br label %cond.end144, !dbg !2388

cond.false141:                                    ; preds = %cond.false134
  %100 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %server142 = getelementptr inbounds %struct.request_rec, ptr %100, i32 0, i32 2, !dbg !2388
  %101 = load ptr, ptr %server142, align 8, !dbg !2388, !tbaa !1472
  %log143 = getelementptr inbounds %struct.server_rec, ptr %101, i32 0, i32 4, !dbg !2388
  br label %cond.end144, !dbg !2388

cond.end144:                                      ; preds = %cond.false141, %cond.true138
  %cond145 = phi ptr [ %99, %cond.true138 ], [ %log143, %cond.false141 ], !dbg !2388
  br label %cond.end146, !dbg !2388

cond.end146:                                      ; preds = %cond.end144, %cond.true132
  %cond147 = phi ptr [ %93, %cond.true132 ], [ %cond145, %cond.end144 ], !dbg !2388
  %module_levels148 = getelementptr inbounds %struct.ap_logconf, ptr %cond147, i32 0, i32 0, !dbg !2388
  %102 = load ptr, ptr %module_levels148, align 8, !dbg !2388, !tbaa !1499
  %cmp149 = icmp eq ptr %102, null, !dbg !2388
  br i1 %cmp149, label %cond.true180, label %lor.lhs.false151, !dbg !2388

lor.lhs.false151:                                 ; preds = %cond.end146
  %103 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %log152 = getelementptr inbounds %struct.request_rec, ptr %103, i32 0, i32 56, !dbg !2388
  %104 = load ptr, ptr %log152, align 8, !dbg !2388, !tbaa !1495
  %tobool153 = icmp ne ptr %104, null, !dbg !2388
  br i1 %tobool153, label %cond.true154, label %cond.false156, !dbg !2388

cond.true154:                                     ; preds = %lor.lhs.false151
  %105 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %log155 = getelementptr inbounds %struct.request_rec, ptr %105, i32 0, i32 56, !dbg !2388
  %106 = load ptr, ptr %log155, align 8, !dbg !2388, !tbaa !1495
  br label %cond.end168, !dbg !2388

cond.false156:                                    ; preds = %lor.lhs.false151
  %107 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %connection157 = getelementptr inbounds %struct.request_rec, ptr %107, i32 0, i32 1, !dbg !2388
  %108 = load ptr, ptr %connection157, align 8, !dbg !2388, !tbaa !1496
  %log158 = getelementptr inbounds %struct.conn_rec, ptr %108, i32 0, i32 24, !dbg !2388
  %109 = load ptr, ptr %log158, align 8, !dbg !2388, !tbaa !1497
  %tobool159 = icmp ne ptr %109, null, !dbg !2388
  br i1 %tobool159, label %cond.true160, label %cond.false163, !dbg !2388

cond.true160:                                     ; preds = %cond.false156
  %110 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %connection161 = getelementptr inbounds %struct.request_rec, ptr %110, i32 0, i32 1, !dbg !2388
  %111 = load ptr, ptr %connection161, align 8, !dbg !2388, !tbaa !1496
  %log162 = getelementptr inbounds %struct.conn_rec, ptr %111, i32 0, i32 24, !dbg !2388
  %112 = load ptr, ptr %log162, align 8, !dbg !2388, !tbaa !1497
  br label %cond.end166, !dbg !2388

cond.false163:                                    ; preds = %cond.false156
  %113 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %server164 = getelementptr inbounds %struct.request_rec, ptr %113, i32 0, i32 2, !dbg !2388
  %114 = load ptr, ptr %server164, align 8, !dbg !2388, !tbaa !1472
  %log165 = getelementptr inbounds %struct.server_rec, ptr %114, i32 0, i32 4, !dbg !2388
  br label %cond.end166, !dbg !2388

cond.end166:                                      ; preds = %cond.false163, %cond.true160
  %cond167 = phi ptr [ %112, %cond.true160 ], [ %log165, %cond.false163 ], !dbg !2388
  br label %cond.end168, !dbg !2388

cond.end168:                                      ; preds = %cond.end166, %cond.true154
  %cond169 = phi ptr [ %106, %cond.true154 ], [ %cond167, %cond.end166 ], !dbg !2388
  %module_levels170 = getelementptr inbounds %struct.ap_logconf, ptr %cond169, i32 0, i32 0, !dbg !2388
  %115 = load ptr, ptr %module_levels170, align 8, !dbg !2388, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true171, label %cond.false172, !dbg !2388

cond.true171:                                     ; preds = %cond.end168
  %116 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2388, !tbaa !852
  br label %cond.end173, !dbg !2388

cond.false172:                                    ; preds = %cond.end168
  br label %cond.end173, !dbg !2388

cond.end173:                                      ; preds = %cond.false172, %cond.true171
  %cond174 = phi i32 [ %116, %cond.true171 ], [ -1, %cond.false172 ], !dbg !2388
  %idxprom175 = sext i32 %cond174 to i64, !dbg !2388
  %arrayidx176 = getelementptr inbounds i8, ptr %115, i64 %idxprom175, !dbg !2388
  %117 = load i8, ptr %arrayidx176, align 1, !dbg !2388, !tbaa !1005
  %conv177 = sext i8 %117 to i32, !dbg !2388
  %cmp178 = icmp slt i32 %conv177, 0, !dbg !2388
  br i1 %cmp178, label %cond.true180, label %cond.false200, !dbg !2388

cond.true180:                                     ; preds = %cond.end173, %cond.end146, %cond.end125
  %118 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %log181 = getelementptr inbounds %struct.request_rec, ptr %118, i32 0, i32 56, !dbg !2388
  %119 = load ptr, ptr %log181, align 8, !dbg !2388, !tbaa !1495
  %tobool182 = icmp ne ptr %119, null, !dbg !2388
  br i1 %tobool182, label %cond.true183, label %cond.false185, !dbg !2388

cond.true183:                                     ; preds = %cond.true180
  %120 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %log184 = getelementptr inbounds %struct.request_rec, ptr %120, i32 0, i32 56, !dbg !2388
  %121 = load ptr, ptr %log184, align 8, !dbg !2388, !tbaa !1495
  br label %cond.end197, !dbg !2388

cond.false185:                                    ; preds = %cond.true180
  %122 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %connection186 = getelementptr inbounds %struct.request_rec, ptr %122, i32 0, i32 1, !dbg !2388
  %123 = load ptr, ptr %connection186, align 8, !dbg !2388, !tbaa !1496
  %log187 = getelementptr inbounds %struct.conn_rec, ptr %123, i32 0, i32 24, !dbg !2388
  %124 = load ptr, ptr %log187, align 8, !dbg !2388, !tbaa !1497
  %tobool188 = icmp ne ptr %124, null, !dbg !2388
  br i1 %tobool188, label %cond.true189, label %cond.false192, !dbg !2388

cond.true189:                                     ; preds = %cond.false185
  %125 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %connection190 = getelementptr inbounds %struct.request_rec, ptr %125, i32 0, i32 1, !dbg !2388
  %126 = load ptr, ptr %connection190, align 8, !dbg !2388, !tbaa !1496
  %log191 = getelementptr inbounds %struct.conn_rec, ptr %126, i32 0, i32 24, !dbg !2388
  %127 = load ptr, ptr %log191, align 8, !dbg !2388, !tbaa !1497
  br label %cond.end195, !dbg !2388

cond.false192:                                    ; preds = %cond.false185
  %128 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %server193 = getelementptr inbounds %struct.request_rec, ptr %128, i32 0, i32 2, !dbg !2388
  %129 = load ptr, ptr %server193, align 8, !dbg !2388, !tbaa !1472
  %log194 = getelementptr inbounds %struct.server_rec, ptr %129, i32 0, i32 4, !dbg !2388
  br label %cond.end195, !dbg !2388

cond.end195:                                      ; preds = %cond.false192, %cond.true189
  %cond196 = phi ptr [ %127, %cond.true189 ], [ %log194, %cond.false192 ], !dbg !2388
  br label %cond.end197, !dbg !2388

cond.end197:                                      ; preds = %cond.end195, %cond.true183
  %cond198 = phi ptr [ %121, %cond.true183 ], [ %cond196, %cond.end195 ], !dbg !2388
  %level199 = getelementptr inbounds %struct.ap_logconf, ptr %cond198, i32 0, i32 1, !dbg !2388
  %130 = load i32, ptr %level199, align 8, !dbg !2388, !tbaa !1500
  br label %cond.end227, !dbg !2388

cond.false200:                                    ; preds = %cond.end173
  %131 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %log201 = getelementptr inbounds %struct.request_rec, ptr %131, i32 0, i32 56, !dbg !2388
  %132 = load ptr, ptr %log201, align 8, !dbg !2388, !tbaa !1495
  %tobool202 = icmp ne ptr %132, null, !dbg !2388
  br i1 %tobool202, label %cond.true203, label %cond.false205, !dbg !2388

cond.true203:                                     ; preds = %cond.false200
  %133 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %log204 = getelementptr inbounds %struct.request_rec, ptr %133, i32 0, i32 56, !dbg !2388
  %134 = load ptr, ptr %log204, align 8, !dbg !2388, !tbaa !1495
  br label %cond.end217, !dbg !2388

cond.false205:                                    ; preds = %cond.false200
  %135 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %connection206 = getelementptr inbounds %struct.request_rec, ptr %135, i32 0, i32 1, !dbg !2388
  %136 = load ptr, ptr %connection206, align 8, !dbg !2388, !tbaa !1496
  %log207 = getelementptr inbounds %struct.conn_rec, ptr %136, i32 0, i32 24, !dbg !2388
  %137 = load ptr, ptr %log207, align 8, !dbg !2388, !tbaa !1497
  %tobool208 = icmp ne ptr %137, null, !dbg !2388
  br i1 %tobool208, label %cond.true209, label %cond.false212, !dbg !2388

cond.true209:                                     ; preds = %cond.false205
  %138 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %connection210 = getelementptr inbounds %struct.request_rec, ptr %138, i32 0, i32 1, !dbg !2388
  %139 = load ptr, ptr %connection210, align 8, !dbg !2388, !tbaa !1496
  %log211 = getelementptr inbounds %struct.conn_rec, ptr %139, i32 0, i32 24, !dbg !2388
  %140 = load ptr, ptr %log211, align 8, !dbg !2388, !tbaa !1497
  br label %cond.end215, !dbg !2388

cond.false212:                                    ; preds = %cond.false205
  %141 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  %server213 = getelementptr inbounds %struct.request_rec, ptr %141, i32 0, i32 2, !dbg !2388
  %142 = load ptr, ptr %server213, align 8, !dbg !2388, !tbaa !1472
  %log214 = getelementptr inbounds %struct.server_rec, ptr %142, i32 0, i32 4, !dbg !2388
  br label %cond.end215, !dbg !2388

cond.end215:                                      ; preds = %cond.false212, %cond.true209
  %cond216 = phi ptr [ %140, %cond.true209 ], [ %log214, %cond.false212 ], !dbg !2388
  br label %cond.end217, !dbg !2388

cond.end217:                                      ; preds = %cond.end215, %cond.true203
  %cond218 = phi ptr [ %134, %cond.true203 ], [ %cond216, %cond.end215 ], !dbg !2388
  %module_levels219 = getelementptr inbounds %struct.ap_logconf, ptr %cond218, i32 0, i32 0, !dbg !2388
  %143 = load ptr, ptr %module_levels219, align 8, !dbg !2388, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true220, label %cond.false221, !dbg !2388

cond.true220:                                     ; preds = %cond.end217
  %144 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2388, !tbaa !852
  br label %cond.end222, !dbg !2388

cond.false221:                                    ; preds = %cond.end217
  br label %cond.end222, !dbg !2388

cond.end222:                                      ; preds = %cond.false221, %cond.true220
  %cond223 = phi i32 [ %144, %cond.true220 ], [ -1, %cond.false221 ], !dbg !2388
  %idxprom224 = sext i32 %cond223 to i64, !dbg !2388
  %arrayidx225 = getelementptr inbounds i8, ptr %143, i64 %idxprom224, !dbg !2388
  %145 = load i8, ptr %arrayidx225, align 1, !dbg !2388, !tbaa !1005
  %conv226 = sext i8 %145 to i32, !dbg !2388
  br label %cond.end227, !dbg !2388

cond.end227:                                      ; preds = %cond.end222, %cond.end197
  %cond228 = phi i32 [ %130, %cond.end197 ], [ %conv226, %cond.end222 ], !dbg !2388
  %cmp229 = icmp sge i32 %cond228, 7, !dbg !2388
  br i1 %cmp229, label %if.then231, label %if.end236, !dbg !2391

if.then231:                                       ; preds = %cond.end227
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true232, label %cond.false233, !dbg !2388

cond.true232:                                     ; preds = %if.then231
  %146 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2388, !tbaa !852
  br label %cond.end234, !dbg !2388

cond.false233:                                    ; preds = %if.then231
  br label %cond.end234, !dbg !2388

cond.end234:                                      ; preds = %cond.false233, %cond.true232
  %cond235 = phi i32 [ %146, %cond.true232 ], [ -1, %cond.false233 ], !dbg !2388
  %147 = load i32, ptr %res, align 4, !dbg !2388, !tbaa !852
  %148 = load ptr, ptr %r.addr, align 8, !dbg !2388, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 408, i32 noundef %cond235, i32 noundef 7, i32 noundef %147, ptr noundef %148, ptr noundef @.str.29), !dbg !2388
  br label %if.end236, !dbg !2388

if.end236:                                        ; preds = %cond.end234, %cond.end227
  br label %do.cond237, !dbg !2391

do.cond237:                                       ; preds = %if.end236
  br label %do.end238, !dbg !2391

do.end238:                                        ; preds = %do.cond237
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2392

if.end239:                                        ; preds = %for.body
  %149 = load ptr, ptr %passphrase, align 8, !dbg !2393, !tbaa !716
  %150 = load i64, ptr %passlen, align 8, !dbg !2394, !tbaa !1805
  %151 = load ptr, ptr %slider, align 8, !dbg !2395, !tbaa !716
  %152 = load ptr, ptr %cipher, align 8, !dbg !2396, !tbaa !716
  %153 = load i32, ptr %152, align 4, !dbg !2397, !tbaa !1005
  %154 = load ptr, ptr %f.addr, align 8, !dbg !2398, !tbaa !716
  %155 = load ptr, ptr %r.addr, align 8, !dbg !2399, !tbaa !716
  %pool240 = getelementptr inbounds %struct.request_rec, ptr %155, i32 0, i32 0, !dbg !2400
  %156 = load ptr, ptr %pool240, align 8, !dbg !2400, !tbaa !1857
  %call241 = call i32 @apr_crypto_passphrase(ptr noundef %key, ptr noundef %ivSize, ptr noundef %149, i64 noundef %150, ptr noundef %151, i64 noundef 16, i32 noundef %153, i32 noundef 2, i32 noundef 1, i32 noundef 4096, ptr noundef %154, ptr noundef %156), !dbg !2401
  store i32 %call241, ptr %res, align 4, !dbg !2402, !tbaa !852
  %157 = load i32, ptr %res, align 4, !dbg !2403, !tbaa !852
  %cmp242 = icmp eq i32 %157, 100001, !dbg !2403
  br i1 %cmp242, label %if.then244, label %if.else, !dbg !2405

if.then244:                                       ; preds = %if.end239
  br label %do.body245, !dbg !2406

do.body245:                                       ; preds = %if.then244
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true246, label %cond.false247, !dbg !2408

cond.true246:                                     ; preds = %do.body245
  %158 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2408, !tbaa !852
  br label %cond.end248, !dbg !2408

cond.false247:                                    ; preds = %do.body245
  br label %cond.end248, !dbg !2408

cond.end248:                                      ; preds = %cond.false247, %cond.true246
  %cond249 = phi i32 [ %158, %cond.true246 ], [ -1, %cond.false247 ], !dbg !2408
  %cmp250 = icmp slt i32 %cond249, 0, !dbg !2408
  br i1 %cmp250, label %cond.true303, label %lor.lhs.false252, !dbg !2408

lor.lhs.false252:                                 ; preds = %cond.end248
  %159 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %log253 = getelementptr inbounds %struct.request_rec, ptr %159, i32 0, i32 56, !dbg !2408
  %160 = load ptr, ptr %log253, align 8, !dbg !2408, !tbaa !1495
  %tobool254 = icmp ne ptr %160, null, !dbg !2408
  br i1 %tobool254, label %cond.true255, label %cond.false257, !dbg !2408

cond.true255:                                     ; preds = %lor.lhs.false252
  %161 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %log256 = getelementptr inbounds %struct.request_rec, ptr %161, i32 0, i32 56, !dbg !2408
  %162 = load ptr, ptr %log256, align 8, !dbg !2408, !tbaa !1495
  br label %cond.end269, !dbg !2408

cond.false257:                                    ; preds = %lor.lhs.false252
  %163 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %connection258 = getelementptr inbounds %struct.request_rec, ptr %163, i32 0, i32 1, !dbg !2408
  %164 = load ptr, ptr %connection258, align 8, !dbg !2408, !tbaa !1496
  %log259 = getelementptr inbounds %struct.conn_rec, ptr %164, i32 0, i32 24, !dbg !2408
  %165 = load ptr, ptr %log259, align 8, !dbg !2408, !tbaa !1497
  %tobool260 = icmp ne ptr %165, null, !dbg !2408
  br i1 %tobool260, label %cond.true261, label %cond.false264, !dbg !2408

cond.true261:                                     ; preds = %cond.false257
  %166 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %connection262 = getelementptr inbounds %struct.request_rec, ptr %166, i32 0, i32 1, !dbg !2408
  %167 = load ptr, ptr %connection262, align 8, !dbg !2408, !tbaa !1496
  %log263 = getelementptr inbounds %struct.conn_rec, ptr %167, i32 0, i32 24, !dbg !2408
  %168 = load ptr, ptr %log263, align 8, !dbg !2408, !tbaa !1497
  br label %cond.end267, !dbg !2408

cond.false264:                                    ; preds = %cond.false257
  %169 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %server265 = getelementptr inbounds %struct.request_rec, ptr %169, i32 0, i32 2, !dbg !2408
  %170 = load ptr, ptr %server265, align 8, !dbg !2408, !tbaa !1472
  %log266 = getelementptr inbounds %struct.server_rec, ptr %170, i32 0, i32 4, !dbg !2408
  br label %cond.end267, !dbg !2408

cond.end267:                                      ; preds = %cond.false264, %cond.true261
  %cond268 = phi ptr [ %168, %cond.true261 ], [ %log266, %cond.false264 ], !dbg !2408
  br label %cond.end269, !dbg !2408

cond.end269:                                      ; preds = %cond.end267, %cond.true255
  %cond270 = phi ptr [ %162, %cond.true255 ], [ %cond268, %cond.end267 ], !dbg !2408
  %module_levels271 = getelementptr inbounds %struct.ap_logconf, ptr %cond270, i32 0, i32 0, !dbg !2408
  %171 = load ptr, ptr %module_levels271, align 8, !dbg !2408, !tbaa !1499
  %cmp272 = icmp eq ptr %171, null, !dbg !2408
  br i1 %cmp272, label %cond.true303, label %lor.lhs.false274, !dbg !2408

lor.lhs.false274:                                 ; preds = %cond.end269
  %172 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %log275 = getelementptr inbounds %struct.request_rec, ptr %172, i32 0, i32 56, !dbg !2408
  %173 = load ptr, ptr %log275, align 8, !dbg !2408, !tbaa !1495
  %tobool276 = icmp ne ptr %173, null, !dbg !2408
  br i1 %tobool276, label %cond.true277, label %cond.false279, !dbg !2408

cond.true277:                                     ; preds = %lor.lhs.false274
  %174 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %log278 = getelementptr inbounds %struct.request_rec, ptr %174, i32 0, i32 56, !dbg !2408
  %175 = load ptr, ptr %log278, align 8, !dbg !2408, !tbaa !1495
  br label %cond.end291, !dbg !2408

cond.false279:                                    ; preds = %lor.lhs.false274
  %176 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %connection280 = getelementptr inbounds %struct.request_rec, ptr %176, i32 0, i32 1, !dbg !2408
  %177 = load ptr, ptr %connection280, align 8, !dbg !2408, !tbaa !1496
  %log281 = getelementptr inbounds %struct.conn_rec, ptr %177, i32 0, i32 24, !dbg !2408
  %178 = load ptr, ptr %log281, align 8, !dbg !2408, !tbaa !1497
  %tobool282 = icmp ne ptr %178, null, !dbg !2408
  br i1 %tobool282, label %cond.true283, label %cond.false286, !dbg !2408

cond.true283:                                     ; preds = %cond.false279
  %179 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %connection284 = getelementptr inbounds %struct.request_rec, ptr %179, i32 0, i32 1, !dbg !2408
  %180 = load ptr, ptr %connection284, align 8, !dbg !2408, !tbaa !1496
  %log285 = getelementptr inbounds %struct.conn_rec, ptr %180, i32 0, i32 24, !dbg !2408
  %181 = load ptr, ptr %log285, align 8, !dbg !2408, !tbaa !1497
  br label %cond.end289, !dbg !2408

cond.false286:                                    ; preds = %cond.false279
  %182 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %server287 = getelementptr inbounds %struct.request_rec, ptr %182, i32 0, i32 2, !dbg !2408
  %183 = load ptr, ptr %server287, align 8, !dbg !2408, !tbaa !1472
  %log288 = getelementptr inbounds %struct.server_rec, ptr %183, i32 0, i32 4, !dbg !2408
  br label %cond.end289, !dbg !2408

cond.end289:                                      ; preds = %cond.false286, %cond.true283
  %cond290 = phi ptr [ %181, %cond.true283 ], [ %log288, %cond.false286 ], !dbg !2408
  br label %cond.end291, !dbg !2408

cond.end291:                                      ; preds = %cond.end289, %cond.true277
  %cond292 = phi ptr [ %175, %cond.true277 ], [ %cond290, %cond.end289 ], !dbg !2408
  %module_levels293 = getelementptr inbounds %struct.ap_logconf, ptr %cond292, i32 0, i32 0, !dbg !2408
  %184 = load ptr, ptr %module_levels293, align 8, !dbg !2408, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true294, label %cond.false295, !dbg !2408

cond.true294:                                     ; preds = %cond.end291
  %185 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2408, !tbaa !852
  br label %cond.end296, !dbg !2408

cond.false295:                                    ; preds = %cond.end291
  br label %cond.end296, !dbg !2408

cond.end296:                                      ; preds = %cond.false295, %cond.true294
  %cond297 = phi i32 [ %185, %cond.true294 ], [ -1, %cond.false295 ], !dbg !2408
  %idxprom298 = sext i32 %cond297 to i64, !dbg !2408
  %arrayidx299 = getelementptr inbounds i8, ptr %184, i64 %idxprom298, !dbg !2408
  %186 = load i8, ptr %arrayidx299, align 1, !dbg !2408, !tbaa !1005
  %conv300 = sext i8 %186 to i32, !dbg !2408
  %cmp301 = icmp slt i32 %conv300, 0, !dbg !2408
  br i1 %cmp301, label %cond.true303, label %cond.false323, !dbg !2408

cond.true303:                                     ; preds = %cond.end296, %cond.end269, %cond.end248
  %187 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %log304 = getelementptr inbounds %struct.request_rec, ptr %187, i32 0, i32 56, !dbg !2408
  %188 = load ptr, ptr %log304, align 8, !dbg !2408, !tbaa !1495
  %tobool305 = icmp ne ptr %188, null, !dbg !2408
  br i1 %tobool305, label %cond.true306, label %cond.false308, !dbg !2408

cond.true306:                                     ; preds = %cond.true303
  %189 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %log307 = getelementptr inbounds %struct.request_rec, ptr %189, i32 0, i32 56, !dbg !2408
  %190 = load ptr, ptr %log307, align 8, !dbg !2408, !tbaa !1495
  br label %cond.end320, !dbg !2408

cond.false308:                                    ; preds = %cond.true303
  %191 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %connection309 = getelementptr inbounds %struct.request_rec, ptr %191, i32 0, i32 1, !dbg !2408
  %192 = load ptr, ptr %connection309, align 8, !dbg !2408, !tbaa !1496
  %log310 = getelementptr inbounds %struct.conn_rec, ptr %192, i32 0, i32 24, !dbg !2408
  %193 = load ptr, ptr %log310, align 8, !dbg !2408, !tbaa !1497
  %tobool311 = icmp ne ptr %193, null, !dbg !2408
  br i1 %tobool311, label %cond.true312, label %cond.false315, !dbg !2408

cond.true312:                                     ; preds = %cond.false308
  %194 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %connection313 = getelementptr inbounds %struct.request_rec, ptr %194, i32 0, i32 1, !dbg !2408
  %195 = load ptr, ptr %connection313, align 8, !dbg !2408, !tbaa !1496
  %log314 = getelementptr inbounds %struct.conn_rec, ptr %195, i32 0, i32 24, !dbg !2408
  %196 = load ptr, ptr %log314, align 8, !dbg !2408, !tbaa !1497
  br label %cond.end318, !dbg !2408

cond.false315:                                    ; preds = %cond.false308
  %197 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %server316 = getelementptr inbounds %struct.request_rec, ptr %197, i32 0, i32 2, !dbg !2408
  %198 = load ptr, ptr %server316, align 8, !dbg !2408, !tbaa !1472
  %log317 = getelementptr inbounds %struct.server_rec, ptr %198, i32 0, i32 4, !dbg !2408
  br label %cond.end318, !dbg !2408

cond.end318:                                      ; preds = %cond.false315, %cond.true312
  %cond319 = phi ptr [ %196, %cond.true312 ], [ %log317, %cond.false315 ], !dbg !2408
  br label %cond.end320, !dbg !2408

cond.end320:                                      ; preds = %cond.end318, %cond.true306
  %cond321 = phi ptr [ %190, %cond.true306 ], [ %cond319, %cond.end318 ], !dbg !2408
  %level322 = getelementptr inbounds %struct.ap_logconf, ptr %cond321, i32 0, i32 1, !dbg !2408
  %199 = load i32, ptr %level322, align 8, !dbg !2408, !tbaa !1500
  br label %cond.end350, !dbg !2408

cond.false323:                                    ; preds = %cond.end296
  %200 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %log324 = getelementptr inbounds %struct.request_rec, ptr %200, i32 0, i32 56, !dbg !2408
  %201 = load ptr, ptr %log324, align 8, !dbg !2408, !tbaa !1495
  %tobool325 = icmp ne ptr %201, null, !dbg !2408
  br i1 %tobool325, label %cond.true326, label %cond.false328, !dbg !2408

cond.true326:                                     ; preds = %cond.false323
  %202 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %log327 = getelementptr inbounds %struct.request_rec, ptr %202, i32 0, i32 56, !dbg !2408
  %203 = load ptr, ptr %log327, align 8, !dbg !2408, !tbaa !1495
  br label %cond.end340, !dbg !2408

cond.false328:                                    ; preds = %cond.false323
  %204 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %connection329 = getelementptr inbounds %struct.request_rec, ptr %204, i32 0, i32 1, !dbg !2408
  %205 = load ptr, ptr %connection329, align 8, !dbg !2408, !tbaa !1496
  %log330 = getelementptr inbounds %struct.conn_rec, ptr %205, i32 0, i32 24, !dbg !2408
  %206 = load ptr, ptr %log330, align 8, !dbg !2408, !tbaa !1497
  %tobool331 = icmp ne ptr %206, null, !dbg !2408
  br i1 %tobool331, label %cond.true332, label %cond.false335, !dbg !2408

cond.true332:                                     ; preds = %cond.false328
  %207 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %connection333 = getelementptr inbounds %struct.request_rec, ptr %207, i32 0, i32 1, !dbg !2408
  %208 = load ptr, ptr %connection333, align 8, !dbg !2408, !tbaa !1496
  %log334 = getelementptr inbounds %struct.conn_rec, ptr %208, i32 0, i32 24, !dbg !2408
  %209 = load ptr, ptr %log334, align 8, !dbg !2408, !tbaa !1497
  br label %cond.end338, !dbg !2408

cond.false335:                                    ; preds = %cond.false328
  %210 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  %server336 = getelementptr inbounds %struct.request_rec, ptr %210, i32 0, i32 2, !dbg !2408
  %211 = load ptr, ptr %server336, align 8, !dbg !2408, !tbaa !1472
  %log337 = getelementptr inbounds %struct.server_rec, ptr %211, i32 0, i32 4, !dbg !2408
  br label %cond.end338, !dbg !2408

cond.end338:                                      ; preds = %cond.false335, %cond.true332
  %cond339 = phi ptr [ %209, %cond.true332 ], [ %log337, %cond.false335 ], !dbg !2408
  br label %cond.end340, !dbg !2408

cond.end340:                                      ; preds = %cond.end338, %cond.true326
  %cond341 = phi ptr [ %203, %cond.true326 ], [ %cond339, %cond.end338 ], !dbg !2408
  %module_levels342 = getelementptr inbounds %struct.ap_logconf, ptr %cond341, i32 0, i32 0, !dbg !2408
  %212 = load ptr, ptr %module_levels342, align 8, !dbg !2408, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true343, label %cond.false344, !dbg !2408

cond.true343:                                     ; preds = %cond.end340
  %213 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2408, !tbaa !852
  br label %cond.end345, !dbg !2408

cond.false344:                                    ; preds = %cond.end340
  br label %cond.end345, !dbg !2408

cond.end345:                                      ; preds = %cond.false344, %cond.true343
  %cond346 = phi i32 [ %213, %cond.true343 ], [ -1, %cond.false344 ], !dbg !2408
  %idxprom347 = sext i32 %cond346 to i64, !dbg !2408
  %arrayidx348 = getelementptr inbounds i8, ptr %212, i64 %idxprom347, !dbg !2408
  %214 = load i8, ptr %arrayidx348, align 1, !dbg !2408, !tbaa !1005
  %conv349 = sext i8 %214 to i32, !dbg !2408
  br label %cond.end350, !dbg !2408

cond.end350:                                      ; preds = %cond.end345, %cond.end320
  %cond351 = phi i32 [ %199, %cond.end320 ], [ %conv349, %cond.end345 ], !dbg !2408
  %cmp352 = icmp sge i32 %cond351, 7, !dbg !2408
  br i1 %cmp352, label %if.then354, label %if.end359, !dbg !2411

if.then354:                                       ; preds = %cond.end350
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true355, label %cond.false356, !dbg !2408

cond.true355:                                     ; preds = %if.then354
  %215 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2408, !tbaa !852
  br label %cond.end357, !dbg !2408

cond.false356:                                    ; preds = %if.then354
  br label %cond.end357, !dbg !2408

cond.end357:                                      ; preds = %cond.false356, %cond.true355
  %cond358 = phi i32 [ %215, %cond.true355 ], [ -1, %cond.false356 ], !dbg !2408
  %216 = load i32, ptr %res, align 4, !dbg !2408, !tbaa !852
  %217 = load ptr, ptr %r.addr, align 8, !dbg !2408, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 419, i32 noundef %cond358, i32 noundef 7, i32 noundef %216, ptr noundef %217, ptr noundef @.str.30), !dbg !2408
  br label %if.end359, !dbg !2408

if.end359:                                        ; preds = %cond.end357, %cond.end350
  br label %do.cond360, !dbg !2411

do.cond360:                                       ; preds = %if.end359
  br label %do.end361, !dbg !2411

do.end361:                                        ; preds = %do.cond360
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2412

if.else:                                          ; preds = %if.end239
  %218 = load i32, ptr %res, align 4, !dbg !2413, !tbaa !852
  %cmp362 = icmp eq i32 %218, 100006, !dbg !2413
  br i1 %cmp362, label %if.then364, label %if.else482, !dbg !2415

if.then364:                                       ; preds = %if.else
  br label %do.body365, !dbg !2416

do.body365:                                       ; preds = %if.then364
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true366, label %cond.false367, !dbg !2418

cond.true366:                                     ; preds = %do.body365
  %219 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2418, !tbaa !852
  br label %cond.end368, !dbg !2418

cond.false367:                                    ; preds = %do.body365
  br label %cond.end368, !dbg !2418

cond.end368:                                      ; preds = %cond.false367, %cond.true366
  %cond369 = phi i32 [ %219, %cond.true366 ], [ -1, %cond.false367 ], !dbg !2418
  %cmp370 = icmp slt i32 %cond369, 0, !dbg !2418
  br i1 %cmp370, label %cond.true423, label %lor.lhs.false372, !dbg !2418

lor.lhs.false372:                                 ; preds = %cond.end368
  %220 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %log373 = getelementptr inbounds %struct.request_rec, ptr %220, i32 0, i32 56, !dbg !2418
  %221 = load ptr, ptr %log373, align 8, !dbg !2418, !tbaa !1495
  %tobool374 = icmp ne ptr %221, null, !dbg !2418
  br i1 %tobool374, label %cond.true375, label %cond.false377, !dbg !2418

cond.true375:                                     ; preds = %lor.lhs.false372
  %222 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %log376 = getelementptr inbounds %struct.request_rec, ptr %222, i32 0, i32 56, !dbg !2418
  %223 = load ptr, ptr %log376, align 8, !dbg !2418, !tbaa !1495
  br label %cond.end389, !dbg !2418

cond.false377:                                    ; preds = %lor.lhs.false372
  %224 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %connection378 = getelementptr inbounds %struct.request_rec, ptr %224, i32 0, i32 1, !dbg !2418
  %225 = load ptr, ptr %connection378, align 8, !dbg !2418, !tbaa !1496
  %log379 = getelementptr inbounds %struct.conn_rec, ptr %225, i32 0, i32 24, !dbg !2418
  %226 = load ptr, ptr %log379, align 8, !dbg !2418, !tbaa !1497
  %tobool380 = icmp ne ptr %226, null, !dbg !2418
  br i1 %tobool380, label %cond.true381, label %cond.false384, !dbg !2418

cond.true381:                                     ; preds = %cond.false377
  %227 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %connection382 = getelementptr inbounds %struct.request_rec, ptr %227, i32 0, i32 1, !dbg !2418
  %228 = load ptr, ptr %connection382, align 8, !dbg !2418, !tbaa !1496
  %log383 = getelementptr inbounds %struct.conn_rec, ptr %228, i32 0, i32 24, !dbg !2418
  %229 = load ptr, ptr %log383, align 8, !dbg !2418, !tbaa !1497
  br label %cond.end387, !dbg !2418

cond.false384:                                    ; preds = %cond.false377
  %230 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %server385 = getelementptr inbounds %struct.request_rec, ptr %230, i32 0, i32 2, !dbg !2418
  %231 = load ptr, ptr %server385, align 8, !dbg !2418, !tbaa !1472
  %log386 = getelementptr inbounds %struct.server_rec, ptr %231, i32 0, i32 4, !dbg !2418
  br label %cond.end387, !dbg !2418

cond.end387:                                      ; preds = %cond.false384, %cond.true381
  %cond388 = phi ptr [ %229, %cond.true381 ], [ %log386, %cond.false384 ], !dbg !2418
  br label %cond.end389, !dbg !2418

cond.end389:                                      ; preds = %cond.end387, %cond.true375
  %cond390 = phi ptr [ %223, %cond.true375 ], [ %cond388, %cond.end387 ], !dbg !2418
  %module_levels391 = getelementptr inbounds %struct.ap_logconf, ptr %cond390, i32 0, i32 0, !dbg !2418
  %232 = load ptr, ptr %module_levels391, align 8, !dbg !2418, !tbaa !1499
  %cmp392 = icmp eq ptr %232, null, !dbg !2418
  br i1 %cmp392, label %cond.true423, label %lor.lhs.false394, !dbg !2418

lor.lhs.false394:                                 ; preds = %cond.end389
  %233 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %log395 = getelementptr inbounds %struct.request_rec, ptr %233, i32 0, i32 56, !dbg !2418
  %234 = load ptr, ptr %log395, align 8, !dbg !2418, !tbaa !1495
  %tobool396 = icmp ne ptr %234, null, !dbg !2418
  br i1 %tobool396, label %cond.true397, label %cond.false399, !dbg !2418

cond.true397:                                     ; preds = %lor.lhs.false394
  %235 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %log398 = getelementptr inbounds %struct.request_rec, ptr %235, i32 0, i32 56, !dbg !2418
  %236 = load ptr, ptr %log398, align 8, !dbg !2418, !tbaa !1495
  br label %cond.end411, !dbg !2418

cond.false399:                                    ; preds = %lor.lhs.false394
  %237 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %connection400 = getelementptr inbounds %struct.request_rec, ptr %237, i32 0, i32 1, !dbg !2418
  %238 = load ptr, ptr %connection400, align 8, !dbg !2418, !tbaa !1496
  %log401 = getelementptr inbounds %struct.conn_rec, ptr %238, i32 0, i32 24, !dbg !2418
  %239 = load ptr, ptr %log401, align 8, !dbg !2418, !tbaa !1497
  %tobool402 = icmp ne ptr %239, null, !dbg !2418
  br i1 %tobool402, label %cond.true403, label %cond.false406, !dbg !2418

cond.true403:                                     ; preds = %cond.false399
  %240 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %connection404 = getelementptr inbounds %struct.request_rec, ptr %240, i32 0, i32 1, !dbg !2418
  %241 = load ptr, ptr %connection404, align 8, !dbg !2418, !tbaa !1496
  %log405 = getelementptr inbounds %struct.conn_rec, ptr %241, i32 0, i32 24, !dbg !2418
  %242 = load ptr, ptr %log405, align 8, !dbg !2418, !tbaa !1497
  br label %cond.end409, !dbg !2418

cond.false406:                                    ; preds = %cond.false399
  %243 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %server407 = getelementptr inbounds %struct.request_rec, ptr %243, i32 0, i32 2, !dbg !2418
  %244 = load ptr, ptr %server407, align 8, !dbg !2418, !tbaa !1472
  %log408 = getelementptr inbounds %struct.server_rec, ptr %244, i32 0, i32 4, !dbg !2418
  br label %cond.end409, !dbg !2418

cond.end409:                                      ; preds = %cond.false406, %cond.true403
  %cond410 = phi ptr [ %242, %cond.true403 ], [ %log408, %cond.false406 ], !dbg !2418
  br label %cond.end411, !dbg !2418

cond.end411:                                      ; preds = %cond.end409, %cond.true397
  %cond412 = phi ptr [ %236, %cond.true397 ], [ %cond410, %cond.end409 ], !dbg !2418
  %module_levels413 = getelementptr inbounds %struct.ap_logconf, ptr %cond412, i32 0, i32 0, !dbg !2418
  %245 = load ptr, ptr %module_levels413, align 8, !dbg !2418, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true414, label %cond.false415, !dbg !2418

cond.true414:                                     ; preds = %cond.end411
  %246 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2418, !tbaa !852
  br label %cond.end416, !dbg !2418

cond.false415:                                    ; preds = %cond.end411
  br label %cond.end416, !dbg !2418

cond.end416:                                      ; preds = %cond.false415, %cond.true414
  %cond417 = phi i32 [ %246, %cond.true414 ], [ -1, %cond.false415 ], !dbg !2418
  %idxprom418 = sext i32 %cond417 to i64, !dbg !2418
  %arrayidx419 = getelementptr inbounds i8, ptr %245, i64 %idxprom418, !dbg !2418
  %247 = load i8, ptr %arrayidx419, align 1, !dbg !2418, !tbaa !1005
  %conv420 = sext i8 %247 to i32, !dbg !2418
  %cmp421 = icmp slt i32 %conv420, 0, !dbg !2418
  br i1 %cmp421, label %cond.true423, label %cond.false443, !dbg !2418

cond.true423:                                     ; preds = %cond.end416, %cond.end389, %cond.end368
  %248 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %log424 = getelementptr inbounds %struct.request_rec, ptr %248, i32 0, i32 56, !dbg !2418
  %249 = load ptr, ptr %log424, align 8, !dbg !2418, !tbaa !1495
  %tobool425 = icmp ne ptr %249, null, !dbg !2418
  br i1 %tobool425, label %cond.true426, label %cond.false428, !dbg !2418

cond.true426:                                     ; preds = %cond.true423
  %250 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %log427 = getelementptr inbounds %struct.request_rec, ptr %250, i32 0, i32 56, !dbg !2418
  %251 = load ptr, ptr %log427, align 8, !dbg !2418, !tbaa !1495
  br label %cond.end440, !dbg !2418

cond.false428:                                    ; preds = %cond.true423
  %252 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %connection429 = getelementptr inbounds %struct.request_rec, ptr %252, i32 0, i32 1, !dbg !2418
  %253 = load ptr, ptr %connection429, align 8, !dbg !2418, !tbaa !1496
  %log430 = getelementptr inbounds %struct.conn_rec, ptr %253, i32 0, i32 24, !dbg !2418
  %254 = load ptr, ptr %log430, align 8, !dbg !2418, !tbaa !1497
  %tobool431 = icmp ne ptr %254, null, !dbg !2418
  br i1 %tobool431, label %cond.true432, label %cond.false435, !dbg !2418

cond.true432:                                     ; preds = %cond.false428
  %255 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %connection433 = getelementptr inbounds %struct.request_rec, ptr %255, i32 0, i32 1, !dbg !2418
  %256 = load ptr, ptr %connection433, align 8, !dbg !2418, !tbaa !1496
  %log434 = getelementptr inbounds %struct.conn_rec, ptr %256, i32 0, i32 24, !dbg !2418
  %257 = load ptr, ptr %log434, align 8, !dbg !2418, !tbaa !1497
  br label %cond.end438, !dbg !2418

cond.false435:                                    ; preds = %cond.false428
  %258 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %server436 = getelementptr inbounds %struct.request_rec, ptr %258, i32 0, i32 2, !dbg !2418
  %259 = load ptr, ptr %server436, align 8, !dbg !2418, !tbaa !1472
  %log437 = getelementptr inbounds %struct.server_rec, ptr %259, i32 0, i32 4, !dbg !2418
  br label %cond.end438, !dbg !2418

cond.end438:                                      ; preds = %cond.false435, %cond.true432
  %cond439 = phi ptr [ %257, %cond.true432 ], [ %log437, %cond.false435 ], !dbg !2418
  br label %cond.end440, !dbg !2418

cond.end440:                                      ; preds = %cond.end438, %cond.true426
  %cond441 = phi ptr [ %251, %cond.true426 ], [ %cond439, %cond.end438 ], !dbg !2418
  %level442 = getelementptr inbounds %struct.ap_logconf, ptr %cond441, i32 0, i32 1, !dbg !2418
  %260 = load i32, ptr %level442, align 8, !dbg !2418, !tbaa !1500
  br label %cond.end470, !dbg !2418

cond.false443:                                    ; preds = %cond.end416
  %261 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %log444 = getelementptr inbounds %struct.request_rec, ptr %261, i32 0, i32 56, !dbg !2418
  %262 = load ptr, ptr %log444, align 8, !dbg !2418, !tbaa !1495
  %tobool445 = icmp ne ptr %262, null, !dbg !2418
  br i1 %tobool445, label %cond.true446, label %cond.false448, !dbg !2418

cond.true446:                                     ; preds = %cond.false443
  %263 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %log447 = getelementptr inbounds %struct.request_rec, ptr %263, i32 0, i32 56, !dbg !2418
  %264 = load ptr, ptr %log447, align 8, !dbg !2418, !tbaa !1495
  br label %cond.end460, !dbg !2418

cond.false448:                                    ; preds = %cond.false443
  %265 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %connection449 = getelementptr inbounds %struct.request_rec, ptr %265, i32 0, i32 1, !dbg !2418
  %266 = load ptr, ptr %connection449, align 8, !dbg !2418, !tbaa !1496
  %log450 = getelementptr inbounds %struct.conn_rec, ptr %266, i32 0, i32 24, !dbg !2418
  %267 = load ptr, ptr %log450, align 8, !dbg !2418, !tbaa !1497
  %tobool451 = icmp ne ptr %267, null, !dbg !2418
  br i1 %tobool451, label %cond.true452, label %cond.false455, !dbg !2418

cond.true452:                                     ; preds = %cond.false448
  %268 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %connection453 = getelementptr inbounds %struct.request_rec, ptr %268, i32 0, i32 1, !dbg !2418
  %269 = load ptr, ptr %connection453, align 8, !dbg !2418, !tbaa !1496
  %log454 = getelementptr inbounds %struct.conn_rec, ptr %269, i32 0, i32 24, !dbg !2418
  %270 = load ptr, ptr %log454, align 8, !dbg !2418, !tbaa !1497
  br label %cond.end458, !dbg !2418

cond.false455:                                    ; preds = %cond.false448
  %271 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  %server456 = getelementptr inbounds %struct.request_rec, ptr %271, i32 0, i32 2, !dbg !2418
  %272 = load ptr, ptr %server456, align 8, !dbg !2418, !tbaa !1472
  %log457 = getelementptr inbounds %struct.server_rec, ptr %272, i32 0, i32 4, !dbg !2418
  br label %cond.end458, !dbg !2418

cond.end458:                                      ; preds = %cond.false455, %cond.true452
  %cond459 = phi ptr [ %270, %cond.true452 ], [ %log457, %cond.false455 ], !dbg !2418
  br label %cond.end460, !dbg !2418

cond.end460:                                      ; preds = %cond.end458, %cond.true446
  %cond461 = phi ptr [ %264, %cond.true446 ], [ %cond459, %cond.end458 ], !dbg !2418
  %module_levels462 = getelementptr inbounds %struct.ap_logconf, ptr %cond461, i32 0, i32 0, !dbg !2418
  %273 = load ptr, ptr %module_levels462, align 8, !dbg !2418, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true463, label %cond.false464, !dbg !2418

cond.true463:                                     ; preds = %cond.end460
  %274 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2418, !tbaa !852
  br label %cond.end465, !dbg !2418

cond.false464:                                    ; preds = %cond.end460
  br label %cond.end465, !dbg !2418

cond.end465:                                      ; preds = %cond.false464, %cond.true463
  %cond466 = phi i32 [ %274, %cond.true463 ], [ -1, %cond.false464 ], !dbg !2418
  %idxprom467 = sext i32 %cond466 to i64, !dbg !2418
  %arrayidx468 = getelementptr inbounds i8, ptr %273, i64 %idxprom467, !dbg !2418
  %275 = load i8, ptr %arrayidx468, align 1, !dbg !2418, !tbaa !1005
  %conv469 = sext i8 %275 to i32, !dbg !2418
  br label %cond.end470, !dbg !2418

cond.end470:                                      ; preds = %cond.end465, %cond.end440
  %cond471 = phi i32 [ %260, %cond.end440 ], [ %conv469, %cond.end465 ], !dbg !2418
  %cmp472 = icmp sge i32 %cond471, 7, !dbg !2418
  br i1 %cmp472, label %if.then474, label %if.end479, !dbg !2421

if.then474:                                       ; preds = %cond.end470
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true475, label %cond.false476, !dbg !2418

cond.true475:                                     ; preds = %if.then474
  %276 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2418, !tbaa !852
  br label %cond.end477, !dbg !2418

cond.false476:                                    ; preds = %if.then474
  br label %cond.end477, !dbg !2418

cond.end477:                                      ; preds = %cond.false476, %cond.true475
  %cond478 = phi i32 [ %276, %cond.true475 ], [ -1, %cond.false476 ], !dbg !2418
  %277 = load i32, ptr %res, align 4, !dbg !2418, !tbaa !852
  %278 = load ptr, ptr %r.addr, align 8, !dbg !2418, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 424, i32 noundef %cond478, i32 noundef 7, i32 noundef %277, ptr noundef %278, ptr noundef @.str.31), !dbg !2418
  br label %if.end479, !dbg !2418

if.end479:                                        ; preds = %cond.end477, %cond.end470
  br label %do.cond480, !dbg !2421

do.cond480:                                       ; preds = %if.end479
  br label %do.end481, !dbg !2421

do.end481:                                        ; preds = %do.cond480
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2422

if.else482:                                       ; preds = %if.else
  %279 = load i32, ptr %res, align 4, !dbg !2423, !tbaa !852
  %cmp483 = icmp eq i32 %279, 100003, !dbg !2423
  br i1 %cmp483, label %if.then485, label %if.else603, !dbg !2425

if.then485:                                       ; preds = %if.else482
  br label %do.body486, !dbg !2426

do.body486:                                       ; preds = %if.then485
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true487, label %cond.false488, !dbg !2428

cond.true487:                                     ; preds = %do.body486
  %280 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2428, !tbaa !852
  br label %cond.end489, !dbg !2428

cond.false488:                                    ; preds = %do.body486
  br label %cond.end489, !dbg !2428

cond.end489:                                      ; preds = %cond.false488, %cond.true487
  %cond490 = phi i32 [ %280, %cond.true487 ], [ -1, %cond.false488 ], !dbg !2428
  %cmp491 = icmp slt i32 %cond490, 0, !dbg !2428
  br i1 %cmp491, label %cond.true544, label %lor.lhs.false493, !dbg !2428

lor.lhs.false493:                                 ; preds = %cond.end489
  %281 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %log494 = getelementptr inbounds %struct.request_rec, ptr %281, i32 0, i32 56, !dbg !2428
  %282 = load ptr, ptr %log494, align 8, !dbg !2428, !tbaa !1495
  %tobool495 = icmp ne ptr %282, null, !dbg !2428
  br i1 %tobool495, label %cond.true496, label %cond.false498, !dbg !2428

cond.true496:                                     ; preds = %lor.lhs.false493
  %283 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %log497 = getelementptr inbounds %struct.request_rec, ptr %283, i32 0, i32 56, !dbg !2428
  %284 = load ptr, ptr %log497, align 8, !dbg !2428, !tbaa !1495
  br label %cond.end510, !dbg !2428

cond.false498:                                    ; preds = %lor.lhs.false493
  %285 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %connection499 = getelementptr inbounds %struct.request_rec, ptr %285, i32 0, i32 1, !dbg !2428
  %286 = load ptr, ptr %connection499, align 8, !dbg !2428, !tbaa !1496
  %log500 = getelementptr inbounds %struct.conn_rec, ptr %286, i32 0, i32 24, !dbg !2428
  %287 = load ptr, ptr %log500, align 8, !dbg !2428, !tbaa !1497
  %tobool501 = icmp ne ptr %287, null, !dbg !2428
  br i1 %tobool501, label %cond.true502, label %cond.false505, !dbg !2428

cond.true502:                                     ; preds = %cond.false498
  %288 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %connection503 = getelementptr inbounds %struct.request_rec, ptr %288, i32 0, i32 1, !dbg !2428
  %289 = load ptr, ptr %connection503, align 8, !dbg !2428, !tbaa !1496
  %log504 = getelementptr inbounds %struct.conn_rec, ptr %289, i32 0, i32 24, !dbg !2428
  %290 = load ptr, ptr %log504, align 8, !dbg !2428, !tbaa !1497
  br label %cond.end508, !dbg !2428

cond.false505:                                    ; preds = %cond.false498
  %291 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %server506 = getelementptr inbounds %struct.request_rec, ptr %291, i32 0, i32 2, !dbg !2428
  %292 = load ptr, ptr %server506, align 8, !dbg !2428, !tbaa !1472
  %log507 = getelementptr inbounds %struct.server_rec, ptr %292, i32 0, i32 4, !dbg !2428
  br label %cond.end508, !dbg !2428

cond.end508:                                      ; preds = %cond.false505, %cond.true502
  %cond509 = phi ptr [ %290, %cond.true502 ], [ %log507, %cond.false505 ], !dbg !2428
  br label %cond.end510, !dbg !2428

cond.end510:                                      ; preds = %cond.end508, %cond.true496
  %cond511 = phi ptr [ %284, %cond.true496 ], [ %cond509, %cond.end508 ], !dbg !2428
  %module_levels512 = getelementptr inbounds %struct.ap_logconf, ptr %cond511, i32 0, i32 0, !dbg !2428
  %293 = load ptr, ptr %module_levels512, align 8, !dbg !2428, !tbaa !1499
  %cmp513 = icmp eq ptr %293, null, !dbg !2428
  br i1 %cmp513, label %cond.true544, label %lor.lhs.false515, !dbg !2428

lor.lhs.false515:                                 ; preds = %cond.end510
  %294 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %log516 = getelementptr inbounds %struct.request_rec, ptr %294, i32 0, i32 56, !dbg !2428
  %295 = load ptr, ptr %log516, align 8, !dbg !2428, !tbaa !1495
  %tobool517 = icmp ne ptr %295, null, !dbg !2428
  br i1 %tobool517, label %cond.true518, label %cond.false520, !dbg !2428

cond.true518:                                     ; preds = %lor.lhs.false515
  %296 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %log519 = getelementptr inbounds %struct.request_rec, ptr %296, i32 0, i32 56, !dbg !2428
  %297 = load ptr, ptr %log519, align 8, !dbg !2428, !tbaa !1495
  br label %cond.end532, !dbg !2428

cond.false520:                                    ; preds = %lor.lhs.false515
  %298 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %connection521 = getelementptr inbounds %struct.request_rec, ptr %298, i32 0, i32 1, !dbg !2428
  %299 = load ptr, ptr %connection521, align 8, !dbg !2428, !tbaa !1496
  %log522 = getelementptr inbounds %struct.conn_rec, ptr %299, i32 0, i32 24, !dbg !2428
  %300 = load ptr, ptr %log522, align 8, !dbg !2428, !tbaa !1497
  %tobool523 = icmp ne ptr %300, null, !dbg !2428
  br i1 %tobool523, label %cond.true524, label %cond.false527, !dbg !2428

cond.true524:                                     ; preds = %cond.false520
  %301 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %connection525 = getelementptr inbounds %struct.request_rec, ptr %301, i32 0, i32 1, !dbg !2428
  %302 = load ptr, ptr %connection525, align 8, !dbg !2428, !tbaa !1496
  %log526 = getelementptr inbounds %struct.conn_rec, ptr %302, i32 0, i32 24, !dbg !2428
  %303 = load ptr, ptr %log526, align 8, !dbg !2428, !tbaa !1497
  br label %cond.end530, !dbg !2428

cond.false527:                                    ; preds = %cond.false520
  %304 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %server528 = getelementptr inbounds %struct.request_rec, ptr %304, i32 0, i32 2, !dbg !2428
  %305 = load ptr, ptr %server528, align 8, !dbg !2428, !tbaa !1472
  %log529 = getelementptr inbounds %struct.server_rec, ptr %305, i32 0, i32 4, !dbg !2428
  br label %cond.end530, !dbg !2428

cond.end530:                                      ; preds = %cond.false527, %cond.true524
  %cond531 = phi ptr [ %303, %cond.true524 ], [ %log529, %cond.false527 ], !dbg !2428
  br label %cond.end532, !dbg !2428

cond.end532:                                      ; preds = %cond.end530, %cond.true518
  %cond533 = phi ptr [ %297, %cond.true518 ], [ %cond531, %cond.end530 ], !dbg !2428
  %module_levels534 = getelementptr inbounds %struct.ap_logconf, ptr %cond533, i32 0, i32 0, !dbg !2428
  %306 = load ptr, ptr %module_levels534, align 8, !dbg !2428, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true535, label %cond.false536, !dbg !2428

cond.true535:                                     ; preds = %cond.end532
  %307 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2428, !tbaa !852
  br label %cond.end537, !dbg !2428

cond.false536:                                    ; preds = %cond.end532
  br label %cond.end537, !dbg !2428

cond.end537:                                      ; preds = %cond.false536, %cond.true535
  %cond538 = phi i32 [ %307, %cond.true535 ], [ -1, %cond.false536 ], !dbg !2428
  %idxprom539 = sext i32 %cond538 to i64, !dbg !2428
  %arrayidx540 = getelementptr inbounds i8, ptr %306, i64 %idxprom539, !dbg !2428
  %308 = load i8, ptr %arrayidx540, align 1, !dbg !2428, !tbaa !1005
  %conv541 = sext i8 %308 to i32, !dbg !2428
  %cmp542 = icmp slt i32 %conv541, 0, !dbg !2428
  br i1 %cmp542, label %cond.true544, label %cond.false564, !dbg !2428

cond.true544:                                     ; preds = %cond.end537, %cond.end510, %cond.end489
  %309 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %log545 = getelementptr inbounds %struct.request_rec, ptr %309, i32 0, i32 56, !dbg !2428
  %310 = load ptr, ptr %log545, align 8, !dbg !2428, !tbaa !1495
  %tobool546 = icmp ne ptr %310, null, !dbg !2428
  br i1 %tobool546, label %cond.true547, label %cond.false549, !dbg !2428

cond.true547:                                     ; preds = %cond.true544
  %311 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %log548 = getelementptr inbounds %struct.request_rec, ptr %311, i32 0, i32 56, !dbg !2428
  %312 = load ptr, ptr %log548, align 8, !dbg !2428, !tbaa !1495
  br label %cond.end561, !dbg !2428

cond.false549:                                    ; preds = %cond.true544
  %313 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %connection550 = getelementptr inbounds %struct.request_rec, ptr %313, i32 0, i32 1, !dbg !2428
  %314 = load ptr, ptr %connection550, align 8, !dbg !2428, !tbaa !1496
  %log551 = getelementptr inbounds %struct.conn_rec, ptr %314, i32 0, i32 24, !dbg !2428
  %315 = load ptr, ptr %log551, align 8, !dbg !2428, !tbaa !1497
  %tobool552 = icmp ne ptr %315, null, !dbg !2428
  br i1 %tobool552, label %cond.true553, label %cond.false556, !dbg !2428

cond.true553:                                     ; preds = %cond.false549
  %316 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %connection554 = getelementptr inbounds %struct.request_rec, ptr %316, i32 0, i32 1, !dbg !2428
  %317 = load ptr, ptr %connection554, align 8, !dbg !2428, !tbaa !1496
  %log555 = getelementptr inbounds %struct.conn_rec, ptr %317, i32 0, i32 24, !dbg !2428
  %318 = load ptr, ptr %log555, align 8, !dbg !2428, !tbaa !1497
  br label %cond.end559, !dbg !2428

cond.false556:                                    ; preds = %cond.false549
  %319 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %server557 = getelementptr inbounds %struct.request_rec, ptr %319, i32 0, i32 2, !dbg !2428
  %320 = load ptr, ptr %server557, align 8, !dbg !2428, !tbaa !1472
  %log558 = getelementptr inbounds %struct.server_rec, ptr %320, i32 0, i32 4, !dbg !2428
  br label %cond.end559, !dbg !2428

cond.end559:                                      ; preds = %cond.false556, %cond.true553
  %cond560 = phi ptr [ %318, %cond.true553 ], [ %log558, %cond.false556 ], !dbg !2428
  br label %cond.end561, !dbg !2428

cond.end561:                                      ; preds = %cond.end559, %cond.true547
  %cond562 = phi ptr [ %312, %cond.true547 ], [ %cond560, %cond.end559 ], !dbg !2428
  %level563 = getelementptr inbounds %struct.ap_logconf, ptr %cond562, i32 0, i32 1, !dbg !2428
  %321 = load i32, ptr %level563, align 8, !dbg !2428, !tbaa !1500
  br label %cond.end591, !dbg !2428

cond.false564:                                    ; preds = %cond.end537
  %322 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %log565 = getelementptr inbounds %struct.request_rec, ptr %322, i32 0, i32 56, !dbg !2428
  %323 = load ptr, ptr %log565, align 8, !dbg !2428, !tbaa !1495
  %tobool566 = icmp ne ptr %323, null, !dbg !2428
  br i1 %tobool566, label %cond.true567, label %cond.false569, !dbg !2428

cond.true567:                                     ; preds = %cond.false564
  %324 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %log568 = getelementptr inbounds %struct.request_rec, ptr %324, i32 0, i32 56, !dbg !2428
  %325 = load ptr, ptr %log568, align 8, !dbg !2428, !tbaa !1495
  br label %cond.end581, !dbg !2428

cond.false569:                                    ; preds = %cond.false564
  %326 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %connection570 = getelementptr inbounds %struct.request_rec, ptr %326, i32 0, i32 1, !dbg !2428
  %327 = load ptr, ptr %connection570, align 8, !dbg !2428, !tbaa !1496
  %log571 = getelementptr inbounds %struct.conn_rec, ptr %327, i32 0, i32 24, !dbg !2428
  %328 = load ptr, ptr %log571, align 8, !dbg !2428, !tbaa !1497
  %tobool572 = icmp ne ptr %328, null, !dbg !2428
  br i1 %tobool572, label %cond.true573, label %cond.false576, !dbg !2428

cond.true573:                                     ; preds = %cond.false569
  %329 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %connection574 = getelementptr inbounds %struct.request_rec, ptr %329, i32 0, i32 1, !dbg !2428
  %330 = load ptr, ptr %connection574, align 8, !dbg !2428, !tbaa !1496
  %log575 = getelementptr inbounds %struct.conn_rec, ptr %330, i32 0, i32 24, !dbg !2428
  %331 = load ptr, ptr %log575, align 8, !dbg !2428, !tbaa !1497
  br label %cond.end579, !dbg !2428

cond.false576:                                    ; preds = %cond.false569
  %332 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  %server577 = getelementptr inbounds %struct.request_rec, ptr %332, i32 0, i32 2, !dbg !2428
  %333 = load ptr, ptr %server577, align 8, !dbg !2428, !tbaa !1472
  %log578 = getelementptr inbounds %struct.server_rec, ptr %333, i32 0, i32 4, !dbg !2428
  br label %cond.end579, !dbg !2428

cond.end579:                                      ; preds = %cond.false576, %cond.true573
  %cond580 = phi ptr [ %331, %cond.true573 ], [ %log578, %cond.false576 ], !dbg !2428
  br label %cond.end581, !dbg !2428

cond.end581:                                      ; preds = %cond.end579, %cond.true567
  %cond582 = phi ptr [ %325, %cond.true567 ], [ %cond580, %cond.end579 ], !dbg !2428
  %module_levels583 = getelementptr inbounds %struct.ap_logconf, ptr %cond582, i32 0, i32 0, !dbg !2428
  %334 = load ptr, ptr %module_levels583, align 8, !dbg !2428, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true584, label %cond.false585, !dbg !2428

cond.true584:                                     ; preds = %cond.end581
  %335 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2428, !tbaa !852
  br label %cond.end586, !dbg !2428

cond.false585:                                    ; preds = %cond.end581
  br label %cond.end586, !dbg !2428

cond.end586:                                      ; preds = %cond.false585, %cond.true584
  %cond587 = phi i32 [ %335, %cond.true584 ], [ -1, %cond.false585 ], !dbg !2428
  %idxprom588 = sext i32 %cond587 to i64, !dbg !2428
  %arrayidx589 = getelementptr inbounds i8, ptr %334, i64 %idxprom588, !dbg !2428
  %336 = load i8, ptr %arrayidx589, align 1, !dbg !2428, !tbaa !1005
  %conv590 = sext i8 %336 to i32, !dbg !2428
  br label %cond.end591, !dbg !2428

cond.end591:                                      ; preds = %cond.end586, %cond.end561
  %cond592 = phi i32 [ %321, %cond.end561 ], [ %conv590, %cond.end586 ], !dbg !2428
  %cmp593 = icmp sge i32 %cond592, 7, !dbg !2428
  br i1 %cmp593, label %if.then595, label %if.end600, !dbg !2431

if.then595:                                       ; preds = %cond.end591
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true596, label %cond.false597, !dbg !2428

cond.true596:                                     ; preds = %if.then595
  %337 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2428, !tbaa !852
  br label %cond.end598, !dbg !2428

cond.false597:                                    ; preds = %if.then595
  br label %cond.end598, !dbg !2428

cond.end598:                                      ; preds = %cond.false597, %cond.true596
  %cond599 = phi i32 [ %337, %cond.true596 ], [ -1, %cond.false597 ], !dbg !2428
  %338 = load i32, ptr %res, align 4, !dbg !2428, !tbaa !852
  %339 = load ptr, ptr %r.addr, align 8, !dbg !2428, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 429, i32 noundef %cond599, i32 noundef 7, i32 noundef %338, ptr noundef %339, ptr noundef @.str.32), !dbg !2428
  br label %if.end600, !dbg !2428

if.end600:                                        ; preds = %cond.end598, %cond.end591
  br label %do.cond601, !dbg !2431

do.cond601:                                       ; preds = %if.end600
  br label %do.end602, !dbg !2431

do.end602:                                        ; preds = %do.cond601
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2432

if.else603:                                       ; preds = %if.else482
  %340 = load i32, ptr %res, align 4, !dbg !2433, !tbaa !852
  %cmp604 = icmp ne i32 0, %340, !dbg !2435
  br i1 %cmp604, label %if.then606, label %if.end724, !dbg !2436

if.then606:                                       ; preds = %if.else603
  br label %do.body607, !dbg !2437

do.body607:                                       ; preds = %if.then606
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true608, label %cond.false609, !dbg !2439

cond.true608:                                     ; preds = %do.body607
  %341 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2439, !tbaa !852
  br label %cond.end610, !dbg !2439

cond.false609:                                    ; preds = %do.body607
  br label %cond.end610, !dbg !2439

cond.end610:                                      ; preds = %cond.false609, %cond.true608
  %cond611 = phi i32 [ %341, %cond.true608 ], [ -1, %cond.false609 ], !dbg !2439
  %cmp612 = icmp slt i32 %cond611, 0, !dbg !2439
  br i1 %cmp612, label %cond.true665, label %lor.lhs.false614, !dbg !2439

lor.lhs.false614:                                 ; preds = %cond.end610
  %342 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %log615 = getelementptr inbounds %struct.request_rec, ptr %342, i32 0, i32 56, !dbg !2439
  %343 = load ptr, ptr %log615, align 8, !dbg !2439, !tbaa !1495
  %tobool616 = icmp ne ptr %343, null, !dbg !2439
  br i1 %tobool616, label %cond.true617, label %cond.false619, !dbg !2439

cond.true617:                                     ; preds = %lor.lhs.false614
  %344 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %log618 = getelementptr inbounds %struct.request_rec, ptr %344, i32 0, i32 56, !dbg !2439
  %345 = load ptr, ptr %log618, align 8, !dbg !2439, !tbaa !1495
  br label %cond.end631, !dbg !2439

cond.false619:                                    ; preds = %lor.lhs.false614
  %346 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %connection620 = getelementptr inbounds %struct.request_rec, ptr %346, i32 0, i32 1, !dbg !2439
  %347 = load ptr, ptr %connection620, align 8, !dbg !2439, !tbaa !1496
  %log621 = getelementptr inbounds %struct.conn_rec, ptr %347, i32 0, i32 24, !dbg !2439
  %348 = load ptr, ptr %log621, align 8, !dbg !2439, !tbaa !1497
  %tobool622 = icmp ne ptr %348, null, !dbg !2439
  br i1 %tobool622, label %cond.true623, label %cond.false626, !dbg !2439

cond.true623:                                     ; preds = %cond.false619
  %349 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %connection624 = getelementptr inbounds %struct.request_rec, ptr %349, i32 0, i32 1, !dbg !2439
  %350 = load ptr, ptr %connection624, align 8, !dbg !2439, !tbaa !1496
  %log625 = getelementptr inbounds %struct.conn_rec, ptr %350, i32 0, i32 24, !dbg !2439
  %351 = load ptr, ptr %log625, align 8, !dbg !2439, !tbaa !1497
  br label %cond.end629, !dbg !2439

cond.false626:                                    ; preds = %cond.false619
  %352 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %server627 = getelementptr inbounds %struct.request_rec, ptr %352, i32 0, i32 2, !dbg !2439
  %353 = load ptr, ptr %server627, align 8, !dbg !2439, !tbaa !1472
  %log628 = getelementptr inbounds %struct.server_rec, ptr %353, i32 0, i32 4, !dbg !2439
  br label %cond.end629, !dbg !2439

cond.end629:                                      ; preds = %cond.false626, %cond.true623
  %cond630 = phi ptr [ %351, %cond.true623 ], [ %log628, %cond.false626 ], !dbg !2439
  br label %cond.end631, !dbg !2439

cond.end631:                                      ; preds = %cond.end629, %cond.true617
  %cond632 = phi ptr [ %345, %cond.true617 ], [ %cond630, %cond.end629 ], !dbg !2439
  %module_levels633 = getelementptr inbounds %struct.ap_logconf, ptr %cond632, i32 0, i32 0, !dbg !2439
  %354 = load ptr, ptr %module_levels633, align 8, !dbg !2439, !tbaa !1499
  %cmp634 = icmp eq ptr %354, null, !dbg !2439
  br i1 %cmp634, label %cond.true665, label %lor.lhs.false636, !dbg !2439

lor.lhs.false636:                                 ; preds = %cond.end631
  %355 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %log637 = getelementptr inbounds %struct.request_rec, ptr %355, i32 0, i32 56, !dbg !2439
  %356 = load ptr, ptr %log637, align 8, !dbg !2439, !tbaa !1495
  %tobool638 = icmp ne ptr %356, null, !dbg !2439
  br i1 %tobool638, label %cond.true639, label %cond.false641, !dbg !2439

cond.true639:                                     ; preds = %lor.lhs.false636
  %357 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %log640 = getelementptr inbounds %struct.request_rec, ptr %357, i32 0, i32 56, !dbg !2439
  %358 = load ptr, ptr %log640, align 8, !dbg !2439, !tbaa !1495
  br label %cond.end653, !dbg !2439

cond.false641:                                    ; preds = %lor.lhs.false636
  %359 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %connection642 = getelementptr inbounds %struct.request_rec, ptr %359, i32 0, i32 1, !dbg !2439
  %360 = load ptr, ptr %connection642, align 8, !dbg !2439, !tbaa !1496
  %log643 = getelementptr inbounds %struct.conn_rec, ptr %360, i32 0, i32 24, !dbg !2439
  %361 = load ptr, ptr %log643, align 8, !dbg !2439, !tbaa !1497
  %tobool644 = icmp ne ptr %361, null, !dbg !2439
  br i1 %tobool644, label %cond.true645, label %cond.false648, !dbg !2439

cond.true645:                                     ; preds = %cond.false641
  %362 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %connection646 = getelementptr inbounds %struct.request_rec, ptr %362, i32 0, i32 1, !dbg !2439
  %363 = load ptr, ptr %connection646, align 8, !dbg !2439, !tbaa !1496
  %log647 = getelementptr inbounds %struct.conn_rec, ptr %363, i32 0, i32 24, !dbg !2439
  %364 = load ptr, ptr %log647, align 8, !dbg !2439, !tbaa !1497
  br label %cond.end651, !dbg !2439

cond.false648:                                    ; preds = %cond.false641
  %365 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %server649 = getelementptr inbounds %struct.request_rec, ptr %365, i32 0, i32 2, !dbg !2439
  %366 = load ptr, ptr %server649, align 8, !dbg !2439, !tbaa !1472
  %log650 = getelementptr inbounds %struct.server_rec, ptr %366, i32 0, i32 4, !dbg !2439
  br label %cond.end651, !dbg !2439

cond.end651:                                      ; preds = %cond.false648, %cond.true645
  %cond652 = phi ptr [ %364, %cond.true645 ], [ %log650, %cond.false648 ], !dbg !2439
  br label %cond.end653, !dbg !2439

cond.end653:                                      ; preds = %cond.end651, %cond.true639
  %cond654 = phi ptr [ %358, %cond.true639 ], [ %cond652, %cond.end651 ], !dbg !2439
  %module_levels655 = getelementptr inbounds %struct.ap_logconf, ptr %cond654, i32 0, i32 0, !dbg !2439
  %367 = load ptr, ptr %module_levels655, align 8, !dbg !2439, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true656, label %cond.false657, !dbg !2439

cond.true656:                                     ; preds = %cond.end653
  %368 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2439, !tbaa !852
  br label %cond.end658, !dbg !2439

cond.false657:                                    ; preds = %cond.end653
  br label %cond.end658, !dbg !2439

cond.end658:                                      ; preds = %cond.false657, %cond.true656
  %cond659 = phi i32 [ %368, %cond.true656 ], [ -1, %cond.false657 ], !dbg !2439
  %idxprom660 = sext i32 %cond659 to i64, !dbg !2439
  %arrayidx661 = getelementptr inbounds i8, ptr %367, i64 %idxprom660, !dbg !2439
  %369 = load i8, ptr %arrayidx661, align 1, !dbg !2439, !tbaa !1005
  %conv662 = sext i8 %369 to i32, !dbg !2439
  %cmp663 = icmp slt i32 %conv662, 0, !dbg !2439
  br i1 %cmp663, label %cond.true665, label %cond.false685, !dbg !2439

cond.true665:                                     ; preds = %cond.end658, %cond.end631, %cond.end610
  %370 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %log666 = getelementptr inbounds %struct.request_rec, ptr %370, i32 0, i32 56, !dbg !2439
  %371 = load ptr, ptr %log666, align 8, !dbg !2439, !tbaa !1495
  %tobool667 = icmp ne ptr %371, null, !dbg !2439
  br i1 %tobool667, label %cond.true668, label %cond.false670, !dbg !2439

cond.true668:                                     ; preds = %cond.true665
  %372 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %log669 = getelementptr inbounds %struct.request_rec, ptr %372, i32 0, i32 56, !dbg !2439
  %373 = load ptr, ptr %log669, align 8, !dbg !2439, !tbaa !1495
  br label %cond.end682, !dbg !2439

cond.false670:                                    ; preds = %cond.true665
  %374 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %connection671 = getelementptr inbounds %struct.request_rec, ptr %374, i32 0, i32 1, !dbg !2439
  %375 = load ptr, ptr %connection671, align 8, !dbg !2439, !tbaa !1496
  %log672 = getelementptr inbounds %struct.conn_rec, ptr %375, i32 0, i32 24, !dbg !2439
  %376 = load ptr, ptr %log672, align 8, !dbg !2439, !tbaa !1497
  %tobool673 = icmp ne ptr %376, null, !dbg !2439
  br i1 %tobool673, label %cond.true674, label %cond.false677, !dbg !2439

cond.true674:                                     ; preds = %cond.false670
  %377 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %connection675 = getelementptr inbounds %struct.request_rec, ptr %377, i32 0, i32 1, !dbg !2439
  %378 = load ptr, ptr %connection675, align 8, !dbg !2439, !tbaa !1496
  %log676 = getelementptr inbounds %struct.conn_rec, ptr %378, i32 0, i32 24, !dbg !2439
  %379 = load ptr, ptr %log676, align 8, !dbg !2439, !tbaa !1497
  br label %cond.end680, !dbg !2439

cond.false677:                                    ; preds = %cond.false670
  %380 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %server678 = getelementptr inbounds %struct.request_rec, ptr %380, i32 0, i32 2, !dbg !2439
  %381 = load ptr, ptr %server678, align 8, !dbg !2439, !tbaa !1472
  %log679 = getelementptr inbounds %struct.server_rec, ptr %381, i32 0, i32 4, !dbg !2439
  br label %cond.end680, !dbg !2439

cond.end680:                                      ; preds = %cond.false677, %cond.true674
  %cond681 = phi ptr [ %379, %cond.true674 ], [ %log679, %cond.false677 ], !dbg !2439
  br label %cond.end682, !dbg !2439

cond.end682:                                      ; preds = %cond.end680, %cond.true668
  %cond683 = phi ptr [ %373, %cond.true668 ], [ %cond681, %cond.end680 ], !dbg !2439
  %level684 = getelementptr inbounds %struct.ap_logconf, ptr %cond683, i32 0, i32 1, !dbg !2439
  %382 = load i32, ptr %level684, align 8, !dbg !2439, !tbaa !1500
  br label %cond.end712, !dbg !2439

cond.false685:                                    ; preds = %cond.end658
  %383 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %log686 = getelementptr inbounds %struct.request_rec, ptr %383, i32 0, i32 56, !dbg !2439
  %384 = load ptr, ptr %log686, align 8, !dbg !2439, !tbaa !1495
  %tobool687 = icmp ne ptr %384, null, !dbg !2439
  br i1 %tobool687, label %cond.true688, label %cond.false690, !dbg !2439

cond.true688:                                     ; preds = %cond.false685
  %385 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %log689 = getelementptr inbounds %struct.request_rec, ptr %385, i32 0, i32 56, !dbg !2439
  %386 = load ptr, ptr %log689, align 8, !dbg !2439, !tbaa !1495
  br label %cond.end702, !dbg !2439

cond.false690:                                    ; preds = %cond.false685
  %387 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %connection691 = getelementptr inbounds %struct.request_rec, ptr %387, i32 0, i32 1, !dbg !2439
  %388 = load ptr, ptr %connection691, align 8, !dbg !2439, !tbaa !1496
  %log692 = getelementptr inbounds %struct.conn_rec, ptr %388, i32 0, i32 24, !dbg !2439
  %389 = load ptr, ptr %log692, align 8, !dbg !2439, !tbaa !1497
  %tobool693 = icmp ne ptr %389, null, !dbg !2439
  br i1 %tobool693, label %cond.true694, label %cond.false697, !dbg !2439

cond.true694:                                     ; preds = %cond.false690
  %390 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %connection695 = getelementptr inbounds %struct.request_rec, ptr %390, i32 0, i32 1, !dbg !2439
  %391 = load ptr, ptr %connection695, align 8, !dbg !2439, !tbaa !1496
  %log696 = getelementptr inbounds %struct.conn_rec, ptr %391, i32 0, i32 24, !dbg !2439
  %392 = load ptr, ptr %log696, align 8, !dbg !2439, !tbaa !1497
  br label %cond.end700, !dbg !2439

cond.false697:                                    ; preds = %cond.false690
  %393 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  %server698 = getelementptr inbounds %struct.request_rec, ptr %393, i32 0, i32 2, !dbg !2439
  %394 = load ptr, ptr %server698, align 8, !dbg !2439, !tbaa !1472
  %log699 = getelementptr inbounds %struct.server_rec, ptr %394, i32 0, i32 4, !dbg !2439
  br label %cond.end700, !dbg !2439

cond.end700:                                      ; preds = %cond.false697, %cond.true694
  %cond701 = phi ptr [ %392, %cond.true694 ], [ %log699, %cond.false697 ], !dbg !2439
  br label %cond.end702, !dbg !2439

cond.end702:                                      ; preds = %cond.end700, %cond.true688
  %cond703 = phi ptr [ %386, %cond.true688 ], [ %cond701, %cond.end700 ], !dbg !2439
  %module_levels704 = getelementptr inbounds %struct.ap_logconf, ptr %cond703, i32 0, i32 0, !dbg !2439
  %395 = load ptr, ptr %module_levels704, align 8, !dbg !2439, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true705, label %cond.false706, !dbg !2439

cond.true705:                                     ; preds = %cond.end702
  %396 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2439, !tbaa !852
  br label %cond.end707, !dbg !2439

cond.false706:                                    ; preds = %cond.end702
  br label %cond.end707, !dbg !2439

cond.end707:                                      ; preds = %cond.false706, %cond.true705
  %cond708 = phi i32 [ %396, %cond.true705 ], [ -1, %cond.false706 ], !dbg !2439
  %idxprom709 = sext i32 %cond708 to i64, !dbg !2439
  %arrayidx710 = getelementptr inbounds i8, ptr %395, i64 %idxprom709, !dbg !2439
  %397 = load i8, ptr %arrayidx710, align 1, !dbg !2439, !tbaa !1005
  %conv711 = sext i8 %397 to i32, !dbg !2439
  br label %cond.end712, !dbg !2439

cond.end712:                                      ; preds = %cond.end707, %cond.end682
  %cond713 = phi i32 [ %382, %cond.end682 ], [ %conv711, %cond.end707 ], !dbg !2439
  %cmp714 = icmp sge i32 %cond713, 7, !dbg !2439
  br i1 %cmp714, label %if.then716, label %if.end721, !dbg !2442

if.then716:                                       ; preds = %cond.end712
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true717, label %cond.false718, !dbg !2439

cond.true717:                                     ; preds = %if.then716
  %398 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2439, !tbaa !852
  br label %cond.end719, !dbg !2439

cond.false718:                                    ; preds = %if.then716
  br label %cond.end719, !dbg !2439

cond.end719:                                      ; preds = %cond.false718, %cond.true717
  %cond720 = phi i32 [ %398, %cond.true717 ], [ -1, %cond.false718 ], !dbg !2439
  %399 = load i32, ptr %res, align 4, !dbg !2439, !tbaa !852
  %400 = load ptr, ptr %r.addr, align 8, !dbg !2439, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 434, i32 noundef %cond720, i32 noundef 7, i32 noundef %399, ptr noundef %400, ptr noundef @.str.33), !dbg !2439
  br label %if.end721, !dbg !2439

if.end721:                                        ; preds = %cond.end719, %cond.end712
  br label %do.cond722, !dbg !2442

do.cond722:                                       ; preds = %if.end721
  br label %do.end723, !dbg !2442

do.end723:                                        ; preds = %do.cond722
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2443

if.end724:                                        ; preds = %if.else603
  br label %if.end725

if.end725:                                        ; preds = %if.end724
  br label %if.end726

if.end726:                                        ; preds = %if.end725
  br label %if.end727

if.end727:                                        ; preds = %if.end726
  %401 = load i64, ptr %len, align 8, !dbg !2444, !tbaa !1805
  %402 = load i64, ptr %ivSize, align 8, !dbg !2446, !tbaa !1805
  %add = add i64 16, %402, !dbg !2447
  %cmp728 = icmp ult i64 %401, %add, !dbg !2448
  br i1 %cmp728, label %if.then730, label %if.end848, !dbg !2449

if.then730:                                       ; preds = %if.end727
  br label %do.body731, !dbg !2450

do.body731:                                       ; preds = %if.then730
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true732, label %cond.false733, !dbg !2452

cond.true732:                                     ; preds = %do.body731
  %403 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2452, !tbaa !852
  br label %cond.end734, !dbg !2452

cond.false733:                                    ; preds = %do.body731
  br label %cond.end734, !dbg !2452

cond.end734:                                      ; preds = %cond.false733, %cond.true732
  %cond735 = phi i32 [ %403, %cond.true732 ], [ -1, %cond.false733 ], !dbg !2452
  %cmp736 = icmp slt i32 %cond735, 0, !dbg !2452
  br i1 %cmp736, label %cond.true789, label %lor.lhs.false738, !dbg !2452

lor.lhs.false738:                                 ; preds = %cond.end734
  %404 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %log739 = getelementptr inbounds %struct.request_rec, ptr %404, i32 0, i32 56, !dbg !2452
  %405 = load ptr, ptr %log739, align 8, !dbg !2452, !tbaa !1495
  %tobool740 = icmp ne ptr %405, null, !dbg !2452
  br i1 %tobool740, label %cond.true741, label %cond.false743, !dbg !2452

cond.true741:                                     ; preds = %lor.lhs.false738
  %406 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %log742 = getelementptr inbounds %struct.request_rec, ptr %406, i32 0, i32 56, !dbg !2452
  %407 = load ptr, ptr %log742, align 8, !dbg !2452, !tbaa !1495
  br label %cond.end755, !dbg !2452

cond.false743:                                    ; preds = %lor.lhs.false738
  %408 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %connection744 = getelementptr inbounds %struct.request_rec, ptr %408, i32 0, i32 1, !dbg !2452
  %409 = load ptr, ptr %connection744, align 8, !dbg !2452, !tbaa !1496
  %log745 = getelementptr inbounds %struct.conn_rec, ptr %409, i32 0, i32 24, !dbg !2452
  %410 = load ptr, ptr %log745, align 8, !dbg !2452, !tbaa !1497
  %tobool746 = icmp ne ptr %410, null, !dbg !2452
  br i1 %tobool746, label %cond.true747, label %cond.false750, !dbg !2452

cond.true747:                                     ; preds = %cond.false743
  %411 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %connection748 = getelementptr inbounds %struct.request_rec, ptr %411, i32 0, i32 1, !dbg !2452
  %412 = load ptr, ptr %connection748, align 8, !dbg !2452, !tbaa !1496
  %log749 = getelementptr inbounds %struct.conn_rec, ptr %412, i32 0, i32 24, !dbg !2452
  %413 = load ptr, ptr %log749, align 8, !dbg !2452, !tbaa !1497
  br label %cond.end753, !dbg !2452

cond.false750:                                    ; preds = %cond.false743
  %414 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %server751 = getelementptr inbounds %struct.request_rec, ptr %414, i32 0, i32 2, !dbg !2452
  %415 = load ptr, ptr %server751, align 8, !dbg !2452, !tbaa !1472
  %log752 = getelementptr inbounds %struct.server_rec, ptr %415, i32 0, i32 4, !dbg !2452
  br label %cond.end753, !dbg !2452

cond.end753:                                      ; preds = %cond.false750, %cond.true747
  %cond754 = phi ptr [ %413, %cond.true747 ], [ %log752, %cond.false750 ], !dbg !2452
  br label %cond.end755, !dbg !2452

cond.end755:                                      ; preds = %cond.end753, %cond.true741
  %cond756 = phi ptr [ %407, %cond.true741 ], [ %cond754, %cond.end753 ], !dbg !2452
  %module_levels757 = getelementptr inbounds %struct.ap_logconf, ptr %cond756, i32 0, i32 0, !dbg !2452
  %416 = load ptr, ptr %module_levels757, align 8, !dbg !2452, !tbaa !1499
  %cmp758 = icmp eq ptr %416, null, !dbg !2452
  br i1 %cmp758, label %cond.true789, label %lor.lhs.false760, !dbg !2452

lor.lhs.false760:                                 ; preds = %cond.end755
  %417 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %log761 = getelementptr inbounds %struct.request_rec, ptr %417, i32 0, i32 56, !dbg !2452
  %418 = load ptr, ptr %log761, align 8, !dbg !2452, !tbaa !1495
  %tobool762 = icmp ne ptr %418, null, !dbg !2452
  br i1 %tobool762, label %cond.true763, label %cond.false765, !dbg !2452

cond.true763:                                     ; preds = %lor.lhs.false760
  %419 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %log764 = getelementptr inbounds %struct.request_rec, ptr %419, i32 0, i32 56, !dbg !2452
  %420 = load ptr, ptr %log764, align 8, !dbg !2452, !tbaa !1495
  br label %cond.end777, !dbg !2452

cond.false765:                                    ; preds = %lor.lhs.false760
  %421 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %connection766 = getelementptr inbounds %struct.request_rec, ptr %421, i32 0, i32 1, !dbg !2452
  %422 = load ptr, ptr %connection766, align 8, !dbg !2452, !tbaa !1496
  %log767 = getelementptr inbounds %struct.conn_rec, ptr %422, i32 0, i32 24, !dbg !2452
  %423 = load ptr, ptr %log767, align 8, !dbg !2452, !tbaa !1497
  %tobool768 = icmp ne ptr %423, null, !dbg !2452
  br i1 %tobool768, label %cond.true769, label %cond.false772, !dbg !2452

cond.true769:                                     ; preds = %cond.false765
  %424 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %connection770 = getelementptr inbounds %struct.request_rec, ptr %424, i32 0, i32 1, !dbg !2452
  %425 = load ptr, ptr %connection770, align 8, !dbg !2452, !tbaa !1496
  %log771 = getelementptr inbounds %struct.conn_rec, ptr %425, i32 0, i32 24, !dbg !2452
  %426 = load ptr, ptr %log771, align 8, !dbg !2452, !tbaa !1497
  br label %cond.end775, !dbg !2452

cond.false772:                                    ; preds = %cond.false765
  %427 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %server773 = getelementptr inbounds %struct.request_rec, ptr %427, i32 0, i32 2, !dbg !2452
  %428 = load ptr, ptr %server773, align 8, !dbg !2452, !tbaa !1472
  %log774 = getelementptr inbounds %struct.server_rec, ptr %428, i32 0, i32 4, !dbg !2452
  br label %cond.end775, !dbg !2452

cond.end775:                                      ; preds = %cond.false772, %cond.true769
  %cond776 = phi ptr [ %426, %cond.true769 ], [ %log774, %cond.false772 ], !dbg !2452
  br label %cond.end777, !dbg !2452

cond.end777:                                      ; preds = %cond.end775, %cond.true763
  %cond778 = phi ptr [ %420, %cond.true763 ], [ %cond776, %cond.end775 ], !dbg !2452
  %module_levels779 = getelementptr inbounds %struct.ap_logconf, ptr %cond778, i32 0, i32 0, !dbg !2452
  %429 = load ptr, ptr %module_levels779, align 8, !dbg !2452, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true780, label %cond.false781, !dbg !2452

cond.true780:                                     ; preds = %cond.end777
  %430 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2452, !tbaa !852
  br label %cond.end782, !dbg !2452

cond.false781:                                    ; preds = %cond.end777
  br label %cond.end782, !dbg !2452

cond.end782:                                      ; preds = %cond.false781, %cond.true780
  %cond783 = phi i32 [ %430, %cond.true780 ], [ -1, %cond.false781 ], !dbg !2452
  %idxprom784 = sext i32 %cond783 to i64, !dbg !2452
  %arrayidx785 = getelementptr inbounds i8, ptr %429, i64 %idxprom784, !dbg !2452
  %431 = load i8, ptr %arrayidx785, align 1, !dbg !2452, !tbaa !1005
  %conv786 = sext i8 %431 to i32, !dbg !2452
  %cmp787 = icmp slt i32 %conv786, 0, !dbg !2452
  br i1 %cmp787, label %cond.true789, label %cond.false809, !dbg !2452

cond.true789:                                     ; preds = %cond.end782, %cond.end755, %cond.end734
  %432 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %log790 = getelementptr inbounds %struct.request_rec, ptr %432, i32 0, i32 56, !dbg !2452
  %433 = load ptr, ptr %log790, align 8, !dbg !2452, !tbaa !1495
  %tobool791 = icmp ne ptr %433, null, !dbg !2452
  br i1 %tobool791, label %cond.true792, label %cond.false794, !dbg !2452

cond.true792:                                     ; preds = %cond.true789
  %434 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %log793 = getelementptr inbounds %struct.request_rec, ptr %434, i32 0, i32 56, !dbg !2452
  %435 = load ptr, ptr %log793, align 8, !dbg !2452, !tbaa !1495
  br label %cond.end806, !dbg !2452

cond.false794:                                    ; preds = %cond.true789
  %436 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %connection795 = getelementptr inbounds %struct.request_rec, ptr %436, i32 0, i32 1, !dbg !2452
  %437 = load ptr, ptr %connection795, align 8, !dbg !2452, !tbaa !1496
  %log796 = getelementptr inbounds %struct.conn_rec, ptr %437, i32 0, i32 24, !dbg !2452
  %438 = load ptr, ptr %log796, align 8, !dbg !2452, !tbaa !1497
  %tobool797 = icmp ne ptr %438, null, !dbg !2452
  br i1 %tobool797, label %cond.true798, label %cond.false801, !dbg !2452

cond.true798:                                     ; preds = %cond.false794
  %439 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %connection799 = getelementptr inbounds %struct.request_rec, ptr %439, i32 0, i32 1, !dbg !2452
  %440 = load ptr, ptr %connection799, align 8, !dbg !2452, !tbaa !1496
  %log800 = getelementptr inbounds %struct.conn_rec, ptr %440, i32 0, i32 24, !dbg !2452
  %441 = load ptr, ptr %log800, align 8, !dbg !2452, !tbaa !1497
  br label %cond.end804, !dbg !2452

cond.false801:                                    ; preds = %cond.false794
  %442 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %server802 = getelementptr inbounds %struct.request_rec, ptr %442, i32 0, i32 2, !dbg !2452
  %443 = load ptr, ptr %server802, align 8, !dbg !2452, !tbaa !1472
  %log803 = getelementptr inbounds %struct.server_rec, ptr %443, i32 0, i32 4, !dbg !2452
  br label %cond.end804, !dbg !2452

cond.end804:                                      ; preds = %cond.false801, %cond.true798
  %cond805 = phi ptr [ %441, %cond.true798 ], [ %log803, %cond.false801 ], !dbg !2452
  br label %cond.end806, !dbg !2452

cond.end806:                                      ; preds = %cond.end804, %cond.true792
  %cond807 = phi ptr [ %435, %cond.true792 ], [ %cond805, %cond.end804 ], !dbg !2452
  %level808 = getelementptr inbounds %struct.ap_logconf, ptr %cond807, i32 0, i32 1, !dbg !2452
  %444 = load i32, ptr %level808, align 8, !dbg !2452, !tbaa !1500
  br label %cond.end836, !dbg !2452

cond.false809:                                    ; preds = %cond.end782
  %445 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %log810 = getelementptr inbounds %struct.request_rec, ptr %445, i32 0, i32 56, !dbg !2452
  %446 = load ptr, ptr %log810, align 8, !dbg !2452, !tbaa !1495
  %tobool811 = icmp ne ptr %446, null, !dbg !2452
  br i1 %tobool811, label %cond.true812, label %cond.false814, !dbg !2452

cond.true812:                                     ; preds = %cond.false809
  %447 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %log813 = getelementptr inbounds %struct.request_rec, ptr %447, i32 0, i32 56, !dbg !2452
  %448 = load ptr, ptr %log813, align 8, !dbg !2452, !tbaa !1495
  br label %cond.end826, !dbg !2452

cond.false814:                                    ; preds = %cond.false809
  %449 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %connection815 = getelementptr inbounds %struct.request_rec, ptr %449, i32 0, i32 1, !dbg !2452
  %450 = load ptr, ptr %connection815, align 8, !dbg !2452, !tbaa !1496
  %log816 = getelementptr inbounds %struct.conn_rec, ptr %450, i32 0, i32 24, !dbg !2452
  %451 = load ptr, ptr %log816, align 8, !dbg !2452, !tbaa !1497
  %tobool817 = icmp ne ptr %451, null, !dbg !2452
  br i1 %tobool817, label %cond.true818, label %cond.false821, !dbg !2452

cond.true818:                                     ; preds = %cond.false814
  %452 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %connection819 = getelementptr inbounds %struct.request_rec, ptr %452, i32 0, i32 1, !dbg !2452
  %453 = load ptr, ptr %connection819, align 8, !dbg !2452, !tbaa !1496
  %log820 = getelementptr inbounds %struct.conn_rec, ptr %453, i32 0, i32 24, !dbg !2452
  %454 = load ptr, ptr %log820, align 8, !dbg !2452, !tbaa !1497
  br label %cond.end824, !dbg !2452

cond.false821:                                    ; preds = %cond.false814
  %455 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  %server822 = getelementptr inbounds %struct.request_rec, ptr %455, i32 0, i32 2, !dbg !2452
  %456 = load ptr, ptr %server822, align 8, !dbg !2452, !tbaa !1472
  %log823 = getelementptr inbounds %struct.server_rec, ptr %456, i32 0, i32 4, !dbg !2452
  br label %cond.end824, !dbg !2452

cond.end824:                                      ; preds = %cond.false821, %cond.true818
  %cond825 = phi ptr [ %454, %cond.true818 ], [ %log823, %cond.false821 ], !dbg !2452
  br label %cond.end826, !dbg !2452

cond.end826:                                      ; preds = %cond.end824, %cond.true812
  %cond827 = phi ptr [ %448, %cond.true812 ], [ %cond825, %cond.end824 ], !dbg !2452
  %module_levels828 = getelementptr inbounds %struct.ap_logconf, ptr %cond827, i32 0, i32 0, !dbg !2452
  %457 = load ptr, ptr %module_levels828, align 8, !dbg !2452, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true829, label %cond.false830, !dbg !2452

cond.true829:                                     ; preds = %cond.end826
  %458 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2452, !tbaa !852
  br label %cond.end831, !dbg !2452

cond.false830:                                    ; preds = %cond.end826
  br label %cond.end831, !dbg !2452

cond.end831:                                      ; preds = %cond.false830, %cond.true829
  %cond832 = phi i32 [ %458, %cond.true829 ], [ -1, %cond.false830 ], !dbg !2452
  %idxprom833 = sext i32 %cond832 to i64, !dbg !2452
  %arrayidx834 = getelementptr inbounds i8, ptr %457, i64 %idxprom833, !dbg !2452
  %459 = load i8, ptr %arrayidx834, align 1, !dbg !2452, !tbaa !1005
  %conv835 = sext i8 %459 to i32, !dbg !2452
  br label %cond.end836, !dbg !2452

cond.end836:                                      ; preds = %cond.end831, %cond.end806
  %cond837 = phi i32 [ %444, %cond.end806 ], [ %conv835, %cond.end831 ], !dbg !2452
  %cmp838 = icmp sge i32 %cond837, 7, !dbg !2452
  br i1 %cmp838, label %if.then840, label %if.end845, !dbg !2455

if.then840:                                       ; preds = %cond.end836
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true841, label %cond.false842, !dbg !2452

cond.true841:                                     ; preds = %if.then840
  %460 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2452, !tbaa !852
  br label %cond.end843, !dbg !2452

cond.false842:                                    ; preds = %if.then840
  br label %cond.end843, !dbg !2452

cond.end843:                                      ; preds = %cond.false842, %cond.true841
  %cond844 = phi i32 [ %460, %cond.true841 ], [ -1, %cond.false842 ], !dbg !2452
  %461 = load ptr, ptr %r.addr, align 8, !dbg !2452, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 441, i32 noundef %cond844, i32 noundef 7, i32 noundef 0, ptr noundef %461, ptr noundef @.str.34), !dbg !2452
  br label %if.end845, !dbg !2452

if.end845:                                        ; preds = %cond.end843, %cond.end836
  br label %do.cond846, !dbg !2455

do.cond846:                                       ; preds = %if.end845
  br label %do.end847, !dbg !2455

do.end847:                                        ; preds = %do.cond846
  store i32 100005, ptr %res, align 4, !dbg !2456, !tbaa !852
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2457

if.end848:                                        ; preds = %if.end727
  %462 = load ptr, ptr %slider, align 8, !dbg !2458, !tbaa !716
  %add.ptr849 = getelementptr inbounds i8, ptr %462, i64 16, !dbg !2458
  store ptr %add.ptr849, ptr %slider, align 8, !dbg !2458, !tbaa !716
  %463 = load i64, ptr %len, align 8, !dbg !2459, !tbaa !1805
  %sub850 = sub i64 %463, 16, !dbg !2459
  store i64 %sub850, ptr %len, align 8, !dbg !2459, !tbaa !1805
  %464 = load ptr, ptr %slider, align 8, !dbg !2460, !tbaa !716
  %465 = load ptr, ptr %key, align 8, !dbg !2461, !tbaa !716
  %466 = load ptr, ptr %r.addr, align 8, !dbg !2462, !tbaa !716
  %pool851 = getelementptr inbounds %struct.request_rec, ptr %466, i32 0, i32 0, !dbg !2463
  %467 = load ptr, ptr %pool851, align 8, !dbg !2463, !tbaa !1857
  %call852 = call i32 @apr_crypto_block_decrypt_init(ptr noundef %block, ptr noundef %blockSize, ptr noundef %464, ptr noundef %465, ptr noundef %467), !dbg !2464
  store i32 %call852, ptr %res, align 4, !dbg !2465, !tbaa !852
  %468 = load i32, ptr %res, align 4, !dbg !2466, !tbaa !852
  %cmp853 = icmp ne i32 0, %468, !dbg !2468
  br i1 %cmp853, label %if.then855, label %if.end973, !dbg !2469

if.then855:                                       ; preds = %if.end848
  br label %do.body856, !dbg !2470

do.body856:                                       ; preds = %if.then855
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true857, label %cond.false858, !dbg !2472

cond.true857:                                     ; preds = %do.body856
  %469 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2472, !tbaa !852
  br label %cond.end859, !dbg !2472

cond.false858:                                    ; preds = %do.body856
  br label %cond.end859, !dbg !2472

cond.end859:                                      ; preds = %cond.false858, %cond.true857
  %cond860 = phi i32 [ %469, %cond.true857 ], [ -1, %cond.false858 ], !dbg !2472
  %cmp861 = icmp slt i32 %cond860, 0, !dbg !2472
  br i1 %cmp861, label %cond.true914, label %lor.lhs.false863, !dbg !2472

lor.lhs.false863:                                 ; preds = %cond.end859
  %470 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %log864 = getelementptr inbounds %struct.request_rec, ptr %470, i32 0, i32 56, !dbg !2472
  %471 = load ptr, ptr %log864, align 8, !dbg !2472, !tbaa !1495
  %tobool865 = icmp ne ptr %471, null, !dbg !2472
  br i1 %tobool865, label %cond.true866, label %cond.false868, !dbg !2472

cond.true866:                                     ; preds = %lor.lhs.false863
  %472 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %log867 = getelementptr inbounds %struct.request_rec, ptr %472, i32 0, i32 56, !dbg !2472
  %473 = load ptr, ptr %log867, align 8, !dbg !2472, !tbaa !1495
  br label %cond.end880, !dbg !2472

cond.false868:                                    ; preds = %lor.lhs.false863
  %474 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %connection869 = getelementptr inbounds %struct.request_rec, ptr %474, i32 0, i32 1, !dbg !2472
  %475 = load ptr, ptr %connection869, align 8, !dbg !2472, !tbaa !1496
  %log870 = getelementptr inbounds %struct.conn_rec, ptr %475, i32 0, i32 24, !dbg !2472
  %476 = load ptr, ptr %log870, align 8, !dbg !2472, !tbaa !1497
  %tobool871 = icmp ne ptr %476, null, !dbg !2472
  br i1 %tobool871, label %cond.true872, label %cond.false875, !dbg !2472

cond.true872:                                     ; preds = %cond.false868
  %477 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %connection873 = getelementptr inbounds %struct.request_rec, ptr %477, i32 0, i32 1, !dbg !2472
  %478 = load ptr, ptr %connection873, align 8, !dbg !2472, !tbaa !1496
  %log874 = getelementptr inbounds %struct.conn_rec, ptr %478, i32 0, i32 24, !dbg !2472
  %479 = load ptr, ptr %log874, align 8, !dbg !2472, !tbaa !1497
  br label %cond.end878, !dbg !2472

cond.false875:                                    ; preds = %cond.false868
  %480 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %server876 = getelementptr inbounds %struct.request_rec, ptr %480, i32 0, i32 2, !dbg !2472
  %481 = load ptr, ptr %server876, align 8, !dbg !2472, !tbaa !1472
  %log877 = getelementptr inbounds %struct.server_rec, ptr %481, i32 0, i32 4, !dbg !2472
  br label %cond.end878, !dbg !2472

cond.end878:                                      ; preds = %cond.false875, %cond.true872
  %cond879 = phi ptr [ %479, %cond.true872 ], [ %log877, %cond.false875 ], !dbg !2472
  br label %cond.end880, !dbg !2472

cond.end880:                                      ; preds = %cond.end878, %cond.true866
  %cond881 = phi ptr [ %473, %cond.true866 ], [ %cond879, %cond.end878 ], !dbg !2472
  %module_levels882 = getelementptr inbounds %struct.ap_logconf, ptr %cond881, i32 0, i32 0, !dbg !2472
  %482 = load ptr, ptr %module_levels882, align 8, !dbg !2472, !tbaa !1499
  %cmp883 = icmp eq ptr %482, null, !dbg !2472
  br i1 %cmp883, label %cond.true914, label %lor.lhs.false885, !dbg !2472

lor.lhs.false885:                                 ; preds = %cond.end880
  %483 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %log886 = getelementptr inbounds %struct.request_rec, ptr %483, i32 0, i32 56, !dbg !2472
  %484 = load ptr, ptr %log886, align 8, !dbg !2472, !tbaa !1495
  %tobool887 = icmp ne ptr %484, null, !dbg !2472
  br i1 %tobool887, label %cond.true888, label %cond.false890, !dbg !2472

cond.true888:                                     ; preds = %lor.lhs.false885
  %485 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %log889 = getelementptr inbounds %struct.request_rec, ptr %485, i32 0, i32 56, !dbg !2472
  %486 = load ptr, ptr %log889, align 8, !dbg !2472, !tbaa !1495
  br label %cond.end902, !dbg !2472

cond.false890:                                    ; preds = %lor.lhs.false885
  %487 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %connection891 = getelementptr inbounds %struct.request_rec, ptr %487, i32 0, i32 1, !dbg !2472
  %488 = load ptr, ptr %connection891, align 8, !dbg !2472, !tbaa !1496
  %log892 = getelementptr inbounds %struct.conn_rec, ptr %488, i32 0, i32 24, !dbg !2472
  %489 = load ptr, ptr %log892, align 8, !dbg !2472, !tbaa !1497
  %tobool893 = icmp ne ptr %489, null, !dbg !2472
  br i1 %tobool893, label %cond.true894, label %cond.false897, !dbg !2472

cond.true894:                                     ; preds = %cond.false890
  %490 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %connection895 = getelementptr inbounds %struct.request_rec, ptr %490, i32 0, i32 1, !dbg !2472
  %491 = load ptr, ptr %connection895, align 8, !dbg !2472, !tbaa !1496
  %log896 = getelementptr inbounds %struct.conn_rec, ptr %491, i32 0, i32 24, !dbg !2472
  %492 = load ptr, ptr %log896, align 8, !dbg !2472, !tbaa !1497
  br label %cond.end900, !dbg !2472

cond.false897:                                    ; preds = %cond.false890
  %493 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %server898 = getelementptr inbounds %struct.request_rec, ptr %493, i32 0, i32 2, !dbg !2472
  %494 = load ptr, ptr %server898, align 8, !dbg !2472, !tbaa !1472
  %log899 = getelementptr inbounds %struct.server_rec, ptr %494, i32 0, i32 4, !dbg !2472
  br label %cond.end900, !dbg !2472

cond.end900:                                      ; preds = %cond.false897, %cond.true894
  %cond901 = phi ptr [ %492, %cond.true894 ], [ %log899, %cond.false897 ], !dbg !2472
  br label %cond.end902, !dbg !2472

cond.end902:                                      ; preds = %cond.end900, %cond.true888
  %cond903 = phi ptr [ %486, %cond.true888 ], [ %cond901, %cond.end900 ], !dbg !2472
  %module_levels904 = getelementptr inbounds %struct.ap_logconf, ptr %cond903, i32 0, i32 0, !dbg !2472
  %495 = load ptr, ptr %module_levels904, align 8, !dbg !2472, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true905, label %cond.false906, !dbg !2472

cond.true905:                                     ; preds = %cond.end902
  %496 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2472, !tbaa !852
  br label %cond.end907, !dbg !2472

cond.false906:                                    ; preds = %cond.end902
  br label %cond.end907, !dbg !2472

cond.end907:                                      ; preds = %cond.false906, %cond.true905
  %cond908 = phi i32 [ %496, %cond.true905 ], [ -1, %cond.false906 ], !dbg !2472
  %idxprom909 = sext i32 %cond908 to i64, !dbg !2472
  %arrayidx910 = getelementptr inbounds i8, ptr %495, i64 %idxprom909, !dbg !2472
  %497 = load i8, ptr %arrayidx910, align 1, !dbg !2472, !tbaa !1005
  %conv911 = sext i8 %497 to i32, !dbg !2472
  %cmp912 = icmp slt i32 %conv911, 0, !dbg !2472
  br i1 %cmp912, label %cond.true914, label %cond.false934, !dbg !2472

cond.true914:                                     ; preds = %cond.end907, %cond.end880, %cond.end859
  %498 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %log915 = getelementptr inbounds %struct.request_rec, ptr %498, i32 0, i32 56, !dbg !2472
  %499 = load ptr, ptr %log915, align 8, !dbg !2472, !tbaa !1495
  %tobool916 = icmp ne ptr %499, null, !dbg !2472
  br i1 %tobool916, label %cond.true917, label %cond.false919, !dbg !2472

cond.true917:                                     ; preds = %cond.true914
  %500 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %log918 = getelementptr inbounds %struct.request_rec, ptr %500, i32 0, i32 56, !dbg !2472
  %501 = load ptr, ptr %log918, align 8, !dbg !2472, !tbaa !1495
  br label %cond.end931, !dbg !2472

cond.false919:                                    ; preds = %cond.true914
  %502 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %connection920 = getelementptr inbounds %struct.request_rec, ptr %502, i32 0, i32 1, !dbg !2472
  %503 = load ptr, ptr %connection920, align 8, !dbg !2472, !tbaa !1496
  %log921 = getelementptr inbounds %struct.conn_rec, ptr %503, i32 0, i32 24, !dbg !2472
  %504 = load ptr, ptr %log921, align 8, !dbg !2472, !tbaa !1497
  %tobool922 = icmp ne ptr %504, null, !dbg !2472
  br i1 %tobool922, label %cond.true923, label %cond.false926, !dbg !2472

cond.true923:                                     ; preds = %cond.false919
  %505 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %connection924 = getelementptr inbounds %struct.request_rec, ptr %505, i32 0, i32 1, !dbg !2472
  %506 = load ptr, ptr %connection924, align 8, !dbg !2472, !tbaa !1496
  %log925 = getelementptr inbounds %struct.conn_rec, ptr %506, i32 0, i32 24, !dbg !2472
  %507 = load ptr, ptr %log925, align 8, !dbg !2472, !tbaa !1497
  br label %cond.end929, !dbg !2472

cond.false926:                                    ; preds = %cond.false919
  %508 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %server927 = getelementptr inbounds %struct.request_rec, ptr %508, i32 0, i32 2, !dbg !2472
  %509 = load ptr, ptr %server927, align 8, !dbg !2472, !tbaa !1472
  %log928 = getelementptr inbounds %struct.server_rec, ptr %509, i32 0, i32 4, !dbg !2472
  br label %cond.end929, !dbg !2472

cond.end929:                                      ; preds = %cond.false926, %cond.true923
  %cond930 = phi ptr [ %507, %cond.true923 ], [ %log928, %cond.false926 ], !dbg !2472
  br label %cond.end931, !dbg !2472

cond.end931:                                      ; preds = %cond.end929, %cond.true917
  %cond932 = phi ptr [ %501, %cond.true917 ], [ %cond930, %cond.end929 ], !dbg !2472
  %level933 = getelementptr inbounds %struct.ap_logconf, ptr %cond932, i32 0, i32 1, !dbg !2472
  %510 = load i32, ptr %level933, align 8, !dbg !2472, !tbaa !1500
  br label %cond.end961, !dbg !2472

cond.false934:                                    ; preds = %cond.end907
  %511 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %log935 = getelementptr inbounds %struct.request_rec, ptr %511, i32 0, i32 56, !dbg !2472
  %512 = load ptr, ptr %log935, align 8, !dbg !2472, !tbaa !1495
  %tobool936 = icmp ne ptr %512, null, !dbg !2472
  br i1 %tobool936, label %cond.true937, label %cond.false939, !dbg !2472

cond.true937:                                     ; preds = %cond.false934
  %513 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %log938 = getelementptr inbounds %struct.request_rec, ptr %513, i32 0, i32 56, !dbg !2472
  %514 = load ptr, ptr %log938, align 8, !dbg !2472, !tbaa !1495
  br label %cond.end951, !dbg !2472

cond.false939:                                    ; preds = %cond.false934
  %515 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %connection940 = getelementptr inbounds %struct.request_rec, ptr %515, i32 0, i32 1, !dbg !2472
  %516 = load ptr, ptr %connection940, align 8, !dbg !2472, !tbaa !1496
  %log941 = getelementptr inbounds %struct.conn_rec, ptr %516, i32 0, i32 24, !dbg !2472
  %517 = load ptr, ptr %log941, align 8, !dbg !2472, !tbaa !1497
  %tobool942 = icmp ne ptr %517, null, !dbg !2472
  br i1 %tobool942, label %cond.true943, label %cond.false946, !dbg !2472

cond.true943:                                     ; preds = %cond.false939
  %518 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %connection944 = getelementptr inbounds %struct.request_rec, ptr %518, i32 0, i32 1, !dbg !2472
  %519 = load ptr, ptr %connection944, align 8, !dbg !2472, !tbaa !1496
  %log945 = getelementptr inbounds %struct.conn_rec, ptr %519, i32 0, i32 24, !dbg !2472
  %520 = load ptr, ptr %log945, align 8, !dbg !2472, !tbaa !1497
  br label %cond.end949, !dbg !2472

cond.false946:                                    ; preds = %cond.false939
  %521 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  %server947 = getelementptr inbounds %struct.request_rec, ptr %521, i32 0, i32 2, !dbg !2472
  %522 = load ptr, ptr %server947, align 8, !dbg !2472, !tbaa !1472
  %log948 = getelementptr inbounds %struct.server_rec, ptr %522, i32 0, i32 4, !dbg !2472
  br label %cond.end949, !dbg !2472

cond.end949:                                      ; preds = %cond.false946, %cond.true943
  %cond950 = phi ptr [ %520, %cond.true943 ], [ %log948, %cond.false946 ], !dbg !2472
  br label %cond.end951, !dbg !2472

cond.end951:                                      ; preds = %cond.end949, %cond.true937
  %cond952 = phi ptr [ %514, %cond.true937 ], [ %cond950, %cond.end949 ], !dbg !2472
  %module_levels953 = getelementptr inbounds %struct.ap_logconf, ptr %cond952, i32 0, i32 0, !dbg !2472
  %523 = load ptr, ptr %module_levels953, align 8, !dbg !2472, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true954, label %cond.false955, !dbg !2472

cond.true954:                                     ; preds = %cond.end951
  %524 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2472, !tbaa !852
  br label %cond.end956, !dbg !2472

cond.false955:                                    ; preds = %cond.end951
  br label %cond.end956, !dbg !2472

cond.end956:                                      ; preds = %cond.false955, %cond.true954
  %cond957 = phi i32 [ %524, %cond.true954 ], [ -1, %cond.false955 ], !dbg !2472
  %idxprom958 = sext i32 %cond957 to i64, !dbg !2472
  %arrayidx959 = getelementptr inbounds i8, ptr %523, i64 %idxprom958, !dbg !2472
  %525 = load i8, ptr %arrayidx959, align 1, !dbg !2472, !tbaa !1005
  %conv960 = sext i8 %525 to i32, !dbg !2472
  br label %cond.end961, !dbg !2472

cond.end961:                                      ; preds = %cond.end956, %cond.end931
  %cond962 = phi i32 [ %510, %cond.end931 ], [ %conv960, %cond.end956 ], !dbg !2472
  %cmp963 = icmp sge i32 %cond962, 7, !dbg !2472
  br i1 %cmp963, label %if.then965, label %if.end970, !dbg !2475

if.then965:                                       ; preds = %cond.end961
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true966, label %cond.false967, !dbg !2472

cond.true966:                                     ; preds = %if.then965
  %526 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2472, !tbaa !852
  br label %cond.end968, !dbg !2472

cond.false967:                                    ; preds = %if.then965
  br label %cond.end968, !dbg !2472

cond.end968:                                      ; preds = %cond.false967, %cond.true966
  %cond969 = phi i32 [ %526, %cond.true966 ], [ -1, %cond.false967 ], !dbg !2472
  %527 = load i32, ptr %res, align 4, !dbg !2472, !tbaa !852
  %528 = load ptr, ptr %r.addr, align 8, !dbg !2472, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 454, i32 noundef %cond969, i32 noundef 7, i32 noundef %527, ptr noundef %528, ptr noundef @.str.35), !dbg !2472
  br label %if.end970, !dbg !2472

if.end970:                                        ; preds = %cond.end968, %cond.end961
  br label %do.cond971, !dbg !2475

do.cond971:                                       ; preds = %if.end970
  br label %do.end972, !dbg !2475

do.end972:                                        ; preds = %do.cond971
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2476

if.end973:                                        ; preds = %if.end848
  %529 = load i64, ptr %ivSize, align 8, !dbg !2477, !tbaa !1805
  %530 = load ptr, ptr %slider, align 8, !dbg !2478, !tbaa !716
  %add.ptr974 = getelementptr inbounds i8, ptr %530, i64 %529, !dbg !2478
  store ptr %add.ptr974, ptr %slider, align 8, !dbg !2478, !tbaa !716
  %531 = load i64, ptr %ivSize, align 8, !dbg !2479, !tbaa !1805
  %532 = load i64, ptr %len, align 8, !dbg !2480, !tbaa !1805
  %sub975 = sub i64 %532, %531, !dbg !2480
  store i64 %sub975, ptr %len, align 8, !dbg !2480, !tbaa !1805
  %533 = load ptr, ptr %slider, align 8, !dbg !2481, !tbaa !716
  %534 = load i64, ptr %len, align 8, !dbg !2482, !tbaa !1805
  %535 = load ptr, ptr %block, align 8, !dbg !2483, !tbaa !716
  %call976 = call i32 @apr_crypto_block_decrypt(ptr noundef %decrypted, ptr noundef %decryptedlen, ptr noundef %533, i64 noundef %534, ptr noundef %535), !dbg !2484
  store i32 %call976, ptr %res, align 4, !dbg !2485, !tbaa !852
  %536 = load i32, ptr %res, align 4, !dbg !2486, !tbaa !852
  %tobool977 = icmp ne i32 %536, 0, !dbg !2486
  br i1 %tobool977, label %if.then978, label %if.end1096, !dbg !2488

if.then978:                                       ; preds = %if.end973
  br label %do.body979, !dbg !2489

do.body979:                                       ; preds = %if.then978
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true980, label %cond.false981, !dbg !2491

cond.true980:                                     ; preds = %do.body979
  %537 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2491, !tbaa !852
  br label %cond.end982, !dbg !2491

cond.false981:                                    ; preds = %do.body979
  br label %cond.end982, !dbg !2491

cond.end982:                                      ; preds = %cond.false981, %cond.true980
  %cond983 = phi i32 [ %537, %cond.true980 ], [ -1, %cond.false981 ], !dbg !2491
  %cmp984 = icmp slt i32 %cond983, 0, !dbg !2491
  br i1 %cmp984, label %cond.true1037, label %lor.lhs.false986, !dbg !2491

lor.lhs.false986:                                 ; preds = %cond.end982
  %538 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %log987 = getelementptr inbounds %struct.request_rec, ptr %538, i32 0, i32 56, !dbg !2491
  %539 = load ptr, ptr %log987, align 8, !dbg !2491, !tbaa !1495
  %tobool988 = icmp ne ptr %539, null, !dbg !2491
  br i1 %tobool988, label %cond.true989, label %cond.false991, !dbg !2491

cond.true989:                                     ; preds = %lor.lhs.false986
  %540 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %log990 = getelementptr inbounds %struct.request_rec, ptr %540, i32 0, i32 56, !dbg !2491
  %541 = load ptr, ptr %log990, align 8, !dbg !2491, !tbaa !1495
  br label %cond.end1003, !dbg !2491

cond.false991:                                    ; preds = %lor.lhs.false986
  %542 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %connection992 = getelementptr inbounds %struct.request_rec, ptr %542, i32 0, i32 1, !dbg !2491
  %543 = load ptr, ptr %connection992, align 8, !dbg !2491, !tbaa !1496
  %log993 = getelementptr inbounds %struct.conn_rec, ptr %543, i32 0, i32 24, !dbg !2491
  %544 = load ptr, ptr %log993, align 8, !dbg !2491, !tbaa !1497
  %tobool994 = icmp ne ptr %544, null, !dbg !2491
  br i1 %tobool994, label %cond.true995, label %cond.false998, !dbg !2491

cond.true995:                                     ; preds = %cond.false991
  %545 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %connection996 = getelementptr inbounds %struct.request_rec, ptr %545, i32 0, i32 1, !dbg !2491
  %546 = load ptr, ptr %connection996, align 8, !dbg !2491, !tbaa !1496
  %log997 = getelementptr inbounds %struct.conn_rec, ptr %546, i32 0, i32 24, !dbg !2491
  %547 = load ptr, ptr %log997, align 8, !dbg !2491, !tbaa !1497
  br label %cond.end1001, !dbg !2491

cond.false998:                                    ; preds = %cond.false991
  %548 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %server999 = getelementptr inbounds %struct.request_rec, ptr %548, i32 0, i32 2, !dbg !2491
  %549 = load ptr, ptr %server999, align 8, !dbg !2491, !tbaa !1472
  %log1000 = getelementptr inbounds %struct.server_rec, ptr %549, i32 0, i32 4, !dbg !2491
  br label %cond.end1001, !dbg !2491

cond.end1001:                                     ; preds = %cond.false998, %cond.true995
  %cond1002 = phi ptr [ %547, %cond.true995 ], [ %log1000, %cond.false998 ], !dbg !2491
  br label %cond.end1003, !dbg !2491

cond.end1003:                                     ; preds = %cond.end1001, %cond.true989
  %cond1004 = phi ptr [ %541, %cond.true989 ], [ %cond1002, %cond.end1001 ], !dbg !2491
  %module_levels1005 = getelementptr inbounds %struct.ap_logconf, ptr %cond1004, i32 0, i32 0, !dbg !2491
  %550 = load ptr, ptr %module_levels1005, align 8, !dbg !2491, !tbaa !1499
  %cmp1006 = icmp eq ptr %550, null, !dbg !2491
  br i1 %cmp1006, label %cond.true1037, label %lor.lhs.false1008, !dbg !2491

lor.lhs.false1008:                                ; preds = %cond.end1003
  %551 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %log1009 = getelementptr inbounds %struct.request_rec, ptr %551, i32 0, i32 56, !dbg !2491
  %552 = load ptr, ptr %log1009, align 8, !dbg !2491, !tbaa !1495
  %tobool1010 = icmp ne ptr %552, null, !dbg !2491
  br i1 %tobool1010, label %cond.true1011, label %cond.false1013, !dbg !2491

cond.true1011:                                    ; preds = %lor.lhs.false1008
  %553 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %log1012 = getelementptr inbounds %struct.request_rec, ptr %553, i32 0, i32 56, !dbg !2491
  %554 = load ptr, ptr %log1012, align 8, !dbg !2491, !tbaa !1495
  br label %cond.end1025, !dbg !2491

cond.false1013:                                   ; preds = %lor.lhs.false1008
  %555 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %connection1014 = getelementptr inbounds %struct.request_rec, ptr %555, i32 0, i32 1, !dbg !2491
  %556 = load ptr, ptr %connection1014, align 8, !dbg !2491, !tbaa !1496
  %log1015 = getelementptr inbounds %struct.conn_rec, ptr %556, i32 0, i32 24, !dbg !2491
  %557 = load ptr, ptr %log1015, align 8, !dbg !2491, !tbaa !1497
  %tobool1016 = icmp ne ptr %557, null, !dbg !2491
  br i1 %tobool1016, label %cond.true1017, label %cond.false1020, !dbg !2491

cond.true1017:                                    ; preds = %cond.false1013
  %558 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %connection1018 = getelementptr inbounds %struct.request_rec, ptr %558, i32 0, i32 1, !dbg !2491
  %559 = load ptr, ptr %connection1018, align 8, !dbg !2491, !tbaa !1496
  %log1019 = getelementptr inbounds %struct.conn_rec, ptr %559, i32 0, i32 24, !dbg !2491
  %560 = load ptr, ptr %log1019, align 8, !dbg !2491, !tbaa !1497
  br label %cond.end1023, !dbg !2491

cond.false1020:                                   ; preds = %cond.false1013
  %561 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %server1021 = getelementptr inbounds %struct.request_rec, ptr %561, i32 0, i32 2, !dbg !2491
  %562 = load ptr, ptr %server1021, align 8, !dbg !2491, !tbaa !1472
  %log1022 = getelementptr inbounds %struct.server_rec, ptr %562, i32 0, i32 4, !dbg !2491
  br label %cond.end1023, !dbg !2491

cond.end1023:                                     ; preds = %cond.false1020, %cond.true1017
  %cond1024 = phi ptr [ %560, %cond.true1017 ], [ %log1022, %cond.false1020 ], !dbg !2491
  br label %cond.end1025, !dbg !2491

cond.end1025:                                     ; preds = %cond.end1023, %cond.true1011
  %cond1026 = phi ptr [ %554, %cond.true1011 ], [ %cond1024, %cond.end1023 ], !dbg !2491
  %module_levels1027 = getelementptr inbounds %struct.ap_logconf, ptr %cond1026, i32 0, i32 0, !dbg !2491
  %563 = load ptr, ptr %module_levels1027, align 8, !dbg !2491, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true1028, label %cond.false1029, !dbg !2491

cond.true1028:                                    ; preds = %cond.end1025
  %564 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2491, !tbaa !852
  br label %cond.end1030, !dbg !2491

cond.false1029:                                   ; preds = %cond.end1025
  br label %cond.end1030, !dbg !2491

cond.end1030:                                     ; preds = %cond.false1029, %cond.true1028
  %cond1031 = phi i32 [ %564, %cond.true1028 ], [ -1, %cond.false1029 ], !dbg !2491
  %idxprom1032 = sext i32 %cond1031 to i64, !dbg !2491
  %arrayidx1033 = getelementptr inbounds i8, ptr %563, i64 %idxprom1032, !dbg !2491
  %565 = load i8, ptr %arrayidx1033, align 1, !dbg !2491, !tbaa !1005
  %conv1034 = sext i8 %565 to i32, !dbg !2491
  %cmp1035 = icmp slt i32 %conv1034, 0, !dbg !2491
  br i1 %cmp1035, label %cond.true1037, label %cond.false1057, !dbg !2491

cond.true1037:                                    ; preds = %cond.end1030, %cond.end1003, %cond.end982
  %566 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %log1038 = getelementptr inbounds %struct.request_rec, ptr %566, i32 0, i32 56, !dbg !2491
  %567 = load ptr, ptr %log1038, align 8, !dbg !2491, !tbaa !1495
  %tobool1039 = icmp ne ptr %567, null, !dbg !2491
  br i1 %tobool1039, label %cond.true1040, label %cond.false1042, !dbg !2491

cond.true1040:                                    ; preds = %cond.true1037
  %568 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %log1041 = getelementptr inbounds %struct.request_rec, ptr %568, i32 0, i32 56, !dbg !2491
  %569 = load ptr, ptr %log1041, align 8, !dbg !2491, !tbaa !1495
  br label %cond.end1054, !dbg !2491

cond.false1042:                                   ; preds = %cond.true1037
  %570 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %connection1043 = getelementptr inbounds %struct.request_rec, ptr %570, i32 0, i32 1, !dbg !2491
  %571 = load ptr, ptr %connection1043, align 8, !dbg !2491, !tbaa !1496
  %log1044 = getelementptr inbounds %struct.conn_rec, ptr %571, i32 0, i32 24, !dbg !2491
  %572 = load ptr, ptr %log1044, align 8, !dbg !2491, !tbaa !1497
  %tobool1045 = icmp ne ptr %572, null, !dbg !2491
  br i1 %tobool1045, label %cond.true1046, label %cond.false1049, !dbg !2491

cond.true1046:                                    ; preds = %cond.false1042
  %573 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %connection1047 = getelementptr inbounds %struct.request_rec, ptr %573, i32 0, i32 1, !dbg !2491
  %574 = load ptr, ptr %connection1047, align 8, !dbg !2491, !tbaa !1496
  %log1048 = getelementptr inbounds %struct.conn_rec, ptr %574, i32 0, i32 24, !dbg !2491
  %575 = load ptr, ptr %log1048, align 8, !dbg !2491, !tbaa !1497
  br label %cond.end1052, !dbg !2491

cond.false1049:                                   ; preds = %cond.false1042
  %576 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %server1050 = getelementptr inbounds %struct.request_rec, ptr %576, i32 0, i32 2, !dbg !2491
  %577 = load ptr, ptr %server1050, align 8, !dbg !2491, !tbaa !1472
  %log1051 = getelementptr inbounds %struct.server_rec, ptr %577, i32 0, i32 4, !dbg !2491
  br label %cond.end1052, !dbg !2491

cond.end1052:                                     ; preds = %cond.false1049, %cond.true1046
  %cond1053 = phi ptr [ %575, %cond.true1046 ], [ %log1051, %cond.false1049 ], !dbg !2491
  br label %cond.end1054, !dbg !2491

cond.end1054:                                     ; preds = %cond.end1052, %cond.true1040
  %cond1055 = phi ptr [ %569, %cond.true1040 ], [ %cond1053, %cond.end1052 ], !dbg !2491
  %level1056 = getelementptr inbounds %struct.ap_logconf, ptr %cond1055, i32 0, i32 1, !dbg !2491
  %578 = load i32, ptr %level1056, align 8, !dbg !2491, !tbaa !1500
  br label %cond.end1084, !dbg !2491

cond.false1057:                                   ; preds = %cond.end1030
  %579 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %log1058 = getelementptr inbounds %struct.request_rec, ptr %579, i32 0, i32 56, !dbg !2491
  %580 = load ptr, ptr %log1058, align 8, !dbg !2491, !tbaa !1495
  %tobool1059 = icmp ne ptr %580, null, !dbg !2491
  br i1 %tobool1059, label %cond.true1060, label %cond.false1062, !dbg !2491

cond.true1060:                                    ; preds = %cond.false1057
  %581 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %log1061 = getelementptr inbounds %struct.request_rec, ptr %581, i32 0, i32 56, !dbg !2491
  %582 = load ptr, ptr %log1061, align 8, !dbg !2491, !tbaa !1495
  br label %cond.end1074, !dbg !2491

cond.false1062:                                   ; preds = %cond.false1057
  %583 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %connection1063 = getelementptr inbounds %struct.request_rec, ptr %583, i32 0, i32 1, !dbg !2491
  %584 = load ptr, ptr %connection1063, align 8, !dbg !2491, !tbaa !1496
  %log1064 = getelementptr inbounds %struct.conn_rec, ptr %584, i32 0, i32 24, !dbg !2491
  %585 = load ptr, ptr %log1064, align 8, !dbg !2491, !tbaa !1497
  %tobool1065 = icmp ne ptr %585, null, !dbg !2491
  br i1 %tobool1065, label %cond.true1066, label %cond.false1069, !dbg !2491

cond.true1066:                                    ; preds = %cond.false1062
  %586 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %connection1067 = getelementptr inbounds %struct.request_rec, ptr %586, i32 0, i32 1, !dbg !2491
  %587 = load ptr, ptr %connection1067, align 8, !dbg !2491, !tbaa !1496
  %log1068 = getelementptr inbounds %struct.conn_rec, ptr %587, i32 0, i32 24, !dbg !2491
  %588 = load ptr, ptr %log1068, align 8, !dbg !2491, !tbaa !1497
  br label %cond.end1072, !dbg !2491

cond.false1069:                                   ; preds = %cond.false1062
  %589 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  %server1070 = getelementptr inbounds %struct.request_rec, ptr %589, i32 0, i32 2, !dbg !2491
  %590 = load ptr, ptr %server1070, align 8, !dbg !2491, !tbaa !1472
  %log1071 = getelementptr inbounds %struct.server_rec, ptr %590, i32 0, i32 4, !dbg !2491
  br label %cond.end1072, !dbg !2491

cond.end1072:                                     ; preds = %cond.false1069, %cond.true1066
  %cond1073 = phi ptr [ %588, %cond.true1066 ], [ %log1071, %cond.false1069 ], !dbg !2491
  br label %cond.end1074, !dbg !2491

cond.end1074:                                     ; preds = %cond.end1072, %cond.true1060
  %cond1075 = phi ptr [ %582, %cond.true1060 ], [ %cond1073, %cond.end1072 ], !dbg !2491
  %module_levels1076 = getelementptr inbounds %struct.ap_logconf, ptr %cond1075, i32 0, i32 0, !dbg !2491
  %591 = load ptr, ptr %module_levels1076, align 8, !dbg !2491, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true1077, label %cond.false1078, !dbg !2491

cond.true1077:                                    ; preds = %cond.end1074
  %592 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2491, !tbaa !852
  br label %cond.end1079, !dbg !2491

cond.false1078:                                   ; preds = %cond.end1074
  br label %cond.end1079, !dbg !2491

cond.end1079:                                     ; preds = %cond.false1078, %cond.true1077
  %cond1080 = phi i32 [ %592, %cond.true1077 ], [ -1, %cond.false1078 ], !dbg !2491
  %idxprom1081 = sext i32 %cond1080 to i64, !dbg !2491
  %arrayidx1082 = getelementptr inbounds i8, ptr %591, i64 %idxprom1081, !dbg !2491
  %593 = load i8, ptr %arrayidx1082, align 1, !dbg !2491, !tbaa !1005
  %conv1083 = sext i8 %593 to i32, !dbg !2491
  br label %cond.end1084, !dbg !2491

cond.end1084:                                     ; preds = %cond.end1079, %cond.end1054
  %cond1085 = phi i32 [ %578, %cond.end1054 ], [ %conv1083, %cond.end1079 ], !dbg !2491
  %cmp1086 = icmp sge i32 %cond1085, 7, !dbg !2491
  br i1 %cmp1086, label %if.then1088, label %if.end1093, !dbg !2494

if.then1088:                                      ; preds = %cond.end1084
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true1089, label %cond.false1090, !dbg !2491

cond.true1089:                                    ; preds = %if.then1088
  %594 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2491, !tbaa !852
  br label %cond.end1091, !dbg !2491

cond.false1090:                                   ; preds = %if.then1088
  br label %cond.end1091, !dbg !2491

cond.end1091:                                     ; preds = %cond.false1090, %cond.true1089
  %cond1092 = phi i32 [ %594, %cond.true1089 ], [ -1, %cond.false1090 ], !dbg !2491
  %595 = load i32, ptr %res, align 4, !dbg !2491, !tbaa !852
  %596 = load ptr, ptr %r.addr, align 8, !dbg !2491, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 467, i32 noundef %cond1092, i32 noundef 7, i32 noundef %595, ptr noundef %596, ptr noundef @.str.36), !dbg !2491
  br label %if.end1093, !dbg !2491

if.end1093:                                       ; preds = %cond.end1091, %cond.end1084
  br label %do.cond1094, !dbg !2494

do.cond1094:                                      ; preds = %if.end1093
  br label %do.end1095, !dbg !2494

do.end1095:                                       ; preds = %do.cond1094
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2495

if.end1096:                                       ; preds = %if.end973
  %597 = load ptr, ptr %decrypted, align 8, !dbg !2496, !tbaa !716
  %598 = load ptr, ptr %out.addr, align 8, !dbg !2497, !tbaa !716
  store ptr %597, ptr %598, align 8, !dbg !2498, !tbaa !716
  %599 = load ptr, ptr %decrypted, align 8, !dbg !2499, !tbaa !716
  %600 = load i64, ptr %decryptedlen, align 8, !dbg !2500, !tbaa !1805
  %add.ptr1097 = getelementptr inbounds i8, ptr %599, i64 %600, !dbg !2501
  %601 = load ptr, ptr %block, align 8, !dbg !2502, !tbaa !716
  %call1098 = call i32 @apr_crypto_block_decrypt_finish(ptr noundef %add.ptr1097, ptr noundef %tlen, ptr noundef %601), !dbg !2503
  store i32 %call1098, ptr %res, align 4, !dbg !2504, !tbaa !852
  %602 = load i32, ptr %res, align 4, !dbg !2505, !tbaa !852
  %cmp1099 = icmp ne i32 0, %602, !dbg !2507
  br i1 %cmp1099, label %if.then1101, label %if.end1219, !dbg !2508

if.then1101:                                      ; preds = %if.end1096
  br label %do.body1102, !dbg !2509

do.body1102:                                      ; preds = %if.then1101
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true1103, label %cond.false1104, !dbg !2511

cond.true1103:                                    ; preds = %do.body1102
  %603 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2511, !tbaa !852
  br label %cond.end1105, !dbg !2511

cond.false1104:                                   ; preds = %do.body1102
  br label %cond.end1105, !dbg !2511

cond.end1105:                                     ; preds = %cond.false1104, %cond.true1103
  %cond1106 = phi i32 [ %603, %cond.true1103 ], [ -1, %cond.false1104 ], !dbg !2511
  %cmp1107 = icmp slt i32 %cond1106, 0, !dbg !2511
  br i1 %cmp1107, label %cond.true1160, label %lor.lhs.false1109, !dbg !2511

lor.lhs.false1109:                                ; preds = %cond.end1105
  %604 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %log1110 = getelementptr inbounds %struct.request_rec, ptr %604, i32 0, i32 56, !dbg !2511
  %605 = load ptr, ptr %log1110, align 8, !dbg !2511, !tbaa !1495
  %tobool1111 = icmp ne ptr %605, null, !dbg !2511
  br i1 %tobool1111, label %cond.true1112, label %cond.false1114, !dbg !2511

cond.true1112:                                    ; preds = %lor.lhs.false1109
  %606 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %log1113 = getelementptr inbounds %struct.request_rec, ptr %606, i32 0, i32 56, !dbg !2511
  %607 = load ptr, ptr %log1113, align 8, !dbg !2511, !tbaa !1495
  br label %cond.end1126, !dbg !2511

cond.false1114:                                   ; preds = %lor.lhs.false1109
  %608 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %connection1115 = getelementptr inbounds %struct.request_rec, ptr %608, i32 0, i32 1, !dbg !2511
  %609 = load ptr, ptr %connection1115, align 8, !dbg !2511, !tbaa !1496
  %log1116 = getelementptr inbounds %struct.conn_rec, ptr %609, i32 0, i32 24, !dbg !2511
  %610 = load ptr, ptr %log1116, align 8, !dbg !2511, !tbaa !1497
  %tobool1117 = icmp ne ptr %610, null, !dbg !2511
  br i1 %tobool1117, label %cond.true1118, label %cond.false1121, !dbg !2511

cond.true1118:                                    ; preds = %cond.false1114
  %611 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %connection1119 = getelementptr inbounds %struct.request_rec, ptr %611, i32 0, i32 1, !dbg !2511
  %612 = load ptr, ptr %connection1119, align 8, !dbg !2511, !tbaa !1496
  %log1120 = getelementptr inbounds %struct.conn_rec, ptr %612, i32 0, i32 24, !dbg !2511
  %613 = load ptr, ptr %log1120, align 8, !dbg !2511, !tbaa !1497
  br label %cond.end1124, !dbg !2511

cond.false1121:                                   ; preds = %cond.false1114
  %614 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %server1122 = getelementptr inbounds %struct.request_rec, ptr %614, i32 0, i32 2, !dbg !2511
  %615 = load ptr, ptr %server1122, align 8, !dbg !2511, !tbaa !1472
  %log1123 = getelementptr inbounds %struct.server_rec, ptr %615, i32 0, i32 4, !dbg !2511
  br label %cond.end1124, !dbg !2511

cond.end1124:                                     ; preds = %cond.false1121, %cond.true1118
  %cond1125 = phi ptr [ %613, %cond.true1118 ], [ %log1123, %cond.false1121 ], !dbg !2511
  br label %cond.end1126, !dbg !2511

cond.end1126:                                     ; preds = %cond.end1124, %cond.true1112
  %cond1127 = phi ptr [ %607, %cond.true1112 ], [ %cond1125, %cond.end1124 ], !dbg !2511
  %module_levels1128 = getelementptr inbounds %struct.ap_logconf, ptr %cond1127, i32 0, i32 0, !dbg !2511
  %616 = load ptr, ptr %module_levels1128, align 8, !dbg !2511, !tbaa !1499
  %cmp1129 = icmp eq ptr %616, null, !dbg !2511
  br i1 %cmp1129, label %cond.true1160, label %lor.lhs.false1131, !dbg !2511

lor.lhs.false1131:                                ; preds = %cond.end1126
  %617 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %log1132 = getelementptr inbounds %struct.request_rec, ptr %617, i32 0, i32 56, !dbg !2511
  %618 = load ptr, ptr %log1132, align 8, !dbg !2511, !tbaa !1495
  %tobool1133 = icmp ne ptr %618, null, !dbg !2511
  br i1 %tobool1133, label %cond.true1134, label %cond.false1136, !dbg !2511

cond.true1134:                                    ; preds = %lor.lhs.false1131
  %619 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %log1135 = getelementptr inbounds %struct.request_rec, ptr %619, i32 0, i32 56, !dbg !2511
  %620 = load ptr, ptr %log1135, align 8, !dbg !2511, !tbaa !1495
  br label %cond.end1148, !dbg !2511

cond.false1136:                                   ; preds = %lor.lhs.false1131
  %621 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %connection1137 = getelementptr inbounds %struct.request_rec, ptr %621, i32 0, i32 1, !dbg !2511
  %622 = load ptr, ptr %connection1137, align 8, !dbg !2511, !tbaa !1496
  %log1138 = getelementptr inbounds %struct.conn_rec, ptr %622, i32 0, i32 24, !dbg !2511
  %623 = load ptr, ptr %log1138, align 8, !dbg !2511, !tbaa !1497
  %tobool1139 = icmp ne ptr %623, null, !dbg !2511
  br i1 %tobool1139, label %cond.true1140, label %cond.false1143, !dbg !2511

cond.true1140:                                    ; preds = %cond.false1136
  %624 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %connection1141 = getelementptr inbounds %struct.request_rec, ptr %624, i32 0, i32 1, !dbg !2511
  %625 = load ptr, ptr %connection1141, align 8, !dbg !2511, !tbaa !1496
  %log1142 = getelementptr inbounds %struct.conn_rec, ptr %625, i32 0, i32 24, !dbg !2511
  %626 = load ptr, ptr %log1142, align 8, !dbg !2511, !tbaa !1497
  br label %cond.end1146, !dbg !2511

cond.false1143:                                   ; preds = %cond.false1136
  %627 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %server1144 = getelementptr inbounds %struct.request_rec, ptr %627, i32 0, i32 2, !dbg !2511
  %628 = load ptr, ptr %server1144, align 8, !dbg !2511, !tbaa !1472
  %log1145 = getelementptr inbounds %struct.server_rec, ptr %628, i32 0, i32 4, !dbg !2511
  br label %cond.end1146, !dbg !2511

cond.end1146:                                     ; preds = %cond.false1143, %cond.true1140
  %cond1147 = phi ptr [ %626, %cond.true1140 ], [ %log1145, %cond.false1143 ], !dbg !2511
  br label %cond.end1148, !dbg !2511

cond.end1148:                                     ; preds = %cond.end1146, %cond.true1134
  %cond1149 = phi ptr [ %620, %cond.true1134 ], [ %cond1147, %cond.end1146 ], !dbg !2511
  %module_levels1150 = getelementptr inbounds %struct.ap_logconf, ptr %cond1149, i32 0, i32 0, !dbg !2511
  %629 = load ptr, ptr %module_levels1150, align 8, !dbg !2511, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true1151, label %cond.false1152, !dbg !2511

cond.true1151:                                    ; preds = %cond.end1148
  %630 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2511, !tbaa !852
  br label %cond.end1153, !dbg !2511

cond.false1152:                                   ; preds = %cond.end1148
  br label %cond.end1153, !dbg !2511

cond.end1153:                                     ; preds = %cond.false1152, %cond.true1151
  %cond1154 = phi i32 [ %630, %cond.true1151 ], [ -1, %cond.false1152 ], !dbg !2511
  %idxprom1155 = sext i32 %cond1154 to i64, !dbg !2511
  %arrayidx1156 = getelementptr inbounds i8, ptr %629, i64 %idxprom1155, !dbg !2511
  %631 = load i8, ptr %arrayidx1156, align 1, !dbg !2511, !tbaa !1005
  %conv1157 = sext i8 %631 to i32, !dbg !2511
  %cmp1158 = icmp slt i32 %conv1157, 0, !dbg !2511
  br i1 %cmp1158, label %cond.true1160, label %cond.false1180, !dbg !2511

cond.true1160:                                    ; preds = %cond.end1153, %cond.end1126, %cond.end1105
  %632 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %log1161 = getelementptr inbounds %struct.request_rec, ptr %632, i32 0, i32 56, !dbg !2511
  %633 = load ptr, ptr %log1161, align 8, !dbg !2511, !tbaa !1495
  %tobool1162 = icmp ne ptr %633, null, !dbg !2511
  br i1 %tobool1162, label %cond.true1163, label %cond.false1165, !dbg !2511

cond.true1163:                                    ; preds = %cond.true1160
  %634 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %log1164 = getelementptr inbounds %struct.request_rec, ptr %634, i32 0, i32 56, !dbg !2511
  %635 = load ptr, ptr %log1164, align 8, !dbg !2511, !tbaa !1495
  br label %cond.end1177, !dbg !2511

cond.false1165:                                   ; preds = %cond.true1160
  %636 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %connection1166 = getelementptr inbounds %struct.request_rec, ptr %636, i32 0, i32 1, !dbg !2511
  %637 = load ptr, ptr %connection1166, align 8, !dbg !2511, !tbaa !1496
  %log1167 = getelementptr inbounds %struct.conn_rec, ptr %637, i32 0, i32 24, !dbg !2511
  %638 = load ptr, ptr %log1167, align 8, !dbg !2511, !tbaa !1497
  %tobool1168 = icmp ne ptr %638, null, !dbg !2511
  br i1 %tobool1168, label %cond.true1169, label %cond.false1172, !dbg !2511

cond.true1169:                                    ; preds = %cond.false1165
  %639 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %connection1170 = getelementptr inbounds %struct.request_rec, ptr %639, i32 0, i32 1, !dbg !2511
  %640 = load ptr, ptr %connection1170, align 8, !dbg !2511, !tbaa !1496
  %log1171 = getelementptr inbounds %struct.conn_rec, ptr %640, i32 0, i32 24, !dbg !2511
  %641 = load ptr, ptr %log1171, align 8, !dbg !2511, !tbaa !1497
  br label %cond.end1175, !dbg !2511

cond.false1172:                                   ; preds = %cond.false1165
  %642 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %server1173 = getelementptr inbounds %struct.request_rec, ptr %642, i32 0, i32 2, !dbg !2511
  %643 = load ptr, ptr %server1173, align 8, !dbg !2511, !tbaa !1472
  %log1174 = getelementptr inbounds %struct.server_rec, ptr %643, i32 0, i32 4, !dbg !2511
  br label %cond.end1175, !dbg !2511

cond.end1175:                                     ; preds = %cond.false1172, %cond.true1169
  %cond1176 = phi ptr [ %641, %cond.true1169 ], [ %log1174, %cond.false1172 ], !dbg !2511
  br label %cond.end1177, !dbg !2511

cond.end1177:                                     ; preds = %cond.end1175, %cond.true1163
  %cond1178 = phi ptr [ %635, %cond.true1163 ], [ %cond1176, %cond.end1175 ], !dbg !2511
  %level1179 = getelementptr inbounds %struct.ap_logconf, ptr %cond1178, i32 0, i32 1, !dbg !2511
  %644 = load i32, ptr %level1179, align 8, !dbg !2511, !tbaa !1500
  br label %cond.end1207, !dbg !2511

cond.false1180:                                   ; preds = %cond.end1153
  %645 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %log1181 = getelementptr inbounds %struct.request_rec, ptr %645, i32 0, i32 56, !dbg !2511
  %646 = load ptr, ptr %log1181, align 8, !dbg !2511, !tbaa !1495
  %tobool1182 = icmp ne ptr %646, null, !dbg !2511
  br i1 %tobool1182, label %cond.true1183, label %cond.false1185, !dbg !2511

cond.true1183:                                    ; preds = %cond.false1180
  %647 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %log1184 = getelementptr inbounds %struct.request_rec, ptr %647, i32 0, i32 56, !dbg !2511
  %648 = load ptr, ptr %log1184, align 8, !dbg !2511, !tbaa !1495
  br label %cond.end1197, !dbg !2511

cond.false1185:                                   ; preds = %cond.false1180
  %649 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %connection1186 = getelementptr inbounds %struct.request_rec, ptr %649, i32 0, i32 1, !dbg !2511
  %650 = load ptr, ptr %connection1186, align 8, !dbg !2511, !tbaa !1496
  %log1187 = getelementptr inbounds %struct.conn_rec, ptr %650, i32 0, i32 24, !dbg !2511
  %651 = load ptr, ptr %log1187, align 8, !dbg !2511, !tbaa !1497
  %tobool1188 = icmp ne ptr %651, null, !dbg !2511
  br i1 %tobool1188, label %cond.true1189, label %cond.false1192, !dbg !2511

cond.true1189:                                    ; preds = %cond.false1185
  %652 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %connection1190 = getelementptr inbounds %struct.request_rec, ptr %652, i32 0, i32 1, !dbg !2511
  %653 = load ptr, ptr %connection1190, align 8, !dbg !2511, !tbaa !1496
  %log1191 = getelementptr inbounds %struct.conn_rec, ptr %653, i32 0, i32 24, !dbg !2511
  %654 = load ptr, ptr %log1191, align 8, !dbg !2511, !tbaa !1497
  br label %cond.end1195, !dbg !2511

cond.false1192:                                   ; preds = %cond.false1185
  %655 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  %server1193 = getelementptr inbounds %struct.request_rec, ptr %655, i32 0, i32 2, !dbg !2511
  %656 = load ptr, ptr %server1193, align 8, !dbg !2511, !tbaa !1472
  %log1194 = getelementptr inbounds %struct.server_rec, ptr %656, i32 0, i32 4, !dbg !2511
  br label %cond.end1195, !dbg !2511

cond.end1195:                                     ; preds = %cond.false1192, %cond.true1189
  %cond1196 = phi ptr [ %654, %cond.true1189 ], [ %log1194, %cond.false1192 ], !dbg !2511
  br label %cond.end1197, !dbg !2511

cond.end1197:                                     ; preds = %cond.end1195, %cond.true1183
  %cond1198 = phi ptr [ %648, %cond.true1183 ], [ %cond1196, %cond.end1195 ], !dbg !2511
  %module_levels1199 = getelementptr inbounds %struct.ap_logconf, ptr %cond1198, i32 0, i32 0, !dbg !2511
  %657 = load ptr, ptr %module_levels1199, align 8, !dbg !2511, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true1200, label %cond.false1201, !dbg !2511

cond.true1200:                                    ; preds = %cond.end1197
  %658 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2511, !tbaa !852
  br label %cond.end1202, !dbg !2511

cond.false1201:                                   ; preds = %cond.end1197
  br label %cond.end1202, !dbg !2511

cond.end1202:                                     ; preds = %cond.false1201, %cond.true1200
  %cond1203 = phi i32 [ %658, %cond.true1200 ], [ -1, %cond.false1201 ], !dbg !2511
  %idxprom1204 = sext i32 %cond1203 to i64, !dbg !2511
  %arrayidx1205 = getelementptr inbounds i8, ptr %657, i64 %idxprom1204, !dbg !2511
  %659 = load i8, ptr %arrayidx1205, align 1, !dbg !2511, !tbaa !1005
  %conv1206 = sext i8 %659 to i32, !dbg !2511
  br label %cond.end1207, !dbg !2511

cond.end1207:                                     ; preds = %cond.end1202, %cond.end1177
  %cond1208 = phi i32 [ %644, %cond.end1177 ], [ %conv1206, %cond.end1202 ], !dbg !2511
  %cmp1209 = icmp sge i32 %cond1208, 7, !dbg !2511
  br i1 %cmp1209, label %if.then1211, label %if.end1216, !dbg !2514

if.then1211:                                      ; preds = %cond.end1207
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true1212, label %cond.false1213, !dbg !2511

cond.true1212:                                    ; preds = %if.then1211
  %660 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2511, !tbaa !852
  br label %cond.end1214, !dbg !2511

cond.false1213:                                   ; preds = %if.then1211
  br label %cond.end1214, !dbg !2511

cond.end1214:                                     ; preds = %cond.false1213, %cond.true1212
  %cond1215 = phi i32 [ %660, %cond.true1212 ], [ -1, %cond.false1213 ], !dbg !2511
  %661 = load i32, ptr %res, align 4, !dbg !2511, !tbaa !852
  %662 = load ptr, ptr %r.addr, align 8, !dbg !2511, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 475, i32 noundef %cond1215, i32 noundef 7, i32 noundef %661, ptr noundef %662, ptr noundef @.str.37), !dbg !2511
  br label %if.end1216, !dbg !2511

if.end1216:                                       ; preds = %cond.end1214, %cond.end1207
  br label %do.cond1217, !dbg !2514

do.cond1217:                                      ; preds = %if.end1216
  br label %do.end1218, !dbg !2514

do.end1218:                                       ; preds = %do.cond1217
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2515

if.end1219:                                       ; preds = %if.end1096
  %663 = load i64, ptr %tlen, align 8, !dbg !2516, !tbaa !1805
  %664 = load i64, ptr %decryptedlen, align 8, !dbg !2517, !tbaa !1805
  %add1220 = add i64 %664, %663, !dbg !2517
  store i64 %add1220, ptr %decryptedlen, align 8, !dbg !2517, !tbaa !1805
  %665 = load ptr, ptr %decrypted, align 8, !dbg !2518, !tbaa !716
  %666 = load i64, ptr %decryptedlen, align 8, !dbg !2519, !tbaa !1805
  %arrayidx1221 = getelementptr inbounds i8, ptr %665, i64 %666, !dbg !2518
  store i8 0, ptr %arrayidx1221, align 1, !dbg !2520, !tbaa !1005
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2521

cleanup:                                          ; preds = %if.end1219, %do.end1218, %do.end1095, %do.end972, %do.end847, %do.end723, %do.end602, %do.end481, %do.end361, %do.end238
  call void @llvm.lifetime.end.p0(i64 8, ptr %slider) #8, !dbg !2522
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8, !dbg !2522
  call void @llvm.lifetime.end.p0(i64 8, ptr %passlen) #8, !dbg !2522
  call void @llvm.lifetime.end.p0(i64 8, ptr %passphrase) #8, !dbg !2522
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 6, label %for.inc
    i32 4, label %for.end
  ]

for.inc:                                          ; preds = %cleanup
  %667 = load i32, ptr %i, align 4, !dbg !2523, !tbaa !852
  %inc = add nsw i32 %667, 1, !dbg !2523
  store i32 %inc, ptr %i, align 4, !dbg !2523, !tbaa !852
  br label %for.cond, !dbg !2524, !llvm.loop !2525

for.end:                                          ; preds = %cleanup, %for.cond
  %668 = load i32, ptr %res, align 4, !dbg !2527, !tbaa !852
  %cmp1225 = icmp ne i32 0, %668, !dbg !2529
  br i1 %cmp1225, label %if.then1227, label %if.end1345, !dbg !2530

if.then1227:                                      ; preds = %for.end
  br label %do.body1228, !dbg !2531

do.body1228:                                      ; preds = %if.then1227
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true1229, label %cond.false1230, !dbg !2533

cond.true1229:                                    ; preds = %do.body1228
  %669 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2533, !tbaa !852
  br label %cond.end1231, !dbg !2533

cond.false1230:                                   ; preds = %do.body1228
  br label %cond.end1231, !dbg !2533

cond.end1231:                                     ; preds = %cond.false1230, %cond.true1229
  %cond1232 = phi i32 [ %669, %cond.true1229 ], [ -1, %cond.false1230 ], !dbg !2533
  %cmp1233 = icmp slt i32 %cond1232, 0, !dbg !2533
  br i1 %cmp1233, label %cond.true1286, label %lor.lhs.false1235, !dbg !2533

lor.lhs.false1235:                                ; preds = %cond.end1231
  %670 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %log1236 = getelementptr inbounds %struct.request_rec, ptr %670, i32 0, i32 56, !dbg !2533
  %671 = load ptr, ptr %log1236, align 8, !dbg !2533, !tbaa !1495
  %tobool1237 = icmp ne ptr %671, null, !dbg !2533
  br i1 %tobool1237, label %cond.true1238, label %cond.false1240, !dbg !2533

cond.true1238:                                    ; preds = %lor.lhs.false1235
  %672 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %log1239 = getelementptr inbounds %struct.request_rec, ptr %672, i32 0, i32 56, !dbg !2533
  %673 = load ptr, ptr %log1239, align 8, !dbg !2533, !tbaa !1495
  br label %cond.end1252, !dbg !2533

cond.false1240:                                   ; preds = %lor.lhs.false1235
  %674 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %connection1241 = getelementptr inbounds %struct.request_rec, ptr %674, i32 0, i32 1, !dbg !2533
  %675 = load ptr, ptr %connection1241, align 8, !dbg !2533, !tbaa !1496
  %log1242 = getelementptr inbounds %struct.conn_rec, ptr %675, i32 0, i32 24, !dbg !2533
  %676 = load ptr, ptr %log1242, align 8, !dbg !2533, !tbaa !1497
  %tobool1243 = icmp ne ptr %676, null, !dbg !2533
  br i1 %tobool1243, label %cond.true1244, label %cond.false1247, !dbg !2533

cond.true1244:                                    ; preds = %cond.false1240
  %677 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %connection1245 = getelementptr inbounds %struct.request_rec, ptr %677, i32 0, i32 1, !dbg !2533
  %678 = load ptr, ptr %connection1245, align 8, !dbg !2533, !tbaa !1496
  %log1246 = getelementptr inbounds %struct.conn_rec, ptr %678, i32 0, i32 24, !dbg !2533
  %679 = load ptr, ptr %log1246, align 8, !dbg !2533, !tbaa !1497
  br label %cond.end1250, !dbg !2533

cond.false1247:                                   ; preds = %cond.false1240
  %680 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %server1248 = getelementptr inbounds %struct.request_rec, ptr %680, i32 0, i32 2, !dbg !2533
  %681 = load ptr, ptr %server1248, align 8, !dbg !2533, !tbaa !1472
  %log1249 = getelementptr inbounds %struct.server_rec, ptr %681, i32 0, i32 4, !dbg !2533
  br label %cond.end1250, !dbg !2533

cond.end1250:                                     ; preds = %cond.false1247, %cond.true1244
  %cond1251 = phi ptr [ %679, %cond.true1244 ], [ %log1249, %cond.false1247 ], !dbg !2533
  br label %cond.end1252, !dbg !2533

cond.end1252:                                     ; preds = %cond.end1250, %cond.true1238
  %cond1253 = phi ptr [ %673, %cond.true1238 ], [ %cond1251, %cond.end1250 ], !dbg !2533
  %module_levels1254 = getelementptr inbounds %struct.ap_logconf, ptr %cond1253, i32 0, i32 0, !dbg !2533
  %682 = load ptr, ptr %module_levels1254, align 8, !dbg !2533, !tbaa !1499
  %cmp1255 = icmp eq ptr %682, null, !dbg !2533
  br i1 %cmp1255, label %cond.true1286, label %lor.lhs.false1257, !dbg !2533

lor.lhs.false1257:                                ; preds = %cond.end1252
  %683 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %log1258 = getelementptr inbounds %struct.request_rec, ptr %683, i32 0, i32 56, !dbg !2533
  %684 = load ptr, ptr %log1258, align 8, !dbg !2533, !tbaa !1495
  %tobool1259 = icmp ne ptr %684, null, !dbg !2533
  br i1 %tobool1259, label %cond.true1260, label %cond.false1262, !dbg !2533

cond.true1260:                                    ; preds = %lor.lhs.false1257
  %685 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %log1261 = getelementptr inbounds %struct.request_rec, ptr %685, i32 0, i32 56, !dbg !2533
  %686 = load ptr, ptr %log1261, align 8, !dbg !2533, !tbaa !1495
  br label %cond.end1274, !dbg !2533

cond.false1262:                                   ; preds = %lor.lhs.false1257
  %687 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %connection1263 = getelementptr inbounds %struct.request_rec, ptr %687, i32 0, i32 1, !dbg !2533
  %688 = load ptr, ptr %connection1263, align 8, !dbg !2533, !tbaa !1496
  %log1264 = getelementptr inbounds %struct.conn_rec, ptr %688, i32 0, i32 24, !dbg !2533
  %689 = load ptr, ptr %log1264, align 8, !dbg !2533, !tbaa !1497
  %tobool1265 = icmp ne ptr %689, null, !dbg !2533
  br i1 %tobool1265, label %cond.true1266, label %cond.false1269, !dbg !2533

cond.true1266:                                    ; preds = %cond.false1262
  %690 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %connection1267 = getelementptr inbounds %struct.request_rec, ptr %690, i32 0, i32 1, !dbg !2533
  %691 = load ptr, ptr %connection1267, align 8, !dbg !2533, !tbaa !1496
  %log1268 = getelementptr inbounds %struct.conn_rec, ptr %691, i32 0, i32 24, !dbg !2533
  %692 = load ptr, ptr %log1268, align 8, !dbg !2533, !tbaa !1497
  br label %cond.end1272, !dbg !2533

cond.false1269:                                   ; preds = %cond.false1262
  %693 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %server1270 = getelementptr inbounds %struct.request_rec, ptr %693, i32 0, i32 2, !dbg !2533
  %694 = load ptr, ptr %server1270, align 8, !dbg !2533, !tbaa !1472
  %log1271 = getelementptr inbounds %struct.server_rec, ptr %694, i32 0, i32 4, !dbg !2533
  br label %cond.end1272, !dbg !2533

cond.end1272:                                     ; preds = %cond.false1269, %cond.true1266
  %cond1273 = phi ptr [ %692, %cond.true1266 ], [ %log1271, %cond.false1269 ], !dbg !2533
  br label %cond.end1274, !dbg !2533

cond.end1274:                                     ; preds = %cond.end1272, %cond.true1260
  %cond1275 = phi ptr [ %686, %cond.true1260 ], [ %cond1273, %cond.end1272 ], !dbg !2533
  %module_levels1276 = getelementptr inbounds %struct.ap_logconf, ptr %cond1275, i32 0, i32 0, !dbg !2533
  %695 = load ptr, ptr %module_levels1276, align 8, !dbg !2533, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true1277, label %cond.false1278, !dbg !2533

cond.true1277:                                    ; preds = %cond.end1274
  %696 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2533, !tbaa !852
  br label %cond.end1279, !dbg !2533

cond.false1278:                                   ; preds = %cond.end1274
  br label %cond.end1279, !dbg !2533

cond.end1279:                                     ; preds = %cond.false1278, %cond.true1277
  %cond1280 = phi i32 [ %696, %cond.true1277 ], [ -1, %cond.false1278 ], !dbg !2533
  %idxprom1281 = sext i32 %cond1280 to i64, !dbg !2533
  %arrayidx1282 = getelementptr inbounds i8, ptr %695, i64 %idxprom1281, !dbg !2533
  %697 = load i8, ptr %arrayidx1282, align 1, !dbg !2533, !tbaa !1005
  %conv1283 = sext i8 %697 to i32, !dbg !2533
  %cmp1284 = icmp slt i32 %conv1283, 0, !dbg !2533
  br i1 %cmp1284, label %cond.true1286, label %cond.false1306, !dbg !2533

cond.true1286:                                    ; preds = %cond.end1279, %cond.end1252, %cond.end1231
  %698 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %log1287 = getelementptr inbounds %struct.request_rec, ptr %698, i32 0, i32 56, !dbg !2533
  %699 = load ptr, ptr %log1287, align 8, !dbg !2533, !tbaa !1495
  %tobool1288 = icmp ne ptr %699, null, !dbg !2533
  br i1 %tobool1288, label %cond.true1289, label %cond.false1291, !dbg !2533

cond.true1289:                                    ; preds = %cond.true1286
  %700 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %log1290 = getelementptr inbounds %struct.request_rec, ptr %700, i32 0, i32 56, !dbg !2533
  %701 = load ptr, ptr %log1290, align 8, !dbg !2533, !tbaa !1495
  br label %cond.end1303, !dbg !2533

cond.false1291:                                   ; preds = %cond.true1286
  %702 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %connection1292 = getelementptr inbounds %struct.request_rec, ptr %702, i32 0, i32 1, !dbg !2533
  %703 = load ptr, ptr %connection1292, align 8, !dbg !2533, !tbaa !1496
  %log1293 = getelementptr inbounds %struct.conn_rec, ptr %703, i32 0, i32 24, !dbg !2533
  %704 = load ptr, ptr %log1293, align 8, !dbg !2533, !tbaa !1497
  %tobool1294 = icmp ne ptr %704, null, !dbg !2533
  br i1 %tobool1294, label %cond.true1295, label %cond.false1298, !dbg !2533

cond.true1295:                                    ; preds = %cond.false1291
  %705 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %connection1296 = getelementptr inbounds %struct.request_rec, ptr %705, i32 0, i32 1, !dbg !2533
  %706 = load ptr, ptr %connection1296, align 8, !dbg !2533, !tbaa !1496
  %log1297 = getelementptr inbounds %struct.conn_rec, ptr %706, i32 0, i32 24, !dbg !2533
  %707 = load ptr, ptr %log1297, align 8, !dbg !2533, !tbaa !1497
  br label %cond.end1301, !dbg !2533

cond.false1298:                                   ; preds = %cond.false1291
  %708 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %server1299 = getelementptr inbounds %struct.request_rec, ptr %708, i32 0, i32 2, !dbg !2533
  %709 = load ptr, ptr %server1299, align 8, !dbg !2533, !tbaa !1472
  %log1300 = getelementptr inbounds %struct.server_rec, ptr %709, i32 0, i32 4, !dbg !2533
  br label %cond.end1301, !dbg !2533

cond.end1301:                                     ; preds = %cond.false1298, %cond.true1295
  %cond1302 = phi ptr [ %707, %cond.true1295 ], [ %log1300, %cond.false1298 ], !dbg !2533
  br label %cond.end1303, !dbg !2533

cond.end1303:                                     ; preds = %cond.end1301, %cond.true1289
  %cond1304 = phi ptr [ %701, %cond.true1289 ], [ %cond1302, %cond.end1301 ], !dbg !2533
  %level1305 = getelementptr inbounds %struct.ap_logconf, ptr %cond1304, i32 0, i32 1, !dbg !2533
  %710 = load i32, ptr %level1305, align 8, !dbg !2533, !tbaa !1500
  br label %cond.end1333, !dbg !2533

cond.false1306:                                   ; preds = %cond.end1279
  %711 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %log1307 = getelementptr inbounds %struct.request_rec, ptr %711, i32 0, i32 56, !dbg !2533
  %712 = load ptr, ptr %log1307, align 8, !dbg !2533, !tbaa !1495
  %tobool1308 = icmp ne ptr %712, null, !dbg !2533
  br i1 %tobool1308, label %cond.true1309, label %cond.false1311, !dbg !2533

cond.true1309:                                    ; preds = %cond.false1306
  %713 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %log1310 = getelementptr inbounds %struct.request_rec, ptr %713, i32 0, i32 56, !dbg !2533
  %714 = load ptr, ptr %log1310, align 8, !dbg !2533, !tbaa !1495
  br label %cond.end1323, !dbg !2533

cond.false1311:                                   ; preds = %cond.false1306
  %715 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %connection1312 = getelementptr inbounds %struct.request_rec, ptr %715, i32 0, i32 1, !dbg !2533
  %716 = load ptr, ptr %connection1312, align 8, !dbg !2533, !tbaa !1496
  %log1313 = getelementptr inbounds %struct.conn_rec, ptr %716, i32 0, i32 24, !dbg !2533
  %717 = load ptr, ptr %log1313, align 8, !dbg !2533, !tbaa !1497
  %tobool1314 = icmp ne ptr %717, null, !dbg !2533
  br i1 %tobool1314, label %cond.true1315, label %cond.false1318, !dbg !2533

cond.true1315:                                    ; preds = %cond.false1311
  %718 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %connection1316 = getelementptr inbounds %struct.request_rec, ptr %718, i32 0, i32 1, !dbg !2533
  %719 = load ptr, ptr %connection1316, align 8, !dbg !2533, !tbaa !1496
  %log1317 = getelementptr inbounds %struct.conn_rec, ptr %719, i32 0, i32 24, !dbg !2533
  %720 = load ptr, ptr %log1317, align 8, !dbg !2533, !tbaa !1497
  br label %cond.end1321, !dbg !2533

cond.false1318:                                   ; preds = %cond.false1311
  %721 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  %server1319 = getelementptr inbounds %struct.request_rec, ptr %721, i32 0, i32 2, !dbg !2533
  %722 = load ptr, ptr %server1319, align 8, !dbg !2533, !tbaa !1472
  %log1320 = getelementptr inbounds %struct.server_rec, ptr %722, i32 0, i32 4, !dbg !2533
  br label %cond.end1321, !dbg !2533

cond.end1321:                                     ; preds = %cond.false1318, %cond.true1315
  %cond1322 = phi ptr [ %720, %cond.true1315 ], [ %log1320, %cond.false1318 ], !dbg !2533
  br label %cond.end1323, !dbg !2533

cond.end1323:                                     ; preds = %cond.end1321, %cond.true1309
  %cond1324 = phi ptr [ %714, %cond.true1309 ], [ %cond1322, %cond.end1321 ], !dbg !2533
  %module_levels1325 = getelementptr inbounds %struct.ap_logconf, ptr %cond1324, i32 0, i32 0, !dbg !2533
  %723 = load ptr, ptr %module_levels1325, align 8, !dbg !2533, !tbaa !1499
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true1326, label %cond.false1327, !dbg !2533

cond.true1326:                                    ; preds = %cond.end1323
  %724 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2533, !tbaa !852
  br label %cond.end1328, !dbg !2533

cond.false1327:                                   ; preds = %cond.end1323
  br label %cond.end1328, !dbg !2533

cond.end1328:                                     ; preds = %cond.false1327, %cond.true1326
  %cond1329 = phi i32 [ %724, %cond.true1326 ], [ -1, %cond.false1327 ], !dbg !2533
  %idxprom1330 = sext i32 %cond1329 to i64, !dbg !2533
  %arrayidx1331 = getelementptr inbounds i8, ptr %723, i64 %idxprom1330, !dbg !2533
  %725 = load i8, ptr %arrayidx1331, align 1, !dbg !2533, !tbaa !1005
  %conv1332 = sext i8 %725 to i32, !dbg !2533
  br label %cond.end1333, !dbg !2533

cond.end1333:                                     ; preds = %cond.end1328, %cond.end1303
  %cond1334 = phi i32 [ %710, %cond.end1303 ], [ %conv1332, %cond.end1328 ], !dbg !2533
  %cmp1335 = icmp sge i32 %cond1334, 6, !dbg !2533
  br i1 %cmp1335, label %if.then1337, label %if.end1342, !dbg !2536

if.then1337:                                      ; preds = %cond.end1333
  br i1 icmp ne (ptr getelementptr (i8, ptr @session_crypto_module, i64 8), ptr null), label %cond.true1338, label %cond.false1339, !dbg !2533

cond.true1338:                                    ; preds = %if.then1337
  %726 = load i32, ptr getelementptr (i8, ptr @session_crypto_module, i64 8), align 4, !dbg !2533, !tbaa !852
  br label %cond.end1340, !dbg !2533

cond.false1339:                                   ; preds = %if.then1337
  br label %cond.end1340, !dbg !2533

cond.end1340:                                     ; preds = %cond.false1339, %cond.true1338
  %cond1341 = phi i32 [ %726, %cond.true1338 ], [ -1, %cond.false1339 ], !dbg !2533
  %727 = load i32, ptr %res, align 4, !dbg !2533, !tbaa !852
  %728 = load ptr, ptr %r.addr, align 8, !dbg !2533, !tbaa !716
  call void (ptr, i32, i32, i32, i32, ptr, ptr, ...) @ap_log_rerror_(ptr noundef @.str, i32 noundef 486, i32 noundef %cond1341, i32 noundef 6, i32 noundef %727, ptr noundef %728, ptr noundef @.str.38), !dbg !2533
  br label %if.end1342, !dbg !2533

if.end1342:                                       ; preds = %cond.end1340, %cond.end1333
  br label %do.cond1343, !dbg !2536

do.cond1343:                                      ; preds = %if.end1342
  br label %do.end1344, !dbg !2536

do.end1344:                                       ; preds = %do.cond1343
  br label %if.end1345, !dbg !2537

if.end1345:                                       ; preds = %do.end1344, %for.end
  %729 = load i32, ptr %res, align 4, !dbg !2538, !tbaa !852
  store i32 %729, ptr %retval, align 4, !dbg !2539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup1346, !dbg !2539

cleanup1346:                                      ; preds = %if.end1345, %if.then110, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !2540
  call void @llvm.lifetime.end.p0(i64 8, ptr %auth) #8, !dbg !2540
  call void @llvm.lifetime.end.p0(i64 8, ptr %cipher) #8, !dbg !2540
  call void @llvm.lifetime.end.p0(i64 8, ptr %blockSize) #8, !dbg !2540
  call void @llvm.lifetime.end.p0(i64 8, ptr %decoded) #8, !dbg !2540
  call void @llvm.lifetime.end.p0(i64 8, ptr %decodedlen) #8, !dbg !2540
  call void @llvm.lifetime.end.p0(i64 8, ptr %tlen) #8, !dbg !2540
  call void @llvm.lifetime.end.p0(i64 8, ptr %decryptedlen) #8, !dbg !2540
  call void @llvm.lifetime.end.p0(i64 8, ptr %decrypted) #8, !dbg !2540
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #8, !dbg !2540
  call void @llvm.lifetime.end.p0(i64 8, ptr %ivSize) #8, !dbg !2540
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #8, !dbg !2540
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #8, !dbg !2540
  %730 = load i32, ptr %retval, align 4, !dbg !2540
  ret i32 %730, !dbg !2540

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !2541 i32 @apr_base64_decode_len(ptr noundef) #2

declare !dbg !2544 i32 @apr_base64_decode(ptr noundef, ptr noundef) #2

declare !dbg !2547 i32 @apr_crypto_equals(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !2550 i32 @apr_crypto_block_decrypt_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2553 i32 @apr_crypto_block_decrypt(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare !dbg !2554 i32 @apr_crypto_block_decrypt_finish(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2555 i32 @ap_state_query(i32 noundef) #2

declare !dbg !2557 i32 @apr_crypto_init(ptr noundef) #2

declare !dbg !2560 void @ap_log_error_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

declare !dbg !2563 i32 @apr_crypto_get_driver(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2568 i32 @apr_crypto_make(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !2572 i32 @apr_pool_userdata_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @apr_pool_cleanup_null(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!705, !706, !707, !708, !709}
!llvm.ident = !{!710}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 798, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "mod_session_crypto.c", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src/modules/session", checksumkind: CSK_MD5, checksum: "c5a2f9c05699e1667621af8b35f9489c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 21)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "session_crypto_cmds", scope: !9, file: !2, line: 776, type: !702, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !174, globals: !211, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !28, !86, !110, !119, !127, !139, !144, !149, !161, !169}
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
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !30, file: !29, line: 151, baseType: !13, size: 32, elements: !107)
!29 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_buckets.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "afcd28b2e200d46cb3a438f3ad8fc6de")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_type_t", file: !29, line: 131, size: 448, elements: !31)
!31 = !{!32, !35, !37, !38, !43, !90, !98, !102}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !30, file: !29, line: 135, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "num_func", scope: !30, file: !29, line: 140, baseType: !36, size: 32, offset: 64)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "is_metadata", scope: !30, file: !29, line: 156, baseType: !28, size: 32, offset: 96)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !30, file: !29, line: 164, baseType: !39, size: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !30, file: !29, line: 176, baseType: !44, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !49, !83, !84, !85}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_status_t", file: !48, line: 44, baseType: !36)
!48 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_errno.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "571a7b9d4a9f11f6d27db63c8ba4bc85")
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_bucket", file: !29, line: 121, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket", file: !29, line: 224, size: 512, elements: !52)
!52 = !{!53, !60, !64, !70, !77, !78, !79}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !51, file: !29, line: 226, baseType: !54, size: 128)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !51, file: !29, line: 226, size: 128, elements: !55)
!55 = !{!56, !59}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !54, file: !29, line: 226, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !54, file: !29, line: 226, baseType: !57, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !51, file: !29, line: 228, baseType: !61, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_bucket_type_t", file: !29, line: 126, baseType: !30)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !51, file: !29, line: 234, baseType: !65, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_size_t", file: !66, line: 379, baseType: !67)
!66 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "73077acfd8398d55139f48047843856b")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !68, line: 70, baseType: !69)
!68 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!69 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !51, file: !29, line: 242, baseType: !71, size: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_off_t", file: !66, line: 381, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !73, line: 85, baseType: !74)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !75, line: 152, baseType: !76)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!76 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !51, file: !29, line: 244, baseType: !42, size: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !51, file: !29, line: 252, baseType: !39, size: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !51, file: !29, line: 254, baseType: !80, size: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_bucket_alloc_t", file: !29, line: 123, baseType: !82)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_alloc_t", file: !29, line: 123, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_read_type_e", file: !29, line: 60, baseType: !86)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 57, baseType: !13, size: 32, elements: !87)
!87 = !{!88, !89}
!88 = !DIEnumerator(name: "APR_BLOCK_READ", value: 0)
!89 = !DIEnumerator(name: "APR_NONBLOCK_READ", value: 1)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "setaside", scope: !30, file: !29, line: 192, baseType: !91, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!47, !49, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_pool_t", file: !96, line: 60, baseType: !97)
!96 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_pools.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "ca846d53df1698194c1a577ccf147813")
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_pool_t", file: !96, line: 60, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !30, file: !29, line: 203, baseType: !99, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!47, !49, !65}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !30, file: !29, line: 211, baseType: !103, size: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!47, !49, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "APR_BUCKET_DATA", value: 0)
!109 = !DIEnumerator(name: "APR_BUCKET_METADATA", value: 1)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 41, baseType: !13, size: 32, elements: !112)
!111 = !DIFile(filename: "include/util_filter.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "894e51124b630754ca6243e0c50426ad")
!112 = !{!113, !114, !115, !116, !117, !118}
!113 = !DIEnumerator(name: "AP_MODE_READBYTES", value: 0)
!114 = !DIEnumerator(name: "AP_MODE_GETLINE", value: 1)
!115 = !DIEnumerator(name: "AP_MODE_EATCRLF", value: 2)
!116 = !DIEnumerator(name: "AP_MODE_SPECULATIVE", value: 3)
!117 = !DIEnumerator(name: "AP_MODE_EXHAUSTIVE", value: 4)
!118 = !DIEnumerator(name: "AP_MODE_INIT", value: 5)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !111, line: 158, baseType: !13, size: 32, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126}
!121 = !DIEnumerator(name: "AP_FTYPE_RESOURCE", value: 10)
!122 = !DIEnumerator(name: "AP_FTYPE_CONTENT_SET", value: 20)
!123 = !DIEnumerator(name: "AP_FTYPE_PROTOCOL", value: 30)
!124 = !DIEnumerator(name: "AP_FTYPE_TRANSCODE", value: 40)
!125 = !DIEnumerator(name: "AP_FTYPE_CONNECTION", value: 50)
!126 = !DIEnumerator(name: "AP_FTYPE_NETWORK", value: 60)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !128, line: 1251, baseType: !13, size: 32, elements: !129)
!128 = !DIFile(filename: "include/httpd.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "13796706810e88ffd526cf3216ebbaab")
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138}
!130 = !DIEnumerator(name: "CONN_STATE_CHECK_REQUEST_LINE_READABLE", value: 0)
!131 = !DIEnumerator(name: "CONN_STATE_READ_REQUEST_LINE", value: 1)
!132 = !DIEnumerator(name: "CONN_STATE_HANDLER", value: 2)
!133 = !DIEnumerator(name: "CONN_STATE_WRITE_COMPLETION", value: 3)
!134 = !DIEnumerator(name: "CONN_STATE_SUSPENDED", value: 4)
!135 = !DIEnumerator(name: "CONN_STATE_LINGER", value: 5)
!136 = !DIEnumerator(name: "CONN_STATE_LINGER_NORMAL", value: 6)
!137 = !DIEnumerator(name: "CONN_STATE_LINGER_SHORT", value: 7)
!138 = !DIEnumerator(name: "CONN_STATE_NUM", value: 8)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !128, line: 1264, baseType: !13, size: 32, elements: !140)
!140 = !{!141, !142, !143}
!141 = !DIEnumerator(name: "CONN_SENSE_DEFAULT", value: 0)
!142 = !DIEnumerator(name: "CONN_SENSE_WANT_READ", value: 1)
!143 = !DIEnumerator(name: "CONN_SENSE_WANT_WRITE", value: 2)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !128, line: 1136, baseType: !13, size: 32, elements: !145)
!145 = !{!146, !147, !148}
!146 = !DIEnumerator(name: "AP_CONN_UNKNOWN", value: 0)
!147 = !DIEnumerator(name: "AP_CONN_CLOSE", value: 1)
!148 = !DIEnumerator(name: "AP_CONN_KEEPALIVE", value: 2)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !150, line: 62, baseType: !13, size: 32, elements: !151)
!150 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_file_info.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "58895203e42ced4eaee1557b60315f00")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160}
!152 = !DIEnumerator(name: "APR_NOFILE", value: 0)
!153 = !DIEnumerator(name: "APR_REG", value: 1)
!154 = !DIEnumerator(name: "APR_DIR", value: 2)
!155 = !DIEnumerator(name: "APR_CHR", value: 3)
!156 = !DIEnumerator(name: "APR_BLK", value: 4)
!157 = !DIEnumerator(name: "APR_PIPE", value: 5)
!158 = !DIEnumerator(name: "APR_LNK", value: 6)
!159 = !DIEnumerator(name: "APR_SOCK", value: 7)
!160 = !DIEnumerator(name: "APR_UNKFILE", value: 127)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !162, line: 106, baseType: !13, size: 32, elements: !163)
!162 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_crypto.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "fac5587a1af4c5cc3b7c66ec4731fda6")
!163 = !{!164, !165, !166, !167, !168}
!164 = !DIEnumerator(name: "APR_KEY_NONE", value: 0)
!165 = !DIEnumerator(name: "APR_KEY_3DES_192", value: 1)
!166 = !DIEnumerator(name: "APR_KEY_AES_128", value: 2)
!167 = !DIEnumerator(name: "APR_KEY_AES_192", value: 3)
!168 = !DIEnumerator(name: "APR_KEY_AES_256", value: 4)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !162, line: 115, baseType: !13, size: 32, elements: !170)
!170 = !{!171, !172, !173}
!171 = !DIEnumerator(name: "APR_MODE_NONE", value: 0)
!172 = !DIEnumerator(name: "APR_MODE_ECB", value: 1)
!173 = !DIEnumerator(name: "APR_MODE_CBC", value: 2)
!174 = !{!42, !175, !194, !33, !201, !203, !83, !204, !206, !208, !190, !209}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "session_crypto_dir_conf", file: !2, line: 50, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 45, size: 256, elements: !178)
!178 = !{!179, !191, !192, !193}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "passphrases", scope: !177, file: !2, line: 46, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_array_header_t", file: !182, line: 59, baseType: !183)
!182 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_tables.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "82dd315cfdbab9381cd05a1d2abe34a2")
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_array_header_t", file: !182, line: 62, size: 256, elements: !184)
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !183, file: !182, line: 64, baseType: !94, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "elt_size", scope: !183, file: !182, line: 66, baseType: !36, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nelts", scope: !183, file: !182, line: 68, baseType: !36, size: 32, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nalloc", scope: !183, file: !182, line: 70, baseType: !36, size: 32, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !183, file: !182, line: 72, baseType: !190, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "passphrases_set", scope: !177, file: !2, line: 47, baseType: !36, size: 32, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !177, file: !2, line: 48, baseType: !33, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "cipher_set", scope: !177, file: !2, line: 49, baseType: !36, size: 32, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "session_crypto_conf", file: !2, line: 59, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 55, size: 192, elements: !197)
!197 = !{!198, !199, !200}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "library", scope: !196, file: !2, line: 56, baseType: !33, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !196, file: !2, line: 57, baseType: !33, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "library_set", scope: !196, file: !2, line: 58, baseType: !36, size: 32, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!211 = !{!0, !212, !513, !518, !521, !526, !531, !536, !541, !546, !551, !553, !7, !558, !563, !568, !573, !578, !583, !588, !593, !595, !600, !605, !610, !612, !617, !622, !624, !629, !634, !639, !644, !649, !651, !653, !655, !657, !659, !661, !663, !665, !670, !672, !677, !682, !687, !692, !697}
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "session_crypto_module", scope: !9, file: !2, line: 796, type: !214, isLocal: false, isDefinition: true)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "module", file: !12, line: 344, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_struct", file: !12, line: 345, size: 896, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !224, !225, !238, !242, !246, !400, !401, !508, !512}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !215, file: !12, line: 349, baseType: !36, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "minor_version", scope: !215, file: !12, line: 352, baseType: !36, size: 32, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "module_index", scope: !215, file: !12, line: 354, baseType: !36, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !215, file: !12, line: 357, baseType: !33, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_load_handle", scope: !215, file: !12, line: 359, baseType: !42, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !12, line: 364, baseType: !223, size: 64, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !215, file: !12, line: 368, baseType: !69, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "rewrite_args", scope: !215, file: !12, line: 374, baseType: !226, size: 64, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !229}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "process_rec", file: !128, line: 805, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "process_rec", file: !128, line: 822, size: 320, elements: !232)
!232 = !{!233, !234, !235, !236, !237}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !231, file: !128, line: 824, baseType: !94, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "pconf", scope: !231, file: !128, line: 826, baseType: !94, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "short_name", scope: !231, file: !128, line: 828, baseType: !33, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !231, file: !128, line: 830, baseType: !201, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !231, file: !128, line: 832, baseType: !36, size: 32, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "create_dir_config", scope: !215, file: !12, line: 381, baseType: !239, size: 64, offset: 448)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!42, !94, !190}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "merge_dir_config", scope: !215, file: !12, line: 389, baseType: !243, size: 64, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!42, !94, !42, !42}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_config", scope: !215, file: !12, line: 396, baseType: !247, size: 64, offset: 576)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!42, !94, !250}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "server_rec", file: !128, line: 807, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "server_rec", file: !128, line: 1315, size: 1536, elements: !253)
!253 = !{!254, !255, !256, !257, !262, !269, !272, !273, !274, !275, !276, !281, !282, !283, !284, !381, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "process", scope: !252, file: !128, line: 1317, baseType: !229, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !252, file: !128, line: 1319, baseType: !250, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "error_fname", scope: !252, file: !128, line: 1324, baseType: !190, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "error_log", scope: !252, file: !128, line: 1326, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_file_t", file: !260, line: 188, baseType: !261)
!260 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_file_io.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "9f1a845f7255d07e28e3a10d24320b5d")
!261 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_file_t", file: !150, line: 212, flags: DIFlagFwdDecl)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !252, file: !128, line: 1328, baseType: !263, size: 128, offset: 256)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_logconf", file: !128, line: 1305, size: 128, elements: !264)
!264 = !{!265, !268}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "module_levels", scope: !263, file: !128, line: 1307, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !263, file: !128, line: 1310, baseType: !36, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "module_config", scope: !252, file: !128, line: 1334, baseType: !270, size: 64, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DICompositeType(tag: DW_TAG_structure_type, name: "ap_conf_vector_t", file: !128, line: 791, flags: DIFlagFwdDecl)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_defaults", scope: !252, file: !128, line: 1336, baseType: !270, size: 64, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "defn_name", scope: !252, file: !128, line: 1339, baseType: !33, size: 64, offset: 512)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "defn_line_number", scope: !252, file: !128, line: 1341, baseType: !13, size: 32, offset: 576)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !252, file: !128, line: 1343, baseType: !4, size: 8, offset: 608)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !252, file: !128, line: 1349, baseType: !277, size: 16, offset: 624)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_port_t", file: !278, line: 230, baseType: !279)
!278 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_network_io.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "d28b53dbcb33f6acce926c2efb3f7365")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uint16_t", file: !66, line: 331, baseType: !280)
!280 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "server_scheme", scope: !252, file: !128, line: 1351, baseType: !33, size: 64, offset: 640)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "server_admin", scope: !252, file: !128, line: 1356, baseType: !190, size: 64, offset: 704)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "server_hostname", scope: !252, file: !128, line: 1358, baseType: !190, size: 64, offset: 768)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !252, file: !128, line: 1363, baseType: !285, size: 64, offset: 832)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "server_addr_rec", file: !128, line: 1293, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "server_addr_rec", file: !128, line: 1294, size: 256, elements: !288)
!288 = !{!289, !290, !291, !380}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !128, line: 1296, baseType: !285, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "virthost", scope: !287, file: !128, line: 1298, baseType: !190, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "host_addr", scope: !287, file: !128, line: 1300, baseType: !292, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_sockaddr_t", file: !278, line: 235, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_sockaddr_t", file: !278, line: 239, size: 1536, elements: !295)
!295 = !{!296, !297, !298, !299, !300, !302, !307, !308, !309, !310, !311}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !294, file: !278, line: 241, baseType: !94, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !294, file: !278, line: 243, baseType: !190, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "servname", scope: !294, file: !278, line: 245, baseType: !190, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !294, file: !278, line: 247, baseType: !277, size: 16, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !294, file: !278, line: 249, baseType: !301, size: 32, offset: 224)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_int32_t", file: !66, line: 333, baseType: !36)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "salen", scope: !294, file: !278, line: 251, baseType: !303, size: 32, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_socklen_t", file: !66, line: 382, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !305, line: 33, baseType: !306)
!305 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !75, line: 210, baseType: !13)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ipaddr_len", scope: !294, file: !278, line: 253, baseType: !36, size: 32, offset: 288)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "addr_str_len", scope: !294, file: !278, line: 256, baseType: !36, size: 32, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ipaddr_ptr", scope: !294, file: !278, line: 259, baseType: !42, size: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !294, file: !278, line: 262, baseType: !292, size: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !294, file: !278, line: 280, baseType: !312, size: 1024, offset: 512)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !294, file: !278, line: 264, size: 1024, elements: !313)
!313 = !{!314, !337, !362, !371}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !312, file: !278, line: 266, baseType: !315, size: 128)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !316, line: 245, size: 128, elements: !317)
!316 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!317 = !{!318, !321, !326, !333}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !315, file: !316, line: 247, baseType: !319, size: 16)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !320, line: 28, baseType: !280)
!320 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!321 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !315, file: !316, line: 248, baseType: !322, size: 16, offset: 16)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !316, line: 123, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !324, line: 25, baseType: !325)
!324 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !75, line: 40, baseType: !280)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !315, file: !316, line: 249, baseType: !327, size: 32, offset: 32)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !316, line: 31, size: 32, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !327, file: !316, line: 33, baseType: !330, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !316, line: 30, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !324, line: 26, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !75, line: 42, baseType: !13)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !315, file: !316, line: 252, baseType: !334, size: 64, offset: 64)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 64, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 8)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "sin6", scope: !312, file: !278, line: 269, baseType: !338, size: 224)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !316, line: 260, size: 224, elements: !339)
!339 = !{!340, !341, !342, !343, !361}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !338, file: !316, line: 262, baseType: !319, size: 16)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !338, file: !316, line: 263, baseType: !322, size: 16, offset: 16)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !338, file: !316, line: 264, baseType: !331, size: 32, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !338, file: !316, line: 265, baseType: !344, size: 128, offset: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !316, line: 219, size: 128, elements: !345)
!345 = !{!346}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !344, file: !316, line: 226, baseType: !347, size: 128)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !316, line: 221, size: 128, elements: !348)
!348 = !{!349, !355, !357}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !347, file: !316, line: 223, baseType: !350, size: 128)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 128, elements: !353)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !324, line: 24, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !75, line: 38, baseType: !205)
!353 = !{!354}
!354 = !DISubrange(count: 16)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !347, file: !316, line: 224, baseType: !356, size: 128)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 128, elements: !335)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !347, file: !316, line: 225, baseType: !358, size: 128)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 128, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 4)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !338, file: !316, line: 266, baseType: !331, size: 32, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "sas", scope: !312, file: !278, line: 274, baseType: !363, size: 1024)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !305, line: 193, size: 1024, elements: !364)
!364 = !{!365, !366, !370}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !363, file: !305, line: 195, baseType: !319, size: 16)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !363, file: !305, line: 196, baseType: !367, size: 944, offset: 16)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 944, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 118)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !363, file: !305, line: 197, baseType: !69, size: 64, offset: 960)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "unx", scope: !312, file: !278, line: 278, baseType: !372, size: 880)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !373, line: 29, size: 880, elements: !374)
!373 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "", checksumkind: CSK_MD5, checksum: "543d98cd612c9215c9333043f81a0cd3")
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !372, file: !373, line: 31, baseType: !319, size: 16)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !372, file: !373, line: 32, baseType: !377, size: 864, offset: 16)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 864, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 108)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "host_port", scope: !287, file: !128, line: 1302, baseType: !277, size: 16, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !252, file: !128, line: 1365, baseType: !382, size: 64, offset: 896)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_interval_time_t", file: !383, line: 55, baseType: !384)
!383 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_time.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "1a8b9732d4ee010f71e3eb03e6e3a16e")
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_int64_t", file: !66, line: 371, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !386, line: 27, baseType: !387)
!386 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !75, line: 44, baseType: !76)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout", scope: !252, file: !128, line: 1367, baseType: !382, size: 64, offset: 960)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_max", scope: !252, file: !128, line: 1369, baseType: !36, size: 32, offset: 1024)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !252, file: !128, line: 1371, baseType: !36, size: 32, offset: 1056)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !252, file: !128, line: 1374, baseType: !180, size: 64, offset: 1088)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "wild_names", scope: !252, file: !128, line: 1376, baseType: !180, size: 64, offset: 1152)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !252, file: !128, line: 1379, baseType: !33, size: 64, offset: 1216)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pathlen", scope: !252, file: !128, line: 1381, baseType: !36, size: 32, offset: 1280)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_line", scope: !252, file: !128, line: 1384, baseType: !36, size: 32, offset: 1312)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_fieldsize", scope: !252, file: !128, line: 1386, baseType: !36, size: 32, offset: 1344)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "limit_req_fields", scope: !252, file: !128, line: 1388, baseType: !36, size: 32, offset: 1376)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !252, file: !128, line: 1391, baseType: !42, size: 64, offset: 1408)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout_set", scope: !252, file: !128, line: 1396, baseType: !13, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "merge_server_config", scope: !215, file: !12, line: 404, baseType: !243, size: 64, offset: 640)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "cmds", scope: !215, file: !12, line: 409, baseType: !402, size: 64, offset: 704)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "command_rec", file: !12, line: 203, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "command_struct", file: !12, line: 204, size: 320, elements: !406)
!406 = !{!407, !408, !504, !505, !506, !507}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !405, file: !12, line: 206, baseType: !33, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !405, file: !12, line: 208, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmd_func", file: !12, line: 101, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !12, line: 82, size: 64, elements: !411)
!411 = !{!412, !481, !485, !491, !492, !496, !500}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "no_args", scope: !410, file: !12, line: 84, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!33, !416, !42}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmd_parms", file: !12, line: 74, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmd_parms_struct", file: !12, line: 288, size: 960, elements: !419)
!419 = !{!420, !421, !422, !423, !427, !428, !429, !436, !456, !472, !473, !474, !475, !476, !477, !478}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !418, file: !12, line: 290, baseType: !42, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "override", scope: !418, file: !12, line: 292, baseType: !36, size: 32, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "override_opts", scope: !418, file: !12, line: 294, baseType: !36, size: 32, offset: 96)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "override_list", scope: !418, file: !12, line: 296, baseType: !424, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_table_t", file: !182, line: 56, baseType: !426)
!426 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_table_t", file: !182, line: 56, flags: DIFlagFwdDecl)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "limited", scope: !418, file: !12, line: 298, baseType: !384, size: 64, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "limited_xmethods", scope: !418, file: !12, line: 300, baseType: !180, size: 64, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "xlimited", scope: !418, file: !12, line: 302, baseType: !430, size: 64, offset: 320)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_method_list_t", file: !128, line: 634, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_method_list_t", file: !128, line: 643, size: 128, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "method_mask", scope: !432, file: !128, line: 645, baseType: !384, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "method_list", scope: !432, file: !128, line: 647, baseType: !180, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "config_file", scope: !418, file: !12, line: 305, baseType: !437, size: 64, offset: 384)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_configfile_t", file: !12, line: 267, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_configfile_t", file: !12, line: 268, size: 384, elements: !440)
!440 = !{!441, !445, !449, !453, !454, !455}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "getch", scope: !439, file: !12, line: 270, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!47, !190, !42}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "getstr", scope: !439, file: !12, line: 272, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!47, !42, !65, !42}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !439, file: !12, line: 274, baseType: !450, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!47, !42}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !439, file: !12, line: 276, baseType: !42, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !439, file: !12, line: 278, baseType: !33, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !439, file: !12, line: 280, baseType: !13, size: 32, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !418, file: !12, line: 307, baseType: !457, size: 64, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_directive_t", file: !459, line: 35, baseType: !460)
!459 = !DIFile(filename: "include/util_cfgtree.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "c91452b9a51fb2ed560e306e1998c613")
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_directive_t", file: !459, line: 46, size: 576, elements: !461)
!461 = !{!462, !463, !464, !466, !467, !468, !469, !470, !471}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !460, file: !459, line: 48, baseType: !33, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !460, file: !459, line: 51, baseType: !33, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !460, file: !459, line: 53, baseType: !465, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "first_child", scope: !460, file: !459, line: 55, baseType: !465, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !460, file: !459, line: 57, baseType: !465, size: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !460, file: !459, line: 60, baseType: !42, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !460, file: !459, line: 64, baseType: !33, size: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "line_num", scope: !460, file: !459, line: 66, baseType: !36, size: 32, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !460, file: !459, line: 73, baseType: !465, size: 64, offset: 512)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !418, file: !12, line: 310, baseType: !94, size: 64, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "temp_pool", scope: !418, file: !12, line: 313, baseType: !94, size: 64, offset: 576)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !418, file: !12, line: 315, baseType: !250, size: 64, offset: 640)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !418, file: !12, line: 322, baseType: !190, size: 64, offset: 704)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !418, file: !12, line: 324, baseType: !402, size: 64, offset: 768)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !418, file: !12, line: 327, baseType: !270, size: 64, offset: 832)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "err_directive", scope: !418, file: !12, line: 329, baseType: !479, size: 64, offset: 896)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "raw_args", scope: !410, file: !12, line: 86, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!33, !416, !42, !33}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "take_argv", scope: !410, file: !12, line: 89, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!33, !416, !42, !36, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "take1", scope: !410, file: !12, line: 92, baseType: !482, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "take2", scope: !410, file: !12, line: 94, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!33, !416, !42, !33, !33}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "take3", scope: !410, file: !12, line: 97, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!33, !416, !42, !33, !33, !33}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !410, file: !12, line: 100, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!33, !416, !42, !36}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_data", scope: !405, file: !12, line: 210, baseType: !42, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "req_override", scope: !405, file: !12, line: 212, baseType: !36, size: 32, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "args_how", scope: !405, file: !12, line: 214, baseType: !11, size: 32, offset: 224)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "errmsg", scope: !405, file: !12, line: 217, baseType: !33, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "register_hooks", scope: !215, file: !12, line: 417, baseType: !509, size: 64, offset: 768)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !94}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !215, file: !12, line: 420, baseType: !36, size: 32, offset: 832)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !2, line: 655, type: !515, isLocal: true, isDefinition: true)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 7)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !2, line: 641, type: !520, isLocal: true, isDefinition: true)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !335)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !2, line: 778, type: !523, isLocal: true, isDefinition: true)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !524)
!524 = !{!525}
!525 = !DISubrange(count: 24)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !2, line: 778, type: !528, isLocal: true, isDefinition: true)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1008, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 126)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !2, line: 780, type: !533, isLocal: true, isDefinition: true)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 28)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !2, line: 780, type: !538, isLocal: true, isDefinition: true)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1216, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 152)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !2, line: 782, type: !543, isLocal: true, isDefinition: true)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 20)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !2, line: 782, type: !548, isLocal: true, isDefinition: true)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 36)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !2, line: 784, type: !543, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !2, line: 784, type: !555, isLocal: true, isDefinition: true)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 44)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !2, line: 703, type: !560, isLocal: true, isDefinition: true)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !561)
!561 = !{!562}
!562 = !DISubrange(count: 6)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !2, line: 706, type: !565, isLocal: true, isDefinition: true)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: 37)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !2, line: 713, type: !570, isLocal: true, isDefinition: true)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 47)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !2, line: 721, type: !575, isLocal: true, isDefinition: true)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 42)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !2, line: 747, type: !580, isLocal: true, isDefinition: true)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 32)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !2, line: 510, type: !585, isLocal: true, isDefinition: true)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 23)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(name: "aplog_module_index", scope: !9, file: !590, line: 148, type: !591, isLocal: true, isDefinition: true)
!590 = !DIFile(filename: "include/http_log.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "ce7bde9ead508f1c34c81b1931b44b16")
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !2, line: 513, type: !580, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !597, isLocal: true, isDefinition: true)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 48)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !2, line: 299, type: !602, isLocal: true, isDefinition: true)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 45)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !2, line: 303, type: !607, isLocal: true, isDefinition: true)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 35)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !2, line: 307, type: !602, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !2, line: 314, type: !614, isLocal: true, isDefinition: true)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 46)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !2, line: 324, type: !619, isLocal: true, isDefinition: true)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 41)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !2, line: 330, type: !597, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !2, line: 215, type: !626, isLocal: true, isDefinition: true)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 69)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !2, line: 248, type: !631, isLocal: true, isDefinition: true)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 792, elements: !632)
!632 = !{!633}
!633 = !DISubrange(count: 99)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !2, line: 545, type: !636, isLocal: true, isDefinition: true)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !637)
!637 = !{!638}
!638 = !DISubrange(count: 51)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !2, line: 384, type: !641, isLocal: true, isDefinition: true)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !642)
!642 = !{!643}
!643 = !DISubrange(count: 40)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !2, line: 408, type: !646, isLocal: true, isDefinition: true)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 39)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !2, line: 419, type: !597, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !2, line: 424, type: !602, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !2, line: 429, type: !607, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !2, line: 434, type: !602, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !2, line: 441, type: !641, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !2, line: 454, type: !614, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !2, line: 467, type: !619, isLocal: true, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !2, line: 475, type: !597, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !2, line: 486, type: !667, isLocal: true, isDefinition: true)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 27)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !2, line: 582, type: !602, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !2, line: 589, type: !674, isLocal: true, isDefinition: true)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 704, elements: !675)
!675 = !{!676}
!676 = !DISubrange(count: 88)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !2, line: 595, type: !679, isLocal: true, isDefinition: true)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !680)
!680 = !{!681}
!681 = !DISubrange(count: 66)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !2, line: 600, type: !684, isLocal: true, isDefinition: true)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 52)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(scope: null, file: !2, line: 606, type: !689, isLocal: true, isDefinition: true)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 53)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !2, line: 614, type: !694, isLocal: true, isDefinition: true)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 58)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !2, line: 620, type: !699, isLocal: true, isDefinition: true)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !700)
!700 = !{!701}
!701 = !DISubrange(count: 57)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 1600, elements: !703)
!703 = !{!704}
!704 = !DISubrange(count: 5)
!705 = !{i32 7, !"Dwarf Version", i32 5}
!706 = !{i32 2, !"Debug Info Version", i32 3}
!707 = !{i32 1, !"wchar_size", i32 4}
!708 = !{i32 8, !"PIC Level", i32 2}
!709 = !{i32 7, !"uwtable", i32 2}
!710 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!711 = distinct !DISubprogram(name: "create_session_crypto_dir_config", scope: !2, file: !2, line: 647, type: !240, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !712)
!712 = !{!713, !714, !715}
!713 = !DILocalVariable(name: "p", arg: 1, scope: !711, file: !2, line: 647, type: !94)
!714 = !DILocalVariable(name: "dummy", arg: 2, scope: !711, file: !2, line: 647, type: !190)
!715 = !DILocalVariable(name: "new", scope: !711, file: !2, line: 649, type: !175)
!716 = !{!717, !717, i64 0}
!717 = !{!"any pointer", !718, i64 0}
!718 = !{!"omnipotent char", !719, i64 0}
!719 = !{!"Simple C/C++ TBAA"}
!720 = !DILocation(line: 647, column: 60, scope: !711)
!721 = !DILocation(line: 647, column: 69, scope: !711)
!722 = !DILocation(line: 649, column: 5, scope: !711)
!723 = !DILocation(line: 649, column: 30, scope: !711)
!724 = !DILocation(line: 650, column: 33, scope: !711)
!725 = !DILocation(line: 652, column: 39, scope: !711)
!726 = !DILocation(line: 652, column: 24, scope: !711)
!727 = !DILocation(line: 652, column: 5, scope: !711)
!728 = !DILocation(line: 652, column: 10, scope: !711)
!729 = !DILocation(line: 652, column: 22, scope: !711)
!730 = !{!731, !717, i64 0}
!731 = !{!"", !717, i64 0, !732, i64 8, !717, i64 16, !732, i64 24}
!732 = !{!"int", !718, i64 0}
!733 = !DILocation(line: 655, column: 5, scope: !711)
!734 = !DILocation(line: 655, column: 10, scope: !711)
!735 = !DILocation(line: 655, column: 17, scope: !711)
!736 = !{!731, !717, i64 16}
!737 = !DILocation(line: 657, column: 21, scope: !711)
!738 = !DILocation(line: 658, column: 1, scope: !711)
!739 = !DILocation(line: 657, column: 5, scope: !711)
!740 = distinct !DISubprogram(name: "merge_session_crypto_dir_config", scope: !2, file: !2, line: 660, type: !244, scopeLine: 661, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !741)
!741 = !{!742, !743, !744, !745, !746, !747}
!742 = !DILocalVariable(name: "p", arg: 1, scope: !740, file: !2, line: 660, type: !94)
!743 = !DILocalVariable(name: "basev", arg: 2, scope: !740, file: !2, line: 660, type: !42)
!744 = !DILocalVariable(name: "addv", arg: 3, scope: !740, file: !2, line: 660, type: !42)
!745 = !DILocalVariable(name: "new", scope: !740, file: !2, line: 662, type: !175)
!746 = !DILocalVariable(name: "add", scope: !740, file: !2, line: 663, type: !175)
!747 = !DILocalVariable(name: "base", scope: !740, file: !2, line: 664, type: !175)
!748 = !DILocation(line: 660, column: 59, scope: !740)
!749 = !DILocation(line: 660, column: 68, scope: !740)
!750 = !DILocation(line: 660, column: 81, scope: !740)
!751 = !DILocation(line: 662, column: 5, scope: !740)
!752 = !DILocation(line: 662, column: 30, scope: !740)
!753 = !DILocation(line: 662, column: 64, scope: !740)
!754 = !DILocation(line: 663, column: 5, scope: !740)
!755 = !DILocation(line: 663, column: 30, scope: !740)
!756 = !DILocation(line: 663, column: 64, scope: !740)
!757 = !DILocation(line: 664, column: 5, scope: !740)
!758 = !DILocation(line: 664, column: 30, scope: !740)
!759 = !DILocation(line: 664, column: 65, scope: !740)
!760 = !DILocation(line: 666, column: 25, scope: !740)
!761 = !DILocation(line: 666, column: 30, scope: !740)
!762 = !{!731, !732, i64 8}
!763 = !DILocation(line: 666, column: 46, scope: !740)
!764 = !DILocation(line: 666, column: 24, scope: !740)
!765 = !DILocation(line: 666, column: 54, scope: !740)
!766 = !DILocation(line: 666, column: 60, scope: !740)
!767 = !DILocation(line: 666, column: 74, scope: !740)
!768 = !DILocation(line: 666, column: 79, scope: !740)
!769 = !DILocation(line: 666, column: 5, scope: !740)
!770 = !DILocation(line: 666, column: 10, scope: !740)
!771 = !DILocation(line: 666, column: 22, scope: !740)
!772 = !DILocation(line: 667, column: 28, scope: !740)
!773 = !DILocation(line: 667, column: 33, scope: !740)
!774 = !DILocation(line: 667, column: 49, scope: !740)
!775 = !DILocation(line: 667, column: 52, scope: !740)
!776 = !DILocation(line: 667, column: 58, scope: !740)
!777 = !DILocation(line: 667, column: 5, scope: !740)
!778 = !DILocation(line: 667, column: 10, scope: !740)
!779 = !DILocation(line: 667, column: 26, scope: !740)
!780 = !DILocation(line: 668, column: 20, scope: !740)
!781 = !DILocation(line: 668, column: 25, scope: !740)
!782 = !{!731, !732, i64 24}
!783 = !DILocation(line: 668, column: 36, scope: !740)
!784 = !DILocation(line: 668, column: 19, scope: !740)
!785 = !DILocation(line: 668, column: 44, scope: !740)
!786 = !DILocation(line: 668, column: 50, scope: !740)
!787 = !DILocation(line: 668, column: 59, scope: !740)
!788 = !DILocation(line: 668, column: 64, scope: !740)
!789 = !DILocation(line: 668, column: 5, scope: !740)
!790 = !DILocation(line: 668, column: 10, scope: !740)
!791 = !DILocation(line: 668, column: 17, scope: !740)
!792 = !DILocation(line: 669, column: 23, scope: !740)
!793 = !DILocation(line: 669, column: 28, scope: !740)
!794 = !DILocation(line: 669, column: 39, scope: !740)
!795 = !DILocation(line: 669, column: 42, scope: !740)
!796 = !DILocation(line: 669, column: 48, scope: !740)
!797 = !DILocation(line: 669, column: 5, scope: !740)
!798 = !DILocation(line: 669, column: 10, scope: !740)
!799 = !DILocation(line: 669, column: 21, scope: !740)
!800 = !DILocation(line: 671, column: 12, scope: !740)
!801 = !DILocation(line: 672, column: 1, scope: !740)
!802 = !DILocation(line: 671, column: 5, scope: !740)
!803 = distinct !DISubprogram(name: "create_session_crypto_config", scope: !2, file: !2, line: 632, type: !248, scopeLine: 633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !804)
!804 = !{!805, !806, !807}
!805 = !DILocalVariable(name: "p", arg: 1, scope: !803, file: !2, line: 632, type: !94)
!806 = !DILocalVariable(name: "s", arg: 2, scope: !803, file: !2, line: 632, type: !250)
!807 = !DILocalVariable(name: "new", scope: !803, file: !2, line: 634, type: !194)
!808 = !DILocation(line: 632, column: 56, scope: !803)
!809 = !DILocation(line: 632, column: 71, scope: !803)
!810 = !DILocation(line: 634, column: 5, scope: !803)
!811 = !DILocation(line: 634, column: 26, scope: !803)
!812 = !DILocation(line: 635, column: 29, scope: !803)
!813 = !DILocation(line: 641, column: 5, scope: !803)
!814 = !DILocation(line: 641, column: 10, scope: !803)
!815 = !DILocation(line: 641, column: 18, scope: !803)
!816 = !{!817, !717, i64 0}
!817 = !{!"", !717, i64 0, !717, i64 8, !732, i64 16}
!818 = !DILocation(line: 644, column: 21, scope: !803)
!819 = !DILocation(line: 645, column: 1, scope: !803)
!820 = !DILocation(line: 644, column: 5, scope: !803)
!821 = distinct !DISubprogram(name: "register_hooks", scope: !2, file: !2, line: 789, type: !510, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !822)
!822 = !{!823}
!823 = !DILocalVariable(name: "p", arg: 1, scope: !821, file: !2, line: 789, type: !94)
!824 = !DILocation(line: 789, column: 41, scope: !821)
!825 = !DILocation(line: 791, column: 5, scope: !821)
!826 = !DILocation(line: 792, column: 5, scope: !821)
!827 = !DILocation(line: 793, column: 5, scope: !821)
!828 = !DILocation(line: 794, column: 1, scope: !821)
!829 = !DISubprogram(name: "apr_palloc", scope: !96, file: !96, line: 430, type: !830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!830 = !DISubroutineType(types: !831)
!831 = !{!42, !94, !65}
!832 = !DISubprogram(name: "apr_array_make", scope: !182, file: !182, line: 121, type: !833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!833 = !DISubroutineType(types: !834)
!834 = !{!180, !94, !36, !36}
!835 = distinct !DISubprogram(name: "set_crypto_passphrase", scope: !2, file: !2, line: 693, type: !483, scopeLine: 694, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !836)
!836 = !{!837, !838, !839, !840, !841, !842, !843, !844}
!837 = !DILocalVariable(name: "cmd", arg: 1, scope: !835, file: !2, line: 693, type: !416)
!838 = !DILocalVariable(name: "config", arg: 2, scope: !835, file: !2, line: 693, type: !42)
!839 = !DILocalVariable(name: "arg", arg: 3, scope: !835, file: !2, line: 693, type: !33)
!840 = !DILocalVariable(name: "arglen", scope: !835, file: !2, line: 695, type: !36)
!841 = !DILocalVariable(name: "argv", scope: !835, file: !2, line: 696, type: !208)
!842 = !DILocalVariable(name: "result", scope: !835, file: !2, line: 697, type: !190)
!843 = !DILocalVariable(name: "passphrase", scope: !835, file: !2, line: 698, type: !83)
!844 = !DILocalVariable(name: "dconf", scope: !835, file: !2, line: 699, type: !175)
!845 = !DILocation(line: 693, column: 54, scope: !835)
!846 = !DILocation(line: 693, column: 65, scope: !835)
!847 = !DILocation(line: 693, column: 85, scope: !835)
!848 = !DILocation(line: 695, column: 5, scope: !835)
!849 = !DILocation(line: 695, column: 9, scope: !835)
!850 = !DILocation(line: 695, column: 25, scope: !835)
!851 = !DILocation(line: 695, column: 18, scope: !835)
!852 = !{!732, !732, i64 0}
!853 = !DILocation(line: 696, column: 5, scope: !835)
!854 = !DILocation(line: 696, column: 12, scope: !835)
!855 = !DILocation(line: 697, column: 5, scope: !835)
!856 = !DILocation(line: 697, column: 11, scope: !835)
!857 = !DILocation(line: 698, column: 5, scope: !835)
!858 = !DILocation(line: 698, column: 18, scope: !835)
!859 = !DILocation(line: 699, column: 5, scope: !835)
!860 = !DILocation(line: 699, column: 30, scope: !835)
!861 = !DILocation(line: 699, column: 66, scope: !835)
!862 = !DILocation(line: 701, column: 33, scope: !835)
!863 = !DILocation(line: 701, column: 40, scope: !835)
!864 = !DILocation(line: 701, column: 18, scope: !835)
!865 = !DILocation(line: 701, column: 16, scope: !835)
!866 = !DILocation(line: 703, column: 10, scope: !867)
!867 = distinct !DILexicalBlock(scope: !835, file: !2, line: 703, column: 9)
!868 = !DILocation(line: 703, column: 17, scope: !867)
!869 = !DILocation(line: 703, column: 22, scope: !867)
!870 = !DILocation(line: 703, column: 33, scope: !867)
!871 = !DILocation(line: 703, column: 25, scope: !867)
!872 = !DILocation(line: 703, column: 50, scope: !867)
!873 = !DILocation(line: 703, column: 9, scope: !835)
!874 = !DILocation(line: 704, column: 34, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !2, line: 704, column: 13)
!876 = distinct !DILexicalBlock(scope: !867, file: !2, line: 703, column: 56)
!877 = !DILocation(line: 704, column: 37, scope: !875)
!878 = !DILocation(line: 704, column: 48, scope: !875)
!879 = !DILocation(line: 704, column: 53, scope: !875)
!880 = !{!881, !717, i64 72}
!881 = !{!"cmd_parms_struct", !717, i64 0, !732, i64 8, !732, i64 12, !717, i64 16, !882, i64 24, !717, i64 32, !717, i64 40, !717, i64 48, !717, i64 56, !717, i64 64, !717, i64 72, !717, i64 80, !717, i64 88, !717, i64 96, !717, i64 104, !717, i64 112}
!882 = !{!"long", !718, i64 0}
!883 = !DILocation(line: 704, column: 13, scope: !875)
!884 = !DILocation(line: 704, column: 64, scope: !875)
!885 = !DILocation(line: 704, column: 13, scope: !876)
!886 = !DILocation(line: 705, column: 32, scope: !887)
!887 = distinct !DILexicalBlock(scope: !875, file: !2, line: 704, column: 80)
!888 = !DILocation(line: 705, column: 37, scope: !887)
!889 = !{!881, !717, i64 64}
!890 = !DILocation(line: 707, column: 32, scope: !887)
!891 = !DILocation(line: 707, column: 35, scope: !887)
!892 = !DILocation(line: 705, column: 20, scope: !887)
!893 = !DILocation(line: 705, column: 13, scope: !887)
!894 = !DILocation(line: 709, column: 43, scope: !876)
!895 = !DILocation(line: 709, column: 48, scope: !876)
!896 = !DILocation(line: 709, column: 59, scope: !876)
!897 = !DILocation(line: 709, column: 19, scope: !876)
!898 = !DILocation(line: 709, column: 9, scope: !876)
!899 = !DILocation(line: 709, column: 17, scope: !876)
!900 = !DILocation(line: 711, column: 14, scope: !901)
!901 = distinct !DILexicalBlock(scope: !876, file: !2, line: 711, column: 13)
!902 = !DILocation(line: 711, column: 13, scope: !876)
!903 = !DILocation(line: 712, column: 32, scope: !904)
!904 = distinct !DILexicalBlock(scope: !901, file: !2, line: 711, column: 23)
!905 = !DILocation(line: 712, column: 37, scope: !904)
!906 = !DILocation(line: 714, column: 32, scope: !904)
!907 = !DILocation(line: 714, column: 35, scope: !904)
!908 = !DILocation(line: 712, column: 20, scope: !904)
!909 = !DILocation(line: 712, column: 13, scope: !904)
!910 = !DILocation(line: 716, column: 35, scope: !876)
!911 = !DILocation(line: 716, column: 40, scope: !876)
!912 = !DILocation(line: 717, column: 48, scope: !876)
!913 = !DILocation(line: 717, column: 79, scope: !876)
!914 = !DILocation(line: 716, column: 18, scope: !876)
!915 = !DILocation(line: 716, column: 16, scope: !876)
!916 = !DILocation(line: 719, column: 13, scope: !917)
!917 = distinct !DILexicalBlock(scope: !876, file: !2, line: 719, column: 12)
!918 = !DILocation(line: 719, column: 12, scope: !876)
!919 = !DILocation(line: 720, column: 32, scope: !920)
!920 = distinct !DILexicalBlock(scope: !917, file: !2, line: 719, column: 21)
!921 = !DILocation(line: 720, column: 37, scope: !920)
!922 = !DILocation(line: 722, column: 32, scope: !920)
!923 = !DILocation(line: 722, column: 35, scope: !920)
!924 = !DILocation(line: 720, column: 20, scope: !920)
!925 = !DILocation(line: 720, column: 13, scope: !920)
!926 = !DILocation(line: 724, column: 23, scope: !876)
!927 = !DILocation(line: 724, column: 10, scope: !876)
!928 = !DILocation(line: 724, column: 21, scope: !876)
!929 = !DILocation(line: 725, column: 5, scope: !876)
!930 = !DILocation(line: 727, column: 23, scope: !931)
!931 = distinct !DILexicalBlock(scope: !867, file: !2, line: 726, column: 10)
!932 = !DILocation(line: 727, column: 10, scope: !931)
!933 = !DILocation(line: 727, column: 21, scope: !931)
!934 = !DILocation(line: 730, column: 5, scope: !835)
!935 = !DILocation(line: 730, column: 12, scope: !835)
!936 = !DILocation(line: 730, column: 28, scope: !835)
!937 = !DILocation(line: 732, column: 5, scope: !835)
!938 = !DILocation(line: 733, column: 1, scope: !835)
!939 = distinct !DISubprogram(name: "set_crypto_passphrase_file", scope: !2, file: !2, line: 735, type: !483, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !940)
!940 = !{!941, !942, !943, !944, !948, !949, !950, !951}
!941 = !DILocalVariable(name: "cmd", arg: 1, scope: !939, file: !2, line: 735, type: !416)
!942 = !DILocalVariable(name: "config", arg: 2, scope: !939, file: !2, line: 735, type: !42)
!943 = !DILocalVariable(name: "filename", arg: 3, scope: !939, file: !2, line: 736, type: !33)
!944 = !DILocalVariable(name: "buffer", scope: !939, file: !2, line: 738, type: !945)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 65536, elements: !946)
!946 = !{!947}
!947 = !DISubrange(count: 8192)
!948 = !DILocalVariable(name: "arg", scope: !939, file: !2, line: 739, type: !190)
!949 = !DILocalVariable(name: "args", scope: !939, file: !2, line: 740, type: !33)
!950 = !DILocalVariable(name: "file", scope: !939, file: !2, line: 741, type: !437)
!951 = !DILocalVariable(name: "rv", scope: !939, file: !2, line: 742, type: !47)
!952 = !DILocation(line: 735, column: 58, scope: !939)
!953 = !DILocation(line: 735, column: 69, scope: !939)
!954 = !DILocation(line: 736, column: 47, scope: !939)
!955 = !DILocation(line: 738, column: 5, scope: !939)
!956 = !DILocation(line: 738, column: 10, scope: !939)
!957 = !DILocation(line: 739, column: 5, scope: !939)
!958 = !DILocation(line: 739, column: 11, scope: !939)
!959 = !DILocation(line: 740, column: 5, scope: !939)
!960 = !DILocation(line: 740, column: 17, scope: !939)
!961 = !DILocation(line: 741, column: 5, scope: !939)
!962 = !DILocation(line: 741, column: 22, scope: !939)
!963 = !DILocation(line: 742, column: 5, scope: !939)
!964 = !DILocation(line: 742, column: 18, scope: !939)
!965 = !DILocation(line: 744, column: 40, scope: !939)
!966 = !DILocation(line: 744, column: 45, scope: !939)
!967 = !DILocation(line: 744, column: 56, scope: !939)
!968 = !DILocation(line: 744, column: 16, scope: !939)
!969 = !DILocation(line: 744, column: 14, scope: !939)
!970 = !DILocation(line: 745, column: 34, scope: !939)
!971 = !DILocation(line: 745, column: 39, scope: !939)
!972 = !DILocation(line: 745, column: 50, scope: !939)
!973 = !DILocation(line: 745, column: 10, scope: !939)
!974 = !DILocation(line: 745, column: 8, scope: !939)
!975 = !DILocation(line: 746, column: 9, scope: !976)
!976 = distinct !DILexicalBlock(scope: !939, file: !2, line: 746, column: 9)
!977 = !DILocation(line: 746, column: 12, scope: !976)
!978 = !DILocation(line: 746, column: 9, scope: !939)
!979 = !DILocation(line: 747, column: 29, scope: !980)
!980 = distinct !DILexicalBlock(scope: !976, file: !2, line: 746, column: 28)
!981 = !DILocation(line: 747, column: 34, scope: !980)
!982 = !DILocation(line: 748, column: 29, scope: !980)
!983 = !DILocation(line: 748, column: 34, scope: !980)
!984 = !{!881, !717, i64 96}
!985 = !DILocation(line: 748, column: 39, scope: !980)
!986 = !{!987, !717, i64 0}
!987 = !{!"command_struct", !717, i64 0, !718, i64 8, !717, i64 16, !732, i64 24, !718, i64 28, !717, i64 32}
!988 = !DILocation(line: 748, column: 45, scope: !980)
!989 = !DILocation(line: 747, column: 16, scope: !980)
!990 = !DILocation(line: 747, column: 9, scope: !980)
!991 = !DILocation(line: 751, column: 5, scope: !939)
!992 = !DILocation(line: 751, column: 29, scope: !939)
!993 = !DILocation(line: 751, column: 53, scope: !939)
!994 = !DILocation(line: 751, column: 14, scope: !939)
!995 = !DILocation(line: 751, column: 12, scope: !939)
!996 = !DILocation(line: 752, column: 16, scope: !997)
!997 = distinct !DILexicalBlock(scope: !939, file: !2, line: 751, column: 61)
!998 = !DILocation(line: 752, column: 14, scope: !997)
!999 = !DILocation(line: 753, column: 9, scope: !997)
!1000 = !DILocation(line: 753, column: 40, scope: !997)
!1001 = !DILocation(line: 753, column: 45, scope: !997)
!1002 = !DILocation(line: 753, column: 24, scope: !997)
!1003 = !DILocation(line: 753, column: 22, scope: !997)
!1004 = !DILocation(line: 753, column: 16, scope: !997)
!1005 = !{!718, !718, i64 0}
!1006 = !DILocation(line: 753, column: 59, scope: !997)
!1007 = !DILocation(line: 754, column: 18, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 754, column: 17)
!1009 = distinct !DILexicalBlock(scope: !997, file: !2, line: 753, column: 68)
!1010 = !DILocation(line: 754, column: 17, scope: !1008)
!1011 = !DILocation(line: 754, column: 22, scope: !1008)
!1012 = !DILocation(line: 754, column: 17, scope: !1009)
!1013 = !DILocation(line: 755, column: 17, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 754, column: 30)
!1015 = !DILocation(line: 757, column: 35, scope: !1009)
!1016 = !DILocation(line: 757, column: 40, scope: !1009)
!1017 = !DILocation(line: 757, column: 48, scope: !1009)
!1018 = !DILocation(line: 757, column: 13, scope: !1009)
!1019 = distinct !{!1019, !999, !1020, !1021}
!1020 = !DILocation(line: 758, column: 9, scope: !997)
!1021 = !{!"llvm.loop.mustprogress"}
!1022 = distinct !{!1022, !991, !1023, !1021}
!1023 = !DILocation(line: 759, column: 5, scope: !939)
!1024 = !DILocation(line: 761, column: 22, scope: !939)
!1025 = !DILocation(line: 761, column: 5, scope: !939)
!1026 = !DILocation(line: 763, column: 5, scope: !939)
!1027 = !DILocation(line: 764, column: 1, scope: !939)
!1028 = distinct !DISubprogram(name: "set_crypto_cipher", scope: !2, file: !2, line: 766, type: !483, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1029)
!1029 = !{!1030, !1031, !1032, !1033}
!1030 = !DILocalVariable(name: "cmd", arg: 1, scope: !1028, file: !2, line: 766, type: !416)
!1031 = !DILocalVariable(name: "config", arg: 2, scope: !1028, file: !2, line: 766, type: !42)
!1032 = !DILocalVariable(name: "cipher", arg: 3, scope: !1028, file: !2, line: 766, type: !33)
!1033 = !DILocalVariable(name: "dconf", scope: !1028, file: !2, line: 768, type: !175)
!1034 = !DILocation(line: 766, column: 50, scope: !1028)
!1035 = !DILocation(line: 766, column: 61, scope: !1028)
!1036 = !DILocation(line: 766, column: 81, scope: !1028)
!1037 = !DILocation(line: 768, column: 5, scope: !1028)
!1038 = !DILocation(line: 768, column: 30, scope: !1028)
!1039 = !DILocation(line: 768, column: 66, scope: !1028)
!1040 = !DILocation(line: 770, column: 21, scope: !1028)
!1041 = !DILocation(line: 770, column: 5, scope: !1028)
!1042 = !DILocation(line: 770, column: 12, scope: !1028)
!1043 = !DILocation(line: 770, column: 19, scope: !1028)
!1044 = !DILocation(line: 771, column: 5, scope: !1028)
!1045 = !DILocation(line: 771, column: 12, scope: !1028)
!1046 = !DILocation(line: 771, column: 23, scope: !1028)
!1047 = !DILocation(line: 774, column: 1, scope: !1028)
!1048 = !DILocation(line: 773, column: 5, scope: !1028)
!1049 = distinct !DISubprogram(name: "set_crypto_driver", scope: !2, file: !2, line: 674, type: !483, scopeLine: 675, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055}
!1051 = !DILocalVariable(name: "cmd", arg: 1, scope: !1049, file: !2, line: 674, type: !416)
!1052 = !DILocalVariable(name: "config", arg: 2, scope: !1049, file: !2, line: 674, type: !42)
!1053 = !DILocalVariable(name: "arg", arg: 3, scope: !1049, file: !2, line: 674, type: !33)
!1054 = !DILocalVariable(name: "conf", scope: !1049, file: !2, line: 676, type: !194)
!1055 = !DILocalVariable(name: "err", scope: !1049, file: !2, line: 680, type: !33)
!1056 = !DILocation(line: 674, column: 50, scope: !1049)
!1057 = !DILocation(line: 674, column: 61, scope: !1049)
!1058 = !DILocation(line: 674, column: 81, scope: !1049)
!1059 = !DILocation(line: 676, column: 5, scope: !1049)
!1060 = !DILocation(line: 676, column: 26, scope: !1049)
!1061 = !DILocation(line: 677, column: 28, scope: !1049)
!1062 = !{!881, !717, i64 80}
!1063 = !{!1064, !717, i64 48}
!1064 = !{!"server_rec", !717, i64 0, !717, i64 8, !717, i64 16, !717, i64 24, !1065, i64 32, !717, i64 48, !717, i64 56, !717, i64 64, !732, i64 72, !718, i64 76, !1066, i64 78, !717, i64 80, !717, i64 88, !717, i64 96, !717, i64 104, !882, i64 112, !882, i64 120, !732, i64 128, !732, i64 132, !717, i64 136, !717, i64 144, !717, i64 152, !732, i64 160, !732, i64 164, !732, i64 168, !732, i64 172, !717, i64 176, !732, i64 184}
!1065 = !{!"ap_logconf", !717, i64 0, !732, i64 8}
!1066 = !{!"short", !718, i64 0}
!1067 = !{!1068, !732, i64 8}
!1068 = !{!"module_struct", !732, i64 0, !732, i64 4, !732, i64 8, !717, i64 16, !717, i64 24, !717, i64 32, !882, i64 40, !717, i64 48, !717, i64 56, !717, i64 64, !717, i64 72, !717, i64 80, !717, i64 88, !717, i64 96, !732, i64 104}
!1069 = !DILocation(line: 680, column: 5, scope: !1049)
!1070 = !DILocation(line: 680, column: 17, scope: !1049)
!1071 = !DILocation(line: 680, column: 44, scope: !1049)
!1072 = !DILocation(line: 680, column: 23, scope: !1049)
!1073 = !DILocation(line: 682, column: 9, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 682, column: 9)
!1075 = !DILocation(line: 682, column: 13, scope: !1074)
!1076 = !DILocation(line: 682, column: 9, scope: !1049)
!1077 = !DILocation(line: 683, column: 16, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1074, file: !2, line: 682, column: 22)
!1079 = !DILocation(line: 683, column: 9, scope: !1078)
!1080 = !DILocation(line: 686, column: 37, scope: !1049)
!1081 = !DILocation(line: 686, column: 42, scope: !1049)
!1082 = !DILocation(line: 686, column: 21, scope: !1049)
!1083 = !DILocation(line: 686, column: 5, scope: !1049)
!1084 = !DILocation(line: 686, column: 11, scope: !1049)
!1085 = !DILocation(line: 686, column: 19, scope: !1049)
!1086 = !DILocation(line: 687, column: 20, scope: !1049)
!1087 = !DILocation(line: 687, column: 5, scope: !1049)
!1088 = !DILocation(line: 687, column: 11, scope: !1049)
!1089 = !DILocation(line: 687, column: 18, scope: !1049)
!1090 = !{!817, !717, i64 8}
!1091 = !DILocation(line: 688, column: 5, scope: !1049)
!1092 = !DILocation(line: 688, column: 11, scope: !1049)
!1093 = !DILocation(line: 688, column: 23, scope: !1049)
!1094 = !{!817, !732, i64 16}
!1095 = !DILocation(line: 690, column: 5, scope: !1049)
!1096 = !DILocation(line: 691, column: 1, scope: !1049)
!1097 = !DISubprogram(name: "strlen", scope: !1098, file: !1098, line: 407, type: !1099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1098 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!69, !33}
!1101 = !DISubprogram(name: "apr_array_push", scope: !182, file: !182, line: 131, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!42, !180}
!1104 = !DISubprogram(name: "strncmp", scope: !1098, file: !1098, line: 159, type: !1105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!36, !33, !33, !67}
!1107 = !DISubprogram(name: "apr_tokenize_to_argv", scope: !1108, file: !1108, line: 226, type: !1109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1108 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_strings.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "f876519c65276b07631e818685d4ffb3")
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!47, !33, !1111, !94}
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!1112 = !DISubprogram(name: "apr_pstrcat", scope: !1108, file: !1108, line: 147, type: !1113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!190, !94, null}
!1115 = !DISubprogram(name: "ap_server_root_relative", scope: !12, file: !12, line: 750, type: !1116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!190, !94, !33}
!1118 = !DISubprogram(name: "ap_get_exec_line", scope: !128, file: !128, line: 2508, type: !1119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!190, !94, !33, !201}
!1121 = !DISubprogram(name: "ap_pcfg_openfile", scope: !12, file: !12, line: 818, type: !1122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!47, !1124, !94, !33}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!1125 = !DISubprogram(name: "apr_psprintf", scope: !1108, file: !1108, line: 182, type: !1126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!190, !94, !33, null}
!1128 = !DISubprogram(name: "ap_cfg_getline", scope: !12, file: !12, line: 845, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!47, !190, !65, !437}
!1131 = !DISubprogram(name: "ap_getword_conf", scope: !128, file: !128, line: 1554, type: !1132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!190, !94, !83}
!1134 = !DISubprogram(name: "ap_cfg_closefile", scope: !12, file: !12, line: 860, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!36, !437}
!1137 = !DISubprogram(name: "ap_check_cmd_context", scope: !12, file: !12, line: 955, type: !1138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!33, !416, !13}
!1140 = !DISubprogram(name: "ap_hook_session_encode", scope: !1141, file: !1141, line: 156, type: !1142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1141 = !DIFile(filename: "./mod_session.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src/modules/session", checksumkind: CSK_MD5, checksum: "2f96d0badaf5cfa127e9fd7fcb409f35")
!1142 = !DISubroutineType(types: !1143)
!1143 = !{null, !1144, !201, !201, !36}
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_HOOK_session_encode_t", file: !1141, line: 156, baseType: !1146)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!47, !1148, !1408}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_rec", file: !128, line: 811, baseType: !1150)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_rec", file: !128, line: 838, size: 5888, elements: !1151)
!1151 = !{!1152, !1153, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1339, !1360, !1397, !1398, !1399, !1400, !1401, !1402, !1403}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1150, file: !128, line: 840, baseType: !94, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !1150, file: !128, line: 842, baseType: !1154, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_rec", file: !128, line: 809, baseType: !1156)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn_rec", file: !128, line: 1145, size: 1664, elements: !1157)
!1157 = !{!1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1228, !1229, !1230, !1232, !1241, !1242, !1243, !1244, !1245, !1246, !1248, !1249, !1252, !1253, !1258, !1259}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1156, file: !128, line: 1147, baseType: !94, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "base_server", scope: !1156, file: !128, line: 1149, baseType: !250, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "vhost_lookup_data", scope: !1156, file: !128, line: 1151, baseType: !42, size: 64, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr", scope: !1156, file: !128, line: 1155, baseType: !292, size: 64, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "client_addr", scope: !1156, file: !128, line: 1159, baseType: !292, size: 64, offset: 256)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "client_ip", scope: !1156, file: !128, line: 1164, baseType: !190, size: 64, offset: 320)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "remote_host", scope: !1156, file: !128, line: 1168, baseType: !190, size: 64, offset: 384)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "remote_logname", scope: !1156, file: !128, line: 1171, baseType: !190, size: 64, offset: 448)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !1156, file: !128, line: 1174, baseType: !190, size: 64, offset: 512)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "local_host", scope: !1156, file: !128, line: 1177, baseType: !190, size: 64, offset: 576)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1156, file: !128, line: 1180, baseType: !76, size: 64, offset: 640)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "conn_config", scope: !1156, file: !128, line: 1183, baseType: !270, size: 64, offset: 704)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !1156, file: !128, line: 1186, baseType: !424, size: 64, offset: 768)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "input_filters", scope: !1156, file: !128, line: 1188, baseType: !1172, size: 64, offset: 832)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_filter_t", file: !111, line: 259, size: 320, elements: !1174)
!1174 = !{!1175, !1224, !1225, !1226, !1227}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "frec", scope: !1173, file: !111, line: 263, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_rec_t", file: !111, line: 199, baseType: !1178)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_filter_rec_t", file: !111, line: 215, size: 448, elements: !1179)
!1179 = !{!1180, !1181, !1209, !1214, !1216, !1220, !1222, !1223}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1178, file: !111, line: 217, baseType: !33, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "filter_func", scope: !1178, file: !111, line: 220, baseType: !1182, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_func", file: !111, line: 146, baseType: !1183)
!1183 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "ap_filter_func", file: !111, line: 143, size: 64, elements: !1184)
!1184 = !{!1185, !1203}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "out_func", scope: !1183, file: !111, line: 144, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_out_filter_func", file: !111, line: 134, baseType: !1187)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!47, !1190, !1192}
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_t", file: !111, line: 94, baseType: !1173)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_bucket_brigade", file: !29, line: 119, baseType: !1194)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_brigade", file: !29, line: 258, size: 256, elements: !1195)
!1195 = !{!1196, !1197, !1202}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1194, file: !29, line: 264, baseType: !94, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1194, file: !29, line: 273, baseType: !1198, size: 128, offset: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_bucket_list", file: !29, line: 273, size: 128, elements: !1199)
!1199 = !{!1200, !1201}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1198, file: !29, line: 273, baseType: !57, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1198, file: !29, line: 273, baseType: !57, size: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_alloc", scope: !1194, file: !29, line: 275, baseType: !80, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "in_func", scope: !1183, file: !111, line: 145, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_in_filter_func", file: !111, line: 136, baseType: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!47, !1190, !1192, !1208, !85, !71}
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_input_mode_t", file: !111, line: 63, baseType: !110)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "filter_init_func", scope: !1178, file: !111, line: 230, baseType: !1210, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_init_filter_func", file: !111, line: 141, baseType: !1211)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!36, !1190}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1178, file: !111, line: 233, baseType: !1215, size: 64, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "providers", scope: !1178, file: !111, line: 236, baseType: !1217, size: 64, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_provider_t", file: !111, line: 200, baseType: !1219)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "ap_filter_provider_t", file: !111, line: 200, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ftype", scope: !1178, file: !111, line: 243, baseType: !1221, size: 32, offset: 320)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_filter_type", file: !111, line: 184, baseType: !119)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !1178, file: !111, line: 246, baseType: !36, size: 32, offset: 352)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "proto_flags", scope: !1178, file: !111, line: 249, baseType: !13, size: 32, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !1173, file: !111, line: 266, baseType: !42, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1173, file: !111, line: 269, baseType: !1190, size: 64, offset: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1173, file: !111, line: 275, baseType: !1148, size: 64, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !1173, file: !111, line: 280, baseType: !1154, size: 64, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "output_filters", scope: !1156, file: !128, line: 1190, baseType: !1172, size: 64, offset: 896)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sbh", scope: !1156, file: !128, line: 1192, baseType: !42, size: 64, offset: 960)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_alloc", scope: !1156, file: !128, line: 1194, baseType: !1231, size: 64, offset: 1024)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1156, file: !128, line: 1196, baseType: !1233, size: 64, offset: 1088)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_state_t", file: !128, line: 813, baseType: !1235)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conn_state_t", file: !128, line: 1273, size: 64, elements: !1236)
!1236 = !{!1237, !1239}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1235, file: !128, line: 1275, baseType: !1238, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_state_e", file: !128, line: 1262, baseType: !127)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sense", scope: !1235, file: !128, line: 1277, baseType: !1240, size: 32, offset: 32)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_sense_e", file: !128, line: 1268, baseType: !139)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "data_in_input_filters", scope: !1156, file: !128, line: 1198, baseType: !36, size: 32, offset: 1152)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "data_in_output_filters", scope: !1156, file: !128, line: 1200, baseType: !36, size: 32, offset: 1184)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "clogging_input_filters", scope: !1156, file: !128, line: 1205, baseType: !13, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "double_reverse", scope: !1156, file: !128, line: 1209, baseType: !36, size: 2, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "aborted", scope: !1156, file: !128, line: 1212, baseType: !13, size: 32, offset: 1248)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !1156, file: !128, line: 1216, baseType: !1247, size: 32, offset: 1280)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_conn_keepalive_e", file: !128, line: 1140, baseType: !144)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "keepalives", scope: !1156, file: !128, line: 1219, baseType: !36, size: 32, offset: 1312)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1156, file: !128, line: 1223, baseType: !1250, size: 64, offset: 1344)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "log_id", scope: !1156, file: !128, line: 1228, baseType: !33, size: 64, offset: 1408)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "current_thread", scope: !1156, file: !128, line: 1237, baseType: !1254, size: 64, offset: 1472)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_thread_t", file: !1256, line: 178, baseType: !1257)
!1256 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_thread_proc.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "86521d0dbb7f1fbad577c4bb2abede6c")
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_thread_t", file: !1256, line: 178, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !1156, file: !128, line: 1241, baseType: !1154, size: 64, offset: 1536)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "outgoing", scope: !1156, file: !128, line: 1243, baseType: !36, size: 32, offset: 1600)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1150, file: !128, line: 844, baseType: !250, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1150, file: !128, line: 847, baseType: !1148, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1150, file: !128, line: 849, baseType: !1148, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !1150, file: !128, line: 853, baseType: !1148, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "the_request", scope: !1150, file: !128, line: 859, baseType: !190, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "assbackwards", scope: !1150, file: !128, line: 861, baseType: !36, size: 32, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "proxyreq", scope: !1150, file: !128, line: 866, baseType: !36, size: 32, offset: 480)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "header_only", scope: !1150, file: !128, line: 868, baseType: !36, size: 32, offset: 512)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "proto_num", scope: !1150, file: !128, line: 870, baseType: !36, size: 32, offset: 544)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1150, file: !128, line: 872, baseType: !190, size: 64, offset: 576)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !1150, file: !128, line: 876, baseType: !33, size: 64, offset: 640)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "request_time", scope: !1150, file: !128, line: 879, baseType: !1272, size: 64, offset: 704)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_time_t", file: !383, line: 45, baseType: !384)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "status_line", scope: !1150, file: !128, line: 882, baseType: !33, size: 64, offset: 768)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1150, file: !128, line: 884, baseType: !36, size: 32, offset: 832)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "method_number", scope: !1150, file: !128, line: 891, baseType: !36, size: 32, offset: 864)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !1150, file: !128, line: 893, baseType: !33, size: 64, offset: 896)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1150, file: !128, line: 915, baseType: !384, size: 64, offset: 960)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_xmethods", scope: !1150, file: !128, line: 917, baseType: !180, size: 64, offset: 1024)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "allowed_methods", scope: !1150, file: !128, line: 919, baseType: !430, size: 64, offset: 1088)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "sent_bodyct", scope: !1150, file: !128, line: 922, baseType: !71, size: 64, offset: 1152)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_sent", scope: !1150, file: !128, line: 924, baseType: !71, size: 64, offset: 1216)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1150, file: !128, line: 926, baseType: !1272, size: 64, offset: 1280)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1150, file: !128, line: 931, baseType: !33, size: 64, offset: 1344)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "clength", scope: !1150, file: !128, line: 933, baseType: !71, size: 64, offset: 1408)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "chunked", scope: !1150, file: !128, line: 935, baseType: !36, size: 32, offset: 1472)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "read_body", scope: !1150, file: !128, line: 940, baseType: !36, size: 32, offset: 1504)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "read_chunked", scope: !1150, file: !128, line: 942, baseType: !36, size: 32, offset: 1536)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "expecting_100", scope: !1150, file: !128, line: 944, baseType: !13, size: 32, offset: 1568)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "kept_body", scope: !1150, file: !128, line: 946, baseType: !1192, size: 64, offset: 1600)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "body_table", scope: !1150, file: !128, line: 950, baseType: !424, size: 64, offset: 1664)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !1150, file: !128, line: 952, baseType: !71, size: 64, offset: 1728)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "read_length", scope: !1150, file: !128, line: 954, baseType: !71, size: 64, offset: 1792)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "headers_in", scope: !1150, file: !128, line: 969, baseType: !424, size: 64, offset: 1856)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "headers_out", scope: !1150, file: !128, line: 971, baseType: !424, size: 64, offset: 1920)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "err_headers_out", scope: !1150, file: !128, line: 974, baseType: !424, size: 64, offset: 1984)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "subprocess_env", scope: !1150, file: !128, line: 976, baseType: !424, size: 64, offset: 2048)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !1150, file: !128, line: 978, baseType: !424, size: 64, offset: 2112)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !1150, file: !128, line: 985, baseType: !33, size: 64, offset: 2176)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1150, file: !128, line: 987, baseType: !33, size: 64, offset: 2240)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "content_encoding", scope: !1150, file: !128, line: 990, baseType: !33, size: 64, offset: 2304)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "content_languages", scope: !1150, file: !128, line: 992, baseType: !180, size: 64, offset: 2368)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "vlist_validator", scope: !1150, file: !128, line: 995, baseType: !190, size: 64, offset: 2432)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1150, file: !128, line: 998, baseType: !190, size: 64, offset: 2496)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ap_auth_type", scope: !1150, file: !128, line: 1000, baseType: !190, size: 64, offset: 2560)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "unparsed_uri", scope: !1150, file: !128, line: 1007, baseType: !190, size: 64, offset: 2624)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !1150, file: !128, line: 1009, baseType: !190, size: 64, offset: 2688)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !1150, file: !128, line: 1011, baseType: !190, size: 64, offset: 2752)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_filename", scope: !1150, file: !128, line: 1015, baseType: !190, size: 64, offset: 2816)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "path_info", scope: !1150, file: !128, line: 1017, baseType: !190, size: 64, offset: 2880)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1150, file: !128, line: 1019, baseType: !190, size: 64, offset: 2944)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "used_path_info", scope: !1150, file: !128, line: 1029, baseType: !36, size: 32, offset: 3008)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "eos_sent", scope: !1150, file: !128, line: 1032, baseType: !36, size: 32, offset: 3040)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "per_dir_config", scope: !1150, file: !128, line: 1040, baseType: !270, size: 64, offset: 3072)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "request_config", scope: !1150, file: !128, line: 1042, baseType: !270, size: 64, offset: 3136)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "log", scope: !1150, file: !128, line: 1047, baseType: !1250, size: 64, offset: 3200)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "log_id", scope: !1150, file: !128, line: 1052, baseType: !33, size: 64, offset: 3264)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "htaccess", scope: !1150, file: !128, line: 1060, baseType: !1318, size: 64, offset: 3328)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1320)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htaccess_result", file: !128, line: 781, size: 320, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1325, !1326, !1327}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1320, file: !128, line: 783, baseType: !33, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "override", scope: !1320, file: !128, line: 785, baseType: !36, size: 32, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "override_opts", scope: !1320, file: !128, line: 787, baseType: !36, size: 32, offset: 96)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "override_list", scope: !1320, file: !128, line: 789, baseType: !424, size: 64, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "htaccess", scope: !1320, file: !128, line: 791, baseType: !270, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1320, file: !128, line: 793, baseType: !1318, size: 64, offset: 256)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "output_filters", scope: !1150, file: !128, line: 1063, baseType: !1172, size: 64, offset: 3392)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "input_filters", scope: !1150, file: !128, line: 1065, baseType: !1172, size: 64, offset: 3456)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "proto_output_filters", scope: !1150, file: !128, line: 1069, baseType: !1172, size: 64, offset: 3520)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "proto_input_filters", scope: !1150, file: !128, line: 1072, baseType: !1172, size: 64, offset: 3584)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "no_cache", scope: !1150, file: !128, line: 1075, baseType: !36, size: 32, offset: 3648)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "no_local_copy", scope: !1150, file: !128, line: 1077, baseType: !36, size: 32, offset: 3680)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "invoke_mtx", scope: !1150, file: !128, line: 1082, baseType: !1335, size: 64, offset: 3712)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_thread_mutex_t", file: !1337, line: 41, baseType: !1338)
!1337 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_thread_mutex.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "333d6b386ebd5ebf2a57c53b3ab4b684")
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_thread_mutex_t", file: !1337, line: 41, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "parsed_uri", scope: !1150, file: !128, line: 1085, baseType: !1340, size: 704, offset: 3776)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uri_t", file: !1341, line: 80, baseType: !1342)
!1341 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_uri.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "9269047179f727bd075392a12871b578")
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_uri_t", file: !1341, line: 85, size: 704, elements: !1343)
!1343 = !{!1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1356, !1357, !1358, !1359}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "scheme", scope: !1342, file: !1341, line: 87, baseType: !190, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "hostinfo", scope: !1342, file: !1341, line: 89, baseType: !190, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1342, file: !1341, line: 91, baseType: !190, size: 64, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !1342, file: !1341, line: 93, baseType: !190, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !1342, file: !1341, line: 95, baseType: !190, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "port_str", scope: !1342, file: !1341, line: 97, baseType: !190, size: 64, offset: 320)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1342, file: !1341, line: 99, baseType: !190, size: 64, offset: 384)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !1342, file: !1341, line: 101, baseType: !190, size: 64, offset: 448)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "fragment", scope: !1342, file: !1341, line: 103, baseType: !190, size: 64, offset: 512)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "hostent", scope: !1342, file: !1341, line: 106, baseType: !1354, size: 64, offset: 576)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "hostent", file: !1341, line: 106, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1342, file: !1341, line: 109, baseType: !277, size: 16, offset: 640)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "is_initialized", scope: !1342, file: !1341, line: 112, baseType: !13, size: 1, offset: 656, flags: DIFlagBitField, extraData: i64 656)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "dns_looked_up", scope: !1342, file: !1341, line: 115, baseType: !13, size: 1, offset: 657, flags: DIFlagBitField, extraData: i64 656)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dns_resolved", scope: !1342, file: !1341, line: 117, baseType: !13, size: 1, offset: 658, flags: DIFlagBitField, extraData: i64 656)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "finfo", scope: !1150, file: !128, line: 1087, baseType: !1361, size: 960, offset: 4480)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_finfo_t", file: !150, line: 143, baseType: !1362)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apr_finfo_t", file: !150, line: 174, size: 960, elements: !1363)
!1363 = !{!1364, !1365, !1366, !1368, !1370, !1375, !1379, !1383, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1362, file: !150, line: 176, baseType: !94, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1362, file: !150, line: 179, baseType: !301, size: 32, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "protection", scope: !1362, file: !150, line: 181, baseType: !1367, size: 32, offset: 96)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_fileperms_t", file: !150, line: 125, baseType: !301)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "filetype", scope: !1362, file: !150, line: 186, baseType: !1369, size: 32, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_filetype_e", file: !150, line: 72, baseType: !149)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1362, file: !150, line: 188, baseType: !1371, size: 32, offset: 160)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uid_t", file: !1372, line: 45, baseType: !1373)
!1372 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_user.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "724f26fd838740b0ca4b55f59030741b")
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !73, line: 79, baseType: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !75, line: 146, baseType: !13)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1362, file: !150, line: 190, baseType: !1376, size: 32, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_gid_t", file: !1372, line: 54, baseType: !1377)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !73, line: 64, baseType: !1378)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !75, line: 147, baseType: !13)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !1362, file: !150, line: 192, baseType: !1380, size: 64, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_ino_t", file: !66, line: 383, baseType: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !73, line: 47, baseType: !1382)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !75, line: 148, baseType: !69)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1362, file: !150, line: 194, baseType: !1384, size: 64, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_dev_t", file: !150, line: 135, baseType: !1385)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !73, line: 59, baseType: !1386)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !75, line: 145, baseType: !69)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1362, file: !150, line: 196, baseType: !301, size: 32, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1362, file: !150, line: 198, baseType: !71, size: 64, offset: 448)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "csize", scope: !1362, file: !150, line: 200, baseType: !71, size: 64, offset: 512)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1362, file: !150, line: 202, baseType: !1272, size: 64, offset: 576)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1362, file: !150, line: 204, baseType: !1272, size: 64, offset: 640)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1362, file: !150, line: 206, baseType: !1272, size: 64, offset: 704)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !1362, file: !150, line: 208, baseType: !33, size: 64, offset: 768)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1362, file: !150, line: 210, baseType: !33, size: 64, offset: 832)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "filehand", scope: !1362, file: !150, line: 212, baseType: !1396, size: 64, offset: 896)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "useragent_addr", scope: !1150, file: !128, line: 1093, baseType: !292, size: 64, offset: 5440)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "useragent_ip", scope: !1150, file: !128, line: 1094, baseType: !190, size: 64, offset: 5504)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "trailers_in", scope: !1150, file: !128, line: 1097, baseType: !424, size: 64, offset: 5568)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "trailers_out", scope: !1150, file: !128, line: 1099, baseType: !424, size: 64, offset: 5632)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "useragent_host", scope: !1150, file: !128, line: 1104, baseType: !190, size: 64, offset: 5696)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "double_reverse", scope: !1150, file: !128, line: 1108, baseType: !36, size: 32, offset: 5760)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "bnotes", scope: !1150, file: !128, line: 1113, baseType: !1404, size: 64, offset: 5824)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_request_bnotes_t", file: !128, line: 662, baseType: !1405)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uint64_t", file: !66, line: 372, baseType: !1406)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !324, line: 27, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !75, line: 45, baseType: !69)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "session_rec", file: !1141, line: 98, baseType: !1410)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1141, line: 84, size: 576, elements: !1411)
!1411 = !{!1412, !1413, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !1410, file: !1141, line: 85, baseType: !94, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !1410, file: !1141, line: 86, baseType: !1414, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_uuid_t", file: !1416, line: 43, baseType: !1417)
!1416 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_uuid.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "02e66ef2200a85dd769e8f697000309e")
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1416, line: 41, size: 128, elements: !1418)
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1417, file: !1416, line: 42, baseType: !1420, size: 128)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 128, elements: !353)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "remote_user", scope: !1410, file: !1141, line: 87, baseType: !33, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1410, file: !1141, line: 88, baseType: !424, size: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "encoded", scope: !1410, file: !1141, line: 89, baseType: !33, size: 64, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1410, file: !1141, line: 90, baseType: !1272, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "maxage", scope: !1410, file: !1141, line: 91, baseType: !76, size: 64, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !1410, file: !1141, line: 93, baseType: !36, size: 32, offset: 448)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !1410, file: !1141, line: 94, baseType: !36, size: 32, offset: 480)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !1410, file: !1141, line: 96, baseType: !36, size: 32, offset: 512)
!1429 = distinct !DISubprogram(name: "session_crypto_encode", scope: !2, file: !2, line: 500, type: !1146, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1430)
!1430 = !{!1431, !1432, !1433, !1434, !1435, !1440}
!1431 = !DILocalVariable(name: "r", arg: 1, scope: !1429, file: !2, line: 500, type: !1148)
!1432 = !DILocalVariable(name: "z", arg: 2, scope: !1429, file: !2, line: 500, type: !1408)
!1433 = !DILocalVariable(name: "encoded", scope: !1429, file: !2, line: 503, type: !190)
!1434 = !DILocalVariable(name: "res", scope: !1429, file: !2, line: 504, type: !47)
!1435 = !DILocalVariable(name: "f", scope: !1429, file: !2, line: 505, type: !1436)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1438)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_crypto_t", file: !162, line: 125, baseType: !1439)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_crypto_t", file: !162, line: 125, flags: DIFlagFwdDecl)
!1440 = !DILocalVariable(name: "dconf", scope: !1429, file: !2, line: 506, type: !175)
!1441 = !DILocation(line: 500, column: 57, scope: !1429)
!1442 = !DILocation(line: 500, column: 74, scope: !1429)
!1443 = !DILocation(line: 503, column: 5, scope: !1429)
!1444 = !DILocation(line: 503, column: 11, scope: !1429)
!1445 = !DILocation(line: 504, column: 5, scope: !1429)
!1446 = !DILocation(line: 504, column: 18, scope: !1429)
!1447 = !DILocation(line: 505, column: 5, scope: !1429)
!1448 = !DILocation(line: 505, column: 25, scope: !1429)
!1449 = !DILocation(line: 506, column: 5, scope: !1429)
!1450 = !DILocation(line: 506, column: 30, scope: !1429)
!1451 = !DILocation(line: 506, column: 38, scope: !1429)
!1452 = !{!1453, !717, i64 384}
!1453 = !{!"request_rec", !717, i64 0, !717, i64 8, !717, i64 16, !717, i64 24, !717, i64 32, !717, i64 40, !717, i64 48, !732, i64 56, !732, i64 60, !732, i64 64, !732, i64 68, !717, i64 72, !717, i64 80, !882, i64 88, !717, i64 96, !732, i64 104, !732, i64 108, !717, i64 112, !882, i64 120, !717, i64 128, !717, i64 136, !882, i64 144, !882, i64 152, !882, i64 160, !717, i64 168, !882, i64 176, !732, i64 184, !732, i64 188, !732, i64 192, !732, i64 196, !717, i64 200, !717, i64 208, !882, i64 216, !882, i64 224, !717, i64 232, !717, i64 240, !717, i64 248, !717, i64 256, !717, i64 264, !717, i64 272, !717, i64 280, !717, i64 288, !717, i64 296, !717, i64 304, !717, i64 312, !717, i64 320, !717, i64 328, !717, i64 336, !717, i64 344, !717, i64 352, !717, i64 360, !717, i64 368, !732, i64 376, !732, i64 380, !717, i64 384, !717, i64 392, !717, i64 400, !717, i64 408, !717, i64 416, !717, i64 424, !717, i64 432, !717, i64 440, !717, i64 448, !732, i64 456, !732, i64 460, !717, i64 464, !1454, i64 472, !1455, i64 560, !717, i64 680, !717, i64 688, !717, i64 696, !717, i64 704, !717, i64 712, !732, i64 720, !882, i64 728}
!1454 = !{!"apr_uri_t", !717, i64 0, !717, i64 8, !717, i64 16, !717, i64 24, !717, i64 32, !717, i64 40, !717, i64 48, !717, i64 56, !717, i64 64, !717, i64 72, !1066, i64 80, !732, i64 82, !732, i64 82, !732, i64 82}
!1455 = !{!"apr_finfo_t", !717, i64 0, !732, i64 8, !732, i64 12, !718, i64 16, !732, i64 20, !732, i64 24, !882, i64 32, !882, i64 40, !732, i64 48, !882, i64 56, !882, i64 64, !882, i64 72, !882, i64 80, !882, i64 88, !717, i64 96, !717, i64 104, !717, i64 112}
!1456 = !DILocation(line: 509, column: 9, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 509, column: 9)
!1458 = !DILocation(line: 509, column: 16, scope: !1457)
!1459 = !DILocation(line: 509, column: 32, scope: !1457)
!1460 = !DILocation(line: 509, column: 35, scope: !1457)
!1461 = !DILocation(line: 509, column: 38, scope: !1457)
!1462 = !{!1463, !717, i64 32}
!1463 = !{!"", !717, i64 0, !717, i64 8, !717, i64 16, !717, i64 24, !717, i64 32, !882, i64 40, !882, i64 48, !732, i64 56, !732, i64 60, !732, i64 64}
!1464 = !DILocation(line: 509, column: 46, scope: !1457)
!1465 = !DILocation(line: 509, column: 50, scope: !1457)
!1466 = !DILocation(line: 509, column: 53, scope: !1457)
!1467 = !DILocation(line: 509, column: 49, scope: !1457)
!1468 = !DILocation(line: 509, column: 9, scope: !1429)
!1469 = !DILocation(line: 510, column: 56, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 509, column: 62)
!1471 = !DILocation(line: 510, column: 59, scope: !1470)
!1472 = !{!1453, !717, i64 16}
!1473 = !DILocation(line: 510, column: 67, scope: !1470)
!1474 = !{!1064, !717, i64 0}
!1475 = !DILocation(line: 510, column: 76, scope: !1470)
!1476 = !{!1477, !717, i64 8}
!1477 = !{!"process_rec", !717, i64 0, !717, i64 8, !717, i64 16, !717, i64 24, !732, i64 32}
!1478 = !DILocation(line: 510, column: 9, scope: !1470)
!1479 = !DILocation(line: 511, column: 30, scope: !1470)
!1480 = !DILocation(line: 511, column: 33, scope: !1470)
!1481 = !DILocation(line: 511, column: 36, scope: !1470)
!1482 = !DILocation(line: 511, column: 43, scope: !1470)
!1483 = !DILocation(line: 511, column: 46, scope: !1470)
!1484 = !DILocation(line: 511, column: 15, scope: !1470)
!1485 = !DILocation(line: 511, column: 13, scope: !1470)
!1486 = !DILocation(line: 512, column: 13, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1470, file: !2, line: 512, column: 13)
!1488 = !DILocation(line: 512, column: 17, scope: !1487)
!1489 = !DILocation(line: 512, column: 13, scope: !1470)
!1490 = !DILocation(line: 513, column: 13, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 512, column: 24)
!1492 = !DILocation(line: 513, column: 13, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !2, line: 513, column: 13)
!1494 = distinct !DILexicalBlock(scope: !1491, file: !2, line: 513, column: 13)
!1495 = !{!1453, !717, i64 400}
!1496 = !{!1453, !717, i64 8}
!1497 = !{!1498, !717, i64 168}
!1498 = !{!"conn_rec", !717, i64 0, !717, i64 8, !717, i64 16, !717, i64 24, !717, i64 32, !717, i64 40, !717, i64 48, !717, i64 56, !717, i64 64, !717, i64 72, !882, i64 80, !717, i64 88, !717, i64 96, !717, i64 104, !717, i64 112, !717, i64 120, !717, i64 128, !717, i64 136, !732, i64 144, !732, i64 148, !732, i64 152, !732, i64 152, !732, i64 156, !718, i64 160, !732, i64 164, !717, i64 168, !717, i64 176, !717, i64 184, !717, i64 192, !732, i64 200}
!1499 = !{!1065, !717, i64 0}
!1500 = !{!1065, !732, i64 8}
!1501 = !DILocation(line: 513, column: 13, scope: !1494)
!1502 = !DILocation(line: 515, column: 20, scope: !1491)
!1503 = !DILocation(line: 515, column: 13, scope: !1491)
!1504 = !DILocation(line: 517, column: 22, scope: !1470)
!1505 = !DILocation(line: 517, column: 9, scope: !1470)
!1506 = !DILocation(line: 517, column: 12, scope: !1470)
!1507 = !DILocation(line: 517, column: 20, scope: !1470)
!1508 = !DILocation(line: 518, column: 5, scope: !1470)
!1509 = !DILocation(line: 520, column: 5, scope: !1429)
!1510 = !DILocation(line: 522, column: 1, scope: !1429)
!1511 = !DISubprogram(name: "ap_hook_session_decode", scope: !1141, file: !1141, line: 169, type: !1512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{null, !1514, !201, !201, !36}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_HOOK_session_decode_t", file: !1141, line: 169, baseType: !1146)
!1516 = distinct !DISubprogram(name: "session_crypto_decode", scope: !2, file: !2, line: 530, type: !1146, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1517)
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523}
!1518 = !DILocalVariable(name: "r", arg: 1, scope: !1516, file: !2, line: 530, type: !1148)
!1519 = !DILocalVariable(name: "z", arg: 2, scope: !1516, file: !2, line: 531, type: !1408)
!1520 = !DILocalVariable(name: "encoded", scope: !1516, file: !2, line: 534, type: !190)
!1521 = !DILocalVariable(name: "res", scope: !1516, file: !2, line: 535, type: !47)
!1522 = !DILocalVariable(name: "f", scope: !1516, file: !2, line: 536, type: !1436)
!1523 = !DILocalVariable(name: "dconf", scope: !1516, file: !2, line: 537, type: !175)
!1524 = !DILocation(line: 530, column: 57, scope: !1516)
!1525 = !DILocation(line: 531, column: 23, scope: !1516)
!1526 = !DILocation(line: 534, column: 5, scope: !1516)
!1527 = !DILocation(line: 534, column: 11, scope: !1516)
!1528 = !DILocation(line: 535, column: 5, scope: !1516)
!1529 = !DILocation(line: 535, column: 18, scope: !1516)
!1530 = !DILocation(line: 536, column: 5, scope: !1516)
!1531 = !DILocation(line: 536, column: 25, scope: !1516)
!1532 = !DILocation(line: 537, column: 5, scope: !1516)
!1533 = !DILocation(line: 537, column: 30, scope: !1516)
!1534 = !DILocation(line: 537, column: 38, scope: !1516)
!1535 = !DILocation(line: 540, column: 10, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 540, column: 9)
!1537 = !DILocation(line: 540, column: 17, scope: !1536)
!1538 = !DILocation(line: 540, column: 9, scope: !1536)
!1539 = !DILocation(line: 540, column: 34, scope: !1536)
!1540 = !DILocation(line: 540, column: 37, scope: !1536)
!1541 = !DILocation(line: 540, column: 40, scope: !1536)
!1542 = !DILocation(line: 540, column: 48, scope: !1536)
!1543 = !DILocation(line: 540, column: 52, scope: !1536)
!1544 = !DILocation(line: 540, column: 55, scope: !1536)
!1545 = !DILocation(line: 540, column: 51, scope: !1536)
!1546 = !DILocation(line: 540, column: 9, scope: !1516)
!1547 = !DILocation(line: 542, column: 17, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1536, file: !2, line: 540, column: 64)
!1549 = !DILocation(line: 542, column: 20, scope: !1548)
!1550 = !DILocation(line: 542, column: 28, scope: !1548)
!1551 = !DILocation(line: 542, column: 37, scope: !1548)
!1552 = !DILocation(line: 541, column: 9, scope: !1548)
!1553 = !DILocation(line: 543, column: 30, scope: !1548)
!1554 = !DILocation(line: 543, column: 33, scope: !1548)
!1555 = !DILocation(line: 543, column: 36, scope: !1548)
!1556 = !DILocation(line: 543, column: 43, scope: !1548)
!1557 = !DILocation(line: 543, column: 46, scope: !1548)
!1558 = !DILocation(line: 543, column: 15, scope: !1548)
!1559 = !DILocation(line: 543, column: 13, scope: !1548)
!1560 = !DILocation(line: 544, column: 13, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 544, column: 13)
!1562 = !DILocation(line: 544, column: 17, scope: !1561)
!1563 = !DILocation(line: 544, column: 13, scope: !1548)
!1564 = !DILocation(line: 545, column: 13, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1561, file: !2, line: 544, column: 33)
!1566 = !DILocation(line: 545, column: 13, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !2, line: 545, column: 13)
!1568 = distinct !DILexicalBlock(scope: !1565, file: !2, line: 545, column: 13)
!1569 = !DILocation(line: 545, column: 13, scope: !1568)
!1570 = !DILocation(line: 547, column: 20, scope: !1565)
!1571 = !DILocation(line: 547, column: 13, scope: !1565)
!1572 = !DILocation(line: 549, column: 22, scope: !1548)
!1573 = !DILocation(line: 549, column: 9, scope: !1548)
!1574 = !DILocation(line: 549, column: 12, scope: !1548)
!1575 = !DILocation(line: 549, column: 20, scope: !1548)
!1576 = !DILocation(line: 550, column: 5, scope: !1548)
!1577 = !DILocation(line: 552, column: 5, scope: !1516)
!1578 = !DILocation(line: 554, column: 1, scope: !1516)
!1579 = !DISubprogram(name: "ap_hook_post_config", scope: !12, file: !12, line: 1359, type: !1580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null, !1582, !201, !201, !36}
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_HOOK_post_config_t", file: !12, line: 1359, baseType: !1584)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!36, !94, !94, !94, !250}
!1586 = distinct !DISubprogram(name: "session_crypto_init", scope: !2, file: !2, line: 559, type: !1584, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1587)
!1587 = !{!1588, !1589, !1590, !1591, !1592, !1597, !1599, !1600, !1612, !1613, !1619, !1623, !1627, !1631, !1635, !1639}
!1588 = !DILocalVariable(name: "p", arg: 1, scope: !1586, file: !2, line: 559, type: !94)
!1589 = !DILocalVariable(name: "plog", arg: 2, scope: !1586, file: !2, line: 559, type: !94)
!1590 = !DILocalVariable(name: "ptemp", arg: 3, scope: !1586, file: !2, line: 560, type: !94)
!1591 = !DILocalVariable(name: "s", arg: 4, scope: !1586, file: !2, line: 560, type: !250)
!1592 = !DILocalVariable(name: "driver", scope: !1586, file: !2, line: 562, type: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1595)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_crypto_driver_t", file: !162, line: 124, baseType: !1596)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_crypto_driver_t", file: !162, line: 124, flags: DIFlagFwdDecl)
!1597 = !DILocalVariable(name: "f", scope: !1586, file: !2, line: 563, type: !1598)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1599 = !DILocalVariable(name: "conf", scope: !1586, file: !2, line: 565, type: !194)
!1600 = !DILocalVariable(name: "err", scope: !1601, file: !2, line: 577, type: !1603)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !2, line: 575, column: 24)
!1602 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 575, column: 9)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1605)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "apu_err_t", file: !1606, line: 165, baseType: !1607)
!1606 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apu_errno.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "5c6deb8f34d1f3f3b48f53f17dda5f14")
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apu_err_t", file: !1606, line: 161, size: 192, elements: !1608)
!1608 = !{!1609, !1610, !1611}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !1607, file: !1606, line: 162, baseType: !33, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !1607, file: !1606, line: 163, baseType: !33, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !1607, file: !1606, line: 164, baseType: !36, size: 32, offset: 128)
!1612 = !DILocalVariable(name: "rv", scope: !1601, file: !2, line: 578, type: !47)
!1613 = !DILocalVariable(name: "sr__", scope: !1614, file: !2, line: 582, type: !1617)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 582, column: 13)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 581, column: 32)
!1616 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 581, column: 13)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!1619 = !DILocalVariable(name: "sr__", scope: !1620, file: !2, line: 589, type: !1617)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 589, column: 13)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !2, line: 588, column: 32)
!1622 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 588, column: 13)
!1623 = !DILocalVariable(name: "sr__", scope: !1624, file: !2, line: 595, type: !1617)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !2, line: 595, column: 13)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !2, line: 594, column: 39)
!1626 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 594, column: 13)
!1627 = !DILocalVariable(name: "sr__", scope: !1628, file: !2, line: 600, type: !1617)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !2, line: 600, column: 13)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !2, line: 599, column: 33)
!1630 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 599, column: 13)
!1631 = !DILocalVariable(name: "sr__", scope: !1632, file: !2, line: 606, type: !1617)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !2, line: 606, column: 13)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !2, line: 605, column: 43)
!1634 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 605, column: 13)
!1635 = !DILocalVariable(name: "sr__", scope: !1636, file: !2, line: 614, type: !1617)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !2, line: 614, column: 13)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !2, line: 613, column: 32)
!1638 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 613, column: 13)
!1639 = !DILocalVariable(name: "sr__", scope: !1640, file: !2, line: 620, type: !1617)
!1640 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 620, column: 9)
!1641 = !DILocation(line: 559, column: 44, scope: !1586)
!1642 = !DILocation(line: 559, column: 59, scope: !1586)
!1643 = !DILocation(line: 560, column: 21, scope: !1586)
!1644 = !DILocation(line: 560, column: 40, scope: !1586)
!1645 = !DILocation(line: 562, column: 5, scope: !1586)
!1646 = !DILocation(line: 562, column: 32, scope: !1586)
!1647 = !DILocation(line: 563, column: 5, scope: !1586)
!1648 = !DILocation(line: 563, column: 19, scope: !1586)
!1649 = !DILocation(line: 565, column: 5, scope: !1586)
!1650 = !DILocation(line: 565, column: 26, scope: !1586)
!1651 = !DILocation(line: 565, column: 33, scope: !1586)
!1652 = !DILocation(line: 571, column: 9, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 571, column: 9)
!1654 = !DILocation(line: 571, column: 42, scope: !1653)
!1655 = !DILocation(line: 571, column: 9, scope: !1586)
!1656 = !DILocation(line: 572, column: 9, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1653, file: !2, line: 571, column: 73)
!1658 = !DILocation(line: 575, column: 9, scope: !1602)
!1659 = !DILocation(line: 575, column: 15, scope: !1602)
!1660 = !DILocation(line: 575, column: 9, scope: !1586)
!1661 = !DILocation(line: 577, column: 9, scope: !1601)
!1662 = !DILocation(line: 577, column: 26, scope: !1601)
!1663 = !DILocation(line: 578, column: 9, scope: !1601)
!1664 = !DILocation(line: 578, column: 22, scope: !1601)
!1665 = !DILocation(line: 580, column: 30, scope: !1601)
!1666 = !DILocation(line: 580, column: 14, scope: !1601)
!1667 = !DILocation(line: 580, column: 12, scope: !1601)
!1668 = !DILocation(line: 581, column: 28, scope: !1616)
!1669 = !DILocation(line: 581, column: 25, scope: !1616)
!1670 = !DILocation(line: 581, column: 13, scope: !1601)
!1671 = !DILocation(line: 582, column: 13, scope: !1615)
!1672 = !DILocation(line: 582, column: 13, scope: !1614)
!1673 = !DILocation(line: 582, column: 13, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 582, column: 13)
!1675 = !DILocation(line: 584, column: 20, scope: !1615)
!1676 = !DILocation(line: 584, column: 13, scope: !1615)
!1677 = !DILocation(line: 587, column: 45, scope: !1601)
!1678 = !DILocation(line: 587, column: 51, scope: !1601)
!1679 = !DILocation(line: 587, column: 60, scope: !1601)
!1680 = !DILocation(line: 587, column: 66, scope: !1601)
!1681 = !DILocation(line: 587, column: 80, scope: !1601)
!1682 = !DILocation(line: 587, column: 14, scope: !1601)
!1683 = !DILocation(line: 587, column: 12, scope: !1601)
!1684 = !DILocation(line: 588, column: 28, scope: !1622)
!1685 = !DILocation(line: 588, column: 25, scope: !1622)
!1686 = !DILocation(line: 588, column: 13, scope: !1601)
!1687 = !DILocation(line: 589, column: 13, scope: !1621)
!1688 = !DILocation(line: 589, column: 13, scope: !1620)
!1689 = !DILocation(line: 589, column: 13, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1620, file: !2, line: 589, column: 13)
!1691 = !DILocation(line: 592, column: 16, scope: !1621)
!1692 = !DILocation(line: 593, column: 9, scope: !1621)
!1693 = !DILocation(line: 594, column: 28, scope: !1626)
!1694 = !DILocation(line: 594, column: 25, scope: !1626)
!1695 = !DILocation(line: 594, column: 31, scope: !1626)
!1696 = !DILocation(line: 594, column: 34, scope: !1626)
!1697 = !DILocation(line: 594, column: 13, scope: !1601)
!1698 = !DILocation(line: 595, column: 13, scope: !1625)
!1699 = !DILocation(line: 595, column: 13, scope: !1624)
!1700 = !DILocation(line: 595, column: 13, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1624, file: !2, line: 595, column: 13)
!1702 = !{!1703, !717, i64 8}
!1703 = !{!"apu_err_t", !717, i64 0, !717, i64 8, !732, i64 16}
!1704 = !{!1703, !717, i64 0}
!1705 = !{!1703, !732, i64 16}
!1706 = !DILocation(line: 597, column: 20, scope: !1625)
!1707 = !DILocation(line: 597, column: 13, scope: !1625)
!1708 = !DILocation(line: 599, column: 29, scope: !1630)
!1709 = !DILocation(line: 599, column: 26, scope: !1630)
!1710 = !DILocation(line: 599, column: 13, scope: !1601)
!1711 = !DILocation(line: 600, column: 13, scope: !1629)
!1712 = !DILocation(line: 600, column: 13, scope: !1628)
!1713 = !DILocation(line: 600, column: 13, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1628, file: !2, line: 600, column: 13)
!1715 = !DILocation(line: 603, column: 20, scope: !1629)
!1716 = !DILocation(line: 603, column: 13, scope: !1629)
!1717 = !DILocation(line: 605, column: 28, scope: !1634)
!1718 = !DILocation(line: 605, column: 25, scope: !1634)
!1719 = !DILocation(line: 605, column: 31, scope: !1634)
!1720 = !DILocation(line: 605, column: 35, scope: !1634)
!1721 = !DILocation(line: 605, column: 13, scope: !1601)
!1722 = !DILocation(line: 606, column: 13, scope: !1633)
!1723 = !DILocation(line: 606, column: 13, scope: !1632)
!1724 = !DILocation(line: 606, column: 13, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1632, file: !2, line: 606, column: 13)
!1726 = !DILocation(line: 609, column: 20, scope: !1633)
!1727 = !DILocation(line: 609, column: 13, scope: !1633)
!1728 = !DILocation(line: 612, column: 34, scope: !1601)
!1729 = !DILocation(line: 612, column: 42, scope: !1601)
!1730 = !DILocation(line: 612, column: 48, scope: !1601)
!1731 = !DILocation(line: 612, column: 56, scope: !1601)
!1732 = !DILocation(line: 612, column: 14, scope: !1601)
!1733 = !DILocation(line: 612, column: 12, scope: !1601)
!1734 = !DILocation(line: 613, column: 28, scope: !1638)
!1735 = !DILocation(line: 613, column: 25, scope: !1638)
!1736 = !DILocation(line: 613, column: 13, scope: !1601)
!1737 = !DILocation(line: 614, column: 13, scope: !1637)
!1738 = !DILocation(line: 614, column: 13, scope: !1636)
!1739 = !DILocation(line: 614, column: 13, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 614, column: 13)
!1741 = !DILocation(line: 617, column: 20, scope: !1637)
!1742 = !DILocation(line: 617, column: 13, scope: !1637)
!1743 = !DILocation(line: 620, column: 9, scope: !1601)
!1744 = !DILocation(line: 620, column: 9, scope: !1640)
!1745 = !DILocation(line: 620, column: 9, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1640, file: !2, line: 620, column: 9)
!1747 = !{!1064, !717, i64 32}
!1748 = !{!1064, !732, i64 40}
!1749 = !DILocation(line: 624, column: 45, scope: !1601)
!1750 = !DILocation(line: 625, column: 40, scope: !1601)
!1751 = !DILocation(line: 625, column: 43, scope: !1601)
!1752 = !DILocation(line: 625, column: 52, scope: !1601)
!1753 = !DILocation(line: 624, column: 9, scope: !1601)
!1754 = !DILocation(line: 627, column: 5, scope: !1602)
!1755 = !DILocation(line: 627, column: 5, scope: !1601)
!1756 = !DILocation(line: 629, column: 5, scope: !1586)
!1757 = !DILocation(line: 630, column: 1, scope: !1586)
!1758 = !DISubprogram(name: "apr_pool_userdata_get", scope: !96, file: !96, line: 600, type: !1759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!47, !203, !33, !94}
!1761 = distinct !DISubprogram(name: "encrypt_string", scope: !2, file: !2, line: 263, type: !1762, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1764)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!47, !1148, !1436, !175, !33, !208}
!1764 = !{!1765, !1766, !1767, !1768, !1769, !1770, !1771, !1775, !1776, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1792, !1793}
!1765 = !DILocalVariable(name: "r", arg: 1, scope: !1761, file: !2, line: 263, type: !1148)
!1766 = !DILocalVariable(name: "f", arg: 2, scope: !1761, file: !2, line: 263, type: !1436)
!1767 = !DILocalVariable(name: "dconf", arg: 3, scope: !1761, file: !2, line: 264, type: !175)
!1768 = !DILocalVariable(name: "in", arg: 4, scope: !1761, file: !2, line: 264, type: !33)
!1769 = !DILocalVariable(name: "out", arg: 5, scope: !1761, file: !2, line: 264, type: !208)
!1770 = !DILocalVariable(name: "res", scope: !1761, file: !2, line: 266, type: !47)
!1771 = !DILocalVariable(name: "key", scope: !1761, file: !2, line: 267, type: !1772)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_crypto_key_t", file: !162, line: 127, baseType: !1774)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_crypto_key_t", file: !162, line: 127, flags: DIFlagFwdDecl)
!1775 = !DILocalVariable(name: "ivSize", scope: !1761, file: !2, line: 268, type: !65)
!1776 = !DILocalVariable(name: "block", scope: !1761, file: !2, line: 269, type: !1777)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_crypto_block_t", file: !162, line: 128, baseType: !1779)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_crypto_block_t", file: !162, line: 128, flags: DIFlagFwdDecl)
!1780 = !DILocalVariable(name: "encrypt", scope: !1761, file: !2, line: 270, type: !204)
!1781 = !DILocalVariable(name: "combined", scope: !1761, file: !2, line: 271, type: !204)
!1782 = !DILocalVariable(name: "encryptlen", scope: !1761, file: !2, line: 272, type: !65)
!1783 = !DILocalVariable(name: "tlen", scope: !1761, file: !2, line: 272, type: !65)
!1784 = !DILocalVariable(name: "combinedlen", scope: !1761, file: !2, line: 272, type: !65)
!1785 = !DILocalVariable(name: "base64", scope: !1761, file: !2, line: 273, type: !190)
!1786 = !DILocalVariable(name: "blockSize", scope: !1761, file: !2, line: 274, type: !65)
!1787 = !DILocalVariable(name: "iv", scope: !1761, file: !2, line: 275, type: !206)
!1788 = !DILocalVariable(name: "salt", scope: !1761, file: !2, line: 276, type: !1415)
!1789 = !DILocalVariable(name: "cipher", scope: !1761, file: !2, line: 277, type: !1790)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_crypto_block_key_type_e", file: !162, line: 113, baseType: !161)
!1792 = !DILocalVariable(name: "passphrase", scope: !1761, file: !2, line: 278, type: !33)
!1793 = !DILocalVariable(name: "passlen", scope: !1761, file: !2, line: 279, type: !65)
!1794 = !DILocation(line: 263, column: 50, scope: !1761)
!1795 = !DILocation(line: 263, column: 73, scope: !1761)
!1796 = !DILocation(line: 264, column: 34, scope: !1761)
!1797 = !DILocation(line: 264, column: 53, scope: !1761)
!1798 = !DILocation(line: 264, column: 64, scope: !1761)
!1799 = !DILocation(line: 266, column: 5, scope: !1761)
!1800 = !DILocation(line: 266, column: 18, scope: !1761)
!1801 = !DILocation(line: 267, column: 5, scope: !1761)
!1802 = !DILocation(line: 267, column: 23, scope: !1761)
!1803 = !DILocation(line: 268, column: 5, scope: !1761)
!1804 = !DILocation(line: 268, column: 16, scope: !1761)
!1805 = !{!882, !882, i64 0}
!1806 = !DILocation(line: 269, column: 5, scope: !1761)
!1807 = !DILocation(line: 269, column: 25, scope: !1761)
!1808 = !DILocation(line: 270, column: 5, scope: !1761)
!1809 = !DILocation(line: 270, column: 20, scope: !1761)
!1810 = !DILocation(line: 271, column: 5, scope: !1761)
!1811 = !DILocation(line: 271, column: 20, scope: !1761)
!1812 = !DILocation(line: 272, column: 5, scope: !1761)
!1813 = !DILocation(line: 272, column: 16, scope: !1761)
!1814 = !DILocation(line: 272, column: 28, scope: !1761)
!1815 = !DILocation(line: 272, column: 34, scope: !1761)
!1816 = !DILocation(line: 273, column: 5, scope: !1761)
!1817 = !DILocation(line: 273, column: 11, scope: !1761)
!1818 = !DILocation(line: 274, column: 5, scope: !1761)
!1819 = !DILocation(line: 274, column: 16, scope: !1761)
!1820 = !DILocation(line: 275, column: 5, scope: !1761)
!1821 = !DILocation(line: 275, column: 26, scope: !1761)
!1822 = !DILocation(line: 276, column: 5, scope: !1761)
!1823 = !DILocation(line: 276, column: 16, scope: !1761)
!1824 = !DILocation(line: 277, column: 5, scope: !1761)
!1825 = !DILocation(line: 277, column: 34, scope: !1761)
!1826 = !DILocation(line: 278, column: 5, scope: !1761)
!1827 = !DILocation(line: 278, column: 17, scope: !1761)
!1828 = !DILocation(line: 279, column: 5, scope: !1761)
!1829 = !DILocation(line: 279, column: 16, scope: !1761)
!1830 = !DILocation(line: 282, column: 5, scope: !1761)
!1831 = !DILocation(line: 283, column: 22, scope: !1761)
!1832 = !DILocation(line: 283, column: 25, scope: !1761)
!1833 = !DILocation(line: 283, column: 37, scope: !1761)
!1834 = !DILocation(line: 283, column: 11, scope: !1761)
!1835 = !DILocation(line: 283, column: 9, scope: !1761)
!1836 = !DILocation(line: 284, column: 9, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1761, file: !2, line: 284, column: 9)
!1838 = !DILocation(line: 284, column: 13, scope: !1837)
!1839 = !DILocation(line: 284, column: 9, scope: !1761)
!1840 = !DILocation(line: 285, column: 16, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 284, column: 29)
!1842 = !DILocation(line: 285, column: 9, scope: !1841)
!1843 = !DILocation(line: 289, column: 18, scope: !1761)
!1844 = !{!1845, !717, i64 24}
!1845 = !{!"apr_array_header_t", !717, i64 0, !732, i64 8, !732, i64 12, !732, i64 16, !717, i64 24}
!1846 = !DILocation(line: 289, column: 16, scope: !1761)
!1847 = !DILocation(line: 290, column: 22, scope: !1761)
!1848 = !DILocation(line: 290, column: 15, scope: !1761)
!1849 = !DILocation(line: 290, column: 13, scope: !1761)
!1850 = !DILocation(line: 291, column: 48, scope: !1761)
!1851 = !DILocation(line: 291, column: 60, scope: !1761)
!1852 = !DILocation(line: 293, column: 14, scope: !1761)
!1853 = !DILocation(line: 293, column: 13, scope: !1761)
!1854 = !DILocation(line: 293, column: 45, scope: !1761)
!1855 = !DILocation(line: 293, column: 48, scope: !1761)
!1856 = !DILocation(line: 293, column: 51, scope: !1761)
!1857 = !{!1453, !717, i64 0}
!1858 = !DILocation(line: 291, column: 11, scope: !1761)
!1859 = !DILocation(line: 291, column: 9, scope: !1761)
!1860 = !DILocation(line: 294, column: 9, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1761, file: !2, line: 294, column: 9)
!1862 = !DILocation(line: 294, column: 9, scope: !1761)
!1863 = !DILocation(line: 295, column: 9, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1861, file: !2, line: 294, column: 36)
!1865 = !DILocation(line: 295, column: 9, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !2, line: 295, column: 9)
!1867 = distinct !DILexicalBlock(scope: !1864, file: !2, line: 295, column: 9)
!1868 = !DILocation(line: 295, column: 9, scope: !1867)
!1869 = !DILocation(line: 297, column: 5, scope: !1864)
!1870 = !DILocation(line: 298, column: 9, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1761, file: !2, line: 298, column: 9)
!1872 = !DILocation(line: 298, column: 9, scope: !1761)
!1873 = !DILocation(line: 299, column: 9, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 298, column: 38)
!1875 = !DILocation(line: 299, column: 9, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !2, line: 299, column: 9)
!1877 = distinct !DILexicalBlock(scope: !1874, file: !2, line: 299, column: 9)
!1878 = !DILocation(line: 299, column: 9, scope: !1877)
!1879 = !DILocation(line: 301, column: 5, scope: !1874)
!1880 = !DILocation(line: 302, column: 9, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1761, file: !2, line: 302, column: 9)
!1882 = !DILocation(line: 302, column: 9, scope: !1761)
!1883 = !DILocation(line: 303, column: 9, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1881, file: !2, line: 302, column: 38)
!1885 = !DILocation(line: 303, column: 9, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !2, line: 303, column: 9)
!1887 = distinct !DILexicalBlock(scope: !1884, file: !2, line: 303, column: 9)
!1888 = !DILocation(line: 303, column: 9, scope: !1887)
!1889 = !DILocation(line: 305, column: 5, scope: !1884)
!1890 = !DILocation(line: 306, column: 24, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1761, file: !2, line: 306, column: 9)
!1892 = !DILocation(line: 306, column: 21, scope: !1891)
!1893 = !DILocation(line: 306, column: 9, scope: !1761)
!1894 = !DILocation(line: 307, column: 9, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !2, line: 306, column: 29)
!1896 = !DILocation(line: 307, column: 9, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !2, line: 307, column: 9)
!1898 = distinct !DILexicalBlock(scope: !1895, file: !2, line: 307, column: 9)
!1899 = !DILocation(line: 307, column: 9, scope: !1898)
!1900 = !DILocation(line: 309, column: 16, scope: !1895)
!1901 = !DILocation(line: 309, column: 9, scope: !1895)
!1902 = !DILocation(line: 312, column: 54, scope: !1761)
!1903 = !DILocation(line: 312, column: 71, scope: !1761)
!1904 = !DILocation(line: 312, column: 74, scope: !1761)
!1905 = !DILocation(line: 312, column: 11, scope: !1761)
!1906 = !DILocation(line: 312, column: 9, scope: !1761)
!1907 = !DILocation(line: 313, column: 24, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1761, file: !2, line: 313, column: 9)
!1909 = !DILocation(line: 313, column: 21, scope: !1908)
!1910 = !DILocation(line: 313, column: 9, scope: !1761)
!1911 = !DILocation(line: 314, column: 9, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1908, file: !2, line: 313, column: 29)
!1913 = !DILocation(line: 314, column: 9, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !2, line: 314, column: 9)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !2, line: 314, column: 9)
!1916 = !DILocation(line: 314, column: 9, scope: !1915)
!1917 = !DILocation(line: 316, column: 16, scope: !1912)
!1918 = !DILocation(line: 316, column: 9, scope: !1912)
!1919 = !DILocation(line: 321, column: 59, scope: !1761)
!1920 = !DILocation(line: 321, column: 70, scope: !1761)
!1921 = !DILocation(line: 321, column: 63, scope: !1761)
!1922 = !DILocation(line: 322, column: 36, scope: !1761)
!1923 = !DILocation(line: 320, column: 11, scope: !1761)
!1924 = !DILocation(line: 320, column: 9, scope: !1761)
!1925 = !DILocation(line: 323, column: 24, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1761, file: !2, line: 323, column: 9)
!1927 = !DILocation(line: 323, column: 21, scope: !1926)
!1928 = !DILocation(line: 323, column: 9, scope: !1761)
!1929 = !DILocation(line: 324, column: 9, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1926, file: !2, line: 323, column: 29)
!1931 = !DILocation(line: 324, column: 9, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !2, line: 324, column: 9)
!1933 = distinct !DILexicalBlock(scope: !1930, file: !2, line: 324, column: 9)
!1934 = !DILocation(line: 324, column: 9, scope: !1933)
!1935 = !DILocation(line: 326, column: 16, scope: !1930)
!1936 = !DILocation(line: 326, column: 9, scope: !1930)
!1937 = !DILocation(line: 328, column: 43, scope: !1761)
!1938 = !DILocation(line: 328, column: 53, scope: !1761)
!1939 = !DILocation(line: 328, column: 51, scope: !1761)
!1940 = !DILocation(line: 328, column: 72, scope: !1761)
!1941 = !DILocation(line: 328, column: 11, scope: !1761)
!1942 = !DILocation(line: 328, column: 9, scope: !1761)
!1943 = !DILocation(line: 329, column: 24, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1761, file: !2, line: 329, column: 9)
!1945 = !DILocation(line: 329, column: 21, scope: !1944)
!1946 = !DILocation(line: 329, column: 9, scope: !1761)
!1947 = !DILocation(line: 330, column: 9, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1944, file: !2, line: 329, column: 29)
!1949 = !DILocation(line: 330, column: 9, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !2, line: 330, column: 9)
!1951 = distinct !DILexicalBlock(scope: !1948, file: !2, line: 330, column: 9)
!1952 = !DILocation(line: 330, column: 9, scope: !1951)
!1953 = !DILocation(line: 332, column: 16, scope: !1948)
!1954 = !DILocation(line: 332, column: 9, scope: !1948)
!1955 = !DILocation(line: 334, column: 19, scope: !1761)
!1956 = !DILocation(line: 334, column: 16, scope: !1761)
!1957 = !DILocation(line: 337, column: 59, scope: !1761)
!1958 = !DILocation(line: 337, column: 57, scope: !1761)
!1959 = !DILocation(line: 337, column: 68, scope: !1761)
!1960 = !DILocation(line: 337, column: 66, scope: !1761)
!1961 = !DILocation(line: 337, column: 17, scope: !1761)
!1962 = !DILocation(line: 338, column: 27, scope: !1761)
!1963 = !DILocation(line: 338, column: 30, scope: !1761)
!1964 = !DILocation(line: 338, column: 36, scope: !1761)
!1965 = !DILocation(line: 338, column: 16, scope: !1761)
!1966 = !DILocation(line: 338, column: 14, scope: !1761)
!1967 = !DILocation(line: 339, column: 12, scope: !1761)
!1968 = !DILocation(line: 339, column: 21, scope: !1761)
!1969 = !DILocation(line: 339, column: 5, scope: !1761)
!1970 = !DILocation(line: 340, column: 12, scope: !1761)
!1971 = !DILocation(line: 340, column: 21, scope: !1761)
!1972 = !DILocation(line: 340, column: 40, scope: !1761)
!1973 = !DILocation(line: 340, column: 62, scope: !1761)
!1974 = !DILocation(line: 340, column: 66, scope: !1761)
!1975 = !DILocation(line: 340, column: 5, scope: !1761)
!1976 = !DILocation(line: 341, column: 12, scope: !1761)
!1977 = !DILocation(line: 341, column: 21, scope: !1761)
!1978 = !DILocation(line: 341, column: 40, scope: !1761)
!1979 = !DILocation(line: 341, column: 63, scope: !1761)
!1980 = !DILocation(line: 341, column: 61, scope: !1761)
!1981 = !DILocation(line: 342, column: 12, scope: !1761)
!1982 = !DILocation(line: 342, column: 21, scope: !1761)
!1983 = !DILocation(line: 341, column: 5, scope: !1761)
!1984 = !DILocation(line: 344, column: 18, scope: !1761)
!1985 = !DILocation(line: 344, column: 27, scope: !1761)
!1986 = !DILocation(line: 344, column: 47, scope: !1761)
!1987 = !DILocation(line: 344, column: 59, scope: !1761)
!1988 = !DILocation(line: 345, column: 18, scope: !1761)
!1989 = !DILocation(line: 345, column: 30, scope: !1761)
!1990 = !DILocation(line: 345, column: 39, scope: !1761)
!1991 = !DILocation(line: 344, column: 5, scope: !1761)
!1992 = !DILocation(line: 348, column: 25, scope: !1761)
!1993 = !DILocation(line: 348, column: 28, scope: !1761)
!1994 = !DILocation(line: 348, column: 56, scope: !1761)
!1995 = !DILocation(line: 348, column: 34, scope: !1761)
!1996 = !DILocation(line: 348, column: 14, scope: !1761)
!1997 = !DILocation(line: 348, column: 12, scope: !1761)
!1998 = !DILocation(line: 349, column: 23, scope: !1761)
!1999 = !DILocation(line: 349, column: 46, scope: !1761)
!2000 = !DILocation(line: 349, column: 56, scope: !1761)
!2001 = !DILocation(line: 349, column: 5, scope: !1761)
!2002 = !DILocation(line: 350, column: 12, scope: !1761)
!2003 = !DILocation(line: 350, column: 6, scope: !1761)
!2004 = !DILocation(line: 350, column: 10, scope: !1761)
!2005 = !DILocation(line: 352, column: 12, scope: !1761)
!2006 = !DILocation(line: 352, column: 5, scope: !1761)
!2007 = !DILocation(line: 354, column: 1, scope: !1761)
!2008 = !DISubprogram(name: "ap_log_rerror_", scope: !590, file: !590, line: 456, type: !2009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{null, !33, !36, !36, !36, !47, !2011, !33, null}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1149)
!2013 = !DISubprogram(name: "apr_uuid_get", scope: !1416, file: !1416, line: 53, type: !2014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{null, !1414}
!2016 = distinct !DISubprogram(name: "crypt_init", scope: !2, file: !2, line: 206, type: !2017, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2020)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!47, !1148, !1436, !2019, !175}
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!2020 = !{!2021, !2022, !2023, !2024, !2025, !2026, !2031, !2037, !2038, !2042, !2043, !2044}
!2021 = !DILocalVariable(name: "r", arg: 1, scope: !2016, file: !2, line: 206, type: !1148)
!2022 = !DILocalVariable(name: "f", arg: 2, scope: !2016, file: !2, line: 207, type: !1436)
!2023 = !DILocalVariable(name: "cipher", arg: 3, scope: !2016, file: !2, line: 207, type: !2019)
!2024 = !DILocalVariable(name: "dconf", arg: 4, scope: !2016, file: !2, line: 208, type: !175)
!2025 = !DILocalVariable(name: "res", scope: !2016, file: !2, line: 210, type: !47)
!2026 = !DILocalVariable(name: "ciphers", scope: !2016, file: !2, line: 211, type: !2027)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_hash_t", file: !2029, line: 52, baseType: !2030)
!2029 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-1.7.4-xap43yqog3cx4varfxeol7h4nsfslylk/include/apr-1/apr_hash.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "200f319f929840eb1031e0c6813d7a15")
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_hash_t", file: !2029, line: 52, flags: DIFlagFwdDecl)
!2031 = !DILocalVariable(name: "hi", scope: !2032, file: !2, line: 223, type: !2034)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !2, line: 222, column: 21)
!2033 = distinct !DILexicalBlock(scope: !2016, file: !2, line: 222, column: 9)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_hash_index_t", file: !2029, line: 57, baseType: !2036)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "apr_hash_index_t", file: !2029, line: 57, flags: DIFlagFwdDecl)
!2037 = !DILocalVariable(name: "key", scope: !2032, file: !2, line: 224, type: !209)
!2038 = !DILocalVariable(name: "klen", scope: !2032, file: !2, line: 225, type: !2039)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_ssize_t", file: !66, line: 380, baseType: !2040)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !73, line: 108, baseType: !2041)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !75, line: 194, baseType: !76)
!2042 = !DILocalVariable(name: "sum", scope: !2032, file: !2, line: 226, type: !36)
!2043 = !DILocalVariable(name: "offset", scope: !2032, file: !2, line: 227, type: !36)
!2044 = !DILocalVariable(name: "options", scope: !2032, file: !2, line: 228, type: !190)
!2045 = !DILocation(line: 206, column: 45, scope: !2016)
!2046 = !DILocation(line: 207, column: 29, scope: !2016)
!2047 = !DILocation(line: 207, column: 62, scope: !2016)
!2048 = !DILocation(line: 208, column: 35, scope: !2016)
!2049 = !DILocation(line: 210, column: 5, scope: !2016)
!2050 = !DILocation(line: 210, column: 18, scope: !2016)
!2051 = !DILocation(line: 211, column: 5, scope: !2016)
!2052 = !DILocation(line: 211, column: 17, scope: !2016)
!2053 = !DILocation(line: 213, column: 52, scope: !2016)
!2054 = !DILocation(line: 213, column: 11, scope: !2016)
!2055 = !DILocation(line: 213, column: 9, scope: !2016)
!2056 = !DILocation(line: 214, column: 24, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2016, file: !2, line: 214, column: 9)
!2058 = !DILocation(line: 214, column: 21, scope: !2057)
!2059 = !DILocation(line: 214, column: 9, scope: !2016)
!2060 = !DILocation(line: 215, column: 9, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2057, file: !2, line: 214, column: 29)
!2062 = !DILocation(line: 215, column: 9, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !2, line: 215, column: 9)
!2064 = distinct !DILexicalBlock(scope: !2061, file: !2, line: 215, column: 9)
!2065 = !DILocation(line: 215, column: 9, scope: !2064)
!2066 = !DILocation(line: 218, column: 16, scope: !2061)
!2067 = !DILocation(line: 218, column: 9, scope: !2061)
!2068 = !DILocation(line: 221, column: 28, scope: !2016)
!2069 = !DILocation(line: 221, column: 37, scope: !2016)
!2070 = !DILocation(line: 221, column: 44, scope: !2016)
!2071 = !DILocation(line: 221, column: 15, scope: !2016)
!2072 = !DILocation(line: 221, column: 6, scope: !2016)
!2073 = !DILocation(line: 221, column: 13, scope: !2016)
!2074 = !DILocation(line: 222, column: 12, scope: !2033)
!2075 = !DILocation(line: 222, column: 11, scope: !2033)
!2076 = !DILocation(line: 222, column: 10, scope: !2033)
!2077 = !DILocation(line: 222, column: 9, scope: !2016)
!2078 = !DILocation(line: 223, column: 9, scope: !2032)
!2079 = !DILocation(line: 223, column: 27, scope: !2032)
!2080 = !DILocation(line: 224, column: 9, scope: !2032)
!2081 = !DILocation(line: 224, column: 21, scope: !2032)
!2082 = !DILocation(line: 225, column: 9, scope: !2032)
!2083 = !DILocation(line: 225, column: 21, scope: !2032)
!2084 = !DILocation(line: 226, column: 9, scope: !2032)
!2085 = !DILocation(line: 226, column: 13, scope: !2032)
!2086 = !DILocation(line: 227, column: 9, scope: !2032)
!2087 = !DILocation(line: 227, column: 13, scope: !2032)
!2088 = !DILocation(line: 228, column: 9, scope: !2032)
!2089 = !DILocation(line: 228, column: 15, scope: !2032)
!2090 = !DILocation(line: 230, column: 34, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2032, file: !2, line: 230, column: 9)
!2092 = !DILocation(line: 230, column: 37, scope: !2091)
!2093 = !DILocation(line: 230, column: 43, scope: !2091)
!2094 = !DILocation(line: 230, column: 19, scope: !2091)
!2095 = !DILocation(line: 230, column: 17, scope: !2091)
!2096 = !DILocation(line: 230, column: 14, scope: !2091)
!2097 = !DILocation(line: 230, column: 53, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2091, file: !2, line: 230, column: 9)
!2099 = !DILocation(line: 230, column: 9, scope: !2091)
!2100 = !DILocation(line: 231, column: 27, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2098, file: !2, line: 230, column: 81)
!2102 = !DILocation(line: 231, column: 13, scope: !2101)
!2103 = !DILocation(line: 232, column: 20, scope: !2101)
!2104 = !DILocation(line: 232, column: 25, scope: !2101)
!2105 = !DILocation(line: 232, column: 17, scope: !2101)
!2106 = !DILocation(line: 233, column: 9, scope: !2101)
!2107 = !DILocation(line: 230, column: 76, scope: !2098)
!2108 = !DILocation(line: 230, column: 62, scope: !2098)
!2109 = !DILocation(line: 230, column: 60, scope: !2098)
!2110 = !DILocation(line: 230, column: 9, scope: !2098)
!2111 = distinct !{!2111, !2099, !2112, !1021}
!2112 = !DILocation(line: 233, column: 9, scope: !2091)
!2113 = !DILocation(line: 234, column: 34, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2032, file: !2, line: 234, column: 9)
!2115 = !DILocation(line: 234, column: 37, scope: !2114)
!2116 = !DILocation(line: 234, column: 43, scope: !2114)
!2117 = !DILocation(line: 234, column: 19, scope: !2114)
!2118 = !DILocation(line: 234, column: 17, scope: !2114)
!2119 = !DILocation(line: 234, column: 14, scope: !2114)
!2120 = !DILocation(line: 234, column: 53, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2114, file: !2, line: 234, column: 9)
!2122 = !DILocation(line: 234, column: 9, scope: !2114)
!2123 = !DILocation(line: 235, column: 27, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2121, file: !2, line: 234, column: 81)
!2125 = !DILocation(line: 235, column: 13, scope: !2124)
!2126 = !DILocation(line: 236, column: 18, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2124, file: !2, line: 236, column: 17)
!2128 = !DILocation(line: 236, column: 17, scope: !2124)
!2129 = !DILocation(line: 237, column: 38, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2127, file: !2, line: 236, column: 27)
!2131 = !DILocation(line: 237, column: 41, scope: !2130)
!2132 = !DILocation(line: 237, column: 47, scope: !2130)
!2133 = !DILocation(line: 237, column: 51, scope: !2130)
!2134 = !DILocation(line: 237, column: 27, scope: !2130)
!2135 = !DILocation(line: 237, column: 25, scope: !2130)
!2136 = !DILocation(line: 238, column: 13, scope: !2130)
!2137 = !DILocation(line: 240, column: 17, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2127, file: !2, line: 239, column: 18)
!2139 = !DILocation(line: 240, column: 31, scope: !2138)
!2140 = !DILocation(line: 240, column: 35, scope: !2138)
!2141 = !DILocation(line: 241, column: 17, scope: !2138)
!2142 = !DILocation(line: 241, column: 31, scope: !2138)
!2143 = !DILocation(line: 241, column: 35, scope: !2138)
!2144 = !DILocation(line: 243, column: 21, scope: !2124)
!2145 = !DILocation(line: 243, column: 31, scope: !2124)
!2146 = !DILocation(line: 243, column: 29, scope: !2124)
!2147 = !DILocation(line: 243, column: 39, scope: !2124)
!2148 = !DILocation(line: 243, column: 44, scope: !2124)
!2149 = !DILocation(line: 243, column: 13, scope: !2124)
!2150 = !DILocation(line: 244, column: 23, scope: !2124)
!2151 = !DILocation(line: 244, column: 20, scope: !2124)
!2152 = !DILocation(line: 245, column: 9, scope: !2124)
!2153 = !DILocation(line: 234, column: 76, scope: !2121)
!2154 = !DILocation(line: 234, column: 62, scope: !2121)
!2155 = !DILocation(line: 234, column: 60, scope: !2121)
!2156 = !DILocation(line: 234, column: 9, scope: !2121)
!2157 = distinct !{!2157, !2122, !2158, !1021}
!2158 = !DILocation(line: 245, column: 9, scope: !2114)
!2159 = !DILocation(line: 246, column: 9, scope: !2032)
!2160 = !DILocation(line: 246, column: 17, scope: !2032)
!2161 = !DILocation(line: 246, column: 25, scope: !2032)
!2162 = !DILocation(line: 248, column: 9, scope: !2032)
!2163 = !DILocation(line: 248, column: 9, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 248, column: 9)
!2165 = distinct !DILexicalBlock(scope: !2032, file: !2, line: 248, column: 9)
!2166 = !DILocation(line: 248, column: 9, scope: !2165)
!2167 = !DILocation(line: 252, column: 9, scope: !2032)
!2168 = !DILocation(line: 253, column: 5, scope: !2033)
!2169 = !DILocation(line: 255, column: 5, scope: !2016)
!2170 = !DILocation(line: 256, column: 1, scope: !2016)
!2171 = !DISubprogram(name: "apr_crypto_passphrase", scope: !162, file: !162, line: 344, type: !2172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!47, !2174, !84, !33, !65, !206, !65, !2175, !2176, !2178, !2178, !1436, !94}
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1791)
!2176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2177)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "apr_crypto_block_key_mode_e", file: !162, line: 121, baseType: !169)
!2178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!2179 = !DISubprogram(name: "apr_crypto_block_encrypt_init", scope: !162, file: !162, line: 367, type: !2180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!47, !2182, !2183, !2184, !84, !94}
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1773)
!2186 = !DISubprogram(name: "apr_crypto_block_encrypt", scope: !162, file: !162, line: 389, type: !2187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!47, !2189, !84, !206, !65, !1777}
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!2190 = !DISubprogram(name: "apr_crypto_block_encrypt_finish", scope: !162, file: !162, line: 411, type: !2191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!47, !204, !84, !1777}
!2193 = distinct !DISubprogram(name: "compute_auth", scope: !2, file: !2, line: 185, type: !2194, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2196)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{null, !209, !65, !33, !65, !204}
!2196 = !{!2197, !2198, !2199, !2200, !2201, !2202}
!2197 = !DILocalVariable(name: "src", arg: 1, scope: !2193, file: !2, line: 185, type: !209)
!2198 = !DILocalVariable(name: "len", arg: 2, scope: !2193, file: !2, line: 185, type: !65)
!2199 = !DILocalVariable(name: "passphrase", arg: 3, scope: !2193, file: !2, line: 186, type: !33)
!2200 = !DILocalVariable(name: "passlen", arg: 4, scope: !2193, file: !2, line: 186, type: !65)
!2201 = !DILocalVariable(name: "auth", arg: 5, scope: !2193, file: !2, line: 187, type: !204)
!2202 = !DILocalVariable(name: "key", scope: !2193, file: !2, line: 189, type: !1420)
!2203 = !DILocation(line: 185, column: 38, scope: !2193)
!2204 = !DILocation(line: 185, column: 54, scope: !2193)
!2205 = !DILocation(line: 186, column: 38, scope: !2193)
!2206 = !DILocation(line: 186, column: 61, scope: !2193)
!2207 = !DILocation(line: 187, column: 40, scope: !2193)
!2208 = !DILocation(line: 189, column: 5, scope: !2193)
!2209 = !DILocation(line: 189, column: 19, scope: !2193)
!2210 = !DILocation(line: 196, column: 13, scope: !2193)
!2211 = !DILocation(line: 196, column: 18, scope: !2193)
!2212 = !DILocation(line: 196, column: 30, scope: !2193)
!2213 = !DILocation(line: 196, column: 5, scope: !2193)
!2214 = !DILocation(line: 198, column: 23, scope: !2193)
!2215 = !DILocation(line: 198, column: 29, scope: !2193)
!2216 = !DILocation(line: 198, column: 34, scope: !2193)
!2217 = !DILocation(line: 198, column: 39, scope: !2193)
!2218 = !DILocation(line: 198, column: 5, scope: !2193)
!2219 = !DILocation(line: 199, column: 1, scope: !2193)
!2220 = !DISubprogram(name: "apr_base64_encode_len", scope: !2221, file: !2221, line: 60, type: !2222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2221 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_base64.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "f9bc40cc51ebad47bd1438766e199628")
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!36, !36}
!2224 = !DISubprogram(name: "apr_base64_encode", scope: !2221, file: !2221, line: 69, type: !2225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!36, !190, !33, !36}
!2227 = !DISubprogram(name: "apr_crypto_get_block_key_types", scope: !162, file: !162, line: 281, type: !2228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!47, !2230, !1436}
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2231 = !DISubprogram(name: "apr_hash_get", scope: !2029, file: !2029, line: 118, type: !2232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!42, !2027, !209, !2039}
!2234 = !DISubprogram(name: "apr_hash_first", scope: !2029, file: !2029, line: 148, type: !2235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!2034, !94, !2027}
!2237 = !DISubprogram(name: "apr_hash_this", scope: !2029, file: !2029, line: 167, type: !2238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{null, !2034, !2240, !2241, !203}
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2242 = !DISubprogram(name: "apr_hash_next", scope: !2029, file: !2029, line: 156, type: !2243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!2034, !2034}
!2245 = !DISubprogram(name: "strncpy", scope: !1098, file: !1098, line: 144, type: !2246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!190, !2248, !2249, !67}
!2248 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !190)
!2249 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!2250 = !DISubprogram(name: "apr_md5", scope: !2251, file: !2251, line: 128, type: !2252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2251 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_md5.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "2a8bf1e5b92219063ef11c7402f702d1")
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!47, !204, !209, !65}
!2254 = !DISubprogram(name: "apr_siphash24_auth", scope: !2255, file: !2255, line: 114, type: !2256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2255 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_p/linux-ubuntu22.04-zen2/clang-18.0.0/apr-util-1.6.3-l37sacsnb2zk76xejbzfvftzd4gcjj3o/include/apr-1/apr_siphash.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build", checksumkind: CSK_MD5, checksum: "e4567e33f577817f23e935379c781206")
!2256 = !DISubroutineType(types: !2257)
!2257 = !{null, !204, !209, !65, !206}
!2258 = distinct !DISubprogram(name: "decrypt_string", scope: !2, file: !2, line: 361, type: !1762, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2259)
!2259 = !{!2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2282, !2283, !2284}
!2260 = !DILocalVariable(name: "r", arg: 1, scope: !2258, file: !2, line: 361, type: !1148)
!2261 = !DILocalVariable(name: "f", arg: 2, scope: !2258, file: !2, line: 361, type: !1436)
!2262 = !DILocalVariable(name: "dconf", arg: 3, scope: !2258, file: !2, line: 362, type: !175)
!2263 = !DILocalVariable(name: "in", arg: 4, scope: !2258, file: !2, line: 362, type: !33)
!2264 = !DILocalVariable(name: "out", arg: 5, scope: !2258, file: !2, line: 362, type: !208)
!2265 = !DILocalVariable(name: "res", scope: !2258, file: !2, line: 364, type: !47)
!2266 = !DILocalVariable(name: "key", scope: !2258, file: !2, line: 365, type: !1772)
!2267 = !DILocalVariable(name: "ivSize", scope: !2258, file: !2, line: 366, type: !65)
!2268 = !DILocalVariable(name: "block", scope: !2258, file: !2, line: 367, type: !1777)
!2269 = !DILocalVariable(name: "decrypted", scope: !2258, file: !2, line: 368, type: !204)
!2270 = !DILocalVariable(name: "decryptedlen", scope: !2258, file: !2, line: 369, type: !65)
!2271 = !DILocalVariable(name: "tlen", scope: !2258, file: !2, line: 369, type: !65)
!2272 = !DILocalVariable(name: "decodedlen", scope: !2258, file: !2, line: 370, type: !65)
!2273 = !DILocalVariable(name: "decoded", scope: !2258, file: !2, line: 371, type: !190)
!2274 = !DILocalVariable(name: "blockSize", scope: !2258, file: !2, line: 372, type: !65)
!2275 = !DILocalVariable(name: "cipher", scope: !2258, file: !2, line: 373, type: !1790)
!2276 = !DILocalVariable(name: "auth", scope: !2258, file: !2, line: 374, type: !334)
!2277 = !DILocalVariable(name: "i", scope: !2258, file: !2, line: 375, type: !36)
!2278 = !DILocalVariable(name: "passphrase", scope: !2279, file: !2, line: 398, type: !33)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !2, line: 397, column: 48)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !2, line: 397, column: 5)
!2281 = distinct !DILexicalBlock(scope: !2258, file: !2, line: 397, column: 5)
!2282 = !DILocalVariable(name: "passlen", scope: !2279, file: !2, line: 399, type: !65)
!2283 = !DILocalVariable(name: "len", scope: !2279, file: !2, line: 400, type: !65)
!2284 = !DILocalVariable(name: "slider", scope: !2279, file: !2, line: 401, type: !204)
!2285 = !DILocation(line: 361, column: 50, scope: !2258)
!2286 = !DILocation(line: 361, column: 73, scope: !2258)
!2287 = !DILocation(line: 362, column: 34, scope: !2258)
!2288 = !DILocation(line: 362, column: 53, scope: !2258)
!2289 = !DILocation(line: 362, column: 64, scope: !2258)
!2290 = !DILocation(line: 364, column: 5, scope: !2258)
!2291 = !DILocation(line: 364, column: 18, scope: !2258)
!2292 = !DILocation(line: 365, column: 5, scope: !2258)
!2293 = !DILocation(line: 365, column: 23, scope: !2258)
!2294 = !DILocation(line: 366, column: 5, scope: !2258)
!2295 = !DILocation(line: 366, column: 16, scope: !2258)
!2296 = !DILocation(line: 367, column: 5, scope: !2258)
!2297 = !DILocation(line: 367, column: 25, scope: !2258)
!2298 = !DILocation(line: 368, column: 5, scope: !2258)
!2299 = !DILocation(line: 368, column: 20, scope: !2258)
!2300 = !DILocation(line: 369, column: 5, scope: !2258)
!2301 = !DILocation(line: 369, column: 16, scope: !2258)
!2302 = !DILocation(line: 369, column: 30, scope: !2258)
!2303 = !DILocation(line: 370, column: 5, scope: !2258)
!2304 = !DILocation(line: 370, column: 16, scope: !2258)
!2305 = !DILocation(line: 371, column: 5, scope: !2258)
!2306 = !DILocation(line: 371, column: 11, scope: !2258)
!2307 = !DILocation(line: 372, column: 5, scope: !2258)
!2308 = !DILocation(line: 372, column: 16, scope: !2258)
!2309 = !DILocation(line: 373, column: 5, scope: !2258)
!2310 = !DILocation(line: 373, column: 34, scope: !2258)
!2311 = !DILocation(line: 374, column: 5, scope: !2258)
!2312 = !DILocation(line: 374, column: 19, scope: !2258)
!2313 = !DILocation(line: 375, column: 5, scope: !2258)
!2314 = !DILocation(line: 375, column: 9, scope: !2258)
!2315 = !DILocation(line: 378, column: 26, scope: !2258)
!2316 = !DILocation(line: 378, column: 29, scope: !2258)
!2317 = !DILocation(line: 378, column: 57, scope: !2258)
!2318 = !DILocation(line: 378, column: 35, scope: !2258)
!2319 = !DILocation(line: 378, column: 15, scope: !2258)
!2320 = !DILocation(line: 378, column: 13, scope: !2258)
!2321 = !DILocation(line: 379, column: 36, scope: !2258)
!2322 = !DILocation(line: 379, column: 45, scope: !2258)
!2323 = !DILocation(line: 379, column: 18, scope: !2258)
!2324 = !DILocation(line: 379, column: 16, scope: !2258)
!2325 = !DILocation(line: 380, column: 5, scope: !2258)
!2326 = !DILocation(line: 380, column: 13, scope: !2258)
!2327 = !DILocation(line: 380, column: 25, scope: !2258)
!2328 = !DILocation(line: 383, column: 9, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2258, file: !2, line: 383, column: 9)
!2330 = !DILocation(line: 383, column: 20, scope: !2329)
!2331 = !DILocation(line: 383, column: 9, scope: !2258)
!2332 = !DILocation(line: 384, column: 9, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2329, file: !2, line: 383, column: 63)
!2334 = !DILocation(line: 384, column: 9, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !2, line: 384, column: 9)
!2336 = distinct !DILexicalBlock(scope: !2333, file: !2, line: 384, column: 9)
!2337 = !DILocation(line: 384, column: 9, scope: !2336)
!2338 = !DILocation(line: 386, column: 9, scope: !2333)
!2339 = !DILocation(line: 389, column: 22, scope: !2258)
!2340 = !DILocation(line: 389, column: 25, scope: !2258)
!2341 = !DILocation(line: 389, column: 37, scope: !2258)
!2342 = !DILocation(line: 389, column: 11, scope: !2258)
!2343 = !DILocation(line: 389, column: 9, scope: !2258)
!2344 = !DILocation(line: 390, column: 9, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2258, file: !2, line: 390, column: 9)
!2346 = !DILocation(line: 390, column: 13, scope: !2345)
!2347 = !DILocation(line: 390, column: 9, scope: !2258)
!2348 = !DILocation(line: 391, column: 16, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2345, file: !2, line: 390, column: 29)
!2350 = !DILocation(line: 391, column: 9, scope: !2349)
!2351 = !DILocation(line: 394, column: 9, scope: !2258)
!2352 = !DILocation(line: 397, column: 5, scope: !2258)
!2353 = !DILocation(line: 397, column: 12, scope: !2280)
!2354 = !DILocation(line: 397, column: 16, scope: !2280)
!2355 = !DILocation(line: 397, column: 23, scope: !2280)
!2356 = !DILocation(line: 397, column: 36, scope: !2280)
!2357 = !{!1845, !732, i64 12}
!2358 = !DILocation(line: 397, column: 14, scope: !2280)
!2359 = !DILocation(line: 397, column: 5, scope: !2281)
!2360 = !DILocation(line: 398, column: 9, scope: !2279)
!2361 = !DILocation(line: 398, column: 21, scope: !2279)
!2362 = !DILocation(line: 398, column: 34, scope: !2279)
!2363 = !DILocation(line: 399, column: 9, scope: !2279)
!2364 = !DILocation(line: 399, column: 20, scope: !2279)
!2365 = !DILocation(line: 399, column: 37, scope: !2279)
!2366 = !DILocation(line: 399, column: 30, scope: !2279)
!2367 = !DILocation(line: 400, column: 9, scope: !2279)
!2368 = !DILocation(line: 400, column: 20, scope: !2279)
!2369 = !DILocation(line: 400, column: 26, scope: !2279)
!2370 = !DILocation(line: 400, column: 37, scope: !2279)
!2371 = !DILocation(line: 401, column: 9, scope: !2279)
!2372 = !DILocation(line: 401, column: 24, scope: !2279)
!2373 = !DILocation(line: 401, column: 50, scope: !2279)
!2374 = !DILocation(line: 401, column: 58, scope: !2279)
!2375 = !DILocation(line: 406, column: 22, scope: !2279)
!2376 = !DILocation(line: 406, column: 30, scope: !2279)
!2377 = !DILocation(line: 406, column: 35, scope: !2279)
!2378 = !DILocation(line: 406, column: 47, scope: !2279)
!2379 = !DILocation(line: 406, column: 56, scope: !2279)
!2380 = !DILocation(line: 406, column: 9, scope: !2279)
!2381 = !DILocation(line: 407, column: 31, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2279, file: !2, line: 407, column: 13)
!2383 = !DILocation(line: 407, column: 37, scope: !2382)
!2384 = !DILocation(line: 407, column: 14, scope: !2382)
!2385 = !DILocation(line: 407, column: 13, scope: !2279)
!2386 = !DILocation(line: 408, column: 13, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2382, file: !2, line: 407, column: 65)
!2388 = !DILocation(line: 408, column: 13, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !2, line: 408, column: 13)
!2390 = distinct !DILexicalBlock(scope: !2387, file: !2, line: 408, column: 13)
!2391 = !DILocation(line: 408, column: 13, scope: !2390)
!2392 = !DILocation(line: 410, column: 13, scope: !2387)
!2393 = !DILocation(line: 414, column: 52, scope: !2279)
!2394 = !DILocation(line: 414, column: 64, scope: !2279)
!2395 = !DILocation(line: 415, column: 37, scope: !2279)
!2396 = !DILocation(line: 416, column: 38, scope: !2279)
!2397 = !DILocation(line: 416, column: 37, scope: !2279)
!2398 = !DILocation(line: 417, column: 37, scope: !2279)
!2399 = !DILocation(line: 417, column: 40, scope: !2279)
!2400 = !DILocation(line: 417, column: 43, scope: !2279)
!2401 = !DILocation(line: 414, column: 15, scope: !2279)
!2402 = !DILocation(line: 414, column: 13, scope: !2279)
!2403 = !DILocation(line: 418, column: 13, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2279, file: !2, line: 418, column: 13)
!2405 = !DILocation(line: 418, column: 13, scope: !2279)
!2406 = !DILocation(line: 419, column: 13, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2404, file: !2, line: 418, column: 40)
!2408 = !DILocation(line: 419, column: 13, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !2, line: 419, column: 13)
!2410 = distinct !DILexicalBlock(scope: !2407, file: !2, line: 419, column: 13)
!2411 = !DILocation(line: 419, column: 13, scope: !2410)
!2412 = !DILocation(line: 421, column: 13, scope: !2407)
!2413 = !DILocation(line: 423, column: 18, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2404, file: !2, line: 423, column: 18)
!2415 = !DILocation(line: 423, column: 18, scope: !2404)
!2416 = !DILocation(line: 424, column: 13, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2414, file: !2, line: 423, column: 47)
!2418 = !DILocation(line: 424, column: 13, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !2, line: 424, column: 13)
!2420 = distinct !DILexicalBlock(scope: !2417, file: !2, line: 424, column: 13)
!2421 = !DILocation(line: 424, column: 13, scope: !2420)
!2422 = !DILocation(line: 426, column: 13, scope: !2417)
!2423 = !DILocation(line: 428, column: 18, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2414, file: !2, line: 428, column: 18)
!2425 = !DILocation(line: 428, column: 18, scope: !2414)
!2426 = !DILocation(line: 429, column: 13, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2424, file: !2, line: 428, column: 47)
!2428 = !DILocation(line: 429, column: 13, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !2, line: 429, column: 13)
!2430 = distinct !DILexicalBlock(scope: !2427, file: !2, line: 429, column: 13)
!2431 = !DILocation(line: 429, column: 13, scope: !2430)
!2432 = !DILocation(line: 431, column: 13, scope: !2427)
!2433 = !DILocation(line: 433, column: 33, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2424, file: !2, line: 433, column: 18)
!2435 = !DILocation(line: 433, column: 30, scope: !2434)
!2436 = !DILocation(line: 433, column: 18, scope: !2424)
!2437 = !DILocation(line: 434, column: 13, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2434, file: !2, line: 433, column: 38)
!2439 = !DILocation(line: 434, column: 13, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !2, line: 434, column: 13)
!2441 = distinct !DILexicalBlock(scope: !2438, file: !2, line: 434, column: 13)
!2442 = !DILocation(line: 434, column: 13, scope: !2441)
!2443 = !DILocation(line: 436, column: 13, scope: !2438)
!2444 = !DILocation(line: 440, column: 13, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2279, file: !2, line: 440, column: 13)
!2446 = !DILocation(line: 440, column: 41, scope: !2445)
!2447 = !DILocation(line: 440, column: 39, scope: !2445)
!2448 = !DILocation(line: 440, column: 17, scope: !2445)
!2449 = !DILocation(line: 440, column: 13, scope: !2279)
!2450 = !DILocation(line: 441, column: 13, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2445, file: !2, line: 440, column: 50)
!2452 = !DILocation(line: 441, column: 13, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !2, line: 441, column: 13)
!2454 = distinct !DILexicalBlock(scope: !2451, file: !2, line: 441, column: 13)
!2455 = !DILocation(line: 441, column: 13, scope: !2454)
!2456 = !DILocation(line: 443, column: 17, scope: !2451)
!2457 = !DILocation(line: 444, column: 13, scope: !2451)
!2458 = !DILocation(line: 448, column: 16, scope: !2279)
!2459 = !DILocation(line: 449, column: 13, scope: !2279)
!2460 = !DILocation(line: 451, column: 65, scope: !2279)
!2461 = !DILocation(line: 451, column: 73, scope: !2279)
!2462 = !DILocation(line: 452, column: 45, scope: !2279)
!2463 = !DILocation(line: 452, column: 48, scope: !2279)
!2464 = !DILocation(line: 451, column: 15, scope: !2279)
!2465 = !DILocation(line: 451, column: 13, scope: !2279)
!2466 = !DILocation(line: 453, column: 28, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2279, file: !2, line: 453, column: 13)
!2468 = !DILocation(line: 453, column: 25, scope: !2467)
!2469 = !DILocation(line: 453, column: 13, scope: !2279)
!2470 = !DILocation(line: 454, column: 13, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2467, file: !2, line: 453, column: 33)
!2472 = !DILocation(line: 454, column: 13, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !2, line: 454, column: 13)
!2474 = distinct !DILexicalBlock(scope: !2471, file: !2, line: 454, column: 13)
!2475 = !DILocation(line: 454, column: 13, scope: !2474)
!2476 = !DILocation(line: 456, column: 13, scope: !2471)
!2477 = !DILocation(line: 460, column: 19, scope: !2279)
!2478 = !DILocation(line: 460, column: 16, scope: !2279)
!2479 = !DILocation(line: 461, column: 16, scope: !2279)
!2480 = !DILocation(line: 461, column: 13, scope: !2279)
!2481 = !DILocation(line: 465, column: 40, scope: !2279)
!2482 = !DILocation(line: 465, column: 48, scope: !2279)
!2483 = !DILocation(line: 465, column: 53, scope: !2279)
!2484 = !DILocation(line: 464, column: 15, scope: !2279)
!2485 = !DILocation(line: 464, column: 13, scope: !2279)
!2486 = !DILocation(line: 466, column: 13, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2279, file: !2, line: 466, column: 13)
!2488 = !DILocation(line: 466, column: 13, scope: !2279)
!2489 = !DILocation(line: 467, column: 13, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2487, file: !2, line: 466, column: 18)
!2491 = !DILocation(line: 467, column: 13, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !2, line: 467, column: 13)
!2493 = distinct !DILexicalBlock(scope: !2490, file: !2, line: 467, column: 13)
!2494 = !DILocation(line: 467, column: 13, scope: !2493)
!2495 = !DILocation(line: 469, column: 13, scope: !2490)
!2496 = !DILocation(line: 471, column: 25, scope: !2279)
!2497 = !DILocation(line: 471, column: 10, scope: !2279)
!2498 = !DILocation(line: 471, column: 14, scope: !2279)
!2499 = !DILocation(line: 473, column: 47, scope: !2279)
!2500 = !DILocation(line: 473, column: 59, scope: !2279)
!2501 = !DILocation(line: 473, column: 57, scope: !2279)
!2502 = !DILocation(line: 473, column: 80, scope: !2279)
!2503 = !DILocation(line: 473, column: 15, scope: !2279)
!2504 = !DILocation(line: 473, column: 13, scope: !2279)
!2505 = !DILocation(line: 474, column: 28, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2279, file: !2, line: 474, column: 13)
!2507 = !DILocation(line: 474, column: 25, scope: !2506)
!2508 = !DILocation(line: 474, column: 13, scope: !2279)
!2509 = !DILocation(line: 475, column: 13, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2506, file: !2, line: 474, column: 33)
!2511 = !DILocation(line: 475, column: 13, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !2, line: 475, column: 13)
!2513 = distinct !DILexicalBlock(scope: !2510, file: !2, line: 475, column: 13)
!2514 = !DILocation(line: 475, column: 13, scope: !2513)
!2515 = !DILocation(line: 477, column: 13, scope: !2510)
!2516 = !DILocation(line: 479, column: 25, scope: !2279)
!2517 = !DILocation(line: 479, column: 22, scope: !2279)
!2518 = !DILocation(line: 480, column: 9, scope: !2279)
!2519 = !DILocation(line: 480, column: 19, scope: !2279)
!2520 = !DILocation(line: 480, column: 33, scope: !2279)
!2521 = !DILocation(line: 482, column: 9, scope: !2279)
!2522 = !DILocation(line: 483, column: 5, scope: !2280)
!2523 = !DILocation(line: 397, column: 44, scope: !2280)
!2524 = !DILocation(line: 397, column: 5, scope: !2280)
!2525 = distinct !{!2525, !2359, !2526, !1021}
!2526 = !DILocation(line: 483, column: 5, scope: !2281)
!2527 = !DILocation(line: 485, column: 24, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2258, file: !2, line: 485, column: 9)
!2529 = !DILocation(line: 485, column: 21, scope: !2528)
!2530 = !DILocation(line: 485, column: 9, scope: !2258)
!2531 = !DILocation(line: 486, column: 9, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2528, file: !2, line: 485, column: 29)
!2533 = !DILocation(line: 486, column: 9, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 486, column: 9)
!2535 = distinct !DILexicalBlock(scope: !2532, file: !2, line: 486, column: 9)
!2536 = !DILocation(line: 486, column: 9, scope: !2535)
!2537 = !DILocation(line: 488, column: 5, scope: !2532)
!2538 = !DILocation(line: 490, column: 12, scope: !2258)
!2539 = !DILocation(line: 490, column: 5, scope: !2258)
!2540 = !DILocation(line: 492, column: 1, scope: !2258)
!2541 = !DISubprogram(name: "apr_base64_decode_len", scope: !2221, file: !2221, line: 89, type: !2542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!36, !33}
!2544 = !DISubprogram(name: "apr_base64_decode", scope: !2221, file: !2221, line: 97, type: !2545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!36, !190, !33}
!2547 = !DISubprogram(name: "apr_crypto_equals", scope: !162, file: !162, line: 208, type: !2548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!36, !209, !209, !65}
!2550 = !DISubprogram(name: "apr_crypto_block_decrypt_init", scope: !162, file: !162, line: 427, type: !2551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!47, !2182, !84, !206, !2184, !94}
!2553 = !DISubprogram(name: "apr_crypto_block_decrypt", scope: !162, file: !162, line: 449, type: !2187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2554 = !DISubprogram(name: "apr_crypto_block_decrypt_finish", scope: !162, file: !162, line: 471, type: !2191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2555 = !DISubprogram(name: "ap_state_query", scope: !2556, file: !2556, line: 1019, type: !2222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2556 = !DIFile(filename: "include/http_core.h", directory: "/local-ssd/httpd-bro7h6vxm4umjopi7zqm3u26chbfh465-build/aidengro/spack-stage-httpd-2.4.55-bro7h6vxm4umjopi7zqm3u26chbfh465/spack-src", checksumkind: CSK_MD5, checksum: "7116b18b3c8f25f4572ebe871e6b69f9")
!2557 = !DISubprogram(name: "apr_crypto_init", scope: !162, file: !162, line: 178, type: !2558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!47, !94}
!2560 = !DISubprogram(name: "ap_log_error_", scope: !590, file: !590, line: 372, type: !2561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{null, !33, !36, !36, !36, !47, !1617, !33, null}
!2563 = !DISubprogram(name: "apr_crypto_get_driver", scope: !162, file: !162, line: 229, type: !2564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!47, !2566, !33, !33, !2567, !94}
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!2568 = !DISubprogram(name: "apr_crypto_make", scope: !162, file: !162, line: 268, type: !2569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!47, !2571, !1593, !33, !94}
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!2572 = !DISubprogram(name: "apr_pool_userdata_set", scope: !96, file: !96, line: 563, type: !2573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!47, !209, !33, !450, !94}
