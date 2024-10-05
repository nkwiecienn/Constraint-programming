# The Production Problem
In previous problem I've made a general solution but there's still a room to make it more generic.

This time we're gonna look at a model in which:
- we have some sort of products (like soldiers),
- a profit per unit of each (like strength),
- limited resources (like budget),
- and units of each resource required for each product (cost of each soldier).

in the TheWalletProblem.dzn file I've included data from previous example. Fun fact: Coursera has a wrong solution because it ignores the fact that the number of soldiers is limited.

# Different example

Our king wants to buy weapon for the army. Each of the weapons requires some resources which are limited etc. etc. now we can look at the table:

| | axe | sword | spear | katana | club |
| -- | -- | -- | -- | -- | -- |
| rocks | 1.5 | 2.0 | 1.5 | 0.5 | 0.1 |
| wood | 1.0 | 0.0 | 0.5 | 1.0 | 2.5 |
| blacksmiths | 1.0 | 2.0 | 1.0 | 0.9 | 0.1 |
| carpenters | 1.0 | 0.0 | 1.0 | 1.5 | 2.5 |
| strength | 11 | 18 | 15 | 17 | 11 |

Resources:

| rocks | wood | blacksmiths | carpenters |
| -- | -- | -- | -- |
| 5000 | 7500 | 4000 | 3000 |

The data is in the TheWeaponProblem.dzn file.
