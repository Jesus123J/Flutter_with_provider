import 'package:flutter/material.dart';
import 'package:flutter_with_provider/routers/routers.dart';
import 'package:flutter_with_provider/ui/shared/button_custom.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          bottom:
              BorderSide(color: Colors.black), // Agrega un borde inferior negro
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          ButtonCustom(
              iconText: Icons.home,
              text: "INICIO",
              onpress: () => Navigator.pushNamed(context, Routers.home)),
          const SizedBox(width: 10),
          ButtonCustom(
              iconText: Icons.home,
              text: "COUNTER",
              onpress: () => Navigator.pushNamed(context, Routers.counter)),
          const SizedBox(width: 10),
          ButtonCustom(
              iconText: Icons.home_work_outlined,
              text: "ENTIDADES",
              onpress: () => Navigator.pushNamed(context, Routers.entidades)),
          const SizedBox(width: 10),
          ButtonCustom(
              iconText: Icons.person_outline_outlined,
              text: "MI PERFIL",
              onpress: () => Navigator.pushNamed(context, Routers.perfil)),
          const SizedBox(width: 10),
          ButtonCustom(
              iconText: Icons.home_filled,
              text: "ANUNCIO",
              onpress: () => Navigator.pushNamed(context, Routers.anuncio)),
          const SizedBox(width: 10),
          ButtonCustom(
              iconText: Icons.settings,
              text: "CONFIGURACIÓN",
              onpress: () =>
                  Navigator.pushNamed(context, Routers.configuracion))
        ],
      ),
    );
  }
}
