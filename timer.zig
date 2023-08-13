const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    print("Starting timer...\n", .{});

    var timer = try std.time.Timer.start();

    while (timer.read() < 5000) {
        timer.reset();
    }

    print("5 seconds elapsed...\n", .{});
}
