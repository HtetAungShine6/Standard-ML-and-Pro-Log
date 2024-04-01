# Name - Htet Aung Shine
#ID - 6530145
#Section - 541

max(X, Y, Z, Max) :-
    (X >= Y, X >= Z, Max is X);
    (Y >= X, Y >= Z, Max is Y);
    (Z >= X, Z >= Y, Max is Z).

gcd(X, 0, X) :- !.
gcd(X, Y, GCD) :- gcd(Y, X mod Y, GCD).

lcm(X, Y, Z) :-
    gcd(X, Y, GCD),
    Z is (X * Y) / GCD.

maxList([X], X).
maxList([H|T], M) :-
    maxList(T, M1),
    max(H, M1, M).
