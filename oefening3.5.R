X = c(4,4,-4,-4)
Y = c(7,1,-6,-2)

formule1 <- function(lijst){
  gemiddelde = mean(lijst)
  uitkomst = 0
  lengte = length(lijst)
  
  for(i in lijst){
    uitkomst  = uitkomst  +(gemiddelde - i)
    }
  
  return(uitkomst/lengte)
}

formule2 <- function(lijst){
  gemiddelde = mean(lijst)
  uitkomst = 0
  lengte = length(lijst)
  
  for(i in lijst){
    uitkomst  = uitkomst  +abs(gemiddelde - i)
  }
  
  return(uitkomst/lengte)
}

formule3 <- function(lijst){
  gemiddelde = mean(lijst)
  uitkomst = 0
  lengte = length(lijst)
  
  for(i in lijst){
    uitkomst  = uitkomst  + ((gemiddelde - i)^2)
    print(uitkomst)
  }
  
  return(uitkomst/lengte)
}