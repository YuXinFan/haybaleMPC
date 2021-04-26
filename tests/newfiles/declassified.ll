; ModuleID = 'declassified.c'
source_filename = "declassified.c"
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
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !37, metadata !DIExpression()), !dbg !38
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !39, metadata !DIExpression()), !dbg !40
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %7, metadata !43, metadata !DIExpression()), !dbg !44
  store i32 0, i32* %7, align 4, !dbg !44
  %8 = load i32, i32* %7, align 4, !dbg !45
  %9 = load i32, i32* %5, align 4, !dbg !47
  %10 = icmp slt i32 %8, %9, !dbg !48
  br i1 %10, label %11, label %12, !dbg !49

11:                                               ; preds = %3
  store i32 1, i32* %7, align 4, !dbg !50
  br label %12, !dbg !52

12:                                               ; preds = %11, %3
  %13 = load i32, i32* %7, align 4, !dbg !53
  %14 = load i32, i32* %6, align 4, !dbg !55
  %15 = icmp slt i32 %13, %14, !dbg !56
  %16 = call zeroext i1 @declassify(i1 zeroext %15), !dbg !57
  br i1 %16, label %17, label %18, !dbg !58

17:                                               ; preds = %12
  store i32 2, i32* %7, align 4, !dbg !59
  br label %18, !dbg !61

18:                                               ; preds = %17, %12
  %19 = load i32, i32* %7, align 4, !dbg !62
  ret i32 %19, !dbg !63
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MaxLeak(i32 %0, i32 %1, i32 %2) #0 !dbg !64 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !65, metadata !DIExpression()), !dbg !66
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !67, metadata !DIExpression()), !dbg !68
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %7, metadata !71, metadata !DIExpression()), !dbg !72
  store i32 0, i32* %7, align 4, !dbg !72
  %8 = load i32, i32* %7, align 4, !dbg !73
  %9 = load i32, i32* %5, align 4, !dbg !75
  %10 = icmp slt i32 %8, %9, !dbg !76
  %11 = call zeroext i1 @declassify(i1 zeroext %10), !dbg !77
  br i1 %11, label %12, label %13, !dbg !78

12:                                               ; preds = %3
  store i32 1, i32* %7, align 4, !dbg !79
  br label %13, !dbg !81

13:                                               ; preds = %12, %3
  %14 = load i32, i32* %7, align 4, !dbg !82
  %15 = load i32, i32* %6, align 4, !dbg !84
  %16 = icmp slt i32 %14, %15, !dbg !85
  br i1 %16, label %17, label %18, !dbg !86

17:                                               ; preds = %13
  store i32 2, i32* %7, align 4, !dbg !87
  br label %18, !dbg !89

18:                                               ; preds = %17, %13
  %19 = load i32, i32* %7, align 4, !dbg !90
  ret i32 %19, !dbg !91
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !92 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0, !dbg !95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 11.1.0-++20210204121720+1fdec59bffc1-1~exp1~20210203232336.162", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "declassified.c", directory: "/home/fanyx/projects/haybaleMPC/tests/newfiles")
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
!43 = !DILocalVariable(name: "m", scope: !34, file: !1, line: 18, type: !18)
!44 = !DILocation(line: 18, column: 9, scope: !34)
!45 = !DILocation(line: 19, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !34, file: !1, line: 19, column: 9)
!47 = !DILocation(line: 19, column: 13, scope: !46)
!48 = !DILocation(line: 19, column: 11, scope: !46)
!49 = !DILocation(line: 19, column: 9, scope: !34)
!50 = !DILocation(line: 20, column: 11, scope: !51)
!51 = distinct !DILexicalBlock(scope: !46, file: !1, line: 19, column: 16)
!52 = !DILocation(line: 21, column: 5, scope: !51)
!53 = !DILocation(line: 22, column: 20, scope: !54)
!54 = distinct !DILexicalBlock(scope: !34, file: !1, line: 22, column: 9)
!55 = !DILocation(line: 22, column: 24, scope: !54)
!56 = !DILocation(line: 22, column: 22, scope: !54)
!57 = !DILocation(line: 22, column: 9, scope: !54)
!58 = !DILocation(line: 22, column: 9, scope: !34)
!59 = !DILocation(line: 23, column: 11, scope: !60)
!60 = distinct !DILexicalBlock(scope: !54, file: !1, line: 22, column: 30)
!61 = !DILocation(line: 24, column: 5, scope: !60)
!62 = !DILocation(line: 25, column: 12, scope: !34)
!63 = !DILocation(line: 25, column: 5, scope: !34)
!64 = distinct !DISubprogram(name: "MaxLeak", scope: !1, file: !1, line: 28, type: !35, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!65 = !DILocalVariable(name: "a", arg: 1, scope: !64, file: !1, line: 28, type: !18)
!66 = !DILocation(line: 28, column: 17, scope: !64)
!67 = !DILocalVariable(name: "b", arg: 2, scope: !64, file: !1, line: 28, type: !18)
!68 = !DILocation(line: 28, column: 24, scope: !64)
!69 = !DILocalVariable(name: "c", arg: 3, scope: !64, file: !1, line: 28, type: !18)
!70 = !DILocation(line: 28, column: 31, scope: !64)
!71 = !DILocalVariable(name: "m", scope: !64, file: !1, line: 29, type: !18)
!72 = !DILocation(line: 29, column: 9, scope: !64)
!73 = !DILocation(line: 30, column: 20, scope: !74)
!74 = distinct !DILexicalBlock(scope: !64, file: !1, line: 30, column: 9)
!75 = !DILocation(line: 30, column: 24, scope: !74)
!76 = !DILocation(line: 30, column: 22, scope: !74)
!77 = !DILocation(line: 30, column: 9, scope: !74)
!78 = !DILocation(line: 30, column: 9, scope: !64)
!79 = !DILocation(line: 31, column: 11, scope: !80)
!80 = distinct !DILexicalBlock(scope: !74, file: !1, line: 30, column: 28)
!81 = !DILocation(line: 32, column: 5, scope: !80)
!82 = !DILocation(line: 33, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !64, file: !1, line: 33, column: 9)
!84 = !DILocation(line: 33, column: 13, scope: !83)
!85 = !DILocation(line: 33, column: 11, scope: !83)
!86 = !DILocation(line: 33, column: 9, scope: !64)
!87 = !DILocation(line: 34, column: 11, scope: !88)
!88 = distinct !DILexicalBlock(scope: !83, file: !1, line: 33, column: 16)
!89 = !DILocation(line: 35, column: 5, scope: !88)
!90 = !DILocation(line: 36, column: 12, scope: !64)
!91 = !DILocation(line: 36, column: 5, scope: !64)
!92 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 57, type: !93, scopeLine: 57, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!93 = !DISubroutineType(types: !94)
!94 = !{!18}
!95 = !DILocation(line: 58, column: 5, scope: !92)
