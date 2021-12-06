#importing data_set
customer_data=read.csv("~/Customer_Segmentation/customer-segmentation-dataset/Mall_Customers.csv")
str(customer_data)
names(customer_data)

library(plotrix)

#First 6 rows and summary
head(customer_data)
summary(customer_data$Age)

#SD and summary of Age and Annual income
sd(customer_data$Age)
summary(customer_data$Annual.Income)
sd(customer_data$Annual.Income)
summary(customer_data$Age)

#SD of spending score
sd(customer_data$Spending.Score)

#Customer gender visualization
a=table(customer_data$Gender)
barplot(a,main="Using BarPlot to display Gender Comparision",
        ylab="Count",
        xlab="Gender",
        col=rainbow(4),
        legend=rownames(a))

#Pie chart(Customer gender visualization to find ratio)
pct=round(a/sum(a)*100)
lbs=paste(c("Female","Male")," ",pct,"%",sep=" ")
pie3D(a,labels=lbs,
      main="Pie Chart Depicting Ratio of Female and Male")

#Visualizing Age distribution
summary(customer_data$Age)
hist(customer_data$Age,
     col="blue",
     main="Histogram to Show Count of Age Class",
     xlab="Age Class",
     ylab="Frequency",
     labels=TRUE)

boxplot(customer_data$Age,
        col="green",
        main="Boxplot for Descriptive Analysis of Age")


#Analysis of the Annual Income of the Customers
summary(customer_data$Annual.Income)
hist(customer_data$Annual.Income,
     col="#660033",
     main="Histogram for Annual Income",
     xlab="Annual Income Class",
     ylab="Frequency",
     labels=TRUE)

#Density plot for annual income
plot(density(customer_data$Annual.Income),
     col="yellow",
     main="Density Plot for Annual Income",
     xlab="Annual Income Class",
     ylab="Density")
polygon(density(customer_data$Annual.Income),
        col="yellow")

#Analyzing Spending Score of the Customers
summary(customer_data$Spending.Score)
## 1.00 34.75 50.00 50.20 73.00 99.00
boxplot(customer_data$Spending.Score,
        horizontal=TRUE,
        col="brown",
        main="BoxPlot for Descriptive Analysis of Spending Score")

hist(customer_data$Spending.Score,
     main="HistoGram for Spending Score",
     xlab="Spending Score Class",
     ylab="Frequency",
     col="purple",
     labels=TRUE)

