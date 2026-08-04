import 'dart:math';

abstract class Action {
  int perform(List<DiceRoll> price, List<Target> target);
  int isValid(List<Target> targets);
  List<Event> apply(List<Target> targets);
}

abstract class Target {}

abstract class Event {}
