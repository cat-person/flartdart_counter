import 'dart:math';

class Game {
  // final Player {
  //   var stats = Stats();
  // }
  List<Action> actions = ;
}

class Stats {}

abstract class Traget {

}

abstract class Action {
  abstract List<DiceRoll> price;
  abstract int effect(List<Target> target);
}


class Intelligence {
  List<Dice> getDice() {
    return [Dice()];
  }
}

enum PrimaryStatIds {
  endurance,
  intelligence,
  speed,
  strength
} // You'll be given dice

abstract class DiceProvider {
  String getId();
  List<Dice> getDice();
}

class DiceRoll {
  String statId = "meow";
  int roll = 0;
}

class Dice {
  String statId;

  roll(Random random) {
    return random.nextInt(6);
  }
}
