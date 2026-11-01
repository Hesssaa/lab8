% AND
and_gate(0, 0, 0).
and_gate(0, 1, 0).
and_gate(1, 0, 0).
and_gate(1, 1, 1).

% NOT
not_gate(0, 1).
not_gate(1, 0).

% OR
or_gate(0, 0, 0).
or_gate(0, 1, 1).
or_gate(1, 0, 1).
or_gate(1, 1, 1).

% Main Boolean expression
boolean(A, B, Result) :-
    and_gate(A, B, X),
    not_gate(A, NA),
    not_gate(B, NB),
    and_gate(NA, NB, Y),
    or_gate(X, Y, Result).
