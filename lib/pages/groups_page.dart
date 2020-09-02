import 'package:flutter/material.dart';

class GroupsPage extends StatefulWidget {
  @override
  _GroupsPageState createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Scaffold(
        backgroundColor: Color(0xffF6F7F9),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff1573CB),
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: body(),
      ),
    );
  }

  Widget body() {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    hintText: 'Որոնում',
                    hintStyle: TextStyle(color: Color(0xffD4D4D4)),
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color(0xffD4D4D4),
                    ))),
            Padding(
              padding: const EdgeInsets.all(45),
              child: Text(
                'Ավելացված խմբեր չկան։ Կարող եք կազմել խմբեր ստեղծված էջանիշնեից և կարգավորել դրանք՝ փոփոխել և հեռացնել։ Խումբը հեռացնելու դեպքում էջանիշները չեն հեռացվում։ Ավելացնելու համար սեղմեք + կոճաակը',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff949494), fontSize: 16),
              ),
            ),
            Container(
              height: 155,
              width: 155,
              padding: EdgeInsets.zero,
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(Icons.folder,
                          size: 130, color: Color(0xff0F57AB))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.folder_open,
                          size: 130, color: Color(0xff0F57AB))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
