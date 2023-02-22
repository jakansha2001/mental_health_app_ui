import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        15.0,
      ),
      decoration: BoxDecoration(
          color: Colors.blue[600],
          borderRadius: const BorderRadius.all(Radius.circular(
            12.0,
          ))),
      child: const Icon(
        Icons.notifications,
        size: 28.0,
        color: Colors.white,
      ),
    );
  }
}
