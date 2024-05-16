import 'package:flutter/material.dart';

import '../../../constants.dart';

class LoadingContent extends StatefulWidget {
  const LoadingContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  State<LoadingContent> createState() => _LoadingContentState();
}

class _LoadingContentState extends State<LoadingContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        const Text(
          "iShop.lk",
          style: TextStyle(
            fontSize: 32,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          widget.text!,
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2),
        Image.asset(
          widget.image!,
          height: 265,
          width: 235,
        ),
      ],
    );
  }
}
