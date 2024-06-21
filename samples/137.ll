; ModuleID = 'samples/137.bc'
source_filename = "crypto/ocsp/ocsp_cl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocsp_one_request_st = type { ptr, ptr }
%struct.ocsp_request_st = type { %struct.ocsp_req_info_st, ptr }
%struct.ocsp_req_info_st = type { ptr, ptr, ptr, ptr }
%struct.GENERAL_NAME_st = type { i32, %union.anon }
%union.anon = type { ptr }
%struct.ocsp_signature_st = type { %struct.X509_algor_st, ptr, ptr }
%struct.X509_algor_st = type { ptr, ptr }
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [20 x i8], ptr, ptr, i32, ptr, ptr, ptr }
%struct.x509_cinf_st = type { ptr, %struct.asn1_string_st, %struct.X509_algor_st, ptr, %struct.X509_val_st, ptr, ptr, ptr, ptr, ptr, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { ptr, ptr }
%struct.ASN1_ENCODING_st = type { ptr, i64, i32 }
%struct.asn1_string_st = type { i32, i32, ptr, i64 }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }
%struct.crypto_ex_data_st = type { ptr, ptr }
%struct.ocsp_response_st = type { ptr, ptr }
%struct.ocsp_resp_bytes_st = type { ptr, ptr }
%struct.ocsp_basic_response_st = type { %struct.ocsp_response_data_st, %struct.X509_algor_st, ptr, ptr }
%struct.ocsp_response_data_st = type { ptr, %struct.ocsp_responder_id_st, ptr, ptr, ptr }
%struct.ocsp_responder_id_st = type { i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.ocsp_single_response_st = type { ptr, ptr, ptr, ptr, ptr }
%struct.ocsp_cert_status_st = type { i32, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.ocsp_revoked_info_st = type { ptr, ptr }

@.str = private unnamed_addr constant [22 x i8] c"crypto/ocsp/ocsp_cl.c\00", align 1
@__func__.OCSP_request_sign = private unnamed_addr constant [18 x i8] c"OCSP_request_sign\00", align 1
@__func__.OCSP_response_get1_basic = private unnamed_addr constant [25 x i8] c"OCSP_response_get1_basic\00", align 1
@__func__.OCSP_check_validity = private unnamed_addr constant [20 x i8] c"OCSP_check_validity\00", align 1

; Function Attrs: nounwind uwtable
define ptr @OCSP_request_add0_id(ptr noundef %req, ptr noundef %cid) #0 {
entry:
  %retval = alloca ptr, align 8
  %req.addr = alloca ptr, align 8
  %cid.addr = alloca ptr, align 8
  %one = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !4
  store ptr %cid, ptr %cid.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %one) #5
  store ptr null, ptr %one, align 8, !tbaa !4
  %call = call ptr @OCSP_ONEREQ_new()
  store ptr %call, ptr %one, align 8, !tbaa !4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %one, align 8, !tbaa !4
  %reqCert = getelementptr inbounds %struct.ocsp_one_request_st, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %reqCert, align 8, !tbaa !8
  call void @OCSP_CERTID_free(ptr noundef %1)
  %2 = load ptr, ptr %cid.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %one, align 8, !tbaa !4
  %reqCert1 = getelementptr inbounds %struct.ocsp_one_request_st, ptr %3, i32 0, i32 0
  store ptr %2, ptr %reqCert1, align 8, !tbaa !8
  %4 = load ptr, ptr %req.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %req.addr, align 8, !tbaa !4
  %tbsRequest = getelementptr inbounds %struct.ocsp_request_st, ptr %5, i32 0, i32 0
  %requestList = getelementptr inbounds %struct.ocsp_req_info_st, ptr %tbsRequest, i32 0, i32 2
  %6 = load ptr, ptr %requestList, align 8, !tbaa !10
  %call2 = call ptr @ossl_check_OCSP_ONEREQ_sk_type(ptr noundef %6)
  %7 = load ptr, ptr %one, align 8, !tbaa !4
  %call3 = call ptr @ossl_check_OCSP_ONEREQ_type(ptr noundef %7)
  %call4 = call i32 @OPENSSL_sk_push(ptr noundef %call2, ptr noundef %call3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %one, align 8, !tbaa !4
  %reqCert7 = getelementptr inbounds %struct.ocsp_one_request_st, ptr %8, i32 0, i32 0
  store ptr null, ptr %reqCert7, align 8, !tbaa !8
  %9 = load ptr, ptr %one, align 8, !tbaa !4
  call void @OCSP_ONEREQ_free(ptr noundef %9)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %10 = load ptr, ptr %one, align 8, !tbaa !4
  store ptr %10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %one) #5
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @OCSP_ONEREQ_new() #2

declare void @OCSP_CERTID_free(ptr noundef) #2

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_OCSP_ONEREQ_sk_type(ptr noundef %sk) #3 {
entry:
  %sk.addr = alloca ptr, align 8
  store ptr %sk, ptr %sk.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sk.addr, align 8, !tbaa !4
  ret ptr %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_OCSP_ONEREQ_type(ptr noundef %ptr) #3 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  ret ptr %0
}

declare void @OCSP_ONEREQ_free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @OCSP_request_set1_name(ptr noundef %req, ptr noundef %nm) #0 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %nm.addr = alloca ptr, align 8
  %gen = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !4
  store ptr %nm, ptr %nm.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %gen) #5
  %call = call ptr @GENERAL_NAME_new()
  store ptr %call, ptr %gen, align 8, !tbaa !4
  %0 = load ptr, ptr %gen, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %gen, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.GENERAL_NAME_st, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %nm.addr, align 8, !tbaa !4
  %call1 = call i32 @X509_NAME_set(ptr noundef %d, ptr noundef %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %gen, align 8, !tbaa !4
  call void @GENERAL_NAME_free(ptr noundef %3)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %gen, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.GENERAL_NAME_st, ptr %4, i32 0, i32 0
  store i32 4, ptr %type, align 8, !tbaa !13
  %5 = load ptr, ptr %req.addr, align 8, !tbaa !4
  %tbsRequest = getelementptr inbounds %struct.ocsp_request_st, ptr %5, i32 0, i32 0
  %requestorName = getelementptr inbounds %struct.ocsp_req_info_st, ptr %tbsRequest, i32 0, i32 1
  %6 = load ptr, ptr %requestorName, align 8, !tbaa !16
  call void @GENERAL_NAME_free(ptr noundef %6)
  %7 = load ptr, ptr %gen, align 8, !tbaa !4
  %8 = load ptr, ptr %req.addr, align 8, !tbaa !4
  %tbsRequest4 = getelementptr inbounds %struct.ocsp_request_st, ptr %8, i32 0, i32 0
  %requestorName5 = getelementptr inbounds %struct.ocsp_req_info_st, ptr %tbsRequest4, i32 0, i32 1
  store ptr %7, ptr %requestorName5, align 8, !tbaa !16
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %gen) #5
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare ptr @GENERAL_NAME_new() #2

declare i32 @X509_NAME_set(ptr noundef, ptr noundef) #2

declare void @GENERAL_NAME_free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @OCSP_request_add1_cert(ptr noundef %req, ptr noundef %cert) #0 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %cert.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8, !tbaa !4
  store ptr %cert, ptr %cert.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %req.addr, align 8, !tbaa !4
  %optionalSignature = getelementptr inbounds %struct.ocsp_request_st, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %optionalSignature, align 8, !tbaa !17
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = call ptr @OCSP_SIGNATURE_new()
  %2 = load ptr, ptr %req.addr, align 8, !tbaa !4
  %optionalSignature1 = getelementptr inbounds %struct.ocsp_request_st, ptr %2, i32 0, i32 1
  store ptr %call, ptr %optionalSignature1, align 8, !tbaa !17
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load ptr, ptr %cert.addr, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %req.addr, align 8, !tbaa !4
  %optionalSignature6 = getelementptr inbounds %struct.ocsp_request_st, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %optionalSignature6, align 8, !tbaa !17
  %certs = getelementptr inbounds %struct.ocsp_signature_st, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %cert.addr, align 8, !tbaa !4
  %call7 = call i32 @ossl_x509_add_cert_new(ptr noundef %certs, ptr noundef %6, i32 noundef 1)
  store i32 %call7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare ptr @OCSP_SIGNATURE_new() #2

declare i32 @ossl_x509_add_cert_new(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define i32 @OCSP_request_sign(ptr noundef %req, ptr noundef %signer, ptr noundef %key, ptr noundef %dgst, ptr noundef %certs, i64 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %signer.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %dgst.addr = alloca ptr, align 8
  %certs.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %req, ptr %req.addr, align 8, !tbaa !4
  store ptr %signer, ptr %signer.addr, align 8, !tbaa !4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %dgst, ptr %dgst.addr, align 8, !tbaa !4
  store ptr %certs, ptr %certs.addr, align 8, !tbaa !4
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !18
  %0 = load ptr, ptr %req.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %signer.addr, align 8, !tbaa !4
  %call = call ptr @X509_get_subject_name(ptr noundef %1)
  %call1 = call i32 @OCSP_request_set1_name(ptr noundef %0, ptr noundef %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %err

if.end:                                           ; preds = %entry
  %call2 = call ptr @OCSP_SIGNATURE_new()
  %2 = load ptr, ptr %req.addr, align 8, !tbaa !4
  %optionalSignature = getelementptr inbounds %struct.ocsp_request_st, ptr %2, i32 0, i32 1
  store ptr %call2, ptr %optionalSignature, align 8, !tbaa !17
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %err

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %cmp5 = icmp ne ptr %3, null
  br i1 %cmp5, label %if.then6, label %if.end18

if.then6:                                         ; preds = %if.end4
  %4 = load ptr, ptr %signer.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %call7 = call i32 @X509_check_private_key(ptr noundef %4, ptr noundef %5)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then6
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 94, ptr noundef @__func__.OCSP_request_sign)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 39, i32 noundef 110, ptr noundef null)
  br label %err

if.end10:                                         ; preds = %if.then6
  %call11 = call ptr @OCSP_REQINFO_it()
  %6 = load ptr, ptr %req.addr, align 8, !tbaa !4
  %optionalSignature12 = getelementptr inbounds %struct.ocsp_request_st, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %optionalSignature12, align 8, !tbaa !17
  %signatureAlgorithm = getelementptr inbounds %struct.ocsp_signature_st, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %req.addr, align 8, !tbaa !4
  %optionalSignature13 = getelementptr inbounds %struct.ocsp_request_st, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %optionalSignature13, align 8, !tbaa !17
  %signature = getelementptr inbounds %struct.ocsp_signature_st, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %signature, align 8, !tbaa !20
  %11 = load ptr, ptr %req.addr, align 8, !tbaa !4
  %tbsRequest = getelementptr inbounds %struct.ocsp_request_st, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %dgst.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %signer.addr, align 8, !tbaa !4
  %libctx = getelementptr inbounds %struct.x509_st, ptr %14, i32 0, i32 25
  %15 = load ptr, ptr %libctx, align 8, !tbaa !23
  %16 = load ptr, ptr %signer.addr, align 8, !tbaa !4
  %propq = getelementptr inbounds %struct.x509_st, ptr %16, i32 0, i32 26
  %17 = load ptr, ptr %propq, align 8, !tbaa !31
  %call14 = call i32 @ASN1_item_sign_ex(ptr noundef %call11, ptr noundef %signatureAlgorithm, ptr noundef null, ptr noundef %10, ptr noundef %tbsRequest, ptr noundef null, ptr noundef %12, ptr noundef %13, ptr noundef %15, ptr noundef %17)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end10
  br label %err

if.end17:                                         ; preds = %if.end10
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end4
  %18 = load i64, ptr %flags.addr, align 8, !tbaa !18
  %and = and i64 %18, 1
  %cmp19 = icmp eq i64 %and, 0
  br i1 %cmp19, label %if.then20, label %if.end29

if.then20:                                        ; preds = %if.end18
  %19 = load ptr, ptr %req.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %signer.addr, align 8, !tbaa !4
  %call21 = call i32 @OCSP_request_add1_cert(ptr noundef %19, ptr noundef %20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %lor.lhs.false, label %if.then27

lor.lhs.false:                                    ; preds = %if.then20
  %21 = load ptr, ptr %req.addr, align 8, !tbaa !4
  %optionalSignature23 = getelementptr inbounds %struct.ocsp_request_st, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %optionalSignature23, align 8, !tbaa !17
  %certs24 = getelementptr inbounds %struct.ocsp_signature_st, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %certs24, align 8, !tbaa !32
  %24 = load ptr, ptr %certs.addr, align 8, !tbaa !4
  %call25 = call i32 @X509_add_certs(ptr noundef %23, ptr noundef %24, i32 noundef 1)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %lor.lhs.false, %if.then20
  br label %err

if.end28:                                         ; preds = %lor.lhs.false
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end18
  store i32 1, ptr %retval, align 4
  br label %return

err:                                              ; preds = %if.then27, %if.then16, %if.then9, %if.then3, %if.then
  %25 = load ptr, ptr %req.addr, align 8, !tbaa !4
  %optionalSignature30 = getelementptr inbounds %struct.ocsp_request_st, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %optionalSignature30, align 8, !tbaa !17
  call void @OCSP_SIGNATURE_free(ptr noundef %26)
  %27 = load ptr, ptr %req.addr, align 8, !tbaa !4
  %optionalSignature31 = getelementptr inbounds %struct.ocsp_request_st, ptr %27, i32 0, i32 1
  store ptr null, ptr %optionalSignature31, align 8, !tbaa !17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %err, %if.end29
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

declare ptr @X509_get_subject_name(ptr noundef) #2

declare i32 @X509_check_private_key(ptr noundef, ptr noundef) #2

declare void @ERR_new() #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare i32 @ASN1_item_sign_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @OCSP_REQINFO_it() #2

declare i32 @X509_add_certs(ptr noundef, ptr noundef, i32 noundef) #2

declare void @OCSP_SIGNATURE_free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @OCSP_response_status(ptr noundef %resp) #0 {
entry:
  %resp.addr = alloca ptr, align 8
  store ptr %resp, ptr %resp.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %resp.addr, align 8, !tbaa !4
  %responseStatus = getelementptr inbounds %struct.ocsp_response_st, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %responseStatus, align 8, !tbaa !33
  %call = call i64 @ASN1_ENUMERATED_get(ptr noundef %1)
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare i64 @ASN1_ENUMERATED_get(ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @OCSP_response_get1_basic(ptr noundef %resp) #0 {
entry:
  %retval = alloca ptr, align 8
  %resp.addr = alloca ptr, align 8
  %rb = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %resp, ptr %resp.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rb) #5
  %0 = load ptr, ptr %resp.addr, align 8, !tbaa !4
  %responseBytes = getelementptr inbounds %struct.ocsp_response_st, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %responseBytes, align 8, !tbaa !35
  store ptr %1, ptr %rb, align 8, !tbaa !4
  %2 = load ptr, ptr %rb, align 8, !tbaa !4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 130, ptr noundef @__func__.OCSP_response_get1_basic)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 39, i32 noundef 108, ptr noundef null)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %rb, align 8, !tbaa !4
  %responseType = getelementptr inbounds %struct.ocsp_resp_bytes_st, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %responseType, align 8, !tbaa !36
  %call = call i32 @OBJ_obj2nid(ptr noundef %4)
  %cmp1 = icmp ne i32 %call, 365
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 134, ptr noundef @__func__.OCSP_response_get1_basic)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 39, i32 noundef 104, ptr noundef null)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %rb, align 8, !tbaa !4
  %response = getelementptr inbounds %struct.ocsp_resp_bytes_st, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %response, align 8, !tbaa !38
  %call4 = call ptr @OCSP_BASICRESP_it()
  %call5 = call ptr @ASN1_item_unpack(ptr noundef %6, ptr noundef %call4)
  store ptr %call5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rb) #5
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

declare i32 @OBJ_obj2nid(ptr noundef) #2

declare ptr @ASN1_item_unpack(ptr noundef, ptr noundef) #2

declare ptr @OCSP_BASICRESP_it() #2

; Function Attrs: nounwind uwtable
define ptr @OCSP_resp_get0_signature(ptr noundef %bs) #0 {
entry:
  %bs.addr = alloca ptr, align 8
  store ptr %bs, ptr %bs.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %signature = getelementptr inbounds %struct.ocsp_basic_response_st, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %signature, align 8, !tbaa !39
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define ptr @OCSP_resp_get0_tbs_sigalg(ptr noundef %bs) #0 {
entry:
  %bs.addr = alloca ptr, align 8
  store ptr %bs, ptr %bs.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %signatureAlgorithm = getelementptr inbounds %struct.ocsp_basic_response_st, ptr %0, i32 0, i32 1
  ret ptr %signatureAlgorithm
}

; Function Attrs: nounwind uwtable
define ptr @OCSP_resp_get0_respdata(ptr noundef %bs) #0 {
entry:
  %bs.addr = alloca ptr, align 8
  store ptr %bs, ptr %bs.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %tbsResponseData = getelementptr inbounds %struct.ocsp_basic_response_st, ptr %0, i32 0, i32 0
  ret ptr %tbsResponseData
}

; Function Attrs: nounwind uwtable
define i32 @OCSP_resp_count(ptr noundef %bs) #0 {
entry:
  %retval = alloca i32, align 4
  %bs.addr = alloca ptr, align 8
  store ptr %bs, ptr %bs.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %tbsResponseData = getelementptr inbounds %struct.ocsp_basic_response_st, ptr %1, i32 0, i32 0
  %responses = getelementptr inbounds %struct.ocsp_response_data_st, ptr %tbsResponseData, i32 0, i32 3
  %2 = load ptr, ptr %responses, align 8, !tbaa !43
  %call = call ptr @ossl_check_const_OCSP_SINGLERESP_sk_type(ptr noundef %2)
  %call1 = call i32 @OPENSSL_sk_num(ptr noundef %call)
  store i32 %call1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

declare i32 @OPENSSL_sk_num(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_const_OCSP_SINGLERESP_sk_type(ptr noundef %sk) #3 {
entry:
  %sk.addr = alloca ptr, align 8
  store ptr %sk, ptr %sk.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sk.addr, align 8, !tbaa !4
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define ptr @OCSP_resp_get0(ptr noundef %bs, i32 noundef %idx) #0 {
entry:
  %retval = alloca ptr, align 8
  %bs.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  store ptr %bs, ptr %bs.addr, align 8, !tbaa !4
  store i32 %idx, ptr %idx.addr, align 4, !tbaa !44
  %0 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %tbsResponseData = getelementptr inbounds %struct.ocsp_basic_response_st, ptr %1, i32 0, i32 0
  %responses = getelementptr inbounds %struct.ocsp_response_data_st, ptr %tbsResponseData, i32 0, i32 3
  %2 = load ptr, ptr %responses, align 8, !tbaa !43
  %call = call ptr @ossl_check_const_OCSP_SINGLERESP_sk_type(ptr noundef %2)
  %3 = load i32, ptr %idx.addr, align 4, !tbaa !44
  %call1 = call ptr @OPENSSL_sk_value(ptr noundef %call, i32 noundef %3)
  store ptr %call1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8
  ret ptr %4
}

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define ptr @OCSP_resp_get0_produced_at(ptr noundef %bs) #0 {
entry:
  %bs.addr = alloca ptr, align 8
  store ptr %bs, ptr %bs.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %tbsResponseData = getelementptr inbounds %struct.ocsp_basic_response_st, ptr %0, i32 0, i32 0
  %producedAt = getelementptr inbounds %struct.ocsp_response_data_st, ptr %tbsResponseData, i32 0, i32 2
  %1 = load ptr, ptr %producedAt, align 8, !tbaa !45
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define ptr @OCSP_resp_get0_certs(ptr noundef %bs) #0 {
entry:
  %bs.addr = alloca ptr, align 8
  store ptr %bs, ptr %bs.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %certs = getelementptr inbounds %struct.ocsp_basic_response_st, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %certs, align 8, !tbaa !46
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define i32 @OCSP_resp_get0_id(ptr noundef %bs, ptr noundef %pid, ptr noundef %pname) #0 {
entry:
  %retval = alloca i32, align 4
  %bs.addr = alloca ptr, align 8
  %pid.addr = alloca ptr, align 8
  %pname.addr = alloca ptr, align 8
  %rid = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bs, ptr %bs.addr, align 8, !tbaa !4
  store ptr %pid, ptr %pid.addr, align 8, !tbaa !4
  store ptr %pname, ptr %pname.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rid) #5
  %0 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %tbsResponseData = getelementptr inbounds %struct.ocsp_basic_response_st, ptr %0, i32 0, i32 0
  %responderId = getelementptr inbounds %struct.ocsp_response_data_st, ptr %tbsResponseData, i32 0, i32 1
  store ptr %responderId, ptr %rid, align 8, !tbaa !4
  %1 = load ptr, ptr %rid, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.ocsp_responder_id_st, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %type, align 8, !tbaa !47
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %rid, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.ocsp_responder_id_st, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %value, align 8, !tbaa !48
  %5 = load ptr, ptr %pname.addr, align 8, !tbaa !4
  store ptr %4, ptr %5, align 8, !tbaa !4
  %6 = load ptr, ptr %pid.addr, align 8, !tbaa !4
  store ptr null, ptr %6, align 8, !tbaa !4
  br label %if.end6

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %rid, align 8, !tbaa !4
  %type1 = getelementptr inbounds %struct.ocsp_responder_id_st, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %type1, align 8, !tbaa !47
  %cmp2 = icmp eq i32 %8, 1
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %9 = load ptr, ptr %rid, align 8, !tbaa !4
  %value4 = getelementptr inbounds %struct.ocsp_responder_id_st, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %value4, align 8, !tbaa !48
  %11 = load ptr, ptr %pid.addr, align 8, !tbaa !4
  store ptr %10, ptr %11, align 8, !tbaa !4
  %12 = load ptr, ptr %pname.addr, align 8, !tbaa !4
  store ptr null, ptr %12, align 8, !tbaa !4
  br label %if.end

if.else5:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else5
  call void @llvm.lifetime.end.p0(i64 8, ptr %rid) #5
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @OCSP_resp_get1_id(ptr noundef %bs, ptr noundef %pid, ptr noundef %pname) #0 {
entry:
  %retval = alloca i32, align 4
  %bs.addr = alloca ptr, align 8
  %pid.addr = alloca ptr, align 8
  %pname.addr = alloca ptr, align 8
  %rid = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bs, ptr %bs.addr, align 8, !tbaa !4
  store ptr %pid, ptr %pid.addr, align 8, !tbaa !4
  store ptr %pname, ptr %pname.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rid) #5
  %0 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %tbsResponseData = getelementptr inbounds %struct.ocsp_basic_response_st, ptr %0, i32 0, i32 0
  %responderId = getelementptr inbounds %struct.ocsp_response_data_st, ptr %tbsResponseData, i32 0, i32 1
  store ptr %responderId, ptr %rid, align 8, !tbaa !4
  %1 = load ptr, ptr %rid, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.ocsp_responder_id_st, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %type, align 8, !tbaa !47
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %rid, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.ocsp_responder_id_st, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %value, align 8, !tbaa !48
  %call = call ptr @X509_NAME_dup(ptr noundef %4)
  %5 = load ptr, ptr %pname.addr, align 8, !tbaa !4
  store ptr %call, ptr %5, align 8, !tbaa !4
  %6 = load ptr, ptr %pid.addr, align 8, !tbaa !4
  store ptr null, ptr %6, align 8, !tbaa !4
  br label %if.end7

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %rid, align 8, !tbaa !4
  %type1 = getelementptr inbounds %struct.ocsp_responder_id_st, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %type1, align 8, !tbaa !47
  %cmp2 = icmp eq i32 %8, 1
  br i1 %cmp2, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.else
  %9 = load ptr, ptr %rid, align 8, !tbaa !4
  %value4 = getelementptr inbounds %struct.ocsp_responder_id_st, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %value4, align 8, !tbaa !48
  %call5 = call ptr @ASN1_OCTET_STRING_dup(ptr noundef %10)
  %11 = load ptr, ptr %pid.addr, align 8, !tbaa !4
  store ptr %call5, ptr %11, align 8, !tbaa !4
  %12 = load ptr, ptr %pname.addr, align 8, !tbaa !4
  store ptr null, ptr %12, align 8, !tbaa !4
  br label %if.end

if.else6:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then3
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %13 = load ptr, ptr %pname.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %13, align 8, !tbaa !4
  %cmp8 = icmp eq ptr %14, null
  br i1 %cmp8, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end7
  %15 = load ptr, ptr %pid.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %15, align 8, !tbaa !4
  %cmp9 = icmp eq ptr %16, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true, %if.end7
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.else6
  call void @llvm.lifetime.end.p0(i64 8, ptr %rid) #5
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

declare ptr @X509_NAME_dup(ptr noundef) #2

declare ptr @ASN1_OCTET_STRING_dup(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @OCSP_resp_find(ptr noundef %bs, ptr noundef %id, i32 noundef %last) #0 {
entry:
  %retval = alloca i32, align 4
  %bs.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %last.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sresp = alloca ptr, align 8
  %single = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bs, ptr %bs.addr, align 8, !tbaa !4
  store ptr %id, ptr %id.addr, align 8, !tbaa !4
  store i32 %last, ptr %last.addr, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sresp) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %single) #5
  %0 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %last.addr, align 4, !tbaa !44
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %last.addr, align 4, !tbaa !44
  br label %if.end3

if.else:                                          ; preds = %if.end
  %2 = load i32, ptr %last.addr, align 4, !tbaa !44
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %last.addr, align 4, !tbaa !44
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %3 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %tbsResponseData = getelementptr inbounds %struct.ocsp_basic_response_st, ptr %3, i32 0, i32 0
  %responses = getelementptr inbounds %struct.ocsp_response_data_st, ptr %tbsResponseData, i32 0, i32 3
  %4 = load ptr, ptr %responses, align 8, !tbaa !43
  store ptr %4, ptr %sresp, align 8, !tbaa !4
  %5 = load i32, ptr %last.addr, align 4, !tbaa !44
  store i32 %5, ptr %i, align 4, !tbaa !44
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %6 = load i32, ptr %i, align 4, !tbaa !44
  %7 = load ptr, ptr %sresp, align 8, !tbaa !4
  %call = call ptr @ossl_check_const_OCSP_SINGLERESP_sk_type(ptr noundef %7)
  %call4 = call i32 @OPENSSL_sk_num(ptr noundef %call)
  %cmp5 = icmp slt i32 %6, %call4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %sresp, align 8, !tbaa !4
  %call6 = call ptr @ossl_check_const_OCSP_SINGLERESP_sk_type(ptr noundef %8)
  %9 = load i32, ptr %i, align 4, !tbaa !44
  %call7 = call ptr @OPENSSL_sk_value(ptr noundef %call6, i32 noundef %9)
  store ptr %call7, ptr %single, align 8, !tbaa !4
  %10 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %single, align 8, !tbaa !4
  %certId = getelementptr inbounds %struct.ocsp_single_response_st, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %certId, align 8, !tbaa !49
  %call8 = call i32 @OCSP_id_cmp(ptr noundef %10, ptr noundef %12)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end10, label %if.then9

if.then9:                                         ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !tbaa !44
  store i32 %13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %14 = load i32, ptr %i, align 4, !tbaa !44
  %inc11 = add nsw i32 %14, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !44
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %single) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sresp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

declare i32 @OCSP_id_cmp(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @OCSP_single_get0_status(ptr noundef %single, ptr noundef %reason, ptr noundef %revtime, ptr noundef %thisupd, ptr noundef %nextupd) #0 {
entry:
  %retval = alloca i32, align 4
  %single.addr = alloca ptr, align 8
  %reason.addr = alloca ptr, align 8
  %revtime.addr = alloca ptr, align 8
  %thisupd.addr = alloca ptr, align 8
  %nextupd.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cst = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %rev = alloca ptr, align 8
  store ptr %single, ptr %single.addr, align 8, !tbaa !4
  store ptr %reason, ptr %reason.addr, align 8, !tbaa !4
  store ptr %revtime, ptr %revtime.addr, align 8, !tbaa !4
  store ptr %thisupd, ptr %thisupd.addr, align 8, !tbaa !4
  store ptr %nextupd, ptr %nextupd.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %cst) #5
  %0 = load ptr, ptr %single.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %single.addr, align 8, !tbaa !4
  %certStatus = getelementptr inbounds %struct.ocsp_single_response_st, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %certStatus, align 8, !tbaa !53
  store ptr %2, ptr %cst, align 8, !tbaa !4
  %3 = load ptr, ptr %cst, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.ocsp_cert_status_st, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %type, align 8, !tbaa !54
  store i32 %4, ptr %ret, align 4, !tbaa !44
  %5 = load i32, ptr %ret, align 4, !tbaa !44
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.then2, label %if.end12

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %rev) #5
  %6 = load ptr, ptr %cst, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.ocsp_cert_status_st, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %value, align 8, !tbaa !48
  store ptr %7, ptr %rev, align 8, !tbaa !4
  %8 = load ptr, ptr %revtime.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then2
  %9 = load ptr, ptr %rev, align 8, !tbaa !4
  %revocationTime = getelementptr inbounds %struct.ocsp_revoked_info_st, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %revocationTime, align 8, !tbaa !56
  %11 = load ptr, ptr %revtime.addr, align 8, !tbaa !4
  store ptr %10, ptr %11, align 8, !tbaa !4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then2
  %12 = load ptr, ptr %reason.addr, align 8, !tbaa !4
  %tobool5 = icmp ne ptr %12, null
  br i1 %tobool5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end4
  %13 = load ptr, ptr %rev, align 8, !tbaa !4
  %revocationReason = getelementptr inbounds %struct.ocsp_revoked_info_st, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %revocationReason, align 8, !tbaa !58
  %tobool7 = icmp ne ptr %14, null
  br i1 %tobool7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then6
  %15 = load ptr, ptr %rev, align 8, !tbaa !4
  %revocationReason9 = getelementptr inbounds %struct.ocsp_revoked_info_st, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %revocationReason9, align 8, !tbaa !58
  %call = call i64 @ASN1_ENUMERATED_get(ptr noundef %16)
  %conv = trunc i64 %call to i32
  %17 = load ptr, ptr %reason.addr, align 8, !tbaa !4
  store i32 %conv, ptr %17, align 4, !tbaa !44
  br label %if.end10

if.else:                                          ; preds = %if.then6
  %18 = load ptr, ptr %reason.addr, align 8, !tbaa !4
  store i32 -1, ptr %18, align 4, !tbaa !44
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rev) #5
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  %19 = load ptr, ptr %thisupd.addr, align 8, !tbaa !4
  %cmp13 = icmp ne ptr %19, null
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %20 = load ptr, ptr %single.addr, align 8, !tbaa !4
  %thisUpdate = getelementptr inbounds %struct.ocsp_single_response_st, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %thisUpdate, align 8, !tbaa !59
  %22 = load ptr, ptr %thisupd.addr, align 8, !tbaa !4
  store ptr %21, ptr %22, align 8, !tbaa !4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12
  %23 = load ptr, ptr %nextupd.addr, align 8, !tbaa !4
  %cmp17 = icmp ne ptr %23, null
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  %24 = load ptr, ptr %single.addr, align 8, !tbaa !4
  %nextUpdate = getelementptr inbounds %struct.ocsp_single_response_st, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %nextUpdate, align 8, !tbaa !60
  %26 = load ptr, ptr %nextupd.addr, align 8, !tbaa !4
  store ptr %25, ptr %26, align 8, !tbaa !4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16
  %27 = load i32, ptr %ret, align 4, !tbaa !44
  store i32 %27, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cst) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @OCSP_resp_find_status(ptr noundef %bs, ptr noundef %id, ptr noundef %status, ptr noundef %reason, ptr noundef %revtime, ptr noundef %thisupd, ptr noundef %nextupd) #0 {
entry:
  %retval = alloca i32, align 4
  %bs.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %status.addr = alloca ptr, align 8
  %reason.addr = alloca ptr, align 8
  %revtime.addr = alloca ptr, align 8
  %thisupd.addr = alloca ptr, align 8
  %nextupd.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %single = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bs, ptr %bs.addr, align 8, !tbaa !4
  store ptr %id, ptr %id.addr, align 8, !tbaa !4
  store ptr %status, ptr %status.addr, align 8, !tbaa !4
  store ptr %reason, ptr %reason.addr, align 8, !tbaa !4
  store ptr %revtime, ptr %revtime.addr, align 8, !tbaa !4
  store ptr %thisupd, ptr %thisupd.addr, align 8, !tbaa !4
  store ptr %nextupd, ptr %nextupd.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  %0 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %call = call i32 @OCSP_resp_find(ptr noundef %0, ptr noundef %1, i32 noundef -1)
  store i32 %call, ptr %i, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr %single) #5
  %2 = load i32, ptr %i, align 4, !tbaa !44
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %4 = load i32, ptr %i, align 4, !tbaa !44
  %call1 = call ptr @OCSP_resp_get0(ptr noundef %3, i32 noundef %4)
  store ptr %call1, ptr %single, align 8, !tbaa !4
  %5 = load ptr, ptr %single, align 8, !tbaa !4
  %6 = load ptr, ptr %reason.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %revtime.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %thisupd.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %nextupd.addr, align 8, !tbaa !4
  %call2 = call i32 @OCSP_single_get0_status(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  store i32 %call2, ptr %i, align 4, !tbaa !44
  %10 = load ptr, ptr %status.addr, align 8, !tbaa !4
  %cmp3 = icmp ne ptr %10, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !tbaa !44
  %12 = load ptr, ptr %status.addr, align 8, !tbaa !4
  store i32 %11, ptr %12, align 4, !tbaa !44
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %single) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @OCSP_check_validity(ptr noundef %thisupd, ptr noundef %nextupd, i64 noundef %nsec, i64 noundef %maxsec) #0 {
entry:
  %retval = alloca i32, align 4
  %thisupd.addr = alloca ptr, align 8
  %nextupd.addr = alloca ptr, align 8
  %nsec.addr = alloca i64, align 8
  %maxsec.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %t_now = alloca i64, align 8
  %t_tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %thisupd, ptr %thisupd.addr, align 8, !tbaa !4
  store ptr %nextupd, ptr %nextupd.addr, align 8, !tbaa !4
  store i64 %nsec, ptr %nsec.addr, align 8, !tbaa !18
  store i64 %maxsec, ptr %maxsec.addr, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5
  store i32 1, ptr %ret, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr %t_now) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %t_tmp) #5
  %call = call i64 @time(ptr noundef %t_now) #5
  %0 = load ptr, ptr %thisupd.addr, align 8, !tbaa !4
  %call1 = call i32 @ASN1_GENERALIZEDTIME_check(ptr noundef %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 319, ptr noundef @__func__.OCSP_check_validity)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 39, i32 noundef 123, ptr noundef null)
  store i32 0, ptr %ret, align 4, !tbaa !44
  br label %if.end11

if.else:                                          ; preds = %entry
  %1 = load i64, ptr %t_now, align 8, !tbaa !18
  %2 = load i64, ptr %nsec.addr, align 8, !tbaa !18
  %add = add nsw i64 %1, %2
  store i64 %add, ptr %t_tmp, align 8, !tbaa !18
  %3 = load ptr, ptr %thisupd.addr, align 8, !tbaa !4
  %call2 = call i32 @X509_cmp_time(ptr noundef %3, ptr noundef %t_tmp)
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 324, ptr noundef @__func__.OCSP_check_validity)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 39, i32 noundef 126, ptr noundef null)
  store i32 0, ptr %ret, align 4, !tbaa !44
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  %4 = load i64, ptr %maxsec.addr, align 8, !tbaa !18
  %cmp4 = icmp sge i64 %4, 0
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  %5 = load i64, ptr %t_now, align 8, !tbaa !18
  %6 = load i64, ptr %maxsec.addr, align 8, !tbaa !18
  %sub = sub nsw i64 %5, %6
  store i64 %sub, ptr %t_tmp, align 8, !tbaa !18
  %7 = load ptr, ptr %thisupd.addr, align 8, !tbaa !4
  %call6 = call i32 @X509_cmp_time(ptr noundef %7, ptr noundef %t_tmp)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then5
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 335, ptr noundef @__func__.OCSP_check_validity)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 39, i32 noundef 127, ptr noundef null)
  store i32 0, ptr %ret, align 4, !tbaa !44
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then5
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then
  %8 = load ptr, ptr %nextupd.addr, align 8, !tbaa !4
  %cmp12 = icmp eq ptr %8, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  %9 = load i32, ptr %ret, align 4, !tbaa !44
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %10 = load ptr, ptr %nextupd.addr, align 8, !tbaa !4
  %call15 = call i32 @ASN1_GENERALIZEDTIME_check(ptr noundef %10)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.else18, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 346, ptr noundef @__func__.OCSP_check_validity)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 39, i32 noundef 122, ptr noundef null)
  store i32 0, ptr %ret, align 4, !tbaa !44
  br label %if.end24

if.else18:                                        ; preds = %if.end14
  %11 = load i64, ptr %t_now, align 8, !tbaa !18
  %12 = load i64, ptr %nsec.addr, align 8, !tbaa !18
  %sub19 = sub nsw i64 %11, %12
  store i64 %sub19, ptr %t_tmp, align 8, !tbaa !18
  %13 = load ptr, ptr %nextupd.addr, align 8, !tbaa !4
  %call20 = call i32 @X509_cmp_time(ptr noundef %13, ptr noundef %t_tmp)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.else18
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 351, ptr noundef @__func__.OCSP_check_validity)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 39, i32 noundef 125, ptr noundef null)
  store i32 0, ptr %ret, align 4, !tbaa !44
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.else18
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then17
  %14 = load ptr, ptr %nextupd.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %thisupd.addr, align 8, !tbaa !4
  %call25 = call i32 @ASN1_STRING_cmp(ptr noundef %14, ptr noundef %15)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 358, ptr noundef @__func__.OCSP_check_validity)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 39, i32 noundef 124, ptr noundef null)
  store i32 0, ptr %ret, align 4, !tbaa !44
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %16 = load i32, ptr %ret, align 4, !tbaa !44
  store i32 %16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %t_tmp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %t_now) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #4

declare i32 @ASN1_GENERALIZEDTIME_check(ptr noundef) #2

declare i32 @X509_cmp_time(ptr noundef, ptr noundef) #2

declare i32 @ASN1_STRING_cmp(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @OCSP_SINGLERESP_get0_id(ptr noundef %single) #0 {
entry:
  %single.addr = alloca ptr, align 8
  store ptr %single, ptr %single.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %single.addr, align 8, !tbaa !4
  %certId = getelementptr inbounds %struct.ocsp_single_response_st, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %certId, align 8, !tbaa !49
  ret ptr %1
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !5, i64 0}
!9 = !{!"ocsp_one_request_st", !5, i64 0, !5, i64 8}
!10 = !{!11, !5, i64 16}
!11 = !{!"ocsp_request_st", !12, i64 0, !5, i64 32}
!12 = !{!"ocsp_req_info_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!13 = !{!14, !15, i64 0}
!14 = !{!"GENERAL_NAME_st", !15, i64 0, !6, i64 8}
!15 = !{!"int", !6, i64 0}
!16 = !{!11, !5, i64 8}
!17 = !{!11, !5, i64 32}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!21, !5, i64 16}
!21 = !{!"ocsp_signature_st", !22, i64 0, !5, i64 16, !5, i64 24}
!22 = !{!"X509_algor_st", !5, i64 0, !5, i64 8}
!23 = !{!24, !5, i64 368}
!24 = !{!"x509_st", !25, i64 0, !22, i64 136, !26, i64 152, !29, i64 176, !6, i64 192, !30, i64 200, !19, i64 216, !19, i64 224, !15, i64 232, !15, i64 236, !15, i64 240, !15, i64 244, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !6, i64 312, !5, i64 336, !5, i64 344, !15, i64 352, !5, i64 360, !5, i64 368, !5, i64 376}
!25 = !{!"x509_cinf_st", !5, i64 0, !26, i64 8, !22, i64 32, !5, i64 48, !27, i64 56, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !28, i64 112}
!26 = !{!"asn1_string_st", !15, i64 0, !15, i64 4, !5, i64 8, !19, i64 16}
!27 = !{!"X509_val_st", !5, i64 0, !5, i64 8}
!28 = !{!"ASN1_ENCODING_st", !5, i64 0, !19, i64 8, !15, i64 16}
!29 = !{!"x509_sig_info_st", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!30 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!31 = !{!24, !5, i64 376}
!32 = !{!21, !5, i64 24}
!33 = !{!34, !5, i64 0}
!34 = !{!"ocsp_response_st", !5, i64 0, !5, i64 8}
!35 = !{!34, !5, i64 8}
!36 = !{!37, !5, i64 0}
!37 = !{!"ocsp_resp_bytes_st", !5, i64 0, !5, i64 8}
!38 = !{!37, !5, i64 8}
!39 = !{!40, !5, i64 64}
!40 = !{!"ocsp_basic_response_st", !41, i64 0, !22, i64 48, !5, i64 64, !5, i64 72}
!41 = !{!"ocsp_response_data_st", !5, i64 0, !42, i64 8, !5, i64 24, !5, i64 32, !5, i64 40}
!42 = !{!"ocsp_responder_id_st", !15, i64 0, !6, i64 8}
!43 = !{!40, !5, i64 32}
!44 = !{!15, !15, i64 0}
!45 = !{!40, !5, i64 24}
!46 = !{!40, !5, i64 72}
!47 = !{!42, !15, i64 0}
!48 = !{!6, !6, i64 0}
!49 = !{!50, !5, i64 0}
!50 = !{!"ocsp_single_response_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!50, !5, i64 8}
!54 = !{!55, !15, i64 0}
!55 = !{!"ocsp_cert_status_st", !15, i64 0, !6, i64 8}
!56 = !{!57, !5, i64 0}
!57 = !{!"ocsp_revoked_info_st", !5, i64 0, !5, i64 8}
!58 = !{!57, !5, i64 8}
!59 = !{!50, !5, i64 16}
!60 = !{!50, !5, i64 24}
