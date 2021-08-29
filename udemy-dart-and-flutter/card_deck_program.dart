//
// Card Deck program
//

void main() 
{
  // Create a deck of cards
  Deck deck = new Deck();
  
  deck.addCard(new Card(Rank.Ace, Suit.Spades));
  
  deck.removeCard(new Card(Rank.Ace, Suit.Spades));
  
  //deck.shuffleCards();
  
  //print(deck.dealCards(5));

  print(deck);

  // print(deck.cardsWithSuit(Suit.Clubs));
}


enum Rank
{
  Ace,
  Two,
  Three,
  Four,
  Five,
  Six,
  Seven,
  Eight,
  Nine,
  Ten,
  Jack,
  Queen,
  King
}


enum Suit
{
  Clubs,
  Dimonds,
  Hearts,
  Spades
}

extension ParseRanks on Rank
{
  String toShortString() => this.toString().split('.').last;
}


extension ParseSuits on Suit
{
  String toShortString() => this.toString().split('.').last;
}



class Card
{
  Card(this.rank, this.suit);

  Rank rank;
  Suit suit;
  
  Rank getRank() => rank;
  Suit getSuit() => suit;
  
  toString() => "${rank.toShortString()} of ${suit.toShortString()}";
}


class Deck
{

  List<Card> cards = [];
  
  Deck()
  {
    // Call recreateDeck to 
    recreateDeck();
  }
  
  
  void recreateDeck()
  {
    // Clear any existing cards
    cards.clear();
    
    // Add all the cards to the deck
    Rank.values.forEach( (r) =>
      Suit.values.forEach( (s) =>
        cards.add(new Card(r, s))               
      )
    );  
  }
  
  
  toString() => cards.toString();
  

  void removeCard(Card c)
  {
    cards.removeWhere( (_c) => (_c.rank == c.rank && _c.suit == c.suit) );
  }
  

  void addCard(Card c) => cards.add(c);


  void shuffleCards() => cards.shuffle();


  cardsWithSuit(Suit suit)
  {
    return cards.where( (c) => c.suit == suit );
  }


  dealCards(int num)
  {
    List<Card> hand = cards.sublist(0, num);
    cards.removeRange(0, num);
    return hand;
  }
}

