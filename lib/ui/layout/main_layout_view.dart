import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_with_provider/provider/provider_counter.dart';
import 'package:flutter_with_provider/screenUtils/responseWidgetUtils.dart';
import 'package:flutter_with_provider/ui/shared/navigation_menu.dart';
import 'package:provider/provider.dart';

class MainLayoutView extends StatelessWidget {
  final Widget child;

  const MainLayoutView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    log("Build the Layout Main");

    return ChangeNotifierProvider(
        create: (_) => ProviderCounter(),
        child: _method(
          child: child,
        ));
  }
}

class _method extends StatelessWidget {
  final Widget child;

  const _method({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final providerCounter = Provider.of<ProviderCounter>(context);
    var screeSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: ResponseWidget.isSmoolScreem(context)
          ? PreferredSize(
              preferredSize: const Size.fromHeight(65),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Colors
                            .black), // Borde negro en la parte inferior del AppBar
                  ),
                ),
                child: AppBar(
                    centerTitle: true,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            log("Permises");
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(10.00),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.home,
                                  color: Colors.black,
                                ), // Cambia Icons.favorite por el icono que desees
                                SizedBox(
                                    width:
                                        5), // Ajusta el espacio entre el icono y el texto según sea necesario
                                Text(
                                  "PERMISES",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontFamily: AutofillHints.countryCode,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
              ))
          : PreferredSize(
              preferredSize: Size(screeSize.width, 70),
              child: const NavigationMenu()),
      drawer: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
                color: Colors.black), // Agrega un borde inferior negro
          ),
        ),
        child: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DrawerHeader(child: Center(child: Text("Mi perfil"))),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: TextButton(
                            onPressed: () {
                              if (!providerCounter.isSucceful) {
                                log("messsage true");
                                providerCounter.showBox();
                              } else {
                                log("message flase");
                                providerCounter.closeBox();
                              }
                            },
                            style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(const Size(50, 70)),
                            ),
                            child: const Row(children: [
                              Icon(Icons.home),
                              Center(
                                child: Text(
                                  " Hola  1",
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 40)),
                                ),
                              ),
                            ]))),
                  ),
                  if (providerCounter.isSucceful)
                    Container(
                      width: double.infinity,
                      color: Color.fromARGB(255, 216, 5, 5),
                      padding: EdgeInsets.all(16),
                      child: Text('Contenido de la caja expandida'),
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: TextButton(
                            onPressed: () {
                              log("Permises");
                            },
                            style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(const Size(50, 70)),
                            ),
                            child: const Row(children: [
                              Icon(Icons.home),
                              Center(
                                child: Text(
                                  " Hola ",
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 40)),
                                ),
                              ),
                            ]))),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: TextButton(
                            onPressed: () {
                              log("Permises");
                            },
                            style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(const Size(50, 70)),
                            ),
                            child: const Row(children: [
                              Icon(Icons.home),
                              Center(
                                child: Text(
                                  " Hola ",
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 40)),
                                ),
                              ),
                            ]))),
                  )
                ],
              )
            ],
          ),
        ),
        //, Column(
        //  children: [
        //    DrawerHeader(child: Center(child: Text("Mi perfil"))),
        //  ],
        //),
      ),
      // drawer: const Drawer(
      //   child: Column(
      //     children: [
      //       DrawerHeader(child: Center(child: Text("Mi perfil"))),
      //     ],
      //   ),
      // ),
      body: child,
    );
  }
}
