import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final Function onpress;
  final String text;
  final IconData iconText;
  final Color color;

  const ButtonCustom(
      {super.key,
      required this.iconText,
      required this.text,
      required this.onpress,
      this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(foregroundColor: color),
      onPressed: () => onpress(),
      child: Padding(
        padding: const EdgeInsets.all(10.00),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(iconText), // Cambia Icons.favorite por el icono que desees
            const SizedBox(
                width:
                    2), // Ajusta el espacio entre el icono y el texto según sea necesario
            Text(text),
          ],
        ),
      ),
    );
  }
}
