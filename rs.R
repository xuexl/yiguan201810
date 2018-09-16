 
#setwd('F:\\study\\tinymind\\data')
setwd('G:\\tinymind\\data')

#brand
#对品牌文件处理，如果有四列，中间两列要合并
arrangeDeviceBrand <- function (){
    newFileBrand <- file('deviceid_brand_new.tsv', 'w')
    
    fileBrand <- file('deviceid_brand.tsv', 'r')
    while(TRUE){
        rl <- readLines(fileBrand, n=1)   
        if(length(rl) == 0)
            break
        else {
            #以空格分割
            cl <- strsplit(rl, ' ')[[1]]
            if(length(cl) > 3){
                r <- paste(ee[1], paste(ee[c(2:(length(cl)-1))], collapse = '_'), ee[length(cl)], sep=' ')
                # print(paste(ee[c(2:length(cl)-1)], sep=' ', collapse = ' '))
            }
            else {
                r <- rl
                # print(rl)
            }
            #写入文件
            writeLines(r, newFileBrand)
        }
    }
    close(newFileBrand)
}

arrangeDeviceBrand()






dd <- "8d470dc6253176a1194b31a0a3c23c65 Huawei HUAWEI G660-L075"  

ee <- strsplit(dd, ' ')[[1]]
ee[c(2:3)]
paste(c(2:3), sep='_')
paste(ee[c(2:(length(ee) - 1))], collapse = '_')


?paste
print(1)


# brandData<-read.table('deviceid_brand.tsv', sep=' ',encoding='utf8',header=F)


