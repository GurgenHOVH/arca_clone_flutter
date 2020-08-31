import 'package:arca/models/card_details.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatefulWidget {
  final CardDetails cardDetails;

  const CreditCard({Key key, this.cardDetails}) : super(key: key);

  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  bool amountVisible = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width * 0.67;
    return Container(
        padding:
            EdgeInsetsDirectional.only(top: 20, start: 15, end: 15, bottom: 15),
        width: width,
        height: width * 0.63,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
          gradient: getGradient(),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                widget.cardDetails.cardName,
                style: TextStyle(
                    color: Colors.white, fontSize: 13, letterSpacing: 0.2),
              ),
              getCardImage(),
            ]),
            getCardNumber(),
            Row(children: [
              Expanded(child: getUpdatetAndAmount()),
              Expanded(child: getExpired())
            ])
          ],
        ));
  }

  Widget getExpired() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(height: 10),
        Text(
          'Վավեր է մինչեւ',
          style: TextStyle(
            fontSize: 10,
            color: Colors.white.withOpacity(0.5),
          ),
        ),
        SizedBox(height: 10),
        Text(
          widget.cardDetails.expires.month.toString() +
              '/' +
              widget.cardDetails.expires.year.toString().substring(2, 4),
          style: TextStyle(fontSize: 13, color: Colors.white),
        ),
      ],
    );
  }

  Widget getUpdatetAndAmount() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Թարմացվել է ' +
              widget.cardDetails.updated.hour.toString() +
              ':' +
              widget.cardDetails.updated.minute.toString(),
          style: TextStyle(fontSize: 10, color: Colors.white.withOpacity(0.5)),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              iconSize: 14,
              constraints: BoxConstraints(minWidth: 20),
              icon: Icon(
                amountVisible ? Icons.visibility_off : Icons.visibility,
                size: 14,
                color: Colors.white,
              ),
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  amountVisible = !amountVisible;
                });
              },
            ),
            amountVisible
                ? Text(
                    widget.cardDetails.amount.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                : Container(
                    height: 13, width: 70, color: Colors.white.withOpacity(0.4))
          ],
        )
      ],
    );
  }

  Widget getCardNumber() {
    var number = widget.cardDetails.number;

    String numberString = number.toString();

    String cardFormatted = numberString.substring(0, 4) +
        ' **** **** ' +
        numberString.substring(12, 16);

    return Text(
      cardFormatted,
      style: TextStyle(
          color: Colors.white, fontSize: 19, fontWeight: FontWeight.w300),
    );
  }

  Widget getCardImage() {
    if (widget.cardDetails.type == CardType.Master) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/mastercard.png',
            width: 55,
          ),
          Text(
            'mastercard',
            style: TextStyle(
              fontSize: 10,
              color: Colors.white,
            ),
          )
        ],
      );
    } else {
      return Image.asset(
        'assets/images/visa.png',
        width: 55,
        color: Colors.white,
      );
    }
  }

  Gradient getGradient() {
    if (widget.cardDetails.type == CardType.Master) {
      return LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Color(0xffBC4549), Color(0xff4E1148)],
      );
    } else {
      return LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Color(0xff030303), Color(0xff414141)],
      );
    }
  }
}
