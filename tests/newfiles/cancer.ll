; ModuleID = 'cancer.c'
source_filename = "cancer.c"
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
define dso_local zeroext i1 @cancer(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 !dbg !15 {
  %7 = alloca i1, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !21, metadata !DIExpression()), !dbg !22
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !23, metadata !DIExpression()), !dbg !24
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !25, metadata !DIExpression()), !dbg !26
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !27, metadata !DIExpression()), !dbg !28
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !29, metadata !DIExpression()), !dbg !30
  %14 = load i32, i32* %8, align 4, !dbg !31
  %15 = icmp sle i32 %14, 2, !dbg !33
  br i1 %15, label %16, label %33, !dbg !34

16:                                               ; preds = %6
  %17 = load i32, i32* %10, align 4, !dbg !35
  %18 = icmp sle i32 %17, 3, !dbg !38
  br i1 %18, label %19, label %20, !dbg !39

19:                                               ; preds = %16
  store i1 false, i1* %7, align 1, !dbg !40
  br label %67, !dbg !40

20:                                               ; preds = %16
  %21 = load i32, i32* %11, align 4, !dbg !42
  %22 = icmp sle i32 %21, 3, !dbg !45
  br i1 %22, label %23, label %24, !dbg !46

23:                                               ; preds = %20
  store i1 false, i1* %7, align 1, !dbg !47
  br label %67, !dbg !47

24:                                               ; preds = %20
  %25 = load i32, i32* %12, align 4, !dbg !49
  %26 = icmp sle i32 %25, 2, !dbg !52
  br i1 %26, label %27, label %32, !dbg !53

27:                                               ; preds = %24
  %28 = load i32, i32* %13, align 4, !dbg !54
  %29 = icmp sle i32 %28, 3, !dbg !57
  br i1 %29, label %30, label %31, !dbg !58

30:                                               ; preds = %27
  store i1 true, i1* %7, align 1, !dbg !59
  br label %67, !dbg !59

31:                                               ; preds = %27
  store i1 false, i1* %7, align 1, !dbg !61
  br label %67, !dbg !61

32:                                               ; preds = %24
  store i1 true, i1* %7, align 1, !dbg !63
  br label %67, !dbg !63

33:                                               ; preds = %6
  %34 = load i32, i32* %9, align 4, !dbg !65
  %35 = icmp sle i32 %34, 2, !dbg !68
  br i1 %35, label %36, label %42, !dbg !69

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4, !dbg !70
  %38 = icmp sle i32 %37, 5, !dbg !73
  %39 = call zeroext i1 @declassify(i1 zeroext %38), !dbg !74
  br i1 %39, label %40, label %41, !dbg !75

40:                                               ; preds = %36
  store i1 false, i1* %7, align 1, !dbg !76
  br label %67, !dbg !76

41:                                               ; preds = %36
  store i1 true, i1* %7, align 1, !dbg !78
  br label %67, !dbg !78

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4, !dbg !80
  %44 = icmp sle i32 %43, 4, !dbg !83
  br i1 %44, label %45, label %66, !dbg !84

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4, !dbg !85
  %47 = icmp sle i32 %46, 2, !dbg !88
  br i1 %47, label %48, label %53, !dbg !89

48:                                               ; preds = %45
  %49 = load i32, i32* %13, align 4, !dbg !90
  %50 = icmp sle i32 %49, 3, !dbg !93
  br i1 %50, label %51, label %52, !dbg !94

51:                                               ; preds = %48
  store i1 false, i1* %7, align 1, !dbg !95
  br label %67, !dbg !95

52:                                               ; preds = %48
  store i1 true, i1* %7, align 1, !dbg !97
  br label %67, !dbg !97

53:                                               ; preds = %45
  %54 = load i32, i32* %11, align 4, !dbg !99
  %55 = icmp sle i32 %54, 6, !dbg !102
  br i1 %55, label %56, label %65, !dbg !103

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4, !dbg !104
  %58 = icmp sle i32 %57, 3, !dbg !107
  br i1 %58, label %59, label %60, !dbg !108

59:                                               ; preds = %56
  store i1 true, i1* %7, align 1, !dbg !109
  br label %67, !dbg !109

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4, !dbg !111
  %62 = icmp sle i32 %61, 5, !dbg !114
  br i1 %62, label %63, label %64, !dbg !115

63:                                               ; preds = %60
  store i1 false, i1* %7, align 1, !dbg !116
  br label %67, !dbg !116

64:                                               ; preds = %60
  store i1 true, i1* %7, align 1, !dbg !118
  br label %67, !dbg !118

65:                                               ; preds = %53
  store i1 true, i1* %7, align 1, !dbg !120
  br label %67, !dbg !120

66:                                               ; preds = %42
  store i1 true, i1* %7, align 1, !dbg !122
  br label %67, !dbg !122

67:                                               ; preds = %66, %65, %64, %63, %59, %52, %51, %41, %40, %32, %31, %30, %23, %19
  %68 = load i1, i1* %7, align 1, !dbg !124
  ret i1 %68, !dbg !124
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.0.0 (https://github.com/llvm/llvm-project.git 0160ad802e899c2922bc9b29564080c22eb0908c)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cancer.c", directory: "/home/fanyx/mine/haybaleMPC/tests/newfiles")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 11.0.0 (https://github.com/llvm/llvm-project.git 0160ad802e899c2922bc9b29564080c22eb0908c)"}
!7 = distinct !DISubprogram(name: "declassify", scope: !1, file: !1, line: 6, type: !8, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!11 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 6, type: !10)
!12 = !DILocation(line: 6, column: 22, scope: !7)
!13 = !DILocation(line: 7, column: 12, scope: !7)
!14 = !DILocation(line: 7, column: 5, scope: !7)
!15 = distinct !DISubprogram(name: "cancer", scope: !1, file: !1, line: 10, type: !16, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!10, !18, !18, !18, !18, !18, !18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DILocalVariable(name: "UoCSize", arg: 1, scope: !15, file: !1, line: 10, type: !18)
!20 = !DILocation(line: 10, column: 18, scope: !15)
!21 = !DILocalVariable(name: "UoCShape", arg: 2, scope: !15, file: !1, line: 11, type: !18)
!22 = !DILocation(line: 11, column: 24, scope: !15)
!23 = !DILocalVariable(name: "BN", arg: 3, scope: !15, file: !1, line: 12, type: !18)
!24 = !DILocation(line: 12, column: 24, scope: !15)
!25 = !DILocalVariable(name: "CT", arg: 4, scope: !15, file: !1, line: 13, type: !18)
!26 = !DILocation(line: 13, column: 24, scope: !15)
!27 = !DILocalVariable(name: "BC", arg: 5, scope: !15, file: !1, line: 14, type: !18)
!28 = !DILocation(line: 14, column: 24, scope: !15)
!29 = !DILocalVariable(name: "MA", arg: 6, scope: !15, file: !1, line: 15, type: !18)
!30 = !DILocation(line: 15, column: 24, scope: !15)
!31 = !DILocation(line: 17, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !15, file: !1, line: 17, column: 9)
!33 = !DILocation(line: 17, column: 17, scope: !32)
!34 = !DILocation(line: 17, column: 9, scope: !15)
!35 = !DILocation(line: 18, column: 12, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 18, column: 12)
!37 = distinct !DILexicalBlock(scope: !32, file: !1, line: 17, column: 23)
!38 = !DILocation(line: 18, column: 15, scope: !36)
!39 = !DILocation(line: 18, column: 12, scope: !37)
!40 = !DILocation(line: 19, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !36, file: !1, line: 18, column: 22)
!42 = !DILocation(line: 21, column: 14, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 21, column: 14)
!44 = distinct !DILexicalBlock(scope: !36, file: !1, line: 20, column: 13)
!45 = !DILocation(line: 21, column: 17, scope: !43)
!46 = !DILocation(line: 21, column: 14, scope: !44)
!47 = !DILocation(line: 22, column: 11, scope: !48)
!48 = distinct !DILexicalBlock(scope: !43, file: !1, line: 21, column: 24)
!49 = !DILocation(line: 24, column: 17, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 24, column: 17)
!51 = distinct !DILexicalBlock(scope: !43, file: !1, line: 23, column: 15)
!52 = !DILocation(line: 24, column: 20, scope: !50)
!53 = !DILocation(line: 24, column: 17, scope: !51)
!54 = !DILocation(line: 25, column: 19, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 25, column: 19)
!56 = distinct !DILexicalBlock(scope: !50, file: !1, line: 24, column: 26)
!57 = !DILocation(line: 25, column: 22, scope: !55)
!58 = !DILocation(line: 25, column: 19, scope: !56)
!59 = !DILocation(line: 26, column: 15, scope: !60)
!60 = distinct !DILexicalBlock(scope: !55, file: !1, line: 25, column: 28)
!61 = !DILocation(line: 28, column: 15, scope: !62)
!62 = distinct !DILexicalBlock(scope: !55, file: !1, line: 27, column: 19)
!63 = !DILocation(line: 31, column: 13, scope: !64)
!64 = distinct !DILexicalBlock(scope: !50, file: !1, line: 30, column: 17)
!65 = !DILocation(line: 36, column: 13, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 36, column: 13)
!67 = distinct !DILexicalBlock(scope: !32, file: !1, line: 35, column: 11)
!68 = !DILocation(line: 36, column: 23, scope: !66)
!69 = !DILocation(line: 36, column: 13, scope: !67)
!70 = !DILocation(line: 37, column: 27, scope: !71)
!71 = distinct !DILexicalBlock(scope: !72, file: !1, line: 37, column: 16)
!72 = distinct !DILexicalBlock(scope: !66, file: !1, line: 36, column: 29)
!73 = !DILocation(line: 37, column: 30, scope: !71)
!74 = !DILocation(line: 37, column: 16, scope: !71)
!75 = !DILocation(line: 37, column: 16, scope: !72)
!76 = !DILocation(line: 38, column: 11, scope: !77)
!77 = distinct !DILexicalBlock(scope: !71, file: !1, line: 37, column: 38)
!78 = !DILocation(line: 40, column: 11, scope: !79)
!79 = distinct !DILexicalBlock(scope: !71, file: !1, line: 39, column: 15)
!80 = !DILocation(line: 43, column: 14, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 43, column: 14)
!82 = distinct !DILexicalBlock(scope: !66, file: !1, line: 42, column: 13)
!83 = !DILocation(line: 43, column: 22, scope: !81)
!84 = !DILocation(line: 43, column: 14, scope: !82)
!85 = !DILocation(line: 44, column: 16, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !1, line: 44, column: 16)
!87 = distinct !DILexicalBlock(scope: !81, file: !1, line: 43, column: 28)
!88 = !DILocation(line: 44, column: 19, scope: !86)
!89 = !DILocation(line: 44, column: 16, scope: !87)
!90 = !DILocation(line: 45, column: 18, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !1, line: 45, column: 18)
!92 = distinct !DILexicalBlock(scope: !86, file: !1, line: 44, column: 25)
!93 = !DILocation(line: 45, column: 21, scope: !91)
!94 = !DILocation(line: 45, column: 18, scope: !92)
!95 = !DILocation(line: 46, column: 15, scope: !96)
!96 = distinct !DILexicalBlock(scope: !91, file: !1, line: 45, column: 26)
!97 = !DILocation(line: 48, column: 15, scope: !98)
!98 = distinct !DILexicalBlock(scope: !91, file: !1, line: 47, column: 19)
!99 = !DILocation(line: 51, column: 18, scope: !100)
!100 = distinct !DILexicalBlock(scope: !101, file: !1, line: 51, column: 18)
!101 = distinct !DILexicalBlock(scope: !86, file: !1, line: 50, column: 17)
!102 = !DILocation(line: 51, column: 21, scope: !100)
!103 = !DILocation(line: 51, column: 18, scope: !101)
!104 = !DILocation(line: 52, column: 20, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 52, column: 20)
!106 = distinct !DILexicalBlock(scope: !100, file: !1, line: 51, column: 27)
!107 = !DILocation(line: 52, column: 28, scope: !105)
!108 = !DILocation(line: 52, column: 20, scope: !106)
!109 = !DILocation(line: 53, column: 17, scope: !110)
!110 = distinct !DILexicalBlock(scope: !105, file: !1, line: 52, column: 34)
!111 = !DILocation(line: 55, column: 22, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !1, line: 55, column: 22)
!113 = distinct !DILexicalBlock(scope: !105, file: !1, line: 54, column: 21)
!114 = !DILocation(line: 55, column: 25, scope: !112)
!115 = !DILocation(line: 55, column: 22, scope: !113)
!116 = !DILocation(line: 56, column: 19, scope: !117)
!117 = distinct !DILexicalBlock(scope: !112, file: !1, line: 55, column: 31)
!118 = !DILocation(line: 58, column: 19, scope: !119)
!119 = distinct !DILexicalBlock(scope: !112, file: !1, line: 57, column: 23)
!120 = !DILocation(line: 62, column: 15, scope: !121)
!121 = distinct !DILexicalBlock(scope: !100, file: !1, line: 61, column: 19)
!122 = !DILocation(line: 66, column: 11, scope: !123)
!123 = distinct !DILexicalBlock(scope: !81, file: !1, line: 65, column: 15)
!124 = !DILocation(line: 70, column: 1, scope: !15)
