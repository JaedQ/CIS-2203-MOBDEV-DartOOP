class Card {
  String rank;
  String suit;

  Card(this.rank, this.suit);

  toString() {
    return '$rank of $suit';
  }
}
