const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    const numbers = [_]i32{ 1, 2, 3, 4, 5, 6 };

    const long = std.mem.len(numbers);
    print("The leng is: {d}\n", .{long});

    for (numbers) |number| {
        print("{d}\n", .{number});
    }
}
