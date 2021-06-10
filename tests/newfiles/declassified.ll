; ModuleID = 'declassified.c'
source_filename = "declassified.c"
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
define dso_local i32 @Millionaire(i32 %0, i32 %1) #0 !dbg !15 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !21, metadata !DIExpression()), !dbg !22
  %6 = load i32, i32* %4, align 4, !dbg !23
  %7 = load i32, i32* %5, align 4, !dbg !25
  %8 = icmp sgt i32 %6, %7, !dbg !26
  %9 = call zeroext i1 @declassify(i1 zeroext %8), !dbg !27
  br i1 %9, label %10, label %11, !dbg !28

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !29
  br label %12, !dbg !29

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !31
  br label %12, !dbg !31

12:                                               ; preds = %11, %10
  %13 = load i32, i32* %3, align 4, !dbg !33
  ret i32 %13, !dbg !33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Max(i32 %0, i32 %1, i32 %2) #0 !dbg !34 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !37, metadata !DIExpression()), !dbg !38
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !39, metadata !DIExpression()), !dbg !40
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i8* %7, metadata !43, metadata !DIExpression()), !dbg !45
  store i8 97, i8* %7, align 1, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %8, metadata !46, metadata !DIExpression()), !dbg !47
  %9 = load i32, i32* %4, align 4, !dbg !48
  store i32 %9, i32* %8, align 4, !dbg !47
  %10 = load i32, i32* %8, align 4, !dbg !49
  %11 = load i32, i32* %5, align 4, !dbg !51
  %12 = icmp slt i32 %10, %11, !dbg !52
  br i1 %12, label %13, label %15, !dbg !53

13:                                               ; preds = %3
  store i8 98, i8* %7, align 1, !dbg !54
  %14 = load i32, i32* %5, align 4, !dbg !56
  store i32 %14, i32* %8, align 4, !dbg !57
  br label %15, !dbg !58

15:                                               ; preds = %13, %3
  %16 = load i32, i32* %8, align 4, !dbg !59
  %17 = load i32, i32* %6, align 4, !dbg !61
  %18 = icmp slt i32 %16, %17, !dbg !62
  %19 = call zeroext i1 @declassify(i1 zeroext %18), !dbg !63
  br i1 %19, label %20, label %21, !dbg !64

20:                                               ; preds = %15
  store i8 99, i8* %7, align 1, !dbg !65
  br label %21, !dbg !67

21:                                               ; preds = %20, %15
  %22 = load i8, i8* %7, align 1, !dbg !68
  %23 = sext i8 %22 to i32, !dbg !68
  ret i32 %23, !dbg !69
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MaxLeak(i32 %0, i32 %1, i32 %2) #0 !dbg !70 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !71, metadata !DIExpression()), !dbg !72
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !73, metadata !DIExpression()), !dbg !74
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i8* %7, metadata !77, metadata !DIExpression()), !dbg !78
  store i8 97, i8* %7, align 1, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %8, metadata !79, metadata !DIExpression()), !dbg !80
  %9 = load i32, i32* %4, align 4, !dbg !81
  store i32 %9, i32* %8, align 4, !dbg !80
  %10 = load i32, i32* %8, align 4, !dbg !82
  %11 = load i32, i32* %5, align 4, !dbg !84
  %12 = icmp slt i32 %10, %11, !dbg !85
  %13 = call zeroext i1 @declassify(i1 zeroext %12), !dbg !86
  br i1 %13, label %14, label %16, !dbg !87

14:                                               ; preds = %3
  store i8 98, i8* %7, align 1, !dbg !88
  %15 = load i32, i32* %5, align 4, !dbg !90
  store i32 %15, i32* %8, align 4, !dbg !91
  br label %16, !dbg !92

16:                                               ; preds = %14, %3
  %17 = load i32, i32* %8, align 4, !dbg !93
  %18 = load i32, i32* %6, align 4, !dbg !95
  %19 = icmp slt i32 %17, %18, !dbg !96
  br i1 %19, label %20, label %21, !dbg !97

20:                                               ; preds = %16
  store i8 99, i8* %7, align 1, !dbg !98
  br label %21, !dbg !100

21:                                               ; preds = %20, %16
  %22 = load i8, i8* %7, align 1, !dbg !101
  %23 = sext i8 %22 to i32, !dbg !101
  ret i32 %23, !dbg !102
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !103 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0, !dbg !106
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.0.0 (https://github.com/llvm/llvm-project.git 0160ad802e899c2922bc9b29564080c22eb0908c)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "declassified.c", directory: "/home/fanyx/mine/haybaleMPC/tests/newfiles")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 11.0.0 (https://github.com/llvm/llvm-project.git 0160ad802e899c2922bc9b29564080c22eb0908c)"}
!7 = distinct !DISubprogram(name: "declassify", scope: !1, file: !1, line: 5, type: !8, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!11 = !DILocalVariable(name: "b", arg: 1, scope: !7, file: !1, line: 5, type: !10)
!12 = !DILocation(line: 5, column: 22, scope: !7)
!13 = !DILocation(line: 6, column: 12, scope: !7)
!14 = !DILocation(line: 6, column: 5, scope: !7)
!15 = distinct !DISubprogram(name: "Millionaire", scope: !1, file: !1, line: 9, type: !16, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18, !18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DILocalVariable(name: "a", arg: 1, scope: !15, file: !1, line: 9, type: !18)
!20 = !DILocation(line: 9, column: 21, scope: !15)
!21 = !DILocalVariable(name: "b", arg: 2, scope: !15, file: !1, line: 9, type: !18)
!22 = !DILocation(line: 9, column: 28, scope: !15)
!23 = !DILocation(line: 10, column: 22, scope: !24)
!24 = distinct !DILexicalBlock(scope: !15, file: !1, line: 10, column: 10)
!25 = !DILocation(line: 10, column: 26, scope: !24)
!26 = !DILocation(line: 10, column: 24, scope: !24)
!27 = !DILocation(line: 10, column: 10, scope: !24)
!28 = !DILocation(line: 10, column: 10, scope: !15)
!29 = !DILocation(line: 11, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !24, file: !1, line: 10, column: 32)
!31 = !DILocation(line: 13, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !24, file: !1, line: 12, column: 11)
!33 = !DILocation(line: 15, column: 1, scope: !15)
!34 = distinct !DISubprogram(name: "Max", scope: !1, file: !1, line: 17, type: !35, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!35 = !DISubroutineType(types: !36)
!36 = !{!18, !18, !18, !18}
!37 = !DILocalVariable(name: "a", arg: 1, scope: !34, file: !1, line: 17, type: !18)
!38 = !DILocation(line: 17, column: 13, scope: !34)
!39 = !DILocalVariable(name: "b", arg: 2, scope: !34, file: !1, line: 17, type: !18)
!40 = !DILocation(line: 17, column: 20, scope: !34)
!41 = !DILocalVariable(name: "c", arg: 3, scope: !34, file: !1, line: 17, type: !18)
!42 = !DILocation(line: 17, column: 27, scope: !34)
!43 = !DILocalVariable(name: "m", scope: !34, file: !1, line: 18, type: !44)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!45 = !DILocation(line: 18, column: 10, scope: !34)
!46 = !DILocalVariable(name: "max", scope: !34, file: !1, line: 19, type: !18)
!47 = !DILocation(line: 19, column: 9, scope: !34)
!48 = !DILocation(line: 19, column: 15, scope: !34)
!49 = !DILocation(line: 20, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !34, file: !1, line: 20, column: 9)
!51 = !DILocation(line: 20, column: 15, scope: !50)
!52 = !DILocation(line: 20, column: 13, scope: !50)
!53 = !DILocation(line: 20, column: 9, scope: !34)
!54 = !DILocation(line: 21, column: 11, scope: !55)
!55 = distinct !DILexicalBlock(scope: !50, file: !1, line: 20, column: 18)
!56 = !DILocation(line: 22, column: 15, scope: !55)
!57 = !DILocation(line: 22, column: 13, scope: !55)
!58 = !DILocation(line: 23, column: 5, scope: !55)
!59 = !DILocation(line: 24, column: 20, scope: !60)
!60 = distinct !DILexicalBlock(scope: !34, file: !1, line: 24, column: 9)
!61 = !DILocation(line: 24, column: 26, scope: !60)
!62 = !DILocation(line: 24, column: 24, scope: !60)
!63 = !DILocation(line: 24, column: 9, scope: !60)
!64 = !DILocation(line: 24, column: 9, scope: !34)
!65 = !DILocation(line: 25, column: 11, scope: !66)
!66 = distinct !DILexicalBlock(scope: !60, file: !1, line: 24, column: 32)
!67 = !DILocation(line: 26, column: 5, scope: !66)
!68 = !DILocation(line: 27, column: 12, scope: !34)
!69 = !DILocation(line: 27, column: 5, scope: !34)
!70 = distinct !DISubprogram(name: "MaxLeak", scope: !1, file: !1, line: 30, type: !35, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!71 = !DILocalVariable(name: "a", arg: 1, scope: !70, file: !1, line: 30, type: !18)
!72 = !DILocation(line: 30, column: 17, scope: !70)
!73 = !DILocalVariable(name: "b", arg: 2, scope: !70, file: !1, line: 30, type: !18)
!74 = !DILocation(line: 30, column: 24, scope: !70)
!75 = !DILocalVariable(name: "c", arg: 3, scope: !70, file: !1, line: 30, type: !18)
!76 = !DILocation(line: 30, column: 31, scope: !70)
!77 = !DILocalVariable(name: "m", scope: !70, file: !1, line: 31, type: !44)
!78 = !DILocation(line: 31, column: 10, scope: !70)
!79 = !DILocalVariable(name: "max", scope: !70, file: !1, line: 32, type: !18)
!80 = !DILocation(line: 32, column: 9, scope: !70)
!81 = !DILocation(line: 32, column: 15, scope: !70)
!82 = !DILocation(line: 33, column: 20, scope: !83)
!83 = distinct !DILexicalBlock(scope: !70, file: !1, line: 33, column: 9)
!84 = !DILocation(line: 33, column: 26, scope: !83)
!85 = !DILocation(line: 33, column: 24, scope: !83)
!86 = !DILocation(line: 33, column: 9, scope: !83)
!87 = !DILocation(line: 33, column: 9, scope: !70)
!88 = !DILocation(line: 34, column: 11, scope: !89)
!89 = distinct !DILexicalBlock(scope: !83, file: !1, line: 33, column: 30)
!90 = !DILocation(line: 35, column: 15, scope: !89)
!91 = !DILocation(line: 35, column: 13, scope: !89)
!92 = !DILocation(line: 36, column: 5, scope: !89)
!93 = !DILocation(line: 37, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !70, file: !1, line: 37, column: 9)
!95 = !DILocation(line: 37, column: 15, scope: !94)
!96 = !DILocation(line: 37, column: 13, scope: !94)
!97 = !DILocation(line: 37, column: 9, scope: !70)
!98 = !DILocation(line: 38, column: 11, scope: !99)
!99 = distinct !DILexicalBlock(scope: !94, file: !1, line: 37, column: 18)
!100 = !DILocation(line: 39, column: 5, scope: !99)
!101 = !DILocation(line: 40, column: 12, scope: !70)
!102 = !DILocation(line: 40, column: 5, scope: !70)
!103 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 85, type: !104, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!104 = !DISubroutineType(types: !105)
!105 = !{!18}
!106 = !DILocation(line: 86, column: 5, scope: !103)
