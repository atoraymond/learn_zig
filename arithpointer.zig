const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    // const arr = [_]u8{1, 2,3, 4};
    // var ptr: [*]const u8 = &arr;

    // print("{d} \n", .{ptr[0]});

    // ptr += 1;
    // print("{d} \n", .{ptr[0]});

    // ptr +=1;
    // print("{d} \n", .{ptr[0]});

    const arr = [6]u8{10, 20, 30, 40, 50, 60};
    const slice1 = arr[0..arr.len];

    print("{any} \n", .{slice1[0]});

    const x: ?i32 = null;

    const dbl = (x orelse 15) * 2;
    print("{d} \n", .{dbl});
    
}