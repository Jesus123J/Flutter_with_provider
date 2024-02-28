import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EntitiesView extends StatelessWidget {
  const EntitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey[100], // Color del contenedor
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Wrap(
                  spacing: 35.0,
                  runSpacing: 35.0,
                  children: [
                    Container(
                      height: 250.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        color: Colors.red, // Color del contenedor
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Container(),
                      ),
                    ),
                    Container(
                      height: 250.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        color: Colors.green, // Color del contenedor
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Center(
                          child: Container(),
                        ),
                      ),
                    ),
                    Container(
                      height: 250.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        color: Colors.blue, // Color del contenedor
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Center(
                          child: Container(),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Colors.black), // Agrega un borde inferior negro
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //! separate
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    DataTable(
                      columns: const <DataColumn>[
                        DataColumn(
                          label: Text('Nombre'),
                        ),
                        DataColumn(
                          label: Text('Edad'),
                        ),
                      ],
                      rows: const <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('Juan')),
                            DataCell(Text('30')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('María')),
                            DataCell(Text('25')),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    DataTable(
                      headingRowColor: MaterialStateColor.resolveWith(
                          (states) => Color.fromARGB(240, 240, 240, 8)),
                      dataRowColor: MaterialStateColor.resolveWith(
                          (states) => Color.fromRGBO(255, 240, 250, 1)),
                      border:
                          TableBorder(borderRadius: BorderRadius.circular(8)),
                      columns: const <DataColumn>[
                        DataColumn(
                          label: Text('Pepe'),
                        ),
                        DataColumn(
                          label: Text('Loca'),
                        ),
                      ],
                      rows: const <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('Juan')),
                            DataCell(Text('30')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('María')),
                            DataCell(Text('25')),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              )
              //! saprate
            ],
          ),
        ),
      ),
    );
  }
}
