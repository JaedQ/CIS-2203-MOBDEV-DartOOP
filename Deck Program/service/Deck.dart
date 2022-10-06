import '../models/Card.dart';

class Deck {
  List<Card> cards;

  Deck(this.cards);

  toString() {
    return cards.toString();
  }

  void printCards() {
    for (var card in cards) {
      print("${card.rank} of ${card.suit}");
    }
    print("\n");
  }

  void shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
  }
}
