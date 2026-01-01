// Works on linux

const std = @import("std");
const io = std.testing.io;
const buffer: [1024] u8 = undefined;
var stdin_buffer = std.fs.File.stdin().reader(io, &buffer);
const stdin = &stdin_buffer.interface;

pub fn main() !void {
    std.debug.print("Please enter your name\n", .{});
    const name = try stdin.takeDelimiterExclusive('\n');
    std.debug.print("My name is: {s} \n", .{name});
}