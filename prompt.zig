const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    var stdin = std.io.getStdIn().reader();
    var input: [100]u8 = undefined;

    while (true) {
        const bytes_read = try stdin.read(&input);
        const entered = input[0..bytes_read];

        print("Entered: {s}\n", .{entered});
    }
}
