 
#setwd('F:\\study\\tinymind\\data')
setwd('G:\\tinymind\\data')

brandData<-read.table('deviceid_brand.tsv', sep=' ',encoding='utf8',header=F)

dt<-read.table('deviceid_train.csv', sep='\t',encoding='utf8',header=F)

appStartClose<-file('deviceid_package_start_close.tsv', 'r')
readLines(appStartClose, n=1)
