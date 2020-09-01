import 'package:arca/models/card_details.dart';
import 'package:arca/pages/cards_page.dart';
import 'package:arca/pages/pay_page.dart';
import 'package:arca/pages/transfer_page.dart';
import 'package:arca/widgets/card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  String title = 'Քարտեր';

  List<String> titles = [
    'Փոխանցել',
    'Վճարել',
    'Քարտեր',
    'Խմբեր',
    'Հաշիվ',
  ];

  TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 5, vsync: this, initialIndex: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(
            icon: Icon(Icons.sort),
            onPressed: () {},
          ),
        ],
      ),
      body: body(),
    );
  }

  Widget body() {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.zero,
          elevation: 5,
          child: TabBar(
            indicatorPadding: EdgeInsets.zero,
            labelPadding: EdgeInsets.zero,
            unselectedLabelStyle: TextStyle(
              color: Theme.of(context).disabledColor,
              fontSize: 10,
            ),
            labelStyle: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 10,
            ),
            labelColor: Theme.of(context).primaryColor,
            indicator: BoxDecoration(
                border: Border.all(
              width: 0,
              color: Colors.transparent,
            )),
            unselectedLabelColor: Theme.of(context).disabledColor,
            controller: tabController,
            onTap: (index) {
              setState(() {
                title = titles[index];
              });
            },
            tabs: [
              Tab(
                text: 'Փոխանցել',
                icon: Icon(Icons.transform),
              ),
              Tab(
                text: 'Վճարել',
                icon: Icon(Icons.account_balance_wallet),
              ),
              Tab(
                text: 'Քարտեր',
                icon: Icon(Icons.credit_card),
              ),
              Tab(
                text: 'Խմբեր',
                icon: Icon(Icons.folder_open),
              ),
              Tab(
                text: 'Հաշիվ',
                icon: Icon(Icons.person_pin),
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(controller: tabController, children: [
            TransferPage(),
            PayPage(),
            CardsPage(),
            Text('data4'),
            Text('data5'),
          ]),
        )
      ],
    );
  }
}
