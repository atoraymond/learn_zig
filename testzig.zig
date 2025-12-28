const std = @import("std");
const expect = std.testing.expect;
const print = std.debug.print;
const expectString = std.testing.expectEqualStrings;

pub fn main() !void {
    print("{s}", .{"Learning zig testing"});
}

test "result of adding two number"{
    const num1: u8 = 9;
    const num2: u8 = 9;

    try expect((num1 + num2) == 18);
}

test "check name with variable"{
    try expect( 4 == 4);
}

test "testing two string"{
    const str1: []const u8 = "Raymond Ghanney";
    const str2: []const u8 = "Raymond Ghanney";

    try expectString(str1, str2);
}