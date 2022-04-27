use fmt;

export fn main() void = {
  fmt::println("Hello, world! In different languages (from hare).")!;

  const greetings = [
    "Hello, world!",
    "¡Hola, mundo!",
    "Bonjour, monde!",
    "Γειά σου Κόσμε!",
    "Привет, мир!",
    "こんにちは世界！",
  ];

  for (let i = 0z; i < len(greetings); i += 1) {
    fmt::println(greetings[i])!;
  };
};