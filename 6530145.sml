(* Name- Htet Aung Shine
ID - 6530145
Section - 541 *)

(* Question - 1 *)
(* a *)
(* datatype suit = Clubs | Diamonds | Hearts | Spades *)

(* b *)
(* datatype rank = Ace | Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | King | Queen *)

(* Question - 2 *)
(* a *)
 (* datatype coin = Penny of int | Nickel of int | Dime of int | Quarter of int;
datatype day = Mon | Tue | Wed | Thu | Fri | Sat | Sun;
fun product (xs, ys) =
    let
        fun pairWithY [] y = []
          | pairWithY (x::xs) y = (x, y) :: pairWithY xs y

        fun prod [] _ = []
          | prod (x::xs) ys = pairWithY ys x @ prod xs ys
    in
        prod xs ys
    end; *)


(* b *)
(* datatype suit = Clubs | Diamonds | Hearts | Spades
datatype rank = Ace | Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | King | Queen
fun rankToString Ace = "Ace"
  | rankToString Two = "Two"
  | rankToString Three = "Three"
  | rankToString Four = "Four"
  | rankToString Five = "Five"
  | rankToString Six = "Six"
  | rankToString Seven = "Seven"
  | rankToString Eight = "Eight"
  | rankToString Nine = "Nine"
  | rankToString Ten = "Ten"
  | rankToString Jack = "Jack"
  | rankToString Queen = "Queen"
  | rankToString King = "King";

fun suitToString Club = "Clubs"
    | suitToString Diamonds = "Diamonds"
    | suitToString Hearts = "Hearts"
    | suitToString Spades = "Spades";

fun cardname(rank,suit) = rankToString ^ suitToString;
cardname(Ace, Spades); *)

(* d *)
(* fun dayToInt Sun = 0
  | dayToInt Mon = 1
  | dayToInt Tue = 2
  | dayToInt Wed = 3
  | dayToInt Thu = 4
  | dayToInt Fri = 5
  | dayToInt Sat = 6;

fun intToDay 0 = Sun
  | intToDay 1 = Mon
  | intToDay 2 = Tue
  | intToDay 3 = Wed
  | intToDay 4 = Thu
  | intToDay 5 = Fri
  | intToDay 6 = Sat
  | intToDay n = intToDay (n mod 7); 
fun nextNDayOfWeek n day = intToDay ((dayToInt day + n) mod 7); 
fun nextNDayOfWeek 2 Mon; *)

(* 15,28,25,35,30,45,55,70,60,50,40 - preorder traversal
40,30,50,25,35,45,60,15,28,55,70 - inorder traversal
postOrderTraversal *)

(* e *)
(* datatype tree = Empty | Node of int * tree * tree;
fun buildTree ([], _) = Empty
  | buildTree (preRoot::preRest, inOrder) =
    let
      val (leftIn, rightIn) = List.partition (fn x => x < preRoot) inOrder
    in
      Node (preRoot, buildTree (List.take (preRest, length leftIn), leftIn),
            buildTree (List.drop (preRest, length leftIn), List.drop(rightIn, 1)))
    end;
fun postOrderTraversal Empty = []
  | postOrderTraversal (Node (value, left, right)) =
      postOrderTraversal left @ postOrderTraversal right @ [value];
val preOrder = [15,28,25,35,30,45,55,70,60,50,40]
val inOrder = [40,30,50,25,35,45,60,15,28,55,70]
val reconstructedTree = buildTree (preOrder, inOrder)
val postOrder = postOrderTraversal reconstructedTree;
postOrder; *)


