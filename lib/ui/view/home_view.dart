import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  // Components for body

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: AspectRatio(
                aspectRatio: 2,
                child: Container(
                  color: Colors.blue,
                  child: const Center(child: Text('Hola Mundo')),
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.deepPurple[300],
                    height: 120,
                    child: const SizedBox(
                        height: 10, width: 20, child: Text(" Components")),
                  ),
                );
              },
            ))
          ]),
        ),
        Container(
          width: 200,
          color: Colors.deepPurple[300],
        )
      ],
    );
  }
}
