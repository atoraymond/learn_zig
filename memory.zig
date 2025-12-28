const std = @import("std");
const print = std.debug.print;


pub fn main() !void {
    print("Hello, {s} \n", .{"Raymond"});

    // const a = [_]u8{0,1,2,3,4,5};

    // for(0..a.len) |i|{
    //     print("{d} \n", .{i});
    // }

    var gpa = std.heap.GeneralPurposeAllocator(.{}){};

    const allocator = gpa.allocator();

    var input = try allocator.alloc(u8, 50);

    defer allocator.free(input);

    @memset(input[0..], 0);

    const data: []const u8 = "hello world";
    @memcpy(input[0..data.len], data[0..]);

    print("{s} \n", .{input});
}