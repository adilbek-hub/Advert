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
          SizedBox(height: 10),
          Text(
            'ЧАЕКТЕН БИШКЕККЕ КЕТҮҮЧҮ ТАКСИЛЕР',
          ),
          SizedBox(
            width: double.infinity,
            height: 350,
            child: ChaekBishkekScroll(),
          ),
          SizedBox(height: 10),
          Text('БИШКЕКТЕН ЧАЕККЕ КЕТҮҮЧҮ ТАКСИЛЕР'),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: ChaekBishkekScroll(),
          ),
          SizedBox(height: 10),
          Text('ЧАЕК ИЧИНДЕ ЖҮРҮҮЧҮ ТАКСИЛЕР'),
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
        return SizedBox(
          width: 300,
          child: Card(
            color: const Color.fromARGB(255, 170, 244, 218),
            margin: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation: 8.0,
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.network(
                    'https://sputnik.kg/img/07e7/09/19/1078906376_0:67:1278:786_1920x0_80_0_0_5767cd6c8703a5fe11ca9ec43c828e46.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const Text(
                  'Бүгүн саат 11:00до Бишкеке жолго чыгам. Баасы 600 сом.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto-Black',
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
