const std = @import("std");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();

    const buffer = try allocator.create(i32);

    defer allocator.destroy(buffer);

    buffer.* = 45;

    std.debug.print("{any} \n", .{buffer.*});
}