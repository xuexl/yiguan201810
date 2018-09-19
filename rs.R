 
#setwd('F:\\study\\tinymind\\data')
setwd('G:\\tinymind\\data')

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






dd <- "8d470dc6253176a1194b31a0a3c23c65 Huawei HUAWEI G660-L075"  

ee <- strsplit(dd, ' ')[[1]]
ee[c(2:3)]
paste(c(2:3), sep='_')
paste(ee[c(2:(length(ee) - 1))], collapse = '_')


?paste
print(1)

?file
?readLines

# brandData<-read.table('deviceid_brand.tsv', sep=' ',encoding='utf8',header=F)


