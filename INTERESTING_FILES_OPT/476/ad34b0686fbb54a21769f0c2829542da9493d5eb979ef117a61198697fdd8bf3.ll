; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.6 = external constant [5 x i8]

declare i64 @vtklibharu_HPDF_Page_MoveTextPos()

define i64 @vtklibharu_HPDF_Page_TextRect(ptr %page, ptr %text, i32 %align, i1 %tobool110) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %for.cond, %entry
  %call50 = call i32 @vtklibharu_HPDF_Page_MeasureText()
  switch i32 %align, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %for.cond
  ]

sw.bb:                                            ; preds = %for.cond
  br i1 %tobool110, label %if.else112, label %if.then111

if.then111:                                       ; preds = %sw.bb
  store i32 0, ptr %text, align 4
  br label %if.end113

if.else112:                                       ; preds = %sw.bb
  store float 0.000000e+00, ptr %page, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.else112, %if.then111
  %call114 = load volatile i64, ptr null, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end113, %for.cond
  call void @llvm.assume(i1 %tobool110)
  br label %for.cond
}

declare i32 @vtklibharu_HPDF_Page_MeasureText()

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
