use fmt;
use io;
use os;
use strings;

export fn main() void = {
  // Example A
  const source = os::open("const-let.ha")!;
  const source = io::drain(source)!;
  const source = strings::fromutf8(source);
  const source = strings::split(source, "\n");
  first3(source);

  // Example B
  let i: int = 1337, j: int = 42;
  fmt::printfln("{} + {} = {}", i, j, i + j)!;
  j = i;
  fmt::printfln("{} + {} = {}", i, j, i + j)!;
};

fn first3(lines: []str) void = {
  fmt::println("The first three lines of main.ha are:")!;
  fmt::println(lines[0])!;
  fmt::println(lines[1])!;
  fmt::println(lines[2])!;
};