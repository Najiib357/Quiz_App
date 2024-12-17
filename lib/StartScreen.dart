import 'package:flutter/material.dart';

class Startscreen extends StatefulWidget {
  Startscreen({super.key, required this.startQiuz});
  final void Function() startQiuz;

  @override
  State<Startscreen> createState() => _StartscreenState();
}

class _StartscreenState extends State<Startscreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(
          image: AssetImage("images/logo.png"),
          width: 300,
          color: const Color.fromARGB(152, 255, 255, 255),
        ),
        SizedBox(
          height: 18,
        ),
        Text(
          "Learn flutter in fun way!",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 22,
        ),
        ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(91, 104, 58, 183)),
            onPressed: widget.startQiuz,
            icon: Icon(Icons.arrow_forward_outlined),
            label: Text("Start Qiuz"))
      ],
    );
  }
}
