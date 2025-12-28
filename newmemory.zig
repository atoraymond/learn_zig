const std = @import("std");
const print = std.debug.print;

const User = struct{
    id: u8,
    name: []const u8,

    fn init(id: u8, name: []const u8) User{
        return User{
            .id = id,
            .name = name
        };
    }
};

pub fn main() !void {
    
    // Use alloc and free if you want to store an array of element
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};

    const allocator = gpa.allocator();

    const input = try allocator.alloc(u8, 500);

    defer allocator.free(input);

    @memset(input[0..], 0);

    const quote: []const u8 = "He who much is given, much is expected";

    @memcpy(input[0..quote.len], quote[0..]);

    print("{s} \n", .{input});


    // Use create and destroy when you want to store a single element

    const user = try allocator.create(User);

    defer allocator.destroy(user);

    user.* = User.init(0, "Raymond");

    print("{d} {s}\n", .{user.id, user.name});


    const ray = try allocator.create(User);

    defer allocator.destroy(ray);

    ray.* = User.init(0, "Raymond Ato");

    print("{d} {s} \n", .{ray.id, ray.name});
}