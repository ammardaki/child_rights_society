import 'package:flutter/material.dart';

class ActionsKd {
  final String id;
  final String title;
  final Color color;
  const ActionsKd({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });
}
