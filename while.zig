const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    var i: i32 = 0;
    while (i < 10) {
        i += 1;
        print("{}\n", .{i});
    }
}
