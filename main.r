>install.packages("psych")  # installing 'psych' packge
> install.packages("readr")  # for reading CSv
>data2 <- read.csv("E:\\EDUCATION\\1st SEM\\R\\ND_PSYI_Data_Sem1_2022.CSV") # loading data
> head(data2) # showing top 5 entries of the CSV file
> r.data2 <- cos(data2) #converting datas
>head(r.data2) 
>library(corrplot) 
> m<- r.data2 
>corrplot(m) #indivisual question based corrplot 
>corrplot(m , method = ‘numbers’)
>keys.list <- list(agree=c("-A1","A2","A3","A4","A5"), 
                conscientious=c("C1","C2","C3","-C4","-C5"), 
                extraversion=c("-E1","-E2","E3","E4","E5"), 
                neuroticism=c("N1","N2","N3","N4","N5"),  
                openness = c("O1","-O2","O3","O4","-O5")) 
>  keys <- make.keys(M,keys.list)  
>scores <- scoreItems(keys,M,totals="TRUE")  
>cor(scores$scores)  
>cor.plot(scores$scores) #Human Quality based corrplot 
