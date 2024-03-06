import 'package:flutter/material.dart';

import '../models/color_text_model.dart';

class HomeView2 extends StatefulWidget {
  const HomeView2({super.key});

  @override
  State<HomeView2> createState() => _HomeView2State();
}

class _HomeView2State extends State<HomeView2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: picks.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final pick = picks[index];
                return Container(
                  width: 60,
                  height: 60,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: pick.colors,
                    shape: BoxShape.circle,
                  ),
                  child: Center(child: Text(pick.text)),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
