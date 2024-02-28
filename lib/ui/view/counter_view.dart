import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Spacer(),
        Center(
          child: Container(
            height: 350,
            width: 450,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 240, 230, 150),
                shape: BoxShape.circle),
            child: Center(
              child: SizedBox(
                width: 190,
                child: Column(children: [
                  const Spacer(),
                  TextField(
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    style: const TextStyle(fontSize: 20),
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        labelText: "Enter a text ",
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color.fromRGBO(255, 255, 255, 100)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    style: const TextStyle(fontSize: 20),
                    decoration: const InputDecoration(
                        labelText: "Enter a text ",
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color.fromRGBO(255, 255, 255, 100)),
                  ),
                  Spacer()
                ]),
              ),
            ),
          ),
        ),
        const Spacer()
      ],
    );
  }
}
