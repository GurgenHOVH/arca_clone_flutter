import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PayPage extends StatefulWidget {
  @override
  _PayPageState createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  List<Map<String, dynamic>> items = [
    {'title': 'Հեռախոսակապ', 'icon': Icons.phone_android},
    {'title': 'Կոմունալ Վճարումներ', 'icon': Icons.lightbulb_outline},
    {'title': 'Դոմոֆոն', 'icon': Icons.live_tv},
    {'title': 'Ինտերնետր', 'icon': Icons.router},
    {'title': 'TP TV', 'icon': Icons.tv},
    {'title': 'Ճո տուգանքներ', 'icon': Icons.directions_car},
    {'title': 'Ավտոկայանատեղ', 'icon': Icons.local_parking},
    {'title': 'Գույքահարկ', 'icon': Icons.money_off},
    {'title': 'Պետ․ ճառայություններ', 'icon': Icons.view_list},
    {'title': 'Այլ ճառայություններ', 'icon': Icons.view_list},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(15),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Icon(
                      items[index]['icon'],
                      color: Color(0xff10A1E7),
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      items[index]['title'],
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: items.length,
          ),
        ),
        Container(
          height: 80,
          width: double.infinity,
          color: Color(0xff10A1E7),
          child: Center(
            child: Card(
                child: Padding(
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.settings_overscan,
                    size: 50,
                    color: Color(0xffF39122),
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Սկանավորել եւ վճարել'.toUpperCase(),
                    style: TextStyle(color: Color(0xff10A1E7), fontSize: 16),
                  )
                ],
              ),
            )),
          ),
        )
      ],
    );
  }
}
