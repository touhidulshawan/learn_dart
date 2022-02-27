import 'dart:io';

import 'dart:math';

enum Move { rock, paper, scissors }

void rps() {
  print("Welcome to Rock Paper Scissors Game");

  final randomNumberGenerator = Random();

  while (true) {
    // get user input
    print("Select you move (r/p/s/q): ");
    final userInput = stdin.readLineSync();

    if (userInput == "r" || userInput == "p" || userInput == "s") {
      late Move playerMove;

      if (userInput == "r") {
        playerMove = Move.rock;
      } else if (userInput == "p") {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }
      final randomNumber = randomNumberGenerator.nextInt(3);
      final computerMove = Move.values[randomNumber];
      // decide who wins
      if (playerMove == computerMove) {
        print("Computer move : $computerMove | Player move: $playerMove");
        print("It is draw!");
      } else if ((playerMove == Move.rock && computerMove == Move.paper) ||
          (playerMove == Move.scissors && computerMove == Move.rock) ||
          (playerMove == Move.paper && computerMove == Move.scissors)) {
        print("Computer move : $computerMove | Player move: $playerMove");
        print("Computer Wins!!");
      } else {
        print("Computer move : $computerMove | Player move: $playerMove");
        print("Hurrah!! You win!");
      }
    } else if (userInput == "q") {
      print("Thanks for playing Rock Paper Scissors! See you later.");
      break;
    } else {
      print("Invalid input");
    }
  }
}
