import 'package:advertt/view/car_detail_screen.dart';
import 'package:flutter/material.dart';

class PropertiesScreen extends StatelessWidget {
  const PropertiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Үй-жер-мүлк сатуу'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2 / 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
          ),
          primary: false,
          shrinkWrap: true,
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://www.trulia.com/pictures/thumbs_5/zillowstatic/fp/b214da2f201d0e37bc75898b1c8230b6-full.jpg',
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Кызыл-Жылдыз айылында үй сатылат',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Ээсинин аты Самаган',
                          style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Толук маалымат'),
                        ),
                      ],
                    ))
              ],
            );
          },
        ),
      ),
    );
  }
}
