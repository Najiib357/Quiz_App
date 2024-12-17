import 'package:flutter/material.dart';

class Elevatedbutton1 extends StatelessWidget {
  const Elevatedbutton1({super.key, required this.anwer, required this.ontap});
  final anwer;
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            foregroundColor: Colors.white,
            backgroundColor: Color.fromARGB(213, 16, 2, 40)),
        child: Text(
          anwer,
          textAlign: TextAlign.center,
        ));
  }
}
