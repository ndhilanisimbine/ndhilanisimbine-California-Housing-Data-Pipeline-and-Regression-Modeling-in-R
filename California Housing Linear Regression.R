> setwd("~/Downloads")
> 
  > housing <- read.csv("housing.csv")
  > 
    > str(housing)
  'data.frame':	20640 obs. of  10 variables:
    $ longitude         : num  -122 -122 -122 -122 -122 ...
  $ latitude          : num  37.9 37.9 37.9 37.9 37.9 ...
  $ housing_median_age: num  41 21 52 52 52 52 52 52 42 52 ...
  $ total_rooms       : num  880 7099 1467 1274 1627 ...
  $ total_bedrooms    : num  129 1106 190 235 280 ...
  $ population        : num  322 2401 496 558 565 ...
  $ households        : num  126 1138 177 219 259 ...
  $ median_income     : num  8.33 8.3 7.26 5.64 3.85 ...
  $ median_house_value: num  452600 358500 352100 341300 342200 ...
  $ ocean_proximity   : chr  "NEAR BAY" "NEAR BAY" "NEAR BAY" "NEAR BAY" ...
  > 
    > housing$ocean_proximity <- as.factor(housing$ocean_proximity)
  > 
    > head(housing)
  longitude latitude housing_median_age total_rooms total_bedrooms population households median_income median_house_value
  1   -122.23    37.88                 41         880            129        322        126        8.3252             452600
  2   -122.22    37.86                 21        7099           1106       2401       1138        8.3014             358500
  3   -122.24    37.85                 52        1467            190        496        177        7.2574             352100
  4   -122.25    37.85                 52        1274            235        558        219        5.6431             341300
  5   -122.25    37.85                 52        1627            280        565        259        3.8462             342200
  6   -122.25    37.85                 52         919            213        413        193        4.0368             269700
  ocean_proximity
  1        NEAR BAY
  2        NEAR BAY
  3        NEAR BAY
  4        NEAR BAY
  5        NEAR BAY
  6        NEAR BAY
  > 
    > head(housing)  # First 6 rows
  longitude latitude housing_median_age total_rooms total_bedrooms population households median_income median_house_value
  1   -122.23    37.88                 41         880            129        322        126        8.3252             452600
  2   -122.22    37.86                 21        7099           1106       2401       1138        8.3014             358500
  3   -122.24    37.85                 52        1467            190        496        177        7.2574             352100
  4   -122.25    37.85                 52        1274            235        558        219        5.6431             341300
  5   -122.25    37.85                 52        1627            280        565        259        3.8462             342200
  6   -122.25    37.85                 52         919            213        413        193        4.0368             269700
  ocean_proximity
  1        NEAR BAY
  2        NEAR BAY
  3        NEAR BAY
  4        NEAR BAY
  5        NEAR BAY
  6        NEAR BAY
  > tail(housing)  # Last 6 rows
  longitude latitude housing_median_age total_rooms total_bedrooms population households median_income median_house_value
  20635   -121.56    39.27                 28        2332            395       1041        344        3.7125             116800
  20636   -121.09    39.48                 25        1665            374        845        330        1.5603              78100
  20637   -121.21    39.49                 18         697            150        356        114        2.5568              77100
  20638   -121.22    39.43                 17        2254            485       1007        433        1.7000              92300
  20639   -121.32    39.43                 18        1860            409        741        349        1.8672              84700
  20640   -121.24    39.37                 16        2785            616       1387        530        2.3886              89400
  ocean_proximity
  20635          INLAND
  20636          INLAND
  20637          INLAND
  20638          INLAND
  20639          INLAND
  20640          INLAND
  > 
    > summary(housing)
  longitude         latitude     housing_median_age  total_rooms    total_bedrooms     population      households    
  Min.   :-124.3   Min.   :32.54   Min.   : 1.00      Min.   :    2   Min.   :   1.0   Min.   :    3   Min.   :   1.0  
  1st Qu.:-121.8   1st Qu.:33.93   1st Qu.:18.00      1st Qu.: 1448   1st Qu.: 296.0   1st Qu.:  787   1st Qu.: 280.0  
  Median :-118.5   Median :34.26   Median :29.00      Median : 2127   Median : 435.0   Median : 1166   Median : 409.0  
  Mean   :-119.6   Mean   :35.63   Mean   :28.64      Mean   : 2636   Mean   : 537.9   Mean   : 1425   Mean   : 499.5  
  3rd Qu.:-118.0   3rd Qu.:37.71   3rd Qu.:37.00      3rd Qu.: 3148   3rd Qu.: 647.0   3rd Qu.: 1725   3rd Qu.: 605.0  
  Max.   :-114.3   Max.   :41.95   Max.   :52.00      Max.   :39320   Max.   :6445.0   Max.   :35682   Max.   :6082.0  
  NA's   :207                                      
 median_income     median_house_value   ocean_proximity
 Min.   : 0.4999   Min.   : 14999     <1H OCEAN :9136  
 1st Qu.: 2.5634   1st Qu.:119600     INLAND    :6551  
 Median : 3.5348   Median :179700     ISLAND    :   5  
 Mean   : 3.8707   Mean   :206856     NEAR BAY  :2290  
 3rd Qu.: 4.7432   3rd Qu.:264725     NEAR OCEAN:2658  
 Max.   :15.0001   Max.   :500001                      
                                                       
> 
> sapply(housing, function(x) sum(is.na(x)))
         longitude           latitude housing_median_age        total_rooms     total_bedrooms         population 
                 0                  0                  0                  0                207                  0 
        households      median_income median_house_value    ocean_proximity 
                 0                  0                  0                  0 
> 
> hist(housing$median_income, main="Histogram of Median Income", xlab="Median Income", col="lightblue")
> 
> boxplot(housing$median_house_value, main="Boxplot of Median House Value", ylab="House Value", col="lightgreen")
> 
> plot(housing$median_income, housing$median_house_value,
+      main="Median Income vs Median House Value",
+      xlab="Median Income", ylab="House Value", pch=19, col="purple")
> 
> barplot(table(housing$ocean_proximity), main="Barplot of Ocean Proximity", col="orange", ylab="Count")
> 
> #2 Data Visualization 
> 
> numeric_columns <- housing[, sapply(housing, is.numeric)]
> 
> # Computing the correlation matrix
> correlation_matrix <- cor(numeric_columns, use = "complete.obs")
> correlation_matrix
                     longitude    latitude housing_median_age total_rooms total_bedrooms   population  households median_income
longitude           1.00000000 -0.92461611        -0.10935655  0.04548017     0.06960802  0.100270301  0.05651277  -0.015550150
latitude           -0.92461611  1.00000000         0.01189907 -0.03666681    -0.06698283 -0.108997344 -0.07177419  -0.079626319
housing_median_age -0.10935655  0.01189907         1.00000000 -0.36062830    -0.32045104 -0.295787297 -0.30276797  -0.118277723
total_rooms         0.04548017 -0.03666681        -0.36062830  1.00000000     0.93037950  0.857281251  0.91899153   0.197881519
total_bedrooms      0.06960802 -0.06698283        -0.32045104  0.93037950     1.00000000  0.877746743  0.97972827  -0.007722850
population          0.10027030 -0.10899734        -0.29578730  0.85728125     0.87774674  1.000000000  0.90718590   0.005086624
households          0.05651277 -0.07177419        -0.30276797  0.91899153     0.97972827  0.907185900  1.00000000   0.013433892
median_income      -0.01555015 -0.07962632        -0.11827772  0.19788152    -0.00772285  0.005086624  0.01343389   1.000000000
median_house_value -0.04539822 -0.14463821         0.10643205  0.13329413     0.04968618 -0.025299732  0.06489355   0.688355475
                   median_house_value
longitude                 -0.04539822
latitude                  -0.14463821
housing_median_age         0.10643205
total_rooms                0.13329413
total_bedrooms             0.04968618
population                -0.02529973
households                 0.06489355
median_income              0.68835548
median_house_value         1.00000000
> 
> # Histogram for each numeric variable
> numeric_variables <- names(numeric_columns)
> 
> # Looping through and plot histograms for each numeric variable
> for (var in numeric_variables) {
+     hist(housing[[var]], main=paste("Histogram of", var), xlab=var, col="lightblue")
+ }
> 
> # Boxplot for each numeric variable
> for (var in numeric_variables) {
+     boxplot(housing[[var]], main=paste("Boxplot of", var), ylab=var, col="lightgreen")
+ }
> 
> # Boxplot for housing_median_age with respect to ocean_proximity
> boxplot(housing_median_age ~ ocean_proximity, data=housing, 
+         main="Housing Median Age by Ocean Proximity", 
+         xlab="Ocean Proximity", ylab="Housing Median Age", col="orange")
> 
> # Boxplot for median_income with respect to ocean_proximity
> boxplot(median_income ~ ocean_proximity, data=housing, 
+         main="Median Income by Ocean Proximity", 
+         xlab="Ocean Proximity", ylab="Median Income", col="purple")
> 
> # Boxplot for median_house_value with respect to ocean_proximity
> boxplot(median_house_value ~ ocean_proximity, data=housing, 
+         main="Median House Value by Ocean Proximity", 
+         xlab="Ocean Proximity", ylab="House Value", col="lightblue")
> 
> #3 Data Transformation 
> 
> 
> # Calculating the median of total_bedrooms (excluding NA values)
> median_bedrooms <- median(housing$total_bedrooms, na.rm = TRUE)
> 
> housing$total_bedrooms[is.na(housing$total_bedrooms)] <- median_bedrooms
> 
> # Using the model.matrix function to create dummy variables for ocean_proximity
> ocean_proximity_dummies <- model.matrix(~ ocean_proximity - 1, data=housing)
> 
> # Combining the dummy variables back to the housing data frame and remove ocean_proximity column
> housing <- cbind(housing, ocean_proximity_dummies)
> housing$ocean_proximity <- NULL
> 
> # Creating mean_bedrooms and mean_rooms
> housing$mean_bedrooms <- housing$total_bedrooms / housing$households
> housing$mean_rooms <- housing$total_rooms / housing$households
> 
> str(housing)
'data.frame':	20640 obs. of  16 variables:
 $ longitude                : num  -122 -122 -122 -122 -122 ...
 $ latitude                 : num  37.9 37.9 37.9 37.9 37.9 ...
 $ housing_median_age       : num  41 21 52 52 52 52 52 52 42 52 ...
 $ total_rooms              : num  880 7099 1467 1274 1627 ...
 $ total_bedrooms           : num  129 1106 190 235 280 ...
 $ population               : num  322 2401 496 558 565 ...
 $ households               : num  126 1138 177 219 259 ...
 $ median_income            : num  8.33 8.3 7.26 5.64 3.85 ...
 $ median_house_value       : num  452600 358500 352100 341300 342200 ...
 $ ocean_proximity<1H OCEAN : num  0 0 0 0 0 0 0 0 0 0 ...
 $ ocean_proximityINLAND    : num  0 0 0 0 0 0 0 0 0 0 ...
 $ ocean_proximityISLAND    : num  0 0 0 0 0 0 0 0 0 0 ...
 $ ocean_proximityNEAR BAY  : num  1 1 1 1 1 1 1 1 1 1 ...
 $ ocean_proximityNEAR OCEAN: num  0 0 0 0 0 0 0 0 0 0 ...
 $ mean_bedrooms            : num  1.024 0.972 1.073 1.073 1.081 ...
 $ mean_rooms               : num  6.98 6.24 8.29 5.82 6.28 ...
> 
> library(caTools)
Error in library(caTools) : there is no package called ‘caTools’
> # Loading the necessary package for splitting the data
> library(caTools)
Error in library(caTools) : there is no package called ‘caTools’
> install.packages("caTools")
also installing the dependency ‘bitops’

trying URL 'https://cran.rstudio.com/bin/macosx/big-sur-arm64/contrib/4.4/bitops_1.0-8.tgz'
Content type 'application/x-gzip' length 32581 bytes (31 KB)
==================================================
downloaded 31 KB

trying URL 'https://cran.rstudio.com/bin/macosx/big-sur-arm64/contrib/4.4/caTools_1.18.2.tgz'
Content type 'application/x-gzip' length 237506 bytes (231 KB)
==================================================
downloaded 231 KB


The downloaded binary packages are in
	/var/folders/hd/2739sqjj3r326382ssdzz2xh0000gn/T//RtmpperPmJ/downloaded_packages
> 
> library(caTools)
> 
> library(caTools)
> 
> set.seed(123)
> 
> split <- sample.split(housing$median_house_value, SplitRatio = 0.8)
> 
> train_data <- subset(housing, split == TRUE)
> test_data <- subset(housing, split == FALSE)
> 
> # Building the linear regression model
> model <- lm(median_house_value ~ ., data = train_data)
> 
> # Summary of the model
> summary(model)

Call:
lm(formula = median_house_value ~ ., data = train_data)

Residuals:
    Min      1Q  Median      3Q     Max 
-552459  -43412  -10741   29357  774236 

Coefficients: (1 not defined because of singularities)
                              Estimate Std. Error t value Pr(>|t|)    
(Intercept)                 -2.345e+06  9.955e+04 -23.553  < 2e-16 ***
longitude                   -2.775e+04  1.148e+03 -24.170  < 2e-16 ***
latitude                    -2.667e+04  1.134e+03 -23.521  < 2e-16 ***
housing_median_age           1.107e+03  4.868e+01  22.737  < 2e-16 ***
total_rooms                 -5.874e+00  9.539e-01  -6.157 7.58e-10 ***
total_bedrooms               5.074e+01  7.183e+00   7.064 1.68e-12 ***
population                  -3.891e+01  1.173e+00 -33.160  < 2e-16 ***
households                   1.061e+02  7.937e+00  13.366  < 2e-16 ***
median_income                3.821e+04  3.996e+02  95.606  < 2e-16 ***
`ocean_proximity<1H OCEAN`  -4.394e+03  1.744e+03  -2.520 0.011743 *  
ocean_proximityINLAND       -4.409e+04  2.507e+03 -17.589  < 2e-16 ***
ocean_proximityISLAND        1.243e+05  3.466e+04   3.586 0.000337 ***
`ocean_proximityNEAR BAY`   -8.478e+03  2.420e+03  -3.504 0.000459 ***
`ocean_proximityNEAR OCEAN`         NA         NA      NA       NA    
mean_bedrooms                2.945e+02  2.029e+03   0.145 0.884583    
mean_rooms                   2.146e+03  4.699e+02   4.567 4.98e-06 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 69210 on 16675 degrees of freedom
Multiple R-squared:  0.648,	Adjusted R-squared:  0.6477 
F-statistic:  2193 on 14 and 16675 DF,  p-value: < 2.2e-16

> 
> # Making predictions on the test set
> predictions <- predict(model, newdata = test_data)
> 
> head(data.frame(Predicted = predictions, Actual = test_data$median_house_value))
   Predicted Actual
7   260641.2 299200
8   258150.8 241400
14  210066.1 191300
17  217778.4 152500
19  189883.3 158700
22  164361.3 159800
> 
> # Calculating Mean Squared Error (MSE)
> mse <- mean((predictions - test_data$median_house_value)^2)
> mse
[1] 4374797703
> 
> # Calculating R-squared on test data
> rss <- sum((predictions - test_data$median_house_value)^2)
> tss <- sum((test_data$median_house_value - mean(test_data$median_house_value))^2)
> r_squared <- 1 - rss/tss
> r_squared
[1] 0.637106
> 
> housing_scaled <- housing
> 
> # Scaling relevant numeric columns
> numeric_vars <- c("longitude", "latitude", "housing_median_age", "total_rooms", "total_bedrooms", 
+                   "population", "households", "median_income", "mean_rooms", "mean_bedrooms")
> 
> # Applying scaling (center = TRUE, scale = TRUE by default)
> housing_scaled[numeric_vars] <- scale(housing[numeric_vars])
> 
> head(housing_scaled)
  longitude latitude housing_median_age total_rooms total_bedrooms population households median_income median_house_value
1 -1.327803 1.052523          0.9821189  -0.8047996     -0.9724529 -0.9744050 -0.9770092    2.34470896             452600
2 -1.322812 1.043159         -0.6070042   2.0458405      1.3571106  0.8614180  1.6699206    2.33218146             358500
3 -1.332794 1.038478          1.8561366  -0.5357329     -0.8270042 -0.8207575 -0.8436165    1.78265622             352100
4 -1.337785 1.038478          1.8561366  -0.6241995     -0.7197060 -0.7660095 -0.7337637    0.93294491             341300
5 -1.337785 1.038478          1.8561366  -0.4623928     -0.6124078 -0.7598283 -0.6291419   -0.01288068             342200
6 -1.337785 1.038478          1.8561366  -0.7869229     -0.7721629 -0.8940491 -0.8017678    0.08744452             269700
  ocean_proximity<1H OCEAN ocean_proximityINLAND ocean_proximityISLAND ocean_proximityNEAR BAY ocean_proximityNEAR OCEAN
1                        0                     0                     0                       1                         0
2                        0                     0                     0                       1                         0
3                        0                     0                     0                       1                         0
4                        0                     0                     0                       1                         0
5                        0                     0                     0                       1                         0
6                        0                     0                     0                       1                         0
  mean_bedrooms mean_rooms
1  -0.148510661  0.6285442
2  -0.248535936  0.3270334
3  -0.052900657  1.1555925
4  -0.053646030  0.1569623
5  -0.038194658  0.3447024
6   0.005232996 -0.2697231
> 
> # Scaling numeric variables (excluding the response variable and categorical variables)
> housing_scaled <- housing
> 
> # Scaling relevant numeric columns
> numeric_vars <- c("longitude", "latitude", "housing_median_age", "total_rooms", "total_bedrooms", 
+                   "population", "households", "median_income", "mean_rooms", "mean_bedrooms")
> 
> # Applying scaling (center = TRUE, scale = TRUE by default)
> housing_scaled[numeric_vars] <- scale(housing[numeric_vars])
> 
> head(housing_scaled)
  longitude latitude housing_median_age total_rooms total_bedrooms population households median_income median_house_value
1 -1.327803 1.052523          0.9821189  -0.8047996     -0.9724529 -0.9744050 -0.9770092    2.34470896             452600
2 -1.322812 1.043159         -0.6070042   2.0458405      1.3571106  0.8614180  1.6699206    2.33218146             358500
3 -1.332794 1.038478          1.8561366  -0.5357329     -0.8270042 -0.8207575 -0.8436165    1.78265622             352100
4 -1.337785 1.038478          1.8561366  -0.6241995     -0.7197060 -0.7660095 -0.7337637    0.93294491             341300
5 -1.337785 1.038478          1.8561366  -0.4623928     -0.6124078 -0.7598283 -0.6291419   -0.01288068             342200
6 -1.337785 1.038478          1.8561366  -0.7869229     -0.7721629 -0.8940491 -0.8017678    0.08744452             269700
  ocean_proximity<1H OCEAN ocean_proximityINLAND ocean_proximityISLAND ocean_proximityNEAR BAY ocean_proximityNEAR OCEAN
1                        0                     0                     0                       1                         0
2                        0                     0                     0                       1                         0
3                        0                     0                     0                       1                         0
4                        0                     0                     0                       1                         0
5                        0                     0                     0                       1                         0
6                        0                     0                     0                       1                         0
  mean_bedrooms mean_rooms
1  -0.148510661  0.6285442
2  -0.248535936  0.3270334
3  -0.052900657  1.1555925
4  -0.053646030  0.1569623
5  -0.038194658  0.3447024
6   0.005232996 -0.2697231
> 
> #4 Question
> 
> 
> set.seed(123)
> 
.
> 
> set.seed(123)
> 
> sample_size <- floor(0.7 * nrow(cleaned_housing))
> 
> train_indices <- sample(seq_len(nrow(cleaned_housing)), size = sample_size)
> 
> train <- cleaned_housing[train_indices, ]
> 
> test <- cleaned_housing[-train_indices, ]
> 
> model <- lm(median_house_value ~ ., data = train)
> 
> summary(model)

Call:
lm(formula = median_house_value ~ ., data = train)

Residuals:
    Min      1Q  Median      3Q     Max 
-474257  -42858  -10895   29124  758440 

Coefficients: (1 not defined because of singularities)
                            Estimate Std. Error t value Pr(>|t|)    
(Intercept)                 223250.4     1763.1 126.627  < 2e-16 ***
`ocean_proximity<1H OCEAN`   -4723.8     1852.1  -2.551 0.010765 *  
ocean_proximityINLAND       -43047.2     2662.5 -16.168  < 2e-16 ***
ocean_proximityISLAND       154211.9    39797.2   3.875 0.000107 ***
`ocean_proximityNEAR BAY`    -7807.7     2578.8  -3.028 0.002469 ** 
`ocean_proximityNEAR OCEAN`       NA         NA      NA       NA    
longitude                   -56350.8     2438.9 -23.105  < 2e-16 ***
latitude                    -57820.3     2571.3 -22.487  < 2e-16 ***
housing_median_age           13755.8      658.9  20.878  < 2e-16 ***
population                  -44085.8     1368.9 -32.205  < 2e-16 ***
households                   49710.9     1372.5  36.218  < 2e-16 ***
mean_rooms                    1666.3     1120.8   1.487 0.137099    
mean_bedrooms                 5014.4     1029.4   4.871 1.12e-06 ***
median_income                70907.3      760.9  93.194  < 2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 68850 on 14434 degrees of freedom
Multiple R-squared:  0.6414,	Adjusted R-squared:  0.6411 
F-statistic:  2152 on 12 and 14434 DF,  p-value: < 2.2e-16

> 
> predictions <- predict(model, newdata = test)
> 
> head(data.frame(Predicted = predictions, Actual = test$median_house_value))
   Predicted Actual
3   378344.6 352100
8   257390.4 241400
12  260444.4 241800
23  190318.6 113900
24  192885.7  99700
34  164803.5 104900
> 
> mse <- mean((predictions - test$median_house_value)^2)
> mse
[1] 4709687207
> 
> rss <- sum((predictions - test$median_house_value)^2)
> tss <- sum((test$median_house_value - mean(test$median_house_value))^2)
> r_squared <- 1 - rss/tss
> r_squared
[1] 0.6529214
> 
> install.packages("randomForest")
trying URL 'https://cran.rstudio.com/bin/macosx/big-sur-arm64/contrib/4.4/randomForest_4.7-1.1.tgz'
Content type 'application/x-gzip' length 257943 bytes (251 KB)
==================================================
downloaded 251 KB


The downloaded binary packages are in
	/var/folders/hd/2739sqjj3r326382ssdzz2xh0000gn/T//RtmpperPmJ/downloaded_packages
> 
> library(randomForest)
randomForest 4.7-1.1
Type rfNews() to see new features/changes/bug fixes.
> 
> #5
> 
> train_x <- train[, -which(names(train) == "median_house_value")]
> train_y <- train$median_house_value
> 
> rf <- randomForest(x = train_x, y = train_y, ntree = 500, importance = TRUE)
> 
> names(rf)
 [1] "call"            "type"            "predicted"       "mse"             "rsq"             "oob.times"      
 [7] "importance"      "importanceSD"    "localImportance" "proximity"       "ntree"           "mtry"           
[13] "forest"          "coefs"           "y"               "test"            "inbag"          
> 
> 
> importance(rf)
                            %IncMSE IncNodePurity
ocean_proximity<1H OCEAN  19.648250  3.735754e+12
ocean_proximityINLAND     42.553089  2.627592e+13
ocean_proximityISLAND      4.115659  4.532695e+10
ocean_proximityNEAR BAY   15.120125  1.258165e+12
ocean_proximityNEAR OCEAN 17.048367  2.045679e+12
longitude                 65.514246  2.248800e+13
latitude                  59.355058  1.956282e+13
housing_median_age        82.634018  8.547656e+12
population                38.310103  6.446079e+12
households                38.069296  6.829271e+12
mean_rooms                46.840090  1.872054e+13
mean_bedrooms             42.055591  6.549474e+12
median_income             88.576890  6.237158e+13
> 
> varImpPlot(rf)
Error in plot.new() : figure margins too large
> 
> test_x <- test[, -which(names(test) == "median_house_value")]
> 
> predictions_rf <- predict(rf, newdata = test_x)
> 
> head(data.frame(Predicted = predictions_rf, Actual = test$median_house_value))
   Predicted Actual
3   414177.2 352100
8   239256.5 241400
12  269938.3 241800
23  151785.9 113900
24  142613.7  99700
34  116170.6 104900
> 
> 
> 
> mse_rf <- mean((predictions_rf - test$median_house_value)^2)
> mse_rf
[1] 2414946231
> 
> rss_rf <- sum((predictions_rf - test$median_house_value)^2)
> tss_rf <- sum((test$median_house_value - mean(test$median_house_value))^2)
> r_squared_rf <- 1 - rss_rf/tss_rf
> r_squared_rf
[1] 0.8220314
> 
> #6
> 
> last_mse <- rf$mse[length(rf$mse)]
> 
> rmse_train <- sqrt(last_mse)
> rmse_train
[1] 49398.24
> 
> test_x <- test[, -which(names(test) == "median_house_value")]
> 
> predictions_rf <- predict(rf, newdata = test_x)
> 
> test_y <- test$median_house_value
> 
> mse_test <- mean((predictions_rf - test_y)^2)
> 
> rmse_test <- sqrt(mse_test)
> rmse_test
[1] 49142.1
> 
> varImpPlot(rf)
Error in plot.new() : figure margins too large