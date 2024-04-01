# Name - Htet Aung Shine
# ID - 6530145
# Section - 541

% costumes
costume(dracula).
costume(little_mermaid).
costume(spiderman).

% names
name(eva).
name(albert).
name(neo).

% ages
age(6).
age(8).
age(10).

% Calcuation
solve(Costumes) :-
    Costumes = [kid(neo, _, dracula), kid(_, 8, little_mermaid), kid(_, 6, _), kid(_, _, spiderman), kid(eva, _, _), kid(albert, _, _)],
    member(kid(neo, NeoAge, dracula), Costumes),
    member(kid(eva, EvaAge, EvaCostume), Costumes), EvaCostume \= little_mermaid,
    member(kid(_, 6, YoungestCostume), Costumes), YoungestCostume = dracula,
    member(kid(_, 8, EightYearOldCostume), Costumes), EightYearOldCostume = little_mermaid,
    member(kid(albert, AlbertAge, AlbertCostume), Costumes),
    age(NeoAge), age(EvaAge), age(AlbertAge),
    costume(AlbertCostume),
    all_different([NeoAge, EvaAge, AlbertAge]),
    all_different([EvaCostume, AlbertCostume]).

all_different([]).
all_different([H|T]) :- not(member(H,T)), all_different(T).
