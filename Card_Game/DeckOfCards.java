
// Fig. 7.10: DeckOfCards.java
// DeckOfCards class represents a deck of playing cards.
import java.security.SecureRandom;

public class DeckOfCards {
   // random number generator
   private static final SecureRandom randomNumbers = new SecureRandom();
   private static final int NUMBER_OF_CARDS = 52; // constant # of Cards

   private Card[] deck = new Card[NUMBER_OF_CARDS]; // Card references
   private int currentCard = 0; // index of next Card to be dealt (0-51)
   private int remaining_deck = deck.length - currentCard;

   // constructor fills deck of Cards
   public DeckOfCards() {
      String[] faces = { "Ace", "Deuce", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack",
            "Queen", "King" };
      String[] suits = { "Hearts", "Diamonds", "Clubs", "Spades" };

      // populate deck with Card objects
      for (int count = 0; count < deck.length; count++) {
         deck[count] = new Card(faces[count % 13], suits[count / 13]);
      }
   }

   // shuffle deck of Cards with one-pass algorithm
   public void shuffle() {
      // next call to method dealCard should start at deck[0] again
      currentCard = 0;

      // for each Card, pick another random Card (0-51) and swap them
      for (int first = 0; first < deck.length; first++) {
         // select a random number between 0 and 51
         int second = randomNumbers.nextInt(NUMBER_OF_CARDS);

         // swap current Card with randomly selected Card
         Card temp = deck[first];
         deck[first] = deck[second];
         deck[second] = temp;
      }
   }

   // deal one Card
   public Card dealCard() {
      // determine whether Cards remain to be dealt
      if (currentCard < deck.length) {
         return deck[currentCard++]; // return current Card in array
      } else {
         return null; // return null to indicate that all Cards were dealt
      }
   }

   // deal one hand (five Cards)
   public Card[] dealHand() {

      // Create hand object
      Card[] hand = new Card[5];
      int remaining_hands = (remaining_deck / 5);

      // Ensure that there enough cards remaining in the deck
      if (remaining_deck > 4) {

         // Display # of Remaining hands + Current hand's cards
         // Deal one Card until the hand is full
         System.out.print("Hand " + remaining_hands + "/10) ");
         for (int x = 0; x < hand.length; x++) {
            hand[x] = dealCard();
            System.out.printf("%2s| ", hand[x]);
         }

         // Update the number of remaining cards
         // Return hand to dealt
         System.out.println();
         remaining_deck -= 5;
         return hand;
      }

      System.out.println(remaining_deck);
      return hand;
   }

   public int rankHand(Card[] hand) {
      int rank = 0;
      int straight_counter = 0;

      int[] face_freq = new int[12];
      int[] suit_freq = new int[4];

      String[] faces = { "Ace", "Deuce", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack",
            "Queen", "King" };
      String[] suits = { "Hearts", "Diamonds", "Clubs", "Spades" };
      String[] ranks = { "Plain", "Pair", "Two Pairs", "Three of a Kind", "Four of a Kind", "Flush", "Straight",
            "Full House" };

      // Cummalitive probabilites
      // https://www.cardschat.com/odds-for-dummies.php#commonodds
      // https://en.wikipedia.org/wiki/Poker_probability
      double[] hand_stats = { 50.1177, 49.9, 7.92, 2.87, 0.0256, 0.76, 0.367, 0.17 };

      // Iterate through hand and extract freqs O(n^2)

      for (Card cur_card : hand) {
         // int f = find(faces, cur_card.getFace());
         // int s = find(suits, cur_card.getSuit());
         for (int i = 1; i <= face_freq.length; i++) {
            if (faces[i].equals(cur_card.getFace())) {
               face_freq[i - 1] += 1;
               continue;
            }
         }

         for (int i = 0; i < suit_freq.length; i++) {
            if (suits[i].equals(cur_card.getSuit())) {
               suit_freq[i] += 1;
               continue;
            }
         }

         // face_freq[f] += 1;
         // suit_freq[s] += 1;
      }

      System.out.print("Faces: ");
      // Iterate through face freqeuncies and rankHand O(n)
      for (int x : face_freq) {

         // Print freqeuncies of face values
         System.out.printf("%-2s", x);

         switch (x) {
         // Increment straight_counter ... just incase they get lucky
         case 0:
            if (straight_counter != 5) {
               straight_counter = 0;
            }
            break;
         case 1:
            straight_counter++;

            // Check if hand is a Straight
            if (straight_counter == 5) {
               rank = 6;
               continue;
            }
            break;

         // If a three of kind already exists --> Full House
         // Other wise Increment rank by one for single/two pairs
         case 2:
            if (rank == 3) {
               rank = 7;
            } else {
               rank += 1;
            }
            break;

         // If the a pair already
         // Three of a Kind
         case 3:
            if (rank == 1) {
               rank = 7;
            } else {
               rank = 3;
            }
            break;

         // Four of a kind Check
         case 4:
            rank = 4;
            break;
         default:
            break;
         }
      }

      System.out.println();
      System.out.print("Suites: ");
      // Iterate through suit to check for Flush O(n)
      for (int x : suit_freq) {
         System.out.printf("%-2s", x);
         if ((x == 5) && (straight_counter != 5)) {
            rank = 5;
         }
      }

      System.out.println();
      System.out.printf("Rank: %s  | Cum Prob %.2f%%", ranks[rank], hand_stats[rank]);
      System.out.println();
      return rank;
   }

   /*
    * Creates threading issues.. public int find(String[] cardVal, String target) {
    * 
    * for (int i = 0; i < cardVal.length; ++i) { if (i == 12) {
    * System.out.println("STOP THERE at index " + i);
    * System.out.println("Length of arr: " + cardVal.length + " | Target " +
    * target); System.out.println(cardVal[i]);
    * 
    * } System.out.println(i + "/" + (cardVal.length - 1) + " " + cardVal[i]); if
    * (cardVal[i].equals(target)) { return i;
    * 
    * } } return -1; }
    */

   public Card[] testPlain() {

      String[] faces = { "Ace", "Deuce", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack",
            "Queen", "King" };
      String[] suits = { "Hearts", "Diamonds", "Clubs", "Spades" };

      Card[] hand = new Card[5];
      hand[0] = new Card(faces[1], suits[0]); // Two of Hearts
      hand[1] = new Card(faces[10], suits[1]); // Jack of Diamonds
      hand[2] = new Card(faces[5], suits[2]); // Six of Clubs
      hand[3] = new Card(faces[3], suits[2]); // Four of Clubs
      hand[4] = new Card(faces[4], suits[3]); // Five of Spades

      // Print test hand
      for (Card card : hand) {
         System.out.printf("%4s| ", card);
      }
      System.out.println();
      return hand;
   }

   public Card[] testPair() {

      String[] faces = { "Ace", "Deuce", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack",
            "Queen", "King" };
      String[] suits = { "Hearts", "Diamonds", "Clubs", "Spades" };

      Card[] hand = new Card[5];
      hand[0] = new Card(faces[0], suits[0]); // Ace of Hearts
      hand[1] = new Card(faces[0], suits[1]); // Ace of Diamonds
      hand[2] = new Card(faces[2], suits[1]); // Three of Diamonds
      hand[3] = new Card(faces[4], suits[2]); // Five of Clubs
      hand[4] = new Card(faces[1], suits[3]); // Deuce of Spades

      // Print test hand
      for (Card card : hand) {
         System.out.printf("%4s| ", card);
      }
      System.out.println();
      return hand;
   }

   public Card[] testTwoPair() {

      String[] faces = { "Ace", "Deuce", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack",
            "Queen", "King" };
      String[] suits = { "Hearts", "Diamonds", "Clubs", "Spades" };

      Card[] hand = new Card[5];
      hand[0] = new Card(faces[0], suits[0]); // Ace of Hearts
      hand[1] = new Card(faces[0], suits[1]); // Ace of Diamonds
      hand[2] = new Card(faces[2], suits[1]); // Three of Diamonds
      hand[3] = new Card(faces[2], suits[2]); // Three of Clubs
      hand[4] = new Card(faces[1], suits[3]); // Deuce of Spades

      // Print test hand
      for (Card card : hand) {
         System.out.printf("%4s| ", card);
      }
      System.out.println();
      return hand;
   }

   public Card[] testThreeOfAKind() {

      String[] faces = { "Ace", "Deuce", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack",
            "Queen", "King" };
      String[] suits = { "Hearts", "Diamonds", "Clubs", "Spades" };

      Card[] hand = new Card[5];
      hand[0] = new Card(faces[0], suits[0]); // Ace of Hearts
      hand[1] = new Card(faces[1], suits[1]); // Two of Diamonds
      hand[2] = new Card(faces[2], suits[1]); // Three of Diamonds
      hand[3] = new Card(faces[2], suits[2]); // Three of Clubs
      hand[4] = new Card(faces[2], suits[3]); // Three of Spades

      // Print test hand
      for (Card card : hand) {
         System.out.printf("%4s| ", card);
      }
      System.out.println();
      return hand;
   }

   public Card[] testFourOfAKind() {

      String[] faces = { "Ace", "Deuce", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack",
            "Queen", "King" };
      String[] suits = { "Hearts", "Diamonds", "Clubs", "Spades" };

      Card[] hand = new Card[5];
      hand[0] = new Card(faces[0], suits[0]); // Ace of Hearts
      hand[1] = new Card(faces[2], suits[0]); // Three of Hearts
      hand[2] = new Card(faces[2], suits[1]); // Three of Diamonds
      hand[3] = new Card(faces[2], suits[2]); // Three of Clubs
      hand[4] = new Card(faces[2], suits[3]); // Three of Spades

      // Print test hand
      for (Card card : hand) {
         System.out.printf("%4s| ", card);
      }
      System.out.println();
      return hand;
   }

   public Card[] testFlush() {

      String[] faces = { "Ace", "Deuce", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack",
            "Queen", "King" };
      String[] suits = { "Hearts", "Diamonds", "Clubs", "Spades" };

      Card[] hand = new Card[5];
      hand[0] = new Card(faces[0], suits[0]); // Ace of Hearts
      hand[1] = new Card(faces[2], suits[0]); // Three of Hearts
      hand[2] = new Card(faces[5], suits[0]); // Six of Hearts
      hand[3] = new Card(faces[1], suits[0]); // Two of Hearts
      hand[4] = new Card(faces[6], suits[0]); // Seven Hearts

      // Print test hand
      for (Card card : hand) {
         System.out.printf("%4s| ", card);
      }
      System.out.println();
      return hand;
   }

   public Card[] testStraight() {

      String[] faces = { "Ace", "Deuce", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack",
            "Queen", "King" };
      String[] suits = { "Hearts", "Diamonds", "Clubs", "Spades" };

      Card[] hand = new Card[5];
      hand[0] = new Card(faces[0], suits[0]); // Ace of Hearts
      hand[3] = new Card(faces[1], suits[0]); // Two of Hearts
      hand[1] = new Card(faces[2], suits[0]); // Three of Hearts
      hand[2] = new Card(faces[3], suits[0]); // Four of Hearts
      hand[4] = new Card(faces[4], suits[0]); // Five of Hearts

      // Print test hand
      for (Card card : hand) {
         System.out.printf("%4s| ", card);
      }
      System.out.println();
      return hand;
   }

   public Card[] testFullHouse() {

      String[] faces = { "Ace", "Deuce", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack",
            "Queen", "King" };
      String[] suits = { "Hearts", "Diamonds", "Clubs", "Spades" };

      Card[] hand = new Card[5];
      hand[0] = new Card(faces[12], suits[0]); // King of Hearts
      hand[1] = new Card(faces[12], suits[1]); // King of Diamonds
      hand[2] = new Card(faces[2], suits[1]); // Three of Diamonds
      hand[3] = new Card(faces[2], suits[2]); // Three of Clubs
      hand[4] = new Card(faces[2], suits[3]); // Three of Spades

      // Print test hand
      for (Card card : hand) {
         System.out.printf("%4s| ", card);
      }
      System.out.println();
      return hand;
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
