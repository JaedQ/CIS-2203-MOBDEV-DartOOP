import 'models/Card.dart';
import 'service/Deck.dart';

void main() {
  //Making a deck.
  List<Card> cards = <Card>[];
  List<Card> inHandCards = <Card>[];
  var ranks = [
    'Ace',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten',
    'Jack',
    'King',
    'Queen'
  ];
  var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

  for (var suit in suits) {
    for (var rank in ranks) {
      var card = new Card(rank, suit);
      cards.add(card);
    }
  }

  Deck deck = new Deck(cards);
  deck.printCards(); //Printing Cards.
  deck.shuffle(); // Shuffling Cards.

  for (var i = 0; i < 5; i++) {
    inHandCards.add(deck.cards[i]);
  }

  print("On hand cards:");
  Deck inhand = new Deck(inHandCards); // Taking 5 cards in the Deck.
  inhand.printCards();

  print(inhand.cardsWithSuit('Spades')); // Finding Cards with a given Suit.
}
