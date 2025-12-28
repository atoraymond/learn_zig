const print = @import("std").debug.print;

pub fn main()!void {
    // const list = [5]u8{'a','b', 'c', 'd','e' };

    // for(list) |value|{
    //     print("{d}\n", .{value});
    // }

    // print("Another printing taking place\n", .{});

    // const name: []const u8 = "Raymond";
    // for(name, 0..) |_, i|{
    //     print("| {d} ", .{i});
    // }

    // print("\n", .{});

    // print("Test printing\n", .{});

    // for(0..9) |v|{
    //     print("{d} \n", .{v});
    // }

    var i: u8 = 1;

    while(i < 5 ): (i += 1){
        print("{d} |",.{i});
    }
}