import 'package:flutter/material.dart';

import '../pages/birthdays.dart';
import '../pages/reminders.dart';
import '../pages/gratitude.dart';

class MenuListTileWidget extends StatelessWidget {
  const MenuListTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.cake),
          title: const Text('Birthdays'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Birthdays(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.sentiment_satisfied),
          title: const Text('Gratitude'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Gratitude(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.access_alarm),
          title: const Text('Reminders'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Reminders(),
              ),
            );
          },
        ),
        const Divider(color: Colors.grey),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Setting'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
