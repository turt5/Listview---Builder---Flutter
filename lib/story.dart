import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({super.key, required this.child, required this.dp});
  final String dp;
  final String child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: CupertinoColors.white,
              shape: BoxShape.circle,
            border: Border.all(
              color: Colors.green,
              width: 3
            )
          ),
          child: Container(
            margin: const EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage:  AssetImage(dp),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            child,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: CupertinoColors.black,
            ),
          ),
        )
      ],
    );
  }
}
