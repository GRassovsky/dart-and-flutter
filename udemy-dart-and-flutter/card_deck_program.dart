//
// Card Deck program
//

void main() 
{
  // Create a deck of cards
  Deck deck = new Deck();
  
  deck.addCard(new Card(Rank.Ace, Suit.Spades));
  
  deck.removeCard(new Card(Rank.Ace, Suit.Spades));
  
  deck.shuffleCards();
  
  deck.printDeck();
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
  String toShortString()
  {
    return this.toString().split('.').last;
  }
}


extension ParseSuits on Suit
{
  String toShortString()
  {
    return this.toString().split('.').last;
  }
}



class Card
{
  Card(this.rank, this.suit);

  Rank rank;
  Suit suit;
  
  Rank getRank() => rank;
  Suit getSuit() => suit;
  
  void printCard() => print("Card is a ${this.rank.toShortString()} of ${this.suit.toShortString()}");
}


class Deck
{
  List<Card> cards = new List.filled(0, null, growable:true);
  
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
  
  
  void printDeck()
  {
    cards.forEach( (c) => c.printCard() );
  }

  void addCard(Card c)
  {
    cards.add(c);
  }
  
  void removeCard(Card c)
  {
    cards.remove( 
      cards.firstWhere((_c) => (_c.rank == c.rank && _c.suit == c.suit))
      );
  }
  
  void shuffleCards()
  {
    cards.shuffle();
  }
}

