import 'package:flutter_than_life/systems/systems.dart';

class Ship {
  int fuel;
  int missiles;
  int droneParts;

  int maxEnergy;
  int availableEnergy;

  int scrap;

  List<System> systems = [];

  Ship({
    this.fuel = 0,
    this.missiles = 0,
    this.droneParts = 0,
    this.maxEnergy = 8,
    this.availableEnergy = 4,
    this.scrap = 0,
  });
}
