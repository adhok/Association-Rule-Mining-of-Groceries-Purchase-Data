library(arules)
library(arulesViz)
groceries = read.transactions("groceries.csv",sep=',')
summary(groceries)
inspect(groceries[1:5])
itemFrequency(groceries)
#histogram for at least 10% support
png('support_level_each.png')
itemFrequencyPlot(groceries,support=0.1)
dev.off()
png('vis_random_sample.png')
image(sample(groceries,100))
dev.off()
# training the model
rules = apriori(groceries,parameter=list(support=0.006,confidence=0.25,minlen=2))
berry_rules = subset(rules,items %in% "berries")
beef_rules = subset(rules,items %in% "beef")
whole_milk_rules = subset(rules,items %in% "whole milk")
# removing redundant rules
rules.sorted = sort(rules.pruned,by="lift")
subset.matrix = is.subset(rules.sorted,rules.sorted)
subset.matrix[lower.tri(subset.matrix,diag=T)] <- NA
redundant = colSums(subset.matrix,na.rm=T)>=1
rules.pruned = rules.sorted[!redundant]
inspect(rules.pruned)
plot(rules)
png("Visualization_Rules.png")
plot(rules.pruned,method="graph",control=list(type="items"))
dev.off()
png("Paracord_plot.png")
plot(rules.pruned,method="paracoord",control=list(reorder=T))
dev.off()

