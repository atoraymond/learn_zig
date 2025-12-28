const std = @import("std");
const print = std.debug.print;

pub const User = struct {
    id: u64,
    name: []const u8,
    email: []const u8,

    pub fn init(id: u64, name: []const u8, email: []const u8) User{
        return User{
            .id = id,
            .name = name,
            .email = email
        };
    }

    pub fn print_name(self: User)!void {
        print("{s} \n", .{self.name});
    }
};