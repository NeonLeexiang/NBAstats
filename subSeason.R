subSeason=function(NBA,season){
  # 生成赛季子集
  for(i in c(1996:2003,2005:2016)){
    season4output=paste(i,i+1,sep="-")
    if(season==i){
      return(subset(NBA,NBA$赛季==season4output))
    }
  }
}