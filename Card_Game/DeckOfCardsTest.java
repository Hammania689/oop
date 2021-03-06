// Fig. 7.11: DeckOfCardsTest.java
// Card shuffling and dealing.

public class DeckOfCardsTest {
   // execute application
   public static void main(String[] args) {

      // Code from book
      dealAllCards();
      dealAllHands();
      dealTestHands();
      compareTwoHands();

   }

   // Default code from book
   public static void dealAllCards() {
      DeckOfCards myDeckOfCards = new DeckOfCards();
      myDeckOfCards.shuffle(); // place Cards in random order
      System.out.println("Dealing deck card by card");
      System.out.println("====================================================================================");

      // print all 52 Cards in the order in which they are dealt
      for (int i = 1; i <= 52; i++) {
         // deal and display a Card
         System.out.printf("%-19s", myDeckOfCards.dealCard());

         if (i % 4 == 0) { // output a newline after every fourth card
            System.out.println();
         }
      }
      System.out.println();

   }

   // Deal all hands in a deck
   public static void dealAllHands() {
      DeckOfCards myDeckOfCards = new DeckOfCards();
      myDeckOfCards.shuffle(); // place Cards in random order

      Card[] hand = new Card[5];

      System.out.println("Dealing deck by hands");
      System.out.println("====================================================================================");
      // print all 52 Cards in the order in which they are dealt
      for (int i = 1; i <= 52 / 5; i++) {
         // deal and display a Card
         hand = myDeckOfCards.dealHand();
      }
      System.out.println();
   }

   // Deal all test ranked hands (Plain to Full House)
   public static void dealTestHands() {

      System.out.println("Dealing Every all ranked hand from assignment prompt");
      System.out.println("====================================================================================");
      DeckOfCards testDeck = new DeckOfCards();
      Card[] plain = testDeck.testPlain();
      Card[] pair = testDeck.testPair();
      Card[] two_pairs = testDeck.testTwoPair();
      Card[] three_kind = testDeck.testThreeOfAKind();
      Card[] four_kind = testDeck.testFourOfAKind();
      Card[] flush = testDeck.testFlush();
      Card[] straight = testDeck.testStraight();
      Card[] house = testDeck.testFullHouse();

      System.out.println();
      testDeck.rankHand(plain);
      System.out.println();
      testDeck.rankHand(pair);
      System.out.println();
      testDeck.rankHand(two_pairs);
      System.out.println();
      testDeck.rankHand(three_kind);
      System.out.println();
      testDeck.rankHand(four_kind);
      System.out.println();
      testDeck.rankHand(flush);
      System.out.println();
      testDeck.rankHand(straight);
      System.out.println();
      testDeck.rankHand(house);
      System.out.println();
   }

   // Compare Two hands
   public static void compareTwoHands() {
      System.out.println("Compare every two hands in the dealt deck");
      System.out.println("====================================================================================");
      DeckOfCards myDeckOfCards = new DeckOfCards();
      myDeckOfCards.shuffle(); // place Cards in random order
      Card[] hand1 = new Card[5];
      Card[] hand2 = new Card[5];

      String[] ranks = { "Plain", "Pair", "Two Pairs", "Three of a Kind", "Four of a Kind", "Flush", "Straight",
            "Full House" };
      String[] faces = { "Ace", "Deuce", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack",
            "Queen", "King" };

      for (int i = 1; i <= 52 / 5; i++) {
         // deal and display a Card
         hand1 = myDeckOfCards.dealHand();
         hand2 = myDeckOfCards.dealHand();
         i++;

         System.out.println();
         int rank1 = myDeckOfCards.rankHand(hand1);
         System.out.println();
         int rank2 = myDeckOfCards.rankHand(hand2);
         System.out.println();

         if (rank1 > rank2) {
            System.out.printf("%s (Hand 1) >>> Trumps %s (Hand2)", ranks[rank1], ranks[rank2]);
         } else if (rank2 > rank1) {
            System.out.printf("%s (Hand 2) >>> Trumps %s (Hand 1)", ranks[rank2], ranks[rank1]);
         } else {
            System.out.printf("%s (Hand 1) === %s (Hand2)", ranks[rank1], ranks[rank2]);
         }
         System.out.println();
         System.out.println("====================================================================================");

      }

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
