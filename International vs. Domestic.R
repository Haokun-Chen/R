sample_data <- sample_n(dataset,3)

isample <- iter(sample_data,by="row")
i <- nextElem(isample)
print(i)
head()

click_record <- filter(dataset,is_booking==0,user_id %in% booking_record$user_id)
ix =  (as.character(click_record$user_location_country) != as.character(click_record$hotel_country))
international_click = click_record[ix, ]

ix =  (as.character(click_record$user_location_country) == as.character(click_record$hotel_country))
domestic_click = click_record[ix, ]

ix = (as.character(booking_record$user_location_country) == as.character(bookheading_record$hotel_country))
domestic_booking = booking_record[ix, ]

ix = (as.character(booking_record$user_location_country) != as.character(booking_record$hotel_country))
international_booking = booking_record[ix, ]

temp3 <- as.Date(international_click$srch_ci)-as.Date(international_click$date_time)
temp3 <- temp3[!is.na(temp3)]
international_click_checkin_diff <- temp3
mean(international_click_checkin_diff)

temp4 <- as.Date(domestic_click$srch_ci)-as.Date(domestic_click$date_time)
temp4 <- temp4[!is.na(temp4)]
domestic_click_checkin_diff <- temp4
mean(domestic_click_checkin_diff)
install.packages("ggplot2")
library("ggplot2")
ggplot(international_booking, x=prop_starrating, y=prop_is_branded, colour=srch_adults_cnt+srch_children_cnt)
 h
 
 
 
 
 