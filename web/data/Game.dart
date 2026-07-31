import 'dart:math';

class Game {
  final Player {
    var stats = Stats();
  }
}

class Stats {

}


class Intelligence {
  List<Dice> getDice() {
    return [Dice()];
  }
}

enum PrimaryStat { endurance, intelligence, speed, strength }

class Dice {
  State

  roll(Random random) {
    return random.nextInt(6);
  }
}
