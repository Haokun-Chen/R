dest_filter <- read.csv("dest_filter.csv")
head(dest_filter)

merge_file <- merge(x = dataset, y = dest_filter, by = "srch_destination_id", all.x = TRUE)
tail(merge_file)

tail(filter(merge_file,srch_destination_type_id==681))
temp <- arrange(dataset,desc(srch_destination_id))
head(temp)
dest <- arrange(dest,desc(srch_destination_id))
head(dest)

type774 <- filter(merge_file,srch_destination_type_id==774)
table(type774$prop_is_branded)
table(type774$prop_starrating)

head(sample_data)
as.Date(sample_data$srch_co) - as.Date(sample_data$srch_ci)

temp3 <- as.Date(merge_file$srch_co)-as.Date(merge_file$srch_ci)
temp3 <- !is.na(temp3)
 <- temp3
ix <- is.na(as.Date(merge_file$srch_ci)))

short <- merge_file[ix,]
