 
#setwd('F:\\study\\tinymind\\data')
setwd('G:\\tinymind\\data')

#读取文件，按行数
readFileByLines<-function(fileName, lines=5){
    
    
    f<-file(fileName, 'r', encoding = 'UTF-8')
    print(readLines(f, n=lines))
}

#readFileByLines('deviceid_brand.tsv', 1)

#brand
#对品牌文件处理，如果有四列，中间两列要合并
arrangeDeviceBrand <- function (){
    newFileBrand <- file('deviceid_brand_new.tsv', 'w', encoding = 'UTF-8')
    
    fileBrand <- file('deviceid_brand.tsv', 'r', encoding = 'UTF-8')
    seek(con=fileBrand, where=0)
    repeat {
        rl <- readLines(fileBrand, n=1)   
        if(length(rl) == 0) break
        
        #以空格分割
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

#品牌数据
# brandData<-read.table('deviceid_brand_new.tsv', sep=' ',encoding='utf8',header=F)


readFileByLines('deviceid_test.tsv')
readFileByLines('deviceid_train.tsv')





