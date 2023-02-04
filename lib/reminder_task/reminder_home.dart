import 'package:flutter/material.dart';

class ReminderTaskContant extends StatelessWidget {
  const ReminderTaskContant({
    Key? key,
    required this.pic,
    required this.title,
    required this.text,
  }) : super(key: key);
  final String pic;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        height: 105,
        width: 170,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                pic,
                height: 50,
                width: 50,
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                text,
                style: const TextStyle(color: Colors.black26, fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
