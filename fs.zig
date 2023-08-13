const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    try createFile("./example.txt", "Hello world");
    try openFile("./example.txt");
}

pub fn createFile(fileName: []const u8, content: []const u8) !void {
    const file = try std.fs.cwd().createFile(fileName, .{ .read = true });
    defer file.close();
    try file.writeAll(content);
    print("{s} was created.\n", .{fileName});
}

pub fn openFile(fileName: []const u8) !void {
    const content = try std.fs.cwd().readFileAlloc(std.heap.page_allocator, fileName, std.math.maxInt(usize));
    print("{s}", .{content});
}
