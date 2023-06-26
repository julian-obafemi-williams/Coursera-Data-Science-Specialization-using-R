data <- read.csv(unzip('quiz1_data.zip', 'hw1_data.csv'))

#Q11
names(data)

#Q12
data[1:2,]

#Q13
nrow(data)

#Q14
data[(nrow(data) - 1):(nrow(data)),]

#Q15
data[47, 'Ozone']

#Q16
nrow(data[is.na(data$Ozone), ])

#Q17
sum_ozone <- sum(data[!is.na(data$Ozone), 'Ozone'])
ozone_rows <- nrow(data[!is.na(data$Ozone), ])
mean_ozone <- sum_ozone / ozone_rows

#Q18
data_subset <- data[(data$Ozone > 31)&(data$Temp > 90), ]
data_subset_na_removed <- data_subset[!is.na(data_subset$Ozone)&!is.na(data_subset$Temp), ]

mean_subset <- sum(data_subset_na_removed[, 'Solar.R']) / nrow(data_subset_na_removed)

#19
q19 <- data[data$Month == 6, ]
mean(q19$Temp)

#Q20
q20 <- data[data$Month == 5, ]

max(q20$Ozone, na.rm = T)
