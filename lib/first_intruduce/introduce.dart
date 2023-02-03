import 'package:flutter/material.dart';

class Introduce extends StatelessWidget {
  const Introduce({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          // color: Colors.white70,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Hi, Habib👋',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Let's explore your notes",
                style: TextStyle(
                    color: Color.fromARGB(255, 170, 170, 170), fontSize: 12),
              )
            ],
          ),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("images/n.png"), fit: BoxFit.cover),
          ),
        )
      ],
    );
  }
}
