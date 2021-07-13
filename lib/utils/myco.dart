import 'package:flutter/material.dart';

class mycon extends StatelessWidget {
  final Color color;
  Widget child;
  var function;
  mycon(
      {Key? key, this.color = Colors.white, required this.child, this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        child: child,
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
