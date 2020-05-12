# dC/dt = 0 when air temperatures are below 0
# 
# dC/dt  = r*C for forests where carbon is below a canopy closure threshold 
# 
# dC/dt = g. for forests where carbon is above the threshold canopy closure
# 
# dC/dt = 0 once carrying capacity is reached.


#parms = list(canopy = 100, carry = 500, r = 0.01, g = 2, temp = 20)

forest = function(canopy, carry, r, g, temp, C) {
  if(temp<=0){
    growth = 0}
  
  else{
    if(C < canopy){
      growth = r*C
    }
    
    else{
      growth = g
    }
  }
  
  if(C >= K){
    growth = 0
  }
  
  return(list(growth))
  
}

  
