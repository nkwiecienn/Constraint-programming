# The Wallet Problem
This the Four Villages Problem from the Coursera Course. The problem goes:
the King of China wants to form an army and has to recruit soldiers from four villages. He has the budget of $10000. Each village has a limited amout of soldiers, unique price and strenght:

| | Feng | Liu | Zhao | Jian |
|---|---|---|---|---|
| Strength | 6 | 10 | 8 | 40 |
| Cost | 13 | 21 | 17 | 100 |
| Size | 1000 | 400 | 500 | 150 |

For this set the solution goes:

```minizinc
int: budget = 10000;
var 0..1000: F;
var 0..400: L;
var 0..500: Z;
var 0..150: J;

constraint 13*F + 21*L + 17*Z + 100*J <= budget;

solve maximize 6*F + 10*L + 8*Z + 40*J;

output ["F = \(F), L = \(L), Z = \(Z), J = \(J)"];
```
My goal is to create a general solution to this problem.
