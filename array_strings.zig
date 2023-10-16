const std = @import("std");
const print = std.debug.print;

fn arrayStrings() [][]const u8 {
    var names: [4][]const u8 = undefined;
    names = .{"lucas", "sam", "antonio", "victoria"};
    return names[0..];
}

pub fn main() !void {
    const names = arrayStrings();

    for(names)|name| {
        print("Hello welcome: {s}\n", .{name});
    }
}