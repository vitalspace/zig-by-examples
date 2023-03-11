const std = @import("std");
const fmt = std.debug;

const person = struct {
    age: i32,
    name: []const u8,
};

pub fn main() !void {
    const luis: person = person{ .age = 20, .name = "Luis" };
    fmt.print("Hello, my name is: {s}, i'm {d} years old. \n", .{ luis.name, luis.age });
}
