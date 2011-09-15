/*
    alexei-family.pro
*/

male(alexei).
male(nicolai).
male(andrei).

male(dimitry).
male(mikhail).
male(reinaldo).
male(eduardojr).

male(valerian).
male(eduardo).

female(venus).
female(loreta).
female(icila).
female(eleusa).
female(stella).

female(zina).
female(liberta).

parent(dimitry,alexei).
parent(venus,alexei).
parent(dimitry,nicolai).
parent(venus,nicolai).
parent(dimitry,andrei).
parent(venus,andrei).

parent(valerian,dimitry).
parent(zina,dimitry).
parent(valerian,mikhail).
parent(zina,mikhail).

parent(eduardo,loreta).
parent(liberta,loreta).
parent(eduardo,icila).
parent(liberta,icila).
parent(eduardo,venus).
parent(liberta,venus).
parent(eduardo,reinaldo).
parent(liberta,reinaldo).
parent(eduardo,eleusa).
parent(liberta,eleusa).
parent(eduardo,stella).
parent(liberta,stella).
parent(eduardo,eduardojr).
parent(liberta,eduardojr).


father(X, Y)   :- male(X),   parent(X,Y).
mother(X, Y)   :- female(X), parent(X,Y).

sibling(X, Y)  :- father(F, X), father(F, Y),
                  mother(M, X), mother(M, Y), not(X = Y).

brother(X, Y)  :- male(X),   sibling(X, Y).
sister(X, Y)   :- female(X), sibling(X, Y).

grandfather(X, Z) :- male(X),   parent(X, Y), parent(Y, Z).
grandmother(X, Z) :- female(X), parent(X, Y), parent(Y, Z).

uncle(U, N)    :- male(U),   sibling(U, P), parent(P, N).
aunt(A, N)     :- female(A), sibling(A, P), parent(P, N).


