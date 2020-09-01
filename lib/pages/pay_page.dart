import 'package:flutter/material.dart';

class PayPage extends StatefulWidget {
  @override
  _PayPageState createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  List<Map<String, dynamic>> items = [
    {
      'title': 'Կոմունալ Վճարումներ',
      'icon': Icons.lightbulb_outline
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {},
        separatorBuilder: (context, index) {},
        itemCount: 5);
  }
}
