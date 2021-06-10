; ModuleID = 'qsort.c'
source_filename = "qsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
define dso_local void @swap(i32* %0, i32* %1) #0 !dbg !15 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !20, metadata !DIExpression()), !dbg !21
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %5, metadata !24, metadata !DIExpression()), !dbg !25
  %6 = load i32*, i32** %3, align 8, !dbg !26
  %7 = load i32, i32* %6, align 4, !dbg !27
  store i32 %7, i32* %5, align 4, !dbg !25
  %8 = load i32*, i32** %4, align 8, !dbg !28
  %9 = load i32, i32* %8, align 4, !dbg !29
  %10 = load i32*, i32** %3, align 8, !dbg !30
  store i32 %9, i32* %10, align 4, !dbg !31
  %11 = load i32, i32* %5, align 4, !dbg !32
  %12 = load i32*, i32** %4, align 8, !dbg !33
  store i32 %11, i32* %12, align 4, !dbg !34
  ret void, !dbg !35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @partition(i32* %0, i32 %1, i32 %2) #0 !dbg !36 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !39, metadata !DIExpression()), !dbg !40
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !41, metadata !DIExpression()), !dbg !42
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %7, metadata !45, metadata !DIExpression()), !dbg !46
  %10 = load i32*, i32** %4, align 8, !dbg !47
  %11 = load i32, i32* %6, align 4, !dbg !48
  %12 = sext i32 %11 to i64, !dbg !47
  %13 = getelementptr inbounds i32, i32* %10, i64 %12, !dbg !47
  %14 = load i32, i32* %13, align 4, !dbg !47
  store i32 %14, i32* %7, align 4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %8, metadata !49, metadata !DIExpression()), !dbg !50
  %15 = load i32, i32* %5, align 4, !dbg !51
  %16 = sub nsw i32 %15, 1, !dbg !52
  store i32 %16, i32* %8, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %9, metadata !53, metadata !DIExpression()), !dbg !55
  %17 = load i32, i32* %5, align 4, !dbg !56
  store i32 %17, i32* %9, align 4, !dbg !55
  br label %18, !dbg !57

18:                                               ; preds = %44, %3
  %19 = load i32, i32* %9, align 4, !dbg !58
  %20 = load i32, i32* %6, align 4, !dbg !60
  %21 = sub nsw i32 %20, 1, !dbg !61
  %22 = icmp sle i32 %19, %21, !dbg !62
  br i1 %22, label %23, label %47, !dbg !63

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8, !dbg !64
  %25 = load i32, i32* %9, align 4, !dbg !67
  %26 = sext i32 %25 to i64, !dbg !64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26, !dbg !64
  %28 = load i32, i32* %27, align 4, !dbg !64
  %29 = load i32, i32* %7, align 4, !dbg !68
  %30 = icmp slt i32 %28, %29, !dbg !69
  %31 = call zeroext i1 @declassify(i1 zeroext %30), !dbg !70
  br i1 %31, label %32, label %43, !dbg !71

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4, !dbg !72
  %34 = add nsw i32 %33, 1, !dbg !72
  store i32 %34, i32* %8, align 4, !dbg !72
  %35 = load i32*, i32** %4, align 8, !dbg !74
  %36 = load i32, i32* %8, align 4, !dbg !75
  %37 = sext i32 %36 to i64, !dbg !74
  %38 = getelementptr inbounds i32, i32* %35, i64 %37, !dbg !74
  %39 = load i32*, i32** %4, align 8, !dbg !76
  %40 = load i32, i32* %9, align 4, !dbg !77
  %41 = sext i32 %40 to i64, !dbg !76
  %42 = getelementptr inbounds i32, i32* %39, i64 %41, !dbg !76
  call void @swap(i32* %38, i32* %42), !dbg !78
  br label %43, !dbg !79

43:                                               ; preds = %32, %23
  br label %44, !dbg !80

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4, !dbg !81
  %46 = add nsw i32 %45, 1, !dbg !81
  store i32 %46, i32* %9, align 4, !dbg !81
  br label %18, !dbg !82, !llvm.loop !83

47:                                               ; preds = %18
  %48 = load i32*, i32** %4, align 8, !dbg !85
  %49 = load i32, i32* %8, align 4, !dbg !86
  %50 = add nsw i32 %49, 1, !dbg !87
  %51 = sext i32 %50 to i64, !dbg !85
  %52 = getelementptr inbounds i32, i32* %48, i64 %51, !dbg !85
  %53 = load i32*, i32** %4, align 8, !dbg !88
  %54 = load i32, i32* %6, align 4, !dbg !89
  %55 = sext i32 %54 to i64, !dbg !88
  %56 = getelementptr inbounds i32, i32* %53, i64 %55, !dbg !88
  call void @swap(i32* %52, i32* %56), !dbg !90
  %57 = load i32, i32* %8, align 4, !dbg !91
  %58 = add nsw i32 %57, 1, !dbg !92
  ret i32 %58, !dbg !93
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @quickSort(i32* %0, i32 %1, i32 %2) #0 !dbg !94 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !97, metadata !DIExpression()), !dbg !98
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !99, metadata !DIExpression()), !dbg !100
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !101, metadata !DIExpression()), !dbg !102
  %8 = load i32, i32* %5, align 4, !dbg !103
  %9 = load i32, i32* %6, align 4, !dbg !105
  %10 = icmp slt i32 %8, %9, !dbg !106
  br i1 %10, label %11, label %26, !dbg !107

11:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %7, metadata !108, metadata !DIExpression()), !dbg !110
  %12 = load i32*, i32** %4, align 8, !dbg !111
  %13 = load i32, i32* %5, align 4, !dbg !112
  %14 = load i32, i32* %6, align 4, !dbg !113
  %15 = call i32 @partition(i32* %12, i32 %13, i32 %14), !dbg !114
  store i32 %15, i32* %7, align 4, !dbg !110
  %16 = load i32*, i32** %4, align 8, !dbg !115
  %17 = load i32, i32* %5, align 4, !dbg !116
  %18 = load i32, i32* %7, align 4, !dbg !117
  %19 = sub nsw i32 %18, 1, !dbg !118
  %20 = call i32* @quickSort(i32* %16, i32 %17, i32 %19), !dbg !119
  %21 = load i32*, i32** %4, align 8, !dbg !120
  %22 = load i32, i32* %7, align 4, !dbg !121
  %23 = add nsw i32 %22, 1, !dbg !122
  %24 = load i32, i32* %6, align 4, !dbg !123
  %25 = call i32* @quickSort(i32* %21, i32 %23, i32 %24), !dbg !124
  br label %26, !dbg !125

26:                                               ; preds = %11, %3
  %27 = load i32*, i32** %4, align 8, !dbg !126
  ret i32* %27, !dbg !127
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !128 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0, !dbg !131
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.0.0 (https://github.com/llvm/llvm-project.git 0160ad802e899c2922bc9b29564080c22eb0908c)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "qsort.c", directory: "/home/fanyx/mine/haybaleMPC/tests/newfiles")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 11.0.0 (https://github.com/llvm/llvm-project.git 0160ad802e899c2922bc9b29564080c22eb0908c)"}
!7 = distinct !DISubprogram(name: "declassify", scope: !1, file: !1, line: 4, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!11 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 22, scope: !7)
!13 = !DILocation(line: 5, column: 9, scope: !7)
!14 = !DILocation(line: 5, column: 2, scope: !7)
!15 = distinct !DISubprogram(name: "swap", scope: !1, file: !1, line: 8, type: !16, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DILocalVariable(name: "a", arg: 1, scope: !15, file: !1, line: 8, type: !18)
!21 = !DILocation(line: 8, column: 16, scope: !15)
!22 = !DILocalVariable(name: "b", arg: 2, scope: !15, file: !1, line: 8, type: !18)
!23 = !DILocation(line: 8, column: 24, scope: !15)
!24 = !DILocalVariable(name: "t", scope: !15, file: !1, line: 10, type: !19)
!25 = !DILocation(line: 10, column: 9, scope: !15)
!26 = !DILocation(line: 10, column: 14, scope: !15)
!27 = !DILocation(line: 10, column: 13, scope: !15)
!28 = !DILocation(line: 11, column: 11, scope: !15)
!29 = !DILocation(line: 11, column: 10, scope: !15)
!30 = !DILocation(line: 11, column: 6, scope: !15)
!31 = !DILocation(line: 11, column: 8, scope: !15)
!32 = !DILocation(line: 12, column: 10, scope: !15)
!33 = !DILocation(line: 12, column: 6, scope: !15)
!34 = !DILocation(line: 12, column: 8, scope: !15)
!35 = !DILocation(line: 13, column: 1, scope: !15)
!36 = distinct !DISubprogram(name: "partition", scope: !1, file: !1, line: 20, type: !37, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!37 = !DISubroutineType(types: !38)
!38 = !{!19, !18, !19, !19}
!39 = !DILocalVariable(name: "arr", arg: 1, scope: !36, file: !1, line: 20, type: !18)
!40 = !DILocation(line: 20, column: 21, scope: !36)
!41 = !DILocalVariable(name: "low", arg: 2, scope: !36, file: !1, line: 20, type: !19)
!42 = !DILocation(line: 20, column: 30, scope: !36)
!43 = !DILocalVariable(name: "high", arg: 3, scope: !36, file: !1, line: 20, type: !19)
!44 = !DILocation(line: 20, column: 39, scope: !36)
!45 = !DILocalVariable(name: "pivot", scope: !36, file: !1, line: 22, type: !19)
!46 = !DILocation(line: 22, column: 9, scope: !36)
!47 = !DILocation(line: 22, column: 17, scope: !36)
!48 = !DILocation(line: 22, column: 21, scope: !36)
!49 = !DILocalVariable(name: "i", scope: !36, file: !1, line: 23, type: !19)
!50 = !DILocation(line: 23, column: 9, scope: !36)
!51 = !DILocation(line: 23, column: 14, scope: !36)
!52 = !DILocation(line: 23, column: 18, scope: !36)
!53 = !DILocalVariable(name: "j", scope: !54, file: !1, line: 25, type: !19)
!54 = distinct !DILexicalBlock(scope: !36, file: !1, line: 25, column: 5)
!55 = !DILocation(line: 25, column: 14, scope: !54)
!56 = !DILocation(line: 25, column: 18, scope: !54)
!57 = !DILocation(line: 25, column: 10, scope: !54)
!58 = !DILocation(line: 25, column: 23, scope: !59)
!59 = distinct !DILexicalBlock(scope: !54, file: !1, line: 25, column: 5)
!60 = !DILocation(line: 25, column: 28, scope: !59)
!61 = !DILocation(line: 25, column: 33, scope: !59)
!62 = !DILocation(line: 25, column: 25, scope: !59)
!63 = !DILocation(line: 25, column: 5, scope: !54)
!64 = !DILocation(line: 28, column: 24, scope: !65)
!65 = distinct !DILexicalBlock(scope: !66, file: !1, line: 28, column: 13)
!66 = distinct !DILexicalBlock(scope: !59, file: !1, line: 26, column: 5)
!67 = !DILocation(line: 28, column: 28, scope: !65)
!68 = !DILocation(line: 28, column: 33, scope: !65)
!69 = !DILocation(line: 28, column: 31, scope: !65)
!70 = !DILocation(line: 28, column: 13, scope: !65)
!71 = !DILocation(line: 28, column: 13, scope: !66)
!72 = !DILocation(line: 30, column: 14, scope: !73)
!73 = distinct !DILexicalBlock(scope: !65, file: !1, line: 29, column: 9)
!74 = !DILocation(line: 31, column: 19, scope: !73)
!75 = !DILocation(line: 31, column: 23, scope: !73)
!76 = !DILocation(line: 31, column: 28, scope: !73)
!77 = !DILocation(line: 31, column: 32, scope: !73)
!78 = !DILocation(line: 31, column: 13, scope: !73)
!79 = !DILocation(line: 32, column: 9, scope: !73)
!80 = !DILocation(line: 33, column: 5, scope: !66)
!81 = !DILocation(line: 25, column: 39, scope: !59)
!82 = !DILocation(line: 25, column: 5, scope: !59)
!83 = distinct !{!83, !63, !84}
!84 = !DILocation(line: 33, column: 5, scope: !54)
!85 = !DILocation(line: 34, column: 11, scope: !36)
!86 = !DILocation(line: 34, column: 15, scope: !36)
!87 = !DILocation(line: 34, column: 17, scope: !36)
!88 = !DILocation(line: 34, column: 24, scope: !36)
!89 = !DILocation(line: 34, column: 28, scope: !36)
!90 = !DILocation(line: 34, column: 5, scope: !36)
!91 = !DILocation(line: 35, column: 13, scope: !36)
!92 = !DILocation(line: 35, column: 15, scope: !36)
!93 = !DILocation(line: 35, column: 5, scope: !36)
!94 = distinct !DISubprogram(name: "quickSort", scope: !1, file: !1, line: 42, type: !95, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!95 = !DISubroutineType(types: !96)
!96 = !{!18, !18, !19, !19}
!97 = !DILocalVariable(name: "arr", arg: 1, scope: !94, file: !1, line: 42, type: !18)
!98 = !DILocation(line: 42, column: 21, scope: !94)
!99 = !DILocalVariable(name: "low", arg: 2, scope: !94, file: !1, line: 42, type: !19)
!100 = !DILocation(line: 42, column: 30, scope: !94)
!101 = !DILocalVariable(name: "high", arg: 3, scope: !94, file: !1, line: 42, type: !19)
!102 = !DILocation(line: 42, column: 39, scope: !94)
!103 = !DILocation(line: 44, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !94, file: !1, line: 44, column: 9)
!105 = !DILocation(line: 44, column: 15, scope: !104)
!106 = !DILocation(line: 44, column: 13, scope: !104)
!107 = !DILocation(line: 44, column: 9, scope: !94)
!108 = !DILocalVariable(name: "pi", scope: !109, file: !1, line: 48, type: !19)
!109 = distinct !DILexicalBlock(scope: !104, file: !1, line: 45, column: 5)
!110 = !DILocation(line: 48, column: 13, scope: !109)
!111 = !DILocation(line: 48, column: 28, scope: !109)
!112 = !DILocation(line: 48, column: 33, scope: !109)
!113 = !DILocation(line: 48, column: 38, scope: !109)
!114 = !DILocation(line: 48, column: 18, scope: !109)
!115 = !DILocation(line: 52, column: 19, scope: !109)
!116 = !DILocation(line: 52, column: 24, scope: !109)
!117 = !DILocation(line: 52, column: 29, scope: !109)
!118 = !DILocation(line: 52, column: 32, scope: !109)
!119 = !DILocation(line: 52, column: 9, scope: !109)
!120 = !DILocation(line: 53, column: 19, scope: !109)
!121 = !DILocation(line: 53, column: 24, scope: !109)
!122 = !DILocation(line: 53, column: 27, scope: !109)
!123 = !DILocation(line: 53, column: 32, scope: !109)
!124 = !DILocation(line: 53, column: 9, scope: !109)
!125 = !DILocation(line: 54, column: 5, scope: !109)
!126 = !DILocation(line: 55, column: 12, scope: !94)
!127 = !DILocation(line: 55, column: 5, scope: !94)
!128 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 58, type: !129, scopeLine: 59, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!129 = !DISubroutineType(types: !130)
!130 = !{!19}
!131 = !DILocation(line: 67, column: 3, scope: !128)
