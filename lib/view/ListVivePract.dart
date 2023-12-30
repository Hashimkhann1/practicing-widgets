import 'package:flutter/material.dart';

class ListViewPract extends StatelessWidget {
  const ListViewPract({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List Viev"),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text("User $index"),
                ),
              );
            },
          ),
        ));
  }
}
