import 'package:advertt/view/car_detail_screen.dart';
import 'package:flutter/material.dart';

class CarSellScreen extends StatelessWidget {
  const CarSellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Машина базары'),
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
                          'https://car-images.bauersecure.com/wp-images/164826/best_electric_luxury_car_bmw_i7.jpg',
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Мин-Куш айылында BMW сатылат',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Ээсинин аты Бакыт',
                          style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CarDetailScreen(),
                            ),
                          ),
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
