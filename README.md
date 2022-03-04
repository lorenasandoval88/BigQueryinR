# BigQueryinR

Step 1 Install R package:

install.packages("bigrquery")
Step 2 Authentication:

library(bigrquery)

bq_auth()
Step 3 Access Google bigquery tables using documentation for creating/editing tables:

https://bigrquery.r-dbi.org/reference/api-table.html

######## upload report to bigquery ##############################

#Append data to an existing table or create a table if if doesnt exist
bq_table_upload(x= table_location,
                values= dataframe_in_r,
                fields = dataframe_in_r,
                create_disposition="CREATE_IF_NEEDED",
                write_disposition="WRITE_APPEND")
Try yourself using the BIgQueryinR.R script
