; ModuleID = 'samples/67.bc'
source_filename = "src/mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VTerm = type { ptr, ptr, i32, i32, %struct.anon, %struct.anon.0, ptr, ptr, ptr, i64, i64, ptr, i64, ptr, ptr }
%struct.anon = type { i8, [3 x i8] }
%struct.anon.0 = type { i32, i8, i32, [16 x i8], %union.anon, ptr, ptr, i8, i8 }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { i32, [16 x i8], i32, [16 x i64] }
%struct.VTermState = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.VTermPos, i32, i32, i32, i32, i32, ptr, [2 x ptr], ptr, i32, i32, i32, i32, i32, ptr, i64, i32, %struct.VTermPos, %struct.anon.4, [4 x %struct.VTermEncodingInstance], %struct.VTermEncodingInstance, i32, i32, i32, %struct.VTermPen, %union.VTermColor, %union.VTermColor, [16 x %union.VTermColor], i32, i8, %struct.anon.7, %union.anon.9, %struct.anon.11 }
%struct.VTermPos = type { i32, i32 }
%struct.anon.4 = type { i16, [2 x i8] }
%struct.VTermEncodingInstance = type { ptr, [16 x i8] }
%struct.VTermPen = type { %union.VTermColor, %union.VTermColor, i16, [2 x i8] }
%union.VTermColor = type { %struct.anon.5 }
%struct.anon.5 = type { i8, i8, i8, i8 }
%struct.anon.7 = type { %struct.VTermPos, %struct.VTermPen, %struct.anon.8 }
%struct.anon.8 = type { i8, [3 x i8] }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i16, i8, i32, i32 }
%struct.anon.11 = type { ptr, ptr, ptr, i64 }

@.str = private unnamed_addr constant [8 x i8] c"M%c%c%c\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"M%s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"<%d;%d;%d%c\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%d;%d;%dM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @vterm_mouse_move(ptr noundef %vt, i32 noundef %row, i32 noundef %col, i32 noundef %mod) #0 {
entry:
  %vt.addr = alloca ptr, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %mod.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %button = alloca i32, align 4
  store ptr %vt, ptr %vt.addr, align 8
  store i32 %row, ptr %row.addr, align 4
  store i32 %col, ptr %col.addr, align 4
  store i32 %mod, ptr %mod.addr, align 4
  %0 = load ptr, ptr %vt.addr, align 8
  %state1 = getelementptr inbounds %struct.VTerm, ptr %0, i32 0, i32 13
  %1 = load ptr, ptr %state1, align 8
  store ptr %1, ptr %state, align 8
  %2 = load i32, ptr %col.addr, align 4
  %3 = load ptr, ptr %state, align 8
  %mouse_col = getelementptr inbounds %struct.VTermState, ptr %3, i32 0, i32 16
  %4 = load i32, ptr %mouse_col, align 8
  %cmp = icmp eq i32 %2, %4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, ptr %row.addr, align 4
  %6 = load ptr, ptr %state, align 8
  %mouse_row = getelementptr inbounds %struct.VTermState, ptr %6, i32 0, i32 17
  %7 = load i32, ptr %mouse_row, align 4
  %cmp2 = icmp eq i32 %5, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %if.end25

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load i32, ptr %col.addr, align 4
  %9 = load ptr, ptr %state, align 8
  %mouse_col3 = getelementptr inbounds %struct.VTermState, ptr %9, i32 0, i32 16
  store i32 %8, ptr %mouse_col3, align 8
  %10 = load i32, ptr %row.addr, align 4
  %11 = load ptr, ptr %state, align 8
  %mouse_row4 = getelementptr inbounds %struct.VTermState, ptr %11, i32 0, i32 17
  store i32 %10, ptr %mouse_row4, align 4
  %12 = load ptr, ptr %state, align 8
  %mouse_flags = getelementptr inbounds %struct.VTermState, ptr %12, i32 0, i32 19
  %13 = load i32, ptr %mouse_flags, align 4
  %and = and i32 %13, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true5, label %lor.lhs.false

land.lhs.true5:                                   ; preds = %if.end
  %14 = load ptr, ptr %state, align 8
  %mouse_buttons = getelementptr inbounds %struct.VTermState, ptr %14, i32 0, i32 18
  %15 = load i32, ptr %mouse_buttons, align 8
  %tobool6 = icmp ne i32 %15, 0
  br i1 %tobool6, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true5, %if.end
  %16 = load ptr, ptr %state, align 8
  %mouse_flags7 = getelementptr inbounds %struct.VTermState, ptr %16, i32 0, i32 19
  %17 = load i32, ptr %mouse_flags7, align 4
  %and8 = and i32 %17, 4
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.end25

if.then10:                                        ; preds = %lor.lhs.false, %land.lhs.true5
  %18 = load ptr, ptr %state, align 8
  %mouse_buttons11 = getelementptr inbounds %struct.VTermState, ptr %18, i32 0, i32 18
  %19 = load i32, ptr %mouse_buttons11, align 8
  %and12 = and i32 %19, 1
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then10
  br label %cond.end23

cond.false:                                       ; preds = %if.then10
  %20 = load ptr, ptr %state, align 8
  %mouse_buttons14 = getelementptr inbounds %struct.VTermState, ptr %20, i32 0, i32 18
  %21 = load i32, ptr %mouse_buttons14, align 8
  %and15 = and i32 %21, 2
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.false
  br label %cond.end

cond.false18:                                     ; preds = %cond.false
  %22 = load ptr, ptr %state, align 8
  %mouse_buttons19 = getelementptr inbounds %struct.VTermState, ptr %22, i32 0, i32 18
  %23 = load i32, ptr %mouse_buttons19, align 8
  %and20 = and i32 %23, 4
  %tobool21 = icmp ne i32 %and20, 0
  %24 = zext i1 %tobool21 to i64
  %cond = select i1 %tobool21, i32 3, i32 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false18, %cond.true17
  %cond22 = phi i32 [ 2, %cond.true17 ], [ %cond, %cond.false18 ]
  br label %cond.end23

cond.end23:                                       ; preds = %cond.end, %cond.true
  %cond24 = phi i32 [ 1, %cond.true ], [ %cond22, %cond.end ]
  store i32 %cond24, ptr %button, align 4
  %25 = load ptr, ptr %state, align 8
  %26 = load i32, ptr %button, align 4
  %sub = sub nsw i32 %26, 1
  %add = add nsw i32 %sub, 32
  %27 = load i32, ptr %mod.addr, align 4
  %28 = load i32, ptr %col.addr, align 4
  %29 = load i32, ptr %row.addr, align 4
  call void @output_mouse(ptr noundef %25, i32 noundef %add, i32 noundef 1, i32 noundef %27, i32 noundef %28, i32 noundef %29)
  br label %if.end25

if.end25:                                         ; preds = %if.then, %cond.end23, %lor.lhs.false
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_mouse(ptr noundef %state, i32 noundef %code, i32 noundef %pressed, i32 noundef %modifiers, i32 noundef %col, i32 noundef %row) #0 {
entry:
  %state.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %pressed.addr = alloca i32, align 4
  %modifiers.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %utf8 = alloca [18 x i8], align 16
  %len = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8
  store i32 %code, ptr %code.addr, align 4
  store i32 %pressed, ptr %pressed.addr, align 4
  store i32 %modifiers, ptr %modifiers.addr, align 4
  store i32 %col, ptr %col.addr, align 4
  store i32 %row, ptr %row.addr, align 4
  %0 = load i32, ptr %modifiers.addr, align 4
  %shl = shl i32 %0, 2
  store i32 %shl, ptr %modifiers.addr, align 4
  %1 = load ptr, ptr %state.addr, align 8
  %mouse_protocol = getelementptr inbounds %struct.VTermState, ptr %1, i32 0, i32 20
  %2 = load i32, ptr %mouse_protocol, align 8
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb34
    i32 3, label %sw.bb40
  ]

sw.bb:                                            ; preds = %entry
  %3 = load i32, ptr %col.addr, align 4
  %add = add nsw i32 %3, 33
  %cmp = icmp sgt i32 %add, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 222, ptr %col.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %4 = load i32, ptr %row.addr, align 4
  %add1 = add nsw i32 %4, 33
  %cmp2 = icmp sgt i32 %add1, 255
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 222, ptr %row.addr, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load i32, ptr %pressed.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end4
  store i32 3, ptr %code.addr, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end4
  %6 = load ptr, ptr %state.addr, align 8
  %vt = getelementptr inbounds %struct.VTermState, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vt, align 8
  %8 = load i32, ptr %code.addr, align 4
  %9 = load i32, ptr %modifiers.addr, align 4
  %or = or i32 %8, %9
  %add7 = add nsw i32 %or, 32
  %10 = load i32, ptr %col.addr, align 4
  %add8 = add nsw i32 %10, 33
  %11 = load i32, ptr %row.addr, align 4
  %add9 = add nsw i32 %11, 33
  call void (ptr, i8, ptr, ...) @vterm_push_output_sprintf_ctrl(ptr noundef %7, i8 noundef zeroext -101, ptr noundef @.str, i32 noundef %add7, i32 noundef %add8, i32 noundef %add9)
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  store i64 0, ptr %len, align 8
  %12 = load i32, ptr %pressed.addr, align 4
  %tobool11 = icmp ne i32 %12, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %sw.bb10
  store i32 3, ptr %code.addr, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %sw.bb10
  %13 = load i32, ptr %code.addr, align 4
  %14 = load i32, ptr %modifiers.addr, align 4
  %or14 = or i32 %13, %14
  %add15 = add nsw i32 %or14, 32
  %conv = sext i32 %add15 to i64
  %arraydecay = getelementptr inbounds [18 x i8], ptr %utf8, i64 0, i64 0
  %15 = load i64, ptr %len, align 8
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 %15
  %call = call i32 @fill_utf8(i64 noundef %conv, ptr noundef %add.ptr)
  %conv16 = sext i32 %call to i64
  %16 = load i64, ptr %len, align 8
  %add17 = add i64 %16, %conv16
  store i64 %add17, ptr %len, align 8
  %17 = load i32, ptr %col.addr, align 4
  %add18 = add nsw i32 %17, 33
  %conv19 = sext i32 %add18 to i64
  %arraydecay20 = getelementptr inbounds [18 x i8], ptr %utf8, i64 0, i64 0
  %18 = load i64, ptr %len, align 8
  %add.ptr21 = getelementptr inbounds i8, ptr %arraydecay20, i64 %18
  %call22 = call i32 @fill_utf8(i64 noundef %conv19, ptr noundef %add.ptr21)
  %conv23 = sext i32 %call22 to i64
  %19 = load i64, ptr %len, align 8
  %add24 = add i64 %19, %conv23
  store i64 %add24, ptr %len, align 8
  %20 = load i32, ptr %row.addr, align 4
  %add25 = add nsw i32 %20, 33
  %conv26 = sext i32 %add25 to i64
  %arraydecay27 = getelementptr inbounds [18 x i8], ptr %utf8, i64 0, i64 0
  %21 = load i64, ptr %len, align 8
  %add.ptr28 = getelementptr inbounds i8, ptr %arraydecay27, i64 %21
  %call29 = call i32 @fill_utf8(i64 noundef %conv26, ptr noundef %add.ptr28)
  %conv30 = sext i32 %call29 to i64
  %22 = load i64, ptr %len, align 8
  %add31 = add i64 %22, %conv30
  store i64 %add31, ptr %len, align 8
  %23 = load i64, ptr %len, align 8
  %arrayidx = getelementptr inbounds [18 x i8], ptr %utf8, i64 0, i64 %23
  store i8 0, ptr %arrayidx, align 1
  %24 = load ptr, ptr %state.addr, align 8
  %vt32 = getelementptr inbounds %struct.VTermState, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %vt32, align 8
  %arraydecay33 = getelementptr inbounds [18 x i8], ptr %utf8, i64 0, i64 0
  call void (ptr, i8, ptr, ...) @vterm_push_output_sprintf_ctrl(ptr noundef %25, i8 noundef zeroext -101, ptr noundef @.str.1, ptr noundef %arraydecay33)
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  %26 = load ptr, ptr %state.addr, align 8
  %vt35 = getelementptr inbounds %struct.VTermState, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %vt35, align 8
  %28 = load i32, ptr %code.addr, align 4
  %29 = load i32, ptr %modifiers.addr, align 4
  %or36 = or i32 %28, %29
  %30 = load i32, ptr %col.addr, align 4
  %add37 = add nsw i32 %30, 1
  %31 = load i32, ptr %row.addr, align 4
  %add38 = add nsw i32 %31, 1
  %32 = load i32, ptr %pressed.addr, align 4
  %tobool39 = icmp ne i32 %32, 0
  %33 = zext i1 %tobool39 to i64
  %cond = select i1 %tobool39, i32 77, i32 109
  call void (ptr, i8, ptr, ...) @vterm_push_output_sprintf_ctrl(ptr noundef %27, i8 noundef zeroext -101, ptr noundef @.str.2, i32 noundef %or36, i32 noundef %add37, i32 noundef %add38, i32 noundef %cond)
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  %34 = load i32, ptr %pressed.addr, align 4
  %tobool41 = icmp ne i32 %34, 0
  br i1 %tobool41, label %if.end43, label %if.then42

if.then42:                                        ; preds = %sw.bb40
  store i32 3, ptr %code.addr, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %sw.bb40
  %35 = load ptr, ptr %state.addr, align 8
  %vt44 = getelementptr inbounds %struct.VTermState, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %vt44, align 8
  %37 = load i32, ptr %code.addr, align 4
  %38 = load i32, ptr %modifiers.addr, align 4
  %or45 = or i32 %37, %38
  %39 = load i32, ptr %col.addr, align 4
  %add46 = add nsw i32 %39, 1
  %40 = load i32, ptr %row.addr, align 4
  %add47 = add nsw i32 %40, 1
  call void (ptr, i8, ptr, ...) @vterm_push_output_sprintf_ctrl(ptr noundef %36, i8 noundef zeroext -101, ptr noundef @.str.3, i32 noundef %or45, i32 noundef %add46, i32 noundef %add47)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end43, %sw.bb34, %if.end13, %if.end6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @vterm_mouse_button(ptr noundef %vt, i32 noundef %button, i1 noundef zeroext %pressed, i32 noundef %mod) #0 {
entry:
  %vt.addr = alloca ptr, align 8
  %button.addr = alloca i32, align 4
  %pressed.addr = alloca i8, align 1
  %mod.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %old_buttons = alloca i32, align 4
  store ptr %vt, ptr %vt.addr, align 8
  store i32 %button, ptr %button.addr, align 4
  %frombool = zext i1 %pressed to i8
  store i8 %frombool, ptr %pressed.addr, align 1
  store i32 %mod, ptr %mod.addr, align 4
  %0 = load ptr, ptr %vt.addr, align 8
  %state1 = getelementptr inbounds %struct.VTerm, ptr %0, i32 0, i32 13
  %1 = load ptr, ptr %state1, align 8
  store ptr %1, ptr %state, align 8
  %2 = load ptr, ptr %state, align 8
  %mouse_buttons = getelementptr inbounds %struct.VTermState, ptr %2, i32 0, i32 18
  %3 = load i32, ptr %mouse_buttons, align 8
  store i32 %3, ptr %old_buttons, align 4
  %4 = load i32, ptr %button.addr, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, ptr %button.addr, align 4
  %cmp2 = icmp sle i32 %5, 3
  br i1 %cmp2, label %if.then, label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8, ptr %pressed.addr, align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %7 = load i32, ptr %button.addr, align 4
  %sub = sub nsw i32 %7, 1
  %shl = shl i32 1, %sub
  %8 = load ptr, ptr %state, align 8
  %mouse_buttons4 = getelementptr inbounds %struct.VTermState, ptr %8, i32 0, i32 18
  %9 = load i32, ptr %mouse_buttons4, align 8
  %or = or i32 %9, %shl
  store i32 %or, ptr %mouse_buttons4, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load i32, ptr %button.addr, align 4
  %sub5 = sub nsw i32 %10, 1
  %shl6 = shl i32 1, %sub5
  %not = xor i32 %shl6, -1
  %11 = load ptr, ptr %state, align 8
  %mouse_buttons7 = getelementptr inbounds %struct.VTermState, ptr %11, i32 0, i32 18
  %12 = load i32, ptr %mouse_buttons7, align 8
  %and = and i32 %12, %not
  store i32 %and, ptr %mouse_buttons7, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end8

if.end8:                                          ; preds = %if.end, %land.lhs.true, %entry
  %13 = load ptr, ptr %state, align 8
  %mouse_buttons9 = getelementptr inbounds %struct.VTermState, ptr %13, i32 0, i32 18
  %14 = load i32, ptr %mouse_buttons9, align 8
  %15 = load i32, ptr %old_buttons, align 4
  %cmp10 = icmp eq i32 %14, %15
  br i1 %cmp10, label %land.lhs.true11, label %if.end14

land.lhs.true11:                                  ; preds = %if.end8
  %16 = load i32, ptr %button.addr, align 4
  %cmp12 = icmp slt i32 %16, 4
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %land.lhs.true11
  br label %if.end32

if.end14:                                         ; preds = %land.lhs.true11, %if.end8
  %17 = load ptr, ptr %state, align 8
  %mouse_flags = getelementptr inbounds %struct.VTermState, ptr %17, i32 0, i32 19
  %18 = load i32, ptr %mouse_flags, align 4
  %tobool15 = icmp ne i32 %18, 0
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end14
  br label %if.end32

if.end17:                                         ; preds = %if.end14
  %19 = load i32, ptr %button.addr, align 4
  %cmp18 = icmp slt i32 %19, 4
  br i1 %cmp18, label %if.then19, label %if.else22

if.then19:                                        ; preds = %if.end17
  %20 = load ptr, ptr %state, align 8
  %21 = load i32, ptr %button.addr, align 4
  %sub20 = sub nsw i32 %21, 1
  %22 = load i8, ptr %pressed.addr, align 1
  %tobool21 = trunc i8 %22 to i1
  %conv = zext i1 %tobool21 to i32
  %23 = load i32, ptr %mod.addr, align 4
  %24 = load ptr, ptr %state, align 8
  %mouse_col = getelementptr inbounds %struct.VTermState, ptr %24, i32 0, i32 16
  %25 = load i32, ptr %mouse_col, align 8
  %26 = load ptr, ptr %state, align 8
  %mouse_row = getelementptr inbounds %struct.VTermState, ptr %26, i32 0, i32 17
  %27 = load i32, ptr %mouse_row, align 4
  call void @output_mouse(ptr noundef %20, i32 noundef %sub20, i32 noundef %conv, i32 noundef %23, i32 noundef %25, i32 noundef %27)
  br label %if.end32

if.else22:                                        ; preds = %if.end17
  %28 = load i32, ptr %button.addr, align 4
  %cmp23 = icmp slt i32 %28, 6
  br i1 %cmp23, label %if.then25, label %if.end31

if.then25:                                        ; preds = %if.else22
  %29 = load ptr, ptr %state, align 8
  %30 = load i32, ptr %button.addr, align 4
  %sub26 = sub nsw i32 %30, 4
  %add = add nsw i32 %sub26, 64
  %31 = load i8, ptr %pressed.addr, align 1
  %tobool27 = trunc i8 %31 to i1
  %conv28 = zext i1 %tobool27 to i32
  %32 = load i32, ptr %mod.addr, align 4
  %33 = load ptr, ptr %state, align 8
  %mouse_col29 = getelementptr inbounds %struct.VTermState, ptr %33, i32 0, i32 16
  %34 = load i32, ptr %mouse_col29, align 8
  %35 = load ptr, ptr %state, align 8
  %mouse_row30 = getelementptr inbounds %struct.VTermState, ptr %35, i32 0, i32 17
  %36 = load i32, ptr %mouse_row30, align 4
  call void @output_mouse(ptr noundef %29, i32 noundef %add, i32 noundef %conv28, i32 noundef %32, i32 noundef %34, i32 noundef %36)
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %if.else22
  br label %if.end32

if.end32:                                         ; preds = %if.then13, %if.then16, %if.end31, %if.then19
  ret void
}

declare void @vterm_push_output_sprintf_ctrl(ptr noundef, i8 noundef zeroext, ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_utf8(i64 noundef %codepoint, ptr noundef %str) #0 {
entry:
  %codepoint.addr = alloca i64, align 8
  %str.addr = alloca ptr, align 8
  %nbytes = alloca i32, align 4
  %b = alloca i32, align 4
  store i64 %codepoint, ptr %codepoint.addr, align 8
  store ptr %str, ptr %str.addr, align 8
  %0 = load i64, ptr %codepoint.addr, align 8
  %call = call i32 @utf8_seqlen(i64 noundef %0)
  store i32 %call, ptr %nbytes, align 4
  %1 = load i32, ptr %nbytes, align 4
  store i32 %1, ptr %b, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, ptr %b, align 4
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %b, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %b, align 4
  %4 = load i64, ptr %codepoint.addr, align 8
  %and = and i64 %4, 63
  %or = or i64 128, %and
  %conv = trunc i64 %or to i8
  %5 = load ptr, ptr %str.addr, align 8
  %6 = load i32, ptr %b, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %7 = load i64, ptr %codepoint.addr, align 8
  %shr = ashr i64 %7, 6
  store i64 %shr, ptr %codepoint.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, ptr %nbytes, align 4
  switch i32 %8, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb9
    i32 4, label %sw.bb14
    i32 5, label %sw.bb19
    i32 6, label %sw.bb24
  ]

sw.bb:                                            ; preds = %while.end
  %9 = load i64, ptr %codepoint.addr, align 8
  %and1 = and i64 %9, 127
  %conv2 = trunc i64 %and1 to i8
  %10 = load ptr, ptr %str.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %10, i64 0
  store i8 %conv2, ptr %arrayidx3, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.end
  %11 = load i64, ptr %codepoint.addr, align 8
  %and5 = and i64 %11, 31
  %or6 = or i64 192, %and5
  %conv7 = trunc i64 %or6 to i8
  %12 = load ptr, ptr %str.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %12, i64 0
  store i8 %conv7, ptr %arrayidx8, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %while.end
  %13 = load i64, ptr %codepoint.addr, align 8
  %and10 = and i64 %13, 15
  %or11 = or i64 224, %and10
  %conv12 = trunc i64 %or11 to i8
  %14 = load ptr, ptr %str.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %14, i64 0
  store i8 %conv12, ptr %arrayidx13, align 1
  br label %sw.epilog

sw.bb14:                                          ; preds = %while.end
  %15 = load i64, ptr %codepoint.addr, align 8
  %and15 = and i64 %15, 7
  %or16 = or i64 240, %and15
  %conv17 = trunc i64 %or16 to i8
  %16 = load ptr, ptr %str.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %16, i64 0
  store i8 %conv17, ptr %arrayidx18, align 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %while.end
  %17 = load i64, ptr %codepoint.addr, align 8
  %and20 = and i64 %17, 3
  %or21 = or i64 248, %and20
  %conv22 = trunc i64 %or21 to i8
  %18 = load ptr, ptr %str.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %18, i64 0
  store i8 %conv22, ptr %arrayidx23, align 1
  br label %sw.epilog

sw.bb24:                                          ; preds = %while.end
  %19 = load i64, ptr %codepoint.addr, align 8
  %and25 = and i64 %19, 1
  %or26 = or i64 252, %and25
  %conv27 = trunc i64 %or26 to i8
  %20 = load ptr, ptr %str.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %20, i64 0
  store i8 %conv27, ptr %arrayidx28, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end, %sw.bb24, %sw.bb19, %sw.bb14, %sw.bb9, %sw.bb4, %sw.bb
  %21 = load i32, ptr %nbytes, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_seqlen(i64 noundef %codepoint) #0 {
entry:
  %retval = alloca i32, align 4
  %codepoint.addr = alloca i64, align 8
  store i64 %codepoint, ptr %codepoint.addr, align 8
  %0 = load i64, ptr %codepoint.addr, align 8
  %cmp = icmp slt i64 %0, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %codepoint.addr, align 8
  %cmp1 = icmp slt i64 %1, 2048
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load i64, ptr %codepoint.addr, align 8
  %cmp4 = icmp slt i64 %2, 65536
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 3, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %3 = load i64, ptr %codepoint.addr, align 8
  %cmp7 = icmp slt i64 %3, 2097152
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i32 4, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end6
  %4 = load i64, ptr %codepoint.addr, align 8
  %cmp10 = icmp slt i64 %4, 67108864
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  store i32 5, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end9
  store i32 6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then8, %if.then5, %if.then2, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
