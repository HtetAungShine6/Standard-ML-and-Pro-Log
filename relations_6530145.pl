# Name - Htet Aung Shine
# ID - 6530145
# Section - 541

% Facts
male(kim).
male(kent).
male(herbert).
female(holly).
female(margaret).
female(esther).
female(jean).
parent(kim,holly).
parent(margaret,kim).
parent(margaret,kent).
parent(esther,margaret).
parent(herbert,margaret).
parent(herbert,jean).

% Question 1.
mother(X,Y) :- female(X), parent(X,Y).

% Question 2.
father(X,Y) :- male(X), parent(X,Y).

% Question 3.
sister(X, Y) :- female(X), parent(Z, X), parent(Z, Y), X \= Y.

% Question 4.
brother(X, Y) :- male(X), parent(Z, X), parent(Z, Y), X \= Y.

% Question 5.
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

% Question 6.
cousin(X, Y) :- parent(Z, X), parent(W, Y), sibling(Z, W).
