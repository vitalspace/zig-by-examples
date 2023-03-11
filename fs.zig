const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    try createFile("./example.txt", "Hello world");
}

pub fn createFile(name: []const u8, content: []const u8) !void {
    const file = try std.fs.cwd().createFile(name, .{ .read = true });
    defer file.close();
    try file.writeAll(content);
    print("{s} was created.\n", .{name});
}
