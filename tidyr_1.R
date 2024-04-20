library("tidyr")
data<-read.csv("C://lpu//4th sem//INT232 - R Programming//Datasets//bill data for tidyr 2.csv")
data
dim(data)

# The common verbs are 
# gather() - Reshaping wide format to long format
# syntax: gather(data, key, value,....)

datapivot<-gather(data, Bill_type, Bill_Amt,
                  gasbill: waterbill)   # merging gasbill and waterbill into one column Bill_Type and their amount into Bill_Amt
datapivot
dim(datapivot)

# spread() : reshaping long format to wide format
# syntax: spread(data, key, value,...)
dataspread<-spread(datapivot, Bill_type, Bill_Amt)  # spreading the merged columns into different columns
dataspread

# seperate() - split one column into multiple columns 
# syntax: seperate(data, col, into , sep)
dataSep<-separate(data, Date, c("Day","Month","Year"),sep="-")  #sep tells about the delimiter to split
dataSep
head(dataSep)

# unite() : to merge columns
# syntax: unite(data, col, cols to merge, sep)
dataUnite<-unite(dataSep,Date,c("Day","Month","Year"),sep="-")  # this will merge multiple columns into one column along with a seperate special character.
dataUnite

# Replace NAs in a dataframe using tidyr package
df<-data.frame(x=c(1,2,NA),
               y=c("a",NA,"b"))
df %>% replace_na(list(x=0, y="unknown"))
#or
replace_na(df, list(x=0, y="unknown"))
# replace the NA values into values given

# drop_na() : wherever NA is present it will be dropped from the dataframe
zz<-drop_na(df)  # wherever NA is present it will be dropped from the dataframe
zz
