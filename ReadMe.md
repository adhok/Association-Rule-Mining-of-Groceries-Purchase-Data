#Apriori Algorithm
The apriori algorithm employs a simple apriori belief as guideline for 
reducing the association rule search space; all subsets of frequent itemsets
must also be frequent. The algorithm uses statistical measures of an itemset's
'interestedness' to locate association rules in much larger transaction database.
Here we use the grocery dataset made available on the UCI Machine Learning Repository.
The interestedness is measured using metrics called support and confidence.
The support of an itemset/rule measures how frequently it occurs in the data.
Support is calculated as the number of instances the itemset occurs divided by the total
number of itemsets. A rule's confidence is a measurement of its predictive
power/accuracy. It is defined as the support of the itemset containing both X and Y
divided by the support of the itemset containing only X

# Support Level for Each Itemset
![alt tag](https://github.com/adhok/Association-Rule-Mining-of-Groceries-Purchase-Data/support_level_each.png)
#Visualization Rules
![alt tag](https://github.com/adhok/Association-Rule-Mining-of-Groceries-Purchase-Data/Visualization_Rules.png)
