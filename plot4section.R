# 用于画出五个位置某个项目20个赛季的均值折线图
plot4section = function(pg,fw,ct,section){
  par(family="STXihei")
  season = c(1996:2003,2005:2016)
  title4plot = paste("近20个赛季各个位置球员",section,"情况",sep="")
  ylimin=min(pg,fw,ct)-min(pg,fw,ct)/4
  ylimax=max(pg,fw,ct)+max(pg,fw,ct)/4
  plot(season,pg,type = "o",xlab = "赛季",ylab = section,ylim = c(ylimin,ylimax),col = "black",main = title4plot,pch = c(15))
  lines(season,fw,type = "o",col = "black",pch = c(16))
  lines(season,ct,type = "o",col = "black",pch = c(17))
  legend("topleft",c("后卫","前锋","中锋"),pch = 15:17)
}