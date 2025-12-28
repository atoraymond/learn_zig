const User = @import("user.zig").User;
const std = @import("std");
const print = std.debug.print;

const Vec3 = struct {
    x: u8,
    y: u8,
    z: u8,

    fn twice(self: *Vec3) !void{
        self.x = self.x * 2;
        self.y = self.y * 2;
        self.z = self.z * 2;
    }
};

pub fn main()!void {
    const joe: User = User.init(20, "Joe Lingthon", "joelin@gmail.com");

    try joe.print_name();

    var v1 = Vec3{
        .x = 9,
        .y = 3,
        .z = 4
    };

    print("Handling another set of printing \n",.{});

    print("{d} \n", .{v1.x});

    try v1.twice();
    print("{any} \n", .{v1});
}