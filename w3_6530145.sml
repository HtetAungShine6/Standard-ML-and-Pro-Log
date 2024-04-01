(* Name - Htet Aung Shine
Student ID - 6530145     *)

(* Exercise - 1 *)
(* fun iseven(n : int) = if n mod 2 = 0 then true else false;
iseven(7);
iseven(8); *)

(* Exercise - 2 *)
(* fun cube(n : int) = n * n * n;
cube(3); *)

(* Exercise - 3 *)
(* fun cuber(n : real) = n * n * n;
cuber(3.0); *)

(* Exercise - 4 *)
(* fun third(lst: 'a list) = if null lst then hd(lst) else hd(tl(tl lst));
third [1,2,3];
third [2,4,2,6,9,3,2]; *)

(* Exercise - 5 *)
(* fun max3(a: int, b: int, c: int) =
    if a >= b andalso a >= c then
        a
    else if b >= a andalso b >= c then
        b
    else
        c;
max3(3,4,5); *)

(* Exercise - 6 *)
(* fun remove2(rm: 'a * 'b * 'c) =
    let
        val (x, _, z) = rm
    in
        (x, z)
    end;
remove2(1,2,3); *)

(* Exercise - 7 *)
(* fun fourthch c = hd(tl(tl(tl(explode c))));
fourthChar("abcdefgh"); *)

(* Exercise - 8 *)
(* fun rotate(lst: 'a list, n: int) =
    if n < 1 then lst
    else rotate(tl(lst) @ [hd lst], n - 1);
rotate([1,2,3,4,5], 3); *)

(* Exercise - 9 *)
(* fun minHelper(lst: int list, smallest: int) =
    case lst of
        [] => smallest
      | x::xs => if x < smallest then minHelper(xs, x) else minHelper(xs, smallest);

fun min(lst: int list) =
    case lst of
        [] => raise Empty 
      | x::xs => minHelper(xs, x);
min([4, 2, 1, 5, 6]); *)

(* Exercise - 10 *)
(* fun select(lst: 'a list, f: 'a -> bool) =
    case lst of
        [] => []
      | x::xs => if f(x) then x :: select(xs, f) else select(xs, f);
fun isodd x = if x mod 2 = 1 then true else false;
select([1,2,3,4,5,6,7,8,9,10], isodd); *)

