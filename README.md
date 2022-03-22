# Documentation on Fairness in Transactive Energy Markets: Modeling Energy Consumption
> I am building a model that will predict energy consumption based on [CAISO][CAISO_Page] net demand data.
> First I need to process CAISO and NOAA data, then I will input that into the models. 
> Currently working on LSTM. 
> Contact - Yuka Hatori hatoriyuka@gmail.com

## LSTM-BasicModel
This folder's goal is to execute the basic model of LSTM. This is the baseline that will be improved upon and compared on for performance. As it is, the baseline looks like:

![basicModel](https://github.com/yHator/FairnessML_git/blob/main/README_files/basicModel.png)

Model 0 is for predicting weather data, because we need that as an input to model 1. I input each column of weather data variable and have a timestep of 3 (hours). Model 1 is for predicting energy consumption and it takes in energy consumption data as well as weather data. Output of model 1 is future predicted energy consumption. 

I intuitively built a "basic LSTM" from this [source][BasicLSTM].

- LSTM-energy-consumption.ipynb
- LSTM-future-prediction.ipynb
- LSTM-weather-data.ipynb
- figure-out-scaler.ipynb
- 

There is a host of other files, like .save files, which are the MinMaxScalers for each variable. 

The pipeline goes LSTM-energy-consumption --> LSTM-weather-data --> LSTM-future-prediction

## DataProcess
Below are all the files associated with processing data that will be used in the LSTM modeling.
The overall goal of this code is to take the weather data from NOAA (it is an average of several years data in the format of one year) and put the energy consumption data from CAISO alongside. 
- Process CAISO data.ipynb
- Process NOAA data.ipynb
- NOAA and CAISO data together.ipynb

Their collective output is stored in the Datasets folder. 
### Process CAISO data.ipynb ###
**Some important notes:**
- February 29, 2020 data has been removed from the dataset because it is a leap year
- NOAA data does not consider February 29th
- CAISO data from 2018 and 2022 are not complete
  - 2018 starts from 04-10
  - 2022 ends at 02-14 (the last time I collected data)
- if you get an error running, it's probably the date/time format is wrong (see notes below) or .DS_Store hasn't been removed

**Goal:**
- turn CAISO data into the format with 2 columns: date and megawatts

**Inputs:**
- data from CAISO (2018, 2019, 2020, 2021, 2022)
- from directory = '/Users/yukahatori/A_Fairness/FairnessML_git/Datasets/CAISO_NetDemand_Clean/'
  - had to clean the data because some of the dates became wonky
  - ex: hour 00:00 sometimes was in the format of 0:00
    - so I manually cleaned this by pulling the csv into google docs, changing the number format, and then putting it back in the directory
    - thus the source for the data is CAISO_NetDemand_Clean, but in my google drive is a CAISO data folder called CAISO_NetDemand_Raw, in which I didn't fix the formatting

**Outputs:**
- files in the format and with the name CAISO_NetDemand_<date>_Megawatts.csv
- to directory = '/Users/yukahatori/A_Fairness/FairnessML_git/Datasets/CAISO_NetDemand_Megawatts/'

### Process NOAA data.ipynb ###
**Goal:**
- turn NOAA data with just the hourly data and remove the flags and years data
- there are two types of flags: completeness and measurement
  - measurement:
    - says whether it is rounded down (X) or missing (M)
    - rounded down is fine but missing is not
    - replace the missing value with an average of the a window of values from 1-5
    - have function to determine the optimal values of prev 
  - completeness:
    - replacing the 'years_' version column
    - same process as measurement

**Inputs:**
- data from 4 NOAA locations: San Diego (SD), Sacramento (SAC), San Francisco (SF), Los Angeles(LA)
- from directory = '/Users/yukahatori/A_Fairness/FairnessML_git/Datasets/NOAA_Data/'

**Outputs:**
- files in the format and with the name of their location.csv
- to directory = '/Users/yukahatori/A_Fairness/FairnessML_git/Datasets/NOAA_Data_Clean/'

### NOAA and CAISO data together.ipynb ###
**Some important notes:**
- I am only using the data from 2019, 2020, 2021 currently
  - because 2018 and 2022 don't have a full year of data

**Goal:**
- turn CAISO data into the following format:

![Megawatts](https://github.com/yHator/FairnessML_git/blob/main/README_files/megawatts.png)

**Inputs:**
- data from CAISO (2018, 2019, 2020, 2021, 2022)
- data from NOAA (SF, SD, SAC, LA)
- from directory = '/Users/yukahatori/A_Fairness/FairnessML_git/Datasets/CAISO_NetDemand_Clean/'

**Outputs:**
- files in the format and with the name CAISO_NetDemand_<date>_Megawatts.csv
- to directory = '/Users/yukahatori/A_Fairness/FairnessML_git/Datasets/CAISO_NetDemand_Megawatts/'

## Extra

Some extra folders I have are: 

- ARMA 
  - this is from when I was attempting an ARMA model
- storeLSTM_Learning
  - this stores the files I used to learn about LSTM and time series modeling
  - some are using Youtube tutorials
  - more documentation in each individual file
- CAISOprices
  - I was working on using CAISO's API to get pricing 
  - this might be helpful later
 

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [CAISO_Page]: <https://www.caiso.com/TodaysOutlook/Pages/default.aspx>
   [BasicLSTM]: <https://towardsdatascience.com/17-rules-of-thumb-for-building-a-neural-network-93356f9930af>
  


