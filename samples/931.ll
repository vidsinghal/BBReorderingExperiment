; ModuleID = 'samples/931.bc'
source_filename = "crypto/cms/cms_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CMS_ContentInfo_st = type { ptr, %union.anon.1, %struct.CMS_CTX_st }
%union.anon.1 = type { ptr }
%struct.CMS_CTX_st = type { ptr, ptr }
%struct.CMS_SignedData_st = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.CMS_EncapsulatedContentInfo_st = type { ptr, ptr, i32 }
%struct.CMS_SignerIdentifier_st = type { i32, %union.anon }
%union.anon = type { ptr }
%struct.CMS_IssuerAndSerialNumber_st = type { ptr, ptr }
%struct.CMS_SignerInfo_st = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.evp_pkey_st = type { i32, i32, ptr, ptr, ptr, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, ptr, ptr, i32, i8, %struct.crypto_ex_data_st, ptr, ptr, i64, ptr, i64, %struct.anon }
%union.legacy_pkey_st = type { ptr }
%struct.crypto_ex_data_st = type { ptr, ptr }
%struct.anon = type { i32, i32, i32 }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.X509_algor_st = type { ptr, ptr }
%struct.CMS_CertificateChoices = type { i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.asn1_string_st = type { i32, i32, ptr, i64 }
%struct.CMS_RevocationInfoChoice_st = type { i32, %union.anon.2 }
%union.anon.2 = type { ptr }

@.str = private unnamed_addr constant [20 x i8] c"crypto/cms/cms_sd.c\00", align 1
@__func__.ossl_cms_set1_SignerIdentifier = private unnamed_addr constant [31 x i8] c"ossl_cms_set1_SignerIdentifier\00", align 1
@__func__.CMS_add1_signer = private unnamed_addr constant [16 x i8] c"CMS_add1_signer\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@__func__.CMS_SignerInfo_verify = private unnamed_addr constant [22 x i8] c"CMS_SignerInfo_verify\00", align 1
@__func__.CMS_SignerInfo_verify_content = private unnamed_addr constant [30 x i8] c"CMS_SignerInfo_verify_content\00", align 1
@__func__.cms_signed_data_init = private unnamed_addr constant [21 x i8] c"cms_signed_data_init\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"RSA-PSS\00", align 1
@__func__.cms_sd_asn1_ctrl = private unnamed_addr constant [17 x i8] c"cms_sd_asn1_ctrl\00", align 1
@__func__.cms_copy_messageDigest = private unnamed_addr constant [23 x i8] c"cms_copy_messageDigest\00", align 1
@__func__.cms_get0_signed = private unnamed_addr constant [16 x i8] c"cms_get0_signed\00", align 1
@__func__.cms_SignerInfo_content_sign = private unnamed_addr constant [28 x i8] c"cms_SignerInfo_content_sign\00", align 1
@__func__.cms_add1_signingTime = private unnamed_addr constant [21 x i8] c"cms_add1_signingTime\00", align 1

; Function Attrs: nounwind uwtable
define i32 @CMS_SignedData_init(ptr noundef %cms) #0 {
entry:
  %retval = alloca i32, align 4
  %cms.addr = alloca ptr, align 8
  store ptr %cms, ptr %cms.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %call = call ptr @cms_signed_data_init(ptr noundef %0)
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal ptr @cms_signed_data_init(ptr noundef %cms) #0 {
entry:
  %retval = alloca ptr, align 8
  %cms.addr = alloca ptr, align 8
  store ptr %cms, ptr %cms.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %d, align 8, !tbaa !8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %call = call ptr @CMS_SignedData_it()
  %call1 = call ptr @ASN1_item_new(ptr noundef %call)
  %2 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %d2 = getelementptr inbounds %struct.CMS_ContentInfo_st, ptr %2, i32 0, i32 1
  store ptr %call1, ptr %d2, align 8, !tbaa !8
  %3 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %d3 = getelementptr inbounds %struct.CMS_ContentInfo_st, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %d3, align 8, !tbaa !8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 41, ptr noundef @__func__.cms_signed_data_init)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, ptr noundef null)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %d5 = getelementptr inbounds %struct.CMS_ContentInfo_st, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %d5, align 8, !tbaa !8
  %version = getelementptr inbounds %struct.CMS_SignedData_st, ptr %6, i32 0, i32 0
  store i32 1, ptr %version, align 8, !tbaa !9
  %call6 = call ptr @OBJ_nid2obj(i32 noundef 21)
  %7 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %d7 = getelementptr inbounds %struct.CMS_ContentInfo_st, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %d7, align 8, !tbaa !8
  %encapContentInfo = getelementptr inbounds %struct.CMS_SignedData_st, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %encapContentInfo, align 8, !tbaa !12
  %eContentType = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, ptr %9, i32 0, i32 0
  store ptr %call6, ptr %eContentType, align 8, !tbaa !13
  %10 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %d8 = getelementptr inbounds %struct.CMS_ContentInfo_st, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %d8, align 8, !tbaa !8
  %encapContentInfo9 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %encapContentInfo9, align 8, !tbaa !12
  %partial = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, ptr %12, i32 0, i32 2
  store i32 1, ptr %partial, align 8, !tbaa !15
  %13 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %contentType = getelementptr inbounds %struct.CMS_ContentInfo_st, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %contentType, align 8, !tbaa !16
  call void @ASN1_OBJECT_free(ptr noundef %14)
  %call10 = call ptr @OBJ_nid2obj(i32 noundef 22)
  %15 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %contentType11 = getelementptr inbounds %struct.CMS_ContentInfo_st, ptr %15, i32 0, i32 0
  store ptr %call10, ptr %contentType11, align 8, !tbaa !16
  %16 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %d12 = getelementptr inbounds %struct.CMS_ContentInfo_st, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %d12, align 8, !tbaa !8
  store ptr %17, ptr %retval, align 8
  br label %return

if.end13:                                         ; preds = %entry
  %18 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %call14 = call ptr @cms_get0_signed(ptr noundef %18)
  store ptr %call14, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end13, %if.end, %if.then4
  %19 = load ptr, ptr %retval, align 8
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define i32 @ossl_cms_set1_SignerIdentifier(ptr noundef %sid, ptr noundef %cert, i32 noundef %type, ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %sid.addr = alloca ptr, align 8
  %cert.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  store ptr %sid, ptr %sid.addr, align 8, !tbaa !4
  store ptr %cert, ptr %cert.addr, align 8, !tbaa !4
  store i32 %type, ptr %type.addr, align 4, !tbaa !19
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load i32, ptr %type.addr, align 4, !tbaa !19
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %sid.addr, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.CMS_SignerIdentifier_st, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %cert.addr, align 8, !tbaa !4
  %call = call i32 @ossl_cms_set1_ias(ptr noundef %d, ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %sid.addr, align 8, !tbaa !4
  %d2 = getelementptr inbounds %struct.CMS_SignerIdentifier_st, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %cert.addr, align 8, !tbaa !4
  %call3 = call i32 @ossl_cms_set1_keyid(ptr noundef %d2, ptr noundef %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %sw.bb1
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %sw.bb1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 193, ptr noundef @__func__.ossl_cms_set1_SignerIdentifier)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 150, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end6, %if.end
  %5 = load i32, ptr %type.addr, align 4, !tbaa !19
  %6 = load ptr, ptr %sid.addr, align 8, !tbaa !4
  %type7 = getelementptr inbounds %struct.CMS_SignerIdentifier_st, ptr %6, i32 0, i32 0
  store i32 %5, ptr %type7, align 8, !tbaa !20
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then5, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare i32 @ossl_cms_set1_ias(ptr noundef, ptr noundef) #1

declare i32 @ossl_cms_set1_keyid(ptr noundef, ptr noundef) #1

declare void @ERR_new() #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define i32 @ossl_cms_SignerIdentifier_get0_signer_id(ptr noundef %sid, ptr noundef %keyid, ptr noundef %issuer, ptr noundef %sno) #0 {
entry:
  %retval = alloca i32, align 4
  %sid.addr = alloca ptr, align 8
  %keyid.addr = alloca ptr, align 8
  %issuer.addr = alloca ptr, align 8
  %sno.addr = alloca ptr, align 8
  store ptr %sid, ptr %sid.addr, align 8, !tbaa !4
  store ptr %keyid, ptr %keyid.addr, align 8, !tbaa !4
  store ptr %issuer, ptr %issuer.addr, align 8, !tbaa !4
  store ptr %sno, ptr %sno.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sid.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.CMS_SignerIdentifier_st, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %type, align 8, !tbaa !20
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %issuer.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %sid.addr, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.CMS_SignerIdentifier_st, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %d, align 8, !tbaa !8
  %issuer2 = getelementptr inbounds %struct.CMS_IssuerAndSerialNumber_st, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %issuer2, align 8, !tbaa !22
  %6 = load ptr, ptr %issuer.addr, align 8, !tbaa !4
  store ptr %5, ptr %6, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %7 = load ptr, ptr %sno.addr, align 8, !tbaa !4
  %tobool3 = icmp ne ptr %7, null
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %sid.addr, align 8, !tbaa !4
  %d5 = getelementptr inbounds %struct.CMS_SignerIdentifier_st, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %d5, align 8, !tbaa !8
  %serialNumber = getelementptr inbounds %struct.CMS_IssuerAndSerialNumber_st, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %serialNumber, align 8, !tbaa !24
  %11 = load ptr, ptr %sno.addr, align 8, !tbaa !4
  store ptr %10, ptr %11, align 8, !tbaa !4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  br label %if.end16

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %sid.addr, align 8, !tbaa !4
  %type7 = getelementptr inbounds %struct.CMS_SignerIdentifier_st, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %type7, align 8, !tbaa !20
  %cmp8 = icmp eq i32 %13, 1
  br i1 %cmp8, label %if.then9, label %if.else14

if.then9:                                         ; preds = %if.else
  %14 = load ptr, ptr %keyid.addr, align 8, !tbaa !4
  %tobool10 = icmp ne ptr %14, null
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  %15 = load ptr, ptr %sid.addr, align 8, !tbaa !4
  %d12 = getelementptr inbounds %struct.CMS_SignerIdentifier_st, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %d12, align 8, !tbaa !8
  %17 = load ptr, ptr %keyid.addr, align 8, !tbaa !4
  store ptr %16, ptr %17, align 8, !tbaa !4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9
  br label %if.end15

if.else14:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end13
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end6
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.else14
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @ossl_cms_SignerIdentifier_cert_cmp(ptr noundef %sid, ptr noundef %cert) #0 {
entry:
  %retval = alloca i32, align 4
  %sid.addr = alloca ptr, align 8
  %cert.addr = alloca ptr, align 8
  store ptr %sid, ptr %sid.addr, align 8, !tbaa !4
  store ptr %cert, ptr %cert.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sid.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.CMS_SignerIdentifier_st, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %type, align 8, !tbaa !20
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %sid.addr, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.CMS_SignerIdentifier_st, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %d, align 8, !tbaa !8
  %4 = load ptr, ptr %cert.addr, align 8, !tbaa !4
  %call = call i32 @ossl_cms_ias_cert_cmp(ptr noundef %3, ptr noundef %4)
  store i32 %call, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %sid.addr, align 8, !tbaa !4
  %type1 = getelementptr inbounds %struct.CMS_SignerIdentifier_st, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %type1, align 8, !tbaa !20
  %cmp2 = icmp eq i32 %6, 1
  br i1 %cmp2, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.else
  %7 = load ptr, ptr %sid.addr, align 8, !tbaa !4
  %d4 = getelementptr inbounds %struct.CMS_SignerIdentifier_st, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %d4, align 8, !tbaa !8
  %9 = load ptr, ptr %cert.addr, align 8, !tbaa !4
  %call5 = call i32 @ossl_cms_keyid_cert_cmp(ptr noundef %8, ptr noundef %9)
  store i32 %call5, ptr %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else6, %if.then3, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

declare i32 @ossl_cms_ias_cert_cmp(ptr noundef, ptr noundef) #1

declare i32 @ossl_cms_keyid_cert_cmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @CMS_add1_signer(ptr noundef %cms, ptr noundef %signer, ptr noundef %pk, ptr noundef %md, i32 noundef %flags) #0 {
entry:
  %retval = alloca ptr, align 8
  %cms.addr = alloca ptr, align 8
  %signer.addr = alloca ptr, align 8
  %pk.addr = alloca ptr, align 8
  %md.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %sd = alloca ptr, align 8
  %si = alloca ptr, align 8
  %alg = alloca ptr, align 8
  %i = alloca i32, align 4
  %type = alloca i32, align 4
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %def_nid = alloca i32, align 4
  %aoid = alloca ptr, align 8
  %name = alloca [50 x i8], align 16
  %smcap = alloca ptr, align 8
  %sc = alloca ptr, align 8
  %sc2 = alloca ptr, align 8
  %add_sc = alloca i32, align 4
  store ptr %cms, ptr %cms.addr, align 8, !tbaa !4
  store ptr %signer, ptr %signer.addr, align 8, !tbaa !4
  store ptr %pk, ptr %pk.addr, align 8, !tbaa !4
  store ptr %md, ptr %md.addr, align 8, !tbaa !4
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %sd) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %si) #5
  store ptr null, ptr %si, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #5
  %0 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %call = call ptr @ossl_cms_get0_cmsctx(ptr noundef %0)
  store ptr %call, ptr %ctx, align 8, !tbaa !4
  %1 = load ptr, ptr %signer.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %pk.addr, align 8, !tbaa !4
  %call1 = call i32 @X509_check_private_key(ptr noundef %1, ptr noundef %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 347, ptr noundef @__func__.CMS_add1_signer)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 136, ptr noundef null)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup227

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %call2 = call ptr @cms_signed_data_init(ptr noundef %3)
  store ptr %call2, ptr %sd, align 8, !tbaa !4
  %4 = load ptr, ptr %sd, align 8, !tbaa !4
  %tobool3 = icmp ne ptr %4, null
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  br label %err

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @CMS_SignerInfo_it()
  %call7 = call ptr @ASN1_item_new(ptr noundef %call6)
  store ptr %call7, ptr %si, align 8, !tbaa !4
  %5 = load ptr, ptr %si, align 8, !tbaa !4
  %tobool8 = icmp ne ptr %5, null
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end5
  br label %merr

if.end10:                                         ; preds = %if.end5
  %6 = load ptr, ptr %signer.addr, align 8, !tbaa !4
  %call11 = call i32 @X509_check_purpose(ptr noundef %6, i32 noundef -1, i32 noundef -1)
  %7 = load ptr, ptr %signer.addr, align 8, !tbaa !4
  %call12 = call i32 @X509_up_ref(ptr noundef %7)
  %8 = load ptr, ptr %pk.addr, align 8, !tbaa !4
  %call13 = call i32 @EVP_PKEY_up_ref(ptr noundef %8)
  %9 = load ptr, ptr %ctx, align 8, !tbaa !4
  %10 = load ptr, ptr %si, align 8, !tbaa !4
  %cms_ctx = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %10, i32 0, i32 11
  store ptr %9, ptr %cms_ctx, align 8, !tbaa !25
  %11 = load ptr, ptr %pk.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %si, align 8, !tbaa !4
  %pkey = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %12, i32 0, i32 8
  store ptr %11, ptr %pkey, align 8, !tbaa !27
  %13 = load ptr, ptr %signer.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %si, align 8, !tbaa !4
  %signer14 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %14, i32 0, i32 7
  store ptr %13, ptr %signer14, align 8, !tbaa !28
  %call15 = call ptr @EVP_MD_CTX_new()
  %15 = load ptr, ptr %si, align 8, !tbaa !4
  %mctx = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %15, i32 0, i32 9
  store ptr %call15, ptr %mctx, align 8, !tbaa !29
  %16 = load ptr, ptr %si, align 8, !tbaa !4
  %pctx = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %16, i32 0, i32 10
  store ptr null, ptr %pctx, align 8, !tbaa !30
  %17 = load ptr, ptr %si, align 8, !tbaa !4
  %mctx16 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %17, i32 0, i32 9
  %18 = load ptr, ptr %mctx16, align 8, !tbaa !29
  %cmp = icmp eq ptr %18, null
  br i1 %cmp, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end10
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 369, ptr noundef @__func__.CMS_add1_signer)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, ptr noundef null)
  br label %err

if.end18:                                         ; preds = %if.end10
  %19 = load i32, ptr %flags.addr, align 4, !tbaa !19
  %and = and i32 %19, 65536
  %tobool19 = icmp ne i32 %and, 0
  br i1 %tobool19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end18
  %20 = load ptr, ptr %si, align 8, !tbaa !4
  %version = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %20, i32 0, i32 0
  store i32 3, ptr %version, align 8, !tbaa !31
  %21 = load ptr, ptr %sd, align 8, !tbaa !4
  %version21 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %version21, align 8, !tbaa !9
  %cmp22 = icmp slt i32 %22, 3
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then20
  %23 = load ptr, ptr %sd, align 8, !tbaa !4
  %version24 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %23, i32 0, i32 0
  store i32 3, ptr %version24, align 8, !tbaa !9
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then20
  store i32 1, ptr %type, align 4, !tbaa !19
  br label %if.end27

if.else:                                          ; preds = %if.end18
  store i32 0, ptr %type, align 4, !tbaa !19
  %24 = load ptr, ptr %si, align 8, !tbaa !4
  %version26 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %24, i32 0, i32 0
  store i32 1, ptr %version26, align 8, !tbaa !31
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end25
  %25 = load ptr, ptr %si, align 8, !tbaa !4
  %sid = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %sid, align 8, !tbaa !32
  %27 = load ptr, ptr %signer.addr, align 8, !tbaa !4
  %28 = load i32, ptr %type, align 4, !tbaa !19
  %29 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call28 = call i32 @ossl_cms_set1_SignerIdentifier(ptr noundef %26, ptr noundef %27, i32 noundef %28, ptr noundef %29)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end27
  br label %err

if.end31:                                         ; preds = %if.end27
  %30 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %cmp32 = icmp eq ptr %30, null
  br i1 %cmp32, label %if.then33, label %if.end43

if.then33:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 4, ptr %def_nid) #5
  %31 = load ptr, ptr %pk.addr, align 8, !tbaa !4
  %call34 = call i32 @EVP_PKEY_get_default_digest_nid(ptr noundef %31, ptr noundef %def_nid)
  %cmp35 = icmp sle i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then33
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %if.then33
  %32 = load i32, ptr %def_nid, align 4, !tbaa !19
  %call38 = call ptr @OBJ_nid2sn(i32 noundef %32)
  %call39 = call ptr @EVP_get_digestbyname(ptr noundef %call38)
  store ptr %call39, ptr %md.addr, align 8, !tbaa !4
  %33 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %cmp40 = icmp eq ptr %33, null
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 392, ptr noundef @__func__.CMS_add1_signer)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 128, ptr noundef null)
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.then36, %if.end42
  call void @llvm.lifetime.end.p0(i64 4, ptr %def_nid) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup227 [
    i32 0, label %cleanup.cont
    i32 2, label %err
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end43

if.end43:                                         ; preds = %cleanup.cont, %if.end31
  %34 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %tobool44 = icmp ne ptr %34, null
  br i1 %tobool44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end43
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 398, ptr noundef @__func__.CMS_add1_signer)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 129, ptr noundef null)
  br label %err

if.end46:                                         ; preds = %if.end43
  %35 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %cmp47 = icmp eq ptr %35, null
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end46
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 403, ptr noundef @__func__.CMS_add1_signer)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 129, ptr noundef null)
  br label %err

if.end49:                                         ; preds = %if.end46
  %36 = load ptr, ptr %si, align 8, !tbaa !4
  %digestAlgorithm = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %digestAlgorithm, align 8, !tbaa !33
  %38 = load ptr, ptr %md.addr, align 8, !tbaa !4
  call void @X509_ALGOR_set_md(ptr noundef %37, ptr noundef %38)
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end49
  %39 = load i32, ptr %i, align 4, !tbaa !19
  %40 = load ptr, ptr %sd, align 8, !tbaa !4
  %digestAlgorithms = getelementptr inbounds %struct.CMS_SignedData_st, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %digestAlgorithms, align 8, !tbaa !34
  %call50 = call ptr @ossl_check_const_X509_ALGOR_sk_type(ptr noundef %41)
  %call51 = call i32 @OPENSSL_sk_num(ptr noundef %call50)
  %cmp52 = icmp slt i32 %39, %call51
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %aoid) #5
  call void @llvm.lifetime.start.p0(i64 50, ptr %name) #5
  %42 = load ptr, ptr %sd, align 8, !tbaa !4
  %digestAlgorithms53 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %digestAlgorithms53, align 8, !tbaa !34
  %call54 = call ptr @ossl_check_const_X509_ALGOR_sk_type(ptr noundef %43)
  %44 = load i32, ptr %i, align 4, !tbaa !19
  %call55 = call ptr @OPENSSL_sk_value(ptr noundef %call54, i32 noundef %44)
  store ptr %call55, ptr %alg, align 8, !tbaa !4
  %45 = load ptr, ptr %alg, align 8, !tbaa !4
  call void @X509_ALGOR_get0(ptr noundef %aoid, ptr noundef null, ptr noundef null, ptr noundef %45)
  %arraydecay = getelementptr inbounds [50 x i8], ptr %name, i64 0, i64 0
  %46 = load ptr, ptr %aoid, align 8, !tbaa !4
  %call56 = call i32 @OBJ_obj2txt(ptr noundef %arraydecay, i32 noundef 50, ptr noundef %46, i32 noundef 0)
  %47 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %arraydecay57 = getelementptr inbounds [50 x i8], ptr %name, i64 0, i64 0
  %call58 = call i32 @EVP_MD_is_a(ptr noundef %47, ptr noundef %arraydecay57)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup62

if.end61:                                         ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup62

cleanup62:                                        ; preds = %if.end61, %if.then60
  call void @llvm.lifetime.end.p0(i64 50, ptr %name) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %aoid) #5
  %cleanup.dest64 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest64, label %unreachable [
    i32 0, label %cleanup.cont65
    i32 4, label %for.end
  ]

cleanup.cont65:                                   ; preds = %cleanup62
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont65
  %48 = load i32, ptr %i, align 4, !tbaa !19
  %inc = add nsw i32 %48, 1
  store i32 %inc, ptr %i, align 4, !tbaa !19
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %cleanup62, %for.cond
  %49 = load i32, ptr %i, align 4, !tbaa !19
  %50 = load ptr, ptr %sd, align 8, !tbaa !4
  %digestAlgorithms66 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %digestAlgorithms66, align 8, !tbaa !34
  %call67 = call ptr @ossl_check_const_X509_ALGOR_sk_type(ptr noundef %51)
  %call68 = call i32 @OPENSSL_sk_num(ptr noundef %call67)
  %cmp69 = icmp eq i32 %49, %call68
  br i1 %cmp69, label %if.then70, label %if.end82

if.then70:                                        ; preds = %for.end
  %call71 = call ptr @X509_ALGOR_new()
  store ptr %call71, ptr %alg, align 8, !tbaa !4
  %52 = load ptr, ptr %alg, align 8, !tbaa !4
  %cmp72 = icmp eq ptr %52, null
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.then70
  br label %merr

if.end74:                                         ; preds = %if.then70
  %53 = load ptr, ptr %alg, align 8, !tbaa !4
  %54 = load ptr, ptr %md.addr, align 8, !tbaa !4
  call void @X509_ALGOR_set_md(ptr noundef %53, ptr noundef %54)
  %55 = load ptr, ptr %sd, align 8, !tbaa !4
  %digestAlgorithms75 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %55, i32 0, i32 1
  %56 = load ptr, ptr %digestAlgorithms75, align 8, !tbaa !34
  %call76 = call ptr @ossl_check_X509_ALGOR_sk_type(ptr noundef %56)
  %57 = load ptr, ptr %alg, align 8, !tbaa !4
  %call77 = call ptr @ossl_check_X509_ALGOR_type(ptr noundef %57)
  %call78 = call i32 @OPENSSL_sk_push(ptr noundef %call76, ptr noundef %call77)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.end81, label %if.then80

if.then80:                                        ; preds = %if.end74
  %58 = load ptr, ptr %alg, align 8, !tbaa !4
  call void @X509_ALGOR_free(ptr noundef %58)
  br label %merr

if.end81:                                         ; preds = %if.end74
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %for.end
  %59 = load i32, ptr %flags.addr, align 4, !tbaa !19
  %and83 = and i32 %59, 262144
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.end88, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end82
  %60 = load ptr, ptr %si, align 8, !tbaa !4
  %call85 = call i32 @cms_sd_asn1_ctrl(ptr noundef %60, i32 noundef 0)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.end88, label %if.then87

if.then87:                                        ; preds = %land.lhs.true
  br label %err

if.end88:                                         ; preds = %land.lhs.true, %if.end82
  %61 = load i32, ptr %flags.addr, align 4, !tbaa !19
  %and89 = and i32 %61, 256
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %if.end165, label %if.then91

if.then91:                                        ; preds = %if.end88
  %62 = load ptr, ptr %si, align 8, !tbaa !4
  %signedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %62, i32 0, i32 3
  %63 = load ptr, ptr %signedAttrs, align 8, !tbaa !37
  %tobool92 = icmp ne ptr %63, null
  br i1 %tobool92, label %if.end100, label %if.then93

if.then93:                                        ; preds = %if.then91
  %call94 = call ptr @OPENSSL_sk_new_null()
  %64 = load ptr, ptr %si, align 8, !tbaa !4
  %signedAttrs95 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %64, i32 0, i32 3
  store ptr %call94, ptr %signedAttrs95, align 8, !tbaa !37
  %65 = load ptr, ptr %si, align 8, !tbaa !4
  %signedAttrs96 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %65, i32 0, i32 3
  %66 = load ptr, ptr %signedAttrs96, align 8, !tbaa !37
  %tobool97 = icmp ne ptr %66, null
  br i1 %tobool97, label %if.end99, label %if.then98

if.then98:                                        ; preds = %if.then93
  br label %merr

if.end99:                                         ; preds = %if.then93
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then91
  %67 = load i32, ptr %flags.addr, align 4, !tbaa !19
  %and101 = and i32 %67, 512
  %tobool102 = icmp ne i32 %and101, 0
  br i1 %tobool102, label %if.end117, label %if.then103

if.then103:                                       ; preds = %if.end100
  call void @llvm.lifetime.start.p0(i64 8, ptr %smcap) #5
  store ptr null, ptr %smcap, align 8, !tbaa !4
  %call104 = call i32 @CMS_add_standard_smimecap(ptr noundef %smcap)
  store i32 %call104, ptr %i, align 4, !tbaa !19
  %68 = load i32, ptr %i, align 4, !tbaa !19
  %tobool105 = icmp ne i32 %68, 0
  br i1 %tobool105, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.then103
  %69 = load ptr, ptr %si, align 8, !tbaa !4
  %70 = load ptr, ptr %smcap, align 8, !tbaa !4
  %call107 = call i32 @CMS_add_smimecap(ptr noundef %69, ptr noundef %70)
  store i32 %call107, ptr %i, align 4, !tbaa !19
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.then103
  %71 = load ptr, ptr %smcap, align 8, !tbaa !4
  %call109 = call ptr @ossl_check_X509_ALGOR_sk_type(ptr noundef %71)
  %call110 = call ptr @ossl_check_X509_ALGOR_freefunc_type(ptr noundef @X509_ALGOR_free)
  call void @OPENSSL_sk_pop_free(ptr noundef %call109, ptr noundef %call110)
  %72 = load i32, ptr %i, align 4, !tbaa !19
  %tobool111 = icmp ne i32 %72, 0
  br i1 %tobool111, label %if.end113, label %if.then112

if.then112:                                       ; preds = %if.end108
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup114

if.end113:                                        ; preds = %if.end108
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup114

cleanup114:                                       ; preds = %if.then112, %if.end113
  call void @llvm.lifetime.end.p0(i64 8, ptr %smcap) #5
  %cleanup.dest115 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest115, label %cleanup227 [
    i32 0, label %cleanup.cont116
    i32 3, label %merr
  ]

cleanup.cont116:                                  ; preds = %cleanup114
  br label %if.end117

if.end117:                                        ; preds = %cleanup.cont116, %if.end100
  %73 = load i32, ptr %flags.addr, align 4, !tbaa !19
  %and118 = and i32 %73, 1048576
  %tobool119 = icmp ne i32 %and118, 0
  br i1 %tobool119, label %if.then120, label %if.end145

if.then120:                                       ; preds = %if.end117
  call void @llvm.lifetime.start.p0(i64 8, ptr %sc) #5
  store ptr null, ptr %sc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sc2) #5
  store ptr null, ptr %sc2, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %add_sc) #5
  %74 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %cmp121 = icmp eq ptr %74, null
  br i1 %cmp121, label %if.then124, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then120
  %75 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %call122 = call i32 @EVP_MD_is_a(ptr noundef %75, ptr noundef @.str.1)
  %tobool123 = icmp ne i32 %call122, 0
  br i1 %tobool123, label %if.then124, label %if.else130

if.then124:                                       ; preds = %lor.lhs.false, %if.then120
  %76 = load ptr, ptr %signer.addr, align 8, !tbaa !4
  %call125 = call ptr @OSSL_ESS_signing_cert_new_init(ptr noundef %76, ptr noundef null, i32 noundef 1)
  store ptr %call125, ptr %sc, align 8, !tbaa !4
  %cmp126 = icmp eq ptr %call125, null
  br i1 %cmp126, label %if.then127, label %if.end128

if.then127:                                       ; preds = %if.then124
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup140

if.end128:                                        ; preds = %if.then124
  %77 = load ptr, ptr %si, align 8, !tbaa !4
  %78 = load ptr, ptr %sc, align 8, !tbaa !4
  %call129 = call i32 @ossl_cms_add1_signing_cert(ptr noundef %77, ptr noundef %78)
  store i32 %call129, ptr %add_sc, align 4, !tbaa !19
  %79 = load ptr, ptr %sc, align 8, !tbaa !4
  call void @ESS_SIGNING_CERT_free(ptr noundef %79)
  br label %if.end136

if.else130:                                       ; preds = %lor.lhs.false
  %80 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %81 = load ptr, ptr %signer.addr, align 8, !tbaa !4
  %call131 = call ptr @OSSL_ESS_signing_cert_v2_new_init(ptr noundef %80, ptr noundef %81, ptr noundef null, i32 noundef 1)
  store ptr %call131, ptr %sc2, align 8, !tbaa !4
  %cmp132 = icmp eq ptr %call131, null
  br i1 %cmp132, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.else130
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup140

if.end134:                                        ; preds = %if.else130
  %82 = load ptr, ptr %si, align 8, !tbaa !4
  %83 = load ptr, ptr %sc2, align 8, !tbaa !4
  %call135 = call i32 @ossl_cms_add1_signing_cert_v2(ptr noundef %82, ptr noundef %83)
  store i32 %call135, ptr %add_sc, align 4, !tbaa !19
  %84 = load ptr, ptr %sc2, align 8, !tbaa !4
  call void @ESS_SIGNING_CERT_V2_free(ptr noundef %84)
  br label %if.end136

if.end136:                                        ; preds = %if.end134, %if.end128
  %85 = load i32, ptr %add_sc, align 4, !tbaa !19
  %tobool137 = icmp ne i32 %85, 0
  br i1 %tobool137, label %if.end139, label %if.then138

if.then138:                                       ; preds = %if.end136
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup140

if.end139:                                        ; preds = %if.end136
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup140

cleanup140:                                       ; preds = %if.then138, %if.then133, %if.then127, %if.end139
  call void @llvm.lifetime.end.p0(i64 4, ptr %add_sc) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sc2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sc) #5
  %cleanup.dest143 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest143, label %cleanup227 [
    i32 0, label %cleanup.cont144
    i32 2, label %err
  ]

cleanup.cont144:                                  ; preds = %cleanup140
  br label %if.end145

if.end145:                                        ; preds = %cleanup.cont144, %if.end117
  %86 = load i32, ptr %flags.addr, align 4, !tbaa !19
  %and146 = and i32 %86, 32768
  %tobool147 = icmp ne i32 %and146, 0
  br i1 %tobool147, label %if.then148, label %if.end164

if.then148:                                       ; preds = %if.end145
  %87 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %88 = load ptr, ptr %si, align 8, !tbaa !4
  %call149 = call i32 @cms_copy_messageDigest(ptr noundef %87, ptr noundef %88)
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %if.end152, label %if.then151

if.then151:                                       ; preds = %if.then148
  br label %err

if.end152:                                        ; preds = %if.then148
  %89 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %90 = load ptr, ptr %si, align 8, !tbaa !4
  %call153 = call i32 @cms_set_si_contentType_attr(ptr noundef %89, ptr noundef %90)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.end156, label %if.then155

if.then155:                                       ; preds = %if.end152
  br label %err

if.end156:                                        ; preds = %if.end152
  %91 = load i32, ptr %flags.addr, align 4, !tbaa !19
  %and157 = and i32 %91, 278528
  %tobool158 = icmp ne i32 %and157, 0
  br i1 %tobool158, label %if.end163, label %land.lhs.true159

land.lhs.true159:                                 ; preds = %if.end156
  %92 = load ptr, ptr %si, align 8, !tbaa !4
  %call160 = call i32 @CMS_SignerInfo_sign(ptr noundef %92)
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %if.end163, label %if.then162

if.then162:                                       ; preds = %land.lhs.true159
  br label %err

if.end163:                                        ; preds = %land.lhs.true159, %if.end156
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.end145
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.end88
  %93 = load i32, ptr %flags.addr, align 4, !tbaa !19
  %and166 = and i32 %93, 2
  %tobool167 = icmp ne i32 %and166, 0
  br i1 %tobool167, label %if.end173, label %if.then168

if.then168:                                       ; preds = %if.end165
  %94 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %95 = load ptr, ptr %signer.addr, align 8, !tbaa !4
  %call169 = call i32 @CMS_add1_cert(ptr noundef %94, ptr noundef %95)
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.end172, label %if.then171

if.then171:                                       ; preds = %if.then168
  br label %merr

if.end172:                                        ; preds = %if.then168
  br label %if.end173

if.end173:                                        ; preds = %if.end172, %if.end165
  %96 = load i32, ptr %flags.addr, align 4, !tbaa !19
  %and174 = and i32 %96, 262144
  %tobool175 = icmp ne i32 %and174, 0
  br i1 %tobool175, label %if.then176, label %if.end210

if.then176:                                       ; preds = %if.end173
  %97 = load i32, ptr %flags.addr, align 4, !tbaa !19
  %and177 = and i32 %97, 256
  %tobool178 = icmp ne i32 %and177, 0
  br i1 %tobool178, label %if.then179, label %if.else199

if.then179:                                       ; preds = %if.then176
  %98 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call180 = call ptr @ossl_cms_ctx_get0_libctx(ptr noundef %98)
  %99 = load ptr, ptr %si, align 8, !tbaa !4
  %pkey181 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %99, i32 0, i32 8
  %100 = load ptr, ptr %pkey181, align 8, !tbaa !27
  %101 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call182 = call ptr @ossl_cms_ctx_get0_propq(ptr noundef %101)
  %call183 = call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef %call180, ptr noundef %100, ptr noundef %call182)
  %102 = load ptr, ptr %si, align 8, !tbaa !4
  %pctx184 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %102, i32 0, i32 10
  store ptr %call183, ptr %pctx184, align 8, !tbaa !30
  %103 = load ptr, ptr %si, align 8, !tbaa !4
  %pctx185 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %103, i32 0, i32 10
  %104 = load ptr, ptr %pctx185, align 8, !tbaa !30
  %cmp186 = icmp eq ptr %104, null
  br i1 %cmp186, label %if.then187, label %if.end188

if.then187:                                       ; preds = %if.then179
  br label %err

if.end188:                                        ; preds = %if.then179
  %105 = load ptr, ptr %si, align 8, !tbaa !4
  %pctx189 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %105, i32 0, i32 10
  %106 = load ptr, ptr %pctx189, align 8, !tbaa !30
  %call190 = call i32 @EVP_PKEY_sign_init(ptr noundef %106)
  %cmp191 = icmp sle i32 %call190, 0
  br i1 %cmp191, label %if.then192, label %if.end193

if.then192:                                       ; preds = %if.end188
  br label %err

if.end193:                                        ; preds = %if.end188
  %107 = load ptr, ptr %si, align 8, !tbaa !4
  %pctx194 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %107, i32 0, i32 10
  %108 = load ptr, ptr %pctx194, align 8, !tbaa !30
  %109 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %call195 = call i32 @EVP_PKEY_CTX_set_signature_md(ptr noundef %108, ptr noundef %109)
  %cmp196 = icmp sle i32 %call195, 0
  br i1 %cmp196, label %if.then197, label %if.end198

if.then197:                                       ; preds = %if.end193
  br label %err

if.end198:                                        ; preds = %if.end193
  br label %if.end209

if.else199:                                       ; preds = %if.then176
  %110 = load ptr, ptr %si, align 8, !tbaa !4
  %mctx200 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %110, i32 0, i32 9
  %111 = load ptr, ptr %mctx200, align 8, !tbaa !29
  %112 = load ptr, ptr %si, align 8, !tbaa !4
  %pctx201 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %112, i32 0, i32 10
  %113 = load ptr, ptr %md.addr, align 8, !tbaa !4
  %call202 = call ptr @EVP_MD_get0_name(ptr noundef %113)
  %114 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call203 = call ptr @ossl_cms_ctx_get0_libctx(ptr noundef %114)
  %115 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call204 = call ptr @ossl_cms_ctx_get0_propq(ptr noundef %115)
  %116 = load ptr, ptr %pk.addr, align 8, !tbaa !4
  %call205 = call i32 @EVP_DigestSignInit_ex(ptr noundef %111, ptr noundef %pctx201, ptr noundef %call202, ptr noundef %call203, ptr noundef %call204, ptr noundef %116, ptr noundef null)
  %cmp206 = icmp sle i32 %call205, 0
  br i1 %cmp206, label %if.then207, label %if.end208

if.then207:                                       ; preds = %if.else199
  br label %err

if.end208:                                        ; preds = %if.else199
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %if.end198
  br label %if.end210

if.end210:                                        ; preds = %if.end209, %if.end173
  %117 = load ptr, ptr %sd, align 8, !tbaa !4
  %signerInfos = getelementptr inbounds %struct.CMS_SignedData_st, ptr %117, i32 0, i32 5
  %118 = load ptr, ptr %signerInfos, align 8, !tbaa !38
  %tobool211 = icmp ne ptr %118, null
  br i1 %tobool211, label %if.end215, label %if.then212

if.then212:                                       ; preds = %if.end210
  %call213 = call ptr @OPENSSL_sk_new_null()
  %119 = load ptr, ptr %sd, align 8, !tbaa !4
  %signerInfos214 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %119, i32 0, i32 5
  store ptr %call213, ptr %signerInfos214, align 8, !tbaa !38
  br label %if.end215

if.end215:                                        ; preds = %if.then212, %if.end210
  %120 = load ptr, ptr %sd, align 8, !tbaa !4
  %signerInfos216 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %120, i32 0, i32 5
  %121 = load ptr, ptr %signerInfos216, align 8, !tbaa !38
  %tobool217 = icmp ne ptr %121, null
  br i1 %tobool217, label %lor.lhs.false218, label %if.then224

lor.lhs.false218:                                 ; preds = %if.end215
  %122 = load ptr, ptr %sd, align 8, !tbaa !4
  %signerInfos219 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %122, i32 0, i32 5
  %123 = load ptr, ptr %signerInfos219, align 8, !tbaa !38
  %call220 = call ptr @ossl_check_CMS_SignerInfo_sk_type(ptr noundef %123)
  %124 = load ptr, ptr %si, align 8, !tbaa !4
  %call221 = call ptr @ossl_check_CMS_SignerInfo_type(ptr noundef %124)
  %call222 = call i32 @OPENSSL_sk_push(ptr noundef %call220, ptr noundef %call221)
  %tobool223 = icmp ne i32 %call222, 0
  br i1 %tobool223, label %if.end225, label %if.then224

if.then224:                                       ; preds = %lor.lhs.false218, %if.end215
  br label %merr

if.end225:                                        ; preds = %lor.lhs.false218
  %125 = load ptr, ptr %si, align 8, !tbaa !4
  store ptr %125, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup227

merr:                                             ; preds = %cleanup114, %if.then224, %if.then171, %if.then98, %if.then80, %if.then73, %if.then9
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 520, ptr noundef @__func__.CMS_add1_signer)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, ptr noundef null)
  br label %err

err:                                              ; preds = %merr, %cleanup140, %cleanup, %if.then207, %if.then197, %if.then192, %if.then187, %if.then162, %if.then155, %if.then151, %if.then87, %if.then48, %if.then45, %if.then30, %if.then17, %if.then4
  %126 = load ptr, ptr %si, align 8, !tbaa !4
  %call226 = call ptr @CMS_SignerInfo_it()
  call void @ASN1_item_free(ptr noundef %126, ptr noundef %call226)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup227

cleanup227:                                       ; preds = %err, %if.end225, %cleanup140, %cleanup114, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %si) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sd) #5
  %127 = load ptr, ptr %retval, align 8
  ret ptr %127

unreachable:                                      ; preds = %cleanup62
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @ossl_cms_get0_cmsctx(ptr noundef) #1

declare i32 @X509_check_private_key(ptr noundef, ptr noundef) #1

declare ptr @ASN1_item_new(ptr noundef) #1

declare ptr @CMS_SignerInfo_it() #1

declare i32 @X509_check_purpose(ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @X509_up_ref(ptr noundef) #1

declare i32 @EVP_PKEY_up_ref(ptr noundef) #1

declare ptr @EVP_MD_CTX_new() #1

declare i32 @EVP_PKEY_get_default_digest_nid(ptr noundef, ptr noundef) #1

declare ptr @EVP_get_digestbyname(ptr noundef) #1

declare ptr @OBJ_nid2sn(i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @X509_ALGOR_set_md(ptr noundef, ptr noundef) #1

declare i32 @OPENSSL_sk_num(ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_const_X509_ALGOR_sk_type(ptr noundef %sk) #3 {
entry:
  %sk.addr = alloca ptr, align 8
  store ptr %sk, ptr %sk.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sk.addr, align 8, !tbaa !4
  ret ptr %0
}

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) #1

declare void @X509_ALGOR_get0(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @OBJ_obj2txt(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @EVP_MD_is_a(ptr noundef, ptr noundef) #1

declare ptr @X509_ALGOR_new() #1

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_X509_ALGOR_sk_type(ptr noundef %sk) #3 {
entry:
  %sk.addr = alloca ptr, align 8
  store ptr %sk, ptr %sk.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sk.addr, align 8, !tbaa !4
  ret ptr %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_X509_ALGOR_type(ptr noundef %ptr) #3 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  ret ptr %0
}

declare void @X509_ALGOR_free(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @cms_sd_asn1_ctrl(ptr noundef %si, i32 noundef %cmd) #0 {
entry:
  %retval = alloca i32, align 4
  %si.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %pkey = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %si, ptr %si.addr, align 8, !tbaa !4
  store i32 %cmd, ptr %cmd.addr, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %pkey) #5
  %0 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pkey1 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %pkey1, align 8, !tbaa !27
  store ptr %1, ptr %pkey, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  %2 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call = call i32 @EVP_PKEY_is_a(ptr noundef %2, ptr noundef @.str.2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call2 = call i32 @EVP_PKEY_is_a(ptr noundef %3, ptr noundef @.str.3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %5 = load i32, ptr %cmd.addr, align 4, !tbaa !19
  %call4 = call i32 @cms_generic_sign(ptr noundef %4, i32 noundef %5)
  %cmp = icmp sgt i32 %call4, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call5 = call i32 @EVP_PKEY_is_a(ptr noundef %6, ptr noundef @.str.4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.else
  %7 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call8 = call i32 @EVP_PKEY_is_a(ptr noundef %7, ptr noundef @.str.5)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end

if.then10:                                        ; preds = %lor.lhs.false7, %if.else
  %8 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %9 = load i32, ptr %cmd.addr, align 4, !tbaa !19
  %call11 = call i32 @ossl_cms_rsa_sign(ptr noundef %8, i32 noundef %9)
  %cmp12 = icmp sgt i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  store i32 %conv13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  br label %if.end14

if.end14:                                         ; preds = %if.end
  %10 = load ptr, ptr %pkey, align 8, !tbaa !4
  %ameth = getelementptr inbounds %struct.evp_pkey_st, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %ameth, align 8, !tbaa !39
  %cmp15 = icmp eq ptr %11, null
  br i1 %cmp15, label %if.then21, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end14
  %12 = load ptr, ptr %pkey, align 8, !tbaa !4
  %ameth18 = getelementptr inbounds %struct.evp_pkey_st, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %ameth18, align 8, !tbaa !39
  %pkey_ctrl = getelementptr inbounds %struct.evp_pkey_asn1_method_st, ptr %13, i32 0, i32 23
  %14 = load ptr, ptr %pkey_ctrl, align 8, !tbaa !44
  %cmp19 = icmp eq ptr %14, null
  br i1 %cmp19, label %if.then21, label %if.end25

if.then21:                                        ; preds = %lor.lhs.false17, %if.end14
  %15 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %16 = load i32, ptr %cmd.addr, align 4, !tbaa !19
  %call22 = call i32 @cms_generic_sign(ptr noundef %15, i32 noundef %16)
  %cmp23 = icmp sgt i32 %call22, 0
  %conv24 = zext i1 %cmp23 to i32
  store i32 %conv24, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false17
  %17 = load ptr, ptr %pkey, align 8, !tbaa !4
  %ameth26 = getelementptr inbounds %struct.evp_pkey_st, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %ameth26, align 8, !tbaa !39
  %pkey_ctrl27 = getelementptr inbounds %struct.evp_pkey_asn1_method_st, ptr %18, i32 0, i32 23
  %19 = load ptr, ptr %pkey_ctrl27, align 8, !tbaa !44
  %20 = load ptr, ptr %pkey, align 8, !tbaa !4
  %21 = load i32, ptr %cmd.addr, align 4, !tbaa !19
  %conv28 = sext i32 %21 to i64
  %22 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %call29 = call i32 %19(ptr noundef %20, i32 noundef 5, i64 noundef %conv28, ptr noundef %22)
  store i32 %call29, ptr %i, align 4, !tbaa !19
  %23 = load i32, ptr %i, align 4, !tbaa !19
  %cmp30 = icmp eq i32 %23, -2
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end25
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 276, ptr noundef @__func__.cms_sd_asn1_ctrl)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 125, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  %24 = load i32, ptr %i, align 4, !tbaa !19
  %cmp34 = icmp sle i32 %24, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end33
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 280, ptr noundef @__func__.cms_sd_asn1_ctrl)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 111, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then36, %if.then32, %if.then21, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pkey) #5
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

declare ptr @OPENSSL_sk_new_null() #1

; Function Attrs: nounwind uwtable
define i32 @CMS_add_standard_smimecap(ptr noundef %smcap) #0 {
entry:
  %retval = alloca i32, align 4
  %smcap.addr = alloca ptr, align 8
  store ptr %smcap, ptr %smcap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %smcap.addr, align 8, !tbaa !4
  %call = call i32 @cms_add_cipher_smcap(ptr noundef %0, i32 noundef 427, i32 noundef -1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %smcap.addr, align 8, !tbaa !4
  %call1 = call i32 @cms_add_digest_smcap(ptr noundef %1, i32 noundef 982, i32 noundef -1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %smcap.addr, align 8, !tbaa !4
  %call4 = call i32 @cms_add_digest_smcap(ptr noundef %2, i32 noundef 983, i32 noundef -1)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %lor.lhs.false6, label %if.then

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %3 = load ptr, ptr %smcap.addr, align 8, !tbaa !4
  %call7 = call i32 @cms_add_digest_smcap(ptr noundef %3, i32 noundef 809, i32 noundef -1)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.lhs.false9, label %if.then

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %4 = load ptr, ptr %smcap.addr, align 8, !tbaa !4
  %call10 = call i32 @cms_add_cipher_smcap(ptr noundef %4, i32 noundef 813, i32 noundef -1)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %lor.lhs.false12, label %if.then

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %5 = load ptr, ptr %smcap.addr, align 8, !tbaa !4
  %call13 = call i32 @cms_add_cipher_smcap(ptr noundef %5, i32 noundef 423, i32 noundef -1)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %lor.lhs.false15, label %if.then

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %6 = load ptr, ptr %smcap.addr, align 8, !tbaa !4
  %call16 = call i32 @cms_add_cipher_smcap(ptr noundef %6, i32 noundef 419, i32 noundef -1)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %lor.lhs.false18, label %if.then

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %7 = load ptr, ptr %smcap.addr, align 8, !tbaa !4
  %call19 = call i32 @cms_add_cipher_smcap(ptr noundef %7, i32 noundef 44, i32 noundef -1)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %lor.lhs.false21, label %if.then

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %8 = load ptr, ptr %smcap.addr, align 8, !tbaa !4
  %call22 = call i32 @cms_add_cipher_smcap(ptr noundef %8, i32 noundef 37, i32 noundef 128)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %lor.lhs.false24, label %if.then

lor.lhs.false24:                                  ; preds = %lor.lhs.false21
  %9 = load ptr, ptr %smcap.addr, align 8, !tbaa !4
  %call25 = call i32 @cms_add_cipher_smcap(ptr noundef %9, i32 noundef 37, i32 noundef 64)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %lor.lhs.false27, label %if.then

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %10 = load ptr, ptr %smcap.addr, align 8, !tbaa !4
  %call28 = call i32 @cms_add_cipher_smcap(ptr noundef %10, i32 noundef 31, i32 noundef -1)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %lor.lhs.false30, label %if.then

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %11 = load ptr, ptr %smcap.addr, align 8, !tbaa !4
  %call31 = call i32 @cms_add_cipher_smcap(ptr noundef %11, i32 noundef 37, i32 noundef 40)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false30, %lor.lhs.false27, %lor.lhs.false24, %lor.lhs.false21, %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false30
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @CMS_add_smimecap(ptr noundef %si, ptr noundef %algs) #0 {
entry:
  %retval = alloca i32, align 4
  %si.addr = alloca ptr, align 8
  %algs.addr = alloca ptr, align 8
  %smder = alloca ptr, align 8
  %smderlen = alloca i32, align 4
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %si, ptr %si.addr, align 8, !tbaa !4
  store ptr %algs, ptr %algs.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %smder) #5
  store ptr null, ptr %smder, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %smderlen) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #5
  %0 = load ptr, ptr %algs.addr, align 8, !tbaa !4
  %call = call i32 @i2d_X509_ALGORS(ptr noundef %0, ptr noundef %smder)
  store i32 %call, ptr %smderlen, align 4, !tbaa !19
  %1 = load i32, ptr %smderlen, align 4, !tbaa !19
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %smder, align 8, !tbaa !4
  %4 = load i32, ptr %smderlen, align 4, !tbaa !19
  %call1 = call i32 @CMS_signed_add1_attr_by_NID(ptr noundef %2, i32 noundef 167, i32 noundef 16, ptr noundef %3, i32 noundef %4)
  store i32 %call1, ptr %r, align 4, !tbaa !19
  %5 = load ptr, ptr %smder, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %5, ptr noundef @.str, i32 noundef 1056)
  %6 = load i32, ptr %r, align 4, !tbaa !19
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %smderlen) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %smder) #5
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare void @OPENSSL_sk_pop_free(ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_X509_ALGOR_freefunc_type(ptr noundef %fr) #3 {
entry:
  %fr.addr = alloca ptr, align 8
  store ptr %fr, ptr %fr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %fr.addr, align 8, !tbaa !4
  ret ptr %0
}

declare ptr @OSSL_ESS_signing_cert_new_init(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @ossl_cms_add1_signing_cert(ptr noundef %si, ptr noundef %sc) #0 {
entry:
  %retval = alloca i32, align 4
  %si.addr = alloca ptr, align 8
  %sc.addr = alloca ptr, align 8
  %seq = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pp = alloca ptr, align 8
  %ret = alloca i32, align 4
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %si, ptr %si.addr, align 8, !tbaa !4
  store ptr %sc, ptr %sc.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %seq) #5
  store ptr null, ptr %seq, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pp) #5
  store ptr null, ptr %pp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #5
  %0 = load ptr, ptr %sc.addr, align 8, !tbaa !4
  %call = call i32 @i2d_ESS_SIGNING_CERT(ptr noundef %0, ptr noundef null)
  store i32 %call, ptr %len, align 4, !tbaa !19
  %1 = load i32, ptr %len, align 4, !tbaa !19
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %len, align 4, !tbaa !19
  %conv = sext i32 %2 to i64
  %call1 = call noalias ptr @CRYPTO_malloc(i64 noundef %conv, ptr noundef @.str, i32 noundef 294)
  store ptr %call1, ptr %pp, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %pp, align 8, !tbaa !4
  store ptr %3, ptr %p, align 8, !tbaa !4
  %4 = load ptr, ptr %sc.addr, align 8, !tbaa !4
  %call4 = call i32 @i2d_ESS_SIGNING_CERT(ptr noundef %4, ptr noundef %p)
  %call5 = call ptr @ASN1_STRING_new()
  store ptr %call5, ptr %seq, align 8, !tbaa !4
  %tobool = icmp ne ptr %call5, null
  br i1 %tobool, label %lor.lhs.false6, label %if.then9

lor.lhs.false6:                                   ; preds = %if.end
  %5 = load ptr, ptr %seq, align 8, !tbaa !4
  %6 = load ptr, ptr %pp, align 8, !tbaa !4
  %7 = load i32, ptr %len, align 4, !tbaa !19
  %call7 = call i32 @ASN1_STRING_set(ptr noundef %5, ptr noundef %6, i32 noundef %7)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %lor.lhs.false6, %if.end
  %8 = load ptr, ptr %seq, align 8, !tbaa !4
  call void @ASN1_STRING_free(ptr noundef %8)
  %9 = load ptr, ptr %pp, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %9, ptr noundef @.str, i32 noundef 301)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false6
  %10 = load ptr, ptr %pp, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %10, ptr noundef @.str, i32 noundef 304)
  %11 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %seq, align 8, !tbaa !4
  %call11 = call i32 @CMS_signed_add1_attr_by_NID(ptr noundef %11, i32 noundef 223, i32 noundef 16, ptr noundef %12, i32 noundef -1)
  store i32 %call11, ptr %ret, align 4, !tbaa !19
  %13 = load ptr, ptr %seq, align 8, !tbaa !4
  call void @ASN1_STRING_free(ptr noundef %13)
  %14 = load i32, ptr %ret, align 4, !tbaa !19
  store i32 %14, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %seq) #5
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

declare void @ESS_SIGNING_CERT_free(ptr noundef) #1

declare ptr @OSSL_ESS_signing_cert_v2_new_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @ossl_cms_add1_signing_cert_v2(ptr noundef %si, ptr noundef %sc) #0 {
entry:
  %retval = alloca i32, align 4
  %si.addr = alloca ptr, align 8
  %sc.addr = alloca ptr, align 8
  %seq = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pp = alloca ptr, align 8
  %ret = alloca i32, align 4
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %si, ptr %si.addr, align 8, !tbaa !4
  store ptr %sc, ptr %sc.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %seq) #5
  store ptr null, ptr %seq, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pp) #5
  store ptr null, ptr %pp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #5
  %0 = load ptr, ptr %sc.addr, align 8, !tbaa !4
  %call = call i32 @i2d_ESS_SIGNING_CERT_V2(ptr noundef %0, ptr noundef null)
  store i32 %call, ptr %len, align 4, !tbaa !19
  %1 = load i32, ptr %len, align 4, !tbaa !19
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %len, align 4, !tbaa !19
  %conv = sext i32 %2 to i64
  %call1 = call noalias ptr @CRYPTO_malloc(i64 noundef %conv, ptr noundef @.str, i32 noundef 319)
  store ptr %call1, ptr %pp, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %pp, align 8, !tbaa !4
  store ptr %3, ptr %p, align 8, !tbaa !4
  %4 = load ptr, ptr %sc.addr, align 8, !tbaa !4
  %call4 = call i32 @i2d_ESS_SIGNING_CERT_V2(ptr noundef %4, ptr noundef %p)
  %call5 = call ptr @ASN1_STRING_new()
  store ptr %call5, ptr %seq, align 8, !tbaa !4
  %tobool = icmp ne ptr %call5, null
  br i1 %tobool, label %lor.lhs.false6, label %if.then9

lor.lhs.false6:                                   ; preds = %if.end
  %5 = load ptr, ptr %seq, align 8, !tbaa !4
  %6 = load ptr, ptr %pp, align 8, !tbaa !4
  %7 = load i32, ptr %len, align 4, !tbaa !19
  %call7 = call i32 @ASN1_STRING_set(ptr noundef %5, ptr noundef %6, i32 noundef %7)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %lor.lhs.false6, %if.end
  %8 = load ptr, ptr %seq, align 8, !tbaa !4
  call void @ASN1_STRING_free(ptr noundef %8)
  %9 = load ptr, ptr %pp, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %9, ptr noundef @.str, i32 noundef 326)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false6
  %10 = load ptr, ptr %pp, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %10, ptr noundef @.str, i32 noundef 329)
  %11 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %seq, align 8, !tbaa !4
  %call11 = call i32 @CMS_signed_add1_attr_by_NID(ptr noundef %11, i32 noundef 1086, i32 noundef 16, ptr noundef %12, i32 noundef -1)
  store i32 %call11, ptr %ret, align 4, !tbaa !19
  %13 = load ptr, ptr %seq, align 8, !tbaa !4
  call void @ASN1_STRING_free(ptr noundef %13)
  %14 = load i32, ptr %ret, align 4, !tbaa !19
  store i32 %14, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %seq) #5
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

declare void @ESS_SIGNING_CERT_V2_free(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @cms_copy_messageDigest(ptr noundef %cms, ptr noundef %si) #0 {
entry:
  %retval = alloca i32, align 4
  %cms.addr = alloca ptr, align 8
  %si.addr = alloca ptr, align 8
  %sinfos = alloca ptr, align 8
  %sitmp = alloca ptr, align 8
  %i = alloca i32, align 4
  %messageDigest = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cms, ptr %cms.addr, align 8, !tbaa !4
  store ptr %si, ptr %si.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinfos) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sitmp) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  %0 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %call = call ptr @CMS_get0_SignerInfos(ptr noundef %0)
  store ptr %call, ptr %sinfos, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !19
  %2 = load ptr, ptr %sinfos, align 8, !tbaa !4
  %call1 = call ptr @ossl_check_const_CMS_SignerInfo_sk_type(ptr noundef %2)
  %call2 = call i32 @OPENSSL_sk_num(ptr noundef %call1)
  %cmp = icmp slt i32 %1, %call2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %messageDigest) #5
  %3 = load ptr, ptr %sinfos, align 8, !tbaa !4
  %call3 = call ptr @ossl_check_const_CMS_SignerInfo_sk_type(ptr noundef %3)
  %4 = load i32, ptr %i, align 4, !tbaa !19
  %call4 = call ptr @OPENSSL_sk_value(ptr noundef %call3, i32 noundef %4)
  store ptr %call4, ptr %sitmp, align 8, !tbaa !4
  %5 = load ptr, ptr %sitmp, align 8, !tbaa !4
  %6 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %5, %6
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %sitmp, align 8, !tbaa !4
  %call6 = call i32 @CMS_signed_get_attr_count(ptr noundef %7)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %8 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %digestAlgorithm = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %digestAlgorithm, align 8, !tbaa !33
  %algorithm = getelementptr inbounds %struct.X509_algor_st, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %algorithm, align 8, !tbaa !46
  %11 = load ptr, ptr %sitmp, align 8, !tbaa !4
  %digestAlgorithm10 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %digestAlgorithm10, align 8, !tbaa !33
  %algorithm11 = getelementptr inbounds %struct.X509_algor_st, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %algorithm11, align 8, !tbaa !46
  %call12 = call i32 @OBJ_cmp(ptr noundef %10, ptr noundef %13)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %14 = load ptr, ptr %sitmp, align 8, !tbaa !4
  %call15 = call ptr @OBJ_nid2obj(i32 noundef 51)
  %call16 = call ptr @CMS_signed_get0_data_by_OBJ(ptr noundef %14, ptr noundef %call15, i32 noundef -3, i32 noundef 4)
  store ptr %call16, ptr %messageDigest, align 8, !tbaa !4
  %15 = load ptr, ptr %messageDigest, align 8, !tbaa !4
  %tobool17 = icmp ne ptr %15, null
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 163, ptr noundef @__func__.cms_copy_messageDigest)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 114, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %16 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %messageDigest, align 8, !tbaa !4
  %call20 = call i32 @CMS_signed_add1_attr_by_NID(ptr noundef %16, i32 noundef 51, i32 noundef 4, ptr noundef %17, i32 noundef -1)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end19
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end19
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then22, %if.then18, %if.then13, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %messageDigest) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup23 [
    i32 4, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  %18 = load i32, ptr %i, align 4, !tbaa !19
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4, !tbaa !19
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 174, ptr noundef @__func__.cms_copy_messageDigest)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 131, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23

cleanup23:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sitmp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinfos) #5
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @cms_set_si_contentType_attr(ptr noundef %cms, ptr noundef %si) #0 {
entry:
  %cms.addr = alloca ptr, align 8
  %si.addr = alloca ptr, align 8
  %ctype = alloca ptr, align 8
  store ptr %cms, ptr %cms.addr, align 8, !tbaa !4
  store ptr %si, ptr %si.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctype) #5
  %0 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %d, align 8, !tbaa !8
  %encapContentInfo = getelementptr inbounds %struct.CMS_SignedData_st, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %encapContentInfo, align 8, !tbaa !12
  %eContentType = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %eContentType, align 8, !tbaa !13
  store ptr %3, ptr %ctype, align 8, !tbaa !4
  %4 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ctype, align 8, !tbaa !4
  %call = call i32 @CMS_signed_add1_attr_by_NID(ptr noundef %4, i32 noundef 50, i32 noundef 6, ptr noundef %5, i32 noundef -1)
  %cmp = icmp sgt i32 %call, 0
  %conv = zext i1 %cmp to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctype) #5
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @CMS_SignerInfo_sign(ptr noundef %si) #0 {
entry:
  %retval = alloca i32, align 4
  %si.addr = alloca ptr, align 8
  %mctx = alloca ptr, align 8
  %pctx = alloca ptr, align 8
  %abuf = alloca ptr, align 8
  %alen = alloca i32, align 4
  %siglen = alloca i64, align 8
  %ctx = alloca ptr, align 8
  %md_name = alloca [50 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %si, ptr %si.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mctx) #5
  %0 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %mctx1 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %0, i32 0, i32 9
  %1 = load ptr, ptr %mctx1, align 8, !tbaa !29
  store ptr %1, ptr %mctx, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pctx) #5
  store ptr null, ptr %pctx, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %abuf) #5
  store ptr null, ptr %abuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %alen) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %siglen) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #5
  %2 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %cms_ctx = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %2, i32 0, i32 11
  %3 = load ptr, ptr %cms_ctx, align 8, !tbaa !25
  store ptr %3, ptr %ctx, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 50, ptr %md_name) #5
  %arraydecay = getelementptr inbounds [50 x i8], ptr %md_name, i64 0, i64 0
  %4 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %digestAlgorithm = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %digestAlgorithm, align 8, !tbaa !33
  %algorithm = getelementptr inbounds %struct.X509_algor_st, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %algorithm, align 8, !tbaa !46
  %call = call i32 @OBJ_obj2txt(ptr noundef %arraydecay, i32 noundef 50, ptr noundef %6, i32 noundef 0)
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %call2 = call i32 @CMS_signed_get_attr_by_NID(ptr noundef %7, i32 noundef 52, i32 noundef -1)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %call5 = call i32 @cms_add1_signingTime(ptr noundef %8, ptr noundef null)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.then4
  br label %err

if.end7:                                          ; preds = %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %9 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %call9 = call i32 @ossl_cms_si_check_attributes(ptr noundef %9)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  br label %err

if.end12:                                         ; preds = %if.end8
  %10 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pctx13 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %10, i32 0, i32 10
  %11 = load ptr, ptr %pctx13, align 8, !tbaa !30
  %tobool14 = icmp ne ptr %11, null
  br i1 %tobool14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  %12 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pctx16 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %12, i32 0, i32 10
  %13 = load ptr, ptr %pctx16, align 8, !tbaa !30
  store ptr %13, ptr %pctx, align 8, !tbaa !4
  br label %if.end26

if.else:                                          ; preds = %if.end12
  %14 = load ptr, ptr %mctx, align 8, !tbaa !4
  %call17 = call i32 @EVP_MD_CTX_reset(ptr noundef %14)
  %15 = load ptr, ptr %mctx, align 8, !tbaa !4
  %arraydecay18 = getelementptr inbounds [50 x i8], ptr %md_name, i64 0, i64 0
  %16 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call19 = call ptr @ossl_cms_ctx_get0_libctx(ptr noundef %16)
  %17 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call20 = call ptr @ossl_cms_ctx_get0_propq(ptr noundef %17)
  %18 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pkey = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %18, i32 0, i32 8
  %19 = load ptr, ptr %pkey, align 8, !tbaa !27
  %call21 = call i32 @EVP_DigestSignInit_ex(ptr noundef %15, ptr noundef %pctx, ptr noundef %arraydecay18, ptr noundef %call19, ptr noundef %call20, ptr noundef %19, ptr noundef null)
  %cmp22 = icmp sle i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.else
  br label %err

if.end24:                                         ; preds = %if.else
  %20 = load ptr, ptr %pctx, align 8, !tbaa !4
  %21 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pctx25 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %21, i32 0, i32 10
  store ptr %20, ptr %pctx25, align 8, !tbaa !30
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.then15
  %22 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %signedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %signedAttrs, align 8, !tbaa !37
  %call27 = call ptr @CMS_Attributes_Sign_it()
  %call28 = call i32 @ASN1_item_i2d(ptr noundef %23, ptr noundef %abuf, ptr noundef %call27)
  store i32 %call28, ptr %alen, align 4, !tbaa !19
  %24 = load ptr, ptr %abuf, align 8, !tbaa !4
  %tobool29 = icmp ne ptr %24, null
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end26
  br label %err

if.end31:                                         ; preds = %if.end26
  %25 = load ptr, ptr %mctx, align 8, !tbaa !4
  %26 = load ptr, ptr %abuf, align 8, !tbaa !4
  %27 = load i32, ptr %alen, align 4, !tbaa !19
  %conv = sext i32 %27 to i64
  %call32 = call i32 @EVP_DigestSignUpdate(ptr noundef %25, ptr noundef %26, i64 noundef %conv)
  %cmp33 = icmp sle i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end31
  br label %err

if.end36:                                         ; preds = %if.end31
  %28 = load ptr, ptr %mctx, align 8, !tbaa !4
  %call37 = call i32 @EVP_DigestSignFinal(ptr noundef %28, ptr noundef null, ptr noundef %siglen)
  %cmp38 = icmp sle i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end36
  br label %err

if.end41:                                         ; preds = %if.end36
  %29 = load ptr, ptr %abuf, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %29, ptr noundef @.str, i32 noundef 850)
  %30 = load i64, ptr %siglen, align 8, !tbaa !49
  %call42 = call noalias ptr @CRYPTO_malloc(i64 noundef %30, ptr noundef @.str, i32 noundef 851)
  store ptr %call42, ptr %abuf, align 8, !tbaa !4
  %31 = load ptr, ptr %abuf, align 8, !tbaa !4
  %cmp43 = icmp eq ptr %31, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  br label %err

if.end46:                                         ; preds = %if.end41
  %32 = load ptr, ptr %mctx, align 8, !tbaa !4
  %33 = load ptr, ptr %abuf, align 8, !tbaa !4
  %call47 = call i32 @EVP_DigestSignFinal(ptr noundef %32, ptr noundef %33, ptr noundef %siglen)
  %cmp48 = icmp sle i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  br label %err

if.end51:                                         ; preds = %if.end46
  %34 = load ptr, ptr %mctx, align 8, !tbaa !4
  %call52 = call i32 @EVP_MD_CTX_reset(ptr noundef %34)
  %35 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %signature = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %35, i32 0, i32 5
  %36 = load ptr, ptr %signature, align 8, !tbaa !50
  %37 = load ptr, ptr %abuf, align 8, !tbaa !4
  %38 = load i64, ptr %siglen, align 8, !tbaa !49
  %conv53 = trunc i64 %38 to i32
  call void @ASN1_STRING_set0(ptr noundef %36, ptr noundef %37, i32 noundef %conv53)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

err:                                              ; preds = %if.then50, %if.then45, %if.then40, %if.then35, %if.then30, %if.then23, %if.then11, %if.then6
  %39 = load ptr, ptr %abuf, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %39, ptr noundef @.str, i32 noundef 864)
  %40 = load ptr, ptr %mctx, align 8, !tbaa !4
  %call54 = call i32 @EVP_MD_CTX_reset(ptr noundef %40)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end51, %if.then
  call void @llvm.lifetime.end.p0(i64 50, ptr %md_name) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %siglen) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %alen) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %abuf) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pctx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %mctx) #5
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

declare i32 @CMS_add1_cert(ptr noundef, ptr noundef) #1

declare ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @ossl_cms_ctx_get0_libctx(ptr noundef) #1

declare ptr @ossl_cms_ctx_get0_propq(ptr noundef) #1

declare i32 @EVP_PKEY_sign_init(ptr noundef) #1

declare i32 @EVP_PKEY_CTX_set_signature_md(ptr noundef, ptr noundef) #1

declare i32 @EVP_DigestSignInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @EVP_MD_get0_name(ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_CMS_SignerInfo_sk_type(ptr noundef %sk) #3 {
entry:
  %sk.addr = alloca ptr, align 8
  store ptr %sk, ptr %sk.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sk.addr, align 8, !tbaa !4
  ret ptr %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_CMS_SignerInfo_type(ptr noundef %ptr) #3 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  ret ptr %0
}

declare void @ASN1_item_free(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @ossl_cms_SignerInfos_set_cmsctx(ptr noundef %cms) #0 {
entry:
  %cms.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %si = alloca ptr, align 8
  %sinfos = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  store ptr %cms, ptr %cms.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %si) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinfos) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #5
  %0 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %call = call ptr @ossl_cms_get0_cmsctx(ptr noundef %0)
  store ptr %call, ptr %ctx, align 8, !tbaa !4
  %call1 = call i32 @ERR_set_mark()
  %1 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %call2 = call ptr @CMS_get0_SignerInfos(ptr noundef %1)
  store ptr %call2, ptr %sinfos, align 8, !tbaa !4
  %call3 = call i32 @ERR_pop_to_mark()
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !19
  %3 = load ptr, ptr %sinfos, align 8, !tbaa !4
  %call4 = call ptr @ossl_check_const_CMS_SignerInfo_sk_type(ptr noundef %3)
  %call5 = call i32 @OPENSSL_sk_num(ptr noundef %call4)
  %cmp = icmp slt i32 %2, %call5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %sinfos, align 8, !tbaa !4
  %call6 = call ptr @ossl_check_const_CMS_SignerInfo_sk_type(ptr noundef %4)
  %5 = load i32, ptr %i, align 4, !tbaa !19
  %call7 = call ptr @OPENSSL_sk_value(ptr noundef %call6, i32 noundef %5)
  store ptr %call7, ptr %si, align 8, !tbaa !4
  %6 = load ptr, ptr %si, align 8, !tbaa !4
  %cmp8 = icmp ne ptr %6, null
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %ctx, align 8, !tbaa !4
  %8 = load ptr, ptr %si, align 8, !tbaa !4
  %cms_ctx = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %8, i32 0, i32 11
  store ptr %7, ptr %cms_ctx, align 8, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !tbaa !19
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4, !tbaa !19
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinfos) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %si) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

declare i32 @ERR_set_mark() #1

; Function Attrs: nounwind uwtable
define ptr @CMS_get0_SignerInfos(ptr noundef %cms) #0 {
entry:
  %cms.addr = alloca ptr, align 8
  %sd = alloca ptr, align 8
  store ptr %cms, ptr %cms.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sd) #5
  %0 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %call = call ptr @cms_get0_signed(ptr noundef %0)
  store ptr %call, ptr %sd, align 8, !tbaa !4
  %1 = load ptr, ptr %sd, align 8, !tbaa !4
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %sd, align 8, !tbaa !4
  %signerInfos = getelementptr inbounds %struct.CMS_SignedData_st, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %signerInfos, align 8, !tbaa !38
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ null, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %sd) #5
  ret ptr %cond
}

declare i32 @ERR_pop_to_mark() #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_const_CMS_SignerInfo_sk_type(ptr noundef %sk) #3 {
entry:
  %sk.addr = alloca ptr, align 8
  store ptr %sk, ptr %sk.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sk.addr, align 8, !tbaa !4
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define ptr @CMS_SignerInfo_get0_pkey_ctx(ptr noundef %si) #0 {
entry:
  %si.addr = alloca ptr, align 8
  store ptr %si, ptr %si.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pctx = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %0, i32 0, i32 10
  %1 = load ptr, ptr %pctx, align 8, !tbaa !30
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define ptr @CMS_SignerInfo_get0_md_ctx(ptr noundef %si) #0 {
entry:
  %si.addr = alloca ptr, align 8
  store ptr %si, ptr %si.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %mctx = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %0, i32 0, i32 9
  %1 = load ptr, ptr %mctx, align 8, !tbaa !29
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define internal ptr @cms_get0_signed(ptr noundef %cms) #0 {
entry:
  %retval = alloca ptr, align 8
  %cms.addr = alloca ptr, align 8
  store ptr %cms, ptr %cms.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %contentType = getelementptr inbounds %struct.CMS_ContentInfo_st, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %contentType, align 8, !tbaa !16
  %call = call i32 @OBJ_obj2nid(ptr noundef %1)
  %cmp = icmp ne i32 %call, 22
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 30, ptr noundef @__func__.cms_get0_signed)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 108, ptr noundef null)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %d, align 8, !tbaa !8
  store ptr %3, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define ptr @CMS_get0_signers(ptr noundef %cms) #0 {
entry:
  %retval = alloca ptr, align 8
  %cms.addr = alloca ptr, align 8
  %signers = alloca ptr, align 8
  %sinfos = alloca ptr, align 8
  %si = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cms, ptr %cms.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %signers) #5
  store ptr null, ptr %signers, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinfos) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %si) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  %0 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %call = call ptr @CMS_get0_SignerInfos(ptr noundef %0)
  store ptr %call, ptr %sinfos, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !19
  %2 = load ptr, ptr %sinfos, align 8, !tbaa !4
  %call1 = call ptr @ossl_check_const_CMS_SignerInfo_sk_type(ptr noundef %2)
  %call2 = call i32 @OPENSSL_sk_num(ptr noundef %call1)
  %cmp = icmp slt i32 %1, %call2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %sinfos, align 8, !tbaa !4
  %call3 = call ptr @ossl_check_const_CMS_SignerInfo_sk_type(ptr noundef %3)
  %4 = load i32, ptr %i, align 4, !tbaa !19
  %call4 = call ptr @OPENSSL_sk_value(ptr noundef %call3, i32 noundef %4)
  store ptr %call4, ptr %si, align 8, !tbaa !4
  %5 = load ptr, ptr %si, align 8, !tbaa !4
  %signer = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %signer, align 8, !tbaa !28
  %cmp5 = icmp ne ptr %6, null
  br i1 %cmp5, label %if.then, label %if.end10

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %si, align 8, !tbaa !4
  %signer6 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %7, i32 0, i32 7
  %8 = load ptr, ptr %signer6, align 8, !tbaa !28
  %call7 = call i32 @ossl_x509_add_cert_new(ptr noundef %signers, ptr noundef %8, i32 noundef 0)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %if.then8

if.then8:                                         ; preds = %if.then
  %9 = load ptr, ptr %signers, align 8, !tbaa !4
  %call9 = call ptr @ossl_check_X509_sk_type(ptr noundef %9)
  call void @OPENSSL_sk_free(ptr noundef %call9)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %10 = load i32, ptr %i, align 4, !tbaa !19
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4, !tbaa !19
  br label %for.cond, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %signers, align 8, !tbaa !4
  store ptr %11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %si) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinfos) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %signers) #5
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

declare i32 @ossl_x509_add_cert_new(ptr noundef, ptr noundef, i32 noundef) #1

declare void @OPENSSL_sk_free(ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_X509_sk_type(ptr noundef %sk) #3 {
entry:
  %sk.addr = alloca ptr, align 8
  store ptr %sk, ptr %sk.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sk.addr, align 8, !tbaa !4
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define void @CMS_SignerInfo_set1_signer_cert(ptr noundef %si, ptr noundef %signer) #0 {
entry:
  %si.addr = alloca ptr, align 8
  %signer.addr = alloca ptr, align 8
  store ptr %si, ptr %si.addr, align 8, !tbaa !4
  store ptr %signer, ptr %signer.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %signer.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %signer.addr, align 8, !tbaa !4
  %call = call i32 @X509_up_ref(ptr noundef %1)
  %2 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pkey = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %pkey, align 8, !tbaa !27
  call void @EVP_PKEY_free(ptr noundef %3)
  %4 = load ptr, ptr %signer.addr, align 8, !tbaa !4
  %call1 = call ptr @X509_get_pubkey(ptr noundef %4)
  %5 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pkey2 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %5, i32 0, i32 8
  store ptr %call1, ptr %pkey2, align 8, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %signer3 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %6, i32 0, i32 7
  %7 = load ptr, ptr %signer3, align 8, !tbaa !28
  call void @X509_free(ptr noundef %7)
  %8 = load ptr, ptr %signer.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %signer4 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %9, i32 0, i32 7
  store ptr %8, ptr %signer4, align 8, !tbaa !28
  ret void
}

declare void @EVP_PKEY_free(ptr noundef) #1

declare ptr @X509_get_pubkey(ptr noundef) #1

declare void @X509_free(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @CMS_SignerInfo_get0_signer_id(ptr noundef %si, ptr noundef %keyid, ptr noundef %issuer, ptr noundef %sno) #0 {
entry:
  %si.addr = alloca ptr, align 8
  %keyid.addr = alloca ptr, align 8
  %issuer.addr = alloca ptr, align 8
  %sno.addr = alloca ptr, align 8
  store ptr %si, ptr %si.addr, align 8, !tbaa !4
  store ptr %keyid, ptr %keyid.addr, align 8, !tbaa !4
  store ptr %issuer, ptr %issuer.addr, align 8, !tbaa !4
  store ptr %sno, ptr %sno.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %sid = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %sid, align 8, !tbaa !32
  %2 = load ptr, ptr %keyid.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %issuer.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %sno.addr, align 8, !tbaa !4
  %call = call i32 @ossl_cms_SignerIdentifier_get0_signer_id(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @CMS_SignerInfo_cert_cmp(ptr noundef %si, ptr noundef %cert) #0 {
entry:
  %si.addr = alloca ptr, align 8
  %cert.addr = alloca ptr, align 8
  store ptr %si, ptr %si.addr, align 8, !tbaa !4
  store ptr %cert, ptr %cert.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %sid = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %sid, align 8, !tbaa !32
  %2 = load ptr, ptr %cert.addr, align 8, !tbaa !4
  %call = call i32 @ossl_cms_SignerIdentifier_cert_cmp(ptr noundef %1, ptr noundef %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @CMS_set1_signers_certs(ptr noundef %cms, ptr noundef %scerts, i32 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %cms.addr = alloca ptr, align 8
  %scerts.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %sd = alloca ptr, align 8
  %si = alloca ptr, align 8
  %cch = alloca ptr, align 8
  %certs = alloca ptr, align 8
  %x = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cms, ptr %cms.addr, align 8, !tbaa !4
  store ptr %scerts, ptr %scerts.addr, align 8, !tbaa !4
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %sd) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %si) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cch) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %certs) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5
  store i32 0, ptr %ret, align 4, !tbaa !19
  %0 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %call = call ptr @cms_get0_signed(ptr noundef %0)
  store ptr %call, ptr %sd, align 8, !tbaa !4
  %1 = load ptr, ptr %sd, align 8, !tbaa !4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sd, align 8, !tbaa !4
  %certificates = getelementptr inbounds %struct.CMS_SignedData_st, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %certificates, align 8, !tbaa !53
  store ptr %3, ptr %certs, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %if.end
  %4 = load i32, ptr %i, align 4, !tbaa !19
  %5 = load ptr, ptr %sd, align 8, !tbaa !4
  %signerInfos = getelementptr inbounds %struct.CMS_SignedData_st, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %signerInfos, align 8, !tbaa !38
  %call1 = call ptr @ossl_check_const_CMS_SignerInfo_sk_type(ptr noundef %6)
  %call2 = call i32 @OPENSSL_sk_num(ptr noundef %call1)
  %cmp3 = icmp slt i32 %4, %call2
  br i1 %cmp3, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %sd, align 8, !tbaa !4
  %signerInfos4 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %signerInfos4, align 8, !tbaa !38
  %call5 = call ptr @ossl_check_const_CMS_SignerInfo_sk_type(ptr noundef %8)
  %9 = load i32, ptr %i, align 4, !tbaa !19
  %call6 = call ptr @OPENSSL_sk_value(ptr noundef %call5, i32 noundef %9)
  store ptr %call6, ptr %si, align 8, !tbaa !4
  %10 = load ptr, ptr %si, align 8, !tbaa !4
  %signer = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %10, i32 0, i32 7
  %11 = load ptr, ptr %signer, align 8, !tbaa !28
  %cmp7 = icmp ne ptr %11, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  br label %for.inc42

if.end9:                                          ; preds = %for.body
  store i32 0, ptr %j, align 4, !tbaa !19
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %if.end9
  %12 = load i32, ptr %j, align 4, !tbaa !19
  %13 = load ptr, ptr %scerts.addr, align 8, !tbaa !4
  %call11 = call ptr @ossl_check_const_X509_sk_type(ptr noundef %13)
  %call12 = call i32 @OPENSSL_sk_num(ptr noundef %call11)
  %cmp13 = icmp slt i32 %12, %call12
  br i1 %cmp13, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond10
  %14 = load ptr, ptr %scerts.addr, align 8, !tbaa !4
  %call15 = call ptr @ossl_check_const_X509_sk_type(ptr noundef %14)
  %15 = load i32, ptr %j, align 4, !tbaa !19
  %call16 = call ptr @OPENSSL_sk_value(ptr noundef %call15, i32 noundef %15)
  store ptr %call16, ptr %x, align 8, !tbaa !4
  %16 = load ptr, ptr %si, align 8, !tbaa !4
  %17 = load ptr, ptr %x, align 8, !tbaa !4
  %call17 = call i32 @CMS_SignerInfo_cert_cmp(ptr noundef %16, ptr noundef %17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.body14
  %18 = load ptr, ptr %si, align 8, !tbaa !4
  %19 = load ptr, ptr %x, align 8, !tbaa !4
  call void @CMS_SignerInfo_set1_signer_cert(ptr noundef %18, ptr noundef %19)
  %20 = load i32, ptr %ret, align 4, !tbaa !19
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %ret, align 4, !tbaa !19
  br label %for.end

if.end20:                                         ; preds = %for.body14
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %21 = load i32, ptr %j, align 4, !tbaa !19
  %inc21 = add nsw i32 %21, 1
  store i32 %inc21, ptr %j, align 4, !tbaa !19
  br label %for.cond10, !llvm.loop !54

for.end:                                          ; preds = %if.then19, %for.cond10
  %22 = load ptr, ptr %si, align 8, !tbaa !4
  %signer22 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %22, i32 0, i32 7
  %23 = load ptr, ptr %signer22, align 8, !tbaa !28
  %cmp23 = icmp ne ptr %23, null
  br i1 %cmp23, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %24 = load i32, ptr %flags.addr, align 4, !tbaa !19
  %and = and i32 %24, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false, %for.end
  br label %for.inc42

if.end25:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %j, align 4, !tbaa !19
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc39, %if.end25
  %25 = load i32, ptr %j, align 4, !tbaa !19
  %26 = load ptr, ptr %certs, align 8, !tbaa !4
  %call27 = call i32 @sk_CMS_CertificateChoices_num(ptr noundef %26)
  %cmp28 = icmp slt i32 %25, %call27
  br i1 %cmp28, label %for.body29, label %for.end41

for.body29:                                       ; preds = %for.cond26
  %27 = load ptr, ptr %certs, align 8, !tbaa !4
  %28 = load i32, ptr %j, align 4, !tbaa !19
  %call30 = call ptr @sk_CMS_CertificateChoices_value(ptr noundef %27, i32 noundef %28)
  store ptr %call30, ptr %cch, align 8, !tbaa !4
  %29 = load ptr, ptr %cch, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.CMS_CertificateChoices, ptr %29, i32 0, i32 0
  %30 = load i32, ptr %type, align 8, !tbaa !55
  %cmp31 = icmp ne i32 %30, 0
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.body29
  br label %for.inc39

if.end33:                                         ; preds = %for.body29
  %31 = load ptr, ptr %cch, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.CMS_CertificateChoices, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %d, align 8, !tbaa !8
  store ptr %32, ptr %x, align 8, !tbaa !4
  %33 = load ptr, ptr %si, align 8, !tbaa !4
  %34 = load ptr, ptr %x, align 8, !tbaa !4
  %call34 = call i32 @CMS_SignerInfo_cert_cmp(ptr noundef %33, ptr noundef %34)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  %35 = load ptr, ptr %si, align 8, !tbaa !4
  %36 = load ptr, ptr %x, align 8, !tbaa !4
  call void @CMS_SignerInfo_set1_signer_cert(ptr noundef %35, ptr noundef %36)
  %37 = load i32, ptr %ret, align 4, !tbaa !19
  %inc37 = add nsw i32 %37, 1
  store i32 %inc37, ptr %ret, align 4, !tbaa !19
  br label %for.end41

if.end38:                                         ; preds = %if.end33
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38, %if.then32
  %38 = load i32, ptr %j, align 4, !tbaa !19
  %inc40 = add nsw i32 %38, 1
  store i32 %inc40, ptr %j, align 4, !tbaa !19
  br label %for.cond26, !llvm.loop !57

for.end41:                                        ; preds = %if.then36, %for.cond26
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41, %if.then24, %if.then8
  %39 = load i32, ptr %i, align 4, !tbaa !19
  %inc43 = add nsw i32 %39, 1
  store i32 %inc43, ptr %i, align 4, !tbaa !19
  br label %for.cond, !llvm.loop !58

for.end44:                                        ; preds = %for.cond
  %40 = load i32, ptr %ret, align 4, !tbaa !19
  store i32 %40, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end44, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %certs) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cch) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %si) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sd) #5
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_const_X509_sk_type(ptr noundef %sk) #3 {
entry:
  %sk.addr = alloca ptr, align 8
  store ptr %sk, ptr %sk.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sk.addr, align 8, !tbaa !4
  ret ptr %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sk_CMS_CertificateChoices_num(ptr noundef %sk) #3 {
entry:
  %sk.addr = alloca ptr, align 8
  store ptr %sk, ptr %sk.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sk.addr, align 8, !tbaa !4
  %call = call i32 @OPENSSL_sk_num(ptr noundef %0)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @sk_CMS_CertificateChoices_value(ptr noundef %sk, i32 noundef %idx) #3 {
entry:
  %sk.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  store ptr %sk, ptr %sk.addr, align 8, !tbaa !4
  store i32 %idx, ptr %idx.addr, align 4, !tbaa !19
  %0 = load ptr, ptr %sk.addr, align 8, !tbaa !4
  %1 = load i32, ptr %idx.addr, align 4, !tbaa !19
  %call = call ptr @OPENSSL_sk_value(ptr noundef %0, i32 noundef %1)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define void @CMS_SignerInfo_get0_algs(ptr noundef %si, ptr noundef %pk, ptr noundef %signer, ptr noundef %pdig, ptr noundef %psig) #0 {
entry:
  %si.addr = alloca ptr, align 8
  %pk.addr = alloca ptr, align 8
  %signer.addr = alloca ptr, align 8
  %pdig.addr = alloca ptr, align 8
  %psig.addr = alloca ptr, align 8
  store ptr %si, ptr %si.addr, align 8, !tbaa !4
  store ptr %pk, ptr %pk.addr, align 8, !tbaa !4
  store ptr %signer, ptr %signer.addr, align 8, !tbaa !4
  store ptr %pdig, ptr %pdig.addr, align 8, !tbaa !4
  store ptr %psig, ptr %psig.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %pk.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pkey = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %pkey, align 8, !tbaa !27
  %3 = load ptr, ptr %pk.addr, align 8, !tbaa !4
  store ptr %2, ptr %3, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %signer.addr, align 8, !tbaa !4
  %cmp1 = icmp ne ptr %4, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %signer3 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %signer3, align 8, !tbaa !28
  %7 = load ptr, ptr %signer.addr, align 8, !tbaa !4
  store ptr %6, ptr %7, align 8, !tbaa !4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %8 = load ptr, ptr %pdig.addr, align 8, !tbaa !4
  %cmp5 = icmp ne ptr %8, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  %9 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %digestAlgorithm = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %digestAlgorithm, align 8, !tbaa !33
  %11 = load ptr, ptr %pdig.addr, align 8, !tbaa !4
  store ptr %10, ptr %11, align 8, !tbaa !4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %12 = load ptr, ptr %psig.addr, align 8, !tbaa !4
  %cmp8 = icmp ne ptr %12, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  %13 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %signatureAlgorithm = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %signatureAlgorithm, align 8, !tbaa !59
  %15 = load ptr, ptr %psig.addr, align 8, !tbaa !4
  store ptr %14, ptr %15, align 8, !tbaa !4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @CMS_SignerInfo_get0_signature(ptr noundef %si) #0 {
entry:
  %si.addr = alloca ptr, align 8
  store ptr %si, ptr %si.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %signature = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %signature, align 8, !tbaa !50
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define i32 @ossl_cms_SignedData_final(ptr noundef %cms, ptr noundef %chain) #0 {
entry:
  %retval = alloca i32, align 4
  %cms.addr = alloca ptr, align 8
  %chain.addr = alloca ptr, align 8
  %sinfos = alloca ptr, align 8
  %si = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cms, ptr %cms.addr, align 8, !tbaa !4
  store ptr %chain, ptr %chain.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sinfos) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %si) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  %0 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %call = call ptr @CMS_get0_SignerInfos(ptr noundef %0)
  store ptr %call, ptr %sinfos, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !19
  %2 = load ptr, ptr %sinfos, align 8, !tbaa !4
  %call1 = call ptr @ossl_check_const_CMS_SignerInfo_sk_type(ptr noundef %2)
  %call2 = call i32 @OPENSSL_sk_num(ptr noundef %call1)
  %cmp = icmp slt i32 %1, %call2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %sinfos, align 8, !tbaa !4
  %call3 = call ptr @ossl_check_const_CMS_SignerInfo_sk_type(ptr noundef %3)
  %4 = load i32, ptr %i, align 4, !tbaa !19
  %call4 = call ptr @OPENSSL_sk_value(ptr noundef %call3, i32 noundef %4)
  store ptr %call4, ptr %si, align 8, !tbaa !4
  %5 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %si, align 8, !tbaa !4
  %7 = load ptr, ptr %chain.addr, align 8, !tbaa !4
  %call5 = call i32 @cms_SignerInfo_content_sign(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4, !tbaa !19
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4, !tbaa !19
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %d, align 8, !tbaa !8
  %encapContentInfo = getelementptr inbounds %struct.CMS_SignedData_st, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %encapContentInfo, align 8, !tbaa !12
  %partial = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, ptr %11, i32 0, i32 2
  store i32 0, ptr %partial, align 8, !tbaa !15
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %si) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sinfos) #5
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @cms_SignerInfo_content_sign(ptr noundef %cms, ptr noundef %si, ptr noundef %chain) #0 {
entry:
  %retval = alloca i32, align 4
  %cms.addr = alloca ptr, align 8
  %si.addr = alloca ptr, align 8
  %chain.addr = alloca ptr, align 8
  %mctx = alloca ptr, align 8
  %r = alloca i32, align 4
  %pctx = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %md = alloca [64 x i8], align 16
  %mdlen = alloca i32, align 4
  %sig = alloca ptr, align 8
  %siglen = alloca i64, align 8
  %md38 = alloca [64 x i8], align 16
  %mdlen39 = alloca i32, align 4
  %sig68 = alloca ptr, align 8
  %siglen69 = alloca i32, align 4
  store ptr %cms, ptr %cms.addr, align 8, !tbaa !4
  store ptr %si, ptr %si.addr, align 8, !tbaa !4
  store ptr %chain, ptr %chain.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mctx) #5
  %call = call ptr @EVP_MD_CTX_new()
  store ptr %call, ptr %mctx, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #5
  store i32 0, ptr %r, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %pctx) #5
  store ptr null, ptr %pctx, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #5
  %0 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %call1 = call ptr @ossl_cms_get0_cmsctx(ptr noundef %0)
  store ptr %call1, ptr %ctx, align 8, !tbaa !4
  %1 = load ptr, ptr %mctx, align 8, !tbaa !4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 710, ptr noundef @__func__.cms_SignerInfo_content_sign)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pkey = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %pkey, align 8, !tbaa !27
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 715, ptr noundef @__func__.cms_SignerInfo_content_sign)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 133, ptr noundef null)
  br label %err

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %mctx, align 8, !tbaa !4
  %5 = load ptr, ptr %chain.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %digestAlgorithm = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %digestAlgorithm, align 8, !tbaa !33
  %call5 = call i32 @ossl_cms_DigestAlgorithm_find_ctx(ptr noundef %4, ptr noundef %5, ptr noundef %7)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  br label %err

if.end7:                                          ; preds = %if.end4
  %8 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pctx8 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %8, i32 0, i32 10
  %9 = load ptr, ptr %pctx8, align 8, !tbaa !30
  %tobool9 = icmp ne ptr %9, null
  br i1 %tobool9, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %10 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %call10 = call i32 @cms_sd_asn1_ctrl(ptr noundef %10, i32 noundef 0)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  br label %err

if.end13:                                         ; preds = %land.lhs.true, %if.end7
  %11 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %call14 = call i32 @CMS_signed_get_attr_count(ptr noundef %11)
  %cmp15 = icmp sge i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 64, ptr %md) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %mdlen) #5
  %12 = load ptr, ptr %mctx, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [64 x i8], ptr %md, i64 0, i64 0
  %call17 = call i32 @EVP_DigestFinal_ex(ptr noundef %12, ptr noundef %arraydecay, ptr noundef %mdlen)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.then16
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.then16
  %13 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %arraydecay21 = getelementptr inbounds [64 x i8], ptr %md, i64 0, i64 0
  %14 = load i32, ptr %mdlen, align 4, !tbaa !19
  %call22 = call i32 @CMS_signed_add1_attr_by_NID(ptr noundef %13, i32 noundef 51, i32 noundef 4, ptr noundef %arraydecay21, i32 noundef %14)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end20
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %15 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %call26 = call i32 @cms_set_si_contentType_attr(ptr noundef %15, ptr noundef %16)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end25
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %17 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %call30 = call i32 @CMS_SignerInfo_sign(ptr noundef %17)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end29
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.then28, %if.then24, %if.then19, %if.end33
  call void @llvm.lifetime.end.p0(i64 4, ptr %mdlen) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %md) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup92 [
    i32 0, label %cleanup.cont
    i32 2, label %err
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end91

if.else:                                          ; preds = %if.end13
  %18 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pctx35 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %18, i32 0, i32 10
  %19 = load ptr, ptr %pctx35, align 8, !tbaa !30
  %tobool36 = icmp ne ptr %19, null
  br i1 %tobool36, label %if.then37, label %if.else67

if.then37:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %siglen) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr %md38) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %mdlen39) #5
  %20 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pctx40 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %20, i32 0, i32 10
  %21 = load ptr, ptr %pctx40, align 8, !tbaa !30
  store ptr %21, ptr %pctx, align 8, !tbaa !4
  %22 = load ptr, ptr %mctx, align 8, !tbaa !4
  %arraydecay41 = getelementptr inbounds [64 x i8], ptr %md38, i64 0, i64 0
  %call42 = call i32 @EVP_DigestFinal_ex(ptr noundef %22, ptr noundef %arraydecay41, ptr noundef %mdlen39)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.then37
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup61

if.end45:                                         ; preds = %if.then37
  %23 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pkey46 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %23, i32 0, i32 8
  %24 = load ptr, ptr %pkey46, align 8, !tbaa !27
  %call47 = call i32 @EVP_PKEY_get_size(ptr noundef %24)
  %conv = sext i32 %call47 to i64
  store i64 %conv, ptr %siglen, align 8, !tbaa !49
  %25 = load i64, ptr %siglen, align 8, !tbaa !49
  %call48 = call noalias ptr @CRYPTO_malloc(i64 noundef %25, ptr noundef @.str, i32 noundef 754)
  store ptr %call48, ptr %sig, align 8, !tbaa !4
  %26 = load ptr, ptr %sig, align 8, !tbaa !4
  %cmp49 = icmp eq ptr %26, null
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end45
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 756, ptr noundef @__func__.cms_SignerInfo_content_sign)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, ptr noundef null)
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup61

if.end52:                                         ; preds = %if.end45
  %27 = load ptr, ptr %pctx, align 8, !tbaa !4
  %28 = load ptr, ptr %sig, align 8, !tbaa !4
  %arraydecay53 = getelementptr inbounds [64 x i8], ptr %md38, i64 0, i64 0
  %29 = load i32, ptr %mdlen39, align 4, !tbaa !19
  %conv54 = zext i32 %29 to i64
  %call55 = call i32 @EVP_PKEY_sign(ptr noundef %27, ptr noundef %28, ptr noundef %siglen, ptr noundef %arraydecay53, i64 noundef %conv54)
  %cmp56 = icmp sle i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end52
  %30 = load ptr, ptr %sig, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %30, ptr noundef @.str, i32 noundef 760)
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup61

if.end59:                                         ; preds = %if.end52
  %31 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %signature = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %31, i32 0, i32 5
  %32 = load ptr, ptr %signature, align 8, !tbaa !50
  %33 = load ptr, ptr %sig, align 8, !tbaa !4
  %34 = load i64, ptr %siglen, align 8, !tbaa !49
  %conv60 = trunc i64 %34 to i32
  call void @ASN1_STRING_set0(ptr noundef %32, ptr noundef %33, i32 noundef %conv60)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup61

cleanup61:                                        ; preds = %if.then58, %if.then51, %if.then44, %if.end59
  call void @llvm.lifetime.end.p0(i64 4, ptr %mdlen39) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %md38) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %siglen) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #5
  %cleanup.dest65 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest65, label %cleanup92 [
    i32 0, label %cleanup.cont66
    i32 2, label %err
  ]

cleanup.cont66:                                   ; preds = %cleanup61
  br label %if.end90

if.else67:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig68) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %siglen69) #5
  %35 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pkey70 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %35, i32 0, i32 8
  %36 = load ptr, ptr %pkey70, align 8, !tbaa !27
  %call71 = call i32 @EVP_PKEY_get_size(ptr noundef %36)
  %conv72 = sext i32 %call71 to i64
  %call73 = call noalias ptr @CRYPTO_malloc(i64 noundef %conv72, ptr noundef @.str, i32 noundef 768)
  store ptr %call73, ptr %sig68, align 8, !tbaa !4
  %37 = load ptr, ptr %sig68, align 8, !tbaa !4
  %cmp74 = icmp eq ptr %37, null
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.else67
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 770, ptr noundef @__func__.cms_SignerInfo_content_sign)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, ptr noundef null)
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup86

if.end77:                                         ; preds = %if.else67
  %38 = load ptr, ptr %mctx, align 8, !tbaa !4
  %39 = load ptr, ptr %sig68, align 8, !tbaa !4
  %40 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pkey78 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %40, i32 0, i32 8
  %41 = load ptr, ptr %pkey78, align 8, !tbaa !27
  %42 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call79 = call ptr @ossl_cms_ctx_get0_libctx(ptr noundef %42)
  %43 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call80 = call ptr @ossl_cms_ctx_get0_propq(ptr noundef %43)
  %call81 = call i32 @EVP_SignFinal_ex(ptr noundef %38, ptr noundef %39, ptr noundef %siglen69, ptr noundef %41, ptr noundef %call79, ptr noundef %call80)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.end84, label %if.then83

if.then83:                                        ; preds = %if.end77
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 776, ptr noundef @__func__.cms_SignerInfo_content_sign)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 139, ptr noundef null)
  %44 = load ptr, ptr %sig68, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %44, ptr noundef @.str, i32 noundef 777)
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup86

if.end84:                                         ; preds = %if.end77
  %45 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %signature85 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %45, i32 0, i32 5
  %46 = load ptr, ptr %signature85, align 8, !tbaa !50
  %47 = load ptr, ptr %sig68, align 8, !tbaa !4
  %48 = load i32, ptr %siglen69, align 4, !tbaa !19
  call void @ASN1_STRING_set0(ptr noundef %46, ptr noundef %47, i32 noundef %48)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup86

cleanup86:                                        ; preds = %if.then83, %if.then76, %if.end84
  call void @llvm.lifetime.end.p0(i64 4, ptr %siglen69) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig68) #5
  %cleanup.dest88 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest88, label %cleanup92 [
    i32 0, label %cleanup.cont89
    i32 2, label %err
  ]

cleanup.cont89:                                   ; preds = %cleanup86
  br label %if.end90

if.end90:                                         ; preds = %cleanup.cont89, %cleanup.cont66
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %cleanup.cont
  store i32 1, ptr %r, align 4, !tbaa !19
  br label %err

err:                                              ; preds = %if.end91, %cleanup86, %cleanup61, %cleanup, %if.then12, %if.then6, %if.then3
  %49 = load ptr, ptr %mctx, align 8, !tbaa !4
  call void @EVP_MD_CTX_free(ptr noundef %49)
  %50 = load ptr, ptr %pctx, align 8, !tbaa !4
  call void @EVP_PKEY_CTX_free(ptr noundef %50)
  %51 = load i32, ptr %r, align 4, !tbaa !19
  store i32 %51, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92

cleanup92:                                        ; preds = %err, %cleanup86, %cleanup61, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %mctx) #5
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
}

declare i32 @CMS_signed_get_attr_by_NID(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @cms_add1_signingTime(ptr noundef %si, ptr noundef %t) #0 {
entry:
  %si.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %tt = alloca ptr, align 8
  %r = alloca i32, align 4
  store ptr %si, ptr %si.addr, align 8, !tbaa !4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tt) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #5
  store i32 0, ptr %r, align 4, !tbaa !19
  %0 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %t.addr, align 8, !tbaa !4
  store ptr %1, ptr %tt, align 8, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call ptr @X509_gmtime_adj(ptr noundef null, i64 noundef 0)
  store ptr %call, ptr %tt, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load ptr, ptr %tt, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %merr

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %tt, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.asn1_string_st, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %type, align 4, !tbaa !61
  %6 = load ptr, ptr %tt, align 8, !tbaa !4
  %call4 = call i32 @CMS_signed_add1_attr_by_NID(ptr noundef %3, i32 noundef 52, i32 noundef %5, ptr noundef %6, i32 noundef -1)
  %cmp5 = icmp sle i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  br label %merr

if.end7:                                          ; preds = %if.end3
  store i32 1, ptr %r, align 4, !tbaa !19
  br label %merr

merr:                                             ; preds = %if.end7, %if.then6, %if.then2
  %7 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %cmp8 = icmp eq ptr %7, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %merr
  %8 = load ptr, ptr %tt, align 8, !tbaa !4
  call void @ASN1_TIME_free(ptr noundef %8)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %merr
  %9 = load i32, ptr %r, align 4, !tbaa !19
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end10
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 568, ptr noundef @__func__.cms_add1_signingTime)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, ptr noundef null)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end10
  %10 = load i32, ptr %r, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tt) #5
  ret i32 %10
}

declare i32 @ossl_cms_si_check_attributes(ptr noundef) #1

declare i32 @EVP_MD_CTX_reset(ptr noundef) #1

declare i32 @ASN1_item_i2d(ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @CMS_Attributes_Sign_it() #1

declare i32 @EVP_DigestSignUpdate(ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @EVP_DigestSignFinal(ptr noundef, ptr noundef, ptr noundef) #1

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) #1

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) #1

declare void @ASN1_STRING_set0(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @CMS_SignerInfo_verify(ptr noundef %si) #0 {
entry:
  %retval = alloca i32, align 4
  %si.addr = alloca ptr, align 8
  %mctx = alloca ptr, align 8
  %abuf = alloca ptr, align 8
  %alen = alloca i32, align 4
  %r = alloca i32, align 4
  %name = alloca [50 x i8], align 16
  %md = alloca ptr, align 8
  %fetched_md = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %libctx = alloca ptr, align 8
  %propq = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %si, ptr %si.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mctx) #5
  store ptr null, ptr %mctx, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %abuf) #5
  store ptr null, ptr %abuf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %alen) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #5
  store i32 -1, ptr %r, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 50, ptr %name) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %md) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %fetched_md) #5
  store ptr null, ptr %fetched_md, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #5
  %0 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %cms_ctx = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %0, i32 0, i32 11
  %1 = load ptr, ptr %cms_ctx, align 8, !tbaa !25
  store ptr %1, ptr %ctx, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %libctx) #5
  %2 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call = call ptr @ossl_cms_ctx_get0_libctx(ptr noundef %2)
  store ptr %call, ptr %libctx, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %propq) #5
  %3 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call1 = call ptr @ossl_cms_ctx_get0_propq(ptr noundef %3)
  store ptr %call1, ptr %propq, align 8, !tbaa !4
  %4 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pkey = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %4, i32 0, i32 8
  %5 = load ptr, ptr %pkey, align 8, !tbaa !27
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 882, ptr noundef @__func__.CMS_SignerInfo_verify)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 134, ptr noundef null)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %call2 = call i32 @ossl_cms_si_check_attributes(ptr noundef %6)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [50 x i8], ptr %name, i64 0, i64 0
  %7 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %digestAlgorithm = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %digestAlgorithm, align 8, !tbaa !33
  %algorithm = getelementptr inbounds %struct.X509_algor_st, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %algorithm, align 8, !tbaa !46
  %call5 = call i32 @OBJ_obj2txt(ptr noundef %arraydecay, i32 noundef 50, ptr noundef %9, i32 noundef 0)
  %call6 = call i32 @ERR_set_mark()
  %10 = load ptr, ptr %libctx, align 8, !tbaa !4
  %arraydecay7 = getelementptr inbounds [50 x i8], ptr %name, i64 0, i64 0
  %11 = load ptr, ptr %propq, align 8, !tbaa !4
  %call8 = call ptr @EVP_MD_fetch(ptr noundef %10, ptr noundef %arraydecay7, ptr noundef %11)
  store ptr %call8, ptr %fetched_md, align 8, !tbaa !4
  %12 = load ptr, ptr %fetched_md, align 8, !tbaa !4
  %cmp9 = icmp ne ptr %12, null
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end4
  %13 = load ptr, ptr %fetched_md, align 8, !tbaa !4
  store ptr %13, ptr %md, align 8, !tbaa !4
  br label %if.end16

if.else:                                          ; preds = %if.end4
  %14 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %digestAlgorithm11 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %digestAlgorithm11, align 8, !tbaa !33
  %algorithm12 = getelementptr inbounds %struct.X509_algor_st, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %algorithm12, align 8, !tbaa !46
  %call13 = call i32 @OBJ_obj2nid(ptr noundef %16)
  %call14 = call ptr @OBJ_nid2sn(i32 noundef %call13)
  %call15 = call ptr @EVP_get_digestbyname(ptr noundef %call14)
  store ptr %call15, ptr %md, align 8, !tbaa !4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then10
  %17 = load ptr, ptr %md, align 8, !tbaa !4
  %cmp17 = icmp eq ptr %17, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %call19 = call i32 @ERR_clear_last_mark()
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 900, ptr noundef @__func__.CMS_SignerInfo_verify)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 149, ptr noundef null)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @ERR_pop_to_mark()
  %18 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %mctx22 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %18, i32 0, i32 9
  %19 = load ptr, ptr %mctx22, align 8, !tbaa !29
  %cmp23 = icmp eq ptr %19, null
  br i1 %cmp23, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.end20
  %call24 = call ptr @EVP_MD_CTX_new()
  %20 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %mctx25 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %20, i32 0, i32 9
  store ptr %call24, ptr %mctx25, align 8, !tbaa !29
  %cmp26 = icmp eq ptr %call24, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 906, ptr noundef @__func__.CMS_SignerInfo_verify)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, ptr noundef null)
  br label %err

if.end28:                                         ; preds = %land.lhs.true, %if.end20
  %21 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %mctx29 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %21, i32 0, i32 9
  %22 = load ptr, ptr %mctx29, align 8, !tbaa !29
  store ptr %22, ptr %mctx, align 8, !tbaa !4
  %23 = load ptr, ptr %mctx, align 8, !tbaa !4
  %24 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pctx = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %24, i32 0, i32 10
  %25 = load ptr, ptr %md, align 8, !tbaa !4
  %call30 = call ptr @EVP_MD_get0_name(ptr noundef %25)
  %26 = load ptr, ptr %libctx, align 8, !tbaa !4
  %27 = load ptr, ptr %propq, align 8, !tbaa !4
  %28 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pkey31 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %28, i32 0, i32 8
  %29 = load ptr, ptr %pkey31, align 8, !tbaa !27
  %call32 = call i32 @EVP_DigestVerifyInit_ex(ptr noundef %23, ptr noundef %pctx, ptr noundef %call30, ptr noundef %26, ptr noundef %27, ptr noundef %29, ptr noundef null)
  %cmp33 = icmp sle i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end28
  br label %err

if.end35:                                         ; preds = %if.end28
  %30 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %call36 = call i32 @cms_sd_asn1_ctrl(ptr noundef %30, i32 noundef 1)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end35
  br label %err

if.end39:                                         ; preds = %if.end35
  %31 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %signedAttrs = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %31, i32 0, i32 3
  %32 = load ptr, ptr %signedAttrs, align 8, !tbaa !37
  %call40 = call ptr @CMS_Attributes_Verify_it()
  %call41 = call i32 @ASN1_item_i2d(ptr noundef %32, ptr noundef %abuf, ptr noundef %call40)
  store i32 %call41, ptr %alen, align 4, !tbaa !19
  %33 = load ptr, ptr %abuf, align 8, !tbaa !4
  %cmp42 = icmp eq ptr %33, null
  br i1 %cmp42, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end39
  %34 = load i32, ptr %alen, align 4, !tbaa !19
  %cmp43 = icmp slt i32 %34, 0
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %lor.lhs.false, %if.end39
  br label %err

if.end45:                                         ; preds = %lor.lhs.false
  %35 = load ptr, ptr %mctx, align 8, !tbaa !4
  %36 = load ptr, ptr %abuf, align 8, !tbaa !4
  %37 = load i32, ptr %alen, align 4, !tbaa !19
  %conv = sext i32 %37 to i64
  %call46 = call i32 @EVP_DigestVerifyUpdate(ptr noundef %35, ptr noundef %36, i64 noundef %conv)
  store i32 %call46, ptr %r, align 4, !tbaa !19
  %38 = load ptr, ptr %abuf, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %38, ptr noundef @.str, i32 noundef 922)
  %39 = load i32, ptr %r, align 4, !tbaa !19
  %cmp47 = icmp sle i32 %39, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end45
  store i32 -1, ptr %r, align 4, !tbaa !19
  br label %err

if.end50:                                         ; preds = %if.end45
  %40 = load ptr, ptr %mctx, align 8, !tbaa !4
  %41 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %signature = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %41, i32 0, i32 5
  %42 = load ptr, ptr %signature, align 8, !tbaa !50
  %data = getelementptr inbounds %struct.asn1_string_st, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %data, align 8, !tbaa !63
  %44 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %signature51 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %44, i32 0, i32 5
  %45 = load ptr, ptr %signature51, align 8, !tbaa !50
  %length = getelementptr inbounds %struct.asn1_string_st, ptr %45, i32 0, i32 0
  %46 = load i32, ptr %length, align 8, !tbaa !64
  %conv52 = sext i32 %46 to i64
  %call53 = call i32 @EVP_DigestVerifyFinal(ptr noundef %40, ptr noundef %43, i64 noundef %conv52)
  store i32 %call53, ptr %r, align 4, !tbaa !19
  %47 = load i32, ptr %r, align 4, !tbaa !19
  %cmp54 = icmp sle i32 %47, 0
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end50
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 930, ptr noundef @__func__.CMS_SignerInfo_verify)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 158, ptr noundef null)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end50
  br label %err

err:                                              ; preds = %if.end57, %if.then49, %if.then44, %if.then38, %if.then34, %if.then27
  %48 = load ptr, ptr %fetched_md, align 8, !tbaa !4
  call void @EVP_MD_free(ptr noundef %48)
  %49 = load ptr, ptr %mctx, align 8, !tbaa !4
  %call58 = call i32 @EVP_MD_CTX_reset(ptr noundef %49)
  %50 = load i32, ptr %r, align 4, !tbaa !19
  store i32 %50, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then18, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %propq) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %libctx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %fetched_md) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %md) #5
  call void @llvm.lifetime.end.p0(i64 50, ptr %name) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %alen) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %abuf) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %mctx) #5
  %51 = load i32, ptr %retval, align 4
  ret i32 %51
}

declare ptr @EVP_MD_fetch(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @OBJ_obj2nid(ptr noundef) #1

declare i32 @ERR_clear_last_mark() #1

declare i32 @EVP_DigestVerifyInit_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @CMS_Attributes_Verify_it() #1

declare i32 @EVP_DigestVerifyUpdate(ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @EVP_DigestVerifyFinal(ptr noundef, ptr noundef, i64 noundef) #1

declare void @EVP_MD_free(ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @ossl_cms_SignedData_init_bio(ptr noundef %cms) #0 {
entry:
  %retval = alloca ptr, align 8
  %cms.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %sd = alloca ptr, align 8
  %chain = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %digestAlgorithm = alloca ptr, align 8
  %mdbio = alloca ptr, align 8
  store ptr %cms, ptr %cms.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sd) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %chain) #5
  store ptr null, ptr %chain, align 8, !tbaa !4
  %0 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %call = call ptr @cms_get0_signed(ptr noundef %0)
  store ptr %call, ptr %sd, align 8, !tbaa !4
  %1 = load ptr, ptr %sd, align 8, !tbaa !4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup19

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %d, align 8, !tbaa !8
  %encapContentInfo = getelementptr inbounds %struct.CMS_SignedData_st, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %encapContentInfo, align 8, !tbaa !12
  %partial = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %partial, align 8, !tbaa !15
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %6 = load ptr, ptr %sd, align 8, !tbaa !4
  call void @cms_sd_set_version(ptr noundef %6)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end2
  %7 = load i32, ptr %i, align 4, !tbaa !19
  %8 = load ptr, ptr %sd, align 8, !tbaa !4
  %digestAlgorithms = getelementptr inbounds %struct.CMS_SignedData_st, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %digestAlgorithms, align 8, !tbaa !34
  %call3 = call ptr @ossl_check_const_X509_ALGOR_sk_type(ptr noundef %9)
  %call4 = call i32 @OPENSSL_sk_num(ptr noundef %call3)
  %cmp5 = icmp slt i32 %7, %call4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %digestAlgorithm) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %mdbio) #5
  %10 = load ptr, ptr %sd, align 8, !tbaa !4
  %digestAlgorithms6 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %digestAlgorithms6, align 8, !tbaa !34
  %call7 = call ptr @ossl_check_const_X509_ALGOR_sk_type(ptr noundef %11)
  %12 = load i32, ptr %i, align 4, !tbaa !19
  %call8 = call ptr @OPENSSL_sk_value(ptr noundef %call7, i32 noundef %12)
  store ptr %call8, ptr %digestAlgorithm, align 8, !tbaa !4
  %13 = load ptr, ptr %digestAlgorithm, align 8, !tbaa !4
  %14 = load ptr, ptr %cms.addr, align 8, !tbaa !4
  %call9 = call ptr @ossl_cms_get0_cmsctx(ptr noundef %14)
  %call10 = call ptr @ossl_cms_DigestAlgorithm_init_bio(ptr noundef %13, ptr noundef %call9)
  store ptr %call10, ptr %mdbio, align 8, !tbaa !4
  %15 = load ptr, ptr %mdbio, align 8, !tbaa !4
  %cmp11 = icmp eq ptr %15, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %16 = load ptr, ptr %chain, align 8, !tbaa !4
  %cmp14 = icmp ne ptr %16, null
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end13
  %17 = load ptr, ptr %chain, align 8, !tbaa !4
  %18 = load ptr, ptr %mdbio, align 8, !tbaa !4
  %call16 = call ptr @BIO_push(ptr noundef %17, ptr noundef %18)
  br label %if.end17

if.else:                                          ; preds = %if.end13
  %19 = load ptr, ptr %mdbio, align 8, !tbaa !4
  store ptr %19, ptr %chain, align 8, !tbaa !4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end17
  call void @llvm.lifetime.end.p0(i64 8, ptr %mdbio) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %digestAlgorithm) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup19 [
    i32 0, label %cleanup.cont
    i32 5, label %err
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %20 = load i32, ptr %i, align 4, !tbaa !19
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4, !tbaa !19
  br label %for.cond, !llvm.loop !65

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %chain, align 8, !tbaa !4
  store ptr %21, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup19

err:                                              ; preds = %cleanup
  %22 = load ptr, ptr %chain, align 8, !tbaa !4
  call void @BIO_free_all(ptr noundef %22)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup19

cleanup19:                                        ; preds = %err, %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %chain) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sd) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  %23 = load ptr, ptr %retval, align 8
  ret ptr %23
}

; Function Attrs: nounwind uwtable
define internal void @cms_sd_set_version(ptr noundef %sd) #0 {
entry:
  %sd.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cch = alloca ptr, align 8
  %rch = alloca ptr, align 8
  %si = alloca ptr, align 8
  store ptr %sd, ptr %sd.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cch) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %rch) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %si) #5
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !19
  %1 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %certificates = getelementptr inbounds %struct.CMS_SignedData_st, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %certificates, align 8, !tbaa !53
  %call = call i32 @sk_CMS_CertificateChoices_num(ptr noundef %2)
  %cmp = icmp slt i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %certificates1 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %certificates1, align 8, !tbaa !53
  %5 = load i32, ptr %i, align 4, !tbaa !19
  %call2 = call ptr @sk_CMS_CertificateChoices_value(ptr noundef %4, i32 noundef %5)
  store ptr %call2, ptr %cch, align 8, !tbaa !4
  %6 = load ptr, ptr %cch, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.CMS_CertificateChoices, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %type, align 8, !tbaa !55
  %cmp3 = icmp eq i32 %7, 4
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %version = getelementptr inbounds %struct.CMS_SignedData_st, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %version, align 8, !tbaa !9
  %cmp4 = icmp slt i32 %9, 5
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %10 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %version6 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %10, i32 0, i32 0
  store i32 5, ptr %version6, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end26

if.else:                                          ; preds = %for.body
  %11 = load ptr, ptr %cch, align 8, !tbaa !4
  %type7 = getelementptr inbounds %struct.CMS_CertificateChoices, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %type7, align 8, !tbaa !55
  %cmp8 = icmp eq i32 %12, 3
  br i1 %cmp8, label %if.then9, label %if.else15

if.then9:                                         ; preds = %if.else
  %13 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %version10 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %version10, align 8, !tbaa !9
  %cmp11 = icmp slt i32 %14, 4
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then9
  %15 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %version13 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %15, i32 0, i32 0
  store i32 4, ptr %version13, align 8, !tbaa !9
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then9
  br label %if.end25

if.else15:                                        ; preds = %if.else
  %16 = load ptr, ptr %cch, align 8, !tbaa !4
  %type16 = getelementptr inbounds %struct.CMS_CertificateChoices, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %type16, align 8, !tbaa !55
  %cmp17 = icmp eq i32 %17, 2
  br i1 %cmp17, label %if.then18, label %if.end24

if.then18:                                        ; preds = %if.else15
  %18 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %version19 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %version19, align 8, !tbaa !9
  %cmp20 = icmp slt i32 %19, 3
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.then18
  %20 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %version22 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %20, i32 0, i32 0
  store i32 3, ptr %version22, align 8, !tbaa !9
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then18
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.else15
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end14
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %21 = load i32, ptr %i, align 4, !tbaa !19
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %i, align 4, !tbaa !19
  br label %for.cond, !llvm.loop !66

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc44, %for.end
  %22 = load i32, ptr %i, align 4, !tbaa !19
  %23 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %crls = getelementptr inbounds %struct.CMS_SignedData_st, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %crls, align 8, !tbaa !67
  %call28 = call ptr @ossl_check_const_CMS_RevocationInfoChoice_sk_type(ptr noundef %24)
  %call29 = call i32 @OPENSSL_sk_num(ptr noundef %call28)
  %cmp30 = icmp slt i32 %22, %call29
  br i1 %cmp30, label %for.body31, label %for.end46

for.body31:                                       ; preds = %for.cond27
  %25 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %crls32 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %25, i32 0, i32 4
  %26 = load ptr, ptr %crls32, align 8, !tbaa !67
  %call33 = call ptr @ossl_check_const_CMS_RevocationInfoChoice_sk_type(ptr noundef %26)
  %27 = load i32, ptr %i, align 4, !tbaa !19
  %call34 = call ptr @OPENSSL_sk_value(ptr noundef %call33, i32 noundef %27)
  store ptr %call34, ptr %rch, align 8, !tbaa !4
  %28 = load ptr, ptr %rch, align 8, !tbaa !4
  %type35 = getelementptr inbounds %struct.CMS_RevocationInfoChoice_st, ptr %28, i32 0, i32 0
  %29 = load i32, ptr %type35, align 8, !tbaa !68
  %cmp36 = icmp eq i32 %29, 1
  br i1 %cmp36, label %if.then37, label %if.end43

if.then37:                                        ; preds = %for.body31
  %30 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %version38 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %30, i32 0, i32 0
  %31 = load i32, ptr %version38, align 8, !tbaa !9
  %cmp39 = icmp slt i32 %31, 5
  br i1 %cmp39, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.then37
  %32 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %version41 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %32, i32 0, i32 0
  store i32 5, ptr %version41, align 8, !tbaa !9
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.then37
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %for.body31
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43
  %33 = load i32, ptr %i, align 4, !tbaa !19
  %inc45 = add nsw i32 %33, 1
  store i32 %inc45, ptr %i, align 4, !tbaa !19
  br label %for.cond27, !llvm.loop !70

for.end46:                                        ; preds = %for.cond27
  %34 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %encapContentInfo = getelementptr inbounds %struct.CMS_SignedData_st, ptr %34, i32 0, i32 2
  %35 = load ptr, ptr %encapContentInfo, align 8, !tbaa !12
  %eContentType = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %eContentType, align 8, !tbaa !13
  %call47 = call i32 @OBJ_obj2nid(ptr noundef %36)
  %cmp48 = icmp ne i32 %call47, 21
  br i1 %cmp48, label %land.lhs.true, label %if.end53

land.lhs.true:                                    ; preds = %for.end46
  %37 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %version49 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %37, i32 0, i32 0
  %38 = load i32, ptr %version49, align 8, !tbaa !9
  %cmp50 = icmp slt i32 %38, 3
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %land.lhs.true
  %39 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %version52 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %39, i32 0, i32 0
  store i32 3, ptr %version52, align 8, !tbaa !9
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %land.lhs.true, %for.end46
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc82, %if.end53
  %40 = load i32, ptr %i, align 4, !tbaa !19
  %41 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %signerInfos = getelementptr inbounds %struct.CMS_SignedData_st, ptr %41, i32 0, i32 5
  %42 = load ptr, ptr %signerInfos, align 8, !tbaa !38
  %call55 = call ptr @ossl_check_const_CMS_SignerInfo_sk_type(ptr noundef %42)
  %call56 = call i32 @OPENSSL_sk_num(ptr noundef %call55)
  %cmp57 = icmp slt i32 %40, %call56
  br i1 %cmp57, label %for.body58, label %for.end84

for.body58:                                       ; preds = %for.cond54
  %43 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %signerInfos59 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %43, i32 0, i32 5
  %44 = load ptr, ptr %signerInfos59, align 8, !tbaa !38
  %call60 = call ptr @ossl_check_const_CMS_SignerInfo_sk_type(ptr noundef %44)
  %45 = load i32, ptr %i, align 4, !tbaa !19
  %call61 = call ptr @OPENSSL_sk_value(ptr noundef %call60, i32 noundef %45)
  store ptr %call61, ptr %si, align 8, !tbaa !4
  %46 = load ptr, ptr %si, align 8, !tbaa !4
  %sid = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %46, i32 0, i32 1
  %47 = load ptr, ptr %sid, align 8, !tbaa !32
  %type62 = getelementptr inbounds %struct.CMS_SignerIdentifier_st, ptr %47, i32 0, i32 0
  %48 = load i32, ptr %type62, align 8, !tbaa !20
  %cmp63 = icmp eq i32 %48, 1
  br i1 %cmp63, label %if.then64, label %if.else75

if.then64:                                        ; preds = %for.body58
  %49 = load ptr, ptr %si, align 8, !tbaa !4
  %version65 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %49, i32 0, i32 0
  %50 = load i32, ptr %version65, align 8, !tbaa !31
  %cmp66 = icmp slt i32 %50, 3
  br i1 %cmp66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.then64
  %51 = load ptr, ptr %si, align 8, !tbaa !4
  %version68 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %51, i32 0, i32 0
  store i32 3, ptr %version68, align 8, !tbaa !31
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.then64
  %52 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %version70 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %52, i32 0, i32 0
  %53 = load i32, ptr %version70, align 8, !tbaa !9
  %cmp71 = icmp slt i32 %53, 3
  br i1 %cmp71, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.end69
  %54 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %version73 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %54, i32 0, i32 0
  store i32 3, ptr %version73, align 8, !tbaa !9
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end69
  br label %if.end81

if.else75:                                        ; preds = %for.body58
  %55 = load ptr, ptr %si, align 8, !tbaa !4
  %version76 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %55, i32 0, i32 0
  %56 = load i32, ptr %version76, align 8, !tbaa !31
  %cmp77 = icmp slt i32 %56, 1
  br i1 %cmp77, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.else75
  %57 = load ptr, ptr %si, align 8, !tbaa !4
  %version79 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %57, i32 0, i32 0
  store i32 1, ptr %version79, align 8, !tbaa !31
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.else75
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.end74
  br label %for.inc82

for.inc82:                                        ; preds = %if.end81
  %58 = load i32, ptr %i, align 4, !tbaa !19
  %inc83 = add nsw i32 %58, 1
  store i32 %inc83, ptr %i, align 4, !tbaa !19
  br label %for.cond54, !llvm.loop !71

for.end84:                                        ; preds = %for.cond54
  %59 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %version85 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %59, i32 0, i32 0
  %60 = load i32, ptr %version85, align 8, !tbaa !9
  %cmp86 = icmp slt i32 %60, 1
  br i1 %cmp86, label %if.then87, label %if.end89

if.then87:                                        ; preds = %for.end84
  %61 = load ptr, ptr %sd.addr, align 8, !tbaa !4
  %version88 = getelementptr inbounds %struct.CMS_SignedData_st, ptr %61, i32 0, i32 0
  store i32 1, ptr %version88, align 8, !tbaa !9
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %for.end84
  call void @llvm.lifetime.end.p0(i64 8, ptr %si) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rch) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %cch) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

declare ptr @ossl_cms_DigestAlgorithm_init_bio(ptr noundef, ptr noundef) #1

declare ptr @BIO_push(ptr noundef, ptr noundef) #1

declare void @BIO_free_all(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @CMS_SignerInfo_verify_content(ptr noundef %si, ptr noundef %chain) #0 {
entry:
  %retval = alloca i32, align 4
  %si.addr = alloca ptr, align 8
  %chain.addr = alloca ptr, align 8
  %os = alloca ptr, align 8
  %mctx = alloca ptr, align 8
  %pkctx = alloca ptr, align 8
  %r = alloca i32, align 4
  %mval = alloca [64 x i8], align 16
  %mlen = alloca i32, align 4
  %md = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %si, ptr %si.addr, align 8, !tbaa !4
  store ptr %chain, ptr %chain.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %os) #5
  store ptr null, ptr %os, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mctx) #5
  %call = call ptr @EVP_MD_CTX_new()
  store ptr %call, ptr %mctx, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pkctx) #5
  store ptr null, ptr %pkctx, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #5
  store i32 -1, ptr %r, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 64, ptr %mval) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %mlen) #5
  %0 = load ptr, ptr %mctx, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 980, ptr noundef @__func__.CMS_SignerInfo_verify_content)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, ptr noundef null)
  br label %err

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %call1 = call i32 @CMS_signed_get_attr_count(ptr noundef %1)
  %cmp2 = icmp sge i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end9

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %call4 = call ptr @OBJ_nid2obj(i32 noundef 51)
  %call5 = call ptr @CMS_signed_get0_data_by_OBJ(ptr noundef %2, ptr noundef %call4, i32 noundef -3, i32 noundef 4)
  store ptr %call5, ptr %os, align 8, !tbaa !4
  %3 = load ptr, ptr %os, align 8, !tbaa !4
  %cmp6 = icmp eq ptr %3, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then3
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 989, ptr noundef @__func__.CMS_SignerInfo_verify_content)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 114, ptr noundef null)
  br label %err

if.end8:                                          ; preds = %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end
  %4 = load ptr, ptr %mctx, align 8, !tbaa !4
  %5 = load ptr, ptr %chain.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %digestAlgorithm = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %digestAlgorithm, align 8, !tbaa !33
  %call10 = call i32 @ossl_cms_DigestAlgorithm_find_ctx(ptr noundef %4, ptr noundef %5, ptr noundef %7)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end9
  br label %err

if.end12:                                         ; preds = %if.end9
  %8 = load ptr, ptr %mctx, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [64 x i8], ptr %mval, i64 0, i64 0
  %call13 = call i32 @EVP_DigestFinal_ex(ptr noundef %8, ptr noundef %arraydecay, ptr noundef %mlen)
  %cmp14 = icmp sle i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 998, ptr noundef @__func__.CMS_SignerInfo_verify_content)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 147, ptr noundef null)
  br label %err

if.end16:                                         ; preds = %if.end12
  %9 = load ptr, ptr %os, align 8, !tbaa !4
  %cmp17 = icmp ne ptr %9, null
  br i1 %cmp17, label %if.then18, label %if.else27

if.then18:                                        ; preds = %if.end16
  %10 = load i32, ptr %mlen, align 4, !tbaa !19
  %11 = load ptr, ptr %os, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_string_st, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %length, align 8, !tbaa !64
  %cmp19 = icmp ne i32 %10, %12
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then18
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 1006, ptr noundef @__func__.CMS_SignerInfo_verify_content)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 120, ptr noundef null)
  br label %err

if.end21:                                         ; preds = %if.then18
  %arraydecay22 = getelementptr inbounds [64 x i8], ptr %mval, i64 0, i64 0
  %13 = load ptr, ptr %os, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.asn1_string_st, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %data, align 8, !tbaa !63
  %15 = load i32, ptr %mlen, align 4, !tbaa !19
  %conv = zext i32 %15 to i64
  %call23 = call i32 @memcmp(ptr noundef %arraydecay22, ptr noundef %14, i64 noundef %conv) #6
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end21
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 1011, ptr noundef @__func__.CMS_SignerInfo_verify_content)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 158, ptr noundef null)
  store i32 0, ptr %r, align 4, !tbaa !19
  br label %if.end26

if.else:                                          ; preds = %if.end21
  store i32 1, ptr %r, align 4, !tbaa !19
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then25
  br label %if.end62

if.else27:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %md) #5
  %16 = load ptr, ptr %mctx, align 8, !tbaa !4
  %call28 = call ptr @EVP_MD_CTX_get0_md(ptr noundef %16)
  store ptr %call28, ptr %md, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #5
  %17 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %cms_ctx = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %17, i32 0, i32 11
  %18 = load ptr, ptr %cms_ctx, align 8, !tbaa !25
  store ptr %18, ptr %ctx, align 8, !tbaa !4
  %19 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call29 = call ptr @ossl_cms_ctx_get0_libctx(ptr noundef %19)
  %20 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pkey = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %20, i32 0, i32 8
  %21 = load ptr, ptr %pkey, align 8, !tbaa !27
  %22 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call30 = call ptr @ossl_cms_ctx_get0_propq(ptr noundef %22)
  %call31 = call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef %call29, ptr noundef %21, ptr noundef %call30)
  store ptr %call31, ptr %pkctx, align 8, !tbaa !4
  %23 = load ptr, ptr %pkctx, align 8, !tbaa !4
  %cmp32 = icmp eq ptr %23, null
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.else27
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.else27
  %24 = load ptr, ptr %pkctx, align 8, !tbaa !4
  %call36 = call i32 @EVP_PKEY_verify_init(ptr noundef %24)
  %cmp37 = icmp sle i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end35
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %25 = load ptr, ptr %pkctx, align 8, !tbaa !4
  %26 = load ptr, ptr %md, align 8, !tbaa !4
  %call41 = call i32 @EVP_PKEY_CTX_set_signature_md(ptr noundef %25, ptr noundef %26)
  %cmp42 = icmp sle i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end40
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  %27 = load ptr, ptr %pkctx, align 8, !tbaa !4
  %28 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pctx = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %28, i32 0, i32 10
  store ptr %27, ptr %pctx, align 8, !tbaa !30
  %29 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %call46 = call i32 @cms_sd_asn1_ctrl(ptr noundef %29, i32 noundef 1)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end45
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %30 = load ptr, ptr %pkctx, align 8, !tbaa !4
  %31 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %signature = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %31, i32 0, i32 5
  %32 = load ptr, ptr %signature, align 8, !tbaa !50
  %data50 = getelementptr inbounds %struct.asn1_string_st, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %data50, align 8, !tbaa !63
  %34 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %signature51 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %34, i32 0, i32 5
  %35 = load ptr, ptr %signature51, align 8, !tbaa !50
  %length52 = getelementptr inbounds %struct.asn1_string_st, ptr %35, i32 0, i32 0
  %36 = load i32, ptr %length52, align 8, !tbaa !64
  %conv53 = sext i32 %36 to i64
  %arraydecay54 = getelementptr inbounds [64 x i8], ptr %mval, i64 0, i64 0
  %37 = load i32, ptr %mlen, align 4, !tbaa !19
  %conv55 = zext i32 %37 to i64
  %call56 = call i32 @EVP_PKEY_verify(ptr noundef %30, ptr noundef %33, i64 noundef %conv53, ptr noundef %arraydecay54, i64 noundef %conv55)
  store i32 %call56, ptr %r, align 4, !tbaa !19
  %38 = load i32, ptr %r, align 4, !tbaa !19
  %cmp57 = icmp sle i32 %38, 0
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end49
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 1034, ptr noundef @__func__.CMS_SignerInfo_verify_content)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 46, i32 noundef 158, ptr noundef null)
  store i32 0, ptr %r, align 4, !tbaa !19
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end49
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.then44, %if.then39, %if.then34, %if.end60
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %md) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup63 [
    i32 0, label %cleanup.cont
    i32 2, label %err
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end62

if.end62:                                         ; preds = %cleanup.cont, %if.end26
  br label %err

err:                                              ; preds = %if.end62, %cleanup, %if.then20, %if.then15, %if.then11, %if.then7, %if.then
  %39 = load ptr, ptr %pkctx, align 8, !tbaa !4
  call void @EVP_PKEY_CTX_free(ptr noundef %39)
  %40 = load ptr, ptr %mctx, align 8, !tbaa !4
  call void @EVP_MD_CTX_free(ptr noundef %40)
  %41 = load i32, ptr %r, align 4, !tbaa !19
  store i32 %41, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63

cleanup63:                                        ; preds = %err, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %mlen) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr %mval) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pkctx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %mctx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %os) #5
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

declare i32 @CMS_signed_get_attr_count(ptr noundef) #1

declare ptr @CMS_signed_get0_data_by_OBJ(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare ptr @OBJ_nid2obj(i32 noundef) #1

declare i32 @ossl_cms_DigestAlgorithm_find_ctx(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

declare ptr @EVP_MD_CTX_get0_md(ptr noundef) #1

declare i32 @EVP_PKEY_verify_init(ptr noundef) #1

declare i32 @EVP_PKEY_verify(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #1

declare void @EVP_PKEY_CTX_free(ptr noundef) #1

declare void @EVP_MD_CTX_free(ptr noundef) #1

declare i32 @i2d_X509_ALGORS(ptr noundef, ptr noundef) #1

declare i32 @CMS_signed_add1_attr_by_NID(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @CMS_add_simple_smimecap(ptr noundef %algs, i32 noundef %algnid, i32 noundef %keysize) #0 {
entry:
  %retval = alloca i32, align 4
  %algs.addr = alloca ptr, align 8
  %algnid.addr = alloca i32, align 4
  %keysize.addr = alloca i32, align 4
  %alg = alloca ptr, align 8
  %key = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %algs, ptr %algs.addr, align 8, !tbaa !4
  store i32 %algnid, ptr %algnid.addr, align 4, !tbaa !19
  store i32 %keysize, ptr %keysize.addr, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #5
  store ptr null, ptr %key, align 8, !tbaa !4
  %0 = load i32, ptr %keysize.addr, align 4, !tbaa !19
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %call = call ptr @ASN1_INTEGER_new()
  store ptr %call, ptr %key, align 8, !tbaa !4
  %1 = load ptr, ptr %key, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load ptr, ptr %key, align 8, !tbaa !4
  %3 = load i32, ptr %keysize.addr, align 4, !tbaa !19
  %conv = sext i32 %3 to i64
  %call2 = call i32 @ASN1_INTEGER_set(ptr noundef %2, i64 noundef %conv)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  %4 = load ptr, ptr %key, align 8, !tbaa !4
  call void @ASN1_INTEGER_free(ptr noundef %4)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %call5 = call ptr @X509_ALGOR_new()
  store ptr %call5, ptr %alg, align 8, !tbaa !4
  %5 = load ptr, ptr %alg, align 8, !tbaa !4
  %cmp6 = icmp eq ptr %5, null
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  %6 = load ptr, ptr %key, align 8, !tbaa !4
  call void @ASN1_INTEGER_free(ptr noundef %6)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %7 = load ptr, ptr %alg, align 8, !tbaa !4
  %8 = load i32, ptr %algnid.addr, align 4, !tbaa !19
  %call10 = call ptr @OBJ_nid2obj(i32 noundef %8)
  %9 = load ptr, ptr %key, align 8, !tbaa !4
  %tobool11 = icmp ne ptr %9, null
  %10 = zext i1 %tobool11 to i64
  %cond = select i1 %tobool11, i32 2, i32 -1
  %11 = load ptr, ptr %key, align 8, !tbaa !4
  %call12 = call i32 @X509_ALGOR_set0(ptr noundef %7, ptr noundef %call10, i32 noundef %cond, ptr noundef %11)
  %12 = load ptr, ptr %algs.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %12, align 8, !tbaa !4
  %cmp13 = icmp eq ptr %13, null
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end9
  %call16 = call ptr @OPENSSL_sk_new_null()
  %14 = load ptr, ptr %algs.addr, align 8, !tbaa !4
  store ptr %call16, ptr %14, align 8, !tbaa !4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end9
  %15 = load ptr, ptr %algs.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %15, align 8, !tbaa !4
  %cmp18 = icmp eq ptr %16, null
  br i1 %cmp18, label %if.then25, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end17
  %17 = load ptr, ptr %algs.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %17, align 8, !tbaa !4
  %call21 = call ptr @ossl_check_X509_ALGOR_sk_type(ptr noundef %18)
  %19 = load ptr, ptr %alg, align 8, !tbaa !4
  %call22 = call ptr @ossl_check_X509_ALGOR_type(ptr noundef %19)
  %call23 = call i32 @OPENSSL_sk_push(ptr noundef %call21, ptr noundef %call22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %lor.lhs.false20, %if.end17
  %20 = load ptr, ptr %alg, align 8, !tbaa !4
  call void @X509_ALGOR_free(ptr noundef %20)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false20
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then25, %if.then8, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg) #5
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

declare ptr @ASN1_INTEGER_new() #1

declare i32 @ASN1_INTEGER_set(ptr noundef, i64 noundef) #1

declare void @ASN1_INTEGER_free(ptr noundef) #1

declare i32 @X509_ALGOR_set0(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @cms_add_cipher_smcap(ptr noundef %sk, i32 noundef %nid, i32 noundef %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %sk.addr = alloca ptr, align 8
  %nid.addr = alloca i32, align 4
  %arg.addr = alloca i32, align 4
  store ptr %sk, ptr %sk.addr, align 8, !tbaa !4
  store i32 %nid, ptr %nid.addr, align 4, !tbaa !19
  store i32 %arg, ptr %arg.addr, align 4, !tbaa !19
  %0 = load i32, ptr %nid.addr, align 4, !tbaa !19
  %call = call ptr @OBJ_nid2sn(i32 noundef %0)
  %call1 = call ptr @EVP_get_cipherbyname(ptr noundef %call)
  %tobool = icmp ne ptr %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %sk.addr, align 8, !tbaa !4
  %2 = load i32, ptr %nid.addr, align 4, !tbaa !19
  %3 = load i32, ptr %arg.addr, align 4, !tbaa !19
  %call2 = call i32 @CMS_add_simple_smimecap(ptr noundef %1, i32 noundef %2, i32 noundef %3)
  store i32 %call2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @cms_add_digest_smcap(ptr noundef %sk, i32 noundef %nid, i32 noundef %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %sk.addr = alloca ptr, align 8
  %nid.addr = alloca i32, align 4
  %arg.addr = alloca i32, align 4
  store ptr %sk, ptr %sk.addr, align 8, !tbaa !4
  store i32 %nid, ptr %nid.addr, align 4, !tbaa !19
  store i32 %arg, ptr %arg.addr, align 4, !tbaa !19
  %0 = load i32, ptr %nid.addr, align 4, !tbaa !19
  %call = call ptr @OBJ_nid2sn(i32 noundef %0)
  %call1 = call ptr @EVP_get_digestbyname(ptr noundef %call)
  %tobool = icmp ne ptr %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %sk.addr, align 8, !tbaa !4
  %2 = load i32, ptr %nid.addr, align 4, !tbaa !19
  %3 = load i32, ptr %arg.addr, align 4, !tbaa !19
  %call2 = call i32 @CMS_add_simple_smimecap(ptr noundef %1, i32 noundef %2, i32 noundef %3)
  store i32 %call2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

declare ptr @CMS_SignedData_it() #1

declare void @ASN1_OBJECT_free(ptr noundef) #1

declare i32 @EVP_PKEY_is_a(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @cms_generic_sign(ptr noundef %si, i32 noundef %verify) #0 {
entry:
  %retval = alloca i32, align 4
  %si.addr = alloca ptr, align 8
  %verify.addr = alloca i32, align 4
  %snid = alloca i32, align 4
  %hnid = alloca i32, align 4
  %pknid = alloca i32, align 4
  %alg1 = alloca ptr, align 8
  %alg2 = alloca ptr, align 8
  %pkey = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %typename = alloca ptr, align 8
  store ptr %si, ptr %si.addr, align 8, !tbaa !4
  store i32 %verify, ptr %verify.addr, align 4, !tbaa !19
  %0 = load i32, ptr %verify.addr, align 4, !tbaa !19
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr %verify.addr, align 4, !tbaa !19
  %cmp1 = icmp eq i32 %1, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  %cmp2 = icmp ne i32 %lor.ext, 0
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.end
  %3 = load i32, ptr %verify.addr, align 4, !tbaa !19
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end33, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %snid) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %hnid) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pknid) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %alg2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pkey) #5
  %4 = load ptr, ptr %si.addr, align 8, !tbaa !4
  %pkey4 = getelementptr inbounds %struct.CMS_SignerInfo_st, ptr %4, i32 0, i32 8
  %5 = load ptr, ptr %pkey4, align 8, !tbaa !27
  store ptr %5, ptr %pkey, align 8, !tbaa !4
  %6 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call = call i32 @EVP_PKEY_get_id(ptr noundef %6)
  store i32 %call, ptr %pknid, align 4, !tbaa !19
  %7 = load ptr, ptr %si.addr, align 8, !tbaa !4
  call void @CMS_SignerInfo_get0_algs(ptr noundef %7, ptr noundef null, ptr noundef null, ptr noundef %alg1, ptr noundef %alg2)
  %8 = load ptr, ptr %alg1, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %8, null
  br i1 %cmp5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then3
  %9 = load ptr, ptr %alg1, align 8, !tbaa !4
  %algorithm = getelementptr inbounds %struct.X509_algor_st, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %algorithm, align 8, !tbaa !46
  %cmp6 = icmp eq ptr %10, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %if.then3
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %11 = load ptr, ptr %alg1, align 8, !tbaa !4
  %algorithm9 = getelementptr inbounds %struct.X509_algor_st, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %algorithm9, align 8, !tbaa !46
  %call10 = call i32 @OBJ_obj2nid(ptr noundef %12)
  store i32 %call10, ptr %hnid, align 4, !tbaa !19
  %13 = load i32, ptr %hnid, align 4, !tbaa !19
  %cmp11 = icmp eq i32 %13, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %14 = load i32, ptr %pknid, align 4, !tbaa !19
  %cmp14 = icmp sle i32 %14, 0
  br i1 %cmp14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %typename) #5
  %15 = load ptr, ptr %pkey, align 8, !tbaa !4
  %call16 = call ptr @EVP_PKEY_get0_type_name(ptr noundef %15)
  store ptr %call16, ptr %typename, align 8, !tbaa !4
  %16 = load ptr, ptr %typename, align 8, !tbaa !4
  %cmp17 = icmp ne ptr %16, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.then15
  %17 = load ptr, ptr %typename, align 8, !tbaa !4
  %call19 = call i32 @OBJ_txt2nid(ptr noundef %17)
  store i32 %call19, ptr %pknid, align 4, !tbaa !19
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %typename) #5
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end13
  %18 = load i32, ptr %hnid, align 4, !tbaa !19
  %19 = load i32, ptr %pknid, align 4, !tbaa !19
  %call22 = call i32 @OBJ_find_sigid_by_algs(ptr noundef %snid, i32 noundef %18, i32 noundef %19)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end21
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %20 = load ptr, ptr %alg2, align 8, !tbaa !4
  %21 = load i32, ptr %snid, align 4, !tbaa !19
  %call26 = call ptr @OBJ_nid2obj(i32 noundef %21)
  %call27 = call i32 @X509_ALGOR_set0(ptr noundef %20, ptr noundef %call26, i32 noundef -1, ptr noundef null)
  store i32 %call27, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then12, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %pkey) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %alg1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pknid) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %hnid) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %snid) #5
  br label %return

if.end33:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end33, %cleanup, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

declare i32 @ossl_cms_rsa_sign(ptr noundef, i32 noundef) #1

declare i32 @EVP_PKEY_get_id(ptr noundef) #1

declare ptr @EVP_PKEY_get0_type_name(ptr noundef) #1

declare i32 @OBJ_txt2nid(ptr noundef) #1

declare i32 @OBJ_find_sigid_by_algs(ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @i2d_ESS_SIGNING_CERT(ptr noundef, ptr noundef) #1

declare ptr @ASN1_STRING_new() #1

declare i32 @ASN1_STRING_set(ptr noundef, ptr noundef, i32 noundef) #1

declare void @ASN1_STRING_free(ptr noundef) #1

declare i32 @i2d_ESS_SIGNING_CERT_V2(ptr noundef, ptr noundef) #1

declare i32 @OBJ_cmp(ptr noundef, ptr noundef) #1

declare i32 @EVP_PKEY_get_size(ptr noundef) #1

declare i32 @EVP_PKEY_sign(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @EVP_SignFinal_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @X509_gmtime_adj(ptr noundef, i64 noundef) #1

declare void @ASN1_TIME_free(ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_const_CMS_RevocationInfoChoice_sk_type(ptr noundef %sk) #3 {
entry:
  %sk.addr = alloca ptr, align 8
  store ptr %sk, ptr %sk.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sk.addr, align 8, !tbaa !4
  ret ptr %0
}

declare ptr @EVP_get_cipherbyname(ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"CMS_SignedData_st", !11, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!11 = !{!"int", !6, i64 0}
!12 = !{!10, !5, i64 16}
!13 = !{!14, !5, i64 0}
!14 = !{!"CMS_EncapsulatedContentInfo_st", !5, i64 0, !5, i64 8, !11, i64 16}
!15 = !{!14, !11, i64 16}
!16 = !{!17, !5, i64 0}
!17 = !{!"CMS_ContentInfo_st", !5, i64 0, !6, i64 8, !18, i64 16}
!18 = !{!"CMS_CTX_st", !5, i64 0, !5, i64 8}
!19 = !{!11, !11, i64 0}
!20 = !{!21, !11, i64 0}
!21 = !{!"CMS_SignerIdentifier_st", !11, i64 0, !6, i64 8}
!22 = !{!23, !5, i64 0}
!23 = !{!"CMS_IssuerAndSerialNumber_st", !5, i64 0, !5, i64 8}
!24 = !{!23, !5, i64 8}
!25 = !{!26, !5, i64 88}
!26 = !{!"CMS_SignerInfo_st", !11, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88}
!27 = !{!26, !5, i64 64}
!28 = !{!26, !5, i64 56}
!29 = !{!26, !5, i64 72}
!30 = !{!26, !5, i64 80}
!31 = !{!26, !11, i64 0}
!32 = !{!26, !5, i64 8}
!33 = !{!26, !5, i64 16}
!34 = !{!10, !5, i64 8}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!26, !5, i64 24}
!38 = !{!10, !5, i64 40}
!39 = !{!40, !5, i64 8}
!40 = !{!"evp_pkey_st", !11, i64 0, !11, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !5, i64 56, !5, i64 64, !11, i64 72, !11, i64 76, !41, i64 80, !5, i64 96, !5, i64 104, !42, i64 112, !5, i64 120, !42, i64 128, !43, i64 136}
!41 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!42 = !{!"long", !6, i64 0}
!43 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8}
!44 = !{!45, !5, i64 176}
!45 = !{!"evp_pkey_asn1_method_st", !11, i64 0, !11, i64 4, !42, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312}
!46 = !{!47, !5, i64 0}
!47 = !{!"X509_algor_st", !5, i64 0, !5, i64 8}
!48 = distinct !{!48, !36}
!49 = !{!42, !42, i64 0}
!50 = !{!26, !5, i64 40}
!51 = distinct !{!51, !36}
!52 = distinct !{!52, !36}
!53 = !{!10, !5, i64 24}
!54 = distinct !{!54, !36}
!55 = !{!56, !11, i64 0}
!56 = !{!"CMS_CertificateChoices", !11, i64 0, !6, i64 8}
!57 = distinct !{!57, !36}
!58 = distinct !{!58, !36}
!59 = !{!26, !5, i64 32}
!60 = distinct !{!60, !36}
!61 = !{!62, !11, i64 4}
!62 = !{!"asn1_string_st", !11, i64 0, !11, i64 4, !5, i64 8, !42, i64 16}
!63 = !{!62, !5, i64 8}
!64 = !{!62, !11, i64 0}
!65 = distinct !{!65, !36}
!66 = distinct !{!66, !36}
!67 = !{!10, !5, i64 32}
!68 = !{!69, !11, i64 0}
!69 = !{!"CMS_RevocationInfoChoice_st", !11, i64 0, !6, i64 8}
!70 = distinct !{!70, !36}
!71 = distinct !{!71, !36}
