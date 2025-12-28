const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    // using catch
    const str: []const u8 = "20";
    const number = std.fmt.parseInt(u64,str, 10) catch 13;

    print("{any} \n", .{number});
}