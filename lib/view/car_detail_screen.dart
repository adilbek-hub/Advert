import 'package:flutter/material.dart';

class CarDetailScreen extends StatelessWidget {
  const CarDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff282b30),
        body: Column(
          children: [
            Center(
              child: Text(
                'BMW',
                style: TextStyle(
                  color: Color.fromARGB(255, 223, 127, 127),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                'X5',
                style: TextStyle(
                  color: Color.fromARGB(255, 249, 246, 246),
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Image.network(
              'https://car-images.bauersecure.com/wp-images/164826/best_electric_luxury_car_bmw_i7.jpg',
              fit: BoxFit.cover,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Статус',
                    style: TextStyle(
                      color: Color.fromARGB(255, 249, 246, 246),
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.oil_barrel_outlined,
                      color: Color.fromARGB(255, 223, 127, 127),
                    ),
                    Text(
                      'Бензин',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 223, 127, 127),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.oil_barrel_outlined,
                          color: Color.fromARGB(255, 223, 127, 127),
                        ),
                        Text(
                          'Бензин',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 223, 127, 127),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.oil_barrel_outlined,
                          color: Color.fromARGB(255, 223, 127, 127),
                        ),
                        Text(
                          'Бензин',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 223, 127, 127),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
