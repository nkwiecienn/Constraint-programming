enum Product;
array[Product] of int: profit;
enum Resource;
array[Resource] of int: limit;
array[Product, Resource] of int: cost;

array[Product] of var int: solution;
var int: total_profit = sum([solution[p]*profit[p] | p in Product]);

constraint forall([solution[i] >= 0 | i in Product]);
constraint forall([sum([cost[p,r]*solution[p] | p in Product]) <= limit[r] | r in Resource]);

solve maximize total_profit;

output ["\(p): \(solution[p])\n" | p in Product] ++ ["total profit: \(total_profit)\n"] ++
        ["\(r): \(sum([solution[p]*cost[p,r] | p in Product]))/\(limit[r]) " | r in Resource];