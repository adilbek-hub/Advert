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
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 350,
              child: ChaekBishkekScroll(),
            ),
            SizedBox(height: 20),
            Text(
              'БИШКЕКТЕН ЧАЕККЕ КЕТҮҮЧҮ ТАКСИЛЕР',
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 350,
              child: ChaekBishkekScroll(),
            ),
            SizedBox(height: 20),
            Text(
              'ЖУМГАЛ РАЙОНУНУН ИЧИНДЕ ЖҮРҮҮЧҮ ТАКСИЛЕР',
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 350,
              child: ChaekBishkekScroll(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Жарыя берүү 0999 29-12-10',
          ),
        ],
      ),
    );
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
                    color: Color.fromARGB(255, 171, 249, 211),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 100),
                          Text(
                            'Toyota Camry унаасы Бишкек шаарына чыгат.ksljjflsdfjl dsfjkldsfkjndsfjdfj dfksdfpewfd podfejlsa/ajsgjdg pkwefpdvlsdj dfglkjdlfgdfg efglkjdf.',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'OpenSans',
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '10.10.24. 11:00',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'OpenSans',
                                ),
                              ),
                              Text(
                                'Тел: 0500202020',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'OpenSans',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
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
              top: 50,
              right: 50,
              child: Text(
                'Toyota Camry',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'OpenSans',
                ),
              ),
            ),
            const Positioned(
              top: 80,
              right: 50,
              child: Text(
                'Чаек-Бишкек',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'OpenSans',
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
