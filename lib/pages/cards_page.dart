import 'package:arca/models/card_details.dart';
import 'package:arca/widgets/card.dart';
import 'package:flutter/material.dart';

class CardsPage extends StatefulWidget {
  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  List<CardDetails> cards = [
    CardDetails(
      'AMERIABANK',
      CardType.Master,
      1430345698762345,
      345900,
      DateTime.now().subtract(Duration(hours: 1)),
      DateTime(2022, 08, 01),
    ),
    CardDetails(
      'AMERIABANK',
      CardType.Visa,
      1430345698762345,
      345900,
      DateTime.now().subtract(Duration(hours: 1)),
      DateTime(2022, 08, 01),
    ),
  ];

  List<String> listItems = [
    'Կանխադրված',
    'Քարտից քարտ փոխանցում',
    'Ծառայություններ',
    'Սահմանաչափեր',
    'Քարտային Գործարքներ'
  ];

  int selectedCard = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff1573CB),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(children: [
            Container(
              height: 230,
              width: MediaQuery.of(context).size.width,
              child: PageView(
                allowImplicitScrolling: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  setState(() {
                    selectedCard = index;
                  });
                },
                children: List.generate(cards.length, (index) {
                  return Center(
                    child: Padding(
                      padding: EdgeInsets.all(selectedCard == index ? 0 : 25),
                      child: CreditCard(cardDetails: cards[index]),
                    ),
                  );
                }),
              ),
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: listItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    listItems[index],
                    style: TextStyle(
                        color:
                            index != 0 ? Color(0xff1356A5) : Color(0xff63CB93),
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: index == 0
                      ? Icon(
                          Icons.check,
                          color: Color(0xff63CB93),
                        )
                      : null,
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  indent: 15,
                  endIndent: 15,
                  color: Colors.black26,
                  thickness: 2,
                );
              },
            )
          ])),
    );
  }
}
