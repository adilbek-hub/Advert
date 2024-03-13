import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TaxiScreen extends StatelessWidget {
  const TaxiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Taxi'),
      ),
      body: Column(
        children: [
          Text(
            'ЧАЕКТЕН БИШКЕККЕ КЕТҮҮЧҮ ТАКСИЛЕР',
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.grey,
                  margin: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  elevation: 8.0,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      Image.network(
                        'https://sputnik.kg/img/07e7/09/19/1078906376_0:67:1278:786_1920x0_80_0_0_5767cd6c8703a5fe11ca9ec43c828e46.jpg',
                        height: 120,
                      ),
                      Text(
                        'This is a beautiful card!',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Text('БИШКЕКТЕН ЧАЕККЕ КЕТҮҮЧҮ ТАКСИЛЕР'),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 300,
                  child: Card(
                    color: Color(0xff171e67),
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    elevation: 8.0,
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        Image.network(
                          'https://sputnik.kg/img/07e7/09/19/1078906376_0:67:1278:786_1920x0_80_0_0_5767cd6c8703a5fe11ca9ec43c828e46.jpg',
                          height: 100,
                        ),
                        Text(
                          'Бүгүн саат 11:00до Бишкеке жолго чыгам. Баасы 600 сом.',
                          style: TextStyle(
                            color: Colors.white,
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
            ),
          ),
        ],
      ),
    );
  }
}
