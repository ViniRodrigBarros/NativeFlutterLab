import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final double width;
  final Color? color;
  final String bigTitle;
  final VoidCallback onTap;
  final String desc;
  final IconData icon;
  final Color? borderColor;
  const HomeButton(
      {super.key,
      required this.width,
      this.color,
      required this.desc,
      required this.onTap,
      required this.bigTitle,
      required this.icon,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: 90,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: borderColor ?? const Color.fromARGB(33, 0, 0, 0),
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
          color: color,
          borderRadius: BorderRadius.circular(8), // Circular border radius
          border: Border.all(
              color: borderColor ?? const Color.fromARGB(62, 30, 30, 30),
              width: 1), // Example border color and width
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                bigTitle,
                style:
                    const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 2,
              ),
              Icon(
                icon,
                size: 28,
                color: borderColor ?? Colors.black,
              ),
              Row(children: [
                Text(
                  desc,
                  style: const TextStyle(
                      fontSize: 11, fontWeight: FontWeight.w300),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
