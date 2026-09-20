import 'package:flutter/material.dart';

class ButtonCustomWidget extends StatelessWidget {
  VoidCallback? onPressed;
  String? label;
  Color? backgroundColor;
  bool? loading;
  ButtonCustomWidget({
    super.key,
    this.onPressed,
    this.label,
    this.backgroundColor,
    this.loading
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.cyan,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: loading == true
            ? CircularProgressIndicator(color: Colors.white)
            : Text(
                label ?? '',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
      ),
    );
  }
}
