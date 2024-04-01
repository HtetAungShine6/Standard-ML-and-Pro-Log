% Facts
male(kim).
male(kent).
male(herbert).

female(holly).
female(margaret).
female(esther).
female(jean).

parent(kim, holly).
parent(margaret, kim).
parent(margaret, kent).
parent(esther, margaret).
parent(herbert, margaret).
parent(herbert, jean).

% Rules
mother(X, Y) :- female(X), parent(X, Y).

father(X, Y) :- male(X), parent(X, Y).

sister(X, Y) :- female(X), parent(Z, X), parent(Z, Y), X \= Y.

brother(X, Y) :- male(X), parent(Z, X), parent(Z, Y), X \= Y.

sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

cousin(X, Y) :- parent(Z, X), parent(W, Y), sibling(Z, W).
