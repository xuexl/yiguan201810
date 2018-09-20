 
#setwd('F:\\study\\tinymind\\data')
setwd('G:\\tinymind\\data')

#??ȡ?ļ?????????
readFileByLines<-function(fileName, lines=5){
    
    
    f<-file(fileName, 'r', encoding = 'UTF-8')
    print(readLines(f, n=lines))
}

#readFileByLines('deviceid_brand.tsv', 1)

#brand
#??Ʒ???ļ????���?????????У??м?��??Ҫ?ϲ?
arrangeDeviceBrand <- function (){
    newFileBrand <- file('deviceid_brand_new.tsv', 'w', encoding = 'UTF-8')
    
    fileBrand <- file('deviceid_brand.tsv', 'r', encoding = 'UTF-8')
    seek(con=fileBrand, where=0)
    repeat {
        rl <- readLines(fileBrand, n=1)   
        if(length(rl) == 0) break
        
        #?Կո??ָ?
        cl <- strsplit(rl, ' ')[[1]]
        if(length(cl) > 3){
            
            
            rl <- paste(cl[1], paste(cl[c(2:(length(cl)-1))], collapse = '_'), cl[length(cl)], sep=' ')
        
        }
        writeLines(rl, newFileBrand, sep='\n')
    }
    close(newFileBrand)
    close(fileBrand)
}

arrangeDeviceBrand()

#Ʒ??????
# brandData<-read.table('deviceid_brand_new.tsv', sep=' ',encoding='utf8',header=F)


readFileByLines('deviceid_test.tsv')
readFileByLines('deviceid_train.tsv')




train<-read.table('deviceid_train.tsv', sep='\t',encoding='utf8',header=F, col.names = c('deviceId','sex','sec'))
summary(train)
head(train)
summary(duplicated(train$deviceId))




