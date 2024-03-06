import 'package:advertt/add_product/add_product.dart';
import 'package:advertt/models/information.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  Stream<QuerySnapshot> readTodo() {
    final db = FirebaseFirestore.instance;
    return db.collection('products').snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: readTodo(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CupertinoActivityIndicator(
              radius: 25,
            ));
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else if (snapshot.hasData) {
            ListView.builder(itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                child: Text(index.toString()),
              );
            });
            final List<Information> product = snapshot.data!.docs
                .map((e) =>
                    Information.fromMap(e.data() as Map<String, dynamic>))
                .toList();
            return ListView.builder(
                itemCount: product.length,
                itemBuilder: (context, index) {
                  final products = product[index];
                  return Card(
                    child: Column(
                      children: [
                        products.image != null
                            ? SizedBox(
                                height: 180,
                                child: PageView.builder(
                                    itemCount: products.image!.length,
                                    itemBuilder: (context, index) {
                                      final images = products.image![index];
                                      return Image.network(images);
                                    }),
                              )
                            : const SizedBox(),
                        const SizedBox(height: 30),
                        ListTile(
                          title: Text(products.title),
                          leading: Text(products.description),
                          subtitle: Text(products.dateTime),
                          trailing: Text(products.address),
                        )
                      ],
                    ),
                  );
                });
          } else {
            return const Text('Белгисиз ката бар');
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddProduct()),
          );
        },
        child: const Icon(Icons.publish),
      ),
    );
  }
}
