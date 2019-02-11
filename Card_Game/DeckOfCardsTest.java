// Fig. 7.11: DeckOfCardsTest.java
// Card shuffling and dealing.

public class DeckOfCardsTest {
   // execute application
   public static void main(String[] args) {

      // Code from book
      // dealAllCards();
      // dealAllHands();

      DeckOfCards m = new DeckOfCards();
      Card[] pair = m.testPair();
      Card[] two_pairs = m.testTwoPair();
      Card[] three_kind = m.testThreeOfAKind();
      // m.rankHand(pair);
      // m.rankHand(two_pairs);
      m.rankHand(three_kind);
   }

   // Default code from book
   public static void dealAllCards() {
      DeckOfCards myDeckOfCards = new DeckOfCards();
      myDeckOfCards.shuffle(); // place Cards in random order

      // print all 52 Cards in the order in which they are dealt
      for (int i = 1; i <= 52; i++) {
         // deal and display a Card
         System.out.printf("%-19s", myDeckOfCards.dealCard());

         if (i % 4 == 0) { // output a newline after every fourth card
            System.out.println();
         }
      }
   }

   // Deal all hands in a deck
   public static void dealAllHands() {
      DeckOfCards myDeckOfCards = new DeckOfCards();
      myDeckOfCards.shuffle(); // place Cards in random order

      Card[] hand = new Card[5];

      // print all 52 Cards in the order in which they are dealt
      for (int i = 1; i <= 52 / 5; i++) {
         // deal and display a Card
         hand = myDeckOfCards.dealHand();
      }

      int test = myDeckOfCards.rankHand(hand);
      System.out.println(test);

   }
}

/**************************************************************************
 * (C) Copyright 1992-2018 by Deitel & Associates, Inc. and * Pearson Education,
 * Inc. All Rights Reserved. * * DISCLAIMER: The authors and publisher of this
 * book have used their * best efforts in preparing the book. These efforts
 * include the * development, research, and testing of the theories and programs
 * * to determine their effectiveness. The authors and publisher make * no
 * warranty of any kind, expressed or implied, with regard to these * programs
 * or to the documentation contained in these books. The authors * and publisher
 * shall not be liable in any event for incidental or * consequential damages in
 * connection with, or arising out of, the * furnishing, performance, or use of
 * these programs. *
 *************************************************************************/