data = read.csv("Fat.csv")
data = data[1:length(data)-1]
data <- data[complete.cases(data), ]
for(i in 1:154){
  #Obesity
  if(data[i,"Obesity"]<=5.0){data[i,"Obesity"]=0} #low
  else if(data[i,"Obesity"]>=25){data[i,"Obesity"]=2} #high
  else{data[i,"Obesity"]=1} #medium
  
  #Undernourished
  if(data[i, "Undernourished"]=="<2.5"){data[i, "Undernourished"]="0.0"}
  data[i, "Undernourished"]=as.numeric(data[i, "Undernourished"])
  if(data[i,"Undernourished"]<=5.0){data[i,"Undernourished"]=0} #low
  else if(data[i,"Undernourished"]>=25){data[i,"Undernourished"]=2} #high
  else{data[i,"Undernourished"]=1} #medium
  
  #deaths
  if(data[i,"Deaths"]<=0.002){data[i,"Deaths"]=0} #low
  else if(data[i,"Deaths"]>=0.05){data[i,"Deaths"]=2} #high
  else{data[i,"Deaths"]=1} #medium
  
}
