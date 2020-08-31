class CardDetails {
  final String cardName;
  final CardType type;
  final int number;
  final double amount;
  final DateTime updated;
  final DateTime expires;

  CardDetails(this.cardName, this.type, this.number, this.amount, this.updated,
      this.expires);
}

enum CardType { Master, Visa }
