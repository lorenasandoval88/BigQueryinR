#install.packages("bigrquery")

library(bigrquery)

# Press 0 to obtain new token
bq_auth()

# Create a data frame
emp_data <- data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)

#Append data to an existing table or create a table if if does'nt exist
bq_table_upload(x= "bqproject-301021.dataset1.table2", #projectID.Dataset.table
                values=emp_data,
                fields = emp_data,
                create_disposition="CREATE_IF_NEEDED",
                write_disposition="WRITE_APPEND")
