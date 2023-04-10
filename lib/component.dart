import 'package:flutter/material.dart';

class Participants extends StatelessWidget {
  final String img;
  const Participants({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 90,
                width: 90,
                decoration: const BoxDecoration(
                    // border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Image.asset(
                  'lib/images/$img.jpeg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Positioned(
                right: 3,
                top: 5,
                child: Icon(
                  Icons.mic_off,
                  color: Colors.white,
                ))
          ],
        ),
        const SizedBox(
          width: 5,
        )
      ],
    );
  }
}
