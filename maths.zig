const std = @import("std");

pub fn main() !void {
    const a: i32 = 10;
    const b: i32 = 5;
    std.debug.print("The sum between {d} + {d} = {d}\n", .{ a, b, sum(a, b) });
    std.debug.print("The subtraction between {d} - {d} = {d}\n", .{ a, b, sub(a, b) });
    std.debug.print("The Multiplication between {d} * {d} = {d}\n", .{ a, b, mult(a, b) });
    std.debug.print("The division between {d} / {d} = {d}\n", .{ a, b, div(a, b) });
    std.debug.print("The Rest between {d} % {d} = {d}\n", .{ a, b, rest(a, b) });
}

pub fn sum(a: i32, b: i32) i32 {
    return a + b;
}

pub fn sub(a: i32, b: i32) i32 {
    return a - b;
}

pub fn mult(a: i32, b: i32) i32 {
    return a * b;
}

pub fn div(a: i32, b: i32) i32 {
    return @divTrunc(a, b);
}

pub fn rest(a: i32, b: i32) i32 {
    return @mod(a, b);
}
