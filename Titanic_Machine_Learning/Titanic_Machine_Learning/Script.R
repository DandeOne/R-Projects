library('ggplot2')
library('ggthemes')
library('scales')
library('dplyr')
library('mice')
library('randomForest')

trainset = read.csv('train.csv', stringsAsFactors = F)
testset = read.csv('test.csv', stringsAsFactors = F)

fullset = bind_rows(trainset, testset)

str(fullset)
## 'data.frame':	1309 obs. of  12 variables:
## $PassengerId:int 1 2 3 4 5 6 7 8 9 10 ...
## $Survived:int 0 1 1 1 0 0 0 0 1 1 ...
## $Pclass:int 3 1 3 1 3 3 1 3 3 2 ...
## $Name:chr "Braund, Mr. Owen Harris" "Cumings, Mrs. John Bradley (Florence Briggs Thayer)" "Heikkinen, Miss. Laina" "Futrelle, Mrs. Jacques Heath (Lily May Peel)" ...
## $Sex:chr "male" "female" "female" "female" ...
## $Age:num 22 38 26 35 35 NA 54 2 27 14 ...
## $SibSp:int 1 1 0 1 0 0 0 3 0 1 ...
## $Parch:int 0 0 0 0 0 0 0 1 2 0 ...
## $Ticket:chr "A/5 21171" "PC 17599" "STON/O2. 3101282" "113803" ...
## $Fare:num 7.25 71.28 7.92 53.1 8.05 ...
## $Cabin:chr "" "C85" "" "C123" ...
## $Embarked:chr "S" "C" "S" "S" ...