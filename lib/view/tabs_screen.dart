import 'package:advertt/view/animal_sell_screen.dart';
import 'package:advertt/view/taxi_screen.dart';
import 'package:advertt/view/car_sell_screen.dart';
import 'package:flutter/material.dart';

import '../models/color_text_model.dart';

class HomeView2 extends StatefulWidget {
  const HomeView2({super.key});

  @override
  State<HomeView2> createState() => _HomeView2State();
}

class _HomeView2State extends State<HomeView2> {
  final List<Widget> _tabs = [
    const TaxiScreen(),
    const AnimalSellScreen(),
    const CarSellScreen(),
    const CarSellScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: _tabs.length,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  icon: Icon(Icons.local_taxi),
                  text: 'Такси',
                ),
                Tab(
                  icon: Icon(Icons.pets),
                  text: 'Мал сатуу',
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: 'Машина сатуу',
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: 'Мүлк сатуу',
                ),
              ],
            ),
          ),
          body: TabBarView(children: _tabs),
        ),
      ),
    );
  }
}
