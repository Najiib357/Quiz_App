import 'package:flutter/material.dart';

class Questionquiz {
  const Questionquiz(
    this.text,
    this.answer,
  );
  final String text;
  final List<String> answer;
  List<String> getshafule() {
    final shuffuledList = List.of(answer);
    shuffuledList.shuffle();
    return shuffuledList;
  }
}
