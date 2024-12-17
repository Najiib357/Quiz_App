import 'package:flutter/material.dart';

class Sumarrydata extends StatelessWidget {
  const Sumarrydata(this.data, {super.key});
  final List<Map<String, Object>> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: data.map(
            (item) {
              return Container(
                child: Row(
                  children: [
                    Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: item['user_answer'] == item['correct_answer']
                              ? Color.fromARGB(255, 18, 221, 236)
                              : const Color.fromARGB(255, 171, 58, 183),
                        ),
                        child: Center(
                          child: Text(
                            ((item["question_index"] as int) + 1).toString(),
                          ),
                        )),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            item["question"] as String,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            item["user_answer"] as String,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 18, 221, 236)),
                          ),
                          Text(
                            item["correct_answer"] as String,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 183, 244, 14)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
