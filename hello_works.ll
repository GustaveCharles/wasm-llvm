; ModuleID = 'hello-translation'
source_filename = "hello-translation"

@my_global_var = external global [0 x i8]

declare i32 @fd_write(i32, i32, i32, i32)

define void @main() {
entry:
  store i32 8, ptr @memory, align 4
  store i32 12, ptr inttoptr (i64 add (i64 ptrtoint (ptr @memory to i64), i64 4) to ptr), align 4
  %"%F0" = call i32 @fd_write(i32 1, i32 0, i32 1, i32 20)
  ret void
}