import 'package:flutter/material.dart';
import 'package:flutter_than_life/core/ship.dart';
import 'package:flutter_than_life/systems/systems.dart';

class Control extends StatefulWidget {
  const Control(this.ship, {super.key});

  final Ship ship;

  @override
  State<Control> createState() => _ControlState();
}

class _ControlState extends State<Control> {
  @override
  Widget build(BuildContext context) {
    // A control panel to control energy level like in the game FTL
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          //display energy like in ftl
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              for (int i = widget.ship.maxEnergy - 1; i >= 0; i--)
                Container(
                  margin: const EdgeInsets.all(1),
                  width: 40,
                  height: 10,
                  decoration: BoxDecoration(
                    //round the corners
                    borderRadius: BorderRadius.circular(4),
                    color: i < widget.ship.availableEnergy
                        ? Colors.green
                        : Colors.black,
                    border: Border.all(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              const SizedBox(
                width: 40,
                height: 20,
              )
            ],
          ),
          //display shield like in ftl
          for (int i = 0; i < widget.ship.systems.length; i++)
            SystemControl(system: widget.ship.systems[i]),
        ],
      ),
    );
  }
}

class SystemControl extends StatelessWidget {
  const SystemControl({
    super.key,
    required this.system,
  });

  final System system;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Icon(Icons.arrow_drop_up),
        if (system.manned) const Icon(Icons.person),
        for (int i = 0; i < system.max; i++)
          Container(
            margin: const EdgeInsets.all(1),
            width: 40,
            height: 10,
            decoration: BoxDecoration(
              //round the corners
              borderRadius: BorderRadius.circular(4),
              color: i < system.allocated ? Colors.green : Colors.black,
              border: Border.all(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
        Icon(system.icon),
      ],
    );
  }
}
