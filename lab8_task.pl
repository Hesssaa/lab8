% Base case: empty list
sumlist([], 0).

% Recursive case
sumlist([Head|Tail], Sum) :-
    sumlist(Tail, Rest),
    Sum is Head + Rest.
