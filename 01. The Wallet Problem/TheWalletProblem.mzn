int: budget;

set of int: villages = index_set(village_sizes);

array[int] of int: village_sizes;
array[villages] of string: village_names;
array[villages] of int: village_costs;
array[villages] of int: village_strengths;

array[villages] of var int: army;
var int: total_cost = sum([army[i] * village_costs[i] | i in villages]);
var int: total_strength = sum([army[i] * village_strengths[i] | i in villages]);

constraint total_cost <= budget;
constraint forall([army[i] <= village_sizes[i] | i in villages]);
constraint forall([army[i] >= 0 | i in villages]);

solve maximize total_strength;

output ["\(village_names[i]): \(army[i])\n" | i in villages] ++
        ["- total cost: \(total_cost)/\(budget)\n"] ++
        ["- total strength: \(total_strength)"];