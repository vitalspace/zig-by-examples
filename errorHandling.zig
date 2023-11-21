const std = @import("std");
const print = std.debug.print;

fn divide(dividend: u32, divisor: u32) !u32 {
    if (divisor == 0) {
        return error.DivideByZero;
    }
    return dividend / divisor;
}

fn msg(message: []const u8) !bool {
    if (std.mem.eql(u8, message, "hello") == false) {
        return error.NoEsHello;
    }

    return true;
}

pub fn main() !void {
    const rsd = divide(100, 2) catch |err| {
        print("{}\n", .{err});
        return;
    };
    print("{d}\n", .{rsd});

    const rsm = msg("hello") catch |err| {
        print("{}\n", .{err});
        return;
    };

    print("{any}\n", .{rsm});
}
