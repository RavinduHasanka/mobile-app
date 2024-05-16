import 'package:flutter/material.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    Key? key,
    required this.colors,
    required this.onColorSelected,
  }) : super(key: key);

  final List<String> colors;
  final void Function(int index) onColorSelected;

  @override
  _ColorDotsState createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selectedColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ...List.generate(
            widget.colors.length,
                (index) => ColorDot(
              color: Color(int.parse(widget.colors[index], radix: 16)),
              isSelected: index == selectedColorIndex,
              onTap: () {
                setState(() {
                  selectedColorIndex = index;
                });
                widget.onColorSelected(index);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  final Color color;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 2),
        padding: const EdgeInsets.all(8),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: isSelected ? Colors.black : Colors.transparent,
          ),
          shape: BoxShape.circle,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
