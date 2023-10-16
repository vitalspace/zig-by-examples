const std = @import("std");
const print = std.debug.print;

fn arrayNumbers() []i32 {
    var numbers: [6]i32 = undefined;
    numbers = .{1,2,3,4,5,6};
    return numbers[0..];
}
 
pub fn main () !void {
    const numbers = arrayNumbers();

    for(numbers) |number| {
        print("Current number: {d}\n", .{number});
    }
}