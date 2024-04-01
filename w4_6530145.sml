(* Name - Htet Aung Shine
Student ID - 6530145  
Course Code - CSX3004 *)

(* Exercise - 1 *)
(* fun exist (e, []) = false
  | exist (e, x::xs) = if e = x then true else exist(e, xs);
exist(3,[1,2,3,4,5,6]); *)

(* Exercise - 2 *)
(* fun lessthan (e, []) = []
  | lessthan (e, x::xs) = if x < e then x :: lessthan(e, xs) else lessthan(e, xs);
lessthan(6,[1,2,3,4,5,6,7,8,9]); *)

(* Exercise - 3 *)
(* fun repeats([]) = false
    | repeats([_]) = false
    | repeats(x::y::xs) = if x = y then true else repeats(xs);
repeats([1,2,3,4,4,5,6,6]); *)

(* Exercise - 4 *)
(* fun quicksort([]) = []
  | quicksort (n::xs) =
    let
      fun partition (x, [], left, right) = (left, right)
        | partition (x, y::ys, left, right) =
          if y < x then partition(x, ys, y::left, right)
          else partition(x, ys, left, y::right)
      val (lesser, greater) = partition(n, xs, [], [])
    inx
      quicksort lesser @ [n] @ quicksort greater
    end;
quicksort([4,1,6,7,1,6,8,3]); *)

(* Exercise - 5 *)
(* fun isMember(_ : ''a, []) = false
  | isMember(x, y::ys) = x = y orelse isMember(x, ys);
isMember(4,[1,2,3,4,5,6]); *)

(* Exercise - 6 *)
(* fun union (xs, ys) =
      let
        fun addUniqueElem (x, []) = [x]
          | addUniqueElem (x, y::ys) =
                if x = y then y::ys
                else y :: addUniqueElem(x, ys)
        
        fun unionHelper ([], set) = set
          | unionHelper (x::xs, set) = unionHelper(xs, addUniqueElem(x, set))
    in
        unionHelper(xs, ys)
    end;
val set1 = [1, 2, 3, 4];
val set2 = [3, 4, 5, 6];

val result = union(set1, set2); *)

(* Exercise - 7 *)
(* fun intersection (xs, ys) =
    let
        fun isInSet (x, []) = false
          | isInSet (x, y::ys) =
                if x = y then true
                else isInSet(x, ys)
        
        fun intersectHelper ([], _) = []
          | intersectHelper (x::xs, set) =
                if isInSet(x, set) then x :: intersectHelper(xs, set)
                else intersectHelper(xs, set)
    in
        intersectHelper(xs, ys)
    end;
val set1 = [1, 2, 3, 4];
val set2 = [3, 4, 5, 6];

val result = intersection(set1, set2); *)

(* Exercise - 8 *)
(* fun powerset [] = [[]]
  | powerset (x::xs) =
    let
        val ps = powerset xs
    in
        ps @ List.map (fn ys => x::ys) ps
    end;
val testSet = [1, 2, 3];
val result = powerset testSet; *)