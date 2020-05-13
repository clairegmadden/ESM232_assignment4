

forest<- function(initialC, r, g, carry, canopy, temp, years){
  
  # Set the initial size of forest
  C = initialC
  
  # Calculate the growth rate at each time step in a for loop
  for (i in 1:years) {
    
    C = C * r
    C = ifelse(temp < 0, 0, C)
    C = ifelse(C > canopy, g, C)
    C = ifelse(C >= K, 0, C)
    
  }
  return(C)
}



