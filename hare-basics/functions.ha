use bufio;
use fmt;
use os;
use strings;

export fn main() void = {
  const user = askname();
  greet(user);
};

// Asks the user to provide their name.
fn askname() str = {
  fmt::println("Welcome! Please enter your name:")!;
  const name = bufio::scanline(os::stdin)! as []u8;
  return strings::fromutf8(name);
};

// Greets a user by name.
fn greet(user: str) void = {
  fmt::printfln("Hello, {}!", user)!;
};