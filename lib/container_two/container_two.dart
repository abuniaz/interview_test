import 'package:flutter/material.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color.fromARGB(123, 8, 95, 85),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              width: 0.5, color: Color.fromARGB(255, 143, 140, 140))),
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15, bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome to TickTick Task",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'your one-stop for task management. Simplify, \ntrack, and accomplish task eith ease.',
              style: TextStyle(
                  color: Color.fromARGB(255, 170, 170, 170), fontSize: 12),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 35,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 1, color: Colors.white)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        ),
                        Text(
                          'Watch Video',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: 180 / 4,
                  child: Image.asset(
                    'images/todo.jpg',
                    height: 50,
                    width: 80,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
