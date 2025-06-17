/*
* Created by Neloy on 17 June, 2025.
* Email: taufiqneloy.swe@gmail.com
*/

class Ticker {
  const Ticker();

  Stream<int> tick({required int ticks}) {
    return Stream.periodic(
      const Duration(seconds: 1),
      (x) => ticks - x - 1,
    ).take(ticks);
  }
}
