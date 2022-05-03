use fmt;

type coords = struct { x: int, y: int };

export fn main() void = {
  let player1 = struct { x: int = 10, y: int = 20 }; // un-named struct
  let player2 = coords { y = 10, x = 20 };
  let player3: (int, int) = (42, 24); // tuple type

  fmt::printfln("Player 1: ({}, {})", player1.x, player1.y)!;
  fmt::printfln("Player 2: ({}, {})", player2.x, player2.y)!;
  fmt::printfln("Player 3: ({}, {})", player3.0, player3.1)!;
};
