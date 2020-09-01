import 'package:flutter/material.dart';

class TransferPage extends StatefulWidget {
  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(30),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      crossAxisCount: 3,
      childAspectRatio: 0.7,
      children: <Widget>[
        Container(
          height: 150,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.width * 0.25,
                width: MediaQuery.of(context).size.width * 0.25,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  elevation: 3,
                  color: Colors.white,
                  child: Icon(
                    Icons.credit_card,
                    color: Color(0xff10A1E7),
                  ),
                ),
              ),
              Text(
                'Քարտից քարտ փոխանցում',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ],
    );
  }
}
