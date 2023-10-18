const std = @import("std");
const print = std.debug.print;

var gpa = std.heap.GeneralPurposeAllocator(.{}){};
const allocator = gpa.allocator();

fn getArrayOfNumbers(n: usize) ![]usize {
  var result = try allocator.alloc(usize, n);
  
  var i : usize = 0;
  while(i < n) ( i += 1) {
    result[i] = i + 1;
  }

  return result;
}

pub fn main () anyerror!void {
  const numbers = try getArrayOfNumbers(100);
  defer allocator.free(numbers);

  for(numbers) | n | {
    print("{d}\n", .{n});
  }
}