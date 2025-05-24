import 'package:flutter/material.dart';
import 'package:fresh_basket/my_text.dart';

class RememberMeCheckBox extends StatelessWidget {
  const RememberMeCheckBox({
    super.key,
    required this.isChecked,
    required this.changeCheckedStatus,
  });
  final bool isChecked;
  final Function changeCheckedStatus;
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-14.5, 0),
      child: Row(
        children: [
          Transform.scale(
            scale: 0.9,
            child: Checkbox(
              value: isChecked,
              onChanged: (value) {
                changeCheckedStatus();
              },
              activeColor: Color(0xfff6b33e),
              checkColor: Colors.white,
              side: BorderSide(color: Color(0xfff6b33e)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-3, 1),
            child: MyText(
              text: "Remember me",
              fWeight: FontWeight.bold,
              color: Color(0xfff6b33e),
            ),
          ),
        ],
      ),
    );
  }
}
