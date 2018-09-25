 
#setwd('F:\\study\\tinymind\\data')
setwd('G:\\tinymind\\data')

readFileByLines<-function(fileName, lines=5){
    
    
    f<-file(fileName, 'r', encoding = 'UTF-8')
    print(readLines(f, n=lines))
}

#readFileByLines('deviceid_brand.tsv', 1)

#brand
arrangeDeviceBrand <- function (){
    newFileBrand <- file('deviceid_brand_new.tsv', 'w', encoding = 'UTF-8')
    
    fileBrand <- file('deviceid_brand.tsv', 'r', encoding = 'UTF-8')
    seek(con=fileBrand, where=0)
    repeat {
        rl <- readLines(fileBrand, n=1)   
        if(length(rl) == 0) break
        
        cl <- strsplit(rl, ' ')[[1]]
        if(length(cl) > 3){
            
            
            rl <- paste(cl[1], paste(cl[c(2:(length(cl)-1))], collapse = '_'), cl[length(cl)], sep=' ')
        
        }
        writeLines(rl, newFileBrand, sep='\n')
    }
    close(newFileBrand)
    close(fileBrand)
}

#arrangeDeviceBrand()

#device and app
arrangeDeviceAndApp<-function(){
    
    
    
}

#get device and app factor 
getDeviceAndAppFactor<-function(){
    
    
    # read.table('')
    
    return()
}


#statistics package start and close data
calculatePackagesUsedStatus<-function(){
    result<-NULL
    
    device_app_factor<-getDeviceAndAppFactor()
    
    bat<-0
    step<-100000
    repeat{
        batData<-read.table('deviceid_package_start_close.tsv', skip=bat, header=FALSE, sep='\t')
        len<-length(batData)
        if(len==0) next
        
        resultData<-NULL
        
        
        
        if(len<step) break
        bat<-bat + step
    }
    
    return()
}





