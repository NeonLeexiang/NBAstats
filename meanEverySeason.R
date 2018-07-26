# 用于计算20个赛季各种数据的均值
meanEverySeason=function(tables,section,pos){
  source("/Users/neonrocks/Desktop/NBA/subSeason.R")  # function->subSeason(tables,season):season.istype(int)
  source("/Users/neonrocks/Desktop/NBA/positionStats.R") # function->positionStats(tables,pos):pos.istype(str)
  
  # meanlist4position,every season
  meanlist = c()
  
  # 循环填充数据
  for (i in c(1996:2003,2005:2016)) {
    tbSub = subSeason(tables,i)
    tbPos = positionStats(tbSub,pos)
    if(section == "场均得分"){
      meanlist= c(meanlist,mean(tbPos$场均得分))
    }
    else if(section == "篮板"){
      meanlist= c(meanlist,mean(tbPos$篮板))
    }
    else if(section == "助攻"){
      meanlist= c(meanlist,mean(tbPos$助攻))
    }
    else if(section == "盖帽"){
      meanlist= c(meanlist,mean(tbPos$盖帽))
    }
    else if(section == "防守"){
      meanlist= c(meanlist,mean(tbPos$防守))
    }
    else if(section == "效率"){
      meanlist= c(meanlist,mean(tbPos$效率))
    }
    else if(section == "命中率"){
      meanlist= c(meanlist,mean(tbPos$命中率))
    }
    else if(section == "上场时间"){
      meanlist= c(meanlist,mean(tbPos$上场时间))
    }
  }
  return(meanlist)
}
