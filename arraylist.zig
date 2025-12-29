const std = @import("std");
const print = std.debug.print;
const AutoHashMap = std.hash_map.AutoHashMap;

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();

    // where initCapacity accepts an allocation on the heap and array list
    // capacity
    var buffer = try std.ArrayList(u8).initCapacity(allocator, 100);

    defer buffer.deinit(allocator);

    // inserting element into the array list
    try buffer.append(allocator, 'H');
    try buffer.append(allocator, 'E');
    try buffer.append(allocator, 'L');
    try buffer.append(allocator, 'L');
    try buffer.append(allocator, 'O');
    try buffer.appendSlice(allocator, " World");

    print("{any} \n", .{buffer});

    //Poping element from the array list
    const removed: u8 = buffer.pop().?;

    print("{c} \n", .{removed});


    // Hash maps

    var hash_table = AutoHashMap(u32, u32).init(allocator);
    defer hash_table.deinit();

    try hash_table.put(500, 89);
    try hash_table.put(502, 90);
    try hash_table.put(605, 98);
    try hash_table.put(805, 98);
    try hash_table.put(905, 98);

    print("{d} \n", .{hash_table.count()});
    print("{d} \n", .{hash_table.get(500).?});

    if(hash_table.remove(502)){
        print("value removed successfully\n", .{});
    }

    print("{d}\n", .{hash_table.count()});

    // looping through a hash table

    var it = hash_table.iterator();

    while(it.next()) |kv|{
        print("Keys {d} |", .{kv.key_ptr.*});

        print("values {d}\n", .{kv.value_ptr.*});
    }


    //string hash map

    var ages = std.StringHashMap(u8).init(allocator);
    defer ages.deinit();

    try ages.put("Raymond", 99);
    try ages.put("Jessica", 97);
    try ages.put("Messi", 33);
    try ages.put("Donald", 90);

    var ageIt = ages.iterator();

    while(ageIt.next()) |key|{
        print("Person {s} |", .{key.key_ptr.*});
        print("Age {d} \n", .{key.value_ptr.*});
    }

}