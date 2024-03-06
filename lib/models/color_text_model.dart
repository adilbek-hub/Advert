import 'package:flutter/material.dart';

class PickOn {
  final Color colors;
  final String text;
  final IconData icons;

  const PickOn({
    required this.colors,
    required this.text,
    required this.icons,
  });
}

PickOn taxi = const PickOn(
  colors: Colors.grey,
  text: 'Такси',
  icons: Icons.local_taxi,
);

PickOn petAnimals = const PickOn(
  colors: Colors.grey,
  text: 'Мал сатуу',
  icons: Icons.local_taxi,
);

PickOn carSell = const PickOn(
  colors: Colors.grey,
  text: 'Унаа сатуу',
  icons: Icons.local_taxi,
);

PickOn houseSell = const PickOn(
  colors: Colors.grey,
  text: 'Үй сатуу',
  icons: Icons.local_taxi,
);
PickOn propertySell = const PickOn(
  colors: Colors.grey,
  text: 'Мүлк сатуу',
  icons: Icons.local_taxi,
);

List<PickOn> picks = [
  taxi,
  petAnimals,
  carSell,
  houseSell,
  propertySell,
];
