import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TaxiScreen extends StatelessWidget {
  const TaxiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(height: 20),
          Text(
            'ЧАЕКТЕН БИШКЕККЕ КЕТҮҮЧҮ ТАКСИЛЕР',
          ),
          SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            height: 350,
            child: ChaekBishkekScroll(),
          ),
          SizedBox(height: 10),
          Text('БИШКЕКТЕН ЧАЕККЕ КЕТҮҮЧҮ ТАКСИЛЕР'),
          SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: ChaekBishkekScroll(),
          ),
          SizedBox(height: 10),
          Text('ЧАЕК ИЧИНДЕ ЖҮРҮҮЧҮ ТАКСИЛЕР'),
          SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: ChaekBishkekScroll(),
          ),
          SizedBox(height: 10),
          Text('ЖУМГАЛ РАЙОНУ ИЧИНДЕ ЖҮРҮҮЧҮ ТАКСИЛЕР'),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: ChaekBishkekScroll(),
          ),
        ],
      ),
    ));
  }
}

class ChaekBishkekScroll extends StatelessWidget {
  const ChaekBishkekScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Stack(
          fit: StackFit.loose,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          children: [
            SizedBox(
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 170, 244, 218),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  clipBehavior: Clip.antiAlias,
                ),
              ),
            ),
            const Positioned(
              top: -0,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    'https://sputnik.kg/img/07e7/09/19/1078906376_0:67:1278:786_1920x0_80_0_0_5767cd6c8703a5fe11ca9ec43c828e46.jpg'),
              ),
            ),
            const Positioned(
              left: 150,
              top: 50,
              child: Text(
                'Тайота Camry',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto-Black',
                ),
              ),
            ),
            const Positioned(
              left: 23,
              top: 140,
              child: Text(
                'Бүгүн Бишкекке 3 орун бар, ала кетем.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto-Black',
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
