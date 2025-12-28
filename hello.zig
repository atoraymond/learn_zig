const print = @import("std").debug.print;


fn foo()!void {
    defer print("Exiting the scope\n", .{});
    defer print("Adding two numbers\n", .{});
    print("Multiplying two numbers\n", .{});
}

pub fn main()!void{
    try foo();
}