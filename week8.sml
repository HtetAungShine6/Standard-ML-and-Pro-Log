(* Name - Htet Aung Shine
ID - 6530145
Section - 541 *)

(* Exercise - 1 *)
(* fun iseven(n: int): bool = 
            case n of 
                0 => true 
                | 1 => false
                | _ => iseven(n-2);
iseven(6); *)

(* Exercise - 2 *)
(* fun cube(n: int) = n * n * n;
cube(3); *)

(* Exercise - 3 *)
(* fun real(n: real) = n * n * n;
real(3.2); *)

(* Exercise - 4 *)
(* fun third(_ :: _ :: x :: _) = x
    | third_ = raise Empty;
third[2,4,7,6,9,3,2]; *)

(* Exercise - 5 *)
(* fun max3(a: int, b: int, c: int) =
    let
        val max = fn (x, y) => if x >= y then x else y
    in
        max(a, max(b, c))
    end;
max3(3,5,4); *)

(* Exercise - 6 *)
(* fun remove2(rm: 'a * 'b * 'c) =
    let
        val (x, _, z) = rm
    in
        (x, z)
    end;
remove2(1,2,3); *)

(* Exercise - 7 *)
(* fun fourthch s =
    let
        val [_ :: _ :: _ :: x :: _] = explode s
    in
        str x
    end;
fourthch("abcdefgh"); *)

(* Exercise - 8 *)
(* fun rotate([], _) = []
  | rotate(lst, 0) = lst
  | rotate(lst as x::xs, n) =
      if n > 0 then rotate(xs @ [x], n - 1)
      else lst;
rotate([1,2,3,4,5], 3); *)

(* Exercise - 9 *)
(* fun minHelper([], smallest) = smallest
  | minHelper(x::xs, smallest) =
        if x < smallest then minHelper(xs, x) else minHelper(xs, smallest);

fun min([]) = raise Empty
  | min(x::xs) = minHelper(xs, x);
min([4, 2, 1, 5, 6]); *)

(* Exercise - 10 *)
(* fun select([], _) = []
  | select(x::xs, f) =
      if f x then x :: select(xs, f)
      else select(xs, f);

fun isodd x = x mod 2 = 1;
select([1,2,3,4,5,6,7,8,9,10], isodd); *)
