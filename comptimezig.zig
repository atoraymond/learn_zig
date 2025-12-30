const std = @import("std");
const print = std.debug.print;

fn printTwice(comptime num: u32) u32{
    return num * 2;
}

// Defining a generic
fn max(comptime T: type, a: T, b: T) !T {
    if(a > b){
        return a;
    }else {
        return b;
    }
}

pub fn main() !void {

}

test "test comptime"{
    _ = printTwice(500);

    const n1 = try max(u8, 40, 50);
    try std.testing.expectEqual(n1, 50);

    const n2 = max(f64, 40.90, 39.92);

    try std.testing.expectEqual(n2, 40.90);
}