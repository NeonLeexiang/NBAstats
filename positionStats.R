# 用于得出不同位置的数据集
positionStats<-function(tables,pos){
  # 需要加载dplyr程辑包
  # 后卫
  pg1=filter(tables,tables$位置=="后卫")
  pg2=filter(tables,tables$位置=="后卫-前锋")
  pg3=filter(tables,tables$位置=="前锋-后卫")
  pg=rbind(pg1,pg2,pg3)
  # 前锋
  fw1=filter(tables,tables$位置=="前锋")
  fw2=filter(tables,tables$位置=="后卫-前锋")
  fw3=filter(tables,tables$位置=="前锋-后卫")
  fw4=filter(tables,tables$位置=="前锋-中锋")
  fw5=filter(tables,tables$位置=="中锋-前锋")
  fw=rbind(fw1,fw2,fw3,fw4,fw5)
  # 中锋
  ct1=filter(tables,tables$位置=="中锋")
  ct2=filter(tables,tables$位置=="前锋-中锋")
  ct3=filter(tables,tables$位置=="中锋-前锋")
  ct=rbind(ct1,ct2,ct3)
  # 按位置返回值
  if(pos == "后卫"){
    return(pg)
  }
  else if(pos == "前锋"){
    return(fw)
  }
  else if(pos == "中锋"){
    return(ct)
  }
}