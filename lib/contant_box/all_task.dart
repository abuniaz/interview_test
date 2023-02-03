import 'package:flutter/material.dart';

class TaskContent extends StatelessWidget {
  const TaskContent({
    Key? key,
    required this.title,
    required this.text,
    required this.pic,
  }) : super(key: key);

  final String title;
  final String text;
  final String pic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
      child: Card(
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Image.asset(pic),
              Column(
                children: [Text(title), Text(text)],
              )
            ],
          ),
        ),
      ),
    );
  }
}
