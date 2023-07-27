import 'package:flutter/material.dart';

class System {
  int max;
  int allocated;
  IconData icon;
  bool manned;

  System(this.max, this.allocated, this.icon, {this.manned = false});
}

class Shield extends System {
  Shield({int max = 2, int allocated = 0})
      : super(max, allocated, Icons.shield, manned: true);
}

class Weapon extends System {
  Weapon({int max = 4, int allocated = 0})
      : super(max, allocated, Icons.king_bed, manned: true);
}

class Engine extends System {
  Engine({int max = 2, int allocated = 2})
      : super(max, allocated, Icons.settings, manned: true);
}

class Oxygen extends System {
  Oxygen({int max = 2, int allocated = 2}) : super(max, allocated, Icons.air);
}

class Medbay extends System {
  Medbay({int max = 2, int allocated = 2})
      : super(max, allocated, Icons.medical_services);
}

class CloneBay extends System {
  CloneBay({int max = 2, int allocated = 2})
      : super(max, allocated, Icons.medical_information);
}

class DroneControl extends System {
  DroneControl({int max = 2, int allocated = 2})
      : super(max, allocated, Icons.airplanemode_active);
}

class Cloaking extends System {
  Cloaking({int max = 2, int allocated = 2})
      : super(max, allocated, Icons.airplanemode_active);
}

class Teleporter extends System {
  Teleporter({int max = 2, int allocated = 2})
      : super(max, allocated, Icons.airplanemode_active);
}

class Sensors extends System {
  Sensors({int max = 2, int allocated = 2})
      : super(max, allocated, Icons.airplanemode_active);
}

class Doors extends System {
  Doors({int max = 2, int allocated = 2})
      : super(max, allocated, Icons.door_back_door);
}

class Piloting extends System {
  Piloting({int max = 2, int allocated = 2})
      : super(max, allocated, Icons.airplanemode_active, manned: true);
}

class Hacking extends System {
  Hacking({int max = 2, int allocated = 2})
      : super(max, allocated, Icons.percent);
}
