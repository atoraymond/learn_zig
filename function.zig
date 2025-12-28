const print = @import("std").debug.print;

// function parameters are immutable which means you can't reasign them
fn add(x: i32) i32{
    return x;
}

fn dividNumber(num: u32, denum: u32) u32{
    if(denum == 0){
        return 0;
    }

    return num / denum;
}

// For a function to be immutable the it must accept a pointer
fn add2(x: *u32) void{
    x.* = x.* + 1;

    print("{d}\n",.{x.*});
}

pub fn main()!void {
    const name: []const u8 = "Hello world";

    print("{s}\n", .{name});
    
    const num = dividNumber(20, 3);

    print("{d}\n", .{num});

    var x: u32 = 20;

    add2(&x);

    print("{d}\n", .{x});

}