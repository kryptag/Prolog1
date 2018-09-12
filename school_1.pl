student(florent).
student(hans).
student(peter).
student(claus).
student(jesper).

class(english).
class(math).
class(biology).

room(a1).
room(a2).
room(a3).

date(2018-9-10).
date(2018-9-11).
date(2018-9-12).
date(2018-9-13).
date(2018-9-14).

enlist(florent, english).
enlist(florent, math).

% ROOM WITH CLASS
rwc(a1, math).
rwc(a3, english).

% DATE FOR CLASS
dfc(2018-9-10, math).
dfc(2018-9-11, english).

% HAS CLASS ON DATE
hcod(2018-9-10, florent).
hcod(2018-9-11, florent).

% DOES PERSON HAVE A CLASS ON DATE
cod(X, Y) :- hcod(Y, X), student(X).

% IS PERSON ENLISTED IN CLASS
isinclass(X, Y) :- enlist(Y, X), class(X).

% IS CLASS IN ROOM
icir(X, Y) :- rwc(Y, X), class(X).

% IS CLASS ON DATE
icod(Y, X) :- dfc(X, Y), date(X).
