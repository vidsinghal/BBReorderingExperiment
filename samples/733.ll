; ModuleID = 'samples/733.bc'
source_filename = "crypto/ocsp/ocsp_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"application/ocsp-request\00", align 1

; Function Attrs: nounwind uwtable
define ptr @OCSP_sendreq_new(ptr noundef %io, ptr noundef %path, ptr noundef %req, i32 noundef %buf_size) #0 {
entry:
  %retval = alloca ptr, align 8
  %io.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %req.addr = alloca ptr, align 8
  %buf_size.addr = alloca i32, align 4
  %rctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %io, ptr %io.addr, align 8, !tbaa !4
  store ptr %path, ptr %path.addr, align 8, !tbaa !4
  store ptr %req, ptr %req.addr, align 8, !tbaa !4
  store i32 %buf_size, ptr %buf_size.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rctx) #3
  %0 = load ptr, ptr %io.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %io.addr, align 8, !tbaa !4
  %2 = load i32, ptr %buf_size.addr, align 4, !tbaa !8
  %call = call ptr @OSSL_HTTP_REQ_CTX_new(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  store ptr %call, ptr %rctx, align 8, !tbaa !4
  %3 = load ptr, ptr %rctx, align 8, !tbaa !4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %rctx, align 8, !tbaa !4
  %5 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %call1 = call i32 @OSSL_HTTP_REQ_CTX_set_request_line(ptr noundef %4, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %5)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  br label %err

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %rctx, align 8, !tbaa !4
  %call4 = call i32 @OSSL_HTTP_REQ_CTX_set_expected(ptr noundef %6, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  br label %err

if.end7:                                          ; preds = %if.end3
  %7 = load ptr, ptr %req.addr, align 8, !tbaa !4
  %cmp8 = icmp ne ptr %7, null
  br i1 %cmp8, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %8 = load ptr, ptr %rctx, align 8, !tbaa !4
  %call9 = call ptr @OCSP_REQUEST_it()
  %9 = load ptr, ptr %req.addr, align 8, !tbaa !4
  %call10 = call i32 @OSSL_HTTP_REQ_CTX_set1_req(ptr noundef %8, ptr noundef @.str, ptr noundef %call9, ptr noundef %9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  br label %err

if.end13:                                         ; preds = %land.lhs.true, %if.end7
  %10 = load ptr, ptr %rctx, align 8, !tbaa !4
  store ptr %10, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

err:                                              ; preds = %if.then12, %if.then6, %if.then2
  %11 = load ptr, ptr %rctx, align 8, !tbaa !4
  call void @OSSL_HTTP_REQ_CTX_free(ptr noundef %11)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rctx) #3
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @OSSL_HTTP_REQ_CTX_new(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @OSSL_HTTP_REQ_CTX_set_request_line(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @OSSL_HTTP_REQ_CTX_set_expected(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @OSSL_HTTP_REQ_CTX_set1_req(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @OCSP_REQUEST_it() #2

declare void @OSSL_HTTP_REQ_CTX_free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define ptr @OCSP_sendreq_bio(ptr noundef %b, ptr noundef %path, ptr noundef %req) #0 {
entry:
  %retval = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %req.addr = alloca ptr, align 8
  %resp = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %mem = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %path, ptr %path.addr, align 8, !tbaa !4
  store ptr %req, ptr %req.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %resp) #3
  store ptr null, ptr %resp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #3
  %0 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %req.addr, align 8, !tbaa !4
  %call = call ptr @OCSP_sendreq_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  store ptr %call, ptr %ctx, align 8, !tbaa !4
  %3 = load ptr, ptr %ctx, align 8, !tbaa !4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ctx, align 8, !tbaa !4
  %call1 = call ptr @OSSL_HTTP_REQ_CTX_exchange(ptr noundef %4)
  store ptr %call1, ptr %mem, align 8, !tbaa !4
  %call2 = call ptr @OCSP_RESPONSE_it()
  %5 = load ptr, ptr %mem, align 8, !tbaa !4
  %call3 = call ptr @ASN1_item_d2i_bio(ptr noundef %call2, ptr noundef %5, ptr noundef null)
  store ptr %call3, ptr %resp, align 8, !tbaa !4
  %6 = load ptr, ptr %ctx, align 8, !tbaa !4
  call void @OSSL_HTTP_REQ_CTX_free(ptr noundef %6)
  %7 = load ptr, ptr %resp, align 8, !tbaa !4
  store ptr %7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %resp) #3
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

declare ptr @OSSL_HTTP_REQ_CTX_exchange(ptr noundef) #2

declare ptr @ASN1_item_d2i_bio(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @OCSP_RESPONSE_it() #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
