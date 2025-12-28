const std = @import("std");
const print = std.debug.print;

const User = struct {
    id: u8,
    name: []const u8,
    email: []const u8,

    fn init(id: u8, name: []const u8, email: []const u8) User{
        return .{
            .id = id,
            .name = name,
            .email = email
        };
    }

    fn print_name(self: User) !void {
        print("{d} \n", .{self.id});
        print("{s} \n", .{self.name});
        print("{s} \n", .{self.email});
    }
};

const Rectangle = struct {
    length: u32,
    width: u32,

    fn init(length: u32, width: u32) Rectangle{
        return .{
            .length = length,
            .width = width
        };
    }

    fn area(self: Rectangle) u32{
        return self.length * self.width;
    }
};

pub fn main() !void {
    var x: u8 = 40;

    const y = &x;
    y.* = 6;

    print("{any} \n", .{y.*});

    const doe: User = User.init(1, "John Doe", "jdoe@gmail.com");

    const pointer = &doe;

    print("{any} \n", .{pointer});


    const rect1: Rectangle = Rectangle.init(20, 30);

    print("{d} \n", .{rect1.area()});
}