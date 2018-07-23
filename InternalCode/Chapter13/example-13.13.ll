; ModuleID = 'ClangNoteBook/Chapter13/example-13.13.c'
source_filename = "ClangNoteBook/Chapter13/example-13.13.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@.str = private unnamed_addr constant [47 x i8] c"\E7\AC\A6\E5\8F\B7\E3\81\AA\E3\81\97\EF\BC\98\E3\83\93\E3\83\83\E3\83\88\E6\95\B4\E6\95\B0 %3d (%02X) \E3\81\AE\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"\E4\B8\8A\E4\BD\8D\EF\BC\94\E3\83\93\E3\83\83\E3\83\88\E3\82\92\EF\BC\90\E3\81\AB\E3\81\99\E3\82\8B\E3\81\A8 %3d \EF\BC\88%02X\EF\BC\89\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"\E4\B8\8B\E4\BD\8D\EF\BC\94\E3\83\93\E3\83\83\E3\83\88\E3\82\92\EF\BC\90\E3\81\AB\E3\81\99\E3\82\8B\E3\81\A8 %3d \EF\BC\88%02X\EF\BC\89\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\E5\85\A8\E3\83\93\E3\83\83\E3\83\88\E3\82\92\E5\8F\8D\E8\BB\A2\E3\81\99\E3\82\8B\E3\81\A8 %3d \EF\BC\88%02X\EF\BC\89\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  store i8 -68, i8* %2, align 1
  %6 = load i8, i8* %2, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, i8* %2, align 1
  %9 = zext i8 %8 to i32
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i32 0, i32 0), i32 %7, i32 %9)
  %11 = load i8, i8* %2, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 15
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %3, align 1
  %15 = load i8, i8* %3, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* %3, align 1
  %18 = zext i8 %17 to i32
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i32 0, i32 0), i32 %16, i32 %18)
  %20 = load i8, i8* %2, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 240
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %4, align 1
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* %4, align 1
  %27 = zext i8 %26 to i32
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0), i32 %25, i32 %27)
  %29 = load i8, i8* %2, align 1
  %30 = zext i8 %29 to i32
  %31 = xor i32 %30, -1
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %5, align 1
  %33 = load i8, i8* %5, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* %5, align 1
  %36 = zext i8 %35 to i32
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i32 0, i32 0), i32 %34, i32 %36)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
