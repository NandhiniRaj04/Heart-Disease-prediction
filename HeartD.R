library(readr)
library(class)
library(caret)
library(gmodels)
framingham <- read_csv
data <- read_csv
m <- round(mean(data$male, na.rm = TRUE))
data$male[is.na(data$male)] <- m
print(m)  
m <- round(mean(data$age, na.rm = TRUE))
data$age[is.na(data$age)] <- m
print(m)
m <- round(mean(data$education, na.rm = TRUE))
data$education[is.na(data$education)] <- m
print(m)

m <- round(mean(data$currentSmoker, na.rm = TRUE))
data$currentSmoker[is.na(data$currentSmoker)] <- m
print(m)

m <- round(mean(data$cigsPerDay, na.rm = TRUE))
data$cigsPerDay[is.na(data$cigsPerDay)] <- m
print(m)

m <- round(mean(data$BPMeds, na.rm = TRUE))
data$BPMeds[is.na(data$BPMeds)] <- m
print(m)

m <- round(mean(data$prevalentStroke, na.rm = TRUE))
data$prevalentStroke[is.na(data$prevalentStroke)] <- m
print(m)

m <- round(mean(data$prevalentHyp, na.rm = TRUE))
data$prevalentHyp[is.na(data$prevalentHyp)] <- m
print(m)

m <- round(mean(data$diabetes, na.rm = TRUE))
data$diabetes[is.na(data$diabetes)] <- m
print(m)

m <- round(mean(data$totChol, na.rm = TRUE))
data$totChol[is.na(data$totChol)] <- m
print(m)

m <- round(mean(data$sysBP, na.rm = TRUE))
data$sysBP[is.na(data$sysBP)] <- m
print(m)

m <- round(mean(data$diaBP, na.rm = TRUE))
data$diaBP[is.na(data$diaBP)] <- m
print(m)

m <- round(mean(data$BMI, na.rm = TRUE))
data$BMI[is.na(data$BMI)] <- m
print(m)

m <- round(mean(data$heartRate, na.rm = TRUE))
data$heartRate[is.na(data$heartRate)] <- m
print(m)

m <- round(mean(data$glucose, na.rm = TRUE))
data$glucose[is.na(data$glucose)] <- m
print(m)

m <- round(mean(data$TenYearCHD, na.rm = TRUE))
data$TenYearCHD[is.na(data$TenYearCHD)] <- m
print(m)


data$male <- (data$male - min(data$male))/(max(data$male)-min(data$male))
data$age <- (data$age - min(data$age))/(max(data$age)-min(data$age))
data$education <- (data$education - min(data$education))/(max(data$education)-min(data$education))
data$currentSmoker <- (data$currentSmoker - min(data$currentSmoker))/(max(data$currentSmoker)-min(data$currentSmoker))
data$cigsPerDay <- (data$cigsPerDay - min(data$cigsPerDay))/(max(data$cigsPerDay)-min(data$cigsPerDay))
data$BPMeds <- (data$BPMeds - min(data$BPMeds))/(max(data$BPMeds)-min(data$BPMeds))
data$prevalentStroke <- (data$prevalentStroke - min(data$prevalentStroke))/(max(data$prevalentStroke)-min(data$prevalentStroke))
data$prevalentHyp <- (data$prevalentHyp - min(data$prevalentHyp))/(max(data$prevalentHyp)-min(data$prevalentHyp))
data$diabetes <- (data$diabetes - min(data$diabetes))/(max(data$diabetes)-min(data$diabetes))
data$totChol <- (data$totChol - min(data$totChol))/(max(data$totChol)-min(data$totChol))
data$sysBP <- (data$sysBP - min(data$sysBP))/(max(data$sysBP)-min(data$sysBP))
data$diaBP <- (data$diaBP - min(data$diaBP))/(max(data$diaBP)-min(data$diaBP))
data$BMI <- (data$BMI - min(data$BMI))/(max(data$BMI)-min(data$BMI))
data$heartRate <- (data$heartRate - min(data$heartRate))/(max(data$heartRate)-min(data$heartRate))
data$glucose <- (data$glucose - min(data$glucose))/(max(data$glucose)-min(data$glucose))
data$TenYearCHD <- (data$TenYearCHD - min(data$TenYearCHD))/(max(data$TenYearCHD)-min(data$TenYearCHD))

train <- data[1:2756,]
test <- data[2757:4240,]
train_labels <- data[1:2756,16]
test_labels <- data[2757:4240,16]

print(dim(train))
print(dim(test)) 
print(dim(train_labels))
cl <- train_labels[,1]
'/cl <- as.vector(cl)'
cl <- as.matrix(cl)
print(dim(cl))
pred <- knn(train = train, test = test, cl, k = 39)
x <- as.matrix(test_labels)
y <- pred 
temp <- as.matrix(test_labels)
print(confusionMatrix(pred,temp))
 


'/SVM algorithm'

library(readr)
library(class)
library(gmodels)
library(e1071)
library(caret)
library(Hmisc)
'/ Loading dataset and making a copy of it'
framingham <- read_csv("C:/Users/Lenovo/Desktop/HeartDiseasePrediction/framingham.csv")
data <- read_csv("C:/Users/Lenovo/Desktop/HeartDiseasePrediction/framingham.csv")
m <- round(mean(data$male, na.rm = TRUE))
data$male[is.na(data$male)] <- m
print(m)  

m <- round(mean(data$age, na.rm = TRUE))
data$age[is.na(data$age)] <- m
print(m)

m <- round(mean(data$education, na.rm = TRUE))
data$education[is.na(data$education)] <- m
print(m)

m <- round(mean(data$currentSmoker, na.rm = TRUE))
data$currentSmoker[is.na(data$currentSmoker)] <- m
print(m)

m <- round(mean(data$cigsPerDay, na.rm = TRUE))
data$cigsPerDay[is.na(data$cigsPerDay)] <- m
print(m)

m <- round(mean(data$BPMeds, na.rm = TRUE))
data$BPMeds[is.na(data$BPMeds)] <- m
print(m)

m <- round(mean(data$prevalentStroke, na.rm = TRUE))
data$prevalentStroke[is.na(data$prevalentStroke)] <- m
print(m)

m <- round(mean(data$prevalentHyp, na.rm = TRUE))
data$prevalentHyp[is.na(data$prevalentHyp)] <- m
print(m)

m <- round(mean(data$diabetes, na.rm = TRUE))
data$diabetes[is.na(data$diabetes)] <- m
print(m)

m <- round(mean(data$totChol, na.rm = TRUE))
data$totChol[is.na(data$totChol)] <- m
print(m)

m <- round(mean(data$sysBP, na.rm = TRUE))
data$sysBP[is.na(data$sysBP)] <- m
print(m)

m <- round(mean(data$diaBP, na.rm = TRUE))
data$diaBP[is.na(data$diaBP)] <- m
print(m)

m <- round(mean(data$BMI, na.rm = TRUE))
data$BMI[is.na(data$BMI)] <- m
print(m)

m <- round(mean(data$heartRate, na.rm = TRUE))
data$heartRate[is.na(data$heartRate)] <- m
print(m)

m <- round(mean(data$glucose, na.rm = TRUE))
data$glucose[is.na(data$glucose)] <- m
print(m)

m <- round(mean(data$TenYearCHD, na.rm = TRUE))
data$TenYearCHD[is.na(data$TenYearCHD)] <- m
print(m)

data$male <- (data$male - min(data$male))/(max(data$male)-min(data$male))
data$age <- (data$age - min(data$age))/(max(data$age)-min(data$age))
data$education <- (data$education - min(data$education))/(max(data$education)-min(data$education))
data$currentSmoker <- (data$currentSmoker - min(data$currentSmoker))/(max(data$currentSmoker)-min(data$currentSmoker))
data$cigsPerDay <- (data$cigsPerDay - min(data$cigsPerDay))/(max(data$cigsPerDay)-min(data$cigsPerDay))
data$BPMeds <- (data$BPMeds - min(data$BPMeds))/(max(data$BPMeds)-min(data$BPMeds))
data$prevalentStroke <- (data$prevalentStroke - min(data$prevalentStroke))/(max(data$prevalentStroke)-min(data$prevalentStroke))
data$prevalentHyp <- (data$prevalentHyp - min(data$prevalentHyp))/(max(data$prevalentHyp)-min(data$prevalentHyp))
data$diabetes <- (data$diabetes - min(data$diabetes))/(max(data$diabetes)-min(data$diabetes))
data$totChol <- (data$totChol - min(data$totChol))/(max(data$totChol)-min(data$totChol))
data$sysBP <- (data$sysBP - min(data$sysBP))/(max(data$sysBP)-min(data$sysBP))
data$diaBP <- (data$diaBP - min(data$diaBP))/(max(data$diaBP)-min(data$diaBP))
data$BMI <- (data$BMI - min(data$BMI))/(max(data$BMI)-min(data$BMI))
data$heartRate <- (data$heartRate - min(data$heartRate))/(max(data$heartRate)-min(data$heartRate))
data$glucose <- (data$glucose - min(data$glucose))/(max(data$glucose)-min(data$glucose))
data$TenYearCHD <- (data$TenYearCHD - min(data$TenYearCHD))/(max(data$TenYearCHD)-min(data$TenYearCHD))
train <- data[1:2756,]
test <- data[2757:4240,]
train_labels <- data[1:2756,16]
test_labels <- data[2757:4240,16]

print(dim(train))
print(dim(test)) 
print(dim(train_labels))
cl <- train_labels[,1]
'/cl <- as.vector(cl)'
cl <- as.matrix(cl)
print(dim(cl))

'/s <- tn[,c(1,2,5,6,7,9,10,12,13,14,16)]'
'/Feature selection'
correlationMatrix <- cor(train)
highlyCorrelated <- findCorrelation(correlationMatrix,cutoff = 0.5)
print(highlyCorrelated)
'/11 8 4 15'
'/heart rate - 0.3597101
diabetes - 0.3574325
age - 0.3506626 - lm
age - 0.3782353 - svm'
s <- train[,c(2,16)]
plot(s,pch=16)
model <- svm(train$TenYearCHD~train$age,data=train)
predictedY <- predict(model, test)
points(train$age, predictedY, col = "blue", pch=4)
error <- model$residuals
lm_error <- sqrt(mean(error^2))
print(lm_error)
'/print(confusionMatrix(train$age, predictedY))'

'/model <- svm(train$TenYearCHD~train$heartRate,train)
print(summary(model))
plot(model)'
'/pred <- predict(model,train)'

'/plot(s,pch=16)
svm_tune <- tune(svm, train$TenYearCHD ~ train$heartRate, data = train,ranges = list(epsilon = seq(0,1,0.01), cost = 2^(2:9)))
print(svm_tune)
points(train$TenYearCHD,pred,col="blue",pch=3)'

TreeCode.R

library(readr)
library(class)
library(gmodels)
library(e1071)
library(caret)
library(Hmisc)
library(party)
'/ Loading dataset and making a copy of it'
framingham <- read_csv("C:/Users/pc/Desktop/HeartDiseasePrediction/framingham.csv")
data <- read_csv("C:/Users/pc/Desktop/HeartDiseasePrediction/framingham.csv")

'/Replacing na values with mean'  

m <- round(mean(data$male, na.rm = TRUE))
data$male[is.na(data$male)] <- m
print(m)  

m <- round(mean(data$age, na.rm = TRUE))
data$age[is.na(data$age)] <- m
print(m)

m <- round(mean(data$education, na.rm = TRUE))
data$education[is.na(data$education)] <- m
print(m)

m <- round(mean(data$currentSmoker, na.rm = TRUE))
data$currentSmoker[is.na(data$currentSmoker)] <- m
print(m)

m <- round(mean(data$cigsPerDay, na.rm = TRUE))
data$cigsPerDay[is.na(data$cigsPerDay)] <- m
print(m)

m <- round(mean(data$BPMeds, na.rm = TRUE))
data$BPMeds[is.na(data$BPMeds)] <- m
print(m)

m <- round(mean(data$prevalentStroke, na.rm = TRUE))
data$prevalentStroke[is.na(data$prevalentStroke)] <- m
print(m)

m <- round(mean(data$prevalentHyp, na.rm = TRUE))
data$prevalentHyp[is.na(data$prevalentHyp)] <- m
print(m)

m <- round(mean(data$diabetes, na.rm = TRUE))
data$diabetes[is.na(data$diabetes)] <- m
print(m)

m <- round(mean(data$totChol, na.rm = TRUE))
data$totChol[is.na(data$totChol)] <- m
print(m)

m <- round(mean(data$sysBP, na.rm = TRUE))
data$sysBP[is.na(data$sysBP)] <- m
print(m)

m <- round(mean(data$diaBP, na.rm = TRUE))
data$diaBP[is.na(data$diaBP)] <- m
print(m)

m <- round(mean(data$BMI, na.rm = TRUE))
data$BMI[is.na(data$BMI)] <- m
print(m)

m <- round(mean(data$heartRate, na.rm = TRUE))
data$heartRate[is.na(data$heartRate)] <- m
print(m)

m <- round(mean(data$glucose, na.rm = TRUE))
data$glucose[is.na(data$glucose)] <- m
print(m)

m <- round(mean(data$TenYearCHD, na.rm = TRUE))
data$TenYearCHD[is.na(data$TenYearCHD)] <- m
print(m)
'/
data$male <- (data$male - min(data$male))/(max(data$male)-min(data$male))
data$age <- (data$age - min(data$age))/(max(data$age)-min(data$age))
data$education <- (data$education - min(data$education))/(max(data$education)-min(data$education))
data$currentSmoker <- (data$currentSmoker - min(data$currentSmoker))/(max(data$currentSmoker)-min(data$currentSmoker))
data$cigsPerDay <- (data$cigsPerDay - min(data$cigsPerDay))/(max(data$cigsPerDay)-min(data$cigsPerDay))
data$BPMeds <- (data$BPMeds - min(data$BPMeds))/(max(data$BPMeds)-min(data$BPMeds))
data$prevalentStroke <- (data$prevalentStroke - min(data$prevalentStroke))/(max(data$prevalentStroke)-min(data$prevalentStroke))
data$prevalentHyp <- (data$prevalentHyp - min(data$prevalentHyp))/(max(data$prevalentHyp)-min(data$prevalentHyp))
data$diabetes <- (data$diabetes - min(data$diabetes))/(max(data$diabetes)-min(data$diabetes))
data$totChol <- (data$totChol - min(data$totChol))/(max(data$totChol)-min(data$totChol))
data$sysBP <- (data$sysBP - min(data$sysBP))/(max(data$sysBP)-min(data$sysBP))
data$diaBP <- (data$diaBP - min(data$diaBP))/(max(data$diaBP)-min(data$diaBP))
data$BMI <- (data$BMI - min(data$BMI))/(max(data$BMI)-min(data$BMI))
data$heartRate <- (data$heartRate - min(data$heartRate))/(max(data$heartRate)-min(data$heartRate))
data$glucose <- (data$glucose - min(data$glucose))/(max(data$glucose)-min(data$glucose))
data$TenYearCHD <- (data$TenYearCHD - min(data$TenYearCHD))/(max(data$TenYearCHD)-min(data$TenYearCHD))
'
'/Splitting into train and test dataset'
train <- data[1:2756,]
test <- data[2757:4240,]

output.tree <- ctree(as.factor(TenYearCHD)~.,data=data)
plot(output.tree)

pred <- predict(output.tree,test[-16])
print(table(pred,test$TenYearCHD))
print(confusionMatrix(table(pred,test$TenYearCHD)))

'/
trctrl <- trainControl(method = "repeatedcv", number = 10, repeats = 3)
set.seed(3333)
dtree_fit <- train(TenYearCHD~., data = data, method = "rpart",parms = list(split = "information"),trControl=trctrl,tuneLength = 10)
prp(dtree_fit$finalModel, box.palette = "Reds", tweak = 1.2)
'

NaiveBayesCode.R

library(readr)
library(class)
library(gmodels)
library(e1071)
'/ Loading dataset and making a copy of it'
framingham <- read_csv("C:/Users/pc/Desktop/HeartDiseasePrediction/framingham.csv")
data <- read_csv("C:/Users/pc/Desktop/HeartDiseasePrediction/framingham.csv")

'/Replacing na values with mean'  

m <- round(mean(data$male, na.rm = TRUE))
data$male[is.na(data$male)] <- m
print(m)  

m <- round(mean(data$age, na.rm = TRUE))
data$age[is.na(data$age)] <- m
print(m)

m <- round(mean(data$education, na.rm = TRUE))
data$education[is.na(data$education)] <- m
print(m)

m <- round(mean(data$currentSmoker, na.rm = TRUE))
data$currentSmoker[is.na(data$currentSmoker)] <- m
print(m)

m <- round(mean(data$cigsPerDay, na.rm = TRUE))
data$cigsPerDay[is.na(data$cigsPerDay)] <- m
print(m)

m <- round(mean(data$BPMeds, na.rm = TRUE))
data$BPMeds[is.na(data$BPMeds)] <- m
print(m)

m <- round(mean(data$prevalentStroke, na.rm = TRUE))
data$prevalentStroke[is.na(data$prevalentStroke)] <- m
print(m)

m <- round(mean(data$prevalentHyp, na.rm = TRUE))
data$prevalentHyp[is.na(data$prevalentHyp)] <- m
print(m)

m <- round(mean(data$diabetes, na.rm = TRUE))
data$diabetes[is.na(data$diabetes)] <- m
print(m)

m <- round(mean(data$totChol, na.rm = TRUE))
data$totChol[is.na(data$totChol)] <- m
print(m)

m <- round(mean(data$sysBP, na.rm = TRUE))
data$sysBP[is.na(data$sysBP)] <- m
print(m)

m <- round(mean(data$diaBP, na.rm = TRUE))
data$diaBP[is.na(data$diaBP)] <- m
print(m)

m <- round(mean(data$BMI, na.rm = TRUE))
data$BMI[is.na(data$BMI)] <- m
print(m)

m <- round(mean(data$heartRate, na.rm = TRUE))
data$heartRate[is.na(data$heartRate)] <- m
print(m)

m <- round(mean(data$glucose, na.rm = TRUE))
data$glucose[is.na(data$glucose)] <- m
print(m)

m <- round(mean(data$TenYearCHD, na.rm = TRUE))
data$TenYearCHD[is.na(data$TenYearCHD)] <- m
print(m)

'/View(data)'

data$male <- (data$male - min(data$male))/(max(data$male)-min(data$male))
data$age <- (data$age - min(data$age))/(max(data$age)-min(data$age))
data$education <- (data$education - min(data$education))/(max(data$education)-min(data$education))
data$currentSmoker <- (data$currentSmoker - min(data$currentSmoker))/(max(data$currentSmoker)-min(data$currentSmoker))
data$cigsPerDay <- (data$cigsPerDay - min(data$cigsPerDay))/(max(data$cigsPerDay)-min(data$cigsPerDay))
data$BPMeds <- (data$BPMeds - min(data$BPMeds))/(max(data$BPMeds)-min(data$BPMeds))
data$prevalentStroke <- (data$prevalentStroke - min(data$prevalentStroke))/(max(data$prevalentStroke)-min(data$prevalentStroke))
data$prevalentHyp <- (data$prevalentHyp - min(data$prevalentHyp))/(max(data$prevalentHyp)-min(data$prevalentHyp))
data$diabetes <- (data$diabetes - min(data$diabetes))/(max(data$diabetes)-min(data$diabetes))
data$totChol <- (data$totChol - min(data$totChol))/(max(data$totChol)-min(data$totChol))
data$sysBP <- (data$sysBP - min(data$sysBP))/(max(data$sysBP)-min(data$sysBP))
data$diaBP <- (data$diaBP - min(data$diaBP))/(max(data$diaBP)-min(data$diaBP))
data$BMI <- (data$BMI - min(data$BMI))/(max(data$BMI)-min(data$BMI))
data$heartRate <- (data$heartRate - min(data$heartRate))/(max(data$heartRate)-min(data$heartRate))
data$glucose <- (data$glucose - min(data$glucose))/(max(data$glucose)-min(data$glucose))
data$TenYearCHD <- (data$TenYearCHD - min(data$TenYearCHD))/(max(data$TenYearCHD)-min(data$TenYearCHD))

'/Splitting into train and test dataset'
train <- data[1:2756,]
test <- data[2757:4240,]
'/264 wrong predictions before removing highly correlated features'
'/ 258 wrong predictions after removing highly correlated features accuracy 82.61%'
correlationMatrix <- cor(train)
highlyCorrelated <- findCorrelation(correlationMatrix,cutoff = 0.5)
print(highlyCorrelated)

train <- train[-4]
train <- train[-7]
train <- train[-9]
train <- train[-12]

levels(train$TenYearCHD)

model <- naiveBayes(as.factor(TenYearCHD)~.,data=train)
class(model)
pred <- predict(model,test[-16])
print(table(pred,test$TenYearCHD))
print(confusionMatrix(table(pred,test$TenYearCHD)))



