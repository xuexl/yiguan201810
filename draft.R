
# brandData<-read.table('deviceid_brand_new.tsv', sep=' ',encoding='utf8',header=F)


readFileByLines('deviceid_test.tsv')
readFileByLines('deviceid_train.tsv')
readFileByLines('deviceid_packages.tsv',1)
readFileByLines('deviceid_package_start_close.tsv',2)



train<-read.table('deviceid_train.tsv', sep='\t',encoding='utf8',header=F, col.names = c('deviceId','sex','sec'))
summary(train)
head(train)
summary(duplicated(train$deviceId))


