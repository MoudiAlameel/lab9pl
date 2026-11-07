% Task 1 - A Boolean Expression
% (A AND B) OR (NOT A AND NOT B)

% Truth tables as three-argument facts
and_gate(1, 1, 1).
and_gate(1, 0, 0).
and_gate(0, 1, 0).
and_gate(0, 0, 0).

or_gate(1, 1, 1).
or_gate(1, 0, 1).
or_gate(0, 1, 1).
or_gate(0, 0, 0).

neg_gate(1, 0).
neg_gate(0, 1).

% One rule that wires them together
boolean_expr(A, B, Result) :-
    and_gate(A, B, And1),
    neg_gate(A, NotA),
    neg_gate(B, NotB),
    and_gate(NotA, NotB, And2),
    or_gate(And1, And2, Result).

% -----------------------------------------

% Task 2 - sumlist

% base case for empty list
sumlist([], 0).

% recursive case
sumlist([Head|Tail], Sum) :-
    sumlist(Tail, TailSum),
    Sum is Head + TailSum.

% -----------------------------------------

% Task 3 - Total and Average

run_stats :-
    write('Enter first number (remember the full stop!): '), read(Num1),
    write('Enter second number (remember the full stop!): '), read(Num2),
    write('Enter third number (remember the full stop!): '), read(Num3),
    Total is Num1 + Num2 + Num3,
    Average is Total / 3,
    write('Total = '), write(Total), nl,
    write('Average = '), write(Average), nl.
