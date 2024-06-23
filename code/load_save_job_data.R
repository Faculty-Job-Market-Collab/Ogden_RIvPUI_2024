#identify the path to your downloaded Job_Market_Survey_19-20 repo,
#then run the setwd code below, replacing "local_path" with your path
#setwd("local_path/Job_Market_Survey_19-22")

source("code/load_data.R") #pull in and tidy data

dir.create("./Ogden_RIvPUI_2024/data") #create data folder (if it doesn't exist already)

#save local copy of the survey data in data folder
write_csv(survey_data, 
          paste0("./Ogden_RIvPUI_2024/data/local_job_market_survey_data_",
                                 Sys.Date(), ".csv"))


#save local copy of the associated institution data in data folder
write_csv(inst_data, 
          paste0("./Ogden_RIvPUI_2024/data/local_job_market_inst_data_",
                 Sys.Date(), ".csv"))