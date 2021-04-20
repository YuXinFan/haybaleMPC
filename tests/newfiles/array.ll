; ModuleID = 'array.c'
source_filename = "array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @declassify(i1 zeroext %0) #0 !dbg !7 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !11, metadata !DIExpression()), !dbg !12
  %4 = load i8, i8* %2, align 1, !dbg !13
  %5 = trunc i8 %4 to i1, !dbg !13
  ret i1 %5, !dbg !14
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ArrayElementUnconstrained(i32* %0, i32 %1) #0 !dbg !15 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !22, metadata !DIExpression()), !dbg !23
  %5 = load i32*, i32** %3, align 8, !dbg !24
  %6 = load i32, i32* %4, align 4, !dbg !25
  %7 = sext i32 %6 to i64, !dbg !24
  %8 = getelementptr inbounds i32, i32* %5, i64 %7, !dbg !24
  %9 = load i32, i32* %8, align 4, !dbg !24
  ret i32 %9, !dbg !26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ArrayElementConstant(i32* %0, i32 %1) #0 !dbg !27 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !28, metadata !DIExpression()), !dbg !29
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !30, metadata !DIExpression()), !dbg !31
  %5 = load i32*, i32** %3, align 8, !dbg !32
  %6 = getelementptr inbounds i32, i32* %5, i64 0, !dbg !32
  store i32 1, i32* %6, align 4, !dbg !33
  %7 = load i32*, i32** %3, align 8, !dbg !34
  %8 = getelementptr inbounds i32, i32* %7, i64 1, !dbg !34
  store i32 2, i32* %8, align 4, !dbg !35
  %9 = load i32*, i32** %3, align 8, !dbg !36
  %10 = getelementptr inbounds i32, i32* %9, i64 2, !dbg !36
  store i32 3, i32* %10, align 4, !dbg !37
  %11 = load i32*, i32** %3, align 8, !dbg !38
  %12 = getelementptr inbounds i32, i32* %11, i64 0, !dbg !38
  %13 = load i32, i32* %12, align 4, !dbg !38
  %14 = load i32*, i32** %3, align 8, !dbg !39
  %15 = getelementptr inbounds i32, i32* %14, i64 1, !dbg !39
  %16 = load i32, i32* %15, align 4, !dbg !39
  %17 = icmp slt i32 %13, %16, !dbg !40
  br i1 %17, label %18, label %26, !dbg !41

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8, !dbg !42
  %20 = getelementptr inbounds i32, i32* %19, i64 1, !dbg !42
  %21 = load i32, i32* %20, align 4, !dbg !42
  %22 = load i32*, i32** %3, align 8, !dbg !43
  %23 = getelementptr inbounds i32, i32* %22, i64 2, !dbg !43
  %24 = load i32, i32* %23, align 4, !dbg !43
  %25 = icmp slt i32 %21, %24, !dbg !44
  br label %26

26:                                               ; preds = %18, %2
  %27 = phi i1 [ false, %2 ], [ %25, %18 ], !dbg !45
  %28 = zext i1 %27 to i32, !dbg !41
  ret i32 %28, !dbg !46
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ArrayElementCompare(i32* %0, i32 %1) #0 !dbg !47 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !48, metadata !DIExpression()), !dbg !49
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i8* %5, metadata !52, metadata !DIExpression()), !dbg !53
  %6 = load i32*, i32** %3, align 8, !dbg !54
  %7 = getelementptr inbounds i32, i32* %6, i64 0, !dbg !54
  %8 = load i32, i32* %7, align 4, !dbg !54
  %9 = load i32*, i32** %3, align 8, !dbg !55
  %10 = getelementptr inbounds i32, i32* %9, i64 1, !dbg !55
  %11 = load i32, i32* %10, align 4, !dbg !55
  %12 = icmp sgt i32 %8, %11, !dbg !56
  br i1 %12, label %13, label %21, !dbg !57

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8, !dbg !58
  %15 = getelementptr inbounds i32, i32* %14, i64 1, !dbg !58
  %16 = load i32, i32* %15, align 4, !dbg !58
  %17 = load i32*, i32** %3, align 8, !dbg !59
  %18 = getelementptr inbounds i32, i32* %17, i64 2, !dbg !59
  %19 = load i32, i32* %18, align 4, !dbg !59
  %20 = icmp sgt i32 %16, %19, !dbg !60
  br label %21

21:                                               ; preds = %13, %2
  %22 = phi i1 [ false, %2 ], [ %20, %13 ], !dbg !61
  %23 = zext i1 %22 to i8, !dbg !53
  store i8 %23, i8* %5, align 1, !dbg !53
  %24 = load i8, i8* %5, align 1, !dbg !62
  %25 = trunc i8 %24 to i1, !dbg !62
  %26 = zext i1 %25 to i32, !dbg !62
  ret i32 %26, !dbg !63
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ArrayElementAssignVar(i32* %0, i32 %1, i32 %2) #0 !dbg !64 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !67, metadata !DIExpression()), !dbg !68
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !69, metadata !DIExpression()), !dbg !70
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !71, metadata !DIExpression()), !dbg !72
  %7 = load i32, i32* %6, align 4, !dbg !73
  %8 = load i32*, i32** %4, align 8, !dbg !74
  %9 = getelementptr inbounds i32, i32* %8, i64 0, !dbg !74
  store i32 %7, i32* %9, align 4, !dbg !75
  %10 = load i32, i32* %6, align 4, !dbg !76
  %11 = load i32*, i32** %4, align 8, !dbg !77
  %12 = getelementptr inbounds i32, i32* %11, i64 1, !dbg !77
  store i32 %10, i32* %12, align 4, !dbg !78
  %13 = load i32, i32* %6, align 4, !dbg !79
  %14 = load i32*, i32** %4, align 8, !dbg !80
  %15 = getelementptr inbounds i32, i32* %14, i64 2, !dbg !80
  store i32 %13, i32* %15, align 4, !dbg !81
  %16 = load i32*, i32** %4, align 8, !dbg !82
  %17 = getelementptr inbounds i32, i32* %16, i64 0, !dbg !82
  %18 = load i32, i32* %17, align 4, !dbg !82
  %19 = load i32*, i32** %4, align 8, !dbg !83
  %20 = getelementptr inbounds i32, i32* %19, i64 1, !dbg !83
  %21 = load i32, i32* %20, align 4, !dbg !83
  %22 = icmp eq i32 %18, %21, !dbg !84
  br i1 %22, label %23, label %31, !dbg !85

23:                                               ; preds = %3
  %24 = load i32*, i32** %4, align 8, !dbg !86
  %25 = getelementptr inbounds i32, i32* %24, i64 1, !dbg !86
  %26 = load i32, i32* %25, align 4, !dbg !86
  %27 = load i32*, i32** %4, align 8, !dbg !87
  %28 = getelementptr inbounds i32, i32* %27, i64 2, !dbg !87
  %29 = load i32, i32* %28, align 4, !dbg !87
  %30 = icmp eq i32 %26, %29, !dbg !88
  br label %31

31:                                               ; preds = %23, %3
  %32 = phi i1 [ false, %3 ], [ %30, %23 ], !dbg !89
  %33 = zext i1 %32 to i32, !dbg !85
  ret i32 %33, !dbg !90
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ArrayElementExchange(i32* %0, i32 %1) #0 !dbg !91 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !92, metadata !DIExpression()), !dbg !93
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !94, metadata !DIExpression()), !dbg !95
  %7 = load i32*, i32** %3, align 8, !dbg !96
  %8 = getelementptr inbounds i32, i32* %7, i64 0, !dbg !96
  %9 = load i32, i32* %8, align 4, !dbg !96
  %10 = load i32*, i32** %3, align 8, !dbg !98
  %11 = getelementptr inbounds i32, i32* %10, i64 1, !dbg !98
  %12 = load i32, i32* %11, align 4, !dbg !98
  %13 = icmp slt i32 %9, %12, !dbg !99
  br i1 %13, label %14, label %26, !dbg !100

14:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %5, metadata !101, metadata !DIExpression()), !dbg !103
  %15 = load i32*, i32** %3, align 8, !dbg !104
  %16 = getelementptr inbounds i32, i32* %15, i64 0, !dbg !104
  %17 = load i32, i32* %16, align 4, !dbg !104
  store i32 %17, i32* %5, align 4, !dbg !103
  %18 = load i32*, i32** %3, align 8, !dbg !105
  %19 = getelementptr inbounds i32, i32* %18, i64 1, !dbg !105
  %20 = load i32, i32* %19, align 4, !dbg !105
  %21 = load i32*, i32** %3, align 8, !dbg !106
  %22 = getelementptr inbounds i32, i32* %21, i64 0, !dbg !106
  store i32 %20, i32* %22, align 4, !dbg !107
  %23 = load i32, i32* %5, align 4, !dbg !108
  %24 = load i32*, i32** %3, align 8, !dbg !109
  %25 = getelementptr inbounds i32, i32* %24, i64 1, !dbg !109
  store i32 %23, i32* %25, align 4, !dbg !110
  br label %26, !dbg !111

26:                                               ; preds = %14, %2
  %27 = load i32*, i32** %3, align 8, !dbg !112
  %28 = getelementptr inbounds i32, i32* %27, i64 0, !dbg !112
  %29 = load i32, i32* %28, align 4, !dbg !112
  %30 = load i32*, i32** %3, align 8, !dbg !114
  %31 = getelementptr inbounds i32, i32* %30, i64 2, !dbg !114
  %32 = load i32, i32* %31, align 4, !dbg !114
  %33 = icmp slt i32 %29, %32, !dbg !115
  br i1 %33, label %34, label %46, !dbg !116

34:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata i32* %6, metadata !117, metadata !DIExpression()), !dbg !119
  %35 = load i32*, i32** %3, align 8, !dbg !120
  %36 = getelementptr inbounds i32, i32* %35, i64 0, !dbg !120
  %37 = load i32, i32* %36, align 4, !dbg !120
  store i32 %37, i32* %6, align 4, !dbg !119
  %38 = load i32*, i32** %3, align 8, !dbg !121
  %39 = getelementptr inbounds i32, i32* %38, i64 2, !dbg !121
  %40 = load i32, i32* %39, align 4, !dbg !121
  %41 = load i32*, i32** %3, align 8, !dbg !122
  %42 = getelementptr inbounds i32, i32* %41, i64 0, !dbg !122
  store i32 %40, i32* %42, align 4, !dbg !123
  %43 = load i32, i32* %6, align 4, !dbg !124
  %44 = load i32*, i32** %3, align 8, !dbg !125
  %45 = getelementptr inbounds i32, i32* %44, i64 2, !dbg !125
  store i32 %43, i32* %45, align 4, !dbg !126
  br label %46, !dbg !127

46:                                               ; preds = %34, %26
  %47 = load i32*, i32** %3, align 8, !dbg !128
  %48 = getelementptr inbounds i32, i32* %47, i64 0, !dbg !128
  %49 = load i32, i32* %48, align 4, !dbg !128
  %50 = load i32*, i32** %3, align 8, !dbg !129
  %51 = getelementptr inbounds i32, i32* %50, i64 1, !dbg !129
  %52 = load i32, i32* %51, align 4, !dbg !129
  %53 = icmp sgt i32 %49, %52, !dbg !130
  br i1 %53, label %54, label %62, !dbg !131

54:                                               ; preds = %46
  %55 = load i32*, i32** %3, align 8, !dbg !132
  %56 = getelementptr inbounds i32, i32* %55, i64 0, !dbg !132
  %57 = load i32, i32* %56, align 4, !dbg !132
  %58 = load i32*, i32** %3, align 8, !dbg !133
  %59 = getelementptr inbounds i32, i32* %58, i64 2, !dbg !133
  %60 = load i32, i32* %59, align 4, !dbg !133
  %61 = icmp sgt i32 %57, %60, !dbg !134
  br label %62

62:                                               ; preds = %54, %46
  %63 = phi i1 [ false, %46 ], [ %61, %54 ], !dbg !135
  %64 = zext i1 %63 to i32, !dbg !131
  ret i32 %64, !dbg !136
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ArrayMax(i32* %0, i32 %1) #0 !dbg !137 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !138, metadata !DIExpression()), !dbg !139
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %6, metadata !142, metadata !DIExpression()), !dbg !143
  %9 = load i32*, i32** %4, align 8, !dbg !144
  %10 = getelementptr inbounds i32, i32* %9, i64 0, !dbg !144
  %11 = load i32, i32* %10, align 4, !dbg !144
  store i32 %11, i32* %6, align 4, !dbg !143
  call void @llvm.dbg.declare(metadata i32* %7, metadata !145, metadata !DIExpression()), !dbg !147
  store i32 0, i32* %7, align 4, !dbg !147
  br label %12, !dbg !148

12:                                               ; preds = %31, %2
  %13 = load i32, i32* %7, align 4, !dbg !149
  %14 = load i32, i32* %5, align 4, !dbg !151
  %15 = icmp slt i32 %13, %14, !dbg !152
  br i1 %15, label %16, label %34, !dbg !153

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8, !dbg !154
  %18 = load i32, i32* %7, align 4, !dbg !157
  %19 = sext i32 %18 to i64, !dbg !154
  %20 = getelementptr inbounds i32, i32* %17, i64 %19, !dbg !154
  %21 = load i32, i32* %20, align 4, !dbg !154
  %22 = load i32, i32* %6, align 4, !dbg !158
  %23 = icmp sgt i32 %21, %22, !dbg !159
  br i1 %23, label %24, label %30, !dbg !160

24:                                               ; preds = %16
  %25 = load i32*, i32** %4, align 8, !dbg !161
  %26 = load i32, i32* %7, align 4, !dbg !163
  %27 = sext i32 %26 to i64, !dbg !161
  %28 = getelementptr inbounds i32, i32* %25, i64 %27, !dbg !161
  %29 = load i32, i32* %28, align 4, !dbg !161
  store i32 %29, i32* %6, align 4, !dbg !164
  br label %30, !dbg !165

30:                                               ; preds = %24, %16
  br label %31, !dbg !166

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4, !dbg !167
  %33 = add nsw i32 %32, 1, !dbg !167
  store i32 %33, i32* %7, align 4, !dbg !167
  br label %12, !dbg !168, !llvm.loop !169

34:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata i32* %8, metadata !171, metadata !DIExpression()), !dbg !173
  store i32 0, i32* %8, align 4, !dbg !173
  br label %35, !dbg !174

35:                                               ; preds = %49, %34
  %36 = load i32, i32* %8, align 4, !dbg !175
  %37 = load i32, i32* %5, align 4, !dbg !177
  %38 = icmp slt i32 %36, %37, !dbg !178
  br i1 %38, label %39, label %52, !dbg !179

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4, !dbg !180
  %41 = load i32*, i32** %4, align 8, !dbg !183
  %42 = load i32, i32* %8, align 4, !dbg !184
  %43 = sext i32 %42 to i64, !dbg !183
  %44 = getelementptr inbounds i32, i32* %41, i64 %43, !dbg !183
  %45 = load i32, i32* %44, align 4, !dbg !183
  %46 = icmp slt i32 %40, %45, !dbg !185
  br i1 %46, label %47, label %48, !dbg !186

47:                                               ; preds = %39
  store i32 0, i32* %3, align 4, !dbg !187
  br label %53, !dbg !187

48:                                               ; preds = %39
  br label %49, !dbg !189

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4, !dbg !190
  %51 = add nsw i32 %50, 1, !dbg !190
  store i32 %51, i32* %8, align 4, !dbg !190
  br label %35, !dbg !191, !llvm.loop !192

52:                                               ; preds = %35
  store i32 1, i32* %3, align 4, !dbg !194
  br label %53, !dbg !194

53:                                               ; preds = %52, %47
  %54 = load i32, i32* %3, align 4, !dbg !195
  ret i32 %54, !dbg !195
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ArrayTwoMax(i32* %0, i32 %1, i32* %2, i32 %3) #0 !dbg !196 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !199, metadata !DIExpression()), !dbg !200
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !201, metadata !DIExpression()), !dbg !202
  store i32* %2, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !203, metadata !DIExpression()), !dbg !204
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %10, metadata !207, metadata !DIExpression()), !dbg !208
  %15 = load i32*, i32** %6, align 8, !dbg !209
  %16 = getelementptr inbounds i32, i32* %15, i64 0, !dbg !209
  %17 = load i32, i32* %16, align 4, !dbg !209
  store i32 %17, i32* %10, align 4, !dbg !208
  call void @llvm.dbg.declare(metadata i32* %11, metadata !210, metadata !DIExpression()), !dbg !212
  store i32 0, i32* %11, align 4, !dbg !212
  br label %18, !dbg !213

18:                                               ; preds = %37, %4
  %19 = load i32, i32* %11, align 4, !dbg !214
  %20 = load i32, i32* %7, align 4, !dbg !216
  %21 = icmp slt i32 %19, %20, !dbg !217
  br i1 %21, label %22, label %40, !dbg !218

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8, !dbg !219
  %24 = load i32, i32* %11, align 4, !dbg !222
  %25 = sext i32 %24 to i64, !dbg !219
  %26 = getelementptr inbounds i32, i32* %23, i64 %25, !dbg !219
  %27 = load i32, i32* %26, align 4, !dbg !219
  %28 = load i32, i32* %10, align 4, !dbg !223
  %29 = icmp sgt i32 %27, %28, !dbg !224
  br i1 %29, label %30, label %36, !dbg !225

30:                                               ; preds = %22
  %31 = load i32*, i32** %6, align 8, !dbg !226
  %32 = load i32, i32* %11, align 4, !dbg !228
  %33 = sext i32 %32 to i64, !dbg !226
  %34 = getelementptr inbounds i32, i32* %31, i64 %33, !dbg !226
  %35 = load i32, i32* %34, align 4, !dbg !226
  store i32 %35, i32* %10, align 4, !dbg !229
  br label %36, !dbg !230

36:                                               ; preds = %30, %22
  br label %37, !dbg !231

37:                                               ; preds = %36
  %38 = load i32, i32* %11, align 4, !dbg !232
  %39 = add nsw i32 %38, 1, !dbg !232
  store i32 %39, i32* %11, align 4, !dbg !232
  br label %18, !dbg !233, !llvm.loop !234

40:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata i32* %12, metadata !236, metadata !DIExpression()), !dbg !238
  store i32 0, i32* %12, align 4, !dbg !238
  br label %41, !dbg !239

41:                                               ; preds = %60, %40
  %42 = load i32, i32* %12, align 4, !dbg !240
  %43 = load i32, i32* %9, align 4, !dbg !242
  %44 = icmp slt i32 %42, %43, !dbg !243
  br i1 %44, label %45, label %63, !dbg !244

45:                                               ; preds = %41
  %46 = load i32*, i32** %8, align 8, !dbg !245
  %47 = load i32, i32* %12, align 4, !dbg !248
  %48 = sext i32 %47 to i64, !dbg !245
  %49 = getelementptr inbounds i32, i32* %46, i64 %48, !dbg !245
  %50 = load i32, i32* %49, align 4, !dbg !245
  %51 = load i32, i32* %10, align 4, !dbg !249
  %52 = icmp sgt i32 %50, %51, !dbg !250
  br i1 %52, label %53, label %59, !dbg !251

53:                                               ; preds = %45
  %54 = load i32*, i32** %8, align 8, !dbg !252
  %55 = load i32, i32* %12, align 4, !dbg !254
  %56 = sext i32 %55 to i64, !dbg !252
  %57 = getelementptr inbounds i32, i32* %54, i64 %56, !dbg !252
  %58 = load i32, i32* %57, align 4, !dbg !252
  store i32 %58, i32* %10, align 4, !dbg !255
  br label %59, !dbg !256

59:                                               ; preds = %53, %45
  br label %60, !dbg !257

60:                                               ; preds = %59
  %61 = load i32, i32* %12, align 4, !dbg !258
  %62 = add nsw i32 %61, 1, !dbg !258
  store i32 %62, i32* %12, align 4, !dbg !258
  br label %41, !dbg !259, !llvm.loop !260

63:                                               ; preds = %41
  call void @llvm.dbg.declare(metadata i32* %13, metadata !262, metadata !DIExpression()), !dbg !264
  store i32 0, i32* %13, align 4, !dbg !264
  br label %64, !dbg !265

64:                                               ; preds = %78, %63
  %65 = load i32, i32* %13, align 4, !dbg !266
  %66 = load i32, i32* %7, align 4, !dbg !268
  %67 = icmp slt i32 %65, %66, !dbg !269
  br i1 %67, label %68, label %81, !dbg !270

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4, !dbg !271
  %70 = load i32*, i32** %6, align 8, !dbg !274
  %71 = load i32, i32* %13, align 4, !dbg !275
  %72 = sext i32 %71 to i64, !dbg !274
  %73 = getelementptr inbounds i32, i32* %70, i64 %72, !dbg !274
  %74 = load i32, i32* %73, align 4, !dbg !274
  %75 = icmp slt i32 %69, %74, !dbg !276
  br i1 %75, label %76, label %77, !dbg !277

76:                                               ; preds = %68
  store i32 0, i32* %5, align 4, !dbg !278
  br label %100, !dbg !278

77:                                               ; preds = %68
  br label %78, !dbg !280

78:                                               ; preds = %77
  %79 = load i32, i32* %13, align 4, !dbg !281
  %80 = add nsw i32 %79, 1, !dbg !281
  store i32 %80, i32* %13, align 4, !dbg !281
  br label %64, !dbg !282, !llvm.loop !283

81:                                               ; preds = %64
  call void @llvm.dbg.declare(metadata i32* %14, metadata !285, metadata !DIExpression()), !dbg !287
  store i32 0, i32* %14, align 4, !dbg !287
  br label %82, !dbg !288

82:                                               ; preds = %96, %81
  %83 = load i32, i32* %14, align 4, !dbg !289
  %84 = load i32, i32* %9, align 4, !dbg !291
  %85 = icmp slt i32 %83, %84, !dbg !292
  br i1 %85, label %86, label %99, !dbg !293

86:                                               ; preds = %82
  %87 = load i32, i32* %10, align 4, !dbg !294
  %88 = load i32*, i32** %8, align 8, !dbg !297
  %89 = load i32, i32* %14, align 4, !dbg !298
  %90 = sext i32 %89 to i64, !dbg !297
  %91 = getelementptr inbounds i32, i32* %88, i64 %90, !dbg !297
  %92 = load i32, i32* %91, align 4, !dbg !297
  %93 = icmp slt i32 %87, %92, !dbg !299
  br i1 %93, label %94, label %95, !dbg !300

94:                                               ; preds = %86
  store i32 0, i32* %5, align 4, !dbg !301
  br label %100, !dbg !301

95:                                               ; preds = %86
  br label %96, !dbg !303

96:                                               ; preds = %95
  %97 = load i32, i32* %14, align 4, !dbg !304
  %98 = add nsw i32 %97, 1, !dbg !304
  store i32 %98, i32* %14, align 4, !dbg !304
  br label %82, !dbg !305, !llvm.loop !306

99:                                               ; preds = %82
  store i32 1, i32* %5, align 4, !dbg !308
  br label %100, !dbg !308

100:                                              ; preds = %99, %94, %76
  %101 = load i32, i32* %5, align 4, !dbg !309
  ret i32 %101, !dbg !309
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !310 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0, !dbg !313
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 11.1.0-++20210204121720+1fdec59bffc1-1~exp1~20210203232336.162", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "array.c", directory: "/home/fanyx/projects/haybaleMPC/tests/newfiles")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"Ubuntu clang version 11.1.0-++20210204121720+1fdec59bffc1-1~exp1~20210203232336.162"}
!7 = distinct !DISubprogram(name: "declassify", scope: !1, file: !1, line: 5, type: !8, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!11 = !DILocalVariable(name: "b", arg: 1, scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 22, scope: !7)
!13 = !DILocation(line: 6, column: 12, scope: !7)
!14 = !DILocation(line: 6, column: 5, scope: !7)
!15 = distinct !DISubprogram(name: "ArrayElementUnconstrained", scope: !1, file: !1, line: 9, type: !16, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!20 = !DILocalVariable(name: "a", arg: 1, scope: !15, file: !1, line: 9, type: !19)
!21 = !DILocation(line: 9, column: 35, scope: !15)
!22 = !DILocalVariable(name: "n", arg: 2, scope: !15, file: !1, line: 9, type: !18)
!23 = !DILocation(line: 9, column: 44, scope: !15)
!24 = !DILocation(line: 10, column: 12, scope: !15)
!25 = !DILocation(line: 10, column: 14, scope: !15)
!26 = !DILocation(line: 10, column: 5, scope: !15)
!27 = distinct !DISubprogram(name: "ArrayElementConstant", scope: !1, file: !1, line: 13, type: !16, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!28 = !DILocalVariable(name: "a", arg: 1, scope: !27, file: !1, line: 13, type: !19)
!29 = !DILocation(line: 13, column: 30, scope: !27)
!30 = !DILocalVariable(name: "n", arg: 2, scope: !27, file: !1, line: 13, type: !18)
!31 = !DILocation(line: 13, column: 39, scope: !27)
!32 = !DILocation(line: 14, column: 5, scope: !27)
!33 = !DILocation(line: 14, column: 10, scope: !27)
!34 = !DILocation(line: 15, column: 5, scope: !27)
!35 = !DILocation(line: 15, column: 10, scope: !27)
!36 = !DILocation(line: 16, column: 5, scope: !27)
!37 = !DILocation(line: 16, column: 10, scope: !27)
!38 = !DILocation(line: 17, column: 12, scope: !27)
!39 = !DILocation(line: 17, column: 18, scope: !27)
!40 = !DILocation(line: 17, column: 16, scope: !27)
!41 = !DILocation(line: 17, column: 23, scope: !27)
!42 = !DILocation(line: 17, column: 26, scope: !27)
!43 = !DILocation(line: 17, column: 33, scope: !27)
!44 = !DILocation(line: 17, column: 31, scope: !27)
!45 = !DILocation(line: 0, scope: !27)
!46 = !DILocation(line: 17, column: 5, scope: !27)
!47 = distinct !DISubprogram(name: "ArrayElementCompare", scope: !1, file: !1, line: 20, type: !16, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!48 = !DILocalVariable(name: "a", arg: 1, scope: !47, file: !1, line: 20, type: !19)
!49 = !DILocation(line: 20, column: 29, scope: !47)
!50 = !DILocalVariable(name: "n", arg: 2, scope: !47, file: !1, line: 20, type: !18)
!51 = !DILocation(line: 20, column: 38, scope: !47)
!52 = !DILocalVariable(name: "b", scope: !47, file: !1, line: 21, type: !10)
!53 = !DILocation(line: 21, column: 10, scope: !47)
!54 = !DILocation(line: 21, column: 14, scope: !47)
!55 = !DILocation(line: 21, column: 21, scope: !47)
!56 = !DILocation(line: 21, column: 19, scope: !47)
!57 = !DILocation(line: 21, column: 26, scope: !47)
!58 = !DILocation(line: 21, column: 29, scope: !47)
!59 = !DILocation(line: 21, column: 36, scope: !47)
!60 = !DILocation(line: 21, column: 34, scope: !47)
!61 = !DILocation(line: 0, scope: !47)
!62 = !DILocation(line: 22, column: 12, scope: !47)
!63 = !DILocation(line: 22, column: 5, scope: !47)
!64 = distinct !DISubprogram(name: "ArrayElementAssignVar", scope: !1, file: !1, line: 25, type: !65, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!65 = !DISubroutineType(types: !66)
!66 = !{!18, !19, !18, !18}
!67 = !DILocalVariable(name: "a", arg: 1, scope: !64, file: !1, line: 25, type: !19)
!68 = !DILocation(line: 25, column: 31, scope: !64)
!69 = !DILocalVariable(name: "n", arg: 2, scope: !64, file: !1, line: 25, type: !18)
!70 = !DILocation(line: 25, column: 40, scope: !64)
!71 = !DILocalVariable(name: "x", arg: 3, scope: !64, file: !1, line: 25, type: !18)
!72 = !DILocation(line: 25, column: 47, scope: !64)
!73 = !DILocation(line: 26, column: 12, scope: !64)
!74 = !DILocation(line: 26, column: 5, scope: !64)
!75 = !DILocation(line: 26, column: 10, scope: !64)
!76 = !DILocation(line: 27, column: 12, scope: !64)
!77 = !DILocation(line: 27, column: 5, scope: !64)
!78 = !DILocation(line: 27, column: 10, scope: !64)
!79 = !DILocation(line: 28, column: 12, scope: !64)
!80 = !DILocation(line: 28, column: 5, scope: !64)
!81 = !DILocation(line: 28, column: 10, scope: !64)
!82 = !DILocation(line: 29, column: 12, scope: !64)
!83 = !DILocation(line: 29, column: 20, scope: !64)
!84 = !DILocation(line: 29, column: 17, scope: !64)
!85 = !DILocation(line: 29, column: 25, scope: !64)
!86 = !DILocation(line: 29, column: 28, scope: !64)
!87 = !DILocation(line: 29, column: 36, scope: !64)
!88 = !DILocation(line: 29, column: 33, scope: !64)
!89 = !DILocation(line: 0, scope: !64)
!90 = !DILocation(line: 29, column: 5, scope: !64)
!91 = distinct !DISubprogram(name: "ArrayElementExchange", scope: !1, file: !1, line: 32, type: !16, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!92 = !DILocalVariable(name: "a", arg: 1, scope: !91, file: !1, line: 32, type: !19)
!93 = !DILocation(line: 32, column: 30, scope: !91)
!94 = !DILocalVariable(name: "n", arg: 2, scope: !91, file: !1, line: 32, type: !18)
!95 = !DILocation(line: 32, column: 39, scope: !91)
!96 = !DILocation(line: 33, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !91, file: !1, line: 33, column: 9)
!98 = !DILocation(line: 33, column: 16, scope: !97)
!99 = !DILocation(line: 33, column: 14, scope: !97)
!100 = !DILocation(line: 33, column: 9, scope: !91)
!101 = !DILocalVariable(name: "t", scope: !102, file: !1, line: 34, type: !18)
!102 = distinct !DILexicalBlock(scope: !97, file: !1, line: 33, column: 22)
!103 = !DILocation(line: 34, column: 13, scope: !102)
!104 = !DILocation(line: 34, column: 17, scope: !102)
!105 = !DILocation(line: 35, column: 16, scope: !102)
!106 = !DILocation(line: 35, column: 9, scope: !102)
!107 = !DILocation(line: 35, column: 14, scope: !102)
!108 = !DILocation(line: 36, column: 16, scope: !102)
!109 = !DILocation(line: 36, column: 9, scope: !102)
!110 = !DILocation(line: 36, column: 14, scope: !102)
!111 = !DILocation(line: 37, column: 5, scope: !102)
!112 = !DILocation(line: 38, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !91, file: !1, line: 38, column: 9)
!114 = !DILocation(line: 38, column: 16, scope: !113)
!115 = !DILocation(line: 38, column: 14, scope: !113)
!116 = !DILocation(line: 38, column: 9, scope: !91)
!117 = !DILocalVariable(name: "y", scope: !118, file: !1, line: 39, type: !18)
!118 = distinct !DILexicalBlock(scope: !113, file: !1, line: 38, column: 22)
!119 = !DILocation(line: 39, column: 13, scope: !118)
!120 = !DILocation(line: 39, column: 17, scope: !118)
!121 = !DILocation(line: 40, column: 16, scope: !118)
!122 = !DILocation(line: 40, column: 9, scope: !118)
!123 = !DILocation(line: 40, column: 14, scope: !118)
!124 = !DILocation(line: 41, column: 16, scope: !118)
!125 = !DILocation(line: 41, column: 9, scope: !118)
!126 = !DILocation(line: 41, column: 14, scope: !118)
!127 = !DILocation(line: 42, column: 5, scope: !118)
!128 = !DILocation(line: 43, column: 12, scope: !91)
!129 = !DILocation(line: 43, column: 19, scope: !91)
!130 = !DILocation(line: 43, column: 17, scope: !91)
!131 = !DILocation(line: 43, column: 24, scope: !91)
!132 = !DILocation(line: 43, column: 27, scope: !91)
!133 = !DILocation(line: 43, column: 34, scope: !91)
!134 = !DILocation(line: 43, column: 32, scope: !91)
!135 = !DILocation(line: 0, scope: !91)
!136 = !DILocation(line: 43, column: 5, scope: !91)
!137 = distinct !DISubprogram(name: "ArrayMax", scope: !1, file: !1, line: 46, type: !16, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!138 = !DILocalVariable(name: "a", arg: 1, scope: !137, file: !1, line: 46, type: !19)
!139 = !DILocation(line: 46, column: 18, scope: !137)
!140 = !DILocalVariable(name: "n", arg: 2, scope: !137, file: !1, line: 46, type: !18)
!141 = !DILocation(line: 46, column: 27, scope: !137)
!142 = !DILocalVariable(name: "max", scope: !137, file: !1, line: 47, type: !18)
!143 = !DILocation(line: 47, column: 9, scope: !137)
!144 = !DILocation(line: 47, column: 15, scope: !137)
!145 = !DILocalVariable(name: "i", scope: !146, file: !1, line: 48, type: !18)
!146 = distinct !DILexicalBlock(scope: !137, file: !1, line: 48, column: 5)
!147 = !DILocation(line: 48, column: 14, scope: !146)
!148 = !DILocation(line: 48, column: 10, scope: !146)
!149 = !DILocation(line: 48, column: 21, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !1, line: 48, column: 5)
!151 = !DILocation(line: 48, column: 25, scope: !150)
!152 = !DILocation(line: 48, column: 23, scope: !150)
!153 = !DILocation(line: 48, column: 5, scope: !146)
!154 = !DILocation(line: 49, column: 13, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 49, column: 13)
!156 = distinct !DILexicalBlock(scope: !150, file: !1, line: 48, column: 33)
!157 = !DILocation(line: 49, column: 15, scope: !155)
!158 = !DILocation(line: 49, column: 18, scope: !155)
!159 = !DILocation(line: 49, column: 17, scope: !155)
!160 = !DILocation(line: 49, column: 13, scope: !156)
!161 = !DILocation(line: 50, column: 19, scope: !162)
!162 = distinct !DILexicalBlock(scope: !155, file: !1, line: 49, column: 22)
!163 = !DILocation(line: 50, column: 21, scope: !162)
!164 = !DILocation(line: 50, column: 17, scope: !162)
!165 = !DILocation(line: 51, column: 9, scope: !162)
!166 = !DILocation(line: 52, column: 5, scope: !156)
!167 = !DILocation(line: 48, column: 29, scope: !150)
!168 = !DILocation(line: 48, column: 5, scope: !150)
!169 = distinct !{!169, !153, !170}
!170 = !DILocation(line: 52, column: 5, scope: !146)
!171 = !DILocalVariable(name: "i", scope: !172, file: !1, line: 53, type: !18)
!172 = distinct !DILexicalBlock(scope: !137, file: !1, line: 53, column: 5)
!173 = !DILocation(line: 53, column: 14, scope: !172)
!174 = !DILocation(line: 53, column: 10, scope: !172)
!175 = !DILocation(line: 53, column: 21, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !1, line: 53, column: 5)
!177 = !DILocation(line: 53, column: 25, scope: !176)
!178 = !DILocation(line: 53, column: 23, scope: !176)
!179 = !DILocation(line: 53, column: 5, scope: !172)
!180 = !DILocation(line: 54, column: 13, scope: !181)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 54, column: 13)
!182 = distinct !DILexicalBlock(scope: !176, file: !1, line: 53, column: 33)
!183 = !DILocation(line: 54, column: 19, scope: !181)
!184 = !DILocation(line: 54, column: 21, scope: !181)
!185 = !DILocation(line: 54, column: 17, scope: !181)
!186 = !DILocation(line: 54, column: 13, scope: !182)
!187 = !DILocation(line: 55, column: 13, scope: !188)
!188 = distinct !DILexicalBlock(scope: !181, file: !1, line: 54, column: 25)
!189 = !DILocation(line: 57, column: 5, scope: !182)
!190 = !DILocation(line: 53, column: 29, scope: !176)
!191 = !DILocation(line: 53, column: 5, scope: !176)
!192 = distinct !{!192, !179, !193}
!193 = !DILocation(line: 57, column: 5, scope: !172)
!194 = !DILocation(line: 58, column: 5, scope: !137)
!195 = !DILocation(line: 59, column: 1, scope: !137)
!196 = distinct !DISubprogram(name: "ArrayTwoMax", scope: !1, file: !1, line: 60, type: !197, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!197 = !DISubroutineType(types: !198)
!198 = !{!18, !19, !18, !19, !18}
!199 = !DILocalVariable(name: "a", arg: 1, scope: !196, file: !1, line: 60, type: !19)
!200 = !DILocation(line: 60, column: 21, scope: !196)
!201 = !DILocalVariable(name: "n1", arg: 2, scope: !196, file: !1, line: 60, type: !18)
!202 = !DILocation(line: 60, column: 30, scope: !196)
!203 = !DILocalVariable(name: "b", arg: 3, scope: !196, file: !1, line: 60, type: !19)
!204 = !DILocation(line: 60, column: 38, scope: !196)
!205 = !DILocalVariable(name: "n2", arg: 4, scope: !196, file: !1, line: 60, type: !18)
!206 = !DILocation(line: 60, column: 47, scope: !196)
!207 = !DILocalVariable(name: "max", scope: !196, file: !1, line: 61, type: !18)
!208 = !DILocation(line: 61, column: 9, scope: !196)
!209 = !DILocation(line: 61, column: 15, scope: !196)
!210 = !DILocalVariable(name: "i", scope: !211, file: !1, line: 62, type: !18)
!211 = distinct !DILexicalBlock(scope: !196, file: !1, line: 62, column: 5)
!212 = !DILocation(line: 62, column: 14, scope: !211)
!213 = !DILocation(line: 62, column: 10, scope: !211)
!214 = !DILocation(line: 62, column: 21, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !1, line: 62, column: 5)
!216 = !DILocation(line: 62, column: 25, scope: !215)
!217 = !DILocation(line: 62, column: 23, scope: !215)
!218 = !DILocation(line: 62, column: 5, scope: !211)
!219 = !DILocation(line: 63, column: 13, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !1, line: 63, column: 13)
!221 = distinct !DILexicalBlock(scope: !215, file: !1, line: 62, column: 34)
!222 = !DILocation(line: 63, column: 15, scope: !220)
!223 = !DILocation(line: 63, column: 20, scope: !220)
!224 = !DILocation(line: 63, column: 18, scope: !220)
!225 = !DILocation(line: 63, column: 13, scope: !221)
!226 = !DILocation(line: 64, column: 19, scope: !227)
!227 = distinct !DILexicalBlock(scope: !220, file: !1, line: 63, column: 25)
!228 = !DILocation(line: 64, column: 21, scope: !227)
!229 = !DILocation(line: 64, column: 17, scope: !227)
!230 = !DILocation(line: 65, column: 9, scope: !227)
!231 = !DILocation(line: 66, column: 5, scope: !221)
!232 = !DILocation(line: 62, column: 30, scope: !215)
!233 = !DILocation(line: 62, column: 5, scope: !215)
!234 = distinct !{!234, !218, !235}
!235 = !DILocation(line: 66, column: 5, scope: !211)
!236 = !DILocalVariable(name: "i", scope: !237, file: !1, line: 68, type: !18)
!237 = distinct !DILexicalBlock(scope: !196, file: !1, line: 68, column: 5)
!238 = !DILocation(line: 68, column: 14, scope: !237)
!239 = !DILocation(line: 68, column: 10, scope: !237)
!240 = !DILocation(line: 68, column: 21, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !1, line: 68, column: 5)
!242 = !DILocation(line: 68, column: 25, scope: !241)
!243 = !DILocation(line: 68, column: 23, scope: !241)
!244 = !DILocation(line: 68, column: 5, scope: !237)
!245 = !DILocation(line: 69, column: 14, scope: !246)
!246 = distinct !DILexicalBlock(scope: !247, file: !1, line: 69, column: 14)
!247 = distinct !DILexicalBlock(scope: !241, file: !1, line: 68, column: 34)
!248 = !DILocation(line: 69, column: 16, scope: !246)
!249 = !DILocation(line: 69, column: 21, scope: !246)
!250 = !DILocation(line: 69, column: 19, scope: !246)
!251 = !DILocation(line: 69, column: 14, scope: !247)
!252 = !DILocation(line: 70, column: 19, scope: !253)
!253 = distinct !DILexicalBlock(scope: !246, file: !1, line: 69, column: 26)
!254 = !DILocation(line: 70, column: 21, scope: !253)
!255 = !DILocation(line: 70, column: 17, scope: !253)
!256 = !DILocation(line: 71, column: 9, scope: !253)
!257 = !DILocation(line: 72, column: 5, scope: !247)
!258 = !DILocation(line: 68, column: 30, scope: !241)
!259 = !DILocation(line: 68, column: 5, scope: !241)
!260 = distinct !{!260, !244, !261}
!261 = !DILocation(line: 72, column: 5, scope: !237)
!262 = !DILocalVariable(name: "i", scope: !263, file: !1, line: 73, type: !18)
!263 = distinct !DILexicalBlock(scope: !196, file: !1, line: 73, column: 5)
!264 = !DILocation(line: 73, column: 14, scope: !263)
!265 = !DILocation(line: 73, column: 10, scope: !263)
!266 = !DILocation(line: 73, column: 21, scope: !267)
!267 = distinct !DILexicalBlock(scope: !263, file: !1, line: 73, column: 5)
!268 = !DILocation(line: 73, column: 25, scope: !267)
!269 = !DILocation(line: 73, column: 23, scope: !267)
!270 = !DILocation(line: 73, column: 5, scope: !263)
!271 = !DILocation(line: 74, column: 13, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !1, line: 74, column: 13)
!273 = distinct !DILexicalBlock(scope: !267, file: !1, line: 73, column: 34)
!274 = !DILocation(line: 74, column: 19, scope: !272)
!275 = !DILocation(line: 74, column: 21, scope: !272)
!276 = !DILocation(line: 74, column: 17, scope: !272)
!277 = !DILocation(line: 74, column: 13, scope: !273)
!278 = !DILocation(line: 75, column: 13, scope: !279)
!279 = distinct !DILexicalBlock(scope: !272, file: !1, line: 74, column: 25)
!280 = !DILocation(line: 77, column: 5, scope: !273)
!281 = !DILocation(line: 73, column: 30, scope: !267)
!282 = !DILocation(line: 73, column: 5, scope: !267)
!283 = distinct !{!283, !270, !284}
!284 = !DILocation(line: 77, column: 5, scope: !263)
!285 = !DILocalVariable(name: "i", scope: !286, file: !1, line: 78, type: !18)
!286 = distinct !DILexicalBlock(scope: !196, file: !1, line: 78, column: 5)
!287 = !DILocation(line: 78, column: 14, scope: !286)
!288 = !DILocation(line: 78, column: 10, scope: !286)
!289 = !DILocation(line: 78, column: 21, scope: !290)
!290 = distinct !DILexicalBlock(scope: !286, file: !1, line: 78, column: 5)
!291 = !DILocation(line: 78, column: 25, scope: !290)
!292 = !DILocation(line: 78, column: 23, scope: !290)
!293 = !DILocation(line: 78, column: 5, scope: !286)
!294 = !DILocation(line: 79, column: 13, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !1, line: 79, column: 13)
!296 = distinct !DILexicalBlock(scope: !290, file: !1, line: 78, column: 34)
!297 = !DILocation(line: 79, column: 19, scope: !295)
!298 = !DILocation(line: 79, column: 21, scope: !295)
!299 = !DILocation(line: 79, column: 17, scope: !295)
!300 = !DILocation(line: 79, column: 13, scope: !296)
!301 = !DILocation(line: 80, column: 13, scope: !302)
!302 = distinct !DILexicalBlock(scope: !295, file: !1, line: 79, column: 25)
!303 = !DILocation(line: 82, column: 5, scope: !296)
!304 = !DILocation(line: 78, column: 30, scope: !290)
!305 = !DILocation(line: 78, column: 5, scope: !290)
!306 = distinct !{!306, !293, !307}
!307 = !DILocation(line: 82, column: 5, scope: !286)
!308 = !DILocation(line: 83, column: 5, scope: !196)
!309 = !DILocation(line: 84, column: 1, scope: !196)
!310 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 85, type: !311, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!311 = !DISubroutineType(types: !312)
!312 = !{!18}
!313 = !DILocation(line: 87, column: 5, scope: !310)
