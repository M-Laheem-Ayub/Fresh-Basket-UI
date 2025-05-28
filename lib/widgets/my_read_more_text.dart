import 'package:flutter/material.dart';

class MyReadMoreText extends StatefulWidget {
  final String text;
  final Function onToggle;
  bool isExpanded;
  MyReadMoreText({
    super.key,
    required this.text,
    required this.onToggle,
    required this.isExpanded,
  });

  @override
  State<MyReadMoreText> createState() => _MyReadMoreTextState();
}

class _MyReadMoreTextState extends State<MyReadMoreText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          maxLines: widget.isExpanded ? null : 4,
          overflow:
              widget.isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 13, color: Colors.black87),
        ),
        InkWell(
          onTap: () {
            widget.onToggle();
          },
          child: Text(
            widget.isExpanded ? "Read Less" : "Read More",
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Color(0xfff6b33e),
            ),
          ),
        ),
      ],
    );
  }
}
