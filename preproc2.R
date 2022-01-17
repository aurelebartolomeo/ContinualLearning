data = read.csv("bodyPerformance.csv")
data = data[1:length(data)-1]
for(i in 1:13393){
  #gender
  if(data[i,"gender"]=="F"){data[i,"gender"]=0} #female
  else{data[i,"gender"]=1} #male
  
  #body fat
  if(data[i,"body.fat_."]<=15){data[i,"body.fat_."]=0} #low
  else if(data[i,"body.fat_."]>=30){data[i,"body.fat_."]=2} #high
  else{data[i,"body.fat_."]=1} #medium
  
  #diastolic blood pressure
  if(data[i,"diastolic"]<=70){data[i,"diastolic"]=0} #low
  else if(data[i,"diastolic"]>=100){data[i,"diastolic"]=2} #high
  else{data[i,"diastolic"]=1} #medium
  
  #systolic blood pressure
  if(data[i,"systolic"]<=120){data[i,"systolic"]=0} #low
  else if(data[i,"systolic"]>=140){data[i,"systolic"]=2} #high
  else{data[i,"systolic"]=1} #medium
  
  
}
