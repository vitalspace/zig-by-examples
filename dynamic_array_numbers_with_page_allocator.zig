const std = @import("std");

const allocator = std.heap.page_allocator;

fn getArrayOfNumbers(n: usize) ![]usize {
  var result = try allocator.alloc(usize, n);

  var i: usize = 0;
  while (i < n) : (i += 1) {
    result[i] = i + 1;
  }

  return result;
}

pub fn main() !void {
  const numbers = try getArrayOfNumbers(100);
  defer allocator.free(numbers);

  for (numbers) |n| {
    std.debug.print("{d} \n", .{n}); 
  }
}