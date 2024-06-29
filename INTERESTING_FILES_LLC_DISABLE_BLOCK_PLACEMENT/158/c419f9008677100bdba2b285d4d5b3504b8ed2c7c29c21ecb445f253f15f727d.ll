; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @MF_Set_GInfo_Auto_R4(i1 %cmp, i1 %cmp17, i1 %cmp20) {
entry:
  %call1 = call i32 @List_Num_Entries()
  %call3 = load volatile ptr, ptr null, align 8
  %call4 = load volatile i32, ptr null, align 4
  %call5 = load volatile i32, ptr null, align 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry
  %call7 = load volatile ptr, ptr null, align 8
  %call8 = load volatile i32, ptr null, align 4
  ret i32 0

for.end:                                          ; preds = %entry
  br i1 %cmp17, label %if.end34, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %for.end
  %call195 = load volatile i32, ptr null, align 4
  br i1 %cmp20, label %if.end34, label %if.else22

if.else22:                                        ; preds = %lor.lhs.false18
  %call24 = load volatile i32, ptr null, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else22, %lor.lhs.false18, %for.end
  store volatile i32 0, ptr null, align 4
  unreachable
}

declare i32 @List_Num_Entries()
