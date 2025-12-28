const print = @import("std").debug.print;

const User = struct {
    id: u64,
    name: []const u8,
    email: []const u8,

    fn init(id: u64, name: []const u8, email: []const u8) User{
        return User{
            .id = id,
            .name = name,
            .email = email
        };
    }

    fn print_name(self: User)!void {
        print("{s}\n", .{self.name});
    }

    fn print_email(self: User)!void {
        print("{s}\n", .{self.email});
    }
};

const Rectangle = struct {
    width: u32,
    height: u32,

    fn init(width: u32, height: u32) Rectangle{
        return Rectangle{
            .width = width,
            .height = height
        };
    }

    fn area(self: Rectangle) u32{
        return self.width * self.height;
    }

    fn perimeter(self: Rectangle) u32{
        return (self.width + self.height) * (self.width + self.height);
    }
};

pub fn main()!void {
    const user = User.init(10, "Manuel Larbi", "mlarbi@gmail.com");

    const rect = Rectangle.init(10, 20);

    try user.print_name();
    try user.print_email();

    print("{d}\n", .{rect.area()});
    print("{d}\n", .{rect.perimeter()});
}